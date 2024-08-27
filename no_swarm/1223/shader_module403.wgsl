struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: vec4<bool>,
    d: u32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_4,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<vec4<bool>, 10>;

var<private> global2: Struct_5;

var<private> global3: array<f32, 9>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec4<f32>) -> i32 {
    var var_0 = global2.d;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.c.x, 9u)]) - global3[_wgslsmith_index_u32(var_0.b.d, 9u)])))));
    var var_2 = var_0.b;
    let var_3 = var_0.b;
    global0 = _wgslsmith_mult_i32(var_3.e.x, var_2.e.x);
    return -(~var_3.e.x) << (_wgslsmith_clamp_u32(~7775u, ~(~(~6047u)), abs(var_3.d)) % 32u);
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    global1 = array<vec4<bool>, 10>();
    var var_0 = global2.c;
    let var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(176f, 1125f, -1000f) - vec3<f32>(global2.b.a.x, arg_0.b.x, 244f)))))), Struct_1(_wgslsmith_f_op_vec4_f32(var_0.a.b.b - _wgslsmith_f_op_vec4_f32(var_0.a.b.b * _wgslsmith_f_op_vec4_f32(select(var_0.a.b.b, arg_0.b, global2.d.b.c.x)))), var_0.a.b.c.zwy, ~vec4<u32>(17020u, 1u, global2.b.c.x, 1u) >> (vec4<u32>(abs(var_0.a.b.d), _wgslsmith_mult_u32(0u, 46699u), ~var_0.a.b.d, 1u) % vec4<u32>(32u))), Struct_4(global2.c.a), Struct_3(_wgslsmith_mult_i32(_wgslsmith_add_i32(45581i, abs(arg_0.e.x)), -18146i), Struct_2(_wgslsmith_f_op_f32(-861f * _wgslsmith_f_op_f32(trunc(-1109f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_0.a.b.b)) * _wgslsmith_f_op_vec4_f32(sign(global2.b.a))), select(var_0.a.b.c, global1[_wgslsmith_index_u32(4294967295u, 10u)], arg_0.c), ~var_0.a.b.d >> (0u % 32u), var_0.a.b.e), var_0.a.b.d < ~(~arg_0.d)));
    let var_2 = true;
    return vec2<bool>(global2.d.b.c.x && var_2, all(!global2.c.a.b.c.yzz));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = global2.d.b.e.x;
    let var_1 = global2.d.b;
    let var_2 = vec2<bool>(true, any(func_3(Struct_2(global3[_wgslsmith_index_u32(u_input.b, 9u)], _wgslsmith_f_op_vec4_f32(global2.c.a.b.b + vec4<f32>(var_1.a, var_1.a, -360f, -1467f)), !global2.d.b.c, global2.b.c.x, firstTrailingBit(vec2<i32>(u_input.a, 0i))))));
    global0 = 0i >> (~4294967295u % 32u);
    global1 = array<vec4<bool>, 10>();
    return global2.d.b;
}

fn func_4(arg_0: Struct_2) -> i32 {
    global3 = array<f32, 9>();
    var var_0 = select(~min(u_input.c & u_input.c, u_input.c), _wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(0u, 18781u, arg_0.d, _wgslsmith_clamp_u32(~43113u, 0u, ~arg_0.d))), !(!any(global2.b.b)));
    return reverseBits(_wgslsmith_mult_i32(abs(_wgslsmith_div_i32(global2.c.a.a, ~arg_0.e.x)), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(459f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(934f - global3[_wgslsmith_index_u32(global2.d.b.d, 9u)]), global3[_wgslsmith_index_u32(u_input.b, 9u)])) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(150f - global3[_wgslsmith_index_u32(4294967295u, 9u)]))))));
    let var_2 = func_4(func_2(_wgslsmith_add_i32(func_1(_wgslsmith_f_op_vec4_f32(-global2.b.a)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 40265i, u_input.a), select(vec3<i32>(-1i, u_input.a, 1i), vec3<i32>(26142i, -2147483647i, global2.c.a.a), global2.c.a.c)))));
    let var_3 = all(vec3<bool>(!any(select(global1[_wgslsmith_index_u32(u_input.c.x, 10u)], global2.c.a.b.c, vec4<bool>(true, false, global2.c.a.b.c.x, true))), global2.b.b.x, all(select(vec4<bool>(global2.c.a.c, global2.c.a.b.c.x, global2.d.b.c.x, true), vec4<bool>(global2.c.a.c, global2.c.a.c, global2.b.b.x, true), func_2(-20413i).c.x))));
    let var_4 = Struct_4(global2.d);
    var var_5 = global2.b;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.yzy, var_5.c.xyw, firstTrailingBit(i32(-1i) * -7649i), abs(~vec3<u32>(global2.b.c.x, _wgslsmith_div_u32(4294967295u, u_input.b), ~var_5.c.x)), var_5.a.xz);
}

