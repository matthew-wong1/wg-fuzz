struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool = true;

var<private> global2: f32;

var<private> global3: vec3<i32>;

var<private> global4: array<vec2<bool>, 19>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: vec4<i32>) -> i32 {
    global0 = firstLeadingBit(reverseBits(_wgslsmith_mult_u32(arg_0.x, ~4294967295u)) ^ 34783u);
    global1 = true;
    global0 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1087u, 4294967295u, u_input.a.x), vec3<u32>(u_input.a.x, 4294967295u, 16817u) << (vec3<u32>(u_input.d.x, arg_0.x, 1u) % vec3<u32>(32u))), 36682u) ^ ~_wgslsmith_div_u32(8698u, ~90008u), firstTrailingBit(arg_0.x));
    global4 = array<vec2<bool>, 19>();
    var var_0 = Struct_1(arg_2.x, arg_1, reverseBits(vec4<u32>(min(u_input.a.x, u_input.d.x), _wgslsmith_sub_u32(~1u, ~arg_0.x), ~u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, select(5574u, u_input.a.x, true)))));
    return 1i;
}

fn func_2() -> f32 {
    var var_0 = Struct_1(func_3(u_input.d.xz, _wgslsmith_f_op_f32(floor(1f)), select(-max(vec4<i32>(u_input.c, 0i, u_input.b, 2147483647i), vec4<i32>(-725i, u_input.c, 1i, -19245i)), -firstLeadingBit(vec4<i32>(u_input.c, global3.x, u_input.b, global3.x)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(sign(1897f)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, firstTrailingBit(4294967295u), u_input.d.x, _wgslsmith_mult_u32(~4294967295u, u_input.d.x)), vec4<u32>(u_input.a.x, _wgslsmith_sub_u32(u_input.d.x, 45805u), 4294967295u, select(17933u, 0u, false))));
    var var_1 = Struct_1(-global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + -1611f)))), vec4<u32>(u_input.d.x, select(~reverseBits(4294967295u), u_input.d.x, true == all(vec3<bool>(true, true, false))), reverseBits(countOneBits(~var_0.c.x)), _wgslsmith_clamp_u32(~_wgslsmith_add_u32(0u, 28553u), u_input.d.x, _wgslsmith_mult_u32(u_input.d.x, 0u))));
    var var_2 = -57271i;
    var_1 = Struct_1(select(global3.x, -firstLeadingBit(2147483647i), any(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, var_0.c.x) ^ vec4<u32>(11697u, 1u, u_input.d.x, 12368u), abs(var_0.c)), 19u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1244f) * var_0.b)), vec4<u32>(55385u, u_input.a.x, ~11067u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0.c.x), vec2<u32>(4294967295u, 5352u)))));
    var var_3 = Struct_1(global3.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -244f), _wgslsmith_div_f32(-174f, var_1.b), false))))), abs(~reverseBits(vec4<u32>(36138u, 1u, var_1.c.x, var_1.c.x))));
    return var_0.b;
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-arg_2.b);
    global1 = false;
    global1 = true;
    global2 = _wgslsmith_f_op_f32(-arg_2.b);
    var var_1 = arg_3.x;
    return Struct_1(arg_3.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x))), -2201f)), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.d.xy, vec2<u32>(arg_2.c.x, 4294967295u)) >> (~u_input.a.x % 32u), ~(~arg_2.c.x), _wgslsmith_clamp_u32(~arg_2.c.x, arg_2.c.x << (u_input.a.x % 32u), arg_2.c.x), 20103u) << (u_input.a % vec4<u32>(32u)));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec3<f32>, arg_3: vec3<i32>) -> f32 {
    global4 = array<vec2<bool>, 19>();
    global4 = array<vec2<bool>, 19>();
    var var_0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), arg_2.x)), arg_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0 * 201f), arg_2.x, any(!global4[_wgslsmith_index_u32(4294967295u, 19u)]))), arg_0), _wgslsmith_f_op_f32(f32(-1f) * -444f), Struct_1(_wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(arg_3.x, 17214i), -u_input.c), 2147483647i, arg_3.x), _wgslsmith_f_op_f32(f32(-1f) * -1638f), vec4<u32>(u_input.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.d.x, u_input.a.x), vec3<u32>(0u, 53003u, u_input.d.x)), abs(~1u), 4294967295u & ~u_input.a.x)), arg_3.yx);
    let var_1 = func_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0, arg_0, arg_0, -1690f))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, arg_2.x, var_0.b, var_0.b))))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b, 285f, -927f, 858f)))))))), arg_0, func_4(vec4<f32>(_wgslsmith_f_op_f32(max(1653f, _wgslsmith_f_op_f32(arg_0 - arg_0))), 1435f, var_0.b, var_0.b), var_0.b, Struct_1(_wgslsmith_sub_i32(34621i, reverseBits(0i)), -853f, abs(u_input.a >> (vec4<u32>(18066u, var_0.c.x, 0u, 386u) % vec4<u32>(32u)))), global3.zy), _wgslsmith_sub_vec2_i32(vec2<i32>(countOneBits(-1i), u_input.c | -2147483647i), arg_3.xx) << (u_input.d.yz % vec2<u32>(32u)));
    var var_2 = Struct_1(firstTrailingBit(_wgslsmith_div_i32(-1105i, ~(~u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(var_0.b, var_0.b)), _wgslsmith_f_op_f32(abs(1747f))))))), u_input.a);
    return _wgslsmith_f_op_f32(round(-1003f));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec2<bool>, 19>();
    let var_0 = -28605i;
    global2 = -631f;
    let var_1 = u_input.d.x ^ 4294967295u;
    global2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-820f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(444f, true, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-185f, 741f, -704f))), ~vec3<i32>(-1i, var_0, var_0)))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~vec3<i32>(2147483647i, -u_input.b, 0i)), ~_wgslsmith_mult_u32(u_input.a.x, 54098u));
}

