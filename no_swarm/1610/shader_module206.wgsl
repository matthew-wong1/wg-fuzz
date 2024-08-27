struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12> = array<f32, 12>(534f, -911f, 303f, -141f, -566f, -364f, -1838f, 742f, -685f, 2596f, 366f, -2162f);

var<private> global1: array<vec4<bool>, 12>;

var<private> global2: vec2<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_4(!global1[_wgslsmith_index_u32(1u, 12u)], true | all(select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), true)), Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(9892u, 12u)]))), 4294967295u, _wgslsmith_clamp_vec3_i32(reverseBits(u_input.c.xwz), ~vec3<i32>(global2.x, 38375i, u_input.a.x), ~vec3<i32>(-17628i, global2.x, 1i)), vec3<bool>(true, true, true)), true, select(vec3<bool>(false, -1594f <= global0[_wgslsmith_index_u32(1u, 12u)], true), vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(true, false, false)), select(false, true, true), any(global1[_wgslsmith_index_u32(1u, 12u)])))), Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(34493u, 12u)], global0[_wgslsmith_index_u32(25277u, 12u)])) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1438f, 497f) * vec2<f32>(global0[_wgslsmith_index_u32(60731u, 12u)], 1000f))), 26798u, vec3<i32>(_wgslsmith_clamp_i32(global2.x, 31628i, -15524i), u_input.a.x & global2.x, abs(-1i)), vec3<bool>(true, true, true)), !all(vec2<bool>(true, true)), vec3<bool>(1162f != global0[_wgslsmith_index_u32(reverseBits(86004u), 12u)], all(select(vec4<bool>(false, false, false, true), global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(66983u, 12u)])), any(vec2<bool>(true, true)))));
    global1 = array<vec4<bool>, 12>();
    let var_1 = min(~firstTrailingBit(u_input.a), min(~_wgslsmith_sub_vec4_i32(vec4<i32>(global2.x, u_input.a.x, -14355i, u_input.b), u_input.a), -firstLeadingBit(vec4<i32>(-1i, var_0.d.a.c.x, global2.x, global2.x)) & u_input.c));
    return !vec4<bool>(var_0.d.a.d.x, any(!(!vec3<bool>(var_0.a.x, var_0.b, var_0.d.a.d.x))), (true & var_0.b) == var_0.c.a.d.x, _wgslsmith_f_op_f32(trunc(1160f)) <= -1000f);
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = select(u_input.b, countOneBits(-41045i | global2.x), all(vec4<bool>(true, arg_1, true, !(arg_1 == arg_3.a.x))));
    var var_1 = Struct_1(func_3(), ~_wgslsmith_div_u32(~min(arg_2.x, arg_2.x), ~(arg_3.b >> (arg_2.x % 32u))), 57980u);
    var var_2 = all(global1[_wgslsmith_index_u32(~0u, 12u)]);
    var var_3 = vec4<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -608f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-649f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(803f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(539f - -710f) - global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~var_1.b, 1u), 12u)])));
    var var_4 = vec3<bool>(true, true, all(!var_1.a.yyy));
    return arg_3.a.yzz;
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    global1 = array<vec4<bool>, 12>();
    let var_0 = Struct_3(arg_0, !(!(!arg_0.d.x & !arg_0.d.x)), select(arg_0.d, arg_0.d, arg_0.d.x));
    global2 = _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-33144i, -34046i), firstLeadingBit(abs(u_input.c.zz))), var_0.a.c.yz), var_0.a.c.yx);
    global2 = vec2<i32>(-(~(~var_0.a.c.x)), _wgslsmith_clamp_i32(14274i, _wgslsmith_clamp_i32(-2147483647i, global2.x, ~(~(-1i))), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(arg_0.c.x, var_0.a.c.x, 40862i), var_0.a.c), _wgslsmith_dot_vec4_i32(min(vec4<i32>(arg_0.c.x, -15980i, var_0.a.c.x, 8468i), vec4<i32>(var_0.a.c.x, 52730i, -66954i, -1i)), -vec4<i32>(var_0.a.c.x, var_0.a.c.x, u_input.b, var_0.a.c.x)))));
    global1 = array<vec4<bool>, 12>();
    return Struct_1(!func_3(), ~_wgslsmith_div_u32(var_0.a.b << (countOneBits(arg_0.b) % 32u), ~reverseBits(arg_0.b)), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.b & arg_0.b, ~arg_0.b), select(vec2<u32>(11189u, var_0.a.b) >> (vec2<u32>(20782u, 0u) % vec2<u32>(32u)), vec2<u32>(arg_0.b, 4294967295u), true))));
}

fn func_1(arg_0: bool) -> Struct_4 {
    var var_0 = u_input.c.zxx;
    var var_1 = -1898f;
    let var_2 = func_4(Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(46005u, 12u)], global0[_wgslsmith_index_u32(1u, 12u)]), vec2<f32>(global0[_wgslsmith_index_u32(0u, 12u)], 1000f)))))), 1u, u_input.c.xww, select(select(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(false, arg_0, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, arg_0, true), vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, true, arg_0)), func_2(arg_0, arg_0, vec3<u32>(26560u, 4294967295u, 1u), Struct_1(global1[_wgslsmith_index_u32(1u, 12u)], 42836u, 4294967295u))), select(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, arg_0, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(arg_0, arg_0, arg_0), arg_0)), vec3<bool>(true, !arg_0, any(vec2<bool>(arg_0, arg_0))))));
    let var_3 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-344f, global0[_wgslsmith_index_u32(var_2.c, 12u)]), vec2<f32>(924f, global0[_wgslsmith_index_u32(var_2.c, 12u)]))))), var_2.b & ~var_2.b, ~u_input.c.xxz, func_4(Struct_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(780f, global0[_wgslsmith_index_u32(var_2.c, 12u)]))), _wgslsmith_clamp_u32(var_2.c, var_2.b, var_2.c), u_input.c.xzy, select(var_2.a.xzw, vec3<bool>(arg_0, var_2.a.x, false), true))).a.wwy), select(any(vec2<bool>(func_4(Struct_2(vec2<f32>(global0[_wgslsmith_index_u32(1u, 12u)], 392f), 4294967295u, u_input.a.zzz, vec3<bool>(false, arg_0, var_2.a.x))).a.x, true)), true, (_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 12u)]) == global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_2.c), vec2<u32>(var_2.b, 4294967295u)), 12u)]) | arg_0), var_2.a.yzz);
    global1 = array<vec4<bool>, 12>();
    return Struct_4(global1[_wgslsmith_index_u32(~0u, 12u)], var_3.a.d.x, Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_3.a.a, var_3.a.a, vec2<bool>(false, arg_0)))), firstTrailingBit(_wgslsmith_sub_u32(1u, var_2.c)), ~select(var_3.a.c, vec3<i32>(var_3.a.c.x, var_0.x, var_0.x), vec3<bool>(var_2.a.x, false, false)), !(!vec3<bool>(false, var_2.a.x, false))), func_3().x, vec3<bool>(false, -2147483647i < -u_input.b, select(var_2.b, var_3.a.b, arg_0) > 645u)), Struct_3(var_3.a, var_3.c.x, !func_3().xxz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.a.x <= -_wgslsmith_dot_vec3_i32(u_input.a.yzy >> (vec3<u32>(31257u, 4294967295u, 4294967295u) % vec3<u32>(32u)), -vec3<i32>(0i, u_input.a.x, -13608i)));
    var var_1 = var_0.c.a;
    let var_2 = Struct_4(global1[_wgslsmith_index_u32(36540u, 12u)], all(vec4<bool>(true, true, func_4(var_0.c.a).a.x, true)), Struct_3(var_0.c.a, !var_0.d.b, var_0.a.wyw), Struct_3(Struct_2(var_0.d.a.a, var_0.d.a.b, -_wgslsmith_mod_vec3_i32(vec3<i32>(-34322i, var_1.c.x, -1i), vec3<i32>(-14212i, global2.x, global2.x)), var_1.d), true, var_1.d));
    global2 = _wgslsmith_div_vec2_i32(var_0.d.a.c.yz, vec2<i32>(-(_wgslsmith_mult_i32(global2.x, var_2.d.a.c.x) >> (1u % 32u)), var_1.c.x));
    let var_3 = abs(~func_1(var_2.d.a.b > var_2.c.a.b).d.a.c.x);
    var var_4 = !vec3<bool>(!(!var_0.c.a.d.x), var_2.b, false);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~1u, 0u, _wgslsmith_mult_u32(var_0.c.a.b, var_1.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, 515f, global0[_wgslsmith_index_u32(4294967295u, 12u)]))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.a.a.x, var_1.a.x, var_2.d.a.a.x) * vec3<f32>(var_0.d.a.a.x, var_2.c.a.a.x, -184f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(671f, -1103f, global0[_wgslsmith_index_u32(128242u, 12u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, 556f, var_1.a.x))))), select(~abs(u_input.c), vec4<i32>(-1i, var_2.c.a.c.x, var_2.c.a.c.x, ~(-2147483647i >> (var_1.b % 32u))), !func_2(!var_2.a.x, true, vec3<u32>(16091u, 24639u, 1u), Struct_1(vec4<bool>(var_4.x, var_0.d.a.d.x, false, var_0.b), var_2.c.a.b, 0u)).x), countOneBits(-4482i));
}

