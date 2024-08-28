struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<i32, 2>;

var<private> global2: u32;

var<private> global3: array<Struct_2, 27>;

var<private> global4: vec3<f32> = vec3<f32>(-569f, 1971f, 1049f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> vec3<bool> {
    var var_0 = arg_1;
    global1 = array<i32, 2>();
    global4 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global4.x, -262f, 264f), _wgslsmith_div_vec3_f32(vec3<f32>(-190f, global0.x, 143f), vec3<f32>(global0.x, global4.x, -1000f)))))), vec3<f32>(-624f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x))), global0.x)));
    let var_1 = max(vec2<u32>(_wgslsmith_mult_u32(arg_1.a ^ 21484u, min(8556u, 4072u)) | min(var_0.a, firstTrailingBit(4294967295u)), ~(~9522u)), u_input.b.zx);
    var var_2 = ~(~u_input.e);
    return !vec3<bool>(arg_3, _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 2u)], _wgslsmith_mod_i32(u_input.e, global1[_wgslsmith_index_u32(u_input.b.x, 2u)])) == -32725i, ~arg_1.a != ~0u);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>) -> u32 {
    let var_0 = 85047u;
    global4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.yyx * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(arg_1.xxz + _wgslsmith_f_op_vec3_f32(round(arg_1.ywx)))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_0.c.wzx)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global4.x, arg_0.c.x, -723f), _wgslsmith_f_op_vec3_f32(arg_1.xxz + arg_1.ywx)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global4.x, -850f, 1041f))))), !func_3(0u, Struct_1(u_input.b.x), -u_input.e, arg_1.x > 574f))));
    let var_1 = abs(u_input.d);
    let var_2 = Struct_1(~(~(~(~14995u))));
    let var_3 = abs(abs(_wgslsmith_div_vec2_i32(vec2<i32>(~u_input.e, global1[_wgslsmith_index_u32(101156u, 2u)]), -(~vec2<i32>(-2147483647i, 1i)))));
    return ~(~4294967295u);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> vec3<f32> {
    let var_0 = ~func_2(Struct_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_1.a - arg_1.c.www))), arg_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.c)), true), arg_1.c);
    global2 = ~_wgslsmith_sub_u32(arg_1.b.a, ~(~arg_2.a));
    global0 = arg_0.wz;
    global4 = arg_0.yxz;
    var var_1 = arg_1.b;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(-492f, 2695f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(221f + _wgslsmith_f_op_f32(-global4.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1u);
    global1 = array<i32, 2>();
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(func_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1071f), global4.x), global3[_wgslsmith_index_u32(~(~(~11005u)), 27u)], var_0, false)), var_0, vec4<f32>(133f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global4.x * _wgslsmith_f_op_f32(f32(-1f) * -1238f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * 837f) * global0.x))), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) != global4.x));
    var var_2 = ~select(vec4<i32>(-1i ^ global1[_wgslsmith_index_u32(var_0.a, 2u)], 152i, ~26544i, 99224i), ~firstTrailingBit(vec4<i32>(u_input.e, -2147483647i, global1[_wgslsmith_index_u32(u_input.c.x, 2u)], u_input.e)), vec4<bool>(true, !var_1.d, false, any(vec2<bool>(false, var_1.d)))) ^ select(-firstTrailingBit(abs(vec4<i32>(global1[_wgslsmith_index_u32(var_0.a, 2u)], global1[_wgslsmith_index_u32(var_0.a, 2u)], -4387i, -55437i))), vec4<i32>(-1i) * -(vec4<i32>(global1[_wgslsmith_index_u32(var_0.a, 2u)], -2147483647i, u_input.e, 14255i) & vec4<i32>(u_input.e, 2147483647i, global1[_wgslsmith_index_u32(4294967295u, 2u)], -1i)), false);
    var_2 = ~(-_wgslsmith_div_vec4_i32(firstTrailingBit(-vec4<i32>(-18334i, -66883i, 62912i, u_input.e)), (vec4<i32>(var_2.x, var_2.x, global1[_wgslsmith_index_u32(1u, 2u)], 2408i) ^ vec4<i32>(0i, var_2.x, u_input.e, -11898i)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(80072u, var_0.a, 0u, 25938u), vec4<u32>(u_input.d, 23421u, 54371u, u_input.a)) % vec4<u32>(32u))));
    var var_3 = _wgslsmith_f_op_f32(-global4.x);
    let var_4 = _wgslsmith_dot_vec2_i32(vec2<i32>((select(-422i, u_input.e, var_1.d) << (_wgslsmith_div_u32(0u, u_input.c.x) % 32u)) ^ ~(-34277i | global1[_wgslsmith_index_u32(0u, 2u)]), -1i), ~abs(var_2.xy));
    global4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_1.a)) + _wgslsmith_f_op_vec3_f32(func_1(var_1.c, Struct_2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(569f, global0.x, 1397f))), var_1.b, vec4<f32>(2108f, 1000f, 1768f, -1124f), true), var_1.b, false))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2128f))), -309f), -1641f, _wgslsmith_f_op_f32(f32(-1f) * -985f)));
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(94807u) & (~34955u ^ firstTrailingBit(55301u)), _wgslsmith_f_op_f32(-global0.x), -min(vec4<i32>(-1i) * -vec4<i32>(7278i, 48561i, var_4, u_input.e), select(-vec4<i32>(-31667i, -5449i, 1i, global1[_wgslsmith_index_u32(var_1.b.a, 2u)]), vec4<i32>(-39192i, -32155i, 1i, u_input.e), false)), ~1565u);
}

