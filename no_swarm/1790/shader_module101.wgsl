struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: vec2<i32>;

var<private> global2: array<i32, 24>;

var<private> global3: array<f32, 18> = array<f32, 18>(303f, -690f, -1031f, 131f, 500f, 874f, -236f, -1000f, -1000f, -1137f, 306f, -1000f, -344f, -972f, -146f, 1626f, 1000f, -1501f);

var<private> global4: array<vec3<i32>, 18> = array<vec3<i32>, 18>(vec3<i32>(-1i, 21103i, 45807i), vec3<i32>(-1i, 2147483647i, 0i), vec3<i32>(i32(-2147483648), -40188i, 1i), vec3<i32>(2147483647i, 1i, 2147483647i), vec3<i32>(-15849i, 0i, 0i), vec3<i32>(-71168i, 2147483647i, 2147483647i), vec3<i32>(-1i, -1i, -1882i), vec3<i32>(-50393i, -30218i, 36650i), vec3<i32>(0i, -1i, 0i), vec3<i32>(-34907i, 65352i, 15848i), vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-27630i, 65021i, -36115i), vec3<i32>(13617i, -43625i, 2147483647i), vec3<i32>(23690i, 2147483647i, 5077i), vec3<i32>(42566i, -2294i, 2147483647i), vec3<i32>(46396i, 7235i, 28858i), vec3<i32>(1i, -50588i, 0i), vec3<i32>(2147483647i, 40109i, 1i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-569f * -711f), global3[_wgslsmith_index_u32(u_input.d, 18u)], 710f, 1510f));
    let var_1 = Struct_1(vec3<u32>(~1u, 76045u, u_input.d), -global1.x);
    global0 = ~vec3<i32>(1i, 1i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(17482i, 2147483647i, u_input.b, global0.x), vec4<i32>(u_input.b, global1.x, -1i, -2147483647i)), -vec4<i32>(54857i, global2[_wgslsmith_index_u32(69826u, 24u)], 1i, -8621i)), vec4<i32>(~(-53852i), u_input.b & -58147i, global1.x, i32(-1i) * -52826i)));
    let var_2 = vec2<bool>(all(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(false, false, false, false), all(vec2<bool>(false, true)))), any(vec3<bool>(!any(vec2<bool>(false, false)), true, (var_1.a.x != 45716u) | select(true, false, true))));
    global1 = vec2<i32>(min(1504i, 2147483647i), min(_wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(-1i), abs(arg_0)), ~vec2<i32>(global1.x, 1i)), var_1.b));
    return true;
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: vec3<i32>, arg_3: u32) -> Struct_2 {
    global4 = array<vec3<i32>, 18>();
    var var_0 = Struct_3(arg_0.yy, vec2<bool>(func_3(-45719i), func_3(4461i)), Struct_1(~(~abs(vec3<u32>(4946u, 4294967295u, arg_3))), global0.x), Struct_2(Struct_1(~vec3<u32>(u_input.c, arg_3, 50255u) | select(vec3<u32>(4294967295u, 16969u, 0u), vec3<u32>(u_input.d, 4331u, u_input.c), vec3<bool>(true, false, false)), _wgslsmith_dot_vec2_i32(arg_2.yx, arg_2.yy) ^ ~1i)), Struct_1(vec3<u32>(arg_3, arg_3, (arg_3 | 1u) | 55101u), i32(-1i) * -1i));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(834f - _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(60767u, 18u)])))) * vec2<f32>(485f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))))), select(!select(!vec2<bool>(var_0.b.x, var_0.b.x), !var_0.b, vec2<bool>(true, var_0.b.x)), !(!(!vec2<bool>(true, var_0.b.x))), !all(var_0.b)), Struct_1(vec3<u32>(1u, ~(~arg_3), abs(83566u)), u_input.b), Struct_2(Struct_1(~(var_0.c.a & var_0.c.a), 1i)), var_0.e);
    let var_2 = vec3<bool>(!(var_1.a.x == _wgslsmith_div_f32(_wgslsmith_f_op_f32(1478f - arg_0.x), -1731f)), !var_0.b.x, _wgslsmith_f_op_f32(var_1.a.x + global3[_wgslsmith_index_u32(select(~19257u, var_0.c.a.x, false), 18u)]) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(abs(4294967295u), 18u)] - _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a, 18u)]))));
    global1 = firstLeadingBit(vec2<i32>(-reverseBits(firstLeadingBit(global2[_wgslsmith_index_u32(1u, 24u)])), var_1.c.b));
    return Struct_2(var_1.e);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: f32, arg_3: Struct_3) -> Struct_1 {
    global4 = array<vec3<i32>, 18>();
    var var_0 = arg_3;
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1106f, -667f)), _wgslsmith_f_op_f32(1000f + arg_3.a.x)))), -983f), 139f));
    global1 = global0.xy;
    let var_2 = Struct_1(_wgslsmith_clamp_vec3_u32(countOneBits(arg_1.c.a ^ vec3<u32>(4294967295u, 28779u, 11555u)) >> (_wgslsmith_sub_vec3_u32(~vec3<u32>(arg_3.d.a.a.x, 15627u, var_0.e.a.x), vec3<u32>(69084u, var_0.e.a.x, 1u)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(~vec3<u32>(52070u, arg_3.e.a.x, 4294967295u), vec3<u32>(abs(1u), 1u, countOneBits(4294967295u))), _wgslsmith_clamp_vec3_u32(max(~vec3<u32>(arg_0, arg_1.d.a.a.x, 1u), _wgslsmith_add_vec3_u32(var_0.c.a, vec3<u32>(u_input.a, u_input.d, arg_3.d.a.a.x))), vec3<u32>(61011u, 4294967295u, 4294967295u), ~var_0.e.a)), ~(-2147483647i));
    return func_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1, -819f, -254f) - vec3<f32>(-996f, -1377f, arg_3.a.x))) - vec3<f32>(-1589f, _wgslsmith_f_op_f32(677f * 1241f), arg_2)), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.a.x))), 795f, global3[_wgslsmith_index_u32(arg_1.c.a.x, 18u)]), vec3<bool>(var_0.b.x, arg_1.b.x, arg_1.d.a.b < select(global1.x, 8479i, true)))), _wgslsmith_mod_u32(9583u, ~(~reverseBits(4294967295u))), select(vec3<i32>(arg_1.e.b, -62235i, max(1i, reverseBits(-17130i))), min(-min(vec3<i32>(1i, 5320i, u_input.b), vec3<i32>(0i, 1i, 1i)), -_wgslsmith_clamp_vec3_i32(global4[_wgslsmith_index_u32(arg_0, 18u)], global4[_wgslsmith_index_u32(arg_1.e.a.x, 18u)], global4[_wgslsmith_index_u32(21131u, 18u)])), !any(select(vec4<bool>(arg_1.b.x, var_0.b.x, true, arg_1.b.x), vec4<bool>(arg_3.b.x, true, false, arg_3.b.x), vec4<bool>(true, false, arg_3.b.x, false)))), firstLeadingBit((var_2.a.x | 4294967295u) & ~var_2.a.x) ^ 54813u).a;
}

fn func_1() -> vec2<bool> {
    var var_0 = func_4(u_input.c, Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(180f, -486f), vec2<f32>(global3[_wgslsmith_index_u32(u_input.c, 18u)], -754f)))), vec2<bool>(all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true))), true), Struct_1(max(~vec3<u32>(u_input.c, u_input.c, 4020u), vec3<u32>(u_input.c, u_input.a, u_input.a)), 10745i), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(353f, -2396f, -1200f) * vec3<f32>(global3[_wgslsmith_index_u32(u_input.c, 18u)], global3[_wgslsmith_index_u32(u_input.d, 18u)], -433f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-234f, global3[_wgslsmith_index_u32(u_input.c, 18u)], 271f))), 36380u, vec3<i32>(u_input.b, 0i, min(global2[_wgslsmith_index_u32(63036u, 24u)], -2147483647i)), 14299u), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, 628f, -197f)))), ~(u_input.c >> (1u % 32u)), -firstLeadingBit(global4[_wgslsmith_index_u32(u_input.c, 18u)]), ~u_input.a).a), global3[_wgslsmith_index_u32(u_input.c, 18u)], Struct_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(u_input.d, 18u)], 975f)))))), vec2<bool>(func_3(2147483647i), true), Struct_1(~(vec3<u32>(36408u, u_input.a, 4294967295u) ^ vec3<u32>(54068u, u_input.c, u_input.a)), -2147483647i), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global3[_wgslsmith_index_u32(1u, 18u)], 514f, 475f))) - vec3<f32>(118f, 260f, global3[_wgslsmith_index_u32(u_input.d, 18u)])), u_input.d, global4[_wgslsmith_index_u32(1555u, 18u)], 4294967295u), Struct_1(vec3<u32>(1u, u_input.c, u_input.a) << (func_2(vec3<f32>(global3[_wgslsmith_index_u32(u_input.d, 18u)], 360f, global3[_wgslsmith_index_u32(u_input.c, 18u)]), 4294967295u, global4[_wgslsmith_index_u32(1u, 18u)], u_input.a).a.a % vec3<u32>(32u)), firstLeadingBit(countOneBits(0i)))));
    var var_1 = global0.xz | global0.zz;
    let var_2 = global4[_wgslsmith_index_u32(u_input.c << (4294967295u % 32u), 18u)];
    var var_3 = var_0.a;
    var_1 = _wgslsmith_mod_vec2_i32(var_2.xx, var_2.zx);
    return select(!(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), true)), vec2<bool>(any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), false)), true), true);
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: u32, arg_3: f32) -> Struct_3 {
    let var_0 = arg_0.d;
    global4 = array<vec3<i32>, 18>();
    let var_1 = var_0;
    global2 = array<i32, 24>();
    global2 = array<i32, 24>();
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(852f * arg_3), _wgslsmith_f_op_f32(-arg_3))))), vec2<bool>(arg_0.b.x, var_0.a.b < _wgslsmith_sub_i32(1i & u_input.b, _wgslsmith_clamp_i32(1i, global0.x, global2[_wgslsmith_index_u32(var_1.a.a.x, 24u)]))), var_1.a, var_0, func_4(1u, Struct_3(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1, -344f))), func_1(), var_1.a, func_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1, global3[_wgslsmith_index_u32(arg_0.c.a.x, 18u)], 1066f), vec3<f32>(arg_3, global3[_wgslsmith_index_u32(var_0.a.a.x, 18u)], 855f))), 5226u, select(vec3<i32>(u_input.b, global2[_wgslsmith_index_u32(arg_0.e.a.x, 24u)], -3978i), global4[_wgslsmith_index_u32(arg_0.e.a.x, 18u)], false), 4294967295u), var_0.a), _wgslsmith_f_op_f32(-arg_3), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1250f, -391f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global3[_wgslsmith_index_u32(u_input.d, 18u)]))), vec2<f32>(1218f, -224f), all(vec3<bool>(true, true, true)))), select(vec2<bool>(false, true), func_1(), true), Struct_1(countOneBits(max(vec3<u32>(u_input.a, 1u, 4294967295u), vec3<u32>(u_input.c, u_input.d, 59961u))), global0.x), Struct_2(Struct_1(firstLeadingBit(vec3<u32>(u_input.c, 0u, u_input.a)), ~0i)), Struct_1(~(~vec3<u32>(u_input.a, u_input.c, u_input.c)), _wgslsmith_mult_i32(~global0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 24u)], 6292i, global2[_wgslsmith_index_u32(u_input.d, 24u)]), global4[_wgslsmith_index_u32(1u, 18u)])))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(reverseBits(~(~204u)), 18u)]), 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_add_u32(func_2(vec3<f32>(1363f, global3[_wgslsmith_index_u32(u_input.a, 18u)], -1225f), u_input.d, global4[_wgslsmith_index_u32(u_input.d, 18u)], 0u).a.a.x, ~u_input.d), 18u)]) * 295f));
    var var_1 = var_0.b.x;
    global3 = array<f32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(select(17830u, u_input.d | _wgslsmith_dot_vec3_u32(var_0.c.a, reverseBits(var_0.c.a)), true), global4[_wgslsmith_index_u32(var_0.d.a.a.x, 18u)], global2[_wgslsmith_index_u32(select(min(3928u, _wgslsmith_dot_vec2_u32(~var_0.c.a.zy, vec2<u32>(4294967295u, 86196u))), _wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(35694u, u_input.d), 4294967295u), _wgslsmith_add_u32(_wgslsmith_sub_u32(54578u, var_0.c.a.x), func_2(vec3<f32>(-1000f, 1283f, 886f), var_0.e.a.x, vec3<i32>(-3530i, -2147483647i, global2[_wgslsmith_index_u32(var_0.d.a.a.x, 24u)]), 4294967295u).a.a.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, var_0.d.a.a.x, 4294967295u), var_0.e.a & var_0.c.a)), any(select(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), vec3<bool>(false, var_0.b.x, true), vec3<bool>(var_0.b.x, var_0.b.x, false))) & !var_0.b.x), 24u)]);
}

