struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: vec2<f32>,
    d: vec3<bool>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: array<bool, 8> = array<bool, 8>(true, false, false, true, false, true, true, false);

var<private> global2: Struct_1 = Struct_1(vec3<f32>(-340f, -433f, -1605f), -1i, -1i);

var<private> global3: array<i32, 26>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<f32>) -> vec2<f32> {
    var var_0 = _wgslsmith_sub_i32(~arg_2.b.x, min(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-2284i, arg_2.b.x) >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), vec2<i32>(arg_2.b.x, arg_2.b.x)), arg_2.b.zy), global3[_wgslsmith_index_u32(~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 5009u, 1u))), 26u)]));
    let var_1 = vec4<u32>(4294967295u, 87446u, min(~4294967295u, abs(~u_input.a.x)), abs(14029u & _wgslsmith_sub_u32(u_input.a.x, ~u_input.a.x)));
    var var_2 = global3[_wgslsmith_index_u32(~(~(~(19751u >> (var_1.x % 32u))) & _wgslsmith_add_u32(33154u, select(~var_1.x, abs(1u), arg_2.a.x > 1000f))), 26u)];
    var var_3 = Struct_3(!select(vec4<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1.x, u_input.a.x), 8u)], false, false || global1[_wgslsmith_index_u32(0u, 8u)]), !(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(1u, 8u)], false)), !vec4<bool>(global1[_wgslsmith_index_u32(var_1.x, 8u)], false, true, true)), !all(select(vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 8u)], false, global1[_wgslsmith_index_u32(var_1.x, 8u)]), vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(1691u, 8u)]), global1[_wgslsmith_index_u32(u_input.a.x, 8u)])) == (-952f > _wgslsmith_f_op_f32(arg_2.a.x - _wgslsmith_f_op_f32(856f * arg_1.a.x))), vec2<f32>(-255f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -628f)))), select(vec3<bool>(all(select(vec4<bool>(true, true, false, false), vec4<bool>(global1[_wgslsmith_index_u32(23930u, 8u)], true, global1[_wgslsmith_index_u32(36392u, 8u)], false), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(var_1.x, 8u)], global1[_wgslsmith_index_u32(44904u, 8u)], false))), ~arg_2.b.x != _wgslsmith_mult_i32(-9615i, 17538i), any(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], true), true))), select(select(vec3<bool>(false, false, false), !vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.a.x, 8u)]), select(vec3<bool>(false, true, false), vec3<bool>(true, global1[_wgslsmith_index_u32(72575u, 8u)], global1[_wgslsmith_index_u32(u_input.a.x, 8u)]), global1[_wgslsmith_index_u32(u_input.a.x, 8u)])), vec3<bool>(!global1[_wgslsmith_index_u32(1u, 8u)], false, false), true && global1[_wgslsmith_index_u32(u_input.a.x >> (1u % 32u), 8u)]), global1[_wgslsmith_index_u32(~u_input.a.x, 8u)] & any(select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(1u, 8u)]), vec3<bool>(true, false, false), vec3<bool>(global1[_wgslsmith_index_u32(var_1.x, 8u)], false, global1[_wgslsmith_index_u32(var_1.x, 8u)])))), var_1.ww);
    let var_4 = select(select(select(!(!vec4<bool>(true, true, var_3.d.x, true)), vec4<bool>(all(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 8u)], var_3.d.x)), true, !global1[_wgslsmith_index_u32(98240u, 8u)], 1489f == arg_2.a.x), global1[_wgslsmith_index_u32(~(var_3.e.x | 34341u), 8u)]), var_3.a, var_3.a), var_3.a, true);
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(262f, 893f))), _wgslsmith_f_op_f32(round(arg_1.a.x))) - var_3.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_2.a.x)) + -1000f));
}

fn func_2() -> vec3<bool> {
    var var_0 = !global1[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), 8u)] & all(select(select(vec3<bool>(false, global1[_wgslsmith_index_u32(53211u, 8u)], global1[_wgslsmith_index_u32(u_input.a.x, 8u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 8u)], true), false), !(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], false, false)), !select(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 8u)], false), vec3<bool>(global1[_wgslsmith_index_u32(20228u, 8u)], global1[_wgslsmith_index_u32(u_input.a.x, 8u)], global1[_wgslsmith_index_u32(0u, 8u)]), global1[_wgslsmith_index_u32(u_input.a.x, 8u)])));
    let var_1 = 10077u;
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(-global2.a), 1i, -1i);
    var var_2 = global3[_wgslsmith_index_u32(var_1, 26u)];
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1184f), global2.a.x)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_3(global2.a.x, Struct_2(vec2<f32>(-862f, global2.a.x), vec3<i32>(u_input.b.x, 0i, global2.c)), Struct_2(vec2<f32>(global2.a.x, global2.a.x), vec3<i32>(u_input.b.x, global3[_wgslsmith_index_u32(0u, 26u)], global3[_wgslsmith_index_u32(var_1, 26u)])), vec4<f32>(global2.a.x, -1235f, 1000f, 1332f))))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1280f, global2.a.x))))), -_wgslsmith_clamp_vec3_i32(-select(vec3<i32>(-2147483647i, -63903i, global3[_wgslsmith_index_u32(4294967295u, 26u)]), vec3<i32>(global2.b, -9051i, global2.b), global1[_wgslsmith_index_u32(12398u, 8u)]), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 26u)], 10411i, global2.b), vec3<i32>(0i, -25481i, -1i)), ~vec3<i32>(global3[_wgslsmith_index_u32(1u, 26u)], -67699i, global3[_wgslsmith_index_u32(u_input.a.x, 26u)])), -select(vec3<i32>(-24520i, 1i, -1355i), vec3<i32>(0i, -12543i, global2.b), vec3<bool>(true, false, true))));
    return vec3<bool>(!global1[_wgslsmith_index_u32(~0u, 8u)], true, true);
}

fn func_1() -> vec3<i32> {
    global0 = array<Struct_1, 26>();
    var var_0 = Struct_3(vec4<bool>(global1[_wgslsmith_index_u32(21244u, 8u)] != true, global1[_wgslsmith_index_u32(u_input.a.x, 8u)], !(!any(vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(35470u, 8u)]))), global1[_wgslsmith_index_u32(~1u, 8u)]), !global1[_wgslsmith_index_u32(max(u_input.a.x, firstLeadingBit(_wgslsmith_mod_u32(u_input.a.x, 0u))), 8u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global2.a.yx, vec2<f32>(924f, -701f)))))), select(!select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(1u, 8u)]), !vec3<bool>(true, true, global1[_wgslsmith_index_u32(22565u, 8u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], false, global1[_wgslsmith_index_u32(1u, 8u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], global1[_wgslsmith_index_u32(u_input.a.x, 8u)], global1[_wgslsmith_index_u32(80018u, 8u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], global1[_wgslsmith_index_u32(u_input.a.x, 8u)], true))), select(func_2(), vec3<bool>(false, !global1[_wgslsmith_index_u32(u_input.a.x, 8u)], global1[_wgslsmith_index_u32(u_input.a.x, 8u)]), !vec3<bool>(true, global1[_wgslsmith_index_u32(28139u, 8u)], global1[_wgslsmith_index_u32(u_input.a.x, 8u)])), true), vec2<u32>(select(u_input.a.x, ~(1u & u_input.a.x), any(func_2())), u_input.a.x));
    let var_1 = !select(false, any(!vec3<bool>(var_0.d.x, var_0.b, global1[_wgslsmith_index_u32(0u, 8u)])), var_0.a.x) | true;
    let var_2 = Struct_3(!var_0.a, false, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -365f)) * global2.a.zx), _wgslsmith_f_op_vec2_f32(select(global2.a.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.c + vec2<f32>(var_0.c.x, 1974f))), global1[_wgslsmith_index_u32(8876u, 8u)])), func_2().yy)), vec3<bool>(any(select(var_0.a, var_0.a, var_0.a.x)) == any(!var_0.a), true, true), var_0.e);
    let var_3 = vec3<f32>(global2.a.x, var_0.c.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.c.x)), _wgslsmith_div_f32(global2.a.x, -1000f)), _wgslsmith_f_op_f32(-var_2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1362f, -284f)))));
    return abs(vec3<i32>(-17000i, 2147483647i, i32(-1i) * -14632i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<f32>(global2.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -245f), 1000f))), min(func_1(), _wgslsmith_clamp_vec3_i32(-func_1(), vec3<i32>(global3[_wgslsmith_index_u32(1u, 26u)], -10838i, -12561i) >> (vec3<u32>(u_input.a.x, 54973u, u_input.a.x) % vec3<u32>(32u)), vec3<i32>(global2.c | u_input.b.x, global3[_wgslsmith_index_u32(u_input.a.x, 26u)], -2147483647i | global3[_wgslsmith_index_u32(u_input.a.x, 26u)]))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(global2.a, global2.a, false)), min(~min(74782i, -1i), _wgslsmith_dot_vec3_i32(var_0.b, min(vec3<i32>(var_0.b.x, -31699i, 1i), vec3<i32>(-51950i, -36988i, 0i)))) ^ (var_0.b.x >> (~24699u % 32u)), _wgslsmith_add_i32(global3[_wgslsmith_index_u32(4294967295u & select(~87124u, u_input.a.x, !global1[_wgslsmith_index_u32(29920u, 8u)]), 26u)], 1i));
    var var_2 = Struct_3(select(!(!(!vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 8u)], false, true))), select(select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 8u)], true, global1[_wgslsmith_index_u32(4294967295u, 8u)]), vec4<bool>(false, true, global1[_wgslsmith_index_u32(54403u, 8u)], global1[_wgslsmith_index_u32(1u, 8u)]), vec4<bool>(global1[_wgslsmith_index_u32(1u, 8u)], true, global1[_wgslsmith_index_u32(51017u, 8u)], true)), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 8u)], global1[_wgslsmith_index_u32(1u, 8u)], false), global1[_wgslsmith_index_u32(u_input.a.x, 8u)]), select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], true, false, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], global1[_wgslsmith_index_u32(88780u, 8u)], true, global1[_wgslsmith_index_u32(13049u, 8u)]), global1[_wgslsmith_index_u32(u_input.a.x, 8u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 8u)], false, global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(u_input.a.x, 8u)]), vec4<bool>(global1[_wgslsmith_index_u32(0u, 8u)], false, global1[_wgslsmith_index_u32(49084u, 8u)], global1[_wgslsmith_index_u32(u_input.a.x, 8u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], global1[_wgslsmith_index_u32(37791u, 8u)], global1[_wgslsmith_index_u32(u_input.a.x, 8u)], true)), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 8u)], global1[_wgslsmith_index_u32(u_input.a.x, 8u)])), select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.a.x, 8u)], true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 8u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 8u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(u_input.a.x, 8u)], false))), true), (0u <= u_input.a.x) || true, vec2<f32>(-186f, global2.a.x), vec3<bool>(func_2().x, !global1[_wgslsmith_index_u32(45333u, 8u)], all(select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(90584u, 8u)], global1[_wgslsmith_index_u32(u_input.a.x, 8u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(44385u, 8u)], global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(0u, 8u)]), global1[_wgslsmith_index_u32(0u, 8u)])) || select(all(vec4<bool>(global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(53904u, 8u)], global1[_wgslsmith_index_u32(u_input.a.x, 8u)], global1[_wgslsmith_index_u32(u_input.a.x, 8u)])), any(vec4<bool>(false, false, false, false)), global1[_wgslsmith_index_u32(u_input.a.x, 8u)] & false)), u_input.a.yy);
    let var_3 = vec4<u32>(_wgslsmith_clamp_u32(1u, u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.e.x, 1u << (0u % 32u), firstLeadingBit(u_input.a.x)), max(max(vec3<u32>(var_2.e.x, 17869u, u_input.a.x), vec3<u32>(1u, var_2.e.x, 4243u)), select(vec3<u32>(u_input.a.x, 1u, var_2.e.x), vec3<u32>(55651u, u_input.a.x, 36640u), vec3<bool>(global1[_wgslsmith_index_u32(37033u, 8u)], true, global1[_wgslsmith_index_u32(4294967295u, 8u)]))))), var_2.e.x, min(var_2.e.x, u_input.a.x), ((u_input.a.x << (~var_2.e.x % 32u)) | u_input.a.x) & _wgslsmith_mod_u32(u_input.a.x, var_2.e.x));
    let var_4 = firstLeadingBit(-18805i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(firstTrailingBit(var_0.b.x), _wgslsmith_mult_i32(-2147483647i, firstTrailingBit(21222i))), 1587f, var_1.a);
}

