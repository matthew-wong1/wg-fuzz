struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<f32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12> = array<f32, 12>(343f, 426f, -2242f, -1411f, -612f, -639f, -1263f, -1000f, -160f, -654f, 774f, 1035f);

var<private> global1: array<vec4<f32>, 28>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> bool {
    var var_0 = Struct_2(arg_1);
    var_0 = Struct_2(var_0.a);
    global0 = array<f32, 12>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.a.c.zyy, vec3<f32>(arg_0.x, 312f, -1425f), vec3<bool>(arg_1.a.x, arg_1.a.x, var_0.a.a.x))), vec3<f32>(arg_1.c.x, arg_0.x, global0[_wgslsmith_index_u32(4294967295u, 12u)])))))), var_0.a.b, _wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.c.x))))), select(select(select(!var_0.a.a.ywz, !vec3<bool>(var_0.a.a.x, var_0.a.a.x, arg_1.a.x), vec3<bool>(var_0.a.a.x, false, var_0.a.a.x)), !arg_1.a.ywz, vec3<bool>(var_0.a.a.x, !arg_1.a.x, true)), var_0.a.a.ywz, false));
    var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.c.x, -749f, -275f)))), _wgslsmith_add_vec3_u32(arg_1.b, select(select(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a.b.x, var_0.a.b.x, 74679u), vec3<u32>(var_1.b.x, 17659u, var_1.b.x)), ~arg_1.b, vec3<bool>(arg_1.a.x, arg_1.a.x, var_1.d.x)), firstLeadingBit(~vec3<u32>(u_input.b.x, 108886u, var_0.a.b.x)), select(!var_0.a.a.xyx, var_1.d, select(vec3<bool>(var_0.a.a.x, var_1.d.x, var_0.a.a.x), var_1.d, var_1.d.x)))), -700f, vec3<bool>(all(select(var_0.a.a, arg_1.a, vec4<bool>(false, true, var_0.a.a.x, var_1.d.x))), true, !(!arg_1.a.x)));
    return all(!select(!(!vec4<bool>(false, false, var_0.a.a.x, var_0.a.a.x)), !vec4<bool>(var_0.a.a.x, false, var_0.a.a.x, true), var_0.a.a.x));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_dot_vec2_i32(select(-abs(_wgslsmith_add_vec2_i32(vec2<i32>(76311i, 52973i), vec2<i32>(-2147483647i, u_input.a))), countOneBits(_wgslsmith_mod_vec2_i32(max(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), countOneBits(vec2<i32>(-2147483647i, 1i)))), true & select(u_input.b.x <= 8839u, u_input.a >= u_input.a, any(vec3<bool>(false, true, false)))), vec2<i32>(i32(-1i) * -11199i, -1i));
    let var_1 = _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(~(4294967295u & u_input.b.x), u_input.b.x), u_input.b.zx, u_input.b.yy), ~((vec2<u32>(u_input.b.x, 86315u) << (vec2<u32>(0u, 98586u) % vec2<u32>(32u))) >> (u_input.b.zy % vec2<u32>(32u))));
    let var_2 = select(!vec4<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(true, false, true)), all(vec3<bool>(true, true, true)), true), vec4<bool>(false, !func_3(vec2<f32>(-622f, global0[_wgslsmith_index_u32(47078u, 12u)]), Struct_1(vec4<bool>(true, true, false, false), u_input.b, global1[_wgslsmith_index_u32(13035u, 28u)], vec3<i32>(-2147483647i, -30712i, 29433i))) && false, !(global0[_wgslsmith_index_u32(1u, 12u)] < global0[_wgslsmith_index_u32(1u, 12u)]) | all(vec2<bool>(false, true)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))))), u_input.a != u_input.a);
    global0 = array<f32, 12>();
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(0u, 12u)], -1148f, -251f), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-269f, global0[_wgslsmith_index_u32(4294967295u, 12u)], -819f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(59929u, 12u)], global0[_wgslsmith_index_u32(29014u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)]))))), _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b, u_input.b), u_input.b), u_input.b) << (reverseBits(vec3<u32>(38833u, 4294967295u >> (var_1.x % 32u), u_input.b.x)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(var_1.x)), 12u)] * global0[_wgslsmith_index_u32(var_1.x, 12u)])), !var_2.wxz);
    return any(select(!vec4<bool>(var_2.x, any(vec3<bool>(var_3.d.x, false, var_3.d.x)), true, var_2.x), var_2, false || !var_2.x));
}

fn func_1() -> bool {
    var var_0 = func_2();
    global0 = array<f32, 12>();
    var var_1 = !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true))), true, any(vec4<bool>(true, true, true, true)), !select(false, false, true)), all(vec2<bool>(true, all(vec4<bool>(false, true, false, true)))));
    global1 = array<vec4<f32>, 28>();
    let var_2 = vec4<bool>(var_1.x || (select(_wgslsmith_mult_i32(1i, 1i), u_input.a, all(vec4<bool>(false, var_1.x, false, false))) != u_input.a), !var_1.x, var_1.x, var_1.x);
    return !func_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1373f, global0[_wgslsmith_index_u32(u_input.b.x, 12u)]) * vec2<f32>(-1114f, -2072f)), vec2<f32>(-547f, global0[_wgslsmith_index_u32(u_input.b.x, 12u)]), func_3(vec2<f32>(global0[_wgslsmith_index_u32(61940u, 12u)], global0[_wgslsmith_index_u32(u_input.b.x, 12u)]), Struct_1(var_2, u_input.b, vec4<f32>(global0[_wgslsmith_index_u32(83855u, 12u)], 515f, 222f, global0[_wgslsmith_index_u32(u_input.b.x, 12u)]), vec3<i32>(2147483647i, u_input.a, 9246i))))), Struct_1(var_2, _wgslsmith_add_vec3_u32(vec3<u32>(1u, 12654u, 36169u), u_input.b), global1[_wgslsmith_index_u32(u_input.b.x & 0u, 28u)], vec3<i32>(u_input.a, 11312i, u_input.a))) || (!any(!var_2) | var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 12>();
    let var_0 = vec2<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(u_input.a != u_input.a, true, any(vec3<bool>(true, false, false)), true), vec4<bool>(func_1(), true, any(vec4<bool>(false, false, false, false)), true))), false);
    var var_1 = Struct_5(1u, Struct_4(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-316f, _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.b.x, 12u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 12u)], -615f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(14369u, 12u)], global0[_wgslsmith_index_u32(12955u, 12u)]))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.b.x, 12u)])) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 12u)] - 1020f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(1u, 12u)])))), _wgslsmith_f_op_f32(step(1f, 1252f)))), select(select(!var_0, !select(var_0, vec2<bool>(var_0.x, var_0.x), var_0.x), true), vec2<bool>(any(vec3<bool>(var_0.x, false, var_0.x)), true && (-8426i <= u_input.a)), true), select(!select(vec2<bool>(false, true), select(vec2<bool>(var_0.x, true), var_0, var_0.x), !var_0.x), !vec2<bool>(!var_0.x, true), vec2<bool>((u_input.a == u_input.a) | false, select(true, var_0.x, false))));
    var var_2 = 0u;
    global1 = array<vec4<f32>, 28>();
    var var_3 = abs(u_input.a);
    var var_4 = _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(~0i, u_input.a), abs(1i)), max(-2147483647i, u_input.a));
    global1 = array<vec4<f32>, 28>();
    var var_5 = Struct_4(var_1.b.b.xz, _wgslsmith_f_op_vec3_f32(vec3<f32>(-802f, global0[_wgslsmith_index_u32(~7490u, 12u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -280f)))) - var_1.b.b));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.xx, -1i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.b.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-624f)) + _wgslsmith_f_op_f32(floor(-864f))), 1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1014f, global0[_wgslsmith_index_u32(u_input.b.x, 12u)]), vec2<f32>(201f, global0[_wgslsmith_index_u32(u_input.b.x, 12u)])) - _wgslsmith_f_op_vec2_f32(var_5.b.zz * var_5.a)) + vec2<f32>(global0[_wgslsmith_index_u32(max(1u, var_1.a), 12u)], var_5.b.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.b.b.xz) + vec2<f32>(588f, global0[_wgslsmith_index_u32(u_input.b.x, 12u)])))), 16280u);
}

