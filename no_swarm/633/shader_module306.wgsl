struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
    d: f32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_add_u32(35339u, u_input.b.x);
    let var_1 = vec3<bool>(_wgslsmith_mult_i32(u_input.a.x, 0i) < max(_wgslsmith_add_i32(11963i, _wgslsmith_dot_vec2_i32(vec2<i32>(40458i, 2147483647i), u_input.a.xx)), _wgslsmith_dot_vec2_i32(-u_input.a.zx, ~vec2<i32>(u_input.a.x, u_input.a.x))), !any(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), any(vec4<bool>(false, false, true, false)))), select(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, u_input.a.x, 17978i) << (vec4<u32>(12778u, u_input.b.x, var_0, u_input.b.x) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x) | vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 32027i)) > u_input.a.x, true, all(vec3<bool>(true, true, true))));
    let var_2 = 1u;
    let var_3 = vec4<i32>(u_input.a.x, ~u_input.a.x, u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 27015i), select(u_input.a.zx, ~reverseBits(u_input.a.xx), var_1.xz)));
    var var_4 = Struct_1(true);
    return -1302f;
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> i32 {
    let var_0 = Struct_2(_wgslsmith_mod_i32(-min(~u_input.a.x, u_input.a.x), u_input.a.x), Struct_1(true), firstLeadingBit(select(countOneBits(vec2<i32>(21092i, 0i)), vec2<i32>(66528i, abs(18522i)), !select(arg_0.a.zy, vec2<bool>(false, true), arg_0.a.yx))), _wgslsmith_f_op_f32(-arg_1));
    var var_1 = vec2<u32>(~0u, ~(~(~0u) << (u_input.b.x % 32u)));
    var_1 = u_input.b.yz;
    var var_2 = max(u_input.a.x ^ -(i32(-1i) * -9826i), ~_wgslsmith_mod_i32(-42974i, u_input.a.x)) >> (~22202u % 32u);
    var var_3 = select(!vec2<bool>(true, var_0.b.a), arg_0.a.xy, vec2<bool>(all(arg_0.a), false));
    return 6995i;
}

fn func_2(arg_0: vec3<i32>) -> bool {
    var var_0 = Struct_1(!(!(!all(vec2<bool>(true, true)))));
    var var_1 = 42411i;
    var_1 = -3203i;
    var_0 = Struct_1(var_0.a);
    var_1 = func_4(Struct_3(!(!(!vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(func_3()))));
    return var_0.a;
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = true;
    var_0 = !select(true, true, func_2(-vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)) != true);
    var_0 = true;
    var_0 = true;
    let var_1 = any(select(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), true), select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, any(vec3<bool>(false, true, true))), vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true))));
    return Struct_1(var_1);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: bool) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_div_i32(16950i, u_input.a.x), Struct_1(!arg_2.x), -u_input.a.zx, 1000f);
    var var_1 = Struct_3(select(!select(vec4<bool>(true, true, arg_3, true), !vec4<bool>(false, true, true, arg_2.x), vec4<bool>(arg_1.b.a, var_0.b.a, arg_1.b.a, true)), !vec4<bool>(true, false, all(arg_2), true), !select(select(vec4<bool>(false, false, arg_1.b.a, arg_2.x), vec4<bool>(false, arg_2.x, var_0.b.a, true), false), vec4<bool>(true, true, false, false), var_0.b.a)));
    let var_2 = firstTrailingBit(~(~(~vec4<u32>(46394u, u_input.b.x, u_input.b.x, u_input.b.x) ^ ~vec4<u32>(1u, 1u, u_input.b.x, u_input.b.x))));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.d + arg_1.d), arg_1.d))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(1892f, 139f), _wgslsmith_f_op_f32(trunc(var_0.d)))))) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-712f - _wgslsmith_f_op_f32(max(-598f, var_0.d))))), _wgslsmith_f_op_f32(f32(-1f) * -950f), false));
    var_1 = Struct_3(!var_1.a);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(4294967295u), Struct_2(2147483647i, func_1(1u), _wgslsmith_clamp_vec2_i32((u_input.a.yy & u_input.a.zz) | -u_input.a.xx, _wgslsmith_mod_vec2_i32(abs(u_input.a.xx), u_input.a.yz), vec2<i32>(firstTrailingBit(u_input.a.x), u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(418f))))), select(vec2<bool>(true, true), !vec2<bool>(select(false, true, false), func_2(u_input.a)), select(vec2<bool>(true, all(vec3<bool>(false, true, true))), vec2<bool>(func_1(0u).a, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)))), !any(vec4<bool>(true, u_input.b.x < u_input.b.x, all(vec3<bool>(false, false, true)), any(vec4<bool>(false, false, true, false)))));
    let var_1 = Struct_3(!vec4<bool>(true & !var_0.b.a, var_0.b.a, false, true));
    var var_2 = 53490u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1630f))))), abs(2147483647i), var_0.d, u_input.a.x);
}

