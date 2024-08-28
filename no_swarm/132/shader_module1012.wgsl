struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: i32,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    global0 = vec3<bool>(false, !any(select(vec3<bool>(global0.x, false, false), select(vec3<bool>(false, false, false), vec3<bool>(global0.x, true, global0.x), false), global0.x)), (_wgslsmith_dot_vec2_u32(max(vec2<u32>(arg_0.x, u_input.b.x), vec2<u32>(u_input.a, arg_0.x)), abs(vec2<u32>(u_input.b.x, u_input.b.x))) != 1u) && global0.x);
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1065f)), -444f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2248f)) - _wgslsmith_f_op_f32(f32(-1f) * -209f)))), 612f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1351f) - -1657f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1376f + 518f))))));
    global0 = vec3<bool>(select(global0.x | true, false, true), global0.x, select(any(vec4<bool>(true, false, false, global0.x)) != true, global0.x, !global0.x || (!global0.x == true)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(108f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_0.x, 448f)))) + _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x))));
    let var_2 = Struct_1(121f, global0.zx, ~_wgslsmith_sub_i32(_wgslsmith_mod_i32(reverseBits(-3224i), i32(-1i) * -1i), _wgslsmith_mult_i32(2147483647i, countOneBits(0i))), select(vec3<bool>(global0.x, global0.x, global0.x), select(vec3<bool>(any(vec3<bool>(global0.x, true, true)), all(vec3<bool>(false, true, true)), true), !(!vec3<bool>(global0.x, false, true)), select(!vec3<bool>(false, false, global0.x), !vec3<bool>(global0.x, true, true), select(vec3<bool>(global0.x, true, true), vec3<bool>(global0.x, true, false), global0.x))), vec3<bool>(global0.x, all(!vec3<bool>(false, true, global0.x)), any(global0.xz))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_0 + var_0))));
    return 1u;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: vec4<bool>) -> vec3<bool> {
    var var_0 = vec3<i32>(-(~arg_1.x) << (_wgslsmith_mod_u32(~42807u >> (arg_0.x % 32u), abs(arg_0.x)) % 32u), -1i >> (~(~0u) % 32u), ~reverseBits(-2147483647i));
    var var_1 = vec4<u32>(arg_0.x, _wgslsmith_div_u32(~u_input.a, ~arg_0.x), arg_0.x, func_3(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.yw, arg_0.xx), ~u_input.b.wx), abs(select(arg_0.zz, vec2<u32>(arg_0.x, 0u), vec2<bool>(global0.x, arg_2.x))))));
    let var_2 = ~vec4<u32>(u_input.a, 1u, var_1.x, var_1.x);
    global0 = !(!vec3<bool>((var_1.x | 9885u) < ~0u, false && !arg_2.x, select(true, arg_2.x, true) & (global0.x && global0.x)));
    global0 = vec3<bool>(true, all(vec2<bool>(global0.x, select(!arg_2.x, true, all(vec3<bool>(false, arg_2.x, arg_2.x))))), arg_2.x);
    return arg_2.xzz;
}

fn func_1(arg_0: bool, arg_1: u32) -> StorageBuffer {
    global0 = !vec3<bool>(!arg_0 & (arg_0 == any(global0.xz)), true, false);
    let var_0 = vec2<f32>(466f, 1f);
    var var_1 = u_input.a;
    global0 = !(!(!vec3<bool>(all(global0.xx), true, true)));
    global0 = !(!select(func_2(vec4<u32>(u_input.b.x, 8082u, u_input.a, 1u) & vec4<u32>(u_input.b.x, arg_1, u_input.b.x, u_input.b.x), vec3<i32>(0i, -2147483647i, -85136i), !vec4<bool>(global0.x, arg_0, global0.x, false)), select(func_2(vec4<u32>(u_input.a, 1u, u_input.a, u_input.b.x), vec3<i32>(-17088i, 30481i, -16554i), vec4<bool>(true, global0.x, false, arg_0)), !vec3<bool>(global0.x, arg_0, global0.x), global0.x && false), all(vec2<bool>(global0.x, true)) || any(vec4<bool>(false, arg_0, false, global0.x))));
    return StorageBuffer(_wgslsmith_mult_i32(-1i, 1i), vec2<u32>(~_wgslsmith_sub_u32(firstLeadingBit(arg_1), 1u), arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(!(!vec3<bool>(all(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), false, true)), vec3<bool>(true, true, true), vec3<bool>(true, all(global0.yx), global0.x));
    global0 = select(!(!select(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, false, false), vec3<bool>(global0.x, false, false)), !vec3<bool>(false, global0.x, false), select(vec3<bool>(true, true, global0.x), vec3<bool>(global0.x, false, global0.x), false))), vec3<bool>(false, all(vec4<bool>(true, global0.x, true, any(vec4<bool>(global0.x, true, false, global0.x)))), _wgslsmith_div_i32(_wgslsmith_sub_i32(-2147483647i, 0i), _wgslsmith_sub_i32(-2147483647i, 1i)) <= -(0i >> (u_input.b.x % 32u))), global0.x);
    global0 = vec3<bool>(any(vec3<bool>(!any(vec4<bool>(true, false, true, false)), global0.x, true)), any(vec4<bool>(any(!vec4<bool>(global0.x, global0.x, false, global0.x)), false, any(!global0.zx), !select(true, false, global0.x))), select(global0.x, !(u_input.a <= 74387u), global0.x));
    var var_0 = countOneBits(vec4<i32>(13887i, -1i, -2147483647i, 0i));
    var var_1 = firstTrailingBit(-_wgslsmith_add_i32(1i, var_0.x));
    let x = u_input.a;
    s_output = func_1(true, 1u);
}

