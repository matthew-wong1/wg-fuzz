struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec3<i32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec2<i32>(-56179i, -1i), vec3<bool>(true, true, false), vec3<i32>(-24908i, i32(-2147483648), 1i), 1000f, 154f), Struct_1(vec2<i32>(-26441i, 33703i), vec3<bool>(false, true, true), vec3<i32>(1i, 1i, 1i), -772f, 254f), Struct_1(vec2<i32>(1i, 14413i), vec3<bool>(false, false, true), vec3<i32>(1i, 2147483647i, -32193i), -492f, 1000f), Struct_1(vec2<i32>(-1i, 23779i), vec3<bool>(false, true, false), vec3<i32>(-3413i, 29895i, 2147483647i), 508f, -688f), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec3<bool>(true, true, true), vec3<i32>(36567i, 1i, i32(-2147483648)), 980f, -704f), Struct_1(vec2<i32>(0i, i32(-2147483648)), vec3<bool>(false, true, false), vec3<i32>(-33186i, i32(-2147483648), 7392i), -183f, -1000f), Struct_1(vec2<i32>(-13678i, i32(-2147483648)), vec3<bool>(false, true, true), vec3<i32>(i32(-2147483648), -104895i, -3496i), -456f, 162f), Struct_1(vec2<i32>(256i, 1584i), vec3<bool>(false, false, true), vec3<i32>(i32(-2147483648), 66120i, 2147483647i), -123f, 1112f), Struct_1(vec2<i32>(28490i, 17953i), vec3<bool>(false, true, false), vec3<i32>(0i, -3175i, 948i), 152f, -1000f), Struct_1(vec2<i32>(2147483647i, 18411i), vec3<bool>(false, false, false), vec3<i32>(-37707i, 2147483647i, 17237i), 523f, -399f), Struct_1(vec2<i32>(16460i, -1354i), vec3<bool>(false, true, false), vec3<i32>(0i, 1i, 2147483647i), 235f, -978f), Struct_1(vec2<i32>(2147483647i, -1229i), vec3<bool>(true, false, false), vec3<i32>(0i, 26527i, 12661i), -994f, -623f), Struct_1(vec2<i32>(74906i, -1i), vec3<bool>(false, true, false), vec3<i32>(-29593i, 59428i, 1i), -1000f, -424f), Struct_1(vec2<i32>(i32(-2147483648), -37819i), vec3<bool>(false, true, false), vec3<i32>(-1i, -7601i, -522i), 2301f, 501f), Struct_1(vec2<i32>(i32(-2147483648), 0i), vec3<bool>(true, false, false), vec3<i32>(i32(-2147483648), i32(-2147483648), 27959i), -2216f, 1234f), Struct_1(vec2<i32>(-34941i, 2147483647i), vec3<bool>(true, true, true), vec3<i32>(0i, 15680i, 30473i), -557f, 454f), Struct_1(vec2<i32>(i32(-2147483648), 14953i), vec3<bool>(false, false, true), vec3<i32>(-32895i, 2147483647i, 1i), -1000f, -343f), Struct_1(vec2<i32>(1i, -32532i), vec3<bool>(false, true, true), vec3<i32>(16057i, -33274i, 1i), 2461f, 1000f), Struct_1(vec2<i32>(-39823i, 1i), vec3<bool>(true, false, false), vec3<i32>(-18856i, 0i, -14060i), -737f, -288f), Struct_1(vec2<i32>(-14071i, -1i), vec3<bool>(false, true, false), vec3<i32>(-10353i, 7711i, 2147483647i), 755f, 274f), Struct_1(vec2<i32>(10656i, 2147483647i), vec3<bool>(true, false, false), vec3<i32>(2147483647i, -3102i, -1i), 1373f, 587f), Struct_1(vec2<i32>(-1i, 20044i), vec3<bool>(true, true, true), vec3<i32>(-13349i, -3840i, 29552i), -1332f, -1519f), Struct_1(vec2<i32>(44495i, 12482i), vec3<bool>(false, true, false), vec3<i32>(1i, 1i, 57023i), -1289f, -966f), Struct_1(vec2<i32>(2147483647i, 0i), vec3<bool>(false, true, false), vec3<i32>(i32(-2147483648), 2147483647i, -9335i), 438f, -146f), Struct_1(vec2<i32>(-3935i, 41716i), vec3<bool>(false, false, true), vec3<i32>(i32(-2147483648), 26279i, 61139i), 793f, 2116f));

var<private> global1: Struct_2 = Struct_2(false, Struct_1(vec2<i32>(i32(-2147483648), 1i), vec3<bool>(true, false, true), vec3<i32>(2147483647i, -1i, i32(-2147483648)), -137f, -338f), vec4<u32>(75902u, 22510u, 4294967295u, 3338u), Struct_1(vec2<i32>(-5677i, 24642i), vec3<bool>(false, true, true), vec3<i32>(-75781i, i32(-2147483648), 1i), -328f, -244f), 4294967295u);

var<private> global2: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -569f) + global1.d.e))), _wgslsmith_div_f32(-390f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global2.e))))), _wgslsmith_f_op_f32(144f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.d)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.d, global2.d, global1.b.e) * vec3<f32>(global2.d, 1428f, global1.b.d))) + vec3<f32>(_wgslsmith_f_op_f32(max(global2.d, global1.b.e)), _wgslsmith_div_f32(-730f, global1.d.e), global2.e)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-330f, global2.d, global1.b.d))) + vec3<f32>(global1.d.d, global1.b.d, 104f)), vec3<f32>(_wgslsmith_f_op_f32(sign(-414f)), _wgslsmith_f_op_f32(1077f + global1.b.d), _wgslsmith_f_op_f32(global1.d.e + 439f))))));
    let var_1 = Struct_2(!(all(global1.d.b.yy) || select(global1.c.x >= global1.c.x, true, true)), Struct_1(global1.b.c.zx, global1.b.b, vec3<i32>(2147483647i << (global1.e % 32u), ~2147483647i, -1i) << (max(global1.c.zxy, vec3<u32>(global1.e, 0u, global1.c.x)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.d.e + 558f), _wgslsmith_f_op_f32(1371f - global1.b.e)))), _wgslsmith_f_op_f32(var_0.x + global1.b.e)), global1.c, global0[_wgslsmith_index_u32(~4294967295u, 25u)], _wgslsmith_dot_vec4_u32(vec4<u32>(global1.e, _wgslsmith_dot_vec4_u32(vec4<u32>(9410u, global1.e, 13176u, global1.e), vec4<u32>(global1.c.x, global1.c.x, global1.c.x, 23343u)), abs(1u), max(4294967295u, 1u)), global1.c) << (~global1.e % 32u));
    var var_2 = global1.c.zw;
    global2 = global1.d;
    var var_3 = Struct_2(!all(vec2<bool>(global2.c.x == 2147483647i, all(vec4<bool>(false, false, false, global1.d.b.x)))), var_1.d, ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.x, 1u, 1u, _wgslsmith_mult_u32(var_1.c.x, 76279u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, var_1.c.x, 81758u, 43187u), global1.c)), global1.b, var_1.e);
    return select(global2.b, select(!vec3<bool>(all(global2.b), true & global1.d.b.x, all(vec2<bool>(true, global1.b.b.x))), select(vec3<bool>(var_3.a, global1.d.b.x, !global2.b.x), select(vec3<bool>(var_1.d.b.x, false, var_3.a), var_3.b.b, vec3<bool>(false, var_3.a, false)), !var_3.d.b.x), 0i >= min(firstLeadingBit(var_1.b.c.x), u_input.a)), global1.d.b);
}

fn func_2() -> vec4<u32> {
    var var_0 = Struct_2(~(~global1.e & 4294967295u) < min(1u, _wgslsmith_div_u32(max(1u, 3831u), global1.c.x)), global1.b, abs(vec4<u32>(global1.e, ~global1.c.x & _wgslsmith_clamp_u32(global1.c.x, 1u, global1.e), countOneBits(global1.c.x) & global1.c.x, global1.c.x)), Struct_1(vec2<i32>(~(~0i), 3597i), select(func_3(), !global1.d.b, vec3<bool>(true, true, true)), global2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.d.d * global1.b.d))) * global2.e), global2.d), 17448u);
    let var_1 = !vec4<bool>(global1.d.b.x, var_0.d.d > _wgslsmith_f_op_f32(ceil(451f)), global1.b.b.x, !(true & any(vec2<bool>(false, true))));
    global0 = array<Struct_1, 25>();
    return select(~vec4<u32>(4294967295u, abs(0u), _wgslsmith_clamp_u32(global1.c.x, var_0.c.x, global1.c.x) & 0u, ~1u), vec4<u32>(_wgslsmith_sub_u32(var_0.e, global1.e), global1.e, ~var_0.c.x >> (0u % 32u), 17667u), vec4<bool>(all(vec4<bool>(global2.b.x, var_1.x, all(global2.b.yx), func_3().x)), false, false, var_1.x));
}

fn func_1(arg_0: i32) -> bool {
    var var_0 = func_2();
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(76025u, var_0.x, 1514u, var_0.x), ~global1.c)), global1.c), 25u)];
    let var_2 = _wgslsmith_dot_vec2_i32(abs(global2.a), ~var_1.c.yx);
    var_0 = ~_wgslsmith_clamp_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(10773u, global1.e, var_0.x, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.c.x, var_0.x, 18488u, var_0.x), global1.c))), ~global1.c, global1.c);
    var_0 = ~select(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~global1.c, global1.c), firstLeadingBit(vec4<u32>(global1.c.x, 49072u, 2393u, global1.e))), max(global1.c, _wgslsmith_add_vec4_u32(func_2(), _wgslsmith_div_vec4_u32(global1.c, vec4<u32>(66354u, var_0.x, var_0.x, 69913u)))), true);
    return all(global2.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 25>();
    let var_0 = global1.e;
    var var_1 = Struct_1(reverseBits(_wgslsmith_sub_vec2_i32(abs(global2.a << (global1.c.xz % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(global1.d.a, -vec2<i32>(-1i, global2.a.x)))), vec3<bool>(global1.b.b.x | (148f < _wgslsmith_div_f32(global2.e, -1247f)), func_1(37601i), all(func_3().yz) | (global2.b.x && (false || global1.d.b.x))), max(countOneBits(~_wgslsmith_add_vec3_i32(vec3<i32>(1i, global2.a.x, 55229i), global1.b.c)), global2.c >> (vec3<u32>(1u, global1.e, ~global1.e) % vec3<u32>(32u))), global1.d.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b.d), global2.e));
    global1 = Struct_2(all(vec2<bool>(firstLeadingBit(15414i) > u_input.a, true)), global1.b, ~vec4<u32>(_wgslsmith_mod_u32(abs(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.e, 0u, 0u), global1.c.xzx)), countOneBits(59705u), _wgslsmith_sub_u32(4294967295u, abs(global1.c.x)), 32154u), Struct_1(global1.d.c.xx, global2.b, vec3<i32>(global2.a.x, 1i, -2147483647i), 1000f, -956f), 62140u);
    var var_2 = select(vec3<u32>(44448u, 1u, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(32274u, 1u, reverseBits(global1.e)), ~((global1.c.zyy << (vec3<u32>(4294967295u, 0u, 48537u) % vec3<u32>(32u))) ^ abs(vec3<u32>(global1.c.x, global1.c.x, global1.c.x)))), true);
    let var_3 = ~(~global1.c.zx);
    let x = u_input.a;
    s_output = StorageBuffer(global1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.e, global2.d) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-147f, -1511f)))))));
}

