struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec2<f32>,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 4>;

var<private> global1: array<Struct_1, 2>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.a, vec4<f32>(arg_0.c.x, arg_0.c.x, 988f, arg_0.e.x))), arg_0.a)))), arg_0.b, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.a.x, 1000f))) - arg_0.e))), vec3<bool>(false, (countOneBits(u_input.a) < (u_input.a << (0u % 32u))) & true, true), arg_0.e);
    global0 = array<vec3<f32>, 4>();
    var var_1 = var_0.d.zz;
    var var_2 = global1[_wgslsmith_index_u32(~(50003u << (_wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 27449u, 5555u, 1u)), countOneBits(abs(vec4<u32>(114951u, 4294967295u, arg_0.b, var_0.b)))) % 32u)), 2u)];
    global0 = array<vec3<f32>, 4>();
    return _wgslsmith_f_op_f32(abs(-1385f));
}

fn func_2(arg_0: f32, arg_1: bool) -> vec3<bool> {
    let var_0 = false;
    let var_1 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_0)), arg_0, _wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(arg_0, -311f, 823f, -764f), 0u, vec2<f32>(123f, arg_0), vec3<bool>(arg_1, arg_1, true), vec2<f32>(arg_0, arg_0)))), -1432f) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(896f, -1158f, -815f, arg_0), vec4<f32>(arg_0, arg_0, -1131f, 521f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, -120f, arg_0, arg_0), vec4<f32>(206f, 446f, -288f, -594f), arg_1)))))), abs(~(~4294967295u)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(450f, -891f) * vec2<f32>(-1163f, arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-874f, -1480f)), true)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(647f, 967f) + vec2<f32>(813f, -656f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1584f, arg_0)))))), vec3<bool>(u_input.a != _wgslsmith_sub_i32(~u_input.a, _wgslsmith_sub_i32(u_input.a, u_input.a)), u_input.a == -2147483647i, arg_1), vec2<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0 * -696f))))));
    return vec3<bool>(!(!any(select(vec4<bool>(var_1.d.x, true, var_0, var_0), vec4<bool>(true, false, arg_1, arg_1), vec4<bool>(var_0, var_0, var_1.d.x, var_0)))), any(var_1.d), !arg_1);
}

fn func_1() -> f32 {
    let var_0 = func_2(-681f, (abs(~4294967295u) ^ ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 646u, 31788u), vec3<u32>(0u, 4294967295u, 77672u))) <= ~(~_wgslsmith_mult_u32(4294967295u, 1u)));
    let var_1 = select(var_0.yx, vec2<bool>(true, ((var_0.x | false) | true) & true), func_2(_wgslsmith_f_op_f32(floor(-1812f)), true).yx);
    var var_2 = ~_wgslsmith_sub_vec4_i32(vec4<i32>(66314i, u_input.a, _wgslsmith_div_i32(u_input.a << (89577u % 32u), u_input.a >> (109031u % 32u)), -2147483647i), vec4<i32>(-u_input.a, ~(u_input.a << (1u % 32u)), 9460i, u_input.a));
    var var_3 = abs(0u) | ~_wgslsmith_sub_u32(~(~65488u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(19585u, 40765u, 0u), vec3<u32>(0u, 20359u, 17583u)));
    var var_4 = var_1.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-532f)), _wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(-1184f, -1000f, 357f, 581f), 1u, vec2<f32>(157f, 266f), vec3<bool>(var_0.x, false, var_0.x), vec2<f32>(259f, -1894f))))))) + _wgslsmith_f_op_f32(f32(-1f) * -851f));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32) -> vec4<bool> {
    var var_0 = firstTrailingBit(4294967295u);
    global0 = array<vec3<f32>, 4>();
    let var_1 = arg_0.d.yy;
    var var_2 = firstTrailingBit(2147483647i);
    var var_3 = global1[_wgslsmith_index_u32(~arg_0.b, 2u)];
    return !(!select(select(!vec4<bool>(arg_0.d.x, arg_0.d.x, true, false), !vec4<bool>(var_3.d.x, true, var_1.x, false), select(vec4<bool>(var_1.x, true, true, arg_0.d.x), vec4<bool>(false, var_1.x, false, var_1.x), vec4<bool>(true, var_1.x, true, var_3.d.x))), !(!vec4<bool>(var_1.x, var_1.x, var_1.x, arg_0.d.x)), !(var_1.x || false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-524f, _wgslsmith_f_op_f32(func_1()), 1f, _wgslsmith_f_op_f32(ceil(-851f)))), 0u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), 1000f), vec3<bool>(select(true, any(vec3<bool>(false, true, true)), true), true, 1000f == _wgslsmith_f_op_f32(ceil(-1262f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, 518f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-2042f, 533f), vec2<f32>(-408f, 988f))))))), countOneBits(vec2<u32>(1u, _wgslsmith_add_u32(53253u, 117690u)) | abs(firstTrailingBit(vec2<u32>(38129u, 6784u)))), 1925f);
    var var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(max(~vec3<u32>(0u, 0u, 1u), vec3<u32>(1u, 1u, 1u)), vec3<u32>(~0u, ~73129u, firstLeadingBit(37826u))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(14306u, 22525u)) ^ ~abs(0u)), 2u)];
    var var_2 = global1[_wgslsmith_index_u32(var_1.b, 2u)];
    var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_2.a, vec4<f32>(var_1.c.x, var_2.c.x, -1125f, var_2.e.x), vec4<bool>(var_0.x, var_1.d.x, true, var_1.d.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 807f, var_1.e.x, var_1.e.x) * var_2.a) * vec4<f32>(526f, var_2.a.x, -607f, 794f))) + var_2.a), var_2.b, _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_2.e), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_1.c.x) - var_1.c))), var_2.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_2.e + var_1.a.xz))))), vec3<bool>(true, !(_wgslsmith_f_op_f32(-var_2.e.x) < _wgslsmith_f_op_f32(-var_2.a.x)), var_1.d.x && all(vec2<bool>(var_2.d.x, var_0.x))), _wgslsmith_f_op_vec2_f32(-var_2.e));
    var var_3 = global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(select(var_2.b, 34705u, any(vec4<bool>(var_1.d.x, true, var_1.d.x, var_0.x))), var_1.b), 2u)];
    let var_4 = select(-44303i, select(-1i, firstTrailingBit(firstLeadingBit(u_input.a)), !var_2.d.x), all(func_4(global1[_wgslsmith_index_u32(0u, 2u)], vec2<u32>(var_1.b, var_3.b) >> (vec2<u32>(60165u, var_3.b) % vec2<u32>(32u)), var_1.a.x)));
    var var_5 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.b << ((firstTrailingBit(var_3.b) ^ _wgslsmith_div_u32(var_1.b, 25846u)) % 32u), firstLeadingBit(countOneBits(~var_1.b))), ~(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b, 1u, var_2.b), vec3<u32>(var_2.b, 1u, var_3.b)), ~var_2.b) ^ vec2<u32>(abs(var_2.b), ~14161u))), 2u)];
    global0 = array<vec3<f32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(0u, 4294967295u));
}

