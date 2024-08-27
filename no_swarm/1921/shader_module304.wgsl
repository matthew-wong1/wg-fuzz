struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: bool,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec4<bool>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 27>;

var<private> global1: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(-1i, 13385i, vec4<bool>(true, true, false, true), Struct_1(vec4<bool>(false, false, true, false), vec2<u32>(35737u, 16263u), false, 4294967295u, true), 0u), Struct_2(-3845i, i32(-2147483648), vec4<bool>(true, false, false, false), Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(7492u, 23687u), false, 4294967295u, true), 0u), Struct_2(14517i, -30564i, vec4<bool>(true, false, true, true), Struct_1(vec4<bool>(false, false, false, false), vec2<u32>(1u, 1u), true, 1u, false), 0u), Struct_2(-30375i, -1i, vec4<bool>(true, false, true, false), Struct_1(vec4<bool>(true, true, true, false), vec2<u32>(24957u, 1u), false, 1u, true), 37737u), Struct_2(1i, -7369i, vec4<bool>(false, true, false, false), Struct_1(vec4<bool>(true, false, false, true), vec2<u32>(673u, 25785u), false, 4294967295u, false), 0u), Struct_2(0i, -56697i, vec4<bool>(true, true, true, true), Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(1u, 4294967295u), false, 15345u, false), 77564u), Struct_2(0i, 0i, vec4<bool>(false, true, true, true), Struct_1(vec4<bool>(false, false, true, false), vec2<u32>(88784u, 10244u), true, 27242u, false), 4294967295u), Struct_2(-3640i, 8957i, vec4<bool>(false, true, true, true), Struct_1(vec4<bool>(true, false, false, false), vec2<u32>(86862u, 14341u), true, 1u, false), 1u), Struct_2(-1i, 17911i, vec4<bool>(true, true, true, true), Struct_1(vec4<bool>(true, false, false, true), vec2<u32>(1u, 156082u), true, 0u, true), 0u), Struct_2(14673i, 7632i, vec4<bool>(true, true, false, true), Struct_1(vec4<bool>(true, true, true, false), vec2<u32>(6916u, 4294967295u), false, 50232u, false), 29896u), Struct_2(2411i, 953i, vec4<bool>(false, true, true, false), Struct_1(vec4<bool>(false, true, false, true), vec2<u32>(0u, 15852u), true, 31895u, true), 4294967295u), Struct_2(i32(-2147483648), 63466i, vec4<bool>(true, true, false, false), Struct_1(vec4<bool>(false, false, true, true), vec2<u32>(4294967295u, 82613u), true, 77036u, true), 0u), Struct_2(i32(-2147483648), i32(-2147483648), vec4<bool>(true, false, false, false), Struct_1(vec4<bool>(true, true, false, true), vec2<u32>(1u, 3531u), false, 1u, true), 4294967295u), Struct_2(i32(-2147483648), -49107i, vec4<bool>(false, false, true, false), Struct_1(vec4<bool>(false, false, false, false), vec2<u32>(0u, 30813u), false, 0u, false), 18802u), Struct_2(2147483647i, -57753i, vec4<bool>(false, true, false, true), Struct_1(vec4<bool>(false, false, false, false), vec2<u32>(29233u, 0u), false, 10047u, true), 63668u), Struct_2(-21197i, -16624i, vec4<bool>(false, false, false, false), Struct_1(vec4<bool>(true, false, true, false), vec2<u32>(66471u, 2117u), false, 13810u, true), 6685u), Struct_2(2147483647i, 32771i, vec4<bool>(false, true, true, true), Struct_1(vec4<bool>(false, true, false, false), vec2<u32>(36802u, 1u), true, 0u, true), 0u));

var<private> global2: array<i32, 26> = array<i32, 26>(i32(-2147483648), 2147483647i, -61476i, -1i, -38169i, -1i, 1i, 1i, -41382i, -3273i, -16830i, 28274i, i32(-2147483648), 34914i, 2147483647i, 1i, 32552i, i32(-2147483648), -4922i, i32(-2147483648), -20877i, 2147483647i, 2147483647i, -1i, -822i, 11954i);

var<private> global3: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec4<bool>(false, true, false, false), vec2<u32>(0u, 24694u), true, 18813u, true), Struct_1(vec4<bool>(false, false, true, true), vec2<u32>(37609u, 48082u), true, 123909u, true), Struct_1(vec4<bool>(true, true, true, true), vec2<u32>(34772u, 1u), false, 0u, true), Struct_1(vec4<bool>(false, true, true, false), vec2<u32>(100390u, 55286u), false, 60985u, true), Struct_1(vec4<bool>(true, true, false, false), vec2<u32>(34260u, 1u), true, 50203u, true), Struct_1(vec4<bool>(true, true, true, true), vec2<u32>(0u, 1u), false, 0u, false), Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(43154u, 49276u), false, 4294967295u, true), Struct_1(vec4<bool>(true, false, true, true), vec2<u32>(65485u, 0u), true, 4294967295u, false), Struct_1(vec4<bool>(false, false, true, true), vec2<u32>(0u, 0u), false, 0u, true), Struct_1(vec4<bool>(true, true, true, true), vec2<u32>(1u, 4294967295u), false, 4294967295u, true));

var<private> global4: u32 = 75208u;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec3<bool>) -> u32 {
    global3 = array<Struct_1, 10>();
    global4 = 27779u;
    let var_0 = true;
    var var_1 = -2097f;
    let var_2 = arg_1.d.b;
    return 24676u;
}

fn func_2() -> u32 {
    global4 = 64824u;
    let var_0 = 93330u == _wgslsmith_mod_u32(reverseBits(func_3(1324f, global1[_wgslsmith_index_u32(1u, 17u)], vec2<f32>(-183f, -246f), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)))), ~firstTrailingBit(1u));
    var var_1 = 29937u;
    global2 = array<i32, 26>();
    var var_2 = abs(1i);
    return ~_wgslsmith_div_u32(1u ^ func_3(-1000f, global1[_wgslsmith_index_u32(1u, 17u)], _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2441f, -1245f))), vec3<bool>(var_0, false, var_0)), 63561u);
}

fn func_1(arg_0: Struct_2) -> i32 {
    global4 = 42023u;
    let var_0 = 463f;
    var var_1 = !arg_0.c.yzy;
    var var_2 = global0[_wgslsmith_index_u32(arg_0.d.b.x >> (func_2() % 32u), 27u)];
    let var_3 = -vec4<i32>(-reverseBits(~12204i), -(~(i32(-1i) * -2147483647i)), -(-4684i ^ (u_input.a >> (arg_0.d.b.x % 32u))), ~(-1i));
    return 0i;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: vec2<bool>) -> Struct_1 {
    global0 = array<vec4<f32>, 27>();
    global3 = array<Struct_1, 10>();
    let var_0 = _wgslsmith_f_op_f32(min(arg_2.x, arg_2.x));
    global2 = array<i32, 26>();
    var var_1 = Struct_1(vec4<bool>(all(vec3<bool>(true, true, !arg_1.x)), all(vec4<bool>(any(vec4<bool>(true, true, arg_1.x, arg_0.x)), arg_1.x, true, false)), !(min(global2[_wgslsmith_index_u32(42659u, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)]) >= u_input.a), false), vec2<u32>(1u, 22836u), false, 30597u, any(arg_0));
    return global3[_wgslsmith_index_u32(27378u, 10u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 26>();
    var var_0 = func_4(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, all(vec4<bool>(true, false, false, false))), vec3<bool>(true, true, true)), vec3<bool>(all(vec4<bool>(true, false, true, true)), any(vec2<bool>(false, false)), func_1(global1[_wgslsmith_index_u32(1u, 17u)]) > _wgslsmith_add_i32(0i, global2[_wgslsmith_index_u32(1u, 26u)])), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), all(vec4<bool>(false, true, true, false)))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(-31577i < global2[_wgslsmith_index_u32(1u, 26u)], true)), select(vec2<bool>(true, true), vec2<bool>(true, true), false), !select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-124f, -637f), vec2<f32>(-1301f, 197f))))))), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(true, true, true))), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true))), select(select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(false, false), vec2<bool>(false, false))), all(vec4<bool>(1i < global2[_wgslsmith_index_u32(4294967295u, 26u)], select(true, true, true), true, true))));
    global3 = array<Struct_1, 10>();
    var var_1 = ~16768u;
    let var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, _wgslsmith_f_op_f32(-680f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-666f, -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(245f, -945f) - _wgslsmith_f_op_f32(abs(957f)))))));
}

