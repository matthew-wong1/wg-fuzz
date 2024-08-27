struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec4<bool>,
    d: vec2<u32>,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<f32, 1>;

var<private> global2: vec4<f32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: u32, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_3(-969f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(global2.x - 795f))), i32(-1i) * -(~(u_input.b << (arg_2 % 32u))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(var_0.b))))), abs(arg_1), vec3<bool>(any(!vec2<bool>(false, arg_0)) | (19138u > (65679u | arg_2)), any(select(select(arg_3.c.zx, vec2<bool>(arg_0, arg_3.b), vec2<bool>(false, false)), !vec2<bool>(arg_3.a, arg_0), vec2<bool>(false, false))), !any(arg_3.c.wzx)));
    var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(359f, _wgslsmith_div_f32(_wgslsmith_div_f32(162f, global2.x), -584f)) + _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(min(var_1.a, var_1.a)))), var_1.b, !var_1.c);
    var var_2 = ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c >> (arg_1.x % 32u), _wgslsmith_dot_vec3_u32(var_1.b, vec3<u32>(var_1.b.x, 32353u, arg_2)), 1u), _wgslsmith_div_vec3_u32(vec3<u32>(11477u, u_input.c, arg_1.x) | vec3<u32>(4294967295u, 1849u, 4294967295u), _wgslsmith_mod_vec3_u32(var_1.b, vec3<u32>(0u, 0u, 4294967295u)))));
    global0 = abs(_wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_mod_vec3_u32(arg_1, var_1.b)) ^ (var_1.b ^ (vec3<u32>(var_1.b.x, 8318u, 53719u) >> (arg_1 % vec3<u32>(32u)))), firstTrailingBit(abs(arg_1))));
    return var_0.c;
}

fn func_2(arg_0: i32) -> Struct_1 {
    global0 = 0u;
    let var_0 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - global2.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(min(-208f, _wgslsmith_f_op_f32(select(328f, _wgslsmith_f_op_f32(global2.x * global2.x), true))))), global2.x, ~_wgslsmith_add_i32(_wgslsmith_sub_i32(16906i, 26845i), firstTrailingBit(u_input.b)) | _wgslsmith_add_i32(func_3(true, ~vec3<u32>(3375u, 0u, 20530u), ~0u, Struct_2(true, true, vec4<bool>(true, true, true, false), vec2<u32>(0u, 30225u), u_input.c)), 2147483647i));
    global1 = array<f32, 1>();
    var var_1 = global2.zxy;
    var var_2 = u_input.a;
    return Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(292f))) + _wgslsmith_f_op_f32(-global2.x)))), _wgslsmith_add_vec3_u32(~(vec3<u32>(4294967295u, 1u, 22491u) ^ vec3<u32>(u_input.a, 1u, u_input.c)) << (max(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 1u, 39961u), vec3<u32>(5503u, u_input.a, 0u)), vec3<u32>(0u, 2227u, 80962u)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, u_input.a, u_input.c), vec3<u32>(0u, _wgslsmith_sub_u32(46753u, 17910u), 74706u & u_input.c))), vec3<bool>(((var_0.c & -1i) > u_input.b) && true, any(vec4<bool>(true, true, true, true)) | true, var_1.x <= _wgslsmith_f_op_f32(-var_0.a)));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>) -> Struct_1 {
    return func_2(countOneBits(-3738i));
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_2(!(!arg_0.c.x), true, vec4<bool>(arg_0.c.x, false, all(select(vec4<bool>(arg_0.c.x, arg_0.c.x, true, arg_0.c.x), vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, false), false)), select(33643u, ~42807u, global1[_wgslsmith_index_u32(1u, 1u)] > -1687f) <= 0u), abs(_wgslsmith_sub_vec2_u32(func_1(u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-582f, -1304f, global2.x))).b.yy, firstLeadingBit(arg_0.b.xy))), _wgslsmith_div_u32(u_input.c, 51965u));
    let var_1 = firstLeadingBit(abs(u_input.b));
    let var_2 = Struct_3(arg_0.a, _wgslsmith_f_op_f32(-arg_0.a), var_1);
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(countOneBits(arg_0.b.x), 1u)], global1[_wgslsmith_index_u32(var_0.d.x >> (u_input.a % 32u), 1u)], -871f, global2.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, -2110f, 262f, global2.x)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(29762u, 1u)]))), arg_0.a, global2.x, -477f)));
    let var_3 = vec3<i32>(79054i, -3786i, max(24822i, func_3(any(vec2<bool>(false, arg_0.c.x)), vec3<u32>(4294967295u, arg_0.b.x, 52736u), u_input.c, Struct_2(arg_0.c.x, arg_0.c.x, vec4<bool>(true, true, false, var_0.b), vec2<u32>(u_input.a, arg_0.b.x), 4294967295u))) >> (1u % 32u));
    return _wgslsmith_dot_vec4_i32(~min(abs(_wgslsmith_add_vec4_i32(vec4<i32>(var_1, 0i, u_input.b, 13103i), vec4<i32>(u_input.b, 1i, 23864i, 53920i))), vec4<i32>(var_1, -2147483647i, var_1, ~u_input.b)), vec4<i32>(~var_3.x, -4876i, var_3.x, _wgslsmith_mult_i32(abs(var_3.x) >> (min(0u, 23790u) % 32u), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_2.c, var_2.c, 66802i), vec4<i32>(2147483647i, 2147483647i, u_input.b, 1i)), var_2.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<f32>(-101f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -878f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1166f)), -286f);
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.zw)));
    global1 = array<f32, 1>();
    global1 = array<f32, 1>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -808f) - global2.x);
    var var_2 = _wgslsmith_add_vec2_i32(-(vec2<i32>(-1i) * -vec2<i32>(-37433i, u_input.b)), vec2<i32>(~u_input.b, func_4(func_1(4294967295u, vec3<f32>(global1[_wgslsmith_index_u32(1u, 1u)], var_0.x, 490f))))) >> ((func_1(0u, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1703f, global1[_wgslsmith_index_u32(u_input.a, 1u)], var_1)))).b.yz << (~vec2<u32>(0u, 1u >> (1u % 32u)) % vec2<u32>(32u))) % vec2<u32>(32u));
    global1 = array<f32, 1>();
    let var_3 = ~(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, u_input.c, 1u), vec4<u32>(1u, 1u, 4294967295u, 33319u)), firstLeadingBit(0u)) & _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(43627u, u_input.a, 0u, 4294967295u), vec4<u32>(u_input.c, u_input.a, 1u, u_input.c)), _wgslsmith_clamp_u32(u_input.c, u_input.a, 1u)), ~(vec2<u32>(70186u, 26469u) | vec2<u32>(1u, u_input.a))));
    let var_4 = func_2(i32(-1i) * -_wgslsmith_add_i32(var_2.x, 26871i));
    let x = u_input.a;
    s_output = StorageBuffer(5432u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_3.x, 1u)] * -520f) - _wgslsmith_f_op_f32(-global2.x)))) * _wgslsmith_f_op_f32(424f * 487f)), ~abs(vec2<u32>(1u, u_input.a)), 0i);
}

