struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<bool>(true, false, false, false), vec2<i32>(-10862i, 83954i));

var<private> global1: array<Struct_3, 17>;

var<private> global2: bool = false;

var<private> global3: vec4<bool>;

var<private> global4: Struct_2 = Struct_2(vec3<u32>(0u, 1u, 29771u), vec4<f32>(-314f, -685f, 1000f, -1397f), vec4<bool>(true, false, true, true), Struct_1(vec4<i32>(i32(-2147483648), 0i, 28667i, 0i)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = ~(~select(~countOneBits(69353u), 27439u, -540f > _wgslsmith_f_op_f32(round(-170f))));
    global4 = Struct_2(~vec3<u32>(global4.a.x, ~(global4.a.x & global4.a.x), abs(global4.a.x) | 18298u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.b.x, 1449f, arg_0.x, global4.b.x) + global4.b) + global4.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1034f, arg_0.x, arg_0.x, 838f))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1076f, global4.b.x) * _wgslsmith_f_op_f32(657f * arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1213f + arg_0.x)), arg_0.x, global4.b.x)), global0.a, global4.d);
    var var_1 = global4.d;
    var var_2 = 0i;
    var_2 = _wgslsmith_sub_i32(arg_1.b.x, arg_2.a.x);
    return global4.a.yz;
}

fn func_2(arg_0: f32) -> u32 {
    return _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(46800u & global4.a.x, 120416u)), func_3(_wgslsmith_f_op_vec2_f32(select(global4.b.xz, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1753f, global4.b.x) + vec2<f32>(global4.b.x, global4.b.x)), global0.a.wx)), Struct_3(vec4<bool>(false, global0.a.x, global3.x, false), min(vec2<i32>(u_input.a, 20036i), vec2<i32>(15713i, 2147483647i))), Struct_1(firstLeadingBit(vec4<i32>(21684i, -41416i, 0i, -27703i))))), ~((global4.a.x >> (4294967295u % 32u)) & firstTrailingBit(global4.a.x)) >> (global4.a.x % 32u));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(573f - -185f), -107f, -389f) * _wgslsmith_f_op_vec3_f32(sign(global4.b.wxw))));
    var var_1 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -986f)) - _wgslsmith_f_op_f32(-global4.b.x)));
    let var_2 = global4.a.x;
    global2 = any(select(!select(vec3<bool>(true, arg_1.x, global4.c.x), vec3<bool>(arg_1.x, global0.a.x, arg_1.x), vec3<bool>(true, true, global3.x)), select(select(!vec3<bool>(global4.c.x, true, true), global3.zwy, arg_1.x), vec3<bool>(global0.a.x, !global0.a.x, !global0.a.x), select(false, true, global3.x) == global3.x), global0.a.yzw));
    return false && any(select(!vec3<bool>(true, global4.c.x, false), global3.wxy, vec3<bool>(true, select(true, false, arg_1.x), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = !select(!global4.c, !(!vec4<bool>(global0.a.x, false, true, false)), any(vec2<bool>(true, !global4.c.x)));
    let var_0 = func_1(Struct_1(global4.d.a), vec4<bool>(true, (select(global3.x, global0.a.x, global4.c.x) & any(global4.c)) || true, !(!(!global4.c.x)), global3.x));
    let var_1 = Struct_2(vec3<u32>(4294967295u, global4.a.x, global4.a.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global4.b)))), !(!global0.a), Struct_1(_wgslsmith_div_vec4_i32(global4.d.a, min(select(global4.d.a, vec4<i32>(7292i, u_input.a, global0.b.x, u_input.a), global4.c.x), min(vec4<i32>(-44226i, u_input.a, -10773i, -2147483647i), global4.d.a)))));
    var var_2 = _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a | u_input.a, u_input.a, -32353i, u_input.a), var_1.d.a) ^ -_wgslsmith_div_i32(1i, ~(i32(-1i) * -2147483647i));
    var var_3 = Struct_3(var_1.c, ~(~max(~var_1.d.a.yy, vec2<i32>(-11422i, global4.d.a.x))));
    let var_4 = global1[_wgslsmith_index_u32(0u, 17u)];
    let var_5 = true;
    let var_6 = _wgslsmith_mult_u32(~(~(~var_1.a.x)), 20866u);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.yxx, global4.b.zxx, _wgslsmith_f_op_vec2_f32(global4.b.xx + _wgslsmith_f_op_vec2_f32(var_1.b.wx + _wgslsmith_f_op_vec2_f32(-global4.b.xw))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.b.xy * vec2<f32>(582f, 1751f)) * vec2<f32>(-668f, var_1.b.x)))));
}

