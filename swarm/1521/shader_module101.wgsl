struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: bool,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 23> = array<bool, 23>(false, false, false, true, true, false, false, true, true, false, true, false, true, false, false, false, false, false, false, false, true, true, false);

var<private> global2: vec4<i32>;

var<private> global3: array<vec2<f32>, 30>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: i32) -> f32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.d.x, _wgslsmith_f_op_f32(trunc(global0.d.x)), _wgslsmith_div_f32(global0.d.x, -863f), _wgslsmith_f_op_f32(1121f - arg_1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-721f, -2519f, 366f, arg_1.x))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.x, 719f, global0.d.x, global0.d.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, global0.d.x, -502f, global0.d.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.x, arg_1.x, global0.d.x, 190f)))))), 1f > _wgslsmith_f_op_f32(trunc(562f)))), vec4<f32>(arg_1.x, arg_1.x, global0.d.x, _wgslsmith_f_op_f32(sign(3056f))));
    global1 = array<bool, 23>();
    var var_1 = Struct_1(arg_0, ~22899u >= u_input.d.x, global0.e <= 32791u, _wgslsmith_f_op_vec3_f32(-arg_1), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.d, abs(vec2<u32>(4294967295u, u_input.a.x))), firstTrailingBit(~u_input.d)), _wgslsmith_mult_vec2_u32(~u_input.d | vec2<u32>(0u, 4294967295u), vec2<u32>(global0.e, u_input.a.x))));
    var_0 = vec4<f32>(global0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - -333f))), _wgslsmith_f_op_f32(127f * _wgslsmith_f_op_f32(select(arg_1.x, global0.d.x, true))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.x + arg_1.x))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-905f)), arg_1.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.x - -304f) * arg_1.x)), var_0.x, global0.d.x, var_1.d.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.d.x - var_0.x), _wgslsmith_f_op_f32(1891f - arg_1.x)), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 1020f)))));
    return var_0.x;
}

fn func_2() -> i32 {
    global0 = Struct_1(global2.xzy, global1[_wgslsmith_index_u32(1u, 23u)], -267f < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -628f))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.d.x)), -407f), _wgslsmith_f_op_f32(func_3(u_input.b, _wgslsmith_div_vec3_f32(global0.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(1879f, global0.d.x, global0.d.x) + global0.d)), 2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x)) + 1189f)), _wgslsmith_dot_vec2_u32(vec2<u32>(select(1u, global0.e, true), u_input.a.x), firstLeadingBit(~vec2<u32>(22761u, 23588u))) & (1u | ~global0.e));
    let var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(abs(min(2147483647i, min(-35355i, 2147483647i))), _wgslsmith_mod_i32(_wgslsmith_mult_i32(-2147483647i, global2.x) & _wgslsmith_mod_i32(global0.a.x, global2.x), ~select(global2.x, 12359i, global1[_wgslsmith_index_u32(1u, 23u)]))), ~_wgslsmith_clamp_vec2_i32(global2.yw, ~(~vec2<i32>(u_input.b.x, u_input.c)), _wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.b.x, -2147483647i), vec2<i32>(u_input.b.x, -65018i))));
    global1 = array<bool, 23>();
    let var_1 = Struct_1(global0.a, global0.b, !global0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(244f, _wgslsmith_f_op_f32(global0.d.x - 1116f), global0.d.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d.x, -285f, global0.d.x) - global0.d)))), _wgslsmith_div_u32(4294967295u, ~59323u));
    let var_2 = u_input.a;
    return _wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(-12988i, _wgslsmith_dot_vec3_i32(global0.a, vec3<i32>(global0.a.x, 1i, -9888i)), 2470i), -vec3<i32>(global0.a.x, var_1.a.x, -24703i)), _wgslsmith_div_vec3_i32(vec3<i32>(global2.x, firstTrailingBit(-1i), ~global2.x), global2.wxw) ^ global2.ywy);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: vec2<f32>) -> vec3<i32> {
    let var_0 = 2147483647i;
    let var_1 = global0.e;
    global3 = array<vec2<f32>, 30>();
    var var_2 = vec2<u32>(_wgslsmith_sub_u32(~6099u, 29819u), 4294967295u);
    let var_3 = global1[_wgslsmith_index_u32(abs(~reverseBits(u_input.a.x)), 23u)];
    return _wgslsmith_add_vec3_i32(~(-vec3<i32>(-2147483647i, 1i, u_input.c) ^ vec3<i32>(var_0, global2.x, var_0)) & -(vec3<i32>(-2147483647i, global0.a.x, global2.x) >> (~vec3<u32>(4294967295u, 55872u, u_input.a.x) % vec3<u32>(32u))), vec3<i32>(firstTrailingBit(min(global0.a.x, _wgslsmith_mod_i32(-17379i, -1i))), func_2(), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, reverseBits(-34666i), 1i, var_0), vec4<i32>(-1i) * -vec4<i32>(2147483647i, 1i, -47412i, -20331i))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<f32>, 30>();
    global3 = array<vec2<f32>, 30>();
    let var_0 = Struct_1(reverseBits(func_1(global0.d, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, global0.d.x, 1160f, -2130f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1694f, -351f, 434f, global0.d.x) + vec4<f32>(global0.d.x, 369f, global0.d.x, global0.d.x)))), global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(global0.e, u_input.a.x), 30u)])), true, !global0.b, vec3<f32>(_wgslsmith_f_op_f32(abs(-570f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.d.x, -552f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 263f) + global0.d.x)), global0.d.x), 0u);
    global2 = vec4<i32>(u_input.b.x, -1i, 51660i, -6295i);
    global2 = vec4<i32>(0i, _wgslsmith_sub_i32(var_0.a.x, var_0.a.x), -2147483647i, -48027i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1256f)));
}

