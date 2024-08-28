struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(false, true, false, false, true, true, false, true, true, false, false, false, false, false, true, true, false, false);

var<private> global1: f32;

var<private> global2: Struct_2;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: f32) -> i32 {
    return ~_wgslsmith_mod_i32(global2.b.x, 3315i);
}

fn func_2() -> Struct_1 {
    let var_0 = global2.c.d.x;
    var var_1 = select(select(select(select(select(global2.a.a, global2.a.c.zy, vec2<bool>(false, false)), select(global2.c.c.wz, global2.a.a, global2.a.a), !global2.a.a.x), select(global2.a.a, vec2<bool>(global2.a.a.x, global0[_wgslsmith_index_u32(u_input.d.x, 18u)]), true | global0[_wgslsmith_index_u32(u_input.d.x, 18u)]), !global0[_wgslsmith_index_u32(~42048u, 18u)]), global2.c.d, 1i > global2.b.x), vec2<bool>(all(!select(global2.a.c, global2.c.c, global2.c.c)), (func_3(vec4<bool>(true, true, false, global2.a.a.x), vec2<u32>(1u, u_input.d.x), global2.a.b.x) >= -13629i) & true), any(global2.c.a));
    var_1 = global2.c.a;
    global2 = Struct_2(Struct_1(global2.c.a, vec3<f32>(_wgslsmith_f_op_f32(floor(global2.a.b.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1330f, global2.c.b.x) + _wgslsmith_div_f32(global2.c.b.x, -190f)), 398f), !select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 18u)], true, global2.c.d.x), vec4<bool>(true, global2.c.d.x, true, global2.a.e), vec4<bool>(global2.c.d.x, false, false, false)), !vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), all(global2.a.a)), !(!global2.a.a), any(global2.c.a)), -reverseBits(firstLeadingBit(vec3<i32>(u_input.b, 2147483647i, 0i))) ^ global2.b, Struct_1(global2.c.c.zz, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.b.x, global2.a.b.x, global2.a.b.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(911f, 686f, global2.d.x) * vec3<f32>(1858f, -122f, global2.c.b.x))))), !select(select(global2.c.c, global2.a.c, true), select(global2.c.c, vec4<bool>(true, var_1.x, global0[_wgslsmith_index_u32(15515u, 18u)], global0[_wgslsmith_index_u32(u_input.d.x, 18u)]), global2.c.c), false), vec2<bool>(!var_1.x, !global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, u_input.d.x, u_input.d.x), 18u)]), true), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -732f))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(376f))))), 1576f, _wgslsmith_f_op_f32(637f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.c.b.x), 208f))), _wgslsmith_f_op_f32(global2.d.x + _wgslsmith_f_op_f32(-global2.a.b.x))));
    let var_2 = ((u_input.a & u_input.d.x) ^ 13375u) & u_input.d.x;
    return Struct_1(select(vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.d.x, 4294967295u), _wgslsmith_add_u32(21238u, 9786u)), 18u)], select(false, false, all(vec2<bool>(false, global2.c.d.x)))), global2.a.c.zw, vec2<bool>(var_1.x, false)), global2.c.b, select(select(vec4<bool>(var_1.x, 381f < global2.c.b.x, false, any(vec4<bool>(true, global2.a.a.x, true, true))), vec4<bool>(var_1.x, true, global0[_wgslsmith_index_u32(24324u, 18u)], true), vec4<bool>(!global0[_wgslsmith_index_u32(var_2, 18u)], true, 2147483647i >= u_input.b, false && global0[_wgslsmith_index_u32(0u, 18u)])), vec4<bool>(!var_1.x, true, false, true && var_1.x), global2.a.c), vec2<bool>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.d.x))) <= 788f, any(global2.c.c.xzy)), global0[_wgslsmith_index_u32(~firstLeadingBit(~u_input.d.x ^ countOneBits(6539u)), 18u)]);
}

fn func_1(arg_0: bool) -> vec2<f32> {
    global0 = array<bool, 18>();
    var var_0 = func_2();
    var var_1 = -26339i;
    global1 = _wgslsmith_div_f32(var_0.b.x, 257f);
    return vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-890f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)) + 540f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global2.a, _wgslsmith_sub_vec3_i32(countOneBits(~(~vec3<i32>(u_input.c.x, 0i, u_input.b))), select(_wgslsmith_sub_vec3_i32(global2.b, ~vec3<i32>(u_input.b, global2.b.x, u_input.c.x)), vec3<i32>(firstLeadingBit(-66865i), 3139i, 1i), global2.a.c.xxy)), Struct_1(!(!global2.c.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.c.b))), !vec4<bool>(true, !global0[_wgslsmith_index_u32(24160u, 18u)], !global0[_wgslsmith_index_u32(u_input.d.x, 18u)], global2.c.e), global2.c.c.ww, false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(global2.a.b.x)), _wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(global2.d.x * _wgslsmith_f_op_f32(-global2.d.x)), global2.c.b.x)));
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1308f + _wgslsmith_f_op_f32(round(var_0.a.b.x))), global2.d.x)), global2.a.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global2.a.b.zz)), _wgslsmith_f_op_vec2_f32(func_1(select(true || global2.c.d.x, !var_0.a.c.x, any(var_0.a.d))))), firstLeadingBit(107106u), _wgslsmith_div_vec4_f32(var_0.d, global2.d), -vec4<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(42951i, -6125i), -12796i), -(var_0.b.x >> (u_input.d.x % 32u)), _wgslsmith_div_i32(global2.b.x, firstLeadingBit(global2.b.x)), -u_input.c.x));
}

