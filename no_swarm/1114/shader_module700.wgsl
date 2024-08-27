struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 22> = array<vec3<bool>, 22>(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true));

var<private> global1: f32;

var<private> global2: vec2<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: Struct_1) -> vec2<f32> {
    global2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - -1430f) * -1089f), _wgslsmith_f_op_f32(f32(-1f) * -1940f)))));
    var var_0 = arg_1;
    var var_1 = 1302f;
    return arg_0.xx;
}

fn func_2(arg_0: Struct_3, arg_1: bool) -> Struct_3 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - 238f);
    var var_0 = i32(-1i) * -arg_0.c.b.x;
    var var_1 = arg_1;
    global2 = _wgslsmith_f_op_vec2_f32(func_3(arg_0.b, Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.x, 1f)))), arg_0.c));
    let var_2 = 1i;
    return arg_0;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3) -> i32 {
    var var_0 = 1u;
    var var_1 = Struct_4(global2.x);
    global1 = -477f;
    var var_2 = vec4<bool>(false, false, true, false);
    var var_3 = Struct_3(func_2(func_2(func_2(func_2(arg_1, var_2.x), arg_1.a >= u_input.c), select(!var_2.x, true, true)), true).a, arg_1.b, arg_1.d, arg_1.d);
    return ~(~(~1i));
}

fn func_1() -> i32 {
    var var_0 = true;
    var var_1 = _wgslsmith_add_i32(~(-35976i), _wgslsmith_add_i32(1i, u_input.e.x)) > u_input.d;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(global2.x * global2.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, global2.x) - 2029f));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x * global2.x), _wgslsmith_f_op_f32(1546f + 329f)), global2.x) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_2 + var_2), _wgslsmith_f_op_vec2_f32(-var_2))))), _wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.c, 1u, reverseBits(1u)), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 113980u, 94753u), vec3<u32>(0u, u_input.c, 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(62911u, u_input.c, 44613u), vec3<u32>(u_input.c, u_input.c, u_input.c)), min(vec3<u32>(28931u, 0u, 1u), vec3<u32>(50669u, u_input.c, u_input.c)))), vec3<f32>(1338f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(460f, 1628f)), _wgslsmith_f_op_f32(sign(var_2.x)), true)) - _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), var_2.x)));
    var var_4 = _wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(min(vec4<i32>(u_input.d, u_input.a, u_input.d, -2374i), vec4<i32>(39261i, -2147483647i, u_input.b, u_input.b)) >> (~vec4<u32>(var_3.b.x, u_input.c, 8348u, u_input.c) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(1i, 9071i, -45867i, 2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.e.x, -1i, -2147483647i), vec4<i32>(u_input.a, -17807i, u_input.e.x, 6276i)))), (vec4<i32>(max(2147483647i, -34153i), ~42364i, countOneBits(60811i), 1i) & (abs(vec4<i32>(u_input.d, u_input.a, 18600i, u_input.d)) >> (vec4<u32>(55787u, var_3.b.x, u_input.c, var_3.b.x) % vec4<u32>(32u)))) >> (~reverseBits(min(vec4<u32>(0u, 25719u, var_3.b.x, 1u), vec4<u32>(u_input.c, 68891u, 0u, var_3.b.x))) % vec4<u32>(32u)));
    return ~(-_wgslsmith_clamp_i32(func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -877f, global2.x, var_2.x)), func_2(Struct_3(0u, vec3<f32>(1879f, var_3.c.x, var_3.c.x), Struct_1(-1201f, vec4<i32>(u_input.e.x, -2147483647i, 74293i, 29625i), 1000f), Struct_1(global2.x, vec4<i32>(0i, u_input.e.x, u_input.a, u_input.b), 388f)), false)), -2147483647i, u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-3314f, -1141f), vec2<f32>(553f, -766f))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1133f), _wgslsmith_f_op_f32(max(global2.x, 278f))))), _wgslsmith_mod_vec3_u32((~vec3<u32>(u_input.c, 4294967295u, u_input.c) | _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.c, 111072u), vec3<u32>(u_input.c, u_input.c, 23586u))) & _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 14615u, u_input.c) | vec3<u32>(u_input.c, u_input.c, u_input.c), ~vec3<u32>(1u, 6873u, 4294967295u)), vec3<u32>(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 36494u, 16660u), vec3<u32>(u_input.c, u_input.c, 1u))), 33536u, u_input.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_div_f32(-1000f, global2.x), _wgslsmith_f_op_f32(round(global2.x)), -802f)))));
    global1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(min(147f, _wgslsmith_f_op_f32(1325f + global2.x)))), 606f);
    let var_1 = true || any(global0[_wgslsmith_index_u32(4294967295u, 22u)]);
    let var_2 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -456f));
    var var_3 = vec4<i32>(0i, _wgslsmith_add_i32(~(-2147483647i), u_input.d), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, ~u_input.d, -1i), -vec3<i32>(2147483647i, -47441i, 765i)), _wgslsmith_mod_i32(_wgslsmith_add_i32(-1i, 15225i), u_input.a)), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.x)) + -948f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(613f))))), var_2.a), abs(min(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_3.x, var_3.x, var_3.x, 1i), vec4<i32>(0i, -2147483647i, -11364i, 0i) << (vec4<u32>(0u, var_0.b.x, 33299u, var_0.b.x) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.b, u_input.a, -10044i), vec4<i32>(var_3.x, 1i, -2964i, 0i))), select(max(vec4<i32>(u_input.a, var_3.x, 23881i, -531i), vec4<i32>(u_input.d, u_input.b, 1i, -68368i)), ~vec4<i32>(2147483647i, -2147483647i, -2147483647i, u_input.b), !vec4<bool>(true, var_1, true, var_1)))), -_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, var_3.x), var_3.wz), _wgslsmith_add_vec2_i32(u_input.e.zx, var_3.zz)), vec2<i32>(0i, 7100i) << (~var_0.b.yz % vec2<u32>(32u))), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.c, 72626u, 0u, 38358u)), (vec4<u32>(45729u, u_input.c, var_0.b.x, 4294967295u) << (vec4<u32>(u_input.c, var_0.b.x, 1u, 1u) % vec4<u32>(32u))) | _wgslsmith_add_vec4_u32(vec4<u32>(0u, var_0.b.x, 4294967295u, u_input.c), vec4<u32>(4294967295u, var_0.b.x, var_0.b.x, u_input.c))), select(vec4<u32>(_wgslsmith_sub_u32(69683u, var_0.b.x), _wgslsmith_clamp_u32(var_0.b.x, 70916u, 0u), var_0.b.x, 22938u), ~(vec4<u32>(u_input.c, 19044u, u_input.c, 24977u) << (vec4<u32>(1u, 44676u, 18718u, var_0.b.x) % vec4<u32>(32u))), select(all(vec4<bool>(var_1, true, var_1, false)), var_1, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-var_0.a.x)), var_2.a, var_1)) * var_0.c.x));
}

