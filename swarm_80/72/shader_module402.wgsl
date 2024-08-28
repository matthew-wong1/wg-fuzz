struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: vec2<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1000f);

var<private> global1: bool;

var<private> global2: vec3<f32>;

var<private> global3: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(-1939f);
    var var_1 = Struct_1(global0.a);
    var var_2 = ~(~4294967295u);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a - -723f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(step(-364f, _wgslsmith_f_op_f32(abs(global0.a)))))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, global0.a, _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1480f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1274f, -1268f, var_0.a))))));
    return var_0;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1694f * 335f), global3.a, true)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-178f)), _wgslsmith_f_op_f32(global3.a * 758f))))));
    global1 = all(!select(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(all(arg_0), true, !arg_0.x, arg_0.x), ~u_input.d.x < 0u));
    var var_1 = arg_0.x;
    var var_2 = func_2();
    global2 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1497f - _wgslsmith_f_op_f32(-433f * var_2.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1143f))) - func_2().a)), -877f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + _wgslsmith_f_op_f32(global3.a - func_2().a)));
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec3<u32>) -> f32 {
    var var_0 = arg_2;
    let var_1 = true;
    var var_2 = true;
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-148f, arg_1.x, func_3(vec3<bool>(var_1, false, false), arg_2, Struct_1(1446f)).a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-639f, arg_0.a, 692f))))))));
    global2 = vec3<f32>(_wgslsmith_f_op_f32(round(var_0.a)), _wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(-global2.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.a)))), _wgslsmith_f_op_f32(340f + 267f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1321f)), arg_1.x))));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> i32 {
    global2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a))), 1192f) * vec3<f32>(_wgslsmith_f_op_f32(abs(-1409f)), _wgslsmith_f_op_f32(func_4(func_3(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), func_2(), Struct_1(global3.a)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.xy), _wgslsmith_f_op_vec2_f32(min(global2.xy, global2.zx))), Struct_1(-1018f), vec3<u32>(_wgslsmith_div_u32(0u, u_input.d.x), ~u_input.d.x, u_input.d.x))), 448f));
    global1 = any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(false, true)), true, true, true)));
    let var_0 = ~firstTrailingBit(vec4<u32>(48998u, _wgslsmith_sub_u32(u_input.d.x, u_input.d.x), abs(~u_input.d.x), u_input.d.x));
    let var_1 = _wgslsmith_mult_u32(~u_input.d.x, ~var_0.x);
    let var_2 = _wgslsmith_f_op_f32(sign(110f));
    return _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.c.wxz, select(-vec3<i32>(-60309i, -2137i, arg_1), u_input.e, true)), u_input.b, abs(arg_1), 2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -978f));
    let var_1 = Struct_1(global2.x);
    var var_2 = 1u;
    var var_3 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.c.yw, vec2<i32>(func_1(var_0, -2147483647i), u_input.c.x)), firstTrailingBit(~(u_input.b | -2147483647i))), u_input.e.x & ~(-u_input.e.x), abs(u_input.c.x));
    var_2 = _wgslsmith_mod_u32(~4294967295u, min(29166u, (u_input.d.x >> (u_input.d.x % 32u)) << (60457u % 32u))) << (3019u % 32u);
    var_3 = vec3<i32>(0i, var_3.x, ~(-25488i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2163f * var_1.a) * _wgslsmith_f_op_f32(-global0.a)) - 461f), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(352f, -868f, -669f, -228f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global0.a, global3.a, var_0.a) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-578f, -1000f, 1364f, global2.x), vec4<f32>(global0.a, global2.x, global3.a, global3.a), vec4<bool>(false, true, false, true)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a, _wgslsmith_f_op_f32(f32(-1f) * -504f)) + vec2<f32>(_wgslsmith_f_op_f32(max(var_0.a, global3.a)), _wgslsmith_f_op_f32(-var_0.a))) - vec2<f32>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * -420f))), abs(u_input.c & vec4<i32>(_wgslsmith_mult_i32(var_3.x, -26885i), -30879i, 1i, ~2147483647i)));
}

