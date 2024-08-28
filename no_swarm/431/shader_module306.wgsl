struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: f32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>) -> i32 {
    global0 = array<i32, 15>();
    var var_0 = vec4<i32>(max(i32(-1i) * -2147483647i, ~firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(26550i, global0[_wgslsmith_index_u32(u_input.c, 15u)]), vec2<i32>(18730i, 6361i)))), _wgslsmith_div_i32(~u_input.a, 2147483647i) >> (9206u % 32u), _wgslsmith_div_i32(_wgslsmith_mod_i32(reverseBits(-6306i) >> ((u_input.c << (u_input.c % 32u)) % 32u), firstTrailingBit(u_input.b)), ~abs(1i)), reverseBits(~_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(~13623u, 15u)], global0[_wgslsmith_index_u32(65301u, 15u)])));
    let var_1 = u_input.b;
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(-1051f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * 1009f) - _wgslsmith_div_f32(arg_1.x, arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)) + _wgslsmith_f_op_f32(sign(2919f)))), _wgslsmith_f_op_f32(-591f - arg_1.x)));
    let var_3 = Struct_1(arg_1);
    return 55489i;
}

fn func_2() -> Struct_1 {
    global0 = array<i32, 15>();
    var var_0 = Struct_2(vec2<i32>(1i, 1i), ~(~(~vec4<u32>(4294967295u, 4294967295u, u_input.c, 1u))) & vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c, 0u), vec3<u32>(u_input.c, 22012u, u_input.c)), 1u), ~0u & _wgslsmith_clamp_u32(4294967295u, 33085u, u_input.c), u_input.c, (u_input.c ^ 4294967295u) | ~4294967295u), Struct_1(vec3<f32>(1753f, _wgslsmith_f_op_f32(abs(-173f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(396f - 894f)))), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-939f, -1342f, -816f) + vec3<f32>(-196f, 2022f, -145f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1306f, 649f, -1485f)))))));
    global0 = array<i32, 15>();
    let var_1 = Struct_2(vec2<i32>(u_input.b, _wgslsmith_sub_i32(func_3(Struct_3(true), _wgslsmith_f_op_vec3_f32(select(var_0.d.a, vec3<f32>(-361f, var_0.d.a.x, 1000f), vec3<bool>(true, false, false)))), _wgslsmith_mod_i32(1i, abs(var_0.a.x)))), abs(_wgslsmith_mod_vec4_u32(~select(var_0.b, vec4<u32>(47921u, var_0.b.x, u_input.c, u_input.c), true), countOneBits(firstLeadingBit(var_0.b)))), var_0.c, var_0.c);
    let var_2 = Struct_3(false & (2147483647i < abs(global0[_wgslsmith_index_u32(4294967295u, 15u)])));
    return var_0.c;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_4, arg_3: vec3<f32>) -> i32 {
    let var_0 = _wgslsmith_sub_i32(-66782i, global0[_wgslsmith_index_u32(~(~arg_2.b.x), 15u)]);
    var var_1 = (19547i << (0u % 32u)) & max(u_input.a, 12925i);
    global0 = array<i32, 15>();
    let var_2 = ~arg_2.a.b.x;
    let var_3 = Struct_2(arg_2.a.a, min(_wgslsmith_sub_vec4_u32(vec4<u32>(abs(0u), ~arg_2.a.b.x, _wgslsmith_div_u32(0u, u_input.c), 1u), reverseBits(arg_2.a.b) >> (abs(arg_2.a.b) % vec4<u32>(32u))), arg_2.a.b), Struct_1(arg_3), arg_0);
    return _wgslsmith_mod_i32(var_0, _wgslsmith_clamp_i32(firstLeadingBit(u_input.b), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(var_2 << (0u % 32u), 15u)], 2147483647i), var_3.a.x) | _wgslsmith_add_i32(min(~var_3.a.x, var_0), i32(-1i) * -22049i));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: u32) -> f32 {
    let var_0 = Struct_1(vec3<f32>(-178f, -1959f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-501f)))) - _wgslsmith_f_op_f32(f32(-1f) * -1069f))));
    global0 = array<i32, 15>();
    var var_1 = vec2<i32>(_wgslsmith_mod_i32(u_input.b, -10086i), ~u_input.a);
    var_1 = vec2<i32>(abs(_wgslsmith_sub_i32(i32(-1i) * -16932i, arg_0.x)), _wgslsmith_sub_i32(firstTrailingBit(func_4(func_2(), select(vec4<bool>(true, arg_1.a, false, arg_1.a), vec4<bool>(arg_1.a, true, false, arg_1.a), vec4<bool>(arg_1.a, arg_1.a, arg_1.a, arg_1.a)), Struct_4(Struct_2(arg_0.yx, vec4<u32>(arg_2, 52530u, u_input.c, arg_2), Struct_1(var_0.a), var_0), vec3<u32>(4294967295u, arg_2, 4294967295u), var_0.a.x), vec3<f32>(406f, var_0.a.x, var_0.a.x))), _wgslsmith_div_i32(countOneBits(_wgslsmith_dot_vec2_i32(arg_0.zz, vec2<i32>(var_1.x, u_input.b))), _wgslsmith_mod_i32(func_4(Struct_1(var_0.a), vec4<bool>(arg_1.a, true, false, arg_1.a), Struct_4(Struct_2(vec2<i32>(u_input.b, global0[_wgslsmith_index_u32(4294967295u, 15u)]), vec4<u32>(u_input.c, arg_2, u_input.c, 0u), Struct_1(var_0.a), var_0), vec3<u32>(arg_2, 24334u, u_input.c), -1027f), vec3<f32>(127f, var_0.a.x, var_0.a.x)), _wgslsmith_mult_i32(2147483647i, u_input.a)))));
    var_1 = select(-select(arg_0.xz, arg_0.wz, true), arg_0.yy, !vec2<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(arg_1.a, arg_1.a, false), vec3<bool>(false, true, arg_1.a))), select(true, true, all(vec2<bool>(arg_1.a, true)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-422f)));
}

fn func_5(arg_0: vec2<i32>, arg_1: f32, arg_2: f32, arg_3: Struct_5) -> i32 {
    global0 = array<i32, 15>();
    let var_0 = Struct_4(Struct_2(~max(abs(arg_0), arg_0), vec4<u32>(countOneBits(38122u), u_input.c, reverseBits(arg_3.c.x), countOneBits(4294967295u)) | countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_3.d.x, u_input.c, u_input.c), vec4<u32>(u_input.c, 4294967295u, arg_3.c.x, 0u), vec4<u32>(48669u, 18990u, arg_3.c.x, arg_3.c.x))), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_3.a.zxx)))), func_2()), firstLeadingBit(~abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_3.c.x, arg_3.d.x, 1u), vec3<u32>(u_input.c, 111153u, arg_3.c.x), arg_3.d))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1083f, arg_2) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.x))));
    let var_1 = _wgslsmith_mult_vec3_i32(arg_3.b.zxz, vec3<i32>(global0[_wgslsmith_index_u32(~u_input.c, 15u)], _wgslsmith_add_i32(1i ^ (u_input.a >> (arg_3.c.x % 32u)), global0[_wgslsmith_index_u32(~(27551u >> (arg_3.d.x % 32u)), 15u)]), ~1i));
    var var_2 = Struct_2(select(select(abs(arg_0), vec2<i32>(_wgslsmith_div_i32(23715i, 1i), 1i), all(vec3<bool>(true, true, false))), var_0.a.a, any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)))), _wgslsmith_add_vec4_u32(vec4<u32>(abs(11212u), 13472u & var_0.a.b.x, ~u_input.c, _wgslsmith_mod_u32(var_0.a.b.x, 4294967295u)), ~(~vec4<u32>(0u, u_input.c, var_0.b.x, arg_3.c.x))) ^ ~countOneBits(var_0.a.b), var_0.a.d, func_2());
    let var_3 = _wgslsmith_div_vec3_i32(select(_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(arg_0.x, 1i, arg_0.x)), _wgslsmith_sub_vec3_i32(arg_3.b.wzy, var_1)) | vec3<i32>(-1i, arg_3.b.x, 2147483647i), arg_3.b.wxy, any(vec4<bool>(true, true, true, true))), -reverseBits(~_wgslsmith_sub_vec3_i32(arg_3.b.xxw, vec3<i32>(global0[_wgslsmith_index_u32(57939u, 15u)], 2147483647i, -10026i))));
    return max(-2147483647i, -1i);
}

fn func_6(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: Struct_1) -> u32 {
    global0 = array<i32, 15>();
    global0 = array<i32, 15>();
    global0 = array<i32, 15>();
    var var_0 = select(vec3<bool>(true, !all(vec4<bool>(true, true, true, true)), !(any(vec3<bool>(true, true, true)) || true)), !(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true))), vec3<bool>(any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 15u)] > arg_0.x, true, true)), -540f < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1549f - arg_2.a.x), _wgslsmith_div_f32(1533f, arg_2.a.x))), all(vec2<bool>(true, true))));
    var var_1 = Struct_3(any(select(!vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(var_0.x, false, true, var_0.x), select(!vec4<bool>(true, false, var_0.x, var_0.x), select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, true, var_0.x), var_0.x), true))));
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(u_input.c, func_6(~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(42814i, -31617i, u_input.a, global0[_wgslsmith_index_u32(4294967295u, 15u)]), vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.c, 15u)], u_input.a, 0i)), 23198i, u_input.b, firstTrailingBit(u_input.a)), vec4<i32>(max(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c, 45396u), 15u)], global0[_wgslsmith_index_u32(1u, 15u)]), func_5(~vec2<i32>(u_input.b, 52764i), _wgslsmith_div_f32(-1420f, -492f), _wgslsmith_f_op_f32(func_1(vec4<i32>(1i, 1i, global0[_wgslsmith_index_u32(u_input.c, 15u)], -63289i), Struct_3(false), 45950u)), Struct_5(vec4<f32>(1140f, -423f, 906f, -758f), vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 15u)], global0[_wgslsmith_index_u32(u_input.c, 15u)], u_input.a, -54420i), vec2<u32>(4294967295u, 1u), vec3<u32>(2938u, u_input.c, 46239u))), 19875i, -19044i), func_2()));
    global0 = array<i32, 15>();
    var var_1 = vec3<i32>(i32(-1i) * -u_input.a, global0[_wgslsmith_index_u32(var_0 & var_0, 15u)] | -15140i, global0[_wgslsmith_index_u32(~var_0 >> (~var_0 % 32u), 15u)]);
    let var_2 = !select(select(vec4<bool>(any(vec3<bool>(true, false, false)), false, true, true), vec4<bool>(true, any(vec2<bool>(false, true)), true, false), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, !(u_input.b >= -4651i), !select(false, false, false)), true);
    let var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(124f - -920f))) * _wgslsmith_f_op_f32(-116f * -630f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-902f - 861f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1608f, 466f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-341f * -179f)))));
    let var_4 = vec4<i32>(2147483647i, func_4(var_3, select(vec4<bool>(true, any(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)), false, false), !select(var_2, vec4<bool>(true, var_2.x, true, var_2.x), vec4<bool>(true, true, true, true)), false), Struct_4(Struct_2(~var_1.zx, min(vec4<u32>(u_input.c, 34550u, 1u, 52419u), vec4<u32>(u_input.c, u_input.c, 100040u, 4294967295u)), var_3, var_3), abs(min(vec3<u32>(u_input.c, var_0, u_input.c), vec3<u32>(var_0, u_input.c, var_0))), -467f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1149f) + var_3.a.x), -1437f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.a.x))))), global0[_wgslsmith_index_u32(~(~reverseBits(var_0) << (~3559u % 32u)), 15u)], _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(global0[_wgslsmith_index_u32(1u, 15u)], global0[_wgslsmith_index_u32(11108u, 15u)], -1i, -1i), select(vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 15u)], u_input.b, -72464i, var_1.x), vec4<i32>(var_1.x, var_1.x, 26327i, u_input.b), var_2) << (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.c, 30124u, u_input.c), vec4<u32>(31672u, var_0, u_input.c, u_input.c)) % vec4<u32>(32u))), -2147483647i));
    let var_5 = vec3<f32>(func_2().a.x, _wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.a.x, 1000f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1115f - 716f)) * 1031f)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_div_vec3_u32(firstTrailingBit(~vec3<u32>(var_0, 96660u, 1u)), vec3<u32>(~u_input.c, 63437u | u_input.c, ~1u))), ~4294967295u);
}

