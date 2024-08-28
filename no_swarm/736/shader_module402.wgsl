struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2> = array<f32, 2>(-1801f, -1045f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    global0 = array<f32, 2>();
    global0 = array<f32, 2>();
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, 0u, 1u, u_input.b.x), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, u_input.d.x, u_input.a, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(18777u, u_input.d.x, u_input.a, u_input.b.x) ^ vec4<u32>(u_input.b.x, 36433u, 4294967295u, u_input.d.x), reverseBits(vec4<u32>(u_input.d.x, u_input.d.x, u_input.b.x, 1u)))));
    global0 = array<f32, 2>();
    let var_1 = Struct_2(-_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)) ^ (vec3<i32>(2147483647i, 0i, u_input.c.x) | vec3<i32>(-1i, 2147483647i, u_input.c.x)), ~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, 2147483647i), vec3<i32>(u_input.c.x, 26411i, 0i))), ~u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(abs(u_input.c.x), _wgslsmith_mult_i32(u_input.c.x, ~u_input.c.x), u_input.c.x, -_wgslsmith_add_i32(u_input.c.x, u_input.c.x)), ~vec4<i32>(-u_input.c.x, -46603i, u_input.c.x, 11702i)), Struct_1(_wgslsmith_div_i32(-u_input.c.x << (~u_input.b.x % 32u), ~u_input.c.x), vec4<bool>(true, _wgslsmith_f_op_f32(724f - global0[_wgslsmith_index_u32(u_input.d.x, 2u)]) >= 736f, all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false)), true), vec3<bool>(true, select(true, all(vec2<bool>(false, true)), true), all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), false))), vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(4294967295u, 2u)])), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.x, 2u)] - -1000f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1341f, -746f, global0[_wgslsmith_index_u32(u_input.a, 2u)]), vec3<f32>(1586f, -522f, -234f))))))));
    return all(!select(!var_1.d.b, vec4<bool>(var_1.d.c.x, var_1.d.d.x, var_1.d.c.x, var_1.d.d.x), var_1.d.c.x)) && false;
}

fn func_2(arg_0: vec3<u32>) -> bool {
    global0 = array<f32, 2>();
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~(~u_input.d.x), reverseBits(firstTrailingBit(u_input.a)), min(u_input.a, abs(1u))), 2u)] * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d.x, 2u)] + -1372f));
    var var_2 = vec2<u32>(~(~select(~4294967295u, firstLeadingBit(102568u), -387f == global0[_wgslsmith_index_u32(arg_0.x, 2u)])), 4294967295u);
    var var_3 = Struct_1(u_input.c.x, select(!vec4<bool>(var_0, all(vec4<bool>(false, var_0, var_0, var_0)), true, true), vec4<bool>((u_input.c.x >> (u_input.a % 32u)) < u_input.c.x, (755f > global0[_wgslsmith_index_u32(9552u, 2u)]) && true, func_3(), var_0), select(vec4<bool>(var_0, false | var_0, var_2.x <= 0u, !var_0), select(vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(var_0, var_0, var_0, false), true), var_0)), select(vec3<bool>(all(select(vec4<bool>(true, false, var_0, true), vec4<bool>(var_0, true, var_0, var_0), var_0)), !(global0[_wgslsmith_index_u32(0u, 2u)] >= global0[_wgslsmith_index_u32(arg_0.x, 2u)]), true), !select(!vec3<bool>(var_0, true, false), vec3<bool>(var_0, var_0, true), true && var_0), false), select(select(!vec2<bool>(var_0, var_0), vec2<bool>(select(var_0, false, var_0), any(vec2<bool>(var_0, true))), select(select(vec2<bool>(false, true), vec2<bool>(false, var_0), false), !vec2<bool>(var_0, false), !vec2<bool>(var_0, var_0))), vec2<bool>(true, all(!vec2<bool>(var_0, false))), u_input.c.x != _wgslsmith_clamp_i32(u_input.c.x, -1i, 0i)));
    return var_0;
}

fn func_1() -> bool {
    var var_0 = all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(false, func_2(u_input.d)), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), true), vec2<bool>(select(true, false, false), 614f == global0[_wgslsmith_index_u32(21993u, 2u)]))));
    let var_1 = u_input.c.x | (abs(countOneBits(-2147483647i)) ^ u_input.c.x);
    let var_2 = global0[_wgslsmith_index_u32(u_input.d.x, 2u)];
    let var_3 = Struct_1(-1i, vec4<bool>(true, true, any(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), false)), true), vec3<bool>(func_3(), select(true, any(vec2<bool>(true, true)), true), any(vec3<bool>(true, true, true))), !select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false))));
    var var_4 = 2427f;
    return !(_wgslsmith_add_u32(select(u_input.a | 39296u, ~u_input.b.x, false), u_input.d.x) >= (_wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.a, 11614u), 4294967295u, 0u) & ~_wgslsmith_mod_u32(28363u, u_input.a)));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 2>();
    var var_0 = vec2<f32>(1f, 1f);
    var var_1 = func_4(4294967295u, var_0.x, Struct_1(-2147483647i, vec4<bool>(select(true, true, any(vec3<bool>(true, false, false))), !func_1(), true, _wgslsmith_mult_i32(u_input.c.x, u_input.c.x) >= (17665i >> (u_input.d.x % 32u))), vec3<bool>(true, u_input.d.x >= 4294967295u, true || any(vec4<bool>(true, true, true, true))), select(vec2<bool>(true, true), vec2<bool>(u_input.a != 16458u, false), true)), u_input.d.zy);
    var var_2 = Struct_2(vec3<i32>(~0i, 1i, 1i), 14358i, ~max(-2147483647i, -1i), func_4(u_input.d.x, -1072f, Struct_1(u_input.c.x, var_1.b, func_4(u_input.b.x, 1f, Struct_1(-60341i, var_1.b, vec3<bool>(var_1.d.x, true, true), vec2<bool>(true, false)), firstTrailingBit(vec2<u32>(u_input.a, 57043u))).c, var_1.c.xz), ~(~vec2<u32>(33747u, 6916u))), vec3<f32>(-881f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(644f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(466f - var_0.x), _wgslsmith_f_op_f32(var_0.x + var_0.x), u_input.d.x != 4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1190f, global0[_wgslsmith_index_u32(u_input.a, 2u)]) + var_0.x)))));
    var_0 = var_2.e.zx;
    var_1 = Struct_1(1i, !var_2.d.b, vec3<bool>(all(vec4<bool>(false, var_2.d.d.x, func_2(u_input.d), true)), false, true), vec2<bool>(false, func_3()));
    let x = u_input.a;
    s_output = StorageBuffer(-202f);
}

