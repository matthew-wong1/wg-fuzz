struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec2<f32>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<i32>(-2228i, i32(-2147483648), -6140i, 2147483647i), Struct_2(0u, vec3<u32>(4294967295u, 0u, 4294967295u)), vec2<f32>(1000f, 1634f), vec3<bool>(true, true, true), -1000f);

var<private> global1: Struct_1 = Struct_1(-2120f, -8592i, -590f);

var<private> global2: array<vec4<bool>, 5>;

var<private> global3: Struct_4;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1() -> f32 {
    return global1.c;
}

fn func_3(arg_0: Struct_3) -> vec4<i32> {
    global1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_mult_i32(~(-16457i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.x, global1.b, arg_0.a.x, arg_0.a.x) & arg_0.a, vec4<i32>(-1i, 2147483647i, 2147483647i, global0.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(126f - _wgslsmith_f_op_f32(-global1.c)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.a)))))));
    var var_0 = firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(-global0.a.x, global0.a.x), firstLeadingBit(1i), 1i), firstLeadingBit(-vec3<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x))));
    return -_wgslsmith_mod_vec4_i32(-arg_0.a, arg_0.a);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<f32>) -> u32 {
    var var_0 = arg_2.b.xy;
    var var_1 = arg_2;
    global0 = Struct_3(func_3(Struct_3(_wgslsmith_sub_vec4_i32(global0.a, _wgslsmith_add_vec4_i32(vec4<i32>(global0.a.x, -40608i, -24174i, 1i), global0.a)), global0.b, arg_3, global0.d, global1.c)), Struct_2(0u, firstLeadingBit(vec3<u32>(1u & var_1.a, ~20705u, u_input.a.x))), _wgslsmith_f_op_vec2_f32(ceil(global3.a)), vec3<bool>(true, any(select(global0.d.xz, !vec2<bool>(global0.d.x, global0.d.x), !vec2<bool>(global0.d.x, global0.d.x))), (_wgslsmith_f_op_f32(min(arg_3.x, global1.c)) <= _wgslsmith_f_op_f32(-2167f - 243f)) & global0.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(trunc(-756f))) - global1.c));
    global3 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a, arg_0.a) - _wgslsmith_f_op_f32(global1.c + -1209f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(168f + 545f))))))), arg_0.b, -1557f);
    return global0.b.a;
}

fn func_4(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-251f, 507f))) + arg_1.xy)));
    var var_1 = vec4<i32>(_wgslsmith_sub_i32(-56558i, global1.b), min(~global1.b, firstTrailingBit(-1i)), ~(1i << (arg_2.b.x % 32u)), global1.b);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(abs(arg_1.x)), max(firstTrailingBit(var_1.x) ^ var_1.x, 1i | ~global1.b) | firstLeadingBit(-var_1.x), -325f);
    let var_3 = _wgslsmith_sub_vec2_u32(~vec2<u32>(21465u, ~arg_2.b.x), ~(~_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(arg_2.a, arg_2.b.x)), abs(arg_2.b.xz))));
    let var_4 = vec3<bool>(global0.d.x, any(vec4<bool>(_wgslsmith_f_op_f32(func_1()) >= 1000f, true, global0.d.x, global0.d.x)), false);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_4(global0.c), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -553f), global0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(-1274f - -129f)) - _wgslsmith_f_op_f32(trunc(217f))), global3.a.x), Struct_2(~_wgslsmith_div_u32(global0.b.a, func_2(Struct_1(313f, -77525i, global0.e), Struct_2(u_input.a.x, global0.b.b), Struct_2(global0.b.a, vec3<u32>(0u, global0.b.b.x, u_input.a.x)), vec2<f32>(global0.c.x, -1068f))), firstTrailingBit(global0.b.b ^ ~global0.b.b)));
    let var_1 = global0.d.xx;
    global3 = Struct_4(vec2<f32>(-763f, _wgslsmith_div_f32(212f, _wgslsmith_f_op_f32(global3.a.x - global3.a.x))));
    global2 = array<vec4<bool>, 5>();
    global2 = array<vec4<bool>, 5>();
    var var_2 = global0.d.zy;
    let x = u_input.a;
    s_output = StorageBuffer((global0.b.b | vec3<u32>(reverseBits(global0.b.a), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 24687u, u_input.a.x, 46118u), vec4<u32>(0u, u_input.a.x, 9889u, u_input.a.x)), ~u_input.a.x)) & ~(~global0.b.b ^ ~vec3<u32>(17387u, 1u, global0.b.b.x)), countOneBits(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(84719u, global0.b.a, 114213u, global0.b.a), vec4<u32>(global0.b.a, 37618u, 4294967295u, 1u)) & vec4<u32>(39807u, global0.b.a, 86980u, 1u), vec4<u32>(54721u, 46081u << (u_input.a.x % 32u), 53188u, ~u_input.a.x))), func_4(Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(629f, var_0.c) - global0.c) * _wgslsmith_f_op_vec2_f32(-global0.c))), vec3<f32>(global3.a.x, _wgslsmith_f_op_f32(sign(global0.c.x)), 863f), Struct_2(_wgslsmith_dot_vec3_u32(~global0.b.b, global0.b.b | vec3<u32>(u_input.a.x, 28547u, 4294967295u)), select(~vec3<u32>(global0.b.a, global0.b.a, u_input.a.x), ~vec3<u32>(global0.b.a, 33663u, u_input.a.x), true))).b, firstTrailingBit(var_0.b), ~global0.b.b.x);
}

