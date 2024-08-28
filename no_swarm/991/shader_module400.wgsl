struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec3<u32>,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: bool,
    d: Struct_3,
    e: i32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 20> = array<vec4<f32>, 20>(vec4<f32>(900f, -720f, 709f, 525f), vec4<f32>(787f, 2170f, -1104f, -767f), vec4<f32>(1722f, 524f, 2721f, 2662f), vec4<f32>(434f, 876f, 1000f, 851f), vec4<f32>(348f, -1338f, -562f, 200f), vec4<f32>(-1669f, 1461f, -1191f, -1000f), vec4<f32>(553f, -508f, 1000f, 1686f), vec4<f32>(-163f, 1198f, 789f, 1122f), vec4<f32>(337f, 771f, -984f, -112f), vec4<f32>(680f, -1000f, -1261f, -794f), vec4<f32>(897f, -553f, -821f, -315f), vec4<f32>(-299f, 275f, -135f, 1323f), vec4<f32>(1656f, 1310f, 363f, -1564f), vec4<f32>(1095f, 459f, -136f, -1307f), vec4<f32>(-176f, -444f, 327f, -1000f), vec4<f32>(211f, 1126f, -707f, -1844f), vec4<f32>(-186f, -1000f, 171f, 1293f), vec4<f32>(-1578f, -382f, -1000f, -526f), vec4<f32>(261f, -1790f, -1231f, 2694f), vec4<f32>(-1000f, -106f, -233f, -742f));

var<private> global1: array<i32, 28>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = arg_0.c.a;
    var var_1 = Struct_5(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u, reverseBits(71123u ^ arg_0.b), 28081u), arg_0.d | select(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.d, arg_0.b, 40046u), vec3<u32>(11860u, arg_0.c.b.x, 1258u)), _wgslsmith_clamp_u32(var_0.c.x, var_0.c.x, var_0.c.x), any(vec3<bool>(true, arg_0.c.a.b, false)))));
    var var_2 = Struct_4(abs(~(~(var_1.a & 11870u))), 0u, all(vec4<bool>(_wgslsmith_f_op_f32(exp2(arg_0.c.a.d.x)) != _wgslsmith_f_op_f32(arg_0.c.a.d.x + var_0.d.x), ~var_1.a == ~arg_0.d, !var_0.b != !arg_0.a, any(select(vec3<bool>(arg_0.a, arg_0.c.a.b, false), vec3<bool>(false, true, arg_0.a), false)))), Struct_3(true, var_0.c.x, arg_0.c, 8110u), arg_0.c.a.a.x | var_0.a.x);
    let var_3 = var_0.a.zzy;
    global1 = array<i32, 28>();
    return 91820u;
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_4(1u, 0u, true, Struct_3(true, _wgslsmith_add_u32(abs(0u), func_3(Struct_3(true, 31872u, Struct_2(Struct_1(vec4<i32>(-1i, -7558i, global1[_wgslsmith_index_u32(5798u, 28u)], u_input.a.x), true, vec3<u32>(64415u, 1u, 0u), vec2<f32>(177f, -271f), 9493i), vec3<u32>(17198u, 4294967295u, 1u)), 89762u))) >> (~_wgslsmith_div_u32(48900u, 32689u) % 32u), Struct_2(Struct_1(abs(vec4<i32>(u_input.a.x, u_input.a.x, -20804i, 1i)), any(vec3<bool>(false, true, false)), abs(vec3<u32>(0u, 4294967295u, 18095u)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1956f, 2770f), vec2<f32>(1038f, 665f), vec2<bool>(false, false))), global1[_wgslsmith_index_u32(1u, 28u)]), vec3<u32>(firstTrailingBit(74529u), 1u, 50388u)), abs(_wgslsmith_clamp_u32(~12617u, 1u, 1u))), -12598i);
    var var_1 = !select(!vec2<bool>(var_0.c, false), !vec2<bool>(true, any(vec3<bool>(true, var_0.d.a, var_0.d.c.a.b))), !select(vec2<bool>(var_0.d.a, true), select(vec2<bool>(true, var_0.c), vec2<bool>(var_0.d.a, true), var_0.d.c.a.b), any(vec3<bool>(var_0.d.a, false, true))));
    var var_2 = -2147483647i;
    var var_3 = all(vec4<bool>(var_0.c, !(true || select(true, var_1.x, false)), var_0.d.c.a.b, (true & var_1.x) || var_1.x));
    global1 = array<i32, 28>();
    return vec2<bool>(var_0.d.c.a.d.x == -1000f, var_1.x);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>, arg_3: Struct_4) -> i32 {
    global1 = array<i32, 28>();
    let var_0 = _wgslsmith_mult_u32(~(~arg_0.c.x << (_wgslsmith_dot_vec2_u32(reverseBits(arg_0.c.xz), ~arg_0.c.yz) % 32u)), ~(~(abs(arg_3.b) & arg_3.d.d)));
    var var_1 = arg_0.a.x;
    let var_2 = max(_wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(25429i), i32(-1i) * -25562i, global1[_wgslsmith_index_u32(1u, 28u)], arg_3.d.c.a.a.x), ~vec4<i32>(global1[_wgslsmith_index_u32(arg_0.c.x, 28u)], global1[_wgslsmith_index_u32(arg_0.c.x, 28u)], 0i, 0i)), u_input.a.x) >> (40578u % 32u);
    var var_3 = ~arg_0.c;
    return -44593i;
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: f32) -> i32 {
    global0 = array<vec4<f32>, 20>();
    let var_0 = Struct_5(22896u);
    global1 = array<i32, 28>();
    let var_1 = arg_1.zx;
    var var_2 = 4294967295u;
    return -countOneBits(func_4(Struct_1(-vec4<i32>(2787i, 2147483647i, u_input.a.x, global1[_wgslsmith_index_u32(31287u, 28u)]), 0u > var_0.a, ~vec3<u32>(var_0.a, var_0.a, var_0.a), vec2<f32>(-2587f, arg_2), -21008i), -1201f, select(!vec2<bool>(true, arg_0), func_2(), true), Struct_4(~0u, select(1u, 82217u, false), arg_0, Struct_3(arg_0, var_0.a, Struct_2(Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, -15954i, u_input.a.x), false, vec3<u32>(31159u, var_0.a, var_0.a), vec2<f32>(834f, 184f), -40025i), vec3<u32>(4294967295u, var_0.a, 3342u)), 1u), -647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(all(vec2<bool>(true, true)), vec4<f32>(-267f, 425f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(619f - _wgslsmith_div_f32(-969f, 732f))), _wgslsmith_f_op_f32(ceil(1365f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2508f) - -1187f));
    let var_1 = all(select(vec3<bool>(true & select(true, true, true), true, false), select(vec3<bool>(true, true, all(vec3<bool>(true, true, false))), vec3<bool>(true, true, true), all(vec3<bool>(false, false, false)) | true), vec3<bool>(false, true, true)));
    let var_2 = global0[_wgslsmith_index_u32(34371u, 20u)];
    global1 = array<i32, 28>();
    global1 = array<i32, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(min(firstTrailingBit(0i), -_wgslsmith_dot_vec4_i32(vec4<i32>(-33675i, global1[_wgslsmith_index_u32(1u, 28u)], 33822i, u_input.a.x), vec4<i32>(global1[_wgslsmith_index_u32(1u, 28u)], u_input.a.x, 2147483647i, global1[_wgslsmith_index_u32(2879u, 28u)])) ^ _wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(-2147483647i, 3699i) | u_input.a.xy)), u_input.a.x);
}

