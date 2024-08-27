struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(Struct_1(vec2<bool>(false, false), vec2<i32>(7534i, 28687i), 899f, vec2<i32>(-21803i, 16198i)), Struct_1(vec2<bool>(false, false), vec2<i32>(16920i, i32(-2147483648)), 1518f, vec2<i32>(-4653i, 1i))), Struct_2(Struct_1(vec2<bool>(false, true), vec2<i32>(-1362i, -1i), 275f, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(vec2<bool>(true, true), vec2<i32>(-1i, 1i), 408f, vec2<i32>(-1i, -30391i))), Struct_2(Struct_1(vec2<bool>(true, true), vec2<i32>(3478i, -1i), 2443f, vec2<i32>(-1i, 7291i)), Struct_1(vec2<bool>(true, false), vec2<i32>(0i, 2147483647i), -406f, vec2<i32>(31833i, 83158i))), Struct_2(Struct_1(vec2<bool>(false, false), vec2<i32>(i32(-2147483648), -5672i), 761f, vec2<i32>(-3125i, 0i)), Struct_1(vec2<bool>(false, false), vec2<i32>(i32(-2147483648), -5073i), -564f, vec2<i32>(-67979i, 32191i))), Struct_2(Struct_1(vec2<bool>(true, true), vec2<i32>(34462i, -46083i), -839f, vec2<i32>(1i, 34101i)), Struct_1(vec2<bool>(false, false), vec2<i32>(0i, -1i), 172f, vec2<i32>(1i, i32(-2147483648)))), Struct_2(Struct_1(vec2<bool>(true, false), vec2<i32>(22943i, 0i), 1129f, vec2<i32>(0i, -50067i)), Struct_1(vec2<bool>(true, true), vec2<i32>(i32(-2147483648), -960i), -1000f, vec2<i32>(i32(-2147483648), 84479i))), Struct_2(Struct_1(vec2<bool>(false, true), vec2<i32>(-1i, 45618i), -584f, vec2<i32>(0i, 27422i)), Struct_1(vec2<bool>(false, true), vec2<i32>(10465i, 5141i), -713f, vec2<i32>(1i, 1i))), Struct_2(Struct_1(vec2<bool>(true, true), vec2<i32>(-1i, -1i), -584f, vec2<i32>(-24609i, i32(-2147483648))), Struct_1(vec2<bool>(false, false), vec2<i32>(2147483647i, -20998i), 1111f, vec2<i32>(0i, 31749i))), Struct_2(Struct_1(vec2<bool>(false, true), vec2<i32>(0i, -1i), 961f, vec2<i32>(-1i, 0i)), Struct_1(vec2<bool>(false, false), vec2<i32>(0i, 32252i), -958f, vec2<i32>(-6080i, -15186i))), Struct_2(Struct_1(vec2<bool>(false, true), vec2<i32>(0i, 0i), 799f, vec2<i32>(-48564i, 0i)), Struct_1(vec2<bool>(false, false), vec2<i32>(i32(-2147483648), -20601i), -560f, vec2<i32>(-24591i, 9424i))), Struct_2(Struct_1(vec2<bool>(false, true), vec2<i32>(0i, -43564i), -1000f, vec2<i32>(3455i, 13283i)), Struct_1(vec2<bool>(false, false), vec2<i32>(1i, -8293i), -834f, vec2<i32>(-1i, 1512i))), Struct_2(Struct_1(vec2<bool>(true, false), vec2<i32>(1i, -5335i), -978f, vec2<i32>(7595i, 2147483647i)), Struct_1(vec2<bool>(true, false), vec2<i32>(i32(-2147483648), 62826i), -970f, vec2<i32>(-1i, 21255i))), Struct_2(Struct_1(vec2<bool>(false, false), vec2<i32>(2147483647i, -1i), -1586f, vec2<i32>(-9842i, i32(-2147483648))), Struct_1(vec2<bool>(true, false), vec2<i32>(14831i, 2147483647i), 761f, vec2<i32>(0i, 17804i))), Struct_2(Struct_1(vec2<bool>(false, false), vec2<i32>(34639i, 11869i), 304f, vec2<i32>(i32(-2147483648), 1i)), Struct_1(vec2<bool>(false, true), vec2<i32>(2147483647i, -1i), 937f, vec2<i32>(i32(-2147483648), -73369i))));

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, false), vec2<i32>(1i, -2106i), -1734f, vec2<i32>(24734i, -3102i));

var<private> global2: array<vec4<i32>, 21>;

var<private> global3: array<vec4<f32>, 3> = array<vec4<f32>, 3>(vec4<f32>(-665f, 2101f, -990f, -1000f), vec4<f32>(475f, 161f, 1464f, -1806f), vec4<f32>(484f, -1305f, -1000f, -1246f));

var<private> global4: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(Struct_1(vec2<bool>(true, false), vec2<i32>(i32(-2147483648), i32(-2147483648)), 723f, vec2<i32>(2147483647i, 2147483647i)), Struct_1(vec2<bool>(true, false), vec2<i32>(14598i, i32(-2147483648)), 1000f, vec2<i32>(-13653i, -18364i))), Struct_2(Struct_1(vec2<bool>(true, true), vec2<i32>(i32(-2147483648), 0i), 1360f, vec2<i32>(-58124i, 13381i)), Struct_1(vec2<bool>(true, false), vec2<i32>(1i, i32(-2147483648)), -1366f, vec2<i32>(0i, -5101i))), Struct_2(Struct_1(vec2<bool>(false, false), vec2<i32>(0i, i32(-2147483648)), -1575f, vec2<i32>(20374i, i32(-2147483648))), Struct_1(vec2<bool>(false, true), vec2<i32>(2147483647i, i32(-2147483648)), -691f, vec2<i32>(1i, 2230i))), Struct_2(Struct_1(vec2<bool>(false, true), vec2<i32>(i32(-2147483648), 0i), 1532f, vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(vec2<bool>(false, false), vec2<i32>(i32(-2147483648), 12036i), -1206f, vec2<i32>(2147483647i, 44503i))), Struct_2(Struct_1(vec2<bool>(true, true), vec2<i32>(i32(-2147483648), 95937i), -247f, vec2<i32>(-49901i, -14224i)), Struct_1(vec2<bool>(true, false), vec2<i32>(-1i, -29772i), 175f, vec2<i32>(0i, -1i))), Struct_2(Struct_1(vec2<bool>(true, false), vec2<i32>(-43711i, -23660i), 919f, vec2<i32>(i32(-2147483648), 18826i)), Struct_1(vec2<bool>(false, false), vec2<i32>(1i, 2147483647i), 1089f, vec2<i32>(-1i, 13427i))), Struct_2(Struct_1(vec2<bool>(false, false), vec2<i32>(8993i, -347i), -1147f, vec2<i32>(2147483647i, -10871i)), Struct_1(vec2<bool>(true, false), vec2<i32>(-28893i, 14207i), 303f, vec2<i32>(1i, 51914i))), Struct_2(Struct_1(vec2<bool>(true, true), vec2<i32>(5636i, -27537i), -1000f, vec2<i32>(-1i, -8615i)), Struct_1(vec2<bool>(false, true), vec2<i32>(8280i, i32(-2147483648)), 744f, vec2<i32>(9548i, -1i))), Struct_2(Struct_1(vec2<bool>(true, false), vec2<i32>(0i, 2147483647i), -710f, vec2<i32>(-1i, 9112i)), Struct_1(vec2<bool>(false, false), vec2<i32>(0i, -30166i), -559f, vec2<i32>(24289i, -18802i))));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> f32 {
    var var_0 = false;
    return _wgslsmith_f_op_f32(arg_0.b.c + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c * -100f))))));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> Struct_2 {
    global3 = array<vec4<f32>, 3>();
    global1 = Struct_1(vec2<bool>(true, arg_0.a.x), abs(_wgslsmith_add_vec2_i32(global1.b ^ global1.b, _wgslsmith_sub_vec2_i32(arg_0.d, arg_0.b)) >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))), global1.c, vec2<i32>(arg_0.d.x, ~_wgslsmith_sub_i32(0i, 54604i)));
    global0 = array<Struct_2, 14>();
    var var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.a, ~u_input.a, u_input.a), select(select(vec3<u32>(13613u, u_input.a, u_input.a), vec3<u32>(1u, 51197u, 15973u), vec3<bool>(false, false, global1.a.x)), ~vec3<u32>(u_input.a, 129305u, u_input.a), vec3<bool>(global1.a.x, global1.a.x, false))), countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(13752u, u_input.a, u_input.a), vec3<u32>(5517u, 0u, u_input.a))) << ((~vec3<u32>(u_input.a, u_input.a, 4294967295u) | ~vec3<u32>(u_input.a, u_input.a, 20803u)) % vec3<u32>(32u))), ~select(~vec3<u32>(0u, u_input.a, 25038u), max(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(u_input.a, 1u, 10297u)), vec3<bool>(global1.a.x, arg_0.a.x, false)) | vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(3780u, 0u, u_input.a, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(5523u, 0u, u_input.a, 89229u), vec4<u32>(u_input.a, u_input.a, u_input.a, 46140u))), ~1u, 0u));
    var_0 = _wgslsmith_sub_vec3_u32(vec3<u32>(~var_0.x, var_0.x, _wgslsmith_add_u32(_wgslsmith_clamp_u32(var_0.x, var_0.x, 0u), var_0.x)) << (firstTrailingBit(vec3<u32>(0u, var_0.x, 14436u)) % vec3<u32>(32u)), min(vec3<u32>(40181u, max(30981u ^ u_input.a, 1u), _wgslsmith_div_u32(~u_input.a, u_input.a)), _wgslsmith_div_vec3_u32(reverseBits(firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 4294967295u))), vec3<u32>(~57917u, _wgslsmith_dot_vec2_u32(var_0.yz, vec2<u32>(u_input.a, 84324u)), u_input.a))));
    return global4[_wgslsmith_index_u32(~(10919u << (_wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(5622u, u_input.a, u_input.a, var_0.x)), abs(max(vec4<u32>(1u, u_input.a, 0u, u_input.a), vec4<u32>(0u, u_input.a, var_0.x, u_input.a)))) % 32u)), 9u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> Struct_2 {
    global3 = array<vec4<f32>, 3>();
    var var_0 = arg_3;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-466f, _wgslsmith_div_f32(-768f, arg_2.c)), arg_3)) * _wgslsmith_f_op_f32(-arg_0.c)));
    var var_1 = arg_0.a.x;
    var var_2 = ~u_input.a;
    return Struct_2(Struct_1(vec2<bool>(select(true, !global1.a.x, select(arg_2.a.x, true, true)), true), max(reverseBits(vec2<i32>(arg_2.b.x, -9571i)), ~arg_2.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1113f), arg_0.c)), max(global1.d, vec2<i32>(-18307i << (0u % 32u), -23690i & u_input.b))), arg_2);
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_2, 14>();
    let var_0 = Struct_1(!global1.a, global1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c)))) + _wgslsmith_f_op_f32(-global1.c)), _wgslsmith_add_vec2_i32(firstLeadingBit(global1.b), vec2<i32>(u_input.b, 0i)));
    var var_1 = var_0;
    var var_2 = func_4(var_0, func_3(Struct_1(var_1.a, global1.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(var_0.a, var_1.d, var_0.c, vec2<i32>(-4305i, -8266i)), Struct_1(var_1.a, vec2<i32>(u_input.b, var_0.b.x), global1.c, global1.b)), -332f))), var_1.b), u_input.b), var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-397f, var_1.c)), 227f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.c - -1708f))) - var_1.c)));
    var_1 = func_3(Struct_1(vec2<bool>(var_0.a.x, true), vec2<i32>(_wgslsmith_mod_i32(-var_0.d.x, _wgslsmith_add_i32(var_1.b.x, -1i)), max(max(var_2.a.b.x, 25448i), 1i)), _wgslsmith_f_op_f32(-global1.c), vec2<i32>(~abs(43463i), abs(-5055i))), -1i).a;
    return Struct_1(var_2.b.a, var_1.d, _wgslsmith_f_op_f32(235f - func_3(func_4(func_4(Struct_1(vec2<bool>(true, false), vec2<i32>(-44315i, var_2.b.b.x), 1862f, var_0.b), global4[_wgslsmith_index_u32(u_input.a, 9u)], Struct_1(vec2<bool>(true, global1.a.x), vec2<i32>(u_input.b, var_2.b.b.x), var_1.c, var_2.b.b), 1000f).b, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 4294967295u)), 9u)], Struct_1(vec2<bool>(true, var_2.a.a.x), vec2<i32>(var_0.d.x, global1.b.x), -246f, vec2<i32>(global1.d.x, 41573i)), global1.c).a, -11994i).b.c), vec2<i32>(0i, var_1.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~8973u >> (~_wgslsmith_clamp_u32(~u_input.a, ~0u, u_input.a ^ 1u) % 32u), _wgslsmith_mod_u32(25427u, u_input.a), u_input.a ^ u_input.a);
    var_0 = vec3<u32>(21225u, ~39844u, var_0.x);
    let var_1 = func_1();
    var var_2 = func_4(var_1, func_4(Struct_1(vec2<bool>(var_1.a.x, var_1.a.x), select(min(global1.b, vec2<i32>(global1.b.x, global1.d.x)), -var_1.d, global1.a), func_1().c, reverseBits(var_1.b) ^ ~vec2<i32>(2147483647i, -36641i)), func_3(Struct_1(func_1().a, vec2<i32>(-62891i, global1.b.x), -249f, global1.d), 2147483647i | var_1.d.x), Struct_1(!global1.a, vec2<i32>(36212i, 62389i), _wgslsmith_f_op_f32(step(-1019f, _wgslsmith_f_op_f32(239f - var_1.c))), _wgslsmith_clamp_vec2_i32(func_4(var_1, global0[_wgslsmith_index_u32(u_input.a, 14u)], var_1, -1509f).b.d, -global1.b, var_1.b)), -1416f), Struct_1(vec2<bool>(~u_input.a != 23579u, any(vec3<bool>(global1.a.x, var_1.a.x, false))), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, var_1.b.x) << (reverseBits(var_0.yx) % vec2<u32>(32u)), var_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1886f))), -var_1.d), global1.c).a;
    var var_3 = vec3<u32>(_wgslsmith_add_u32(0u, var_0.x), _wgslsmith_mult_u32(u_input.a, u_input.a), var_0.x);
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1319f, -2745f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.c, -1279f), vec2<f32>(264f, var_1.c), var_1.a.x)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c, 593f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-858f, -1000f), vec2<f32>(global1.c, var_2.c))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_0.x, ~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(67802u, 5618u, u_input.a, u_input.a)), vec4<u32>(var_3.x, 1u, 112u, 12099u) >> (vec4<u32>(26352u, var_3.x, var_0.x, 0u) % vec4<u32>(32u))), var_0.x), ~(~vec3<u32>(u_input.a & 91914u, 54708u | var_0.x, firstLeadingBit(var_0.x))), select(select(vec4<i32>(2493i, u_input.b, var_2.d.x, 8838i), -global2[_wgslsmith_index_u32(var_0.x, 21u)], vec4<bool>(true, true, true, true)) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 1i, 2147483647i, var_2.b.x), vec4<i32>(-1i, var_1.b.x, 19543i, global1.d.x)), select(vec4<i32>(~2147483647i, var_1.b.x, var_2.d.x >> (0u % 32u), -var_1.d.x), -global2[_wgslsmith_index_u32(var_0.x, 21u)] | ~vec4<i32>(13260i, 2147483647i, -14413i, u_input.b), true), all(!(!vec4<bool>(false, true, var_2.a.x, global1.a.x)))));
}

