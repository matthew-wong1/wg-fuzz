struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_3;

var<private> global2: array<f32, 26>;

var<private> global3: vec4<f32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_2) -> vec2<u32> {
    return u_input.c.zx;
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> vec3<bool> {
    var var_0 = global1.b.b;
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c.yy, func_2(global1.a)), ~u_input.c.wx), 26u)];
    var var_2 = _wgslsmith_f_op_f32(round(global3.x));
    global0 = vec3<bool>(global0.x, 28505u == ((_wgslsmith_mult_u32(0u, 0u) >> (_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(4294967295u, arg_0, u_input.b, arg_0)) % 32u)) << (74801u % 32u)), !global1.b.c);
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.x, 277f, global3.x, global3.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2[_wgslsmith_index_u32(u_input.b, 26u)], global2[_wgslsmith_index_u32(0u, 26u)], global3.x, -914f))))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(439f)) * _wgslsmith_f_op_f32(f32(-1f) * -342f)), 258f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, 1790f)), -140f))));
    return !(!vec3<bool>(true, false, any(global1.b.a)));
}

fn func_3(arg_0: vec3<i32>) -> bool {
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(995f, global3.x)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 26u)]), _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(f32(-1f) * -1279f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(801f, 289f, 1074f, -1449f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 26u)], global2[_wgslsmith_index_u32(u_input.b, 26u)], global2[_wgslsmith_index_u32(u_input.c.x, 26u)], global3.x)))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(641f, global3.x)), -666f)), global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1619f - -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c.x, 26u)] * global2[_wgslsmith_index_u32(u_input.b, 26u)])) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, 920f) - global2[_wgslsmith_index_u32(~19947u, 26u)]))));
    var var_0 = vec3<f32>(global3.x, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~_wgslsmith_div_u32(u_input.c.x & u_input.c.x, _wgslsmith_mult_u32(u_input.b, u_input.b)), _wgslsmith_div_u32(u_input.c.x, 45968u)), 26u)], _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -145f)));
    var var_1 = vec3<i32>(_wgslsmith_mult_i32(-abs(reverseBits(global1.a.e)), 1i), -firstTrailingBit(_wgslsmith_add_i32(-15640i, 1i)) >> (u_input.b % 32u), u_input.d);
    return true;
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: u32) -> Struct_2 {
    let var_0 = -arg_1.b.e | firstTrailingBit(arg_2.x);
    let var_1 = _wgslsmith_dot_vec2_i32(abs(vec2<i32>(0i, -25066i)), u_input.e.yz);
    var var_2 = !arg_1.b.a.x;
    global2 = array<f32, 26>();
    return Struct_2(vec2<bool>(true, true), firstLeadingBit(global1.b.b), true, global1.a.d, _wgslsmith_sub_i32(-1i, var_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(u_input.c.yxw, global1.b.e, func_4(any(select(!vec3<bool>(global0.x, global0.x, global1.b.c), func_1(u_input.c.x, vec2<bool>(global0.x, global0.x)), vec3<bool>(true, true, true))), Struct_3(global1.b, Struct_2(global0.zz, global1.a.b, func_3(global1.a.b.yyw), true, ~global1.b.b.x)), vec3<i32>(-2147483647i, -u_input.e.x, -1592i), 0u | _wgslsmith_div_u32(abs(u_input.c.x), u_input.b)));
    let var_1 = abs(-global1.b.b.x);
    let var_2 = var_0.a.x;
    var var_3 = Struct_4(select(select(abs(firstLeadingBit(vec3<u32>(u_input.c.x, 34765u, var_0.a.x))), _wgslsmith_mult_vec3_u32(reverseBits(var_0.a), min(vec3<u32>(u_input.c.x, 46654u, var_0.a.x), var_0.a)), select(vec3<bool>(global1.b.a.x, var_0.c.c, true), vec3<bool>(false, false, var_0.c.c), !vec3<bool>(true, false, var_0.c.c))), vec3<u32>(_wgslsmith_mod_u32(u_input.c.x, u_input.b), 0u, reverseBits(1u)), !(!global1.a.d)), 2147483647i, Struct_2(select(select(func_1(97624u, var_0.c.a).xx, global1.a.a, global0.zy), var_0.c.a, vec2<bool>(var_0.c.a.x, var_0.c.d)), vec4<i32>(abs(-8737i), ~var_1 | 50341i, 8936i, _wgslsmith_sub_i32(u_input.d ^ u_input.e.x, 0i << (var_0.a.x % 32u))), !var_0.c.d, global1.a.d, 46056i));
    let var_4 = !vec4<bool>(global1.b.c, any(!func_1(var_0.a.x, vec2<bool>(global1.b.c, true))), !var_0.c.a.x, func_3(_wgslsmith_mod_vec3_i32(u_input.e, vec3<i32>(-53445i, var_0.b, 2147483647i))) & var_0.c.d);
    let var_5 = _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a.x, 104892u, 12255u, 5450u) | u_input.c, ~u_input.c) << (abs(~var_3.a.x) % 32u), 26u)]);
    let var_6 = Struct_1(u_input.c, func_3(var_0.c.b.wwx), vec4<bool>(var_0.a.x > var_0.a.x, !(!(!var_0.c.c)), true | all(!vec3<bool>(var_4.x, var_3.c.a.x, true)), func_3(vec3<i32>(-1i) * -vec3<i32>(22240i, 15487i, u_input.a.x))));
    var var_7 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~(~var_3.a.zz | (var_6.a.zw ^ vec2<u32>(var_0.a.x, u_input.c.x))), select(vec2<u32>(max(54184u, var_0.a.x), 42167u), abs(var_3.a.xx), !var_0.c.a)), vec2<u32>(~1u, func_2(func_4(true, Struct_3(var_3.c, global1.b), ~vec3<i32>(var_0.b, var_1, u_input.e.x), ~62612u)).x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(firstLeadingBit(_wgslsmith_add_u32(~43719u, ~u_input.c.x)), firstTrailingBit(firstLeadingBit(var_6.a.x)) ^ var_0.a.x));
}

