struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2) -> bool {
    return !any(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), true));
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = vec4<bool>(func_3(Struct_2(~vec4<u32>(17006u, u_input.a, 1u, u_input.a) & _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 9147u, 36478u, 4294967295u), vec4<u32>(1u, u_input.a, u_input.a, u_input.a)))), false, arg_0.a == -740f, !func_3(Struct_2(vec4<u32>(1u, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u)))));
    let var_1 = max(u_input.a, 0u);
    var_0 = select(!(!select(select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(true, true, true, var_0.x), false), !vec4<bool>(var_0.x, true, true, false), false)), vec4<bool>(var_0.x, all(!select(var_0.wxw, vec3<bool>(var_0.x, var_0.x, var_0.x), false)), var_0.x, var_0.x), select(!vec4<bool>(true, var_0.x && var_0.x, 8095u <= u_input.a, true), select(!select(vec4<bool>(false, false, false, var_0.x), vec4<bool>(true, false, false, false), var_0.x), select(select(vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(var_0.x, true, var_0.x, false), var_0.x), select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(true, true, false, var_0.x)), vec4<bool>(true, false, var_0.x, var_0.x)), vec4<bool>(!var_0.x, true, !var_0.x, -1000f != arg_0.a)), !var_0.x));
    var_0 = !select(!(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x))), !vec4<bool>(!var_0.x, true, !var_0.x, select(var_0.x, var_0.x, false)), all(!select(var_0.wx, vec2<bool>(false, var_0.x), true)));
    let var_2 = vec2<bool>(true, true);
    return ~_wgslsmith_dot_vec2_i32(abs(-vec2<i32>(-25059i, 57405i) >> (abs(vec2<u32>(59408u, u_input.a)) % vec2<u32>(32u))), -(~_wgslsmith_clamp_vec2_i32(vec2<i32>(17982i, 2147483647i), vec2<i32>(2147483647i, 0i), vec2<i32>(-67328i, 28283i))));
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: vec2<bool>) -> vec4<u32> {
    var var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(13160i, abs(1i), countOneBits(firstTrailingBit(0i)), (1i >> (arg_1.b.x % 32u)) & _wgslsmith_mod_i32(-2147483647i, func_2(Struct_1(arg_1.c.x)))), select(~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-37981i, -1i, -1i, -2147483647i), vec4<i32>(0i, -2147483647i, 2147483647i, 0i), vec4<i32>(-2147483647i, -1i, 2147483647i, 9446i))), -vec4<i32>(1i, 1i, 1i, 1i), select(!(!vec4<bool>(arg_3.x, false, arg_3.x, true)), select(vec4<bool>(arg_3.x, arg_0, true, arg_1.d.x), select(vec4<bool>(arg_3.x, false, false, false), vec4<bool>(false, false, true, arg_3.x), false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), any(vec4<bool>(true, false, true, arg_3.x))))));
    let var_1 = vec3<bool>(func_3(Struct_2(~vec4<u32>(arg_1.b.x, arg_1.b.x, 21691u, 21885u) & ~vec4<u32>(u_input.a, 4294967295u, 4294967295u, 0u))), arg_0, arg_3.x);
    var_0 = -vec4<i32>(var_0.x, ~_wgslsmith_add_i32(var_0.x, 9960i) << (~max(9095u, 1u) % 32u), -var_0.x, max(_wgslsmith_mult_i32(_wgslsmith_mult_i32(var_0.x, var_0.x), 1i), ~0i));
    return vec4<u32>(abs(~arg_1.b.x), u_input.a, u_input.a, arg_1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1755f)) + _wgslsmith_f_op_f32(738f * -403f)) * -2005f))));
    var var_1 = Struct_2(~(~func_1(true, Struct_3(vec2<bool>(false, false), vec2<u32>(u_input.a, u_input.a), vec2<f32>(1029f, 176f), vec3<bool>(false, false, false)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-386f, var_0.a) - vec2<f32>(var_0.a, var_0.a)), vec2<bool>(false, false))));
    var var_2 = Struct_2(var_1.a);
    var_2 = Struct_2(vec4<u32>(11694u, var_2.a.x, 4294967295u, ~var_2.a.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(739f + -779f), var_0.a, 1654f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_3.zz), var_2.a.zzz, _wgslsmith_mod_vec4_u32(var_2.a, _wgslsmith_div_vec4_u32(~var_2.a, ~var_1.a) >> (abs(~vec4<u32>(u_input.a, 37785u, 97994u, u_input.a)) % vec4<u32>(32u))));
}

