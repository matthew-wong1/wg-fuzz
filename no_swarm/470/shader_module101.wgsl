struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec4<f32>, 18> = array<vec4<f32>, 18>(vec4<f32>(-597f, -383f, 675f, 730f), vec4<f32>(-1331f, 423f, -1000f, -248f), vec4<f32>(218f, -556f, -1430f, -1302f), vec4<f32>(232f, -566f, -518f, -711f), vec4<f32>(1167f, 476f, -1000f, 486f), vec4<f32>(-1540f, 978f, 643f, 200f), vec4<f32>(165f, -1000f, -258f, -537f), vec4<f32>(-1603f, 424f, -139f, 893f), vec4<f32>(528f, -691f, 466f, 1160f), vec4<f32>(-281f, 1000f, 1293f, -914f), vec4<f32>(216f, -179f, 599f, -242f), vec4<f32>(918f, 1339f, 1777f, 473f), vec4<f32>(-514f, -2044f, -708f, 192f), vec4<f32>(-1379f, -1000f, 968f, 1512f), vec4<f32>(1000f, -2087f, -102f, -438f), vec4<f32>(-1187f, 1000f, 1000f, -201f), vec4<f32>(694f, -2469f, 141f, -1156f), vec4<f32>(-191f, -328f, -637f, 556f));

var<private> global2: i32 = 10367i;

var<private> global3: i32 = -1510i;

var<private> global4: array<vec4<u32>, 27> = array<vec4<u32>, 27>(vec4<u32>(50944u, 42960u, 67895u, 21527u), vec4<u32>(47521u, 4294967295u, 0u, 0u), vec4<u32>(1u, 0u, 1u, 0u), vec4<u32>(0u, 4294967295u, 16452u, 0u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 22513u), vec4<u32>(1u, 0u, 1u, 1u), vec4<u32>(12548u, 31536u, 3709u, 0u), vec4<u32>(82313u, 9660u, 24139u, 1u), vec4<u32>(0u, 4294967295u, 0u, 0u), vec4<u32>(2647u, 40339u, 26382u, 1u), vec4<u32>(0u, 1u, 1u, 1u), vec4<u32>(4294967295u, 0u, 15308u, 6995u), vec4<u32>(4294967295u, 12634u, 0u, 66798u), vec4<u32>(47074u, 67053u, 98783u, 81411u), vec4<u32>(6120u, 1u, 4294967295u, 41745u), vec4<u32>(0u, 0u, 9339u, 4294967295u), vec4<u32>(4294967295u, 76661u, 40607u, 1u), vec4<u32>(23651u, 0u, 32965u, 0u), vec4<u32>(0u, 4294967295u, 20764u, 91736u), vec4<u32>(0u, 37215u, 1050u, 4294967295u), vec4<u32>(4294967295u, 26597u, 52326u, 0u), vec4<u32>(0u, 1u, 60064u, 16493u), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(0u, 69653u, 27849u, 1u), vec4<u32>(4294967295u, 1u, 1u, 19789u), vec4<u32>(39326u, 27261u, 1u, 4294967295u), vec4<u32>(4294967295u, 17535u, 26549u, 1u));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: vec4<f32>) -> u32 {
    global4 = array<vec4<u32>, 27>();
    global3 = arg_2;
    var var_0 = Struct_2(1u);
    let var_1 = min(select(_wgslsmith_mod_u32(var_0.a, 0u), u_input.a.x, _wgslsmith_f_op_f32(-arg_3.x) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) + 145f)), u_input.a.x);
    global4 = array<vec4<u32>, 27>();
    return countOneBits(reverseBits(max(1u, min(4294967295u, var_0.a))));
}

fn func_2(arg_0: Struct_1) -> i32 {
    global2 = -arg_0.a;
    var var_0 = ~countOneBits(~(vec3<u32>(0u, u_input.a.x, 1u) >> (vec3<u32>(70568u, u_input.a.x, u_input.a.x) % vec3<u32>(32u))) >> (vec3<u32>(func_3(arg_0.a, arg_0, -3706i, vec4<f32>(-454f, 786f, -526f, -1391f)), countOneBits(49771u), _wgslsmith_dot_vec4_u32(global4[_wgslsmith_index_u32(u_input.a.x, 27u)], global4[_wgslsmith_index_u32(u_input.a.x, 27u)])) % vec3<u32>(32u)));
    let var_1 = arg_0;
    let var_2 = Struct_2(11155u);
    let var_3 = var_2;
    return -2147483647i >> (_wgslsmith_div_u32(1u >> (~var_3.a % 32u), ~var_2.a) % 32u);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: u32) -> Struct_2 {
    let var_0 = ~(_wgslsmith_mod_u32(~(~u_input.a.x), 1u) >> (u_input.a.x % 32u));
    var var_1 = !(!vec2<bool>(global0.x, true));
    var var_2 = Struct_2(arg_2);
    global2 = _wgslsmith_clamp_i32(arg_0.a, arg_0.a, arg_0.a);
    let var_3 = abs(-6440i) & ~(-1i | func_2(Struct_1(2147483647i, global0.x, arg_0.c)));
    return Struct_2(abs((arg_2 | 0u) ^ u_input.a.x));
}

fn func_4(arg_0: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(352f)), _wgslsmith_f_op_f32(trunc(-1446f)))), 482f)))));
    let var_1 = Struct_1(-(~reverseBits(-1i)), global0.x, select(vec3<bool>(true, true, true), vec3<bool>(!all(vec4<bool>(true, false, false, global0.x)), true, var_0 <= var_0), select(!select(vec3<bool>(global0.x, true, false), vec3<bool>(global0.x, false, true), true), vec3<bool>(global0.x, any(vec2<bool>(true, global0.x)), true), true)));
    global4 = array<vec4<u32>, 27>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(812f, var_0)));
    global3 = ~(-16099i);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(Struct_1(0i, !any(vec3<bool>(global0.x, global0.x, true)), !select(vec3<bool>(true, true, global0.x), vec3<bool>(global0.x, true, true), true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -366f) - _wgslsmith_f_op_f32(1755f + -352f)))), 6072u, u_input.a.x & u_input.a.x));
    let var_1 = ~countOneBits(72289i);
    var var_2 = Struct_1(max(var_1, _wgslsmith_sub_i32(reverseBits(-var_1), ~0i)), global0.x, vec3<bool>(false, all(select(select(vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(global0.x, global0.x, false, false), true), !vec4<bool>(true, true, global0.x, false), vec4<bool>(true, global0.x, false, global0.x))), all(vec2<bool>(!global0.x, global0.x))));
    var var_3 = vec2<i32>(var_1, _wgslsmith_div_i32(var_1, min(var_2.a, 0i))) ^ _wgslsmith_div_vec2_i32(~vec2<i32>(var_1, 1829i) | (_wgslsmith_add_vec2_i32(vec2<i32>(-21199i, var_1), vec2<i32>(-20510i, 23056i)) >> (~u_input.a % vec2<u32>(32u))), firstTrailingBit((vec2<i32>(var_1, -82754i) >> (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u))) ^ -vec2<i32>(2147483647i, -2147483647i)));
    global2 = -2147483647i << (~(~max(1u >> (1u % 32u), u_input.a.x)) % 32u);
    let var_4 = Struct_1(-3412i, global0.x, !var_2.c);
    global0 = vec2<bool>(var_4.c.x, var_4.c.x);
    global0 = !vec2<bool>(!var_4.c.x, var_2.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(488f, ~reverseBits(abs(vec4<i32>(-14348i, 0i, var_2.a, -5178i)) << (_wgslsmith_clamp_vec4_u32(global4[_wgslsmith_index_u32(68878u, 27u)], global4[_wgslsmith_index_u32(8415u, 27u)], vec4<u32>(4294967295u, u_input.a.x, 1u, 1u)) % vec4<u32>(32u))), vec3<i32>(-(-var_2.a >> (~0u % 32u)), 1i, ~_wgslsmith_div_i32(2147483647i, 1i)), u_input.a.x, 0i);
}

