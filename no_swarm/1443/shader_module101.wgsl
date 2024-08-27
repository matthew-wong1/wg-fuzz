struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(505f, -417f);

var<private> global1: i32 = -1i;

var<private> global2: Struct_2 = Struct_2(false, -302f, vec4<bool>(true, false, false, true));

var<private> global3: array<bool, 21> = array<bool, 21>(true, false, true, true, false, true, true, true, true, false, true, false, true, false, true, true, false, true, true, true, false);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> vec2<bool> {
    global1 = 0i;
    let var_0 = !any(global2.c.ww) & all(select(select(global2.c.yx, !global2.c.xw, global2.c.wy), global2.c.zy, all(!vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 21u)]))));
    var var_1 = false;
    var var_2 = Struct_3(-vec3<i32>(1i, 1i, 1i), -(~vec4<i32>(_wgslsmith_div_i32(-1i, -21621i), 1i, 4459i, ~10468i)), Struct_1(-936f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global2.b)), -865f)));
    let var_3 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), 21u)];
    return global2.c.wy;
}

fn func_2() -> Struct_1 {
    let var_0 = select(vec2<u32>(_wgslsmith_clamp_u32(u_input.a >> (~u_input.a % 32u), _wgslsmith_sub_u32(1u, 1u), ~(u_input.a | u_input.a)), ~u_input.a), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, ~(4294967295u | u_input.a)), ~vec2<u32>(u_input.a & 4294967295u, ~u_input.a)), !func_3());
    let var_1 = Struct_2(!any(vec3<bool>(global3[_wgslsmith_index_u32(~0u, 21u)], true, 36291u > u_input.a)), global2.b, select(global2.c, select(vec4<bool>(var_0.x < var_0.x, true, true, true), vec4<bool>(true, true, true, true), select(global2.c, global2.c, !global2.c)), all(vec3<bool>(all(vec3<bool>(global3[_wgslsmith_index_u32(0u, 21u)], global3[_wgslsmith_index_u32(var_0.x, 21u)], true)), false, !global2.a))));
    var var_2 = max(-(~select(min(vec2<i32>(33664i, 0i), vec2<i32>(2147483647i, 0i)), -vec2<i32>(2147483647i, 36604i), vec2<bool>(true, true))), min(-vec2<i32>(1i, _wgslsmith_div_i32(-11138i, -393i)), vec2<i32>(-23888i, _wgslsmith_div_i32(select(2147483647i, -32563i, false), _wgslsmith_div_i32(-28303i, -1i)))));
    var var_3 = vec3<bool>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, ~(1u & ~var_0.x)), 21u)], select(global3[_wgslsmith_index_u32(var_0.x, 21u)], !(all(vec3<bool>(global2.c.x, var_1.c.x, global3[_wgslsmith_index_u32(var_0.x, 21u)])) | true), !(!global3[_wgslsmith_index_u32(u_input.a >> (0u % 32u), 21u)])), !(_wgslsmith_f_op_f32(1526f + var_1.b) > global0.x));
    var var_4 = var_3.zz;
    return Struct_1(_wgslsmith_f_op_f32(-global2.b));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec2<i32> {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, -1000f))), vec2<f32>(-300f, _wgslsmith_f_op_f32(-global2.b)), global2.c.zy))));
    global2 = Struct_2(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2224f + 1463f)) - 707f), vec4<bool>(all(vec3<bool>(select(global3[_wgslsmith_index_u32(u_input.a, 21u)], true, global3[_wgslsmith_index_u32(arg_0, 21u)]), false, func_3().x)), global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(arg_0, firstLeadingBit(u_input.a)), 21u)], global3[_wgslsmith_index_u32(1u, 21u)], !global2.a));
    let var_0 = arg_2.a;
    global2 = Struct_2(true, _wgslsmith_f_op_f32(sign(func_2().a)), vec4<bool>(all(vec3<bool>(any(global2.c.xw), true, false)), global3[_wgslsmith_index_u32(14129u, 21u)], true, true));
    let var_1 = max(_wgslsmith_div_i32(-1i, 1i), _wgslsmith_div_i32(2147483647i, -1i));
    return vec2<i32>(-57548i, var_1);
}

fn func_1() -> vec2<i32> {
    global3 = array<bool, 21>();
    global0 = vec2<f32>(global0.x, global0.x);
    global3 = array<bool, 21>();
    var var_0 = 0i;
    global0 = vec2<f32>(937f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * global0.x))));
    return func_4(~15088u, func_2(), func_2()) | _wgslsmith_add_vec2_i32(abs(~vec2<i32>(99561i, -1i) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(64680u, 44933u)) % vec2<u32>(32u))), vec2<i32>(0i, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.c.zx;
    let var_1 = _wgslsmith_div_f32(global2.b, _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(trunc(global2.b))));
    var var_2 = -843f;
    let var_3 = vec3<u32>(max(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a, 4294967295u), u_input.a) | _wgslsmith_div_u32(u_input.a, ~17858u), ~24444u), reverseBits(1u >> (select(u_input.a, u_input.a, true && var_0.x) % 32u)), u_input.a);
    let var_4 = min(~vec2<i32>(~select(-780i, 8604i, var_0.x), ~0i), select(~(-vec2<i32>(1i, 0i)), -func_1(), global3[_wgslsmith_index_u32(u_input.a, 21u)]));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, vec4<i32>(~(reverseBits(var_4.x) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(42498i, var_4.x, -15740i), vec3<i32>(0i, 2147483647i, var_4.x))), _wgslsmith_mult_i32(var_4.x, var_4.x), ~(-1i), _wgslsmith_mult_i32(firstLeadingBit(var_4.x << (42244u % 32u)), ~(~var_4.x))));
}

