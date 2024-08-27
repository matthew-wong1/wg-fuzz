struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: u32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec4<i32>,
    d: vec4<bool>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: u32,
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(-3433i, -46694i, 46348i, 2147483647i), vec4<i32>(-43146i, 48449i, 35526i, 2147483647i) << (vec4<u32>(4294967295u, 37616u, arg_1.a, u_input.a) % vec4<u32>(32u)))), -_wgslsmith_sub_vec3_i32(vec3<i32>(0i, -22904i, -2281i), ~vec3<i32>(-1i, -33523i, -6242i))) << (~var_0 % 32u);
    return Struct_1(~(firstTrailingBit(vec4<u32>(u_input.a, u_input.a, arg_0.a, 106988u)) >> (~(~vec4<u32>(0u, 27803u, 1u, arg_0.a)) % vec4<u32>(32u))), -37674i, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -749f))), arg_1.b, -1649f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-102f, -1249f, _wgslsmith_f_op_f32(-1149f + 181f)), vec3<f32>(arg_1.b, arg_1.b, _wgslsmith_f_op_f32(arg_1.b * 416f))))));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0;
    let var_1 = true;
    var var_2 = select(select(!vec3<bool>(false, var_1, !var_1), select(!vec3<bool>(var_1, var_1, true), select(select(vec3<bool>(true, true, var_1), vec3<bool>(true, true, true), var_1), vec3<bool>(true, true, false), all(vec4<bool>(false, var_1, true, true))), select(select(vec3<bool>(false, var_1, var_1), vec3<bool>(false, var_1, var_1), true), vec3<bool>(var_1, true, var_1), vec3<bool>(false, true, false))), !vec3<bool>(false, all(vec4<bool>(var_1, true, true, false)), var_1)), vec3<bool>(true, true, !(!(var_0.a.x > 52621u))), !var_1);
    let var_3 = func_2(Struct_2(24389u, _wgslsmith_f_op_f32(f32(-1f) * -277f)), Struct_2(~1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.c.x))), 293f)));
    let var_4 = _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(arg_0.b, var_0.b), -(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, var_3.b), vec3<i32>(16739i, arg_0.b, var_0.b)) << (41835u % 32u))), var_0.b);
    return firstLeadingBit(~(~((23406u & var_3.a.x) | abs(var_0.a.x))));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_div_vec2_u32(~countOneBits(_wgslsmith_mult_vec2_u32(select(vec2<u32>(11467u, 0u), vec2<u32>(65397u, u_input.a), vec2<bool>(false, false)), ~vec2<u32>(12913u, 59139u))), vec2<u32>(~_wgslsmith_mult_u32(abs(14489u), _wgslsmith_div_u32(0u, u_input.a)), _wgslsmith_mult_u32(0u, _wgslsmith_add_u32(u_input.a, _wgslsmith_mod_u32(u_input.a, u_input.a)))));
    return ~(~func_3(func_2(Struct_2(u_input.a, 575f), Struct_2(5585u, -808f)))) <= 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(vec3<f32>(1f, 1f, 1f));
    let var_1 = Struct_5(Struct_2(u_input.a, -251f), vec2<bool>(true, true), firstLeadingBit(~vec4<i32>(1i, 1i, 1i, 1i)), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), true)), vec4<bool>(any(vec2<bool>(false, true)), true, any(vec3<bool>(true, true, true)), true), func_1()), min(~select(5582i, 78737i, false), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(0i, 2147483647i, -1i, 44218i)), ~vec4<i32>(-1i, -747i, 4371i, 3703i))) | ~countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(8336i, 2147483647i, 41819i, -2857i), vec4<i32>(23419i, -52996i, -23824i, -1i))));
    let var_2 = 760f;
    var var_3 = var_1.c.ywy;
    let var_4 = 15740u;
    let var_5 = Struct_3(!select(vec2<bool>(false, true && var_1.d.x), vec2<bool>(true, true), any(var_1.d.xwy)), var_1.a, var_4 >> (reverseBits(72631u) % 32u), select(!vec2<bool>(true, var_1.d.x), vec2<bool>(any(select(var_1.d.xzz, var_1.d.zzz, var_1.d.x)), any(vec4<bool>(true, false, var_1.b.x, var_1.d.x)) && true), true));
    var_3 = -vec3<i32>(var_3.x, countOneBits(-1732i), ~abs(var_3.x) | func_2(var_1.a, var_1.a).b);
    let var_6 = 22795u;
    var var_7 = Struct_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(184f, var_2, var_2), var_0.a)), _wgslsmith_f_op_vec3_f32(exp2(var_0.a)))), var_0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(4294967295u), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(var_1.a.b)), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-275f - var_0.a.x)), _wgslsmith_f_op_f32(var_0.a.x * 380f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a.x, -1887f, var_7.a.x, -1251f)))))), 4294967295u);
}

