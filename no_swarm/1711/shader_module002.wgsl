struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(vec3<i32>(2147483647i, 0i, 0i)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>) -> bool {
    let var_0 = true;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1501f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1f, 630f, var_0)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2530f * 1652f))))), var_0)));
    var var_2 = vec3<f32>(-405f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1812f - -596f), _wgslsmith_f_op_f32(735f * 1639f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(680f - -1346f) - -809f))), -825f);
    var_1 = -2222f;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(step(var_2.x, _wgslsmith_f_op_f32(floor(var_2.x)))))), !select(select(vec4<bool>(var_0, var_0, var_0, true), select(vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(false, var_0, false, var_0), vec4<bool>(var_0, var_0, var_0, false)), !vec4<bool>(var_0, var_0, var_0, var_0)), !(!vec4<bool>(false, true, var_0, false)), all(select(vec2<bool>(var_0, false), vec2<bool>(false, var_0), vec2<bool>(var_0, false)))), vec4<i32>(~abs(arg_0.x ^ arg_0.x), -_wgslsmith_add_i32(arg_0.x, 20416i) << (reverseBits(_wgslsmith_div_u32(u_input.b, 1u)) % 32u), abs(23642i & -arg_0.x), -12008i), -10469i);
    return true;
}

fn func_2() -> bool {
    let var_0 = Struct_2(-reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 2147483647i), ~vec2<i32>(-22034i, 8297i))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(456f * -1183f)) + _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(step(1711f, -1593f)))), !vec4<bool>(true, any(vec4<bool>(false, false, true, false)), true, func_3(vec3<i32>(1i, -2147483647i, 6483i))), vec4<i32>(min(_wgslsmith_mult_i32(2147483647i, 0i), max(29421i, 0i)), 1i, _wgslsmith_div_i32(~0i, 28497i), -5615i), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-20227i, -60442i)), countOneBits(vec2<i32>(18422i, 2147483647i))) | 1i));
    var var_1 = _wgslsmith_f_op_f32(-1f) <= _wgslsmith_f_op_f32(step(var_0.b.a, _wgslsmith_f_op_f32(-var_0.b.a)));
    var var_2 = Struct_2(min(1i, 2147483647i) & var_0.a, var_0.b);
    let var_3 = select(var_0.b.b.zy, vec2<bool>(all(!(!vec4<bool>(var_0.b.b.x, true, false, var_2.b.b.x))), var_2.b.b.x), var_0.b.b.x | false);
    global0 = array<Struct_3, 1>();
    return true;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: i32, arg_3: bool) -> Struct_1 {
    global0 = array<Struct_3, 1>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(1000f - 284f)), -417f)), vec4<bool>(!arg_3, true, func_2(), true), vec4<i32>(arg_2, min(19609i, -1i << (firstTrailingBit(arg_1.x) % 32u)), _wgslsmith_dot_vec4_i32(min(firstLeadingBit(vec4<i32>(arg_2, arg_2, arg_2, arg_2)), ~vec4<i32>(2147483647i, -28157i, arg_2, -16571i)), ~vec4<i32>(2147483647i, arg_2, 1i, -38085i) ^ vec4<i32>(arg_2, -2147483647i, arg_2, -1i)), _wgslsmith_div_i32(21060i & firstTrailingBit(2147483647i), -31731i)), ~1i);
    var var_1 = vec3<bool>(_wgslsmith_f_op_f32(-var_0.a) < var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(min(var_0.a, var_0.a)), true))) < var_0.a, var_0.b.x);
    let var_2 = _wgslsmith_add_vec3_u32((abs(~vec3<u32>(u_input.b, 12754u, 65633u)) >> (~countOneBits(vec3<u32>(u_input.a.x, 4294967295u, arg_1.x)) % vec3<u32>(32u))) & vec3<u32>(1u, 1u, 1u), ~((vec3<u32>(34393u, arg_0.x, 11856u) << ((vec3<u32>(arg_0.x, arg_1.x, 80873u) & vec3<u32>(0u, 4294967295u, arg_1.x)) % vec3<u32>(32u))) | max(~vec3<u32>(96385u, arg_0.x, arg_1.x), firstLeadingBit(vec3<u32>(1u, arg_0.x, 1u)))));
    var var_3 = !(_wgslsmith_div_f32(var_0.a, var_0.a) > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a))));
    return Struct_1(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -840f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-336f - var_0.a)))))), vec4<bool>(all(var_0.b.zz), func_2(), true, all(vec3<bool>(var_0.b.x || true, var_1.x, any(var_0.b)))), vec4<i32>(max(firstTrailingBit(0i), -_wgslsmith_mod_i32(39096i, -9873i)), arg_2, _wgslsmith_dot_vec3_i32(~reverseBits(vec3<i32>(1i, 2147483647i, var_0.d)), _wgslsmith_div_vec3_i32(var_0.c.xyz, vec3<i32>(var_0.c.x, -2147483647i, 1i))), -36837i), 2147483647i);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> u32 {
    let var_0 = vec2<i32>(arg_0.c.x, max(0i, arg_2.d));
    let var_1 = arg_2.a;
    var var_2 = Struct_2(2147483647i, func_1(_wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(~32569u, u_input.a.x)), vec2<u32>(max(u_input.b & 4294967295u, 4294967295u), 1u), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c.x, 1i), arg_2.c.wy) >> (countOneBits(_wgslsmith_mult_u32(52810u, u_input.a.x)) % 32u), arg_2.b.x));
    var var_3 = u_input.a;
    let var_4 = !(!vec3<bool>(!any(arg_0.b.xxy), func_1(u_input.a & vec2<u32>(38336u, 12899u), u_input.a, 40413i, true).b.x, !(!arg_2.b.x)));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~max(_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, -2147483647i), vec2<i32>(-1i, -1i)) << ((1u << (0u % 32u)) % 32u), 1i);
    var var_1 = false;
    global0 = array<Struct_3, 1>();
    global0 = array<Struct_3, 1>();
    var var_2 = global0[_wgslsmith_index_u32(firstTrailingBit(43403u), 1u)];
    var var_3 = !(func_4(func_1(vec2<u32>(6591u, u_input.a.x), u_input.a, -1i, false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1262f), _wgslsmith_f_op_f32(min(-1032f, 901f))), Struct_1(-970f, vec4<bool>(true, true, true, true), reverseBits(vec4<i32>(17534i, 1i, var_2.a.x, 14441i)), var_2.a.x)) == _wgslsmith_sub_u32(0u, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -1062f, -2339f), vec3<f32>(389f, 273f, -1488f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 372f, -1155f) - vec3<f32>(-1013f, 519f, 990f))))), vec3<f32>(1f, 1f, 1f)));
}

