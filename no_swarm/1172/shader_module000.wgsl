struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: bool,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(-128f, 459f, 2249f, 305f), vec4<f32>(773f, -1626f, -306f, -894f), vec4<f32>(733f, 532f, -1583f, 288f), vec4<f32>(-884f, -848f, 814f, 1000f), vec4<f32>(1035f, -2449f, 670f, -1051f), vec4<f32>(-505f, -1210f, 239f, -2410f), vec4<f32>(1491f, 894f, -609f, -393f), vec4<f32>(-1398f, -124f, -1627f, -1135f), vec4<f32>(-884f, 311f, 948f, 1142f), vec4<f32>(743f, -990f, -513f, 556f), vec4<f32>(-2080f, -206f, 1000f, -457f), vec4<f32>(-1000f, 216f, -171f, 1433f), vec4<f32>(1754f, -345f, 1644f, -1698f), vec4<f32>(334f, -346f, -444f, -536f), vec4<f32>(1236f, 1380f, 110f, -272f), vec4<f32>(-1000f, -1375f, -1330f, 583f));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_2) -> u32 {
    global1 = array<vec4<f32>, 16>();
    global0 = arg_2.a;
    global0 = arg_2.c;
    let var_0 = arg_2.c;
    global0 = Struct_1(~2147483647i);
    return ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, 4294967295u, u_input.a, 55547u), vec4<u32>(10414u, u_input.e.x, 4294967295u, 4294967295u), vec4<bool>(false, arg_2.d, true, arg_2.d)) << ((vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.a) | vec4<u32>(u_input.a, u_input.e.x, u_input.e.x, u_input.e.x)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(43975u, 42790u, 4294967295u, 112782u), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.e.x, 39359u, 12860u))), reverseBits(_wgslsmith_div_u32(~11767u, 4294967295u)));
}

fn func_1() -> bool {
    var var_0 = ~select(vec4<u32>(20008u | u_input.a, 1u, 1u, 90718u), ~(~(~vec4<u32>(u_input.e.x, 4294967295u, 11264u, 4294967295u))), vec4<bool>(true, true, true, true));
    var_0 = ~vec4<u32>(~(~(~u_input.e.x)), min(_wgslsmith_sub_u32(~var_0.x, select(28916u, 23730u, false)), _wgslsmith_mult_u32(var_0.x ^ 1u, ~var_0.x)), 47471u, abs(func_2(vec4<f32>(-467f, -440f, -539f, -970f), -u_input.d.x, Struct_2(Struct_1(u_input.d.x), vec4<f32>(490f, -1000f, -1686f, 347f), Struct_1(global0.a), true, 2441f))));
    global0 = Struct_1(~global0.a);
    return u_input.a != _wgslsmith_div_u32(~(~u_input.e.x), var_0.x >> (u_input.a % 32u));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_3) -> Struct_1 {
    global1 = array<vec4<f32>, 16>();
    global0 = Struct_1(~1i);
    let var_0 = Struct_1(arg_2.a.a);
    global0 = var_0;
    global1 = array<vec4<f32>, 16>();
    return Struct_1(~5407i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1((~_wgslsmith_clamp_i32(0i, u_input.b.x, global0.a) >> (_wgslsmith_div_u32(0u, u_input.a) % 32u)) << (abs(41249u | ~u_input.a) % 32u));
    var var_0 = func_3(func_1(), abs(global0.a) >= (2147483647i << (~_wgslsmith_mult_u32(u_input.a, 1u) % 32u)), Struct_3(Struct_1(-_wgslsmith_dot_vec2_i32(vec2<i32>(-22171i, 0i), vec2<i32>(-1i, u_input.b.x))), u_input.e.x));
    var var_1 = u_input.e;
    var_0 = func_3(!select(true, true != select(true, false, true), false), false, Struct_3(func_3(_wgslsmith_dot_vec2_u32(u_input.e, u_input.e) < 1u, true, Struct_3(Struct_1(-91003i), ~0u)), reverseBits(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(119f, 160f, -101f, 1000f) - vec4<f32>(-1871f, -525f, -977f, 323f)), u_input.b.x, Struct_2(Struct_1(2147483647i), global1[_wgslsmith_index_u32(19085u, 16u)], Struct_1(-50090i), false, 293f)))));
    var var_2 = vec2<f32>(1f, 1f);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, _wgslsmith_sub_u32(1u, u_input.a), var_1.x, countOneBits(u_input.a)), countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_1.x, 104758u, var_1.x), vec4<u32>(12910u, u_input.e.x, 66035u, var_1.x))), vec4<u32>(~1u, ~0u, ~1u, firstTrailingBit(61057u))));
}

