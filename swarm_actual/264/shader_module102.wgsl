struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15>;

var<private> global1: array<vec3<i32>, 5>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<f32>) -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(arg_0)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1016f, _wgslsmith_div_f32(781f, arg_0.x)))))), !vec2<bool>(!(u_input.a.x != u_input.a.x), any(vec3<bool>(false, true, global0[_wgslsmith_index_u32(52403u, 15u)]))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 740f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(140f * -1590f), _wgslsmith_f_op_f32(-arg_0.x))))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -119f);
    var var_2 = Struct_1(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -105f)), var_0.b, vec2<f32>(var_0.a.x, arg_0.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1398f + var_0.a.x)), _wgslsmith_f_op_f32(max(-339f, _wgslsmith_f_op_f32(select(-1000f, -267f, var_2.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.c.x)) * 917f), arg_0.x)));
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + -853f) + arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -1384f))) * var_3.yy), select(!(!(!var_0.b)), select(select(var_0.b, vec2<bool>(true, var_2.b.x), select(vec2<bool>(true, var_0.b.x), var_2.b, vec2<bool>(true, true))), var_0.b, true), any(var_2.b)), arg_0);
    return _wgslsmith_f_op_vec2_f32(-var_3.zz);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1433f, -319f), vec2<f32>(-804f, -680f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-449f, -164f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-968f, 989f) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1009f, -1055f)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3(vec2<f32>(-488f, -1388f))), vec2<f32>(1114f, 2043f), true))) - _wgslsmith_div_vec2_f32(vec2<f32>(2087f, _wgslsmith_f_op_f32(trunc(1402f))), vec2<f32>(_wgslsmith_f_op_f32(select(-1840f, 383f, global0[_wgslsmith_index_u32(u_input.a.x, 15u)])), _wgslsmith_f_op_f32(select(-142f, 622f, global0[_wgslsmith_index_u32(u_input.a.x, 15u)]))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec2_f32(func_3(vec2<f32>(var_0.x, _wgslsmith_div_f32(var_0.x, var_0.x))))))));
    global0 = array<bool, 15>();
    global1 = array<vec3<i32>, 5>();
    var var_2 = u_input.c;
    return Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1 * vec2<f32>(var_1.x, var_1.x)), _wgslsmith_f_op_vec2_f32(var_1 * _wgslsmith_div_vec2_f32(var_1, vec2<f32>(var_1.x, -1000f)))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x * var_0.x))), _wgslsmith_f_op_f32(floor(-530f))))), vec2<bool>(!any(select(vec4<bool>(global0[_wgslsmith_index_u32(8762u, 15u)], global0[_wgslsmith_index_u32(27651u, 15u)], global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global0[_wgslsmith_index_u32(8852u, 15u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(29113u, 15u)], true, global0[_wgslsmith_index_u32(1u, 15u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 15u)], false, true))), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1 + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1, var_1, vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 15u)]))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, 913f)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1252f, -1000f))))));
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -922f);
    let var_1 = func_2();
    global1 = array<vec3<i32>, 5>();
    var var_2 = vec3<u32>(~_wgslsmith_mod_u32(1u << (u_input.a.x % 32u), ~u_input.a.x) | ~1u, u_input.a.x, u_input.a.x & ~_wgslsmith_add_u32(1u, reverseBits(1u)));
    let var_3 = reverseBits(_wgslsmith_add_u32(_wgslsmith_div_u32(~(u_input.a.x << (var_2.x % 32u)), 120483u ^ min(var_2.x, var_2.x)), ~36054u));
    return _wgslsmith_f_op_f32(max(arg_2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -631f)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_1) -> f32 {
    let var_0 = vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(47287u, u_input.a.x, arg_2), vec3<u32>(arg_2, u_input.a.x, arg_2)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 26329u, 3268u) << (vec3<u32>(arg_2, arg_2, arg_2) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, 22442u, arg_2))), u_input.a), 1u);
    let var_1 = Struct_1(arg_0.a, !vec2<bool>(true, !arg_1.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(arg_0.c.x, _wgslsmith_f_op_f32(abs(1007f)))), _wgslsmith_div_f32(-1284f, _wgslsmith_f_op_f32(abs(arg_3.c.x))))));
    let var_2 = vec4<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)))) != arg_3.a.x, ~arg_2 > firstTrailingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2, 0u), var_0), ~var_0)), true, !var_1.b.x);
    let var_3 = arg_1;
    var var_4 = -1000f;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -485f) + var_1.a.x))) - _wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_sub_i32(6237i, -27962i), vec3<bool>(arg_0.b.x, false, true), func_2())))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 15>();
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-815f, 1013f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(256f, 1643f) - vec2<f32>(-220f, -1000f))))), vec2<f32>(_wgslsmith_div_f32(1252f, -561f), 1f)));
    global0 = array<bool, 15>();
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec2<f32>(var_0.x, -1542f), vec2<bool>(true, true), vec2<f32>(315f, 1155f)), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], false, true, global0[_wgslsmith_index_u32(60756u, 15u)]), 90073u, Struct_1(vec2<f32>(var_0.x, 1090f), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), vec2<f32>(107f, var_0.x)))), var_0.x)), var_0.x), vec2<bool>(!global0[_wgslsmith_index_u32(126910u, 15u)], any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(u_input.a.x, 15u)]), !vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(u_input.a.x, 15u)])))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_0.x))));
    let var_2 = vec2<i32>(u_input.b << ((0u << (abs(u_input.a.x) % 32u)) % 32u), abs(_wgslsmith_dot_vec3_i32(min(global1[_wgslsmith_index_u32(u_input.a.x, 5u)], global1[_wgslsmith_index_u32(u_input.a.x, 5u)]), _wgslsmith_mult_vec3_i32(global1[_wgslsmith_index_u32(u_input.a.x, 5u)], vec3<i32>(0i, 0i, 0i))))) << (~vec2<u32>(78145u, u_input.a.x) % vec2<u32>(32u));
    global0 = array<bool, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(abs(u_input.a.x), 1u, u_input.a.x, 4294967295u), firstTrailingBit(1u), ~u_input.a.yx, -(~max(countOneBits(vec4<i32>(2147483647i, u_input.c, u_input.c, 1486i)), vec4<i32>(-27016i, 49457i, u_input.b, var_2.x))));
}

