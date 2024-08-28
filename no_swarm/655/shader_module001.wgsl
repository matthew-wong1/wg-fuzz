struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: u32) -> vec2<f32> {
    let var_0 = i32(-1i) * -(~(~(arg_0.x << (arg_2 % 32u))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-438f)), _wgslsmith_f_op_f32(min(115f, 205f)), true)))));
    var var_2 = 0i;
    var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1109f, var_1.a), _wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.a)))), var_1.a));
    var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a + 1024f)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1797f, -391f), vec2<f32>(-1748f, 1167f))), vec2<f32>(var_1.a, var_1.a), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1776f, var_1.a))))))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(-reverseBits(vec2<i32>(u_input.b, -11655i)), vec3<u32>(u_input.a, 1u, ~4294967295u), 7425u))) * vec2<f32>(-889f, _wgslsmith_div_f32(arg_1.b, arg_1.b)));
    let var_1 = _wgslsmith_f_op_f32(select(arg_1.b, 1207f, arg_1.b >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1184f))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x + arg_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.b)) + _wgslsmith_f_op_f32(f32(-1f) * -127f))))));
    var_2 = Struct_2(arg_1.b);
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1485f, var_2.a)), _wgslsmith_f_op_f32(-var_1)));
    return abs(vec4<u32>(u_input.a, 8083u, 0u & _wgslsmith_clamp_u32(u_input.a, 25004u, u_input.a), select(~(u_input.a & 1489u), _wgslsmith_sub_u32(18371u, u_input.a), arg_0.a)));
}

fn func_1() -> vec2<u32> {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -309f) - -223f))) + -1808f);
    var var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, u_input.a, ~1u) ^ ~(reverseBits(vec4<u32>(35221u, u_input.a, 0u, 4294967295u)) ^ vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), max(countOneBits(select(vec4<u32>(0u, 4294967295u, 56552u, u_input.a), vec4<u32>(0u, u_input.a, u_input.a, 4294967295u), vec4<bool>(true, true, false, false))), _wgslsmith_div_vec4_u32(func_2(Struct_3(true, -1000f), Struct_3(false, 488f)), vec4<u32>(21640u, u_input.a, u_input.a, u_input.a) << (vec4<u32>(38957u, 4294967295u, 0u, u_input.a) % vec4<u32>(32u)))), _wgslsmith_div_vec4_u32(~vec4<u32>(1u, u_input.a, 1u, 4294967295u), vec4<u32>(_wgslsmith_div_u32(u_input.a, 1446u), 4294967295u, 1u, ~u_input.a))));
    var var_3 = _wgslsmith_sub_i32(u_input.c.x, 1i) & -26325i;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(abs(-1047f)), _wgslsmith_f_op_f32(f32(-1f) * -1182f), 1000f);
    return countOneBits(~vec2<u32>(4294967295u, var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = ~(~(func_1() >> (~vec2<u32>(var_0.x, 1u) % vec2<u32>(32u))));
    let var_1 = true;
    var_0 = ~vec2<u32>(_wgslsmith_sub_u32(u_input.a, var_0.x) | 1u, var_0.x) ^ abs(~(~(vec2<u32>(u_input.a, 10643u) | vec2<u32>(4528u, u_input.a))));
    let var_2 = select(!select(!(!vec3<bool>(true, var_1, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(var_1, true, true), vec3<bool>(true, false, true), vec3<bool>(var_1, true, var_1)), var_1), var_1 | true), vec3<bool>(!any(select(vec4<bool>(true, true, var_1, var_1), vec4<bool>(false, true, var_1, true), var_1)), !(!any(vec4<bool>(var_1, var_1, false, var_1))), true), select(vec3<bool>(var_1, all(!vec2<bool>(var_1, var_1)), true), !select(vec3<bool>(var_1, false, var_1), vec3<bool>(false, true, var_1), all(vec4<bool>(var_1, true, var_1, var_1))), var_1 != any(!vec4<bool>(var_1, false, false, false))));
    let var_3 = Struct_3(true, _wgslsmith_f_op_f32(abs(-834f)));
    var_0 = select(~vec2<u32>(u_input.a, var_0.x), select(_wgslsmith_div_vec2_u32(~(vec2<u32>(1u, u_input.a) >> (vec2<u32>(var_0.x, 0u) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_mult_u32(0u, var_0.x), ~var_0.x)), _wgslsmith_add_vec2_u32(firstLeadingBit(firstLeadingBit(vec2<u32>(12500u, 1u))), firstTrailingBit(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(48345u, var_0.x), var_3.a))), !var_2.zz), select(!select(vec2<bool>(var_2.x, var_1), select(vec2<bool>(var_2.x, var_3.a), vec2<bool>(false, var_1), true), select(false, false, true)), select(select(!var_2.xz, select(vec2<bool>(var_1, var_2.x), vec2<bool>(false, true), vec2<bool>(false, false)), true), select(vec2<bool>(true, var_3.a), select(var_2.yy, vec2<bool>(var_3.a, var_2.x), false), var_2.xx), vec2<bool>(!var_1, false)), select(!vec2<bool>(var_1, true), var_2.yx, var_2.yx)));
    var_0 = vec2<u32>(56747u, 1u);
    let var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(~71748u));
}

