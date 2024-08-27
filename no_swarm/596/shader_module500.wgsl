struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: bool,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 29>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1() -> bool {
    global0 = array<vec4<bool>, 29>();
    let var_0 = 2147483647i;
    let var_1 = global0[_wgslsmith_index_u32(4294967295u, 29u)];
    var var_2 = true;
    var_2 = !all(var_1.yzx);
    return false != ((u_input.b.x == 5572i) && var_1.x);
}

fn func_3(arg_0: Struct_5) -> vec3<bool> {
    let var_0 = ~0u;
    var var_1 = Struct_3(Struct_2(_wgslsmith_clamp_i32(-1i, -43155i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.b.yx, u_input.c.xy), _wgslsmith_add_i32(-1i, u_input.c.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1265f, 1000f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(237f, 915f), vec2<f32>(1000f, 361f)))), Struct_1(arg_0.c.a, -31130i << (~var_0 % 32u))), u_input.d, true);
    var var_2 = arg_0.c;
    var_2 = Struct_1(var_2.a, _wgslsmith_div_i32(~(-2147483647i), ~u_input.c.x));
    global0 = array<vec4<bool>, 29>();
    return !select(select(select(var_1.a.c.a.xyy, !arg_0.c.a.yxz, !var_1.c), vec3<bool>(var_1.a.c.a.x, arg_0.c.a.x, true), true), var_1.a.c.a.xxy, vec3<bool>(all(vec2<bool>(var_1.a.c.a.x, arg_0.c.a.x)), _wgslsmith_dot_vec3_i32(u_input.c.zxy, u_input.b) > (u_input.c.x << (var_0 % 32u)), arg_0.c.a.x));
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: f32) -> vec2<f32> {
    global0 = array<vec4<bool>, 29>();
    global0 = array<vec4<bool>, 29>();
    var var_0 = arg_2.b;
    let var_1 = _wgslsmith_f_op_f32(-arg_3);
    let var_2 = arg_1;
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(1590f)), arg_3), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2269f, var_1)))))))));
}

fn func_2(arg_0: vec4<i32>) -> bool {
    var var_0 = !all(!global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 15106u), vec4<u32>(1u, u_input.d.x, u_input.d.x, u_input.d.x)), 29u)]);
    let var_1 = Struct_2(_wgslsmith_clamp_i32(arg_0.x, _wgslsmith_mod_i32(~u_input.a, ~(-arg_0.x)), firstLeadingBit(-arg_0.x)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_4(452f, !func_3(Struct_5(arg_0.xwx, u_input.a, Struct_1(vec4<bool>(false, false, false, false), 51311i))), Struct_3(Struct_2(arg_0.x, vec2<f32>(246f, -1000f), Struct_1(vec4<bool>(true, false, false, true), arg_0.x)), select(u_input.d, u_input.d, true), all(vec4<bool>(false, false, true, false))), -1040f)))), Struct_1(!global0[_wgslsmith_index_u32(~(~40340u), 29u)], ~_wgslsmith_div_i32(-1i, 1i)));
    global0 = array<vec4<bool>, 29>();
    var var_2 = Struct_4(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1578f, var_1.b.x, var_1.b.x, var_1.b.x) - vec4<f32>(var_1.b.x, var_1.b.x, var_1.b.x, var_1.b.x)), vec4<f32>(var_1.b.x, 1557f, -591f, var_1.b.x), !var_1.c.a.x)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.b.x, -2056f, 888f, -1610f))))))));
    let var_3 = countOneBits(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_0.wxz, u_input.b, vec3<i32>(0i, ~(-1i), arg_0.x)), vec3<i32>(var_1.c.b, i32(-1i) * -81593i, var_1.c.b)));
    return !(true == any(select(!vec4<bool>(var_2.a, var_2.a, false, true), select(global0[_wgslsmith_index_u32(18480u, 29u)], vec4<bool>(var_2.a, false, var_2.a, var_2.a), vec4<bool>(true, var_1.c.a.x, false, true)), select(global0[_wgslsmith_index_u32(63450u, 29u)], vec4<bool>(var_2.a, false, var_2.a, var_2.a), vec4<bool>(var_2.a, var_2.a, false, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec3<bool>(false, select(select(true, all(vec2<bool>(false, false)), func_1()), true, all(vec4<bool>(true, true, true, true))), select(func_1() && func_2(u_input.c), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, 9276u), vec3<u32>(u_input.d.x, 1u, u_input.d.x)) == u_input.d.x, all(select(vec2<bool>(true, true), vec2<bool>(true, false), false)))));
    var_0 = _wgslsmith_clamp_i32(min(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.c.xzz, u_input.b), u_input.c.zzy), reverseBits(u_input.a)), -u_input.b.x, u_input.b.x) < _wgslsmith_div_i32(u_input.b.x ^ (~u_input.c.x >> (~7257u % 32u)), _wgslsmith_div_i32(_wgslsmith_add_i32(73656i, u_input.b.x), ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -2147483647i, u_input.c.x, u_input.a), vec4<i32>(7404i, -2147483647i, u_input.b.x, -1i))));
    var_0 = any(select(vec2<bool>(select(true, true, false), true), vec2<bool>(true, true), all(vec2<bool>(true, true))));
    var var_1 = ~(~4294967295u);
    let var_2 = vec4<bool>(true, !(!(true && func_3(Struct_5(vec3<i32>(37992i, u_input.c.x, 39850i), 19973i, Struct_1(global0[_wgslsmith_index_u32(1u, 29u)], -8568i))).x)), any(global0[_wgslsmith_index_u32(0u, 29u)]), all(vec4<bool>(false, true, false, true)));
    var_0 = true;
    var var_3 = Struct_5(u_input.b, -_wgslsmith_add_i32(u_input.c.x & u_input.b.x, max(u_input.b.x, ~16322i)), Struct_1(vec4<bool>(true, -1i <= abs(u_input.a), u_input.d.x == firstLeadingBit(u_input.d.x), func_1()), u_input.b.x));
    var_3 = Struct_5(vec3<i32>(-2147483647i, 37239i, firstTrailingBit(_wgslsmith_div_i32(~var_3.b, _wgslsmith_sub_i32(-6592i, u_input.a)))), i32(-1i) * -u_input.c.x, var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_add_i32(1i, u_input.b.x) & var_3.b), vec3<i32>(u_input.a, u_input.a, -_wgslsmith_div_i32(u_input.a, var_3.c.b << (u_input.d.x % 32u))), _wgslsmith_div_vec4_f32(vec4<f32>(-112f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1120f)), -970f, _wgslsmith_f_op_f32(1f - -1345f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-862f, _wgslsmith_f_op_f32(f32(-1f) * -265f), _wgslsmith_f_op_f32(-282f - 779f), 666f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-787f, -2003f, -272f, -2536f) + vec4<f32>(924f, -1966f, 149f, -125f))), var_3.c.a.x))), _wgslsmith_f_op_f32(abs(563f)));
}

