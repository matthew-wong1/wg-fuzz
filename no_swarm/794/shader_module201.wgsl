struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 9>;

var<private> global2: Struct_1;

var<private> global3: bool;

var<private> global4: i32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_div_vec4_i32(global2.b, vec4<i32>(-(arg_0.b.x ^ -1i), firstLeadingBit(u_input.a.x), _wgslsmith_sub_i32(arg_0.b.x, _wgslsmith_div_i32(_wgslsmith_add_i32(-59002i, global0.b.b.x), global2.b.x)), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(arg_0.b << (vec4<u32>(4294967295u, 4294967295u, 10994u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(global2.b, global0.b.b), vec4<i32>(global2.b.x, 0i, 2346i, 41748i)), _wgslsmith_add_vec4_i32(select(vec4<i32>(arg_0.b.x, u_input.a.x, -16131i, global0.b.b.x), vec4<i32>(global2.b.x, u_input.a.x, global0.b.b.x, 13000i), false), global0.b.b))));
    global1 = array<Struct_2, 9>();
    let var_1 = global2.a.yw;
    global2 = Struct_1(global2.a, -(~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, arg_0.b.x, global0.b.b.x, global0.b.b.x), -global0.b.b, vec4<i32>(-2147483647i, 38006i, global0.b.b.x, 2147483647i) ^ vec4<i32>(1i, global2.b.x, u_input.a.x, -2147483647i))));
    var var_2 = false;
    return 1u >> (1u % 32u);
}

fn func_2() -> u32 {
    var var_0 = select(vec4<bool>(true, !any(global0.b.a.xw), global2.a.x, true), !vec4<bool>(global2.a.x, false, true, global2.a.x || global0.b.a.x), global2.a);
    var_0 = global2.a;
    let var_1 = global0.b;
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~select(_wgslsmith_add_u32(_wgslsmith_add_u32(7991u, 53767u), 1u), firstLeadingBit(1u), true), _wgslsmith_sub_u32(4294967295u, 67783u >> (~(~1u) % 32u))), 9u)];
    global2 = global0.b;
    return _wgslsmith_dot_vec4_u32(vec4<u32>(~1u, ~1u, 4294967295u, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(countOneBits(~5180u), 1u, ~1u, _wgslsmith_mod_u32(54853u, func_3(global0.b))), ~vec4<u32>(0u, ~4294967295u, ~0u, 1u)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> vec3<f32> {
    global0 = arg_3;
    var var_0 = min(~func_2(), ~(~4294967295u));
    global2 = global0.b;
    var var_1 = any(!select(!(!vec2<bool>(false, arg_1.b.a.x)), arg_3.b.a.wy, !global0.b.a.x));
    let var_2 = _wgslsmith_sub_vec3_i32(-vec3<i32>((-13051i & global2.b.x) & -arg_0.x, -global2.b.x, 19316i), ~global2.b.wwx);
    return vec3<f32>(global0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-642f))), _wgslsmith_f_op_f32(abs(1f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(112f)))) + _wgslsmith_f_op_f32(max(-208f, _wgslsmith_f_op_f32(279f * global0.a.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1878f, _wgslsmith_f_op_f32(global0.a.x * global0.a.x)))), _wgslsmith_f_op_f32(-1f)), global0.b);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + 199f) * _wgslsmith_f_op_f32(-195f * 546f))))) * _wgslsmith_f_op_vec3_f32(-var_0.a));
    global1 = array<Struct_2, 9>();
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a * var_0.a), _wgslsmith_f_op_vec3_f32(func_1(var_0.b.b.zzz, Struct_2(vec3<f32>(-919f, -272f, global0.a.x), var_0.b), 0u, Struct_2(vec3<f32>(global0.a.x, global0.a.x, 455f), Struct_1(var_0.b.a, global2.b)))))))), Struct_1(global2.a, vec4<i32>(var_0.b.b.x, _wgslsmith_dot_vec4_i32(abs(global0.b.b), var_0.b.b), abs(abs(-36277i)), global0.b.b.x)));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(abs(~0u) >> (1u % 32u)), select(firstLeadingBit(~_wgslsmith_mod_u32(1537u, 24078u)), _wgslsmith_add_u32(countOneBits(countOneBits(8224u)), 1u), (var_0.a.x <= var_2.a.x) || global2.a.x)), 9u)];
    let var_4 = countOneBits(-var_3.b.b.zz);
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec4<i32>(-var_3.b.b.x, global2.b.x, global2.b.x, min(17647i, -36858i)), _wgslsmith_f_op_vec3_f32(-var_3.a), _wgslsmith_dot_vec3_i32(-countOneBits(var_0.b.b.yxy), select(vec3<i32>(var_3.b.b.x, 19991i, u_input.a.x), max(var_3.b.b.zxy, global2.b.zxz), vec3<bool>(false, var_2.b.a.x, var_3.b.a.x))) << (~max(_wgslsmith_add_u32(0u, 4294967295u), _wgslsmith_div_u32(4294967295u, 34675u)) % 32u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1019f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec3_f32(func_1(var_0.b.b.yzx, Struct_2(vec3<f32>(295f, var_0.a.x, var_1.x), Struct_1(var_0.b.a, vec4<i32>(2147483647i, 1i, var_3.b.b.x, 1i))), 4294967295u, Struct_2(global0.a, var_0.b))).x)))))));
}

