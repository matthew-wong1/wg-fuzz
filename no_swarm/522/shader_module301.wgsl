struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32) -> vec4<f32> {
    var var_0 = Struct_3(Struct_2(Struct_1(vec2<bool>(true, true), ~abs(vec4<u32>(1u, 0u, 17795u, 18939u)), vec2<u32>(0u << (0u % 32u), ~20937u), vec2<bool>(true, true))), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(25255u, 88960u, 1u, countOneBits(98071u))), Struct_1(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false))), abs(vec4<u32>(~1u, 4294967295u, 110640u, 84456u)), reverseBits(vec2<u32>(13111u, min(0u, 7621u))), vec2<bool>(true, true)));
    let var_1 = 20434u;
    let var_2 = var_0.c;
    var var_3 = select(vec4<bool>(true, !all(vec3<bool>(var_0.c.a.x, false, var_2.d.x)), false, var_2.d.x), vec4<bool>(!var_0.a.a.d.x, !var_0.c.a.x, any(vec3<bool>(true, false | var_0.c.a.x, var_2.a.x)), var_0.c.a.x), select(select(vec4<bool>(true, any(vec4<bool>(var_2.a.x, var_0.a.a.d.x, true, var_2.a.x)), true, true), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, var_0.a.a.d.x, var_0.a.a.d.x, true), vec4<bool>(true, true, true, true), true)), select(!vec4<bool>(false, var_0.a.a.d.x, true, true), vec4<bool>(true, 1u == var_1, all(vec2<bool>(false, true)), true), !vec4<bool>(var_0.a.a.a.x, true, false, false)), _wgslsmith_clamp_i32(abs(u_input.a.x), u_input.a.x, arg_0 << (var_2.c.x % 32u)) > -1i));
    var var_4 = all(var_3.yz);
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(244f, 1361f, -175f, 824f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(561f, 1353f, -613f, -2463f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-316f, 1000f, 1128f, -1000f)))), var_0.c.a.x));
}

fn func_2(arg_0: u32, arg_1: u32) -> bool {
    let var_0 = firstLeadingBit(vec4<i32>(-1i) * -vec4<i32>(u_input.a.x ^ u_input.a.x, u_input.a.x, -27688i, u_input.a.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(840f, -1000f, 1200f), vec3<f32>(1181f, -1471f, -426f))) - vec3<f32>(264f, 1521f, 860f)) + vec3<f32>(_wgslsmith_f_op_f32(1579f * 540f), -223f, _wgslsmith_f_op_f32(f32(-1f) * -108f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1737f, 322f, 245f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-357f, -2890f, 924f)))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1334f, -498f, 1319f) + vec3<f32>(-620f, 242f, -374f)), _wgslsmith_div_vec3_f32(vec3<f32>(-124f, -1605f, 1025f), vec3<f32>(305f, 231f, -274f)), vec3<bool>(true, true, true)))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1369f, 1130f, var_1.x, 302f))) - vec4<f32>(-742f, -507f, var_1.x, 824f)), _wgslsmith_f_op_vec4_f32(func_3(var_0.x)))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -302f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - -392f))));
    var_3 = var_1.x;
    return any(select(!(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false))), select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), true)), select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), false)), true), !select(22654i > u_input.a.x, true, true)));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec4<i32>(_wgslsmith_add_i32(countOneBits(u_input.a.x), abs(u_input.a.x) & u_input.a.x), -11780i, u_input.a.x, firstTrailingBit(-1i));
    var_0 = vec4<i32>(_wgslsmith_sub_i32(var_0.x, -2147483647i), -19393i, u_input.a.x, reverseBits(abs(abs(var_0.x))));
    var_0 = abs(vec4<i32>(i32(-1i) * -1i, firstTrailingBit(u_input.a.x), _wgslsmith_mod_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 23743i, -2147483647i), var_0.xzz), abs(-8504i)), -1i));
    var var_1 = arg_1.d;
    var var_2 = Struct_1(arg_2.a, ~(~(~vec4<u32>(arg_1.b.x, 4294967295u, 26987u, 1u))), vec2<u32>(arg_2.b.x, select(_wgslsmith_dot_vec3_u32(arg_2.b.wwy, ~arg_1.b.wxx), abs(arg_1.c.x), arg_0)), !(!select(arg_1.d, arg_2.a, arg_1.a.x)));
    return arg_2;
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_2(func_4(all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), func_2(73011u, 1u))), Struct_1(vec2<bool>(true, true), ~vec4<u32>(1u, 1u, 1u, 1u), countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(13765u, 1u), vec2<u32>(15313u, 47596u))), vec2<bool>(true, u_input.a.x == u_input.a.x)), Struct_1(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, false), vec2<bool>(true, false)), firstLeadingBit(~vec4<u32>(77074u, 1u, 64077u, 1u)), vec2<u32>(abs(1u), _wgslsmith_div_u32(9284u, 42835u)), vec2<bool>(true, true))));
    var var_1 = u_input.a.x;
    return Struct_3(Struct_2(func_4(any(var_0.a.d) & true, Struct_1(vec2<bool>(var_0.a.a.x, var_0.a.a.x), min(var_0.a.b, var_0.a.b), vec2<u32>(var_0.a.c.x, var_0.a.c.x), var_0.a.d), Struct_1(vec2<bool>(var_0.a.d.x, false), firstTrailingBit(vec4<u32>(80440u, 0u, var_0.a.b.x, 0u)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a.b.x, 1u), vec2<u32>(4294967295u, 31864u)), vec2<bool>(false, true)))), max(max(~(vec4<u32>(var_0.a.b.x, 4294967295u, 100192u, var_0.a.c.x) >> (vec4<u32>(var_0.a.b.x, 56801u, var_0.a.c.x, var_0.a.c.x) % vec4<u32>(32u))), var_0.a.b), var_0.a.b), Struct_1(select(var_0.a.a, var_0.a.a, select(!var_0.a.d.x, false, func_4(true, Struct_1(vec2<bool>(false, true), vec4<u32>(2833u, 13362u, var_0.a.c.x, 4294967295u), vec2<u32>(var_0.a.b.x, var_0.a.b.x), var_0.a.a), Struct_1(vec2<bool>(false, false), vec4<u32>(var_0.a.b.x, 42464u, 62166u, 24914u), var_0.a.b.yz, vec2<bool>(true, var_0.a.d.x))).d.x)), var_0.a.b, _wgslsmith_sub_vec2_u32(vec2<u32>(~var_0.a.c.x, ~var_0.a.c.x), var_0.a.b.xy), vec2<bool>(4294967295u != var_0.a.c.x, var_0.a.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = -743f;
    let var_2 = _wgslsmith_dot_vec4_i32(select(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, -u_input.a.x, ~u_input.a.x, 0i), -vec4<i32>(2147483647i, 12027i, u_input.a.x, u_input.a.x)), vec4<i32>(3601i, u_input.a.x >> (var_0.b.x % 32u), firstTrailingBit(~(-1i)), -(~u_input.a.x)), var_0.c.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(2618i, -2147483647i, -16591i), vec3<i32>(7302i, u_input.a.x, 0i)), firstLeadingBit(vec3<i32>(u_input.a.x, -2147483647i, 7806i))), -min(u_input.a.x, 31008i), u_input.a.x), -vec4<i32>(-33047i, -u_input.a.x, u_input.a.x, ~8950i)));
    var var_3 = ((vec4<i32>(var_2 << (4294967295u % 32u), -2147483647i, -var_2, 0i) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(-12146i, 35421i, var_2, 18224i), reverseBits(vec4<i32>(-20614i, var_2, u_input.a.x, u_input.a.x)))) << (countOneBits(~_wgslsmith_mult_vec4_u32(var_0.a.a.b, vec4<u32>(var_0.a.a.c.x, 0u, var_0.b.x, var_0.b.x))) % vec4<u32>(32u))) << (func_1().c.b % vec4<u32>(32u));
    var var_4 = var_1;
    var var_5 = var_0;
    var var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1, 1762f, 1096f, var_1)))))));
    var var_7 = vec3<f32>(_wgslsmith_f_op_f32(-var_6.x), var_1, var_1);
    var var_8 = _wgslsmith_add_u32(var_0.b.x, select(var_5.a.a.c.x, var_0.c.c.x, !(!(var_6.x >= 2607f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1227f)))) * _wgslsmith_f_op_f32(ceil(438f))))), 0u, var_7.yy, -17968i);
}

