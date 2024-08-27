struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: bool,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 22> = array<vec2<u32>, 22>(vec2<u32>(26412u, 0u), vec2<u32>(10068u, 31568u), vec2<u32>(0u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(10854u, 7166u), vec2<u32>(1u, 0u), vec2<u32>(1u, 18393u), vec2<u32>(15788u, 81714u), vec2<u32>(56642u, 28502u), vec2<u32>(34448u, 23260u), vec2<u32>(11153u, 4294967295u), vec2<u32>(30075u, 16670u), vec2<u32>(0u, 30478u), vec2<u32>(43438u, 4294967295u), vec2<u32>(21647u, 0u), vec2<u32>(1u, 33948u), vec2<u32>(12384u, 8603u), vec2<u32>(0u, 50059u), vec2<u32>(61975u, 7209u), vec2<u32>(4294967295u, 29840u), vec2<u32>(20885u, 15933u), vec2<u32>(0u, 0u));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec2<i32> {
    let var_0 = ~u_input.a.x;
    return abs(min(vec2<i32>(-1i, 4531i), vec2<i32>(9426i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(1i, 5101i), ~19496i))));
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> f32 {
    global0 = array<vec2<u32>, 22>();
    global0 = array<vec2<u32>, 22>();
    let var_0 = Struct_1(_wgslsmith_mult_vec2_i32(func_3(), _wgslsmith_add_vec2_i32(select(vec2<i32>(1i, 1i), -vec2<i32>(-2147483647i, -79515i), vec2<bool>(true, false)), vec2<i32>(firstLeadingBit(-2147483647i), ~2147483647i))), vec2<bool>(true, true), !select(true, true, true), vec3<i32>(-2147483647i, -37913i, abs(0i)), abs(min(~global0[_wgslsmith_index_u32(u_input.a.x, 22u)], vec2<u32>(0u, 26495u))) << (~firstLeadingBit(countOneBits(u_input.a.yw)) % vec2<u32>(32u)));
    var var_1 = Struct_2(1i, Struct_1(~vec2<i32>(var_0.d.x, _wgslsmith_div_i32(var_0.d.x, 1i)), vec2<bool>(!(var_0.c && false), any(select(vec4<bool>(var_0.c, true, var_0.b.x, var_0.c), vec4<bool>(false, false, false, true), true))), !(!(u_input.a.x <= 4294967295u)), ~abs(vec3<i32>(var_0.a.x, var_0.d.x, var_0.a.x)), ~(~(u_input.a.xz >> (u_input.a.wy % vec2<u32>(32u))))), ~(-1i) | ~_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(6459i, -12477i), vec2<i32>(var_0.a.x, 2147483647i)), var_0.d.xz), var_0.b.x);
    var var_2 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-181f + arg_1) * -898f)) * arg_0.x));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -986f), _wgslsmith_f_op_f32(func_2(vec2<f32>(419f, 2729f), -166f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-103f - -428f), -581f, false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-323f, 1000f))))), false));
    let var_1 = arg_1;
    var var_2 = Struct_2(~(-9517i), Struct_1(abs(select(vec2<i32>(var_1.a, var_1.a), var_1.b.a, select(vec2<bool>(true, arg_0.d), vec2<bool>(arg_0.d, arg_0.b.b.x), var_1.d))), !vec2<bool>(var_1.b.c, arg_0.d), true, vec3<i32>(min(firstTrailingBit(20777i), _wgslsmith_add_i32(arg_0.b.d.x, -11478i)), -firstLeadingBit(arg_1.a), _wgslsmith_mult_i32(arg_0.c, 1i)), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.a.x), ~arg_1.b.e), arg_1.b.e)), var_1.b.d.x, !arg_1.b.b.x);
    let var_3 = ~var_1.b.d.x;
    var var_4 = arg_0.b.d.x;
    return arg_0.b.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min((1i ^ func_1(Struct_2(12714i, Struct_1(vec2<i32>(-21456i, -1i), vec2<bool>(true, false), true, vec3<i32>(-17903i, 1i, 13861i), vec2<u32>(7725u, u_input.a.x)), -2460i, true), Struct_2(-33195i, Struct_1(vec2<i32>(-2147483647i, 925i), vec2<bool>(true, true), true, vec3<i32>(-5398i, -34823i, -74305i), vec2<u32>(1u, 0u)), 0i, false))) << (u_input.a.x % 32u), 1i);
    var var_1 = !(!select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, true)), true), vec2<bool>(true, true)));
    var_0 = 0i;
    var var_2 = firstTrailingBit(~_wgslsmith_add_u32(4294967295u, u_input.a.x));
    var var_3 = Struct_1(min(-_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(32869i, -20707i))), _wgslsmith_div_vec2_i32(abs(vec2<i32>(-18731i, -27158i)), vec2<i32>(1i, 1i))), !(!select(select(vec2<bool>(false, false), vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x)), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, var_1.x), var_1.x), !var_1.x)), true | (var_1.x | true), reverseBits(select(select(vec3<i32>(-23378i, 2147483647i, 0i), ~vec3<i32>(20395i, 2147483647i, 1i), vec3<bool>(true, var_1.x, false)), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 6111i, -56574i), vec3<i32>(-2147483647i, 29642i, 2147483647i)), vec3<i32>(-1i, -1i, -3301i)), select(select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(false, false, false), var_1.x), vec3<bool>(true, true, var_1.x), all(vec4<bool>(false, false, true, true))))), vec2<u32>(~1u, 1u));
    var var_4 = Struct_1(firstTrailingBit(var_3.a), select(vec2<bool>(true, true), var_3.b, var_1.x), true, vec3<i32>(_wgslsmith_sub_i32(~var_3.d.x | _wgslsmith_add_i32(var_3.a.x, -23458i), _wgslsmith_clamp_i32(-9653i, 1i, var_3.d.x >> (u_input.a.x % 32u))), -5608i, var_3.d.x), ~var_3.e);
    global0 = array<vec2<u32>, 22>();
    var var_5 = ~var_4.d;
    let x = u_input.a;
    s_output = StorageBuffer(-var_5.x, -925f, -840f, firstLeadingBit(vec4<u32>(var_4.e.x, 93475u, max(~var_4.e.x, ~0u), var_4.e.x)));
}

