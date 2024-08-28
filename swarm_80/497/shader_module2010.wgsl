struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<bool>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 22>;

var<private> global1: Struct_1;

var<private> global2: array<vec3<bool>, 15> = array<vec3<bool>, 15>(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true));

var<private> global3: vec2<i32>;

var<private> global4: Struct_2 = Struct_2(vec3<f32>(-1877f, 391f, -318f), Struct_1(vec3<f32>(1187f, 201f, 854f), 2147483647i), vec4<bool>(false, false, true, false), 1413u);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global4.b.a.x, 365f, 1000f, 1000f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, global4.b.a.x, global4.a.x, global1.a.x)))))))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) + _wgslsmith_f_op_f32(-var_0.x)), 2156f);
    var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_0.x, global4.a.x, global1.a.x)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, -528f, var_0.x, arg_1), vec4<f32>(-407f, global1.a.x, 864f, global1.a.x)))), vec4<f32>(-765f, _wgslsmith_div_f32(723f, var_1.x), _wgslsmith_f_op_f32(-global4.b.a.x), _wgslsmith_f_op_f32(global4.b.a.x - global1.a.x)), global4.c)))));
    var var_2 = !all(!(!vec3<bool>(global4.c.x, false, global4.c.x)));
    var_2 = all(select(global4.c.zw, select(!global4.c.wy, global4.c.xz, vec2<bool>(global4.c.x, global4.c.x)), vec2<bool>(true, true)));
    return ~(~_wgslsmith_sub_i32(global4.b.b, _wgslsmith_mult_i32(global3.x, _wgslsmith_add_i32(27226i, u_input.c))));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(global4.a.x * _wgslsmith_f_op_f32(-global1.a.x));
    global1 = global4.b;
    global3 = _wgslsmith_mult_vec2_i32(vec2<i32>(~18744i, ~global4.b.b), vec2<i32>(func_3(global1.b, 729f), 4508i));
    global4 = Struct_2(global4.b.a, global4.b, global4.c, 0u & _wgslsmith_sub_u32(global4.d, _wgslsmith_mod_u32(~7311u, ~46741u)));
    global1 = global4.b;
    return Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.a + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.a.x, -576f, global1.a.x)))), vec3<f32>(-1184f, _wgslsmith_f_op_f32(-global4.b.a.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1735f), 1446f)))), global4.b, global4.c, firstLeadingBit(~(~27371u)) ^ ~_wgslsmith_mult_u32(_wgslsmith_add_u32(1u, u_input.d), ~global4.d));
}

fn func_1() -> Struct_1 {
    let var_0 = vec4<u32>(4294967295u, abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global4.d), vec2<u32>(1u, global4.d) & vec2<u32>(u_input.d, 0u))), u_input.a, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.d, global4.d, u_input.d, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 0u, global4.d, 4294967295u), vec4<u32>(u_input.d, global4.d, 29080u, u_input.d))) ^ reverseBits(~global4.d), ~4294967295u));
    global0 = array<vec4<u32>, 22>();
    var var_1 = func_2();
    var var_2 = ~((abs(global4.b.b ^ global1.b) | (i32(-1i) * -global3.x)) | var_1.b.b);
    let var_3 = func_2().b;
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(global4.d, 15u)];
    let var_1 = func_1();
    let var_2 = func_2();
    let var_3 = var_2.b;
    let var_4 = global3.x;
    global1 = var_1;
    let var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.x, 1000f, global1.a.x, -562f) * vec4<f32>(global4.b.a.x, var_1.a.x, -1362f, var_2.b.a.x)))), vec4<f32>(_wgslsmith_f_op_f32(abs(global4.b.a.x)), _wgslsmith_f_op_f32(max(-2311f, var_2.a.x)), _wgslsmith_f_op_f32(global4.a.x - -788f), _wgslsmith_f_op_f32(var_2.a.x * 729f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-642f, var_3.a.x, var_2.b.a.x, var_3.a.x) - vec4<f32>(-201f, 662f, var_2.a.x, -1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(816f, -735f, -1218f, 149f) + vec4<f32>(global4.a.x, var_1.a.x, var_2.a.x, -640f))), vec4<f32>(_wgslsmith_div_f32(1672f, 192f), var_1.a.x, var_1.a.x, _wgslsmith_div_f32(828f, -585f)))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, global4.a.x, var_3.a.x, 1704f)), vec4<f32>(-1000f, -1671f, var_3.a.x, -133f)), _wgslsmith_div_vec4_f32(vec4<f32>(global4.b.a.x, -256f, -332f, var_1.a.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.a.x, var_2.a.x, -230f, var_2.a.x))))))));
    var var_6 = func_2().b;
    var var_7 = 2479f;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~global0[_wgslsmith_index_u32(global4.d, 22u)])));
}

