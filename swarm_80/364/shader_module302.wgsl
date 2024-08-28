struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(51249i), Struct_3(-4421i), Struct_3(22342i), Struct_3(-20879i), Struct_3(-1i), Struct_3(0i), Struct_3(-17988i), Struct_3(-35495i), Struct_3(i32(-2147483648)), Struct_3(-1632i), Struct_3(2274i), Struct_3(1i), Struct_3(-1i), Struct_3(2147483647i), Struct_3(49900i), Struct_3(0i), Struct_3(1i), Struct_3(-1i), Struct_3(-1i), Struct_3(2086i), Struct_3(-31444i), Struct_3(-64090i), Struct_3(-1i), Struct_3(2147483647i), Struct_3(51883i), Struct_3(i32(-2147483648)), Struct_3(0i), Struct_3(8427i), Struct_3(1i), Struct_3(2147483647i), Struct_3(2147483647i));

var<private> global1: i32 = 2147483647i;

var<private> global2: vec4<f32> = vec4<f32>(-583f, 1466f, -1000f, 1413f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3) -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(min(_wgslsmith_div_u32(u_input.a, 8934u << (_wgslsmith_div_u32(1u, u_input.a) % 32u)), abs(54005u >> (0u % 32u))), 31u)];
    let var_1 = _wgslsmith_div_i32(select(u_input.b.x, -6901i, true), ~_wgslsmith_mult_i32(var_0.a, 1i) >> ((u_input.a << (reverseBits(8707u) % 32u)) % 32u)) ^ ~arg_0.a;
    global1 = 0i;
    global2 = vec4<f32>(-827f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-852f * _wgslsmith_div_f32(global2.x, global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, -343f)))))), -1839f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.x))) + _wgslsmith_f_op_f32(-global2.x))));
    global1 = ~_wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(1i, firstLeadingBit(26512i)), ~0i), _wgslsmith_dot_vec3_i32(max(u_input.b, vec3<i32>(arg_0.a, var_1, arg_0.a)), vec3<i32>(~56998i, var_0.a ^ 17686i, var_1)));
    return var_1;
}

fn func_2() -> f32 {
    let var_0 = ~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.a, 7660u, u_input.a), u_input.a);
    global1 = u_input.b.x;
    global2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1332f), 1011f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-108f + global2.x))))), global2.x);
    let var_1 = func_3(Struct_3(select(~u_input.b.x, -1i, global2.x <= -1843f))) >= _wgslsmith_dot_vec2_i32(-u_input.b.zx, ~(_wgslsmith_mod_vec2_i32(u_input.b.yx, vec2<i32>(u_input.b.x, -2147483647i)) ^ (u_input.b.zx << (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)))));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(1u, firstLeadingBit(u_input.a), 14400u, 1u)), firstLeadingBit(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 0u, 0u, 23158u) & vec4<u32>(7952u, var_0, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, var_0, 0u)))), 31u)];
    return _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + global2.x) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-435f * global2.x))))));
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: u32) -> Struct_1 {
    global2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.x)) * arg_1), 1f) * _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(func_2()))))), global2.x, -747f);
    global2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1359f + 2639f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - global2.x) + _wgslsmith_f_op_f32(min(1000f, arg_1))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1184f, arg_1, global2.x, arg_1)), vec4<f32>(-1000f, -1330f, _wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_f_op_f32(sign(-933f))))) - vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1 + global2.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1))), arg_1, -1000f)));
    let var_0 = _wgslsmith_div_vec3_u32(~vec3<u32>(_wgslsmith_clamp_u32(1u, countOneBits(arg_2), _wgslsmith_mult_u32(34810u, 17791u)), reverseBits(4294967295u), _wgslsmith_add_u32(countOneBits(arg_2), 9571u)), vec3<u32>(_wgslsmith_sub_u32(1u, u_input.a), abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, arg_2, 0u), vec3<u32>(51625u, 0u, 71484u))), ~arg_2));
    let var_1 = Struct_3(52198i);
    global2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1605f, 443f, -1485f, -2113f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1, arg_1, 295f, -942f), vec4<f32>(global2.x, 1000f, arg_1, -560f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, -431f, 489f)))))));
    return Struct_1(_wgslsmith_f_op_f32(min(465f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1))) - -1788f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_sub_vec3_u32(reverseBits(reverseBits(~vec3<u32>(u_input.a, 0u, u_input.a))), ~_wgslsmith_clamp_vec3_u32(max(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(4294967295u, 29374u, u_input.a)), vec3<u32>(4294967295u, 69807u, u_input.a), ~vec3<u32>(4294967295u, u_input.a, u_input.a))), 12826i, func_1(Struct_3(abs(_wgslsmith_add_i32(u_input.b.x, -2147483647i))), -696f, u_input.a), Struct_1(-210f));
    let var_1 = func_1(global0[_wgslsmith_index_u32(u_input.a, 31u)], _wgslsmith_f_op_f32(global2.x - _wgslsmith_div_f32(-785f, _wgslsmith_f_op_f32(abs(global2.x)))), abs(u_input.a << (_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), u_input.a) % 32u)));
    global0 = array<Struct_3, 31>();
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.x, _wgslsmith_f_op_f32(round(-1299f)))));
    let var_3 = u_input.b;
    var_0 = Struct_4(abs(var_0.a) << ((~var_0.a | ~vec3<u32>(4294967295u, 39248u, var_0.a.x)) % vec3<u32>(32u)), ~var_0.b, func_1(Struct_3(_wgslsmith_mod_i32(var_0.b, -2147483647i) | 19253i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1136f - var_1.a))), _wgslsmith_dot_vec2_u32(var_0.a.xz, _wgslsmith_clamp_vec2_u32(vec2<u32>(25253u, 3133u), ~vec2<u32>(0u, 0u), var_0.a.xy))), Struct_1(var_2.x));
    var_0 = Struct_4(_wgslsmith_mod_vec3_u32(~var_0.a, vec3<u32>(select(0u, var_0.a.x, false), var_0.a.x, 63174u)) >> (vec3<u32>(16374u, min(1u, 5321u) ^ var_0.a.x, 19285u) % vec3<u32>(32u)), _wgslsmith_clamp_i32(reverseBits(_wgslsmith_mod_i32(u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, var_3.x))), _wgslsmith_dot_vec3_i32(reverseBits(max(vec3<i32>(u_input.b.x, var_3.x, var_3.x), u_input.b)), var_3), ~(-1i)), var_0.c, var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec2_u32(var_0.a.zx, _wgslsmith_sub_vec2_u32(min(var_0.a.zy, var_0.a.zy), vec2<u32>(1u, var_0.a.x))), var_0.b, ~u_input.b.xx, ~vec2<u32>(~var_0.a.x, u_input.a), -vec4<i32>(reverseBits(20800i), -u_input.b.x, _wgslsmith_mod_i32(-1i ^ var_0.b, var_0.b), min(~(-36053i), 0i)));
}

