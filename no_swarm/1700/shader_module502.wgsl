struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: array<bool, 18> = array<bool, 18>(false, true, true, false, false, true, false, false, false, false, true, true, true, true, false, false, true, true);

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec3<f32>(-1143f, -376f, -1269f), vec2<bool>(true, false), 1u, vec3<f32>(550f, 1878f, -238f)), Struct_1(vec3<f32>(-489f, -991f, -569f), vec2<bool>(true, true), 1u, vec3<f32>(-455f, -325f, 2326f)), Struct_1(vec3<f32>(-1197f, -2308f, -431f), vec2<bool>(false, false), 1u, vec3<f32>(727f, 317f, 374f)), Struct_1(vec3<f32>(201f, 402f, -1131f), vec2<bool>(false, false), 1u, vec3<f32>(1324f, -607f, -994f)), Struct_1(vec3<f32>(546f, -392f, -204f), vec2<bool>(true, true), 31120u, vec3<f32>(906f, 1046f, 370f)), Struct_1(vec3<f32>(-599f, -528f, 1329f), vec2<bool>(false, false), 56988u, vec3<f32>(221f, -458f, -300f)), Struct_1(vec3<f32>(349f, -1335f, 1259f), vec2<bool>(false, false), 17383u, vec3<f32>(2196f, -216f, -1890f)), Struct_1(vec3<f32>(-844f, 1000f, 692f), vec2<bool>(false, true), 22505u, vec3<f32>(-342f, 215f, -937f)), Struct_1(vec3<f32>(528f, -476f, 1212f), vec2<bool>(true, false), 0u, vec3<f32>(-879f, 2023f, -1099f)), Struct_1(vec3<f32>(219f, 355f, 2068f), vec2<bool>(false, false), 15315u, vec3<f32>(-618f, -1050f, -336f)), Struct_1(vec3<f32>(-873f, -354f, -393f), vec2<bool>(true, false), 6720u, vec3<f32>(1000f, 838f, 764f)), Struct_1(vec3<f32>(-682f, -201f, 343f), vec2<bool>(false, true), 38963u, vec3<f32>(-896f, 1000f, 878f)), Struct_1(vec3<f32>(-642f, 1197f, 660f), vec2<bool>(true, false), 80356u, vec3<f32>(679f, 1248f, -646f)), Struct_1(vec3<f32>(-672f, -1200f, -1179f), vec2<bool>(false, false), 1642u, vec3<f32>(-683f, 292f, -989f)), Struct_1(vec3<f32>(-2189f, -289f, 587f), vec2<bool>(false, true), 0u, vec3<f32>(-183f, -921f, -1293f)), Struct_1(vec3<f32>(474f, -1000f, 438f), vec2<bool>(true, false), 1u, vec3<f32>(-698f, -416f, 869f)), Struct_1(vec3<f32>(836f, 891f, -142f), vec2<bool>(false, true), 34345u, vec3<f32>(-401f, -1087f, 1000f)), Struct_1(vec3<f32>(-1676f, -834f, -1000f), vec2<bool>(true, false), 1u, vec3<f32>(503f, 601f, 414f)), Struct_1(vec3<f32>(792f, -1000f, -1418f), vec2<bool>(false, true), 1u, vec3<f32>(1247f, -355f, 1006f)), Struct_1(vec3<f32>(1000f, -782f, -104f), vec2<bool>(false, false), 1u, vec3<f32>(-1209f, 131f, 1699f)), Struct_1(vec3<f32>(-667f, 440f, 2739f), vec2<bool>(false, false), 1755u, vec3<f32>(1656f, -132f, -1444f)), Struct_1(vec3<f32>(-773f, -1712f, -787f), vec2<bool>(false, true), 27604u, vec3<f32>(1000f, -1000f, 3482f)), Struct_1(vec3<f32>(-167f, 1244f, -1536f), vec2<bool>(true, false), 4294967295u, vec3<f32>(1000f, 349f, -1000f)), Struct_1(vec3<f32>(-1517f, -1126f, 726f), vec2<bool>(false, true), 1u, vec3<f32>(-769f, 353f, -1575f)), Struct_1(vec3<f32>(1096f, -1653f, -579f), vec2<bool>(true, false), 3426u, vec3<f32>(1476f, -798f, -873f)));

var<private> global3: bool = true;

var<private> global4: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(select(-1000f, -1279f, any(!arg_0.b))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_0.d.x, _wgslsmith_f_op_f32(sign(arg_0.d.x))))))));
    let var_1 = all(vec4<bool>(any(vec4<bool>(true, !global1[_wgslsmith_index_u32(arg_0.c, 18u)], arg_2.b.x | global1[_wgslsmith_index_u32(1u, 18u)], true)), false, false, true));
    var var_2 = false;
    global3 = true;
    var var_3 = -795f;
    return u_input.b.x;
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec3<bool>, arg_3: f32) -> f32 {
    global0 = array<Struct_2, 18>();
    let var_0 = abs(_wgslsmith_clamp_vec4_i32(~reverseBits(vec4<i32>(-5611i, 0i, u_input.a.x, u_input.a.x) & vec4<i32>(2147483647i, u_input.a.x, 2147483647i, 5287i)), ~vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, -2147483647i) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, -34183i, u_input.a.x) << (vec4<u32>(u_input.b.x, arg_0.c, 0u, 10794u) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, 0i, u_input.a.x, -24151i)), -max(vec4<i32>(-15568i, u_input.a.x, 0i, u_input.a.x), vec4<i32>(-7659i, -12486i, u_input.a.x, -1i)) & _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -2147483647i, -1i, u_input.a.x), vec4<i32>(-2147483647i, -2147483647i, -5984i, -2147483647i))));
    global2 = array<Struct_1, 25>();
    var var_1 = firstLeadingBit(~(~func_3(arg_0, -7207i, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(49496u, 26495u), 25u)])));
    var var_2 = min(2147483647i, firstLeadingBit(var_0.x));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1194f + arg_0.a.x) + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.x * -131f) - arg_0.d.x)), arg_0.b.x)), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(ceil(arg_0.a.x)))));
}

fn func_1() -> StorageBuffer {
    let var_0 = ~u_input.b.x;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(vec3<f32>(-2017f, 762f, 385f), vec2<bool>(false, global1[_wgslsmith_index_u32(var_0, 18u)]), var_0, vec3<f32>(786f, -2016f, -1334f)), -967f, vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 18u)], false, true), -1900f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1563f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-246f, -118f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-224f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1545f))), _wgslsmith_f_op_f32(select(-319f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1898f * 1596f))), all(vec2<bool>(global1[_wgslsmith_index_u32(41098u, 18u)], true))))));
    global2 = array<Struct_1, 25>();
    global3 = _wgslsmith_f_op_f32(select(var_1.x, 1231f, true)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-2055f, 1311f)))), var_1.x)) + var_1.x);
    return StorageBuffer(-1i, ~u_input.b.x, _wgslsmith_sub_vec2_i32(abs(vec2<i32>(_wgslsmith_mod_i32(-1i, 69535i), u_input.a.x)), u_input.a ^ u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

