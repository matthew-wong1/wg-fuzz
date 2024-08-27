struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false));

var<private> global1: u32 = 0u;

var<private> global2: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(-1475f, -1012f, 422f, 1617f), vec4<f32>(-727f, -665f, -1000f, 216f), vec4<f32>(595f, -365f, -1000f, -671f), vec4<f32>(406f, -1220f, -1335f, -465f), vec4<f32>(-689f, -688f, 219f, 298f), vec4<f32>(960f, 288f, -933f, -700f), vec4<f32>(684f, -330f, 1104f, -396f), vec4<f32>(447f, -1212f, 692f, 1282f), vec4<f32>(729f, 628f, 1261f, -640f), vec4<f32>(-1660f, 1384f, 138f, 657f), vec4<f32>(1823f, 703f, -1200f, 239f), vec4<f32>(2029f, -876f, 1270f, -344f), vec4<f32>(398f, 1261f, 537f, -1391f), vec4<f32>(1506f, 1116f, 1399f, -661f), vec4<f32>(745f, -1433f, 846f, 806f), vec4<f32>(-252f, 1000f, -1975f, -1000f), vec4<f32>(-366f, 672f, 650f, 739f), vec4<f32>(824f, -1300f, -1018f, -917f), vec4<f32>(347f, 184f, -964f, 1046f), vec4<f32>(1121f, 449f, -2640f, 2208f), vec4<f32>(-1170f, -407f, 1373f, -2098f), vec4<f32>(1000f, -1000f, 1336f, -1121f), vec4<f32>(-993f, 217f, 1000f, -646f), vec4<f32>(-110f, 485f, 782f, -1889f), vec4<f32>(-1222f, -1194f, 1000f, 732f), vec4<f32>(-1000f, -1526f, 396f, 344f), vec4<f32>(1049f, 1910f, 281f, 839f), vec4<f32>(2225f, 2043f, 618f, 394f), vec4<f32>(-2049f, 564f, -489f, -609f), vec4<f32>(-1121f, 1072f, -449f, 1061f));

var<private> global3: array<Struct_4, 22>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    return u_input.a;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: vec3<bool>) -> u32 {
    let var_0 = Struct_1(vec3<u32>(10480u, func_3(), _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(~arg_0.x, arg_0.x, firstTrailingBit(63005u), arg_0.x))), select(vec3<i32>(1i, firstLeadingBit(-1i), firstLeadingBit(1i)), select(vec3<i32>(~0i, ~37649i, 33042i), ~_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 17164i, 1i), vec3<i32>(-5099i, 1i, 7291i)), any(vec2<bool>(true, arg_2.x))), arg_1.x));
    let var_1 = vec4<f32>(-716f, 463f, -1000f, 845f);
    var var_2 = -37666i;
    let var_3 = Struct_2(countOneBits(vec3<i32>(~(~(-20552i)), reverseBits(var_0.b.x) & 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_0.b.x) >> (arg_0 % vec2<u32>(32u)), select(var_0.b.yx, var_0.b.yy, arg_2.xy)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) * _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-309f * 895f) - -1834f))));
    global1 = _wgslsmith_dot_vec3_u32(~(~u_input.b.yxy ^ _wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, u_input.b.x), vec3<u32>(16716u, 4294967295u, 58413u))), ~vec3<u32>(u_input.b.x, arg_0.x, _wgslsmith_dot_vec3_u32(var_0.a, u_input.b.wxy)));
    return 21451u;
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: f32) -> vec3<u32> {
    global3 = array<Struct_4, 22>();
    let var_0 = func_2(~vec2<u32>(4294967295u, (u_input.a | u_input.a) | u_input.b.x), !select(global0[_wgslsmith_index_u32(1u, 10u)], select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(false, false, arg_0), vec3<bool>(true, false, true)), true), global0[_wgslsmith_index_u32(~min(1614u, u_input.b.x), 10u)]);
    let var_1 = u_input.b;
    return vec3<u32>(u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.b.yzy, abs(vec3<u32>(~77577u, ~48115u, u_input.b.x))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(firstLeadingBit(func_1(true, vec3<f32>(1f, 1f, 1f), -945f)), -_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(2032i, 1i, -2722i) << (u_input.b.zyy % vec3<u32>(32u))), ~(~vec3<i32>(26160i, 8700i, 1i))));
    var var_1 = _wgslsmith_add_u32(max(firstLeadingBit(~(~var_0.a.x)), ~func_3()), 0u);
    global2 = array<vec4<f32>, 30>();
    var var_2 = Struct_2(vec3<i32>(i32(-1i) * -1625i, 2147483647i, 2147483647i), 912f);
    global1 = ~(u_input.b.x ^ _wgslsmith_sub_u32(reverseBits(~4294967295u), var_0.a.x));
    global2 = array<vec4<f32>, 30>();
    let var_3 = _wgslsmith_mod_vec3_u32(~(_wgslsmith_sub_vec3_u32(abs(u_input.b.xzw), var_0.a & vec3<u32>(u_input.b.x, var_0.a.x, u_input.b.x)) >> (vec3<u32>(u_input.b.x, 1u, ~var_0.a.x) % vec3<u32>(32u))), ~vec3<u32>(u_input.a, ~_wgslsmith_div_u32(30831u, var_0.a.x), ~(~37591u)));
    let var_4 = Struct_3(~(~(-(~vec4<i32>(-41546i, var_2.a.x, 0i, 40186i)))));
    global0 = array<vec3<bool>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(~min(1u, abs(~var_3.x)), var_4.a.x, -var_4.a);
}

