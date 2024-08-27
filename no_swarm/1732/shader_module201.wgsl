struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: i32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: vec3<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: Struct_1,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_5;

var<private> global2: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(Struct_1(vec2<u32>(55548u, 4294967295u), true, -6820i, vec4<i32>(1i, 2147483647i, 25762i, -6242i), vec2<i32>(2296i, 0i))), Struct_2(Struct_1(vec2<u32>(0u, 60889u), true, i32(-2147483648), vec4<i32>(-13346i, 23408i, 0i, 21073i), vec2<i32>(-1i, -19057i))), Struct_2(Struct_1(vec2<u32>(37365u, 1u), true, -1i, vec4<i32>(17110i, i32(-2147483648), -42145i, -12273i), vec2<i32>(-34215i, 8047i))), Struct_2(Struct_1(vec2<u32>(54078u, 45926u), true, 2147483647i, vec4<i32>(0i, -11211i, -17981i, 1i), vec2<i32>(-9932i, 0i))), Struct_2(Struct_1(vec2<u32>(1u, 0u), true, 27470i, vec4<i32>(1i, 2147483647i, -1i, 53880i), vec2<i32>(1i, 2147483647i))), Struct_2(Struct_1(vec2<u32>(4294967295u, 9474u), true, 2147483647i, vec4<i32>(1i, 0i, i32(-2147483648), 1i), vec2<i32>(-21913i, -1i))), Struct_2(Struct_1(vec2<u32>(71250u, 4294967295u), false, 2527i, vec4<i32>(54873i, i32(-2147483648), -64734i, 1i), vec2<i32>(-1i, 65364i))), Struct_2(Struct_1(vec2<u32>(28249u, 7915u), false, -6511i, vec4<i32>(2939i, 16816i, -38484i, 20518i), vec2<i32>(31264i, 12467i))), Struct_2(Struct_1(vec2<u32>(4294967295u, 40400u), false, 0i, vec4<i32>(-3601i, -1i, -1i, i32(-2147483648)), vec2<i32>(-13059i, -33211i))), Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), true, -21670i, vec4<i32>(0i, 2147483647i, -17437i, 22237i), vec2<i32>(40478i, 23095i))), Struct_2(Struct_1(vec2<u32>(4294967295u, 54536u), true, -10153i, vec4<i32>(43435i, 31702i, -39433i, i32(-2147483648)), vec2<i32>(0i, 0i))), Struct_2(Struct_1(vec2<u32>(38639u, 1u), true, -35016i, vec4<i32>(i32(-2147483648), 0i, -21833i, 32146i), vec2<i32>(2147483647i, -28523i))));

var<private> global3: array<bool, 31> = array<bool, 31>(false, true, false, true, false, false, true, true, true, true, true, false, true, true, true, true, false, false, false, false, false, false, true, true, false, false, true, false, true, false, true);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = vec4<i32>(-15469i, _wgslsmith_add_i32(19195i, _wgslsmith_add_i32(reverseBits(11275i), arg_2)), -6190i, -select(~_wgslsmith_div_i32(arg_2, 0i), (global1.a.b << (12398u % 32u)) >> (arg_3.a.x % 32u), false));
    var_0 = _wgslsmith_div_vec4_i32(arg_3.d, global1.e.a.a.d | arg_0.a.a.d);
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1086f * 133f)))));
    var var_2 = global1.e.a.a.b;
    global0 = 13005u;
    return !vec4<bool>(false, global1.c.b, global1.e.a.a.b, true);
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: f32, arg_3: vec4<bool>) -> f32 {
    var var_0 = global1.c.c;
    var var_1 = Struct_3(Struct_2(global1.c), -3521i);
    let var_2 = var_1.a.a;
    var var_3 = Struct_4(Struct_1(_wgslsmith_div_vec2_u32(~(~global1.e.a.a.a), ~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 51518u), vec2<u32>(var_1.a.a.a.x, var_1.a.a.a.x))), !(!any(vec2<bool>(var_1.a.a.b, var_1.a.a.b))), u_input.c.x, countOneBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.d.x, global1.e.b, global1.e.b, -8097i), var_1.a.a.d), -var_2.d, vec4<i32>(-8397i, var_2.c, -23517i, arg_1) & vec4<i32>(-32894i, -9242i, var_2.c, -1i))), max(-global1.e.a.a.d.yw << (abs(var_1.a.a.a) % vec2<u32>(32u)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(8413i, 2147483647i), vec2<i32>(-18549i, global1.e.b)))), var_1.a, var_1.a, -_wgslsmith_div_vec3_i32(u_input.c, global1.a.a.a.d.www));
    var var_4 = -1i;
    return _wgslsmith_f_op_f32(trunc(634f));
}

fn func_1(arg_0: i32, arg_1: Struct_5, arg_2: Struct_3) -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1119f, 1845f), vec2<f32>(1566f, -593f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 694f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-107f, -205f) + vec2<f32>(-516f, 554f)))), _wgslsmith_mult_i32(~global1.c.c, -u_input.c.x) ^ ~arg_2.a.a.e.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(383f, -395f)), select(select(!vec4<bool>(global1.a.a.a.b, global3[_wgslsmith_index_u32(global1.c.a.x, 31u)], global1.c.b, true), func_2(arg_1.e, -65538i, -1i, global1.a.a.a), vec4<bool>(global3[_wgslsmith_index_u32(global1.e.a.a.a.x, 31u)], global1.a.a.a.b, global1.a.a.a.b, global3[_wgslsmith_index_u32(arg_2.a.a.a.x, 31u)])), !select(vec4<bool>(false, false, arg_1.a.a.a.b, arg_2.a.a.b), vec4<bool>(arg_2.a.a.b, true, true, global1.c.b), arg_2.a.a.b), select(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.e, 31u)], true, false, global1.a.a.a.b), vec4<bool>(arg_1.a.a.a.b, global3[_wgslsmith_index_u32(1u, 31u)], true, arg_2.a.a.b), false)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<f32>(-371f, 1000f), u_input.a, -1263f, vec4<bool>(true, true, global3[_wgslsmith_index_u32(36835u, 31u)], global3[_wgslsmith_index_u32(global1.a.a.a.a.x, 31u)]))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-126f * 130f) - 1825f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-581f)) + _wgslsmith_f_op_f32(-386f - -1000f))))));
    var var_1 = ~vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-arg_2.a.a.e.x, 1i), arg_0, -_wgslsmith_sub_i32(38295i, -5741i)), -1i);
    var var_2 = Struct_4(arg_1.e.a.a, global1.e.a, Struct_2(Struct_1(~(~arg_2.a.a.a), all(vec2<bool>(false, arg_2.a.a.b)), arg_1.c.e.x, arg_1.c.d, _wgslsmith_sub_vec2_i32(reverseBits(arg_1.a.a.a.e), -u_input.d))), ~global1.e.a.a.d.wxw | global1.e.a.a.d.wyx);
    let var_3 = !(!select(vec3<bool>(true, global1.a.a.a.b, var_2.c.a.b), vec3<bool>(any(vec4<bool>(global1.e.a.a.b, true, var_2.b.a.b, false)), true, !arg_1.a.a.a.b), vec3<bool>(true, all(vec2<bool>(false, true)), !global3[_wgslsmith_index_u32(50070u, 31u)])));
    let var_4 = Struct_4(Struct_1(vec2<u32>(global1.a.a.a.a.x, 0u), 4294967295u != select(_wgslsmith_div_u32(arg_1.b, 4294967295u), ~var_2.b.a.a.x, arg_1.a.a.a.b & arg_2.a.a.b), ~0i, -vec4<i32>(-1i & var_2.c.a.c, min(0i, global1.c.e.x), arg_2.b, -arg_0), vec2<i32>(min(32780i, -75i), reverseBits(arg_1.a.b))), var_2.b, Struct_2(var_2.c.a), _wgslsmith_mult_vec3_i32(vec3<i32>(firstLeadingBit(var_1.x), -70116i, -47407i), firstLeadingBit(firstLeadingBit(vec3<i32>(global1.a.b, -17026i, var_2.b.a.e.x)))));
    return var_4.b.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(1278u, reverseBits(u_input.e), ~_wgslsmith_sub_u32(func_1(9337i, Struct_5(Struct_3(Struct_2(global1.c), global1.c.e.x), 1u, Struct_1(global1.e.a.a.a, false, -13298i, vec4<i32>(global1.e.b, global1.a.a.a.e.x, -1i, 0i), vec2<i32>(global1.e.a.a.d.x, global1.e.b)), 91456u, global1.e), global1.a), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 77601u), global1.c.a)), ~1u) ^ firstTrailingBit(~abs(vec4<u32>(global1.b, 43897u, 84479u, u_input.e)));
    global3 = array<bool, 31>();
    global1 = Struct_5(Struct_3(Struct_2(Struct_1(abs(var_0.zw), true, global1.e.b & global1.e.b, vec4<i32>(global1.c.e.x, u_input.d.x, -24667i, global1.e.b) | global1.e.a.a.d, vec2<i32>(u_input.d.x, -2147483647i) | global1.e.a.a.d.zx)), u_input.b), 4294967295u, global1.c, select(~35087u, ~(~global1.d), true), global1.a);
    global1 = Struct_5(Struct_3(Struct_2(Struct_1(vec2<u32>(0u, 6208u), global3[_wgslsmith_index_u32(u_input.e << (u_input.e % 32u), 31u)], ~u_input.a, global1.a.a.a.d << (vec4<u32>(var_0.x, 39327u, var_0.x, 16184u) % vec4<u32>(32u)), -vec2<i32>(u_input.d.x, -1i))), 0i), select(global1.b, _wgslsmith_clamp_u32(_wgslsmith_add_u32(4294967295u ^ var_0.x, countOneBits(u_input.e)), ~u_input.e, select(31787u, 28778u, global1.c.b)), global1.c.b), global1.c, var_0.x, Struct_3(global2[_wgslsmith_index_u32(global1.c.a.x, 12u)], global1.c.c));
    let var_1 = Struct_4(global1.e.a.a, Struct_2(global1.a.a.a), Struct_2(global1.a.a.a), vec3<i32>(u_input.c.x, max(global1.c.c, -66676i), _wgslsmith_clamp_i32(~(-24374i), 34819i, global1.a.a.a.e.x)) ^ abs(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, global1.e.a.a.e.x, 0i)));
    global1 = Struct_5(Struct_3(global1.a.a, _wgslsmith_div_i32(-(u_input.a & var_1.d.x), _wgslsmith_mult_i32(2147483647i, var_1.a.e.x))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(var_0.zz, abs(var_0.xz)), 1u, ~1u) ^ 51904u, global1.e.a.a, min(var_0.x, 26063u), Struct_3(var_1.b, abs(-1i)));
    let var_2 = abs(-6750i) != max(firstTrailingBit(1i), -60873i);
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.a.a.d.wyx, ~_wgslsmith_div_vec2_u32(vec2<u32>(~46150u, 994u), ~global1.a.a.a.a << (vec2<u32>(18938u, var_1.b.a.a.x) % vec2<u32>(32u))));
}

