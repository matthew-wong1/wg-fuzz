struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 7> = array<vec4<bool>, 7>(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false));

var<private> global1: bool;

var<private> global2: Struct_5 = Struct_5(vec3<bool>(true, false, false), vec4<f32>(-438f, 417f, -1005f, -606f), -602i, 0u);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: vec4<i32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global2.b.zy, global2.b.yz)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1842f - global2.b.x), _wgslsmith_div_f32(global2.b.x, -1599f)))) + vec2<f32>(1375f, -1048f));
    let var_1 = Struct_2(45987u, global2.a.x, Struct_1(countOneBits(4294967295u), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(22678i, global2.c), -2147483647i), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b, vec3<i32>(24254i, u_input.b.x, arg_2.x)), u_input.b)), -203f, arg_2.xy));
    var var_2 = Struct_5(!vec3<bool>(false, !(arg_1.x || arg_1.x), any(!global0[_wgslsmith_index_u32(u_input.a.x, 7u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-909f, 888f, global2.b.x, -223f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, 605f, var_0.x, var_1.c.c), vec4<f32>(1000f, var_1.c.c, var_1.c.c, var_0.x)))))))), ~(_wgslsmith_mod_i32(i32(-1i) * -18497i, var_1.c.d.x) & global2.c), var_1.c.a);
    let var_3 = global2.c;
    global1 = !var_2.a.x;
    return vec2<bool>(var_1.b, false);
}

fn func_2(arg_0: Struct_4) -> u32 {
    global0 = array<vec4<bool>, 7>();
    global1 = all(func_3(global2.a, select(select(!vec3<bool>(false, global2.a.x, arg_0.a.c.b), select(global2.a, global2.a, global2.a.x), true), vec3<bool>(global2.a.x, u_input.c < global2.c, true), !(!vec3<bool>(false, global2.a.x, arg_0.a.b.b))), min(max(vec4<i32>(global2.c, arg_0.a.a.d.x, u_input.b.x, 0i), vec4<i32>(u_input.c, u_input.b.x, -2147483647i, u_input.c)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a.a.a, 23247u, 33545u, 1u), vec4<u32>(u_input.a.x, global2.d, 23614u, 1u)) % vec4<u32>(32u)), ~(vec4<i32>(22849i, u_input.b.x, arg_0.a.a.b.x, global2.c) ^ vec4<i32>(u_input.b.x, arg_0.a.c.c.b.x, arg_0.a.c.c.b.x, -4551i)))));
    let var_0 = Struct_4(arg_0.a, arg_0.b);
    global1 = true;
    let var_1 = global2.d;
    return _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(var_0.a.c.c.a, ~global2.d, ~arg_0.a.a.a), _wgslsmith_clamp_u32(arg_0.a.b.c.a, _wgslsmith_div_u32(global2.d, _wgslsmith_dot_vec2_u32(u_input.a.yx, _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a.a.a, arg_0.a.a.a), vec2<u32>(var_0.a.b.c.a, 21101u)))), ~firstTrailingBit(32270u) >> (_wgslsmith_div_u32(countOneBits(var_0.a.b.a), u_input.a.x) % 32u)));
}

fn func_1() -> Struct_2 {
    var var_0 = ~vec3<u32>(func_2(Struct_4(Struct_3(Struct_1(global2.d, u_input.b.yx, 538f, vec2<i32>(0i, global2.c)), Struct_2(82637u, global2.a.x, Struct_1(global2.d, vec2<i32>(-18693i, 29205i), global2.b.x, vec2<i32>(682i, 2147483647i))), Struct_2(11027u, true, Struct_1(u_input.a.x, u_input.b.xx, global2.b.x, vec2<i32>(u_input.b.x, -35094i)))), _wgslsmith_f_op_f32(global2.b.x - -142f))), _wgslsmith_div_u32(func_2(Struct_4(Struct_3(Struct_1(13898u, vec2<i32>(global2.c, global2.c), global2.b.x, vec2<i32>(global2.c, u_input.c)), Struct_2(31667u, false, Struct_1(1u, u_input.b.xy, -457f, u_input.b.xz)), Struct_2(u_input.a.x, false, Struct_1(u_input.a.x, vec2<i32>(-18511i, 33852i), -464f, u_input.b.xy))), -526f)), ~1u), 1u);
    let var_1 = min(firstTrailingBit(firstTrailingBit(~u_input.b.xx)), _wgslsmith_div_vec2_i32(~(u_input.b.zz >> (u_input.a.yx % vec2<u32>(32u))), ~u_input.b.yz)) ^ ~u_input.b.yz;
    global2 = Struct_5(global2.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(340f - _wgslsmith_f_op_f32(exp2(global2.b.x))), _wgslsmith_f_op_f32(ceil(global2.b.x)), _wgslsmith_f_op_f32(trunc(1710f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(global2.b)) * _wgslsmith_f_op_vec4_f32(step(global2.b, _wgslsmith_div_vec4_f32(vec4<f32>(global2.b.x, 254f, global2.b.x, -675f), global2.b))))), _wgslsmith_mult_i32(global2.c, var_1.x) >> (_wgslsmith_mult_u32(func_2(Struct_4(Struct_3(Struct_1(4294967295u, u_input.b.xx, global2.b.x, var_1), Struct_2(1u, global2.a.x, Struct_1(24549u, u_input.b.zz, -141f, vec2<i32>(37004i, var_1.x))), Struct_2(14453u, global2.a.x, Struct_1(u_input.a.x, vec2<i32>(global2.c, 2147483647i), global2.b.x, vec2<i32>(global2.c, global2.c)))), -289f)), u_input.a.x ^ ~u_input.a.x) % 32u), abs(select(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, global2.d, 7361u, u_input.a.x)), abs(vec4<u32>(126212u, 4294967295u, 0u, u_input.a.x))), _wgslsmith_mult_u32(countOneBits(0u), reverseBits(global2.d)), true)));
    let var_2 = Struct_1(~_wgslsmith_div_u32(_wgslsmith_sub_u32(abs(var_0.x), u_input.a.x), abs(~global2.d)), var_1, _wgslsmith_f_op_f32(-global2.b.x), var_1);
    var var_3 = Struct_1(var_2.a, u_input.b.yy, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.b.x), -1140f)) * var_2.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1806f + global2.b.x)))))), ~((vec2<i32>(-1i) * -vec2<i32>(global2.c, global2.c)) ^ var_1));
    return Struct_2(_wgslsmith_sub_u32(global2.d, var_3.a), false, var_2);
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: Struct_1) -> Struct_2 {
    let var_0 = ~max(vec3<u32>(37461u, _wgslsmith_mod_u32(4294967295u, 4294967295u), max(global2.d, arg_2.a)), ~(u_input.a | u_input.a)) ^ u_input.a;
    global2 = Struct_5(global2.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(886f, _wgslsmith_div_f32(arg_2.c, arg_2.c), global2.b.x, -1386f))) + _wgslsmith_f_op_vec4_f32(-global2.b)), -3341i, global2.d >> (abs(0u ^ _wgslsmith_mult_u32(arg_1, arg_0.b.a)) % 32u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1481f, 608f)));
    var var_2 = Struct_1(max(1u ^ (0u | arg_0.a.a), ~arg_0.b.a) | var_0.x, _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.c.c.d.x, _wgslsmith_sub_i32(~global2.c, _wgslsmith_sub_i32(arg_0.c.c.b.x, arg_2.b.x))), firstLeadingBit(vec2<i32>(i32(-1i) * -21293i, global2.c))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.x * _wgslsmith_f_op_f32(round(global2.b.x))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.c), _wgslsmith_f_op_f32(arg_2.c * arg_2.c), func_3(global2.a, global2.a, vec4<i32>(global2.c, u_input.c, arg_0.a.d.x, 1i)).x))))), _wgslsmith_mod_vec2_i32(u_input.b.zz ^ arg_0.c.c.d, func_1().c.b));
    global0 = array<vec4<bool>, 7>();
    return Struct_2(~min(_wgslsmith_mod_u32(114180u, 72420u), _wgslsmith_mult_u32(func_1().a, func_2(Struct_4(arg_0, 100f)))), !arg_0.c.b, func_1().c);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>) -> StorageBuffer {
    var var_0 = _wgslsmith_div_f32(-788f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(227f))));
    var var_1 = 1u;
    var var_2 = Struct_5(vec3<bool>(true, select(true, global2.a.x, !(!global2.a.x)), func_4(Struct_3(func_1().c, arg_0, arg_0), firstTrailingBit(_wgslsmith_mult_u32(u_input.a.x, 42233u)), Struct_1(15795u, vec2<i32>(arg_1.x, arg_0.c.b.x), _wgslsmith_f_op_f32(-715f * global2.b.x), vec2<i32>(1i, -43552i) & arg_0.c.b)).b), vec4<f32>(arg_0.c.c, 781f, _wgslsmith_f_op_f32(-global2.b.x), -270f), arg_0.c.b.x, 63620u);
    let var_3 = !any(select(vec4<bool>(arg_0.c.b.x == -1549i, true & var_2.a.x, var_2.a.x, true), global0[_wgslsmith_index_u32(1u, 7u)], true));
    let var_4 = Struct_3(Struct_1(global2.d, abs(arg_0.c.b), -1181f, u_input.b.yz), Struct_2(u_input.a.x, all(vec4<bool>(global2.a.x, !global2.a.x, true, true)), arg_0.c), arg_0);
    return StorageBuffer(-(reverseBits(u_input.b) ^ u_input.b) ^ countOneBits(vec3<i32>(global2.c, var_4.c.c.d.x, arg_1.x) << (~vec3<u32>(59142u, 71701u, 0u) % vec3<u32>(32u))), ~(~_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.c, arg_0.c.b.x, arg_0.c.b.x, arg_1.x), select(vec4<i32>(-21794i, -9007i, global2.c, 23956i), vec4<i32>(2147483647i, 5707i, arg_1.x, var_2.c), var_2.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_4(Struct_3(Struct_1(~11262u, vec2<i32>(-1i, -42317i) ^ vec2<i32>(u_input.c, -1i), global2.b.x, _wgslsmith_add_vec2_i32(u_input.b.yy, u_input.b.xx)), func_1(), Struct_2(1u, true, Struct_1(global2.d, u_input.b.yy, global2.b.x, u_input.b.yx))), countOneBits(0u), Struct_1(func_1().c.a, _wgslsmith_div_vec2_i32(func_1().c.b, ~vec2<i32>(37045i, 0i)), -564f, u_input.b.zy)), u_input.b.xz);
}

