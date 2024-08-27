struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12>;

var<private> global1: u32 = 4294967295u;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    global0 = array<vec4<bool>, 12>();
    global0 = array<vec4<bool>, 12>();
    var var_0 = 1f;
    global1 = _wgslsmith_add_u32(firstTrailingBit(u_input.d.x), u_input.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-257f, 1000f, true)), 575f, -1000f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(512f, -258f, 501f)) - vec3<f32>(-2165f, -249f, 331f))))));
    return ~u_input.d;
}

fn func_2() -> vec2<i32> {
    global1 = ~firstLeadingBit(_wgslsmith_dot_vec4_u32(func_3(Struct_1(vec2<i32>(-2147483647i, 2147483647i)), Struct_1(vec2<i32>(-2110i, 13926i))), ~u_input.d >> (~u_input.d % vec4<u32>(32u))));
    global1 = abs(func_3(Struct_1(-min(vec2<i32>(-23693i, -31139i), vec2<i32>(0i, 1i))), Struct_1(-firstTrailingBit(vec2<i32>(-16395i, -2147483647i)))).x);
    let var_0 = abs(~1u);
    let var_1 = -countOneBits(-34714i);
    var var_2 = Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1, _wgslsmith_add_i32(-2013i, 0i)), max(vec2<i32>(var_1, var_1) | vec2<i32>(var_1, var_1), -vec2<i32>(var_1, var_1))), ~countOneBits(var_1)));
    return vec2<i32>(-2235i, _wgslsmith_mod_i32(var_2.a.x, firstLeadingBit(var_2.a.x)));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3;
    var var_1 = arg_3;
    let var_2 = Struct_1(countOneBits(vec2<i32>(_wgslsmith_clamp_i32(arg_3.a.x, 64695i, arg_3.a.x) ^ -2147483647i, var_1.a.x)));
    let var_3 = arg_3;
    var_0 = var_3;
    return Struct_1(select(abs(~var_0.a), ~(func_2() << (u_input.d.zw % vec2<u32>(32u))), select(vec2<bool>(true, var_2.a.x < 1i), !vec2<bool>(arg_2.x, arg_2.x), !select(vec2<bool>(arg_2.x, arg_2.x), arg_2.yx, arg_2.x))));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec4<bool>) -> i32 {
    let var_0 = func_4(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.d.zw, arg_2.ww), 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -594f))) + _wgslsmith_f_op_f32(f32(-1f) * -142f))), arg_3.xxx, Struct_1(-func_2()));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1198f, 323f, -339f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1375f, -713f, -705f), vec3<f32>(-856f, -1417f, 275f)))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(872f, -1476f, 202f)))))))));
    var var_2 = !(!arg_3.x | arg_0);
    let var_3 = _wgslsmith_div_vec2_i32(vec2<i32>(i32(-1i) * -func_4(41685u, var_1.x, arg_3.wzw, Struct_1(arg_1.a)).a.x, min(var_0.a.x >> (1u % 32u), ~(i32(-1i) * -1i))), var_0.a);
    let var_4 = u_input.c;
    return min(firstTrailingBit(func_4(4294967295u, _wgslsmith_f_op_f32(round(-1846f)), vec3<bool>(arg_3.x, true, arg_3.x), arg_1).a.x) | ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, -1i, 1i, -2273i), abs(vec4<i32>(-1i, arg_1.a.x, 1i, 11015i))), -21707i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 12>();
    global0 = array<vec4<bool>, 12>();
    let var_0 = 29188u;
    let var_1 = ~vec4<i32>(min(func_1(any(vec4<bool>(false, false, false, false)), Struct_1(vec2<i32>(-10150i, -34554i)), u_input.d, vec4<bool>(true, true, true, true)), _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, 37389i, 5256i), _wgslsmith_div_vec3_i32(vec3<i32>(-50389i, 24458i, -2147483647i), vec3<i32>(6103i, 98i, 1i)))), 43131i, func_1(true, Struct_1(countOneBits(vec2<i32>(2147483647i, -37083i))), vec4<u32>(~26715u, ~16186u, var_0, var_0), vec4<bool>(true, all(vec3<bool>(false, true, false)), true, true)), 0i);
    var var_2 = vec4<bool>(((_wgslsmith_f_op_f32(sign(-1000f)) <= _wgslsmith_f_op_f32(-859f * -514f)) || true) | (_wgslsmith_clamp_i32(i32(-1i) * -1i, 2147483647i, _wgslsmith_mod_i32(-2147483647i, -48083i)) < 2147483647i), !any(select(vec4<bool>(true, true, true, true), !global0[_wgslsmith_index_u32(4911u, 12u)], !global0[_wgslsmith_index_u32(var_0, 12u)])), any(vec3<bool>(true, true, true)), false);
    var var_3 = 4294967295u;
    var var_4 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-118f, _wgslsmith_f_op_f32(floor(-433f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -384f)), 1f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-1573f, 1472f, 351f, 1161f), vec4<f32>(932f, -558f, 429f, -1676f)))))) * vec4<f32>(1f, 1f, 1f, 1f))));
    var_3 = ~57547u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1231f), var_4.x, 1199f, _wgslsmith_f_op_f32(-var_4.x)), ~_wgslsmith_mod_u32(46485u, 15354u));
}

