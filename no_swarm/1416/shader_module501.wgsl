struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<bool>, 19> = array<vec2<bool>, 19>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true));

var<private> global2: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 0u), vec3<f32>(-354f, -893f, 971f), -3063f), vec3<f32>(-1332f, -484f, -1320f), vec3<bool>(false, true, false), 1u), Struct_2(Struct_1(vec3<u32>(7303u, 61376u, 43629u), vec3<f32>(-540f, -303f, 1000f), 515f), vec3<f32>(1000f, -2907f, 681f), vec3<bool>(false, false, true), 4294967295u), Struct_2(Struct_1(vec3<u32>(1u, 20593u, 11861u), vec3<f32>(127f, 1468f, 189f), -890f), vec3<f32>(360f, -638f, 146f), vec3<bool>(false, true, true), 4294967295u), Struct_2(Struct_1(vec3<u32>(25198u, 59432u, 53708u), vec3<f32>(-934f, 123f, -1103f), 297f), vec3<f32>(3043f, 203f, -267f), vec3<bool>(false, false, false), 29129u), Struct_2(Struct_1(vec3<u32>(17085u, 36403u, 4294967295u), vec3<f32>(804f, 917f, 781f), -1144f), vec3<f32>(320f, -309f, 617f), vec3<bool>(false, false, false), 14358u), Struct_2(Struct_1(vec3<u32>(26121u, 4294967295u, 44170u), vec3<f32>(948f, -442f, -342f), -751f), vec3<f32>(-359f, -876f, 721f), vec3<bool>(true, false, false), 0u), Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 55654u), vec3<f32>(-721f, 1953f, 1408f), -1331f), vec3<f32>(-839f, -1000f, -163f), vec3<bool>(true, false, true), 7087u), Struct_2(Struct_1(vec3<u32>(22416u, 4294967295u, 0u), vec3<f32>(-652f, 1801f, 1000f), 295f), vec3<f32>(1384f, -637f, 262f), vec3<bool>(false, true, false), 37346u), Struct_2(Struct_1(vec3<u32>(35545u, 27700u, 5662u), vec3<f32>(-346f, -1000f, -700f), -2978f), vec3<f32>(-1000f, 1242f, 179f), vec3<bool>(true, true, true), 26116u), Struct_2(Struct_1(vec3<u32>(65660u, 84392u, 38537u), vec3<f32>(219f, -654f, -324f), 1000f), vec3<f32>(-1550f, 1594f, -188f), vec3<bool>(true, true, true), 0u), Struct_2(Struct_1(vec3<u32>(22755u, 1u, 4294967295u), vec3<f32>(1261f, 549f, 484f), 836f), vec3<f32>(652f, -631f, -1514f), vec3<bool>(false, true, false), 78306u), Struct_2(Struct_1(vec3<u32>(8831u, 415u, 1u), vec3<f32>(-1966f, -1322f, -298f), 317f), vec3<f32>(783f, 1304f, -1179f), vec3<bool>(true, false, true), 4294967295u), Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 47990u), vec3<f32>(-478f, -499f, 1031f), 1004f), vec3<f32>(460f, -154f, 167f), vec3<bool>(true, false, true), 0u));

var<private> global3: i32 = 2147483647i;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    let var_0 = u_input.a;
    global1 = array<vec2<bool>, 19>();
    global1 = array<vec2<bool>, 19>();
    var var_1 = arg_0.a;
    let var_2 = Struct_3(arg_0.c);
    return Struct_2(Struct_1(~(~arg_0.a.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.b * arg_0.b)), _wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_f_op_vec3_f32(var_1.b + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(abs(var_1.c)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.b.x))))), !(!vec3<bool>(arg_0.c.x | true, u_input.a < 0i, true)), ~11352u);
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(286f - -753f)))));
    let var_1 = !(!all(!func_1(Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 16076u), vec3<f32>(var_0, 333f, 1015f), -1203f), vec3<f32>(var_0, var_0, var_0), arg_0.a, 17309u), 0u).c.yx));
    global0 = 0u;
    global3 = u_input.a;
    var var_2 = arg_1;
    return Struct_1(vec3<u32>(~(~(~1u)), 4294967295u, 4294967295u), vec3<f32>(737f, _wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(f32(-1f) * -372f))), -498f), _wgslsmith_f_op_f32(var_0 * var_0));
}

fn func_2() -> u32 {
    let var_0 = Struct_3(func_1(Struct_2(func_3(Struct_3(vec3<bool>(false, false, true)), true), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1919f, -532f, 1238f) * vec3<f32>(193f, 1263f, -672f)))), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), 4294967295u), max(1u, ~4294967295u)).c);
    global2 = array<Struct_2, 13>();
    let var_1 = _wgslsmith_mult_i32(1i, -24946i);
    global2 = array<Struct_2, 13>();
    global3 = max(-1i, u_input.a);
    return ~(~51013u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global2[_wgslsmith_index_u32(40047u, 13u)], firstTrailingBit(0u));
    global0 = ~var_0.a.a.x;
    var var_1 = var_0.a;
    let var_2 = vec3<u32>(var_0.a.a.x, 0u, func_2());
    global1 = array<vec2<bool>, 19>();
    let var_3 = Struct_2(var_0.a, _wgslsmith_f_op_vec3_f32(var_0.b - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1028f, 338f, 1635f) - var_1.b)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-172f, var_0.b.x, var_1.b.x) * var_1.b) + var_1.b))), func_1(func_1(global2[_wgslsmith_index_u32(~(~0u), 13u)], _wgslsmith_add_u32(var_0.d, var_2.x ^ var_0.d)), 4294967295u).c, ~(~_wgslsmith_mult_u32(var_1.a.x, 10136u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec3<i32>(~(~_wgslsmith_clamp_i32(u_input.a, -1i, u_input.a)), ~(~u_input.a), _wgslsmith_add_i32(1i, reverseBits(-1i))), _wgslsmith_div_u32(min(_wgslsmith_mult_u32(~var_1.a.x, var_3.d), var_2.x), ~_wgslsmith_mult_u32(func_2(), _wgslsmith_div_u32(var_3.a.a.x, var_3.d))));
}

