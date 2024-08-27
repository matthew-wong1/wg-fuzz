struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
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

var<private> global0: array<vec3<f32>, 24> = array<vec3<f32>, 24>(vec3<f32>(1000f, -319f, 738f), vec3<f32>(248f, 749f, 571f), vec3<f32>(-1000f, 547f, 801f), vec3<f32>(-343f, 431f, 304f), vec3<f32>(126f, -729f, -1000f), vec3<f32>(1000f, 468f, -222f), vec3<f32>(2082f, 714f, -2087f), vec3<f32>(-704f, -428f, 982f), vec3<f32>(-774f, -733f, -587f), vec3<f32>(-497f, -970f, -1811f), vec3<f32>(870f, 203f, 1438f), vec3<f32>(-1254f, -811f, -1000f), vec3<f32>(-339f, -1720f, -743f), vec3<f32>(213f, -497f, -802f), vec3<f32>(-1147f, -956f, -159f), vec3<f32>(-749f, 422f, 601f), vec3<f32>(-1303f, 1739f, 1892f), vec3<f32>(694f, 1208f, -219f), vec3<f32>(-972f, -623f, 235f), vec3<f32>(693f, -1055f, 548f), vec3<f32>(-655f, 702f, 901f), vec3<f32>(-1000f, -1000f, 989f), vec3<f32>(-536f, -1431f, 740f), vec3<f32>(688f, 651f, 574f));

var<private> global1: array<Struct_2, 7>;

var<private> global2: array<vec3<u32>, 21>;

var<private> global3: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(vec2<i32>(-1i, -1i)), Struct_3(vec2<i32>(1i, 40467i)), Struct_3(vec2<i32>(0i, -64498i)), Struct_3(vec2<i32>(1i, -13209i)), Struct_3(vec2<i32>(i32(-2147483648), 4790i)), Struct_3(vec2<i32>(2147483647i, i32(-2147483648))), Struct_3(vec2<i32>(-60037i, 21972i)), Struct_3(vec2<i32>(1i, 0i)), Struct_3(vec2<i32>(-19480i, -28605i)), Struct_3(vec2<i32>(37583i, 21178i)), Struct_3(vec2<i32>(35947i, 45772i)), Struct_3(vec2<i32>(0i, -23817i)), Struct_3(vec2<i32>(-12080i, 1964i)), Struct_3(vec2<i32>(1i, 5250i)), Struct_3(vec2<i32>(-98296i, 26983i)), Struct_3(vec2<i32>(i32(-2147483648), 0i)), Struct_3(vec2<i32>(-32126i, 36293i)), Struct_3(vec2<i32>(2260i, -1i)), Struct_3(vec2<i32>(589i, 932i)), Struct_3(vec2<i32>(35759i, -63040i)), Struct_3(vec2<i32>(-68297i, -13645i)), Struct_3(vec2<i32>(1i, 91671i)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    let var_0 = countOneBits(_wgslsmith_div_u32(abs(max(~0u, 0u)), _wgslsmith_clamp_u32(1u, ~_wgslsmith_mult_u32(123416u, 0u), ~(~11652u))));
    global2 = array<vec3<u32>, 21>();
    var var_1 = vec3<bool>(true, any(vec2<bool>(true, true)), true);
    var var_2 = _wgslsmith_sub_i32(1028i ^ u_input.c, u_input.b);
    global3 = array<Struct_3, 22>();
    return -1000f;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32) -> vec3<bool> {
    var var_0 = vec4<i32>(countOneBits(-19005i), -2147483647i, -14214i, _wgslsmith_mult_i32(~select(_wgslsmith_mod_i32(arg_0.x, -1i), arg_0.x, true), arg_0.x));
    return vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-606f * -1481f), _wgslsmith_f_op_f32(step(1145f, 270f))) * _wgslsmith_f_op_f32(func_3())) > 509f, abs(var_0.x) != 32055i, false);
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> vec2<bool> {
    var var_0 = ~arg_2.a;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-arg_1), arg_2, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1379f, arg_1, _wgslsmith_div_f32(222f, _wgslsmith_f_op_f32(step(-1222f, arg_1))), arg_1)), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(44200u, 1u)), ~vec2<u32>(4294967295u, 0u)), abs(~67123u)), _wgslsmith_mult_u32(50301u, 18386u), ~firstTrailingBit(firstLeadingBit(76100u))));
    let var_2 = any(select(!(!arg_2.b.wyx), !select(!vec3<bool>(false, false, var_1.b.c), arg_2.b.zxz, var_1.b.c), select(var_1.b.b.xzy, !vec3<bool>(false, var_1.b.c, true), func_2(~u_input.a, _wgslsmith_div_i32(var_1.b.a, -55076i)))));
    var var_3 = arg_1;
    var var_4 = vec3<i32>(-25437i, _wgslsmith_clamp_i32(arg_2.a, ~1i >> ((var_1.d.x ^ var_1.d.x) % 32u), -1i), arg_2.a) | vec3<i32>(firstTrailingBit(_wgslsmith_mod_i32(~(-16143i), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.a, -1i), vec2<i32>(u_input.b, -35464i)))), -2147483647i, u_input.c);
    return vec2<bool>(!any(arg_2.b.xyx), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2216f, 1810f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-424f, 1856f) * vec2<f32>(2033f, 1000f)), func_1(true, 1030f, Struct_1(-1i, vec4<bool>(false, false, true, true), true), u_input.b))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2805f, 1000f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1021f, 798f))), any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), false)))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(390f, _wgslsmith_f_op_f32(f32(-1f) * -1300f))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(360f, -951f)) * -712f)) - vec2<f32>(-1239f, 1491f)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(-383f, -232f)), _wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(var_0.x, var_0.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(452f, _wgslsmith_div_f32(var_0.x, -500f), _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(func_3())))) * global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~4294967295u, 92850u), 24u)]);
    let var_3 = global2[_wgslsmith_index_u32(1u >> (_wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(~(~1u), 36813u, ~(~7014u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 13987u, 0u), vec4<u32>(16302u, 0u, 4294967295u, 24090u)))) % 32u), 21u)];
    global2 = array<vec3<u32>, 21>();
    let var_4 = ~var_3.x;
    var var_5 = Struct_3(-vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 15281i), vec2<i32>(u_input.c, 11010i) ^ vec2<i32>(u_input.a.x, -2601i)), ~u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(global2[_wgslsmith_index_u32(6549u, 21u)]));
}

