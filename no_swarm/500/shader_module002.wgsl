struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<i32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 8>;

var<private> global1: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(vec2<f32>(-937f, 2021f), vec3<i32>(-14815i, -7302i, -25995i)), Struct_4(vec2<f32>(-1063f, -524f), vec3<i32>(1i, -19023i, 1i)), Struct_4(vec2<f32>(-233f, 1151f), vec3<i32>(1i, 0i, 2147483647i)), Struct_4(vec2<f32>(1878f, -1292f), vec3<i32>(0i, -1i, 2147483647i)), Struct_4(vec2<f32>(-281f, 689f), vec3<i32>(-1i, 0i, -28467i)), Struct_4(vec2<f32>(-650f, 659f), vec3<i32>(6466i, -42093i, 2147483647i)), Struct_4(vec2<f32>(-1205f, 1513f), vec3<i32>(-41494i, 32651i, -21582i)), Struct_4(vec2<f32>(877f, -1509f), vec3<i32>(-56996i, 2147483647i, 612i)), Struct_4(vec2<f32>(1355f, -757f), vec3<i32>(1i, 40566i, -12149i)), Struct_4(vec2<f32>(390f, -1280f), vec3<i32>(8536i, 2147483647i, 13003i)), Struct_4(vec2<f32>(-327f, 147f), vec3<i32>(0i, -13690i, -45635i)), Struct_4(vec2<f32>(-1552f, -612f), vec3<i32>(-1i, 0i, -17595i)), Struct_4(vec2<f32>(-138f, 1476f), vec3<i32>(-1i, -22200i, -1i)), Struct_4(vec2<f32>(375f, 1000f), vec3<i32>(62596i, 67803i, 0i)), Struct_4(vec2<f32>(856f, -128f), vec3<i32>(-5113i, 17246i, i32(-2147483648))), Struct_4(vec2<f32>(-1471f, -1010f), vec3<i32>(0i, 21757i, 0i)), Struct_4(vec2<f32>(738f, -2055f), vec3<i32>(i32(-2147483648), -5626i, 9502i)), Struct_4(vec2<f32>(-400f, -741f), vec3<i32>(-5555i, 2147483647i, 94331i)), Struct_4(vec2<f32>(492f, -1161f), vec3<i32>(29769i, -19949i, 0i)), Struct_4(vec2<f32>(-252f, -1011f), vec3<i32>(7919i, -808i, 0i)), Struct_4(vec2<f32>(-709f, 1000f), vec3<i32>(26346i, -29431i, i32(-2147483648))), Struct_4(vec2<f32>(747f, -865f), vec3<i32>(17340i, 57257i, 9088i)), Struct_4(vec2<f32>(1533f, 132f), vec3<i32>(21101i, -1i, -1i)), Struct_4(vec2<f32>(-237f, 1075f), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648))), Struct_4(vec2<f32>(-292f, -1000f), vec3<i32>(-5208i, -1i, 1i)), Struct_4(vec2<f32>(-608f, 881f), vec3<i32>(-1i, -1i, i32(-2147483648))), Struct_4(vec2<f32>(1809f, 1319f), vec3<i32>(48973i, -49285i, 19441i)), Struct_4(vec2<f32>(-199f, -763f), vec3<i32>(i32(-2147483648), 0i, i32(-2147483648))), Struct_4(vec2<f32>(621f, -186f), vec3<i32>(i32(-2147483648), -30326i, 26462i)), Struct_4(vec2<f32>(-1000f, 349f), vec3<i32>(1i, 29611i, -1i)));

var<private> global2: array<u32, 31> = array<u32, 31>(0u, 4294967295u, 6846u, 47389u, 58944u, 4294967295u, 23826u, 4294967295u, 0u, 10527u, 35776u, 22750u, 1u, 72921u, 124804u, 0u, 1u, 1u, 4294967295u, 4294967295u, 12760u, 4294967295u, 1u, 20525u, 1u, 91871u, 0u, 7526u, 0u, 51296u, 10143u);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    let var_0 = u_input.a;
    let var_1 = arg_0.xx;
    var var_2 = Struct_1(!select(var_1, vec2<bool>(false, true), false));
    let var_3 = global2[_wgslsmith_index_u32(1u, 31u)];
    global0 = array<vec2<u32>, 8>();
    return abs(_wgslsmith_dot_vec3_u32(vec3<u32>(62342u, 57225u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(7341u, 31u)], 31u)], 31u)]) & ~vec3<u32>(global2[_wgslsmith_index_u32(0u, 31u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 4294967295u), ~_wgslsmith_div_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(34092u, 31u)], 1u, global2[_wgslsmith_index_u32(40399u, 31u)]), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(82595u, 31u)], 31u)], global2[_wgslsmith_index_u32(25213u, 31u)], 116574u)))) ^ firstLeadingBit(global2[_wgslsmith_index_u32(abs(1u) & global2[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(39771u, 31u)], 31u)], 31u)]), 31u)], 31u)]);
}

fn func_2() -> u32 {
    global2 = array<u32, 31>();
    var var_0 = global0[_wgslsmith_index_u32(func_3(vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, true)), 8u)];
    var_0 = vec2<u32>(var_0.x, global2[_wgslsmith_index_u32(0u << (0u % 32u), 31u)]);
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 30u)];
    var var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f))))), vec3<i32>(-1i) * -(abs(var_1.b) | select(vec3<i32>(var_1.b.x, u_input.a, -1i), vec3<i32>(6066i, var_1.b.x, 0i), vec3<bool>(false, false, true))));
    return _wgslsmith_add_u32(~global2[_wgslsmith_index_u32(~0u, 31u)], _wgslsmith_dot_vec3_u32(~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(86468u << (var_0.x % 32u), 31u)], 31u)], _wgslsmith_add_u32(var_0.x, var_0.x), ~var_0.x), ~((vec3<u32>(4176u, global2[_wgslsmith_index_u32(var_0.x, 31u)], 1u) & vec3<u32>(9177u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 31u)], 31u)], global2[_wgslsmith_index_u32(var_0.x, 31u)])) ^ vec3<u32>(global2[_wgslsmith_index_u32(var_0.x, 31u)], 4294967295u, global2[_wgslsmith_index_u32(var_0.x, 31u)]))));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>) -> Struct_2 {
    global2 = array<u32, 31>();
    global1 = array<Struct_4, 30>();
    global1 = array<Struct_4, 30>();
    var var_0 = !vec2<bool>(true, select(select(arg_1.x, true, false & arg_1.x), any(vec3<bool>(true, true, arg_1.x)), all(select(vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(true, false, true, arg_1.x), false))));
    global0 = array<vec2<u32>, 8>();
    return Struct_2(firstLeadingBit(vec2<u32>(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12230u, 31u)], 31u)], func_2()) & ~vec2<u32>(1u, global2[_wgslsmith_index_u32(38768u, 31u)])), Struct_1(!select(vec2<bool>(false, arg_1.x), !vec2<bool>(arg_1.x, arg_1.x), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -34956i;
    let var_1 = Struct_1(vec2<bool>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(-39809i, var_0), var_0) >= -(22277i | u_input.a), true));
    let var_2 = _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 31u)], 31u)], 31u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 31u)], 31u)])), countOneBits(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(1u, 31u)], 31u)], 8u)])) ^ global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~6902u, 31u)], 31u)];
    let var_3 = (~(vec3<u32>(var_2, 32688u, 0u) | vec3<u32>(126881u, 4294967295u, var_2)) ^ _wgslsmith_div_vec3_u32(vec3<u32>(1u, ~global2[_wgslsmith_index_u32(var_2, 31u)], _wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(var_2, 31u)], 0u, 4294967295u, 0u), vec4<u32>(57249u, var_2, var_2, 42626u))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(6255u, 31u)], var_2, 8266u), vec3<u32>(global2[_wgslsmith_index_u32(0u, 31u)], global2[_wgslsmith_index_u32(30161u, 31u)], global2[_wgslsmith_index_u32(1u, 31u)])))) >> (abs(_wgslsmith_add_vec3_u32((vec3<u32>(2730u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19248u, 31u)], 31u)], 4294967295u) | vec3<u32>(4294967295u, var_2, 68607u)) >> (vec3<u32>(var_2, var_2, var_2) % vec3<u32>(32u)), ~(vec3<u32>(var_2, global2[_wgslsmith_index_u32(1u, 31u)], var_2) | vec3<u32>(13962u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5886u, 31u)], 31u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(57508u, 31u)], 31u)])))) % vec3<u32>(32u));
    global2 = array<u32, 31>();
    var var_4 = func_1(-2147483647i, vec3<bool>(-703f <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(431f + 116f), _wgslsmith_f_op_f32(f32(-1f) * -1060f), select(true, true, var_1.a.x))), !var_1.a.x, ~(4294967295u ^ var_2) < (_wgslsmith_mod_u32(var_3.x, 0u) >> ((53813u >> (global2[_wgslsmith_index_u32(0u, 31u)] % 32u)) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(max(~_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), countOneBits(vec2<i32>(13525i, var_0))), vec2<i32>(-(~var_0), ~_wgslsmith_sub_i32(-52073i, -35597i))));
}

