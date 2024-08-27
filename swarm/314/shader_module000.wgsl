struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec3<bool>, 3>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> vec4<bool> {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -983f), _wgslsmith_f_op_f32(global0.x - 549f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-657f + -793f)), -440f);
    var var_0 = _wgslsmith_div_i32(min(u_input.a.x, i32(-1i) * -18105i), u_input.c.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(global0.yw));
    var_1 = global0.yz;
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global0.xz))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1108f, global0.x)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, 204f)) * _wgslsmith_f_op_vec2_f32(min(global0.yx, vec2<f32>(-1000f, -1046f))))))));
    return vec4<bool>(_wgslsmith_f_op_f32(min(-207f, _wgslsmith_f_op_f32(abs(var_1.x)))) <= 1122f, true, true, false);
}

fn func_3(arg_0: u32, arg_1: vec3<u32>) -> vec4<bool> {
    global1 = array<vec3<bool>, 3>();
    var var_0 = u_input.c.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(631f - global0.x), _wgslsmith_div_f32(-1436f, global0.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-322f, 182f, -487f))), _wgslsmith_f_op_vec3_f32(-global0.yxx)))) - global0.xxy);
    let var_2 = 1u;
    var var_3 = Struct_2(Struct_1(true), _wgslsmith_f_op_f32(-1369f + _wgslsmith_f_op_f32(-global0.x)), Struct_1(all(!select(global1[_wgslsmith_index_u32(0u, 3u)], vec3<bool>(true, false, true), true))), Struct_1(_wgslsmith_f_op_f32(-global0.x) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-650f)) + global0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_1.zz))))));
    return select(select(!(!(!vec4<bool>(true, true, var_3.c.a, true))), vec4<bool>(true, all(!vec2<bool>(var_3.a.a, var_3.c.a)), false, false && var_3.a.a), select(!vec4<bool>(var_3.d.a, var_3.d.a, var_3.d.a, var_3.c.a), !(!vec4<bool>(var_3.a.a, false, true, var_3.c.a)), any(!vec4<bool>(var_3.c.a, var_3.d.a, true, true)))), !func_2(), select(vec4<bool>(func_2().x, any(func_2().zz), all(!vec4<bool>(true, true, var_3.a.a, var_3.c.a)), _wgslsmith_div_f32(var_3.e.x, var_3.e.x) < -1939f), !vec4<bool>(var_3.a.a & true, var_3.d.a, false, true), var_3.c.a));
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_3) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(659f, 672f, 2344f, global0.x), vec4<f32>(1000f, -1574f, -845f, global0.x)))) * vec4<f32>(1000f, global0.x, global0.x, _wgslsmith_f_op_f32(step(401f, global0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, -606f, 410f, global0.x), vec4<f32>(global0.x, global0.x, global0.x, -1467f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<f32>(-2027f, global0.x, global0.x, -1161f))), -618f == global0.x)), vec4<f32>(-1000f, _wgslsmith_f_op_f32(439f - global0.x), _wgslsmith_f_op_f32(f32(-1f) * -218f), global0.x))), func_2()));
    var var_1 = Struct_2(arg_2.b, 558f, arg_2.c, Struct_1((_wgslsmith_mod_u32(arg_2.a, 40481u) ^ (arg_2.e.x | arg_2.a)) >= u_input.d), var_0.yy);
    var_1 = Struct_2(var_1.d, var_1.e.x, Struct_1(!var_1.c.a), Struct_1(arg_2.b.a), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(420f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1032f)))))));
    var var_2 = !(!select(func_2().yz, func_2().yx, var_1.a.a));
    var var_3 = var_1.a.a;
    return !(!select(!select(vec4<bool>(arg_0, true, var_1.d.a, arg_2.b.a), vec4<bool>(var_1.d.a, true, var_2.x, true), false), func_3(~37404u, abs(vec3<u32>(1u, arg_2.a, 36172u))), vec4<bool>(false, var_1.d.a, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 3>();
    global1 = array<vec3<bool>, 3>();
    global1 = array<vec3<bool>, 3>();
    let var_0 = select(func_1(any(vec2<bool>(true, true)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(0i, u_input.a.x, -918i, u_input.c.x), -min(vec4<i32>(u_input.a.x, u_input.c.x, u_input.a.x, u_input.c.x), vec4<i32>(-16169i, u_input.a.x, -2147483647i, u_input.a.x)), _wgslsmith_div_vec4_i32(u_input.c, _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, -13071i, u_input.a.x, 1i), u_input.a))), Struct_3(u_input.b, Struct_1(true), Struct_1(true), ~vec2<i32>(1i, -2147483647i), select(_wgslsmith_add_vec4_u32(vec4<u32>(44512u, 0u, u_input.b, u_input.d), vec4<u32>(4294967295u, 47003u, u_input.d, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.d, 131833u), vec4<u32>(u_input.d, u_input.d, 4294967295u, 25217u)), false))), func_3(u_input.b, min(firstTrailingBit(vec3<u32>(u_input.b, 1u, 70190u)), ~(~vec3<u32>(21587u, 1u, 87039u)))), false);
    var var_1 = Struct_1(-3372i < (~(61809i >> (u_input.b % 32u)) & _wgslsmith_sub_i32(1i, _wgslsmith_dot_vec2_i32(u_input.a.yx, u_input.a.zx))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d >> (u_input.b % 32u), u_input.d, firstLeadingBit(~(u_input.b ^ u_input.b)));
}

