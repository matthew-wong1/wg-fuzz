struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: f32,
}

struct Struct_5 {
    a: i32,
    b: vec2<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13>;

var<private> global1: array<f32, 9> = array<f32, 9>(1255f, 961f, 1212f, -1089f, 2480f, -516f, -494f, -331f, 319f);

var<private> global2: vec4<i32>;

var<private> global3: array<vec2<f32>, 2> = array<vec2<f32>, 2>(vec2<f32>(-1202f, -1000f), vec2<f32>(1966f, 1778f));

var<private> global4: Struct_3;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(u_input.a.x, 9u)]))))));
    var var_1 = Struct_3(global4.a, vec2<u32>(50244u, 23901u));
    var var_2 = global2.zy;
    let var_3 = vec3<bool>(false, true, global4.a.d);
    let var_4 = true == var_1.a.d;
    return _wgslsmith_f_op_f32(-global4.a.a.x);
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global4.a.a.x - global0[_wgslsmith_index_u32(0u, 13u)]), _wgslsmith_f_op_f32(round(1290f)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(arg_0.x, 9u)], -533f), _wgslsmith_f_op_f32(ceil(global4.a.a.x)))), any(select(vec2<bool>(true, global4.a.d), vec2<bool>(global4.a.d, global4.a.d), vec2<bool>(false, true)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -128f)));
    var var_1 = Struct_5(global4.a.c, _wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(-global4.a.b, _wgslsmith_mult_i32(global4.a.c, global2.x))), global2.zw), vec2<f32>(var_0, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(4294967295u, arg_0.x, 101486u)), 13u)])));
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(abs(global4.b.x), arg_0.x << (arg_0.x % 32u), !vec3<bool>(true, global4.a.d, true))))))));
    let var_3 = 23227u;
    var var_4 = Struct_5(0i << (max(arg_0.x, 1u) % 32u), _wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(-1i) * -global2.zx), var_1.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.a.a.yy) - _wgslsmith_f_op_vec2_f32(ceil(global3[_wgslsmith_index_u32(10717u, 2u)]))))));
    return global4.a;
}

fn func_1() -> Struct_3 {
    global0 = array<f32, 13>();
    global4 = Struct_3(global4.a, ~(~(~(vec2<u32>(global4.b.x, global4.b.x) ^ global4.b))));
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-global4.a.a), _wgslsmith_add_i32(1i, _wgslsmith_div_i32(select(global4.a.b, global2.x, global4.a.d), 1i)), ~firstLeadingBit(global4.a.b), true), u_input.d, global4.a, false);
    var var_1 = u_input.b.xzz;
    var var_2 = global4.a.a.x;
    return Struct_3(func_2(~(~vec3<u32>(39781u, var_0.b, 44507u))), ~_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(global4.b.x, var_0.b) & vec2<u32>(var_0.b, var_1.x)), ~(~u_input.b.yz)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_3(global4.a, vec2<u32>(36769u, (~u_input.d ^ ~79618u) << (~global4.b.x % 32u)));
    let var_0 = u_input.c;
    let var_1 = ~vec3<u32>(26796u, u_input.d >> (var_0 % 32u), 1u);
    global4 = func_1();
    let var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1[_wgslsmith_index_u32(global4.b.x >> (1u % 32u), 9u)], _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.a.a.x), 414f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(512f - 1373f), _wgslsmith_f_op_f32(ceil(573f))))), 358f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -966f) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(18861u, 13u)]))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-852f, global0[_wgslsmith_index_u32(1839u, 13u)], -1657f, global1[_wgslsmith_index_u32(global4.b.x, 9u)])), vec4<f32>(-944f, 1854f, global4.a.a.x, global4.a.a.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_f32(min(586f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-651f * func_1().a.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(551f)))))), vec3<u32>(var_1.x, ~(~(~92140u)), 64464u), 26364u);
}

