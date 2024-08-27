struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(vec4<bool>(true, false, false, false), 1087f, Struct_1(false, vec3<i32>(-1i, 6885i, 2147483647i))), Struct_3(vec4<bool>(false, true, false, true), 1641f, Struct_1(false, vec3<i32>(-14640i, 0i, 2147483647i))), Struct_3(vec4<bool>(false, false, true, false), -322f, Struct_1(false, vec3<i32>(0i, 63254i, -4519i))), Struct_3(vec4<bool>(true, false, true, true), 2347f, Struct_1(false, vec3<i32>(1i, 0i, 0i))), Struct_3(vec4<bool>(true, true, false, true), -745f, Struct_1(false, vec3<i32>(-32045i, 66467i, -64585i))), Struct_3(vec4<bool>(true, true, false, true), 750f, Struct_1(true, vec3<i32>(-41600i, -9648i, 5382i))), Struct_3(vec4<bool>(false, false, false, true), -1291f, Struct_1(true, vec3<i32>(-37749i, i32(-2147483648), 1i))), Struct_3(vec4<bool>(true, true, false, true), 748f, Struct_1(false, vec3<i32>(18081i, -4325i, 15739i))), Struct_3(vec4<bool>(false, false, false, false), 117f, Struct_1(false, vec3<i32>(-6070i, 5333i, 2147483647i))), Struct_3(vec4<bool>(false, false, true, true), 616f, Struct_1(false, vec3<i32>(-37178i, -8569i, -1i))), Struct_3(vec4<bool>(false, false, false, true), -629f, Struct_1(false, vec3<i32>(-1i, 26973i, 25318i))), Struct_3(vec4<bool>(false, false, true, true), 999f, Struct_1(false, vec3<i32>(2147483647i, -1i, 0i))), Struct_3(vec4<bool>(true, true, true, true), 768f, Struct_1(true, vec3<i32>(1i, 0i, -21901i))), Struct_3(vec4<bool>(true, true, false, false), 509f, Struct_1(false, vec3<i32>(1i, 58040i, 26077i))), Struct_3(vec4<bool>(false, true, true, false), -793f, Struct_1(false, vec3<i32>(-33778i, 51014i, -38872i))), Struct_3(vec4<bool>(false, true, true, false), -2002f, Struct_1(true, vec3<i32>(-1i, -16843i, -1i))), Struct_3(vec4<bool>(true, false, true, false), -1140f, Struct_1(true, vec3<i32>(2147483647i, 2147483647i, -1i))), Struct_3(vec4<bool>(true, true, true, false), -477f, Struct_1(false, vec3<i32>(-13502i, 1i, 2147483647i))), Struct_3(vec4<bool>(true, true, false, false), -270f, Struct_1(true, vec3<i32>(0i, -8504i, -1i))), Struct_3(vec4<bool>(true, false, true, false), 1000f, Struct_1(true, vec3<i32>(i32(-2147483648), -1i, 1i))));

var<private> global1: u32;

var<private> global2: i32 = -75986i;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32) -> vec4<u32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(183f * 1370f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-504f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -895f), _wgslsmith_div_f32(-559f, 151f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -534f))) + -1265f), -109f);
    global1 = u_input.a;
    let var_1 = u_input.b;
    let var_2 = Struct_1(true, vec3<i32>(~(arg_0 << (5093u % 32u)), _wgslsmith_div_i32(abs(2147483647i), _wgslsmith_dot_vec3_i32(select(vec3<i32>(var_1, 67303i, -20665i), vec3<i32>(-2147483647i, -2147483647i, u_input.b), true), _wgslsmith_sub_vec3_i32(vec3<i32>(15523i, 2147483647i, 2147483647i), vec3<i32>(arg_0, 2147483647i, 62048i)))), abs(abs(arg_0) & arg_0)));
    global2 = -(~u_input.b);
    return ~(~vec4<u32>(firstLeadingBit(1u), firstTrailingBit(0u), countOneBits(_wgslsmith_mod_u32(26653u, 1u)), _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(29531u, u_input.a, 0u, u_input.a)), select(vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u), vec4<u32>(0u, 4294967295u, u_input.a, u_input.a), vec4<bool>(false, false, var_2.a, false)))));
}

fn func_2(arg_0: vec2<u32>) -> Struct_3 {
    let var_0 = vec2<u32>(4294967295u >> ((u_input.a ^ 61069u) % 32u), _wgslsmith_mod_u32(arg_0.x, ~arg_0.x | 90346u));
    global1 = var_0.x;
    global1 = ~countOneBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 0u, u_input.a, 3574u), func_3(-44662i)), 34219u));
    global0 = array<Struct_3, 20>();
    global0 = array<Struct_3, 20>();
    return Struct_3(vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_1(all(vec3<bool>(select(false, false, true), any(vec2<bool>(false, false)), all(vec2<bool>(true, false)))), firstLeadingBit(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, -1i, 0i), vec3<i32>(u_input.b, u_input.b, -28733i)))));
}

fn func_1() -> Struct_3 {
    var var_0 = ~_wgslsmith_add_i32(-2147483647i, ~_wgslsmith_mod_i32(2147483647i, i32(-1i) * -1i));
    var var_1 = -240f;
    global1 = u_input.a;
    var var_2 = !vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(2528f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(611f)) + -464f), true, all(vec3<bool>(true, true, true)));
    var_1 = -1093f;
    return func_2(firstTrailingBit(~vec2<u32>(533u, 10074u)) ^ vec2<u32>(0u << (u_input.a % 32u), 62419u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global2 = ~var_0.c.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~min(vec2<u32>(36110u, 0u), vec2<u32>(u_input.a, 87743u)), ~vec2<u32>(98933u, 4109u)), reverseBits(~_wgslsmith_add_vec2_u32(vec2<u32>(18956u, u_input.a), vec2<u32>(1u, u_input.a)))), ~_wgslsmith_add_vec3_u32(firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(48945u, u_input.a, 0u), vec3<u32>(u_input.a, u_input.a, 1u))), countOneBits(~vec3<u32>(u_input.a, 0u, u_input.a))), ~u_input.a, u_input.a);
}

