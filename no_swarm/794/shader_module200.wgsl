struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26>;

var<private> global1: vec3<i32>;

var<private> global2: array<Struct_2, 11>;

var<private> global3: array<bool, 32> = array<bool, 32>(true, false, false, true, true, false, false, false, true, true, false, true, false, true, false, false, false, true, true, true, false, true, false, false, true, false, true, true, false, false, false, true);

var<private> global4: Struct_1;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(81639u, u_input.a.x), ~reverseBits(u_input.a), ~vec2<u32>(u_input.a.x << (u_input.a.x % 32u), u_input.a.x << (u_input.a.x % 32u))), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a.x, u_input.a.x), vec4<u32>(510u, 60428u, 0u, u_input.a.x)), ~u_input.a.x) >> (u_input.a % vec2<u32>(32u)), ~vec2<u32>(0u, select(u_input.a.x, u_input.a.x, global4.c.x)), abs(u_input.a)), vec2<u32>(u_input.a.x, countOneBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 0u, 4294967295u), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x) | vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)))));
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(var_0.x, var_0.x), 26u)];
    var var_2 = vec4<bool>(false, true, global3[_wgslsmith_index_u32(u_input.a.x, 32u)], global3[_wgslsmith_index_u32(0u, 32u)]);
    global4 = arg_0.c;
    let var_3 = arg_0;
    return _wgslsmith_sub_i32(_wgslsmith_add_i32(0i, countOneBits(global4.b)), var_3.c.a);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: f32, arg_3: u32) -> vec4<f32> {
    global4 = Struct_1(global1.x, -10396i, arg_0.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1547f, -498f, -395f), global4.d, vec3<bool>(false, arg_0.c.x, global4.c.x)))) - _wgslsmith_div_vec3_f32(arg_0.d, global4.d)) - vec3<f32>(1408f, arg_2, _wgslsmith_f_op_f32(-1073f + 1000f))));
    let var_0 = ~vec4<i32>(min(global4.b, arg_0.a), global1.x, arg_0.a, 2147483647i);
    var var_1 = Struct_2(func_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(~vec3<u32>(arg_3, u_input.a.x, u_input.a.x)), vec3<u32>(~1u, ~59126u, arg_3)), 26u)]), -var_0, Struct_1((_wgslsmith_add_i32(1i, var_0.x) >> ((0u >> (u_input.a.x % 32u)) % 32u)) & global1.x, _wgslsmith_add_i32(-19528i, _wgslsmith_clamp_i32(~global4.a, min(arg_0.b, var_0.x), -1i >> (1u % 32u))), vec3<bool>(global4.c.x, false, any(vec4<bool>(global4.c.x, false, true, global4.c.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.d, vec3<f32>(arg_0.d.x, arg_0.d.x, 731f)) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-322f, -2035f, arg_0.d.x))))))));
    global2 = array<Struct_2, 11>();
    var_1 = Struct_2(_wgslsmith_div_i32(func_3(global0[_wgslsmith_index_u32(0u, 26u)]), ~(-1i)), var_1.b, var_1.c);
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1481f) + _wgslsmith_f_op_f32(f32(-1f) * -650f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2746f * var_1.c.d.x)), -673f, global4.d.x) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.c.d.x, -376f, _wgslsmith_f_op_f32(-580f - _wgslsmith_f_op_f32(max(arg_2, -527f))), global4.d.x))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: vec3<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_2(Struct_1(arg_0.x, -16264i, global4.c, arg_1), vec2<bool>(true, true), global4.d.x, 4294967295u)))) - vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(851f * 1159f), global4.d.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.d.x, -1418f, arg_1.x, -450f)), vec4<f32>(-1459f, global4.d.x, arg_1.x, global4.d.x), global3[_wgslsmith_index_u32(select(52150u, 1u, global3[_wgslsmith_index_u32(u_input.a.x, 32u)]), 32u)]))))));
    var var_1 = Struct_1(-arg_2.x, countOneBits(global1.x), vec3<bool>(u_input.a.x >= u_input.a.x, any(!global4.c), select(select(global3[_wgslsmith_index_u32(u_input.a.x, 32u)] && global4.c.x, false, all(global4.c)), true & (global3[_wgslsmith_index_u32(u_input.a.x, 32u)] | global4.c.x), any(vec4<bool>(global4.c.x, global3[_wgslsmith_index_u32(9771u, 32u)], global4.c.x, true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.zzy * vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), global4.d.x, var_0.x)) + _wgslsmith_f_op_vec3_f32(-var_0.wzy)));
    var var_2 = global3[_wgslsmith_index_u32(~(~min(u_input.a.x, ~u_input.a.x)), 32u)];
    var var_3 = -1926f;
    let var_4 = Struct_1(-5176i, _wgslsmith_dot_vec3_i32(arg_2 ^ (arg_0 << (vec3<u32>(32915u, u_input.a.x, 0u) % vec3<u32>(32u))), ~countOneBits(vec3<i32>(global1.x, 33086i, arg_0.x))) | firstTrailingBit(abs(_wgslsmith_sub_i32(global1.x, -8316i))), !vec3<bool>(true, var_0.x == _wgslsmith_f_op_f32(f32(-1f) * -810f), true), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(958f, var_0.x), global4.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(414f * var_1.d.x))) * arg_1));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4.a >> (26684u % 32u);
    let var_1 = ~func_1(vec3<i32>(countOneBits(-43444i), -56318i, global1.x) >> (~select(vec3<u32>(1u, u_input.a.x, 41645u), vec3<u32>(u_input.a.x, u_input.a.x, 0u), global4.c) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.d.x, -476f, global4.d.x) + vec3<f32>(185f, global4.d.x, -2228f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-369f, -293f, 326f))), ~firstLeadingBit(abs(vec3<i32>(global4.a, -5144i, global4.b))));
    var var_2 = global0[_wgslsmith_index_u32(~var_1 >> (1u % 32u), 26u)];
    var_0 = 38577i;
    var var_3 = Struct_1(2147483647i, -1070i, vec3<bool>(any(vec4<bool>(!var_2.c.c.x, false, global4.c.x || global4.c.x, !var_2.c.c.x)), true, true), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec4_f32(func_2(var_2.c, vec2<bool>(false, global4.c.x), _wgslsmith_f_op_f32(f32(-1f) * -209f), ~var_1)).x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec4_f32(func_2(var_2.c, vec2<bool>(false, true), global4.d.x, var_1)).x, _wgslsmith_f_op_f32(abs(-623f)))), !global3[_wgslsmith_index_u32(~var_1, 32u)])), global4.d.x, global4.d.x));
    var_3 = var_2.c;
    var var_4 = max(vec4<u32>(~var_1, ~countOneBits(u_input.a.x), ~countOneBits(u_input.a.x), countOneBits(min(u_input.a.x, var_1))), (vec4<u32>(16083u, var_1, var_1, 26178u) << (vec4<u32>(4294967295u, 1095u, var_1, var_1) % vec4<u32>(32u))) >> (((vec4<u32>(u_input.a.x, 1u, 0u, var_1) ^ vec4<u32>(0u, var_1, 0u, u_input.a.x)) | ~vec4<u32>(103279u, 17601u, var_1, u_input.a.x)) % vec4<u32>(32u))) & vec4<u32>(~(~_wgslsmith_sub_u32(u_input.a.x, var_1)), ~21112u, u_input.a.x, ~abs(max(u_input.a.x, 37766u)));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~(~vec3<u32>(var_1, 1u, 6388u))));
}

