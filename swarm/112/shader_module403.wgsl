struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<i32>(-95564i, -1i), 8791i, 4294967295u, true), Struct_1(vec2<i32>(47695i, -65278i), -12521i, 4294967295u, true), Struct_1(vec2<i32>(i32(-2147483648), 0i), 0i, 17638u, true), Struct_1(vec2<i32>(1i, 0i), 24332i, 1u, true), Struct_1(vec2<i32>(i32(-2147483648), 55064i), -1i, 1u, true), Struct_1(vec2<i32>(28841i, -5725i), 1i, 21220u, true), Struct_1(vec2<i32>(i32(-2147483648), -46514i), -8771i, 28325u, false), Struct_1(vec2<i32>(0i, i32(-2147483648)), 2147483647i, 0u, true), Struct_1(vec2<i32>(-1i, i32(-2147483648)), -13333i, 4294967295u, false), Struct_1(vec2<i32>(-2739i, -1i), -28603i, 4294967295u, false), Struct_1(vec2<i32>(1i, 2147483647i), -22835i, 36802u, false), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), -37693i, 6275u, true));

var<private> global2: array<Struct_2, 14>;

var<private> global3: array<f32, 16> = array<f32, 16>(-1442f, -396f, -728f, -768f, -807f, -577f, 202f, 142f, -677f, -1000f, 442f, 1186f, 170f, 1014f, 993f, 327f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = ~reverseBits(24574u);
    global2 = array<Struct_2, 14>();
    global1 = array<Struct_1, 12>();
    var var_1 = arg_0.b.d;
    var var_2 = vec3<i32>(-1i) * -vec3<i32>(~(~arg_0.b.b), u_input.a.x, 1i);
    return _wgslsmith_f_op_vec2_f32(global0.yw - _wgslsmith_f_op_vec2_f32(-global0.wy));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: u32, arg_3: vec2<f32>) -> Struct_1 {
    global3 = array<f32, 16>();
    var var_0 = ~vec4<u32>(countOneBits(arg_2), arg_2, 1u, arg_2);
    let var_1 = _wgslsmith_sub_i32(~((abs(u_input.a.x) >> (1u % 32u)) << (_wgslsmith_dot_vec3_u32(var_0.yxx, reverseBits(vec3<u32>(var_0.x, 4294967295u, arg_2))) % 32u)), 1i >> ((~(arg_2 >> (37661u % 32u)) | 1u) % 32u));
    global2 = array<Struct_2, 14>();
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~6644u, 1u), 14u)];
    return var_2.b;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    global1 = array<Struct_1, 12>();
    let var_0 = -2147483647i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1557f - -769f));
    global1 = array<Struct_1, 12>();
    let var_2 = -333f;
    return arg_2;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec2<f32>, arg_3: f32) -> f32 {
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(min(arg_3, 770f)))))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_add_u32(arg_0.b.c, arg_0.b.c) & _wgslsmith_add_u32(13661u, arg_0.b.c)), 16u)]));
    var_1 = _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(~(~abs(arg_0.b.c)), 16u)]));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1399f * _wgslsmith_div_f32(1262f, arg_3)), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.a, arg_0.a) >> (4294967295u % 32u), 16u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1274f, arg_2.x)), _wgslsmith_f_op_f32(step(-639f, arg_3)))), 344f), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-253f * arg_3), 548f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1089f)) + -655f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-935f, -1127f)) + _wgslsmith_f_op_f32(1799f + global3[_wgslsmith_index_u32(arg_0.b.c, 16u)])), -831f)));
    let var_2 = global2[_wgslsmith_index_u32(~arg_0.a, 14u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(12082u, 9506u, var_2.a), vec3<u32>(arg_0.a, var_2.b.c, arg_0.a)), ~arg_0.a), 16u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 16>();
    var var_0 = 76210u;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -552f);
    global3 = array<f32, 16>();
    global2 = array<Struct_2, 14>();
    global2 = array<Struct_2, 14>();
    let var_2 = _wgslsmith_f_op_f32(func_4(Struct_2(~(firstTrailingBit(27575u) & abs(4294967295u)), func_3(global1[_wgslsmith_index_u32(1u | firstTrailingBit(13599u), 12u)], vec2<u32>(33321u, 42534u), func_2(any(vec4<bool>(false, false, false, true)), min(u_input.a.zz, vec2<i32>(2147483647i, -15345i)), min(4294967295u, 52401u), _wgslsmith_f_op_vec2_f32(func_1(global2[_wgslsmith_index_u32(22176u, 14u)], 1u, global3[_wgslsmith_index_u32(16264u, 16u)], Struct_2(0u, Struct_1(u_input.a.xx, u_input.a.x, 4294967295u, true))))), abs(~31989u))), !select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), true), vec2<bool>(true, true), countOneBits(u_input.a.x) < ~u_input.a.x), _wgslsmith_f_op_vec2_f32(global0.zy * global0.zx), _wgslsmith_f_op_f32(529f + global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(7201u, 6331u, 12076u), vec3<u32>(19543u, 21471u, 100446u)), 16u)])));
    global1 = array<Struct_1, 12>();
    global3 = array<f32, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(~vec3<u32>(~91862u, 0u, ~10063u), vec3<u32>(1u, _wgslsmith_sub_u32(1u, 1u), 1u), vec3<u32>(16538u, 1u, 4294967295u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1014f))), 2169f)), 26262u, vec4<i32>(2147483647i, 2147483647i, 32230i, u_input.a.x));
}

