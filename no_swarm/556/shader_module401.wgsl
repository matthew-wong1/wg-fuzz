struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 19> = array<i32, 19>(2147483647i, 5938i, -7871i, 21440i, 18795i, -18439i, 0i, 1i, 2147483647i, 69916i, 0i, 2147483647i, -9495i, -12444i, 2147483647i, -1i, 0i, 2147483647i, 2147483647i);

var<private> global2: bool;

var<private> global3: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = Struct_1(global3.a, min(_wgslsmith_dot_vec3_i32(min(firstLeadingBit(vec3<i32>(2147483647i, arg_1.b, 28660i)), firstLeadingBit(vec3<i32>(1i, -2147483647i, global1[_wgslsmith_index_u32(68937u, 19u)]))), select(_wgslsmith_mod_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(global3.c.x, 19u)], u_input.a.x, arg_1.b), vec3<i32>(global3.e.x, -1i, -21726i)), abs(vec3<i32>(24143i, 1i, 12858i)), select(global0.a.yxw, global3.a.zyx, vec3<bool>(global3.a.x, true, arg_0.a.x)))), max(firstLeadingBit(global3.d), arg_1.d)), _wgslsmith_add_vec3_u32(arg_0.c, global0.c), arg_1.d, vec2<i32>(1i, i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, 0i, 0i), vec4<i32>(2147483647i, -1i, global0.e.x, global0.e.x))));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(select(-1256f, _wgslsmith_f_op_f32(276f * -392f), false)), var_0.a.x))))));
    var var_2 = var_0;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(891f, 1000f, -240f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1133f - -209f)), _wgslsmith_f_op_f32(ceil(1f)), 121f))));
    var_2 = Struct_1(!vec4<bool>(global3.a.x, 3579i > _wgslsmith_dot_vec4_i32(vec4<i32>(45947i, global0.d, 2147483647i, 1791i), vec4<i32>(arg_1.e.x, global0.d, global0.e.x, var_0.d)), any(vec2<bool>(global0.a.x, false)), global3.a.x), abs(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(5391i, var_0.d), var_2.e | vec2<i32>(-89126i, arg_0.b), reverseBits(vec2<i32>(-45887i, 59536i))), vec2<i32>(1i, -global1[_wgslsmith_index_u32(global0.c.x, 19u)]))), ~vec3<u32>(global3.c.x, firstLeadingBit(0u), ~(~4294967295u)), -46277i, global3.e);
    return ~(~(min(2147483647i, -25222i) << (select(global3.c.x, 0u, arg_0.a.x) % 32u))) != (arg_0.d << (~35050u % 32u));
}

fn func_2() -> Struct_1 {
    let var_0 = global0.a.x;
    let var_1 = ~(~_wgslsmith_div_u32(78438u & (global3.c.x ^ global3.c.x), ~1u));
    var var_2 = global3.c.zx | select(abs(~countOneBits(vec2<u32>(global0.c.x, var_1))), vec2<u32>(global0.c.x, global0.c.x), true);
    let var_3 = -13361i;
    var var_4 = var_1;
    return Struct_1(select(select(vec4<bool>(all(vec2<bool>(false, global3.a.x)), false, false, func_3(Struct_1(vec4<bool>(global3.a.x, false, global3.a.x, false), -1446i, vec3<u32>(var_2.x, global3.c.x, global3.c.x), var_3, vec2<i32>(0i, 2147483647i)), Struct_1(vec4<bool>(global3.a.x, false, false, false), var_3, global0.c, 14489i, u_input.a))), global3.a, false), vec4<bool>(global3.a.x, any(global0.a.wy) || global0.a.x, any(global3.a.xyy), global0.a.x), true), -(u_input.a.x & 9433i), vec3<u32>(1u | _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1, 1u, var_2.x, var_1), _wgslsmith_mod_vec4_u32(vec4<u32>(57314u, 1u, 26425u, 3150u), vec4<u32>(var_1, 4294967295u, 25297u, var_2.x))), max(~(~global0.c.x), global0.c.x), ~global3.c.x >> (global0.c.x % 32u)), ~(-(_wgslsmith_mod_i32(u_input.a.x, -2147483647i) ^ global3.b)), vec2<i32>(-40265i, countOneBits(u_input.a.x)));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec4<f32>) -> vec4<i32> {
    var var_0 = -global3.e.x;
    global0 = func_2();
    global3 = func_2();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(arg_2.x, arg_2.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + -523f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(697f - -1037f), _wgslsmith_f_op_f32(274f - arg_2.x)))), 611f)), -413f);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.zy, _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - vec2<f32>(-2048f, -177f))) + vec2<f32>(281f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - -1306f))));
    return vec4<i32>(reverseBits(_wgslsmith_add_i32(~global0.b, global0.d)), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3.c.x, 30157u), 19u)], func_2().e.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(0i, global0.d, -29840i), -19842i), global3.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(4294967295u, global0.c.x, vec4<f32>(_wgslsmith_f_op_f32(640f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-958f - -1352f), _wgslsmith_f_op_f32(trunc(596f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1325f) * _wgslsmith_f_op_f32(-829f + 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1977f - 341f) + _wgslsmith_f_op_f32(sign(410f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(3044f, -1615f)), _wgslsmith_f_op_f32(f32(-1f) * -236f)))), _wgslsmith_div_f32(-194f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1425f))))));
    var var_1 = true;
    var var_2 = ~(-(~func_1(global3.c.x, _wgslsmith_sub_u32(global0.c.x, global0.c.x), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-546f, -393f, 873f, -390f)))).x));
    let var_3 = -u_input.a.x;
    var var_4 = !(!vec4<bool>(true, global3.a.x, global3.a.x, any(vec2<bool>(true, true))));
    var_2 = var_0.x;
    var var_5 = func_2();
    var var_6 = global3.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(-1249f, -1146f, true)), var_0.zzy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))));
}

