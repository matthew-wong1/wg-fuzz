struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 8> = array<vec4<u32>, 8>(vec4<u32>(4294967295u, 68672u, 0u, 26979u), vec4<u32>(6022u, 70626u, 0u, 0u), vec4<u32>(69296u, 0u, 1633u, 17743u), vec4<u32>(5962u, 1u, 1u, 4294967295u), vec4<u32>(0u, 1u, 15942u, 51468u), vec4<u32>(50953u, 0u, 4294967295u, 0u), vec4<u32>(51464u, 0u, 1u, 6491u), vec4<u32>(6594u, 4294967295u, 4294967295u, 18592u));

var<private> global1: i32;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_2) -> vec3<f32> {
    var var_0 = vec2<bool>(false, any(vec4<bool>(false, true, _wgslsmith_f_op_f32(ceil(1051f)) < 289f, arg_0.x <= ~arg_0.x)));
    var var_1 = global0[_wgslsmith_index_u32(1u, 8u)];
    var var_2 = 4294967295u;
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(917f, arg_2, arg_3.b.x, arg_3.b.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-768f, 2237f, 484f, arg_3.c.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-933f, arg_3.b.x, arg_3.c.x, arg_2) * vec4<f32>(-902f, arg_2, -442f, arg_3.c.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.c.x, 1000f, arg_3.b.x, arg_3.c.x))), select(!vec4<bool>(false, false, var_0.x, var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), !vec4<bool>(true, var_0.x, var_0.x, var_0.x)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2 - arg_3.b.x))), _wgslsmith_f_op_f32(-2361f - -698f), arg_3.c.x, arg_3.b.x), select(!select(vec4<bool>(true, false, true, var_0.x), vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(true, false, var_0.x, var_0.x), select(vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(true, false, false, false), false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, var_0.x, true, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), !(!vec4<bool>(var_0.x, false, true, var_0.x))))), vec4<f32>(227f, arg_3.c.x, _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(-arg_2)), arg_2));
    let var_4 = -2147483647i ^ _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32((vec3<i32>(arg_3.a, arg_3.d.x, 47624i) ^ arg_0.wzz) | (vec3<i32>(arg_1.x, 17292i, 5700i) ^ vec3<i32>(arg_3.a, arg_1.x, arg_0.x)), select(vec3<i32>(2147483647i, arg_1.x, -1i), _wgslsmith_mult_vec3_i32(arg_0.zzy, arg_0.zyz), vec3<bool>(true, true, var_0.x))), -1i);
    return var_3.yyy;
}

fn func_2() -> f32 {
    global0 = array<vec4<u32>, 8>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(select(-1094f, 1063f, select(false, false, true))), -548f, _wgslsmith_f_op_f32(max(1f, -777f)), _wgslsmith_f_op_f32(f32(-1f) * -376f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 935f, 237f, _wgslsmith_f_op_f32(1311f * 562f)) * vec4<f32>(-1000f, 1100f, _wgslsmith_f_op_f32(657f - -613f), _wgslsmith_f_op_f32(sign(-715f))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * 359f)) * _wgslsmith_f_op_f32(-182f + 2166f)))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var_1 = var_0.x;
    let var_2 = Struct_2(0i, _wgslsmith_div_vec3_f32(var_0.yyy, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(-12514i, -30249i, 0i, 55099i), vec4<i32>(1i, -1i, 6354i, 19449i)), -122f, Struct_2(1i, var_0.zxw, var_0.wwz, vec2<i32>(-2147483647i, 2147483647i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 805f, -2370f) + vec3<f32>(var_0.x, var_0.x, -381f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, _wgslsmith_f_op_f32(max(498f, 881f)), _wgslsmith_f_op_f32(-275f - var_0.x))) - var_0.wzy), -(~(-(~vec2<i32>(-29346i, -1i)))));
    return -736f;
}

fn func_1(arg_0: f32) -> Struct_1 {
    global1 = 0i | firstTrailingBit(8925i);
    var var_0 = ~vec2<i32>(countOneBits(i32(-1i) * -1i), ~_wgslsmith_clamp_i32(1i, -38727i, reverseBits(2147483647i)));
    let var_1 = arg_0;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(min(-1133f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(240f)) - _wgslsmith_f_op_f32(f32(-1f) * -355f)), 515f, true)))), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))) - -1083f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_1)))) * _wgslsmith_f_op_f32(max(var_1, -428f))));
    var var_3 = Struct_1(true, false, ~0u >= ~(~u_input.a.x), _wgslsmith_f_op_f32(func_2()));
    return Struct_1(false, !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.d + -654f) * var_1) >= _wgslsmith_f_op_f32(f32(-1f) * -394f)), (_wgslsmith_f_op_vec3_f32(func_3(-vec4<i32>(2147483647i, 12757i, var_0.x, -13429i), vec4<i32>(var_0.x, var_0.x, 0i, -2147483647i), _wgslsmith_f_op_f32(round(-421f)), Struct_2(var_0.x, var_2.wyz, vec3<f32>(-1000f, -2880f, var_2.x), vec2<i32>(-2147483647i, 1i)))).x <= _wgslsmith_f_op_f32(var_3.d * _wgslsmith_div_f32(var_1, 655f))) & any(vec2<bool>(var_3.a, true)), -1473f);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    global0 = array<vec4<u32>, 8>();
    let var_0 = arg_1;
    global0 = array<vec4<u32>, 8>();
    var var_1 = var_0;
    let var_2 = u_input.a.x;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let var_1 = ~global0[_wgslsmith_index_u32(~4294967295u, 8u)];
    global0 = array<vec4<u32>, 8>();
    var var_2 = Struct_1(!all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false))) & false, true, var_0 <= ~(~1u), 836f);
    var var_3 = Struct_2(i32(-1i) * -1i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-394f, var_2.d, var_2.d) + vec3<f32>(-1718f, 579f, var_2.d)))), vec3<f32>(667f, _wgslsmith_f_op_f32(var_2.d - var_2.d), _wgslsmith_f_op_f32(exp2(var_2.d)))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(815f, _wgslsmith_f_op_f32(-var_2.d), _wgslsmith_f_op_f32(select(286f, -352f, false)))))), max(_wgslsmith_add_vec2_i32(countOneBits(-vec2<i32>(-50902i, 2147483647i)), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-39768i, 6275i), vec2<i32>(-19108i, -38810i)), select(vec2<i32>(12449i, 24102i), vec2<i32>(-2987i, -39403i), vec2<bool>(true, var_2.b)))), ~_wgslsmith_sub_vec2_i32(~vec2<i32>(-59335i, -25812i), _wgslsmith_sub_vec2_i32(vec2<i32>(-49187i, 29118i), vec2<i32>(-53657i, 2147483647i)))));
    let var_4 = ~0u;
    var_2 = func_4(var_3.d, func_1(-1287f), var_3.a & ~(-var_3.a));
    var var_5 = _wgslsmith_f_op_f32(var_3.b.x + _wgslsmith_f_op_f32(ceil(var_3.c.x)));
    global0 = array<vec4<u32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

