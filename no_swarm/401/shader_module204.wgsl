struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(23101u, true), Struct_1(9836u, false), Struct_1(10425u, true), Struct_1(0u, false), Struct_1(4294967295u, false), Struct_1(66475u, true), Struct_1(42419u, true), Struct_1(0u, false), Struct_1(4294967295u, true), Struct_1(52382u, true), Struct_1(4294967295u, false), Struct_1(1u, false), Struct_1(1u, true), Struct_1(49484u, true), Struct_1(11160u, false), Struct_1(44931u, false), Struct_1(114496u, true), Struct_1(64805u, true), Struct_1(4294967295u, false), Struct_1(50048u, true), Struct_1(1u, false), Struct_1(0u, false), Struct_1(0u, true), Struct_1(491u, false), Struct_1(1u, true), Struct_1(27790u, true), Struct_1(1u, false), Struct_1(115758u, true), Struct_1(4294967295u, true), Struct_1(1u, false));

var<private> global1: u32 = 0u;

var<private> global2: array<vec3<f32>, 4>;

var<private> global3: vec3<bool>;

var<private> global4: array<vec2<i32>, 12>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: vec3<bool>) -> vec3<bool> {
    let var_0 = arg_0;
    let var_1 = global0[_wgslsmith_index_u32(0u, 30u)];
    return arg_2;
}

fn func_2(arg_0: Struct_1) -> vec3<u32> {
    global3 = vec3<bool>(true, !select(true, true, arg_0.b), !all(vec2<bool>(!global3.x, true)));
    global2 = array<vec3<f32>, 4>();
    global1 = 1u;
    global3 = select(!vec3<bool>(true, global3.x, false), select(func_3(firstLeadingBit(~vec3<i32>(u_input.a, 15301i, u_input.a)), 0u, vec3<bool>(120040u <= arg_0.a, true, all(vec4<bool>(false, global3.x, arg_0.b, arg_0.b)))), !select(vec3<bool>(true, global3.x, false), vec3<bool>(global3.x, arg_0.b, false), !vec3<bool>(global3.x, arg_0.b, false)), any(!vec4<bool>(true, global3.x, global3.x, false))), true);
    let var_0 = Struct_1(arg_0.a, all(select(!func_3(vec3<i32>(u_input.a, u_input.a, -12771i), 0u, vec3<bool>(global3.x, true, false)).xz, global3.xy, vec2<bool>(!global3.x, true))));
    return ~(~(vec3<u32>(var_0.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 0u, 0u, 0u), vec4<u32>(43984u, 4294967295u, 15883u, 0u)), _wgslsmith_mult_u32(arg_0.a, 46927u)) ^ countOneBits(vec3<u32>(var_0.a, 4294967295u, 25235u) << (vec3<u32>(var_0.a, arg_0.a, 4294967295u) % vec3<u32>(32u)))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec3_u32(select(_wgslsmith_add_vec3_u32(~func_2(Struct_1(0u, global3.x)), vec3<u32>(~34516u, 1u, 1u)), vec3<u32>(firstTrailingBit(72007u), countOneBits(~1u), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 0u, 63589u), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 21834u, 0u), vec3<u32>(4294967295u, 41801u, 4294967295u)))), any(!(!vec4<bool>(false, false, global3.x, global3.x)))), _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(70603u, 4294967295u, 37728u), vec3<u32>(59430u, 1u, 63009u), vec3<u32>(28961u, 6515u, 0u)), firstTrailingBit(vec3<u32>(1u, 1u, 48318u))) >> (select(max(func_2(Struct_1(18483u, global3.x)), ~vec3<u32>(79535u, 1u, 41934u)), vec3<u32>(~29819u, 0u, 1u), any(func_3(vec3<i32>(u_input.a, 9277i, -2147483647i), 35194u, vec3<bool>(true, global3.x, true)))) % vec3<u32>(32u)));
    global2 = array<vec3<f32>, 4>();
    global2 = array<vec3<f32>, 4>();
    let var_1 = _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(1u, ~(~4294967295u)), 1u, 0u);
    var var_2 = Struct_1(~(~var_1), true);
    return global0[_wgslsmith_index_u32(firstTrailingBit(abs(~_wgslsmith_div_u32(8265u, reverseBits(var_1)))), 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1215f;
    let var_1 = true;
    let var_2 = func_1();
    global2 = array<vec3<f32>, 4>();
    global4 = array<vec2<i32>, 12>();
    global2 = array<vec3<f32>, 4>();
    var var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, -11934i, vec3<u32>(func_1().a, _wgslsmith_mod_u32(~var_2.a, 86151u) << (3737u % 32u), _wgslsmith_add_u32(func_1().a >> (var_2.a % 32u), 1u)), _wgslsmith_add_vec2_i32(vec2<i32>(~min(2147483647i, 2147483647i), ~(-u_input.a)), vec2<i32>((-52887i << (var_3.a % 32u)) | firstTrailingBit(2147483647i), 20595i)));
}

