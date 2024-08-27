struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    var var_0 = -_wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(0i, u_input.b | _wgslsmith_clamp_i32(0i, -26046i, u_input.b), _wgslsmith_clamp_i32(u_input.b, -u_input.b, countOneBits(u_input.a.x)), _wgslsmith_dot_vec3_i32(u_input.a.zwz, vec3<i32>(u_input.a.x, -2147483647i, -1i))));
    global0 = array<Struct_1, 20>();
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1148f, -233f), vec2<f32>(-1346f, 1000f))))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(923f, 475f), vec2<f32>(-683f, -107f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1160f, 256f) + vec2<f32>(-1441f, -338f)))))))));
    var var_2 = ~_wgslsmith_dot_vec4_u32(u_input.e >> (abs(vec4<u32>(u_input.e.x, u_input.e.x, 91835u, 40882u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e.x, 167313u, u_input.e.x, u_input.e.x), u_input.e)) | _wgslsmith_mult_u32(firstTrailingBit(~18442u), ~_wgslsmith_add_u32(~u_input.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(13227u, 32541u, u_input.e.x, 28018u), vec4<u32>(53641u, u_input.e.x, u_input.e.x, u_input.c))));
    var var_3 = any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, all(vec3<bool>(false, true, false))), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, false, false), true)), vec3<bool>(any(vec3<bool>(true, true, true)), true, false), true));
    return ~countOneBits(~(-var_0.x));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = -1000f;
    var var_1 = vec4<i32>(arg_3.a.x, ~func_3(), ~(-17550i), arg_0.a.x);
    let var_2 = ~_wgslsmith_mult_u32(4294967295u, ~(~1u));
    var var_3 = vec2<bool>(true, true);
    var var_4 = -37029i;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_2.x, -1415f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(647f, 332f, 626f) - arg_2), _wgslsmith_f_op_vec3_f32(arg_2 * arg_2))))), _wgslsmith_div_vec3_i32(arg_1.a.yyw, vec3<i32>(arg_0.a.x, min(abs(var_1.x), arg_1.a.x), _wgslsmith_mod_i32(~1i, u_input.b))), _wgslsmith_f_op_vec2_f32(arg_2.zy - vec2<f32>(_wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x))))), _wgslsmith_dot_vec2_i32(arg_0.a.yx, select(arg_3.a.zw, _wgslsmith_add_vec2_i32(var_1.wy, var_1.zz), true || var_3.x) >> (u_input.e.yx % vec2<u32>(32u))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>) -> bool {
    global0 = array<Struct_1, 20>();
    var var_0 = Struct_2(firstTrailingBit(u_input.a));
    var_0 = Struct_2(firstLeadingBit(-vec4<i32>(var_0.a.x >> (u_input.e.x % 32u), ~30801i, min(10505i, arg_0.d), min(0i, arg_1.x))));
    let var_1 = select(vec4<bool>(any(vec2<bool>(true, true)), arg_1.x > _wgslsmith_clamp_i32(arg_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.x, arg_0.b.x, 15916i, 25055i), var_0.a), -2147483647i ^ var_0.a.x), all(vec2<bool>(true, true)), all(select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, false, true, true)))), select(select(vec4<bool>(arg_0.a.x < arg_0.c.x, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true))), !select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), false), true), true), !vec4<bool>(-arg_0.b.x < 5744i, any(vec4<bool>(false, false, true, true)), true, any(vec2<bool>(false, true)) != (u_input.e.x > 1118u)));
    global0 = array<Struct_1, 20>();
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> bool {
    global0 = array<Struct_1, 20>();
    let var_0 = 2147483647i;
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    return !(true | func_4(func_2(Struct_2(vec4<i32>(arg_0.b.x, arg_3, 1i, u_input.b)), Struct_2(u_input.a), _wgslsmith_f_op_vec3_f32(-arg_1.a), Struct_2(u_input.a)), select(vec2<i32>(var_0, 5815i), func_2(Struct_2(vec4<i32>(0i, -28623i, 2147483647i, var_0)), Struct_2(vec4<i32>(u_input.a.x, -2147483647i, arg_0.d, var_0)), arg_1.a, Struct_2(u_input.a)).b.zy, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(u_input.c, u_input.c, 4294967295u & max(select(1u, _wgslsmith_sub_u32(4294967295u, 1u), func_1(Struct_1(vec3<f32>(1539f, 2104f, 213f), u_input.a.yzx, vec2<f32>(-171f, 936f), u_input.a.x), global0[_wgslsmith_index_u32(u_input.c, 20u)], 20535u, 0i)), _wgslsmith_div_u32(4294967295u, max(49241u, u_input.c))), max(u_input.c, _wgslsmith_clamp_u32(u_input.e.x, 4294967295u, ~(~u_input.e.x))));
    let var_1 = _wgslsmith_f_op_f32(func_2(Struct_2(vec4<i32>(-1942i, _wgslsmith_div_i32(u_input.a.x, u_input.d), u_input.d | u_input.b, 45077i)), Struct_2(u_input.a), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(611f)) * -785f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -833f) * _wgslsmith_f_op_f32(ceil(-146f))), _wgslsmith_f_op_f32(f32(-1f) * -1028f)), Struct_2(countOneBits(abs(u_input.a)))).c.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(542f)))) - _wgslsmith_f_op_f32(select(-151f, _wgslsmith_f_op_f32(floor(-1000f)), false))));
    let var_2 = global0[_wgslsmith_index_u32(~16298u, 20u)];
    var var_3 = -_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -countOneBits(u_input.a), countOneBits(abs(u_input.a)));
    let var_4 = Struct_2(select(u_input.a, u_input.a, true));
    global0 = array<Struct_1, 20>();
    let var_5 = ~var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(971f * var_2.a.x))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(-441f, var_1), _wgslsmith_f_op_f32(sign(1059f))))))), reverseBits(vec4<i32>(var_2.d, var_4.a.x, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-1i, -13486i), 14696i >> (var_5 % 32u), var_2.d << (62988u % 32u)), 5765i)));
}

