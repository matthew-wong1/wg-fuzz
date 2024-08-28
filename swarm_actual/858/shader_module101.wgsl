struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: f32,
    d: vec3<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(54023u, 470u, 0u, 1u), vec4<u32>(917u, 17877u, 46497u, 0u), vec4<u32>(1u, 1u, 67875u, 90592u), vec4<u32>(98166u, 50459u, 45758u, 22538u), vec4<u32>(44159u, 1u, 1235u, 0u), vec4<u32>(16431u, 0u, 23566u, 9199u), vec4<u32>(5299u, 25276u, 126590u, 13269u), vec4<u32>(33005u, 24138u, 1u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 44756u, 52668u), vec4<u32>(0u, 4294967295u, 10678u, 4294967295u), vec4<u32>(4294967295u, 23553u, 0u, 4294967295u), vec4<u32>(0u, 0u, 0u, 4294967295u), vec4<u32>(4294967295u, 24844u, 27460u, 10870u), vec4<u32>(44227u, 4294967295u, 32964u, 12178u), vec4<u32>(32434u, 17717u, 27579u, 3368u), vec4<u32>(4294967295u, 13550u, 42335u, 40678u), vec4<u32>(31904u, 1u, 4294967295u, 10345u), vec4<u32>(15909u, 4294967295u, 0u, 4294967295u), vec4<u32>(1u, 27211u, 6289u, 12227u), vec4<u32>(0u, 4294967295u, 48358u, 9388u), vec4<u32>(1u, 4294967295u, 71773u, 26747u), vec4<u32>(1u, 44870u, 63959u, 30036u), vec4<u32>(4294967295u, 0u, 6198u, 16039u), vec4<u32>(35125u, 0u, 4294967295u, 6424u));

var<private> global1: f32;

var<private> global2: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(-1151f, -735f, -628f), vec3<f32>(1791f, 1293f, 531f), vec3<f32>(-1245f, -659f, -666f), vec3<f32>(-1616f, 183f, -1969f), vec3<f32>(-1000f, 345f, -1000f), vec3<f32>(-252f, -383f, 894f), vec3<f32>(-484f, -1077f, 1192f), vec3<f32>(-1764f, -863f, -2379f), vec3<f32>(-2039f, -192f, -1516f), vec3<f32>(-192f, -549f, -670f), vec3<f32>(1257f, 599f, 985f), vec3<f32>(-539f, -861f, -815f), vec3<f32>(-3285f, -1301f, 827f), vec3<f32>(123f, 556f, 217f), vec3<f32>(-1213f, -138f, -611f), vec3<f32>(-1997f, 100f, 911f), vec3<f32>(-1279f, 269f, 1004f), vec3<f32>(-479f, -911f, -324f), vec3<f32>(-1387f, -1200f, -338f), vec3<f32>(-494f, -1099f, -1570f), vec3<f32>(-301f, -213f, -221f), vec3<f32>(1209f, 305f, -156f), vec3<f32>(-1141f, -400f, 319f), vec3<f32>(261f, -296f, 1000f), vec3<f32>(-214f, 1939f, -1000f), vec3<f32>(-2566f, -1011f, -1190f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = !select(true, true, !any(vec3<bool>(true, true, true)));
    global2 = array<vec3<f32>, 26>();
    let var_1 = ~_wgslsmith_sub_vec4_i32(countOneBits(~countOneBits(u_input.b)), _wgslsmith_add_vec4_i32(select(u_input.b, vec4<i32>(13441i, u_input.a.x, u_input.b.x, -2147483647i), true), vec4<i32>(-9508i, u_input.b.x, _wgslsmith_div_i32(-1i, 7635i), u_input.b.x)));
    var var_2 = Struct_1(firstTrailingBit(4294967295u));
    global0 = array<vec4<u32>, 24>();
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mult_u32(~(select(61465u, 1u, true) ^ func_1(Struct_1(0u))), _wgslsmith_add_u32(1u, ~(~54395u))));
    global0 = array<vec4<u32>, 24>();
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(909f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-191f - 599f), _wgslsmith_f_op_f32(select(377f, -1000f, true))))))));
    let var_1 = _wgslsmith_mod_i32(u_input.a.x, u_input.a.x);
    global0 = array<vec4<u32>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -947f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-607f - -307f), _wgslsmith_f_op_f32(abs(627f)), var_0.a < 25926u)) * _wgslsmith_div_f32(242f, 705f)), -230f), u_input.b, -812f, u_input.b.zxy, vec4<i32>(u_input.b.x | var_1, 12336i, var_1, 0i));
}

