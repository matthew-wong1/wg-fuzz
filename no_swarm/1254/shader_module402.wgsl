struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: bool,
    d: vec2<f32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
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

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-2050f, -1554f));

var<private> global1: array<vec2<i32>, 1>;

var<private> global2: array<u32, 15> = array<u32, 15>(4294967295u, 59221u, 49064u, 24956u, 8273u, 4294967295u, 4294967295u, 82768u, 1u, 1506u, 12357u, 1u, 0u, 1u, 1u);

var<private> global3: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true));

var<private> global4: vec2<u32> = vec2<u32>(77587u, 0u);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> vec4<u32> {
    global2 = array<u32, 15>();
    global3 = array<vec4<bool>, 28>();
    global1 = array<vec2<i32>, 1>();
    return ~(~countOneBits(vec4<u32>(~arg_1.a.e.x, global4.x, arg_1.a.e.x, 4294967295u >> (global2[_wgslsmith_index_u32(13133u, 15u)] % 32u))));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32) -> Struct_1 {
    global1 = array<vec2<i32>, 1>();
    var var_0 = false;
    var var_1 = Struct_3(Struct_2(6793i, _wgslsmith_mod_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(~1u, 15u)], ~4294967295u, 67676u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, global4.x), vec3<u32>(global4.x, global4.x, 0u))), countOneBits(vec4<u32>(global4.x, u_input.a, u_input.a, 24246u))), true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, global0.a.x)), ~max(~vec4<u32>(u_input.a, 6u, 1u, global4.x), ~vec4<u32>(global4.x, 4294967295u, global2[_wgslsmith_index_u32(global4.x, 15u)], global4.x))), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(select(global0.a.x, -201f, true)), arg_1)))));
    let var_2 = Struct_3(Struct_2(var_1.a.a, _wgslsmith_clamp_vec4_u32(~(vec4<u32>(global2[_wgslsmith_index_u32(global4.x, 15u)], global2[_wgslsmith_index_u32(u_input.a, 15u)], 1u, global2[_wgslsmith_index_u32(var_1.a.e.x, 15u)]) & var_1.a.e), func_3(var_1.b, Struct_3(var_1.a, Struct_1(var_1.b.a))), firstLeadingBit(select(var_1.a.e, vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 15u)], 3938u, 19165u, var_1.a.b.x), vec4<bool>(var_1.a.c, false, var_1.a.c, true)))), var_1.a.c, global0.a, var_1.a.e ^ ~abs(var_1.a.e)), Struct_1(_wgslsmith_f_op_vec2_f32(global0.a - vec2<f32>(_wgslsmith_f_op_f32(global0.a.x * 694f), _wgslsmith_div_f32(arg_1, -495f)))));
    let var_3 = ~vec4<u32>(40611u, 46848u, _wgslsmith_clamp_u32(~(u_input.a ^ 39031u), _wgslsmith_mod_u32(u_input.a, u_input.a), ~func_3(Struct_1(global0.a), var_2).x), var_1.a.e.x);
    return var_1.b;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_add_u32(~(~1u), 35831u) >> (u_input.a % 32u), 4294967295u);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.a.x))), _wgslsmith_f_op_f32(-global0.a.x), (global4.x > global4.x) && false)), 933f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1413f)))));
    var var_2 = Struct_5(global1[_wgslsmith_index_u32(~var_0, 1u)], global1[_wgslsmith_index_u32(28404u, 1u)] >> (_wgslsmith_mod_vec2_u32(~vec2<u32>(60638u, var_0) | arg_0.a.b.xy, arg_0.a.b.xz & vec2<u32>(var_0, 21127u)) % vec2<u32>(32u)), Struct_4(arg_0.a, vec2<f32>(832f, -1392f)));
    var var_3 = ~vec3<u32>(1u, _wgslsmith_add_u32(_wgslsmith_mod_u32(1u, 4294967295u), _wgslsmith_mult_u32(1u, ~1u)), var_2.c.a.e.x);
    global3 = array<vec4<bool>, 28>();
    return arg_2;
}

fn func_1(arg_0: vec3<f32>, arg_1: f32) -> Struct_3 {
    var var_0 = func_4(Struct_3(Struct_2(2067i, ~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 37177u, global4.x, u_input.a), vec4<u32>(28171u, 47709u, u_input.a, global2[_wgslsmith_index_u32(101588u, 15u)])), _wgslsmith_f_op_f32(-arg_1) == _wgslsmith_f_op_f32(-arg_0.x), vec2<f32>(_wgslsmith_f_op_f32(ceil(-1274f)), -2218f), ~(vec4<u32>(u_input.a, u_input.a, global4.x, 49320u) << (vec4<u32>(4294967295u, global4.x, 19975u, global4.x) % vec4<u32>(32u)))), func_2(vec3<i32>(~u_input.c, u_input.b, _wgslsmith_mod_i32(u_input.b, u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1023f - global0.a.x)))), select(!select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))), vec2<bool>(true, all(vec3<bool>(true, true, true))), !select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)))), func_2(firstLeadingBit(select(vec3<i32>(-16047i, u_input.b, 2147483647i) & vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(u_input.b, u_input.b, 0i), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1685f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x * 202f)))), !any(!select(vec2<bool>(false, true), vec2<bool>(true, false), true)));
    let var_1 = Struct_2(min(countOneBits(u_input.c | u_input.b), 1i), ~(~min(vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 15u)], 0u, 15268u, 1u), vec4<u32>(global4.x, global2[_wgslsmith_index_u32(23168u, 15u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global4.x, 15u)], 15u)], 4294967295u))) ^ ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(16827u, 8380u), vec2<u32>(0u, 1u)), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(3144u, 15u)], 31693u), 15u)], _wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(822u, 15u)], 5972u, u_input.a), vec3<u32>(0u, global4.x, u_input.a)), _wgslsmith_mod_u32(11671u, u_input.a)), !select(select(any(vec3<bool>(false, true, true)), true, any(vec3<bool>(true, true, false))), true, true), arg_0.zx, _wgslsmith_sub_vec4_u32(vec4<u32>(select(abs(104209u), 4294967295u, any(vec2<bool>(true, true))), _wgslsmith_dot_vec2_u32(vec2<u32>(6333u, u_input.a), vec2<u32>(u_input.a, 59777u)) ^ ~global4.x, min(~global2[_wgslsmith_index_u32(4294967295u, 15u)], 1u), ~select(global4.x, 34645u, true)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, 18155u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 15u)], 15u)], u_input.a), ~(vec4<u32>(global2[_wgslsmith_index_u32(0u, 15u)], global4.x, 0u, 64684u) ^ vec4<u32>(21237u, 1u, u_input.a, 1u)), select(reverseBits(vec4<u32>(global4.x, 1u, global2[_wgslsmith_index_u32(global4.x, 15u)], global4.x)), func_3(Struct_1(arg_0.xz), Struct_3(Struct_2(0i, vec4<u32>(38541u, 1u, global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 15u)]), true, vec2<f32>(arg_0.x, global0.a.x), vec4<u32>(global4.x, u_input.a, u_input.a, u_input.a)), Struct_1(vec2<f32>(-1981f, -434f)))), vec4<bool>(true, false, false, false)))));
    global4 = firstLeadingBit(var_1.b.zy) | vec2<u32>(abs(~(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 15u)], 15u)] << (global4.x % 32u))), countOneBits(_wgslsmith_clamp_u32(~global4.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2[_wgslsmith_index_u32(4294967295u, 15u)], 92474u), var_1.e.yyx), 0u)));
    let var_2 = func_2(countOneBits(_wgslsmith_add_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(0i, var_1.a, var_1.a), vec3<i32>(2235i, u_input.b, 8355i)), firstTrailingBit(vec3<i32>(var_1.a, var_1.a, var_1.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1.d.x)), arg_0.x));
    let var_3 = Struct_2(max(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a, 41449i, var_1.a), vec3<i32>(-10592i, -2147483647i, 2147483647i))) ^ var_1.a, ~abs(-15770i)), ~vec4<u32>(~14797u, ~(~4294967295u), _wgslsmith_add_u32(~26670u, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.e.x, var_1.b.x), vec2<u32>(u_input.a, global2[_wgslsmith_index_u32(global4.x, 15u)])), 15u)]), 11440u), (select(true, any(vec2<bool>(var_1.c, var_1.c)), true) | var_1.c) | any(vec3<bool>(437f < arg_1, any(vec3<bool>(false, true, var_1.c)), select(var_1.c, true, var_1.c))), vec2<f32>(1159f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_1.d.x)), 473f))), vec4<u32>(max(49049u, ~var_1.e.x), 83036u, 1u, global2[_wgslsmith_index_u32(var_1.e.x, 15u)]) ^ countOneBits(~(vec4<u32>(u_input.a, 1u, 1u, 0u) | vec4<u32>(u_input.a, 0u, u_input.a, global2[_wgslsmith_index_u32(53389u, 15u)]))));
    return Struct_3(Struct_2(select(~(-2147483647i) | firstLeadingBit(var_1.a), 2147483647i, true), vec4<u32>(abs(~global4.x), var_3.b.x, global4.x, 0u), any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, var_3.c), vec3<bool>(var_3.c, var_3.c, var_1.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(func_2(vec3<i32>(2147483647i, 0i, var_3.a), -474f).a, vec2<f32>(var_0.a.x, 1063f)))), var_3.e), func_2(vec3<i32>(~(i32(-1i) * -31202i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -14679i, var_3.a, 2147483647i), vec4<i32>(u_input.c, 32150i, u_input.c, -1i)), 1i, var_3.a), _wgslsmith_div_i32(~var_3.a, select(11034i, -1i, true))), -1630f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a.x * global0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x * 125f) - global0.a.x), global0.a.x))), -102f);
    let var_1 = var_0.a.c;
    global1 = array<vec2<i32>, 1>();
    let var_2 = ~vec4<i32>(1i, ~select(var_0.a.a, -12914i, var_0.a.c) >> (~4294967295u % 32u), max(-firstLeadingBit(52303i), select(u_input.b, 0i, !var_0.a.c)), (1i ^ (var_0.a.a | var_0.a.a)) | min(u_input.b, 51934i));
    var var_3 = any(global3[_wgslsmith_index_u32(~var_0.a.b.x, 28u)]);
    let var_4 = Struct_5(global1[_wgslsmith_index_u32(u_input.a, 1u)], (~_wgslsmith_mult_vec2_i32(var_2.ww, vec2<i32>(2147483647i, u_input.b)) << (vec2<u32>(~0u, 5266u) % vec2<u32>(32u))) ^ (_wgslsmith_clamp_vec2_i32(var_2.xw | global1[_wgslsmith_index_u32(4271u, 1u)], -global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 15u)], 1u)], select(var_2.yx, var_2.wy, vec2<bool>(var_0.a.c, true))) ^ vec2<i32>(38939i, _wgslsmith_sub_i32(2147483647i, u_input.c))), Struct_4(func_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-225f, var_0.b.a.x, var_0.b.a.x)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.a.x, global0.a.x, 326f))), select(vec3<bool>(var_0.a.c, false, var_0.a.c), vec3<bool>(false, var_0.a.c, var_0.a.c), vec3<bool>(true, var_0.a.c, false)))), _wgslsmith_f_op_f32(var_0.a.d.x - _wgslsmith_f_op_f32(var_0.a.d.x * -315f))).a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, var_0.b.a.x) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.a.x, var_0.a.d.x) + vec2<f32>(1138f, -147f))))));
    global3 = array<vec4<bool>, 28>();
    var var_5 = var_0.b;
    global0 = func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2259f)) + var_5.a.x), 1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(1000f, var_5.a.x)))))), 550f).b;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~_wgslsmith_sub_u32(var_0.a.b.x, max(var_0.a.e.x, u_input.a)), _wgslsmith_dot_vec3_u32(var_4.c.a.e.yyw, ~(~var_0.a.b.wzw)), ~(~4294967295u) << (global4.x % 32u), firstLeadingBit(1u) & _wgslsmith_sub_u32(69897u | var_0.a.b.x, _wgslsmith_clamp_u32(0u, 1u, 4294967295u))));
}

