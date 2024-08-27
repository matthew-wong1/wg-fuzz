struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: u32,
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

var<private> global0: array<Struct_2, 16>;

var<private> global1: array<vec2<f32>, 15> = array<vec2<f32>, 15>(vec2<f32>(1770f, -656f), vec2<f32>(1041f, 334f), vec2<f32>(-372f, 143f), vec2<f32>(-785f, 1470f), vec2<f32>(-1539f, 530f), vec2<f32>(-2031f, 1245f), vec2<f32>(300f, -582f), vec2<f32>(-318f, -215f), vec2<f32>(2082f, 787f), vec2<f32>(1581f, -782f), vec2<f32>(-1526f, 206f), vec2<f32>(342f, 1000f), vec2<f32>(-336f, -1209f), vec2<f32>(-321f, 669f), vec2<f32>(-1000f, -791f));

var<private> global2: bool = false;

var<private> global3: array<vec4<u32>, 9> = array<vec4<u32>, 9>(vec4<u32>(4294967295u, 27797u, 53894u, 0u), vec4<u32>(1u, 12836u, 51824u, 56056u), vec4<u32>(3620u, 14577u, 39736u, 4294967295u), vec4<u32>(68357u, 17377u, 0u, 0u), vec4<u32>(0u, 0u, 50736u, 1u), vec4<u32>(4294967295u, 67158u, 25629u, 4294967295u), vec4<u32>(88634u, 22207u, 1u, 1u), vec4<u32>(4294967295u, 1u, 4294967295u, 0u), vec4<u32>(79u, 0u, 1u, 4294967295u));

var<private> global4: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(1u, 12455u, 4294967295u), vec3<u32>(60877u, 28796u, 69363u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(37591u, 4294967295u, 15396u), vec3<u32>(1178u, 0u, 42738u), vec3<u32>(1u, 0u, 1u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec4<bool>) -> vec4<bool> {
    var var_0 = arg_0.d;
    var var_1 = ~vec4<u32>(2985u, countOneBits(4294967295u), var_0.a.x, _wgslsmith_mod_u32((var_0.a.x ^ u_input.d) ^ ~0u, ~_wgslsmith_add_u32(62345u, 86431u)));
    let var_2 = 2147483647i;
    var var_3 = firstTrailingBit(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(14916u | u_input.d, var_0.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b.d.a.x, arg_1.b.b.a.x, 18145u, var_0.a.x), global3[_wgslsmith_index_u32(var_0.a.x, 9u)]) ^ (var_1.x >> (23609u % 32u))), 0u, var_1.x & 1u, 0u));
    var var_4 = vec4<i32>(_wgslsmith_mult_i32(abs(firstTrailingBit(1i)), 0i) & -11210i, u_input.a.x, u_input.c.x, _wgslsmith_mod_i32(firstTrailingBit(u_input.c.x), ~_wgslsmith_dot_vec3_i32(u_input.a, u_input.c.wyx)));
    return !(!select(vec4<bool>(!arg_1.a, arg_1.b.c.x, !arg_0.c.x, true), !select(arg_2, arg_2, arg_0.c.x), false));
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: vec2<f32>) -> vec3<u32> {
    let var_0 = vec3<bool>((all(vec4<bool>(false, false, false, false)) | false) && !(!select(false, false, true)), any(!func_3(Struct_2(vec2<i32>(u_input.c.x, -2147483647i), Struct_1(vec3<u32>(22791u, arg_0, 1u)), vec2<bool>(true, false), Struct_1(u_input.b)), Struct_3(true, global0[_wgslsmith_index_u32(arg_0, 16u)]), vec4<bool>(true, true, true, false))) | any(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true)) | true);
    return vec3<u32>(9057u, abs(0u), 58841u);
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: bool, arg_3: Struct_4) -> i32 {
    var var_0 = true;
    var var_1 = !vec4<bool>(true, false, arg_2, any(vec2<bool>(arg_3.a.x, arg_3.a.x)) | arg_3.a.x);
    let var_2 = Struct_1(_wgslsmith_mod_vec3_u32(~global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(0u), 0u), 6u)], abs(vec3<u32>(arg_0, 1u, u_input.d)) >> (firstTrailingBit(func_2(u_input.d, vec2<u32>(arg_0, 78867u), vec2<f32>(arg_3.c.x, arg_3.c.x), vec2<f32>(-162f, arg_3.c.x))) % vec3<u32>(32u))));
    var_1 = vec4<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.c.x + arg_3.c.x)))) < _wgslsmith_f_op_f32(-arg_3.c.x), arg_3.a.x, u_input.c.x < 1i, true);
    var var_3 = ~_wgslsmith_mod_i32(35540i, -230i);
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<u32>, 9>();
    var var_0 = -_wgslsmith_dot_vec4_i32(vec4<i32>(func_1(4825u | u_input.d, abs(-14204i), any(vec2<bool>(false, false)), Struct_4(vec3<bool>(false, true, true), 62337u, global1[_wgslsmith_index_u32(u_input.d, 15u)], Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)))), abs(0i), abs(-1i), u_input.c.x & abs(59960i)), -(firstTrailingBit(vec4<i32>(u_input.c.x, 0i, u_input.c.x, -1i)) | vec4<i32>(-2096i, 0i, u_input.c.x, u_input.a.x)));
    let var_1 = vec2<u32>(firstLeadingBit(u_input.d), 1u);
    global4 = array<vec3<u32>, 6>();
    var_0 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d << (_wgslsmith_mod_u32(_wgslsmith_mod_u32(23215u, 4294967295u & u_input.d), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 4827u, 38801u), vec3<u32>(22490u, var_1.x, 32746u)), 0u)) % 32u));
}

