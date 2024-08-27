struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: vec2<u32>;

var<private> global2: bool;

var<private> global3: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>) -> u32 {
    var var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1543f)), _wgslsmith_f_op_f32(403f * arg_0.a.x), -521f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x)) + _wgslsmith_f_op_vec3_f32(arg_0.a * vec3<f32>(arg_0.a.x, -1230f, 1015f)))))), Struct_4(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(1i, 1i, 1i), select(vec3<i32>(0i, 0i, -2147483647i) << (vec3<u32>(arg_1.x, 0u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 28922i), vec3<i32>(-23856i, 2147483647i, 45453i)), vec3<bool>(true, true, true)))));
    var var_1 = !(!select(false, true, true) & all(!(!global3[_wgslsmith_index_u32(arg_1.x, 27u)])));
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a + vec3<f32>(1329f, var_0.a.x, 970f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(786f, arg_0.a.x, -1215f) * vec3<f32>(-136f, 1498f, arg_0.a.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, arg_0.a.x, 1353f) - var_0.a)) + var_0.a))));
    var var_3 = global1.x;
    let var_4 = -var_0.b.a.yy;
    return _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, arg_1.x), ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(global1.x, 0u))), vec2<u32>(_wgslsmith_div_u32(0u, 1u), 100185u));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_4 {
    global0 = array<Struct_1, 26>();
    global1 = arg_0.zy >> ((_wgslsmith_div_vec2_u32(vec2<u32>(~4294967295u, func_3(Struct_3(vec3<f32>(-231f, arg_1.b.x, arg_1.d)), vec2<u32>(arg_1.a, 0u))), arg_0.zz) & arg_0.wx) % vec2<u32>(32u));
    global2 = !any(vec3<bool>(true, all(vec2<bool>(true, false)) && any(vec4<bool>(false, true, true, true)), any(global3[_wgslsmith_index_u32(~arg_0.x, 27u)])));
    let var_0 = vec4<f32>(609f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.d))), arg_1.b.x, _wgslsmith_f_op_f32(-371f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x * -951f))));
    var var_1 = !select(vec2<bool>(true, true), global3[_wgslsmith_index_u32(arg_0.x, 27u)], select(vec2<bool>(true, false), !global3[_wgslsmith_index_u32(1u, 27u)], vec2<bool>(true, true)));
    return Struct_4(vec3<i32>(arg_1.c, 1i, i32(-1i) * -1i));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: f32, arg_3: vec3<i32>) -> Struct_3 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a, 26u)];
    var_0 = global0[_wgslsmith_index_u32(~388u, 26u)];
    global0 = array<Struct_1, 26>();
    global0 = array<Struct_1, 26>();
    var_0 = Struct_1(_wgslsmith_dot_vec3_u32(reverseBits(min(vec3<u32>(1u, 4294967295u, var_0.a), vec3<u32>(global1.x, var_0.a, u_input.a)) | vec3<u32>(var_0.a, 90568u, 18415u)), vec3<u32>(~u_input.a, ~_wgslsmith_div_u32(u_input.a, var_0.a), _wgslsmith_add_u32(var_0.a, 0u) | _wgslsmith_mod_u32(var_0.a, 6502u))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(440f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b.x)))))), min(select(-17416i, abs(i32(-1i) * -1i), false), firstTrailingBit(~var_0.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), arg_1.x));
    return Struct_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.b.x, -1043f, arg_2))) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, -584f, 182f), vec3<f32>(1538f, 787f, arg_1.x)), vec3<f32>(arg_2, -1117f, arg_2))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 1000f, arg_2))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, var_0.b.x, -233f) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.d, 214f, -275f))))))));
}

fn func_1() -> Struct_5 {
    global2 = true;
    var var_0 = func_4(func_2(select(vec4<u32>(~7058u, global1.x << (global1.x % 32u), 0u, global1.x), abs(vec4<u32>(76968u, global1.x, u_input.a, 0u)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), Struct_1(32043u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-350f, -147f) * vec2<f32>(1000f, -1327f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(2119f, 207f))), firstTrailingBit(-12030i), -1721f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(135f, 457f) * vec2<f32>(-479f, 638f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1477f, 1019f), vec2<f32>(-503f, -594f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1619f, 821f) - vec2<f32>(1865f, -1000f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(382f, 2450f) - vec2<f32>(-920f, -981f))), vec2<f32>(_wgslsmith_f_op_f32(floor(781f)), 1f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1053f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-522f, -1124f))))), _wgslsmith_mod_vec3_i32(-vec3<i32>(1i, 1i, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(21615i, -21838i, -61507i) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, global1.x, 4294967295u), vec3<u32>(u_input.a, u_input.a, global1.x)) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), max(vec3<i32>(7675i, -2147483647i, -1i), vec3<i32>(-42742i, -40927i, -32916i))))));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, 1148f) * vec4<f32>(var_0.a.x, 1415f, 259f, var_0.a.x)))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a.x, 2053f, var_0.a.x, var_0.a.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1725f + -912f), var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(trunc(var_0.a.x)))))), vec4<f32>(func_4(func_2(reverseBits(vec4<u32>(4294967295u, global1.x, 6184u, 1u)), Struct_1(8990u, var_0.a.zx, -30333i, var_0.a.x)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.a.x, var_0.a.x), vec2<f32>(731f, var_0.a.x))))), var_0.a.x, vec3<i32>(1i, 1i, 1i)).a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a.x)) + _wgslsmith_f_op_f32(max(var_0.a.x, var_0.a.x))))), 519f));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, min(14089u, ~0u)), 26u)];
    global2 = all(!(!vec4<bool>(any(vec4<bool>(true, false, false, true)), false, true, true)));
    return Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(var_1.xxz - vec3<f32>(var_2.b.x, 1890f, -740f)), var_1.wxx)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1229f, -358f, 516f), var_1.www)))), Struct_4(vec3<i32>(-_wgslsmith_sub_i32(var_2.c, -25920i), var_2.c, _wgslsmith_dot_vec3_i32(max(vec3<i32>(-1i, -26161i, -1i), vec3<i32>(var_2.c, 30571i, var_2.c)), ~vec3<i32>(0i, 53537i, var_2.c)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_5, arg_2: Struct_1, arg_3: Struct_3) -> vec3<bool> {
    let var_0 = func_2(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, arg_0.a, 1u, 4254u) & reverseBits(vec4<u32>(0u, u_input.a, arg_2.a, 21968u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), ~vec4<u32>(global1.x, arg_0.a, arg_0.a, u_input.a), ~vec4<u32>(u_input.a, arg_0.a, 34810u, 31824u))) & reverseBits(vec4<u32>(_wgslsmith_add_u32(39736u, 1u), arg_0.a, 68962u, 43272u)), Struct_1(min(u_input.a, global1.x), arg_3.a.zx, _wgslsmith_clamp_i32(select(~arg_1.b.a.x, arg_0.c, -1082f == arg_3.a.x), 1i, -(i32(-1i) * -8855i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x))));
    let var_1 = _wgslsmith_sub_u32(22595u, 5810u) ^ ~_wgslsmith_add_u32(1u, _wgslsmith_mod_u32(~4294967295u, ~global1.x));
    global3 = array<vec2<bool>, 27>();
    var var_2 = Struct_2(arg_1.b.a.x, -vec4<i32>(1i, var_0.a.x, -1i, var_0.a.x) & -vec4<i32>(-13519i, reverseBits(-34220i), reverseBits(arg_0.c), 10508i), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_3.a.x, arg_3.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2218f, 506f)))))));
    let var_3 = func_1();
    return select(!(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), any(vec3<bool>(false, false, false)))), vec3<bool>((select(true, true, true) | any(global3[_wgslsmith_index_u32(0u, 27u)])) | any(vec3<bool>(false, false, true)), all(vec3<bool>(u_input.a == 1u, false, u_input.a >= u_input.a)), true), !(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(func_5(Struct_1(48322u, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-307f, -339f), vec2<f32>(2112f, -323f))), -35406i, _wgslsmith_f_op_f32(min(1561f, 947f))), func_1(), global0[_wgslsmith_index_u32(global1.x, 26u)], Struct_3(vec3<f32>(-241f, -1638f, -1189f)))) && true;
    var var_1 = Struct_5(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-626f, -1733f, 1000f))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -492f), _wgslsmith_f_op_f32(f32(-1f) * -1096f), 125f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1311f, _wgslsmith_f_op_f32(sign(-635f)), -184f)))), Struct_4(~vec3<i32>(-18130i, min(0i, -1i), ~(-2147483647i))));
    let var_2 = true;
    let var_3 = Struct_2(var_1.b.a.x, vec4<i32>(reverseBits(-var_1.b.a.x) | var_1.b.a.x, 0i, 0i, func_2(max(firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, global1.x)), vec4<u32>(u_input.a, 31616u, 1u, global1.x)), Struct_1(u_input.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.x, var_1.a.x) * vec2<f32>(var_1.a.x, 1026f)), 2147483647i & var_1.b.a.x, var_1.a.x)).a.x), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_1.a.x)))), var_1.a.x));
    let var_4 = var_2;
    var var_5 = select(vec2<bool>(var_0, any(!vec2<bool>(true, var_0))), vec2<bool>(_wgslsmith_mult_u32(~u_input.a, global1.x) > (u_input.a ^ (global1.x ^ 0u)), true), any(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 66406u, global1.x) << (vec3<u32>(35998u, global1.x, 40614u) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, 110494u, 4294967295u)), 27u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-494f + var_3.c.x)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_3.c.x, 1000f)))))), 0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1734f * -1221f)), !all(vec4<bool>(var_2, true, true, var_4))))), func_4(var_1.b, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_3.c)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, var_3.c.x)), vec2<f32>(725f, var_1.a.x), vec2<bool>(false, var_5.x)))), 1703f, (func_2(vec4<u32>(0u, global1.x, 66783u, u_input.a), global0[_wgslsmith_index_u32(24193u, 26u)]).a ^ (vec3<i32>(var_3.b.x, -21391i, -1i) << (vec3<u32>(u_input.a, 0u, u_input.a) % vec3<u32>(32u)))) << (countOneBits(vec3<u32>(25219u, 107788u, 96010u)) % vec3<u32>(32u))).a.yz, ~(~select(vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(38870u, global1.x), vec2<bool>(var_4, false))));
}

