struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global1: f32 = -598f;

var<private> global2: Struct_1 = Struct_1(false, 0u, 14993i);

var<private> global3: array<vec4<i32>, 20> = array<vec4<i32>, 20>(vec4<i32>(-49945i, 31580i, 0i, -16768i), vec4<i32>(-23717i, i32(-2147483648), 2147483647i, -1i), vec4<i32>(-32054i, 55928i, 52571i, -10449i), vec4<i32>(-13145i, 25594i, 52249i, 2147483647i), vec4<i32>(-1i, -13500i, i32(-2147483648), 8690i), vec4<i32>(1i, -1i, 0i, -12590i), vec4<i32>(i32(-2147483648), 19678i, 13464i, -1i), vec4<i32>(2147483647i, 55625i, 18413i, -4487i), vec4<i32>(0i, 0i, 0i, -1i), vec4<i32>(i32(-2147483648), 0i, -1i, 11929i), vec4<i32>(19764i, -10793i, -12668i, -51887i), vec4<i32>(0i, 27628i, -1i, -13991i), vec4<i32>(i32(-2147483648), -43109i, -1i, -65335i), vec4<i32>(1i, 19314i, -1i, -33877i), vec4<i32>(-17197i, 0i, i32(-2147483648), 0i), vec4<i32>(-1i, 0i, 29914i, -1i), vec4<i32>(45314i, 2147483647i, 1563i, -19602i), vec4<i32>(1695i, i32(-2147483648), -12355i, -48899i), vec4<i32>(-52976i, -68118i, 52285i, -28450i), vec4<i32>(i32(-2147483648), 3457i, 1i, 30204i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_1) -> bool {
    global0 = select(!vec4<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(14385i, -62976i, -1i, global2.c), global3[_wgslsmith_index_u32(0u, 20u)]) == ~arg_3.c, true, !arg_3.a | false, global2.a), vec4<bool>(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(arg_1.x * -854f)) == arg_1.x, global2.a, true, all(vec2<bool>(arg_2, true))), true);
    global0 = select(vec4<bool>(!(!arg_2 || true), all(!vec4<bool>(arg_3.a, arg_3.a, true, arg_2)), arg_2, any(vec3<bool>(!arg_3.a, all(global0.wy), any(vec4<bool>(false, false, true, arg_2))))), vec4<bool>(!(true && any(vec3<bool>(false, false, global2.a))), arg_2, global2.c == 1i, all(select(select(vec4<bool>(arg_3.a, true, true, global2.a), vec4<bool>(arg_2, arg_2, false, false), vec4<bool>(arg_2, true, arg_3.a, global2.a)), select(vec4<bool>(false, true, global0.x, arg_3.a), vec4<bool>(false, arg_3.a, true, global2.a), global0.x), vec4<bool>(false, arg_3.a, true, global2.a)))), !(!(!vec4<bool>(global0.x, global0.x, arg_3.a, false))));
    let var_0 = 1i;
    global0 = select(!vec4<bool>(!any(vec4<bool>(arg_2, arg_3.a, global0.x, true)), global2.a, arg_2, any(!vec3<bool>(arg_2, true, true))), vec4<bool>(arg_2, all(!vec4<bool>(arg_2, true, true, arg_2)), any(global0.wwx), !(select(arg_3.a, global2.a, false) | true)), select(select(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, arg_3.a, global0.x), vec4<bool>(false, arg_2, global2.a, true)), !select(vec4<bool>(global2.a, false, global0.x, true), vec4<bool>(true, arg_3.a, false, global2.a), vec4<bool>(arg_2, global0.x, true, false)), arg_3.a), !(!select(vec4<bool>(false, false, global0.x, false), vec4<bool>(true, false, true, global0.x), vec4<bool>(true, true, false, false))), reverseBits(firstTrailingBit(arg_0.x)) >= _wgslsmith_sub_u32(~4294967295u, arg_0.x)));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(607f, _wgslsmith_f_op_f32(round(arg_1.x)), arg_1.x)), any(!vec2<bool>(arg_3.a, true)), _wgslsmith_f_op_f32(f32(-1f) * -392f));
    return !arg_3.a;
}

fn func_2() -> Struct_4 {
    var var_0 = vec4<bool>(!all(global0.yyx) || (global2.a | func_3(vec4<u32>(u_input.a, global2.b, global2.b, 59496u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(344f, -887f, -2013f)), select(false, global0.x, true), Struct_1(global2.a, global2.b, u_input.c))), 10459u == u_input.b.x, all(select(!(!vec4<bool>(global2.a, false, false, true)), !select(vec4<bool>(true, true, global2.a, true), vec4<bool>(global2.a, global2.a, false, false), global0.x), !(!vec4<bool>(true, global2.a, false, global2.a)))), any(select(global0.yzx, !vec3<bool>(global2.a, global0.x, global2.a), !global2.a)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-1122f * -922f))) + 1000f));
    var var_1 = Struct_4(Struct_2(_wgslsmith_mod_vec2_i32(vec2<i32>(global2.c, u_input.c) ^ vec2<i32>(u_input.c, -11797i), vec2<i32>(select(global2.c, 8975i, var_0.x), 1i))), -_wgslsmith_mod_vec2_i32(~(-vec2<i32>(global2.c, u_input.c)), vec2<i32>(1i, 28423i)), Struct_1(false, ~_wgslsmith_mult_u32(u_input.b.x, ~u_input.a), i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(2034i, 19562i, -2147483647i), vec3<i32>(20674i, global2.c, -21519i))));
    var_1 = Struct_4(Struct_2(~(-_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, global2.c), var_1.b, vec2<i32>(56963i, 1i)))), vec2<i32>(global2.c << (~firstLeadingBit(4294967295u) % 32u), -(~_wgslsmith_sub_i32(u_input.c, u_input.c))), Struct_1(true, _wgslsmith_sub_u32(global2.b, 50475u), 26645i));
    let var_2 = abs(abs(~vec3<i32>(13536i, u_input.c, 1i)) | _wgslsmith_mult_vec3_i32(~vec3<i32>(var_1.a.a.x, u_input.c, -1i) << (u_input.b.ywy % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(-13652i, u_input.c, global2.c), vec3<i32>(global2.c, var_1.b.x, -21482i)) << (vec3<u32>(global2.b, 35958u, 0u) % vec3<u32>(32u))));
    return Struct_4(var_1.a, var_1.a.a, Struct_1(var_0.x, 4294967295u, ~(-95i)));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<f32>) -> Struct_1 {
    global1 = 1000f;
    let var_0 = -2147483647i;
    global1 = _wgslsmith_f_op_f32(abs(-456f));
    var var_1 = _wgslsmith_div_vec2_i32(arg_0.b, _wgslsmith_add_vec2_i32(arg_0.b, ~(~(arg_0.a.a & vec2<i32>(-1i, var_0)))));
    var var_2 = func_2().c;
    return Struct_1(any(global0.yx), _wgslsmith_mod_u32(min(25314u, countOneBits(u_input.b.x)), _wgslsmith_add_u32(1u | _wgslsmith_clamp_u32(1u, var_2.b, 27605u), func_2().c.b & _wgslsmith_mod_u32(0u, 35300u))), max(-1i, abs(var_1.x)));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: i32, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))));
    var var_1 = func_4(func_2(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-334f, var_0.x, -1078f)) - vec3<f32>(-1811f, var_0.x, 266f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1225f, 491f, var_0.x) - vec3<f32>(-891f, -478f, var_0.x)) * vec3<f32>(var_0.x, var_0.x, var_0.x)), select(!global0.xxw, global0.wzw, !global0.ywy)))));
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_div_i32(2147483647i, _wgslsmith_div_i32(0i, u_input.c) >> (arg_0 % 32u)), 10139i);
    var var_3 = func_2();
    global0 = select(vec4<bool>(all(!vec3<bool>(true, global2.a, true)) | all(global0.xzx), 0u < ~min(u_input.b.x, arg_3), !any(vec2<bool>(false, false)), any(global0.xy)), select(!(!(!vec4<bool>(global0.x, arg_1, global0.x, false))), select(!vec4<bool>(var_1.a, false, false, false), select(select(vec4<bool>(true, arg_1, false, true), vec4<bool>(var_1.a, false, true, global2.a), global2.a), vec4<bool>(global0.x, false, global2.a, true), !vec4<bool>(false, var_3.c.a, false, arg_1)), true), true), ~(-30241i) < max(1i, -_wgslsmith_add_i32(var_3.b.x, arg_2)));
    return var_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(_wgslsmith_clamp_u32(global2.b, global2.b ^ ~4294967295u, ~35458u), !(!all(vec2<bool>(true, global2.a)) | any(global0.wzz)), _wgslsmith_mult_i32(global2.c, 1i), u_input.b.x);
    global3 = array<vec4<i32>, 20>();
    let var_0 = func_2().a;
    var var_1 = -1752f;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1515f, -1154f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(1000f)), 116f))));
    global3 = array<vec4<i32>, 20>();
    var var_3 = vec3<bool>(!global2.a, global2.a, !(var_2.x == _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(661f))))));
    global3 = array<vec4<i32>, 20>();
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -794f));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x)) * var_4), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_4, _wgslsmith_f_op_f32(-var_2.x))))), var_0.a.x, -_wgslsmith_dot_vec4_i32(global3[_wgslsmith_index_u32(51628u, 20u)], vec4<i32>(-2147483647i, -u_input.c, -5095i, -1i)), abs(firstLeadingBit(4294967295u)));
}

