struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec2<u32>,
    d: i32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 21>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_2, arg_3: Struct_3) -> vec3<i32> {
    global0 = array<vec2<f32>, 21>();
    global0 = array<vec2<f32>, 21>();
    var var_0 = select(14836i, -34726i, arg_3.b.a);
    var_0 = ~_wgslsmith_mult_i32(u_input.a, _wgslsmith_mod_i32(arg_3.d, -(u_input.a << (arg_3.b.c.x % 32u))));
    var var_1 = !any(vec2<bool>(all(vec2<bool>(true, arg_1)), arg_1)) && arg_1;
    return _wgslsmith_mod_vec3_i32(vec3<i32>(max(~arg_3.e.x, i32(-1i) * -49805i), 8614i, _wgslsmith_add_i32(33526i, countOneBits(-2147483647i))) << (arg_3.b.c.wyy % vec3<u32>(32u)), vec3<i32>(~2147483647i, u_input.a, -arg_3.e.x));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32) -> i32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-1110f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1295f + 291f) * _wgslsmith_f_op_f32(2467f + 1084f)))), Struct_1(true, arg_1.b, ~arg_1.c), arg_1.c.yx, abs(-2147483647i), _wgslsmith_sub_vec3_i32(countOneBits(func_3(1253f < arg_1.b, arg_1.a, Struct_2(352f, global0[_wgslsmith_index_u32(arg_1.c.x, 21u)]), Struct_3(arg_1.b, arg_1, vec2<u32>(arg_2, 14492u), -8936i, vec3<i32>(-2147483647i, u_input.a, u_input.a)))), ~(-vec3<i32>(0i, 0i, 5810i))));
    var var_1 = vec3<i32>(min(14033i, max(_wgslsmith_div_i32(var_0.d, var_0.e.x) >> (arg_2 % 32u), reverseBits(-29903i ^ u_input.a))), select(u_input.a, _wgslsmith_add_i32(-(~42457i), -486i >> (~arg_2 % 32u)), arg_1.b > var_0.a), _wgslsmith_clamp_i32(0i, _wgslsmith_div_i32(0i, ~_wgslsmith_sub_i32(var_0.d, u_input.a)), ~_wgslsmith_clamp_i32(~u_input.a, u_input.a, _wgslsmith_sub_i32(2147483647i, u_input.a))));
    var_1 = vec3<i32>(u_input.a & (i32(-1i) * -(24253i << (0u % 32u))), u_input.a, abs(-var_0.e.x));
    var_1 = vec3<i32>(-(~_wgslsmith_dot_vec3_i32(var_0.e, var_0.e)), var_1.x, u_input.a) | _wgslsmith_mult_vec3_i32(abs(select(vec3<i32>(2147483647i, 48242i, u_input.a), var_0.e, vec3<bool>(arg_1.a, true, var_0.b.a)) >> (~arg_1.c.xzz % vec3<u32>(32u))), ~vec3<i32>(0i, 13453i, var_0.e.x));
    var var_2 = !select(vec4<bool>(select(true, true, false), var_0.b.a, !var_0.b.a, !arg_1.a), !(!vec4<bool>(arg_0.x, var_0.b.a, arg_1.a, true)), true);
    return ~(i32(-1i) * -reverseBits(-3611i));
}

fn func_1() -> i32 {
    let var_0 = ~(-func_2(vec2<bool>(true, true), Struct_1(true, 756f, ~vec4<u32>(39707u, 77278u, 1u, 4294967295u)), _wgslsmith_dot_vec3_u32(max(vec3<u32>(19904u, 22995u, 1u), vec3<u32>(4294967295u, 4394u, 56049u)), vec3<u32>(1u, 1u, 1u))));
    var var_1 = reverseBits(vec3<u32>(1u, 1u, 1u) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)));
    global0 = array<vec2<f32>, 21>();
    var_1 = ~_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.x ^ var_1.x, ~59594u, 32058u), _wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(var_1.x, 0u, var_1.x))), ~(select(vec3<u32>(4294967295u, 14878u, 77692u), vec3<u32>(var_1.x, 10557u, 0u), vec3<bool>(false, false, false)) ^ (vec3<u32>(1u, var_1.x, 4294967295u) >> (vec3<u32>(var_1.x, var_1.x, 79550u) % vec3<u32>(32u)))));
    var var_2 = (~59422i < _wgslsmith_mod_i32(~u_input.a, _wgslsmith_mult_i32(var_0 & -29435i, _wgslsmith_sub_i32(var_0, u_input.a)))) & true;
    return ~_wgslsmith_sub_i32(var_0, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(var_0, -2147483647i), -vec2<i32>(-48891i, var_0)), -vec2<i32>(var_0, var_0)));
}

fn func_4(arg_0: vec4<i32>) -> f32 {
    var var_0 = ~abs(vec3<i32>(-arg_0.x, -u_input.a, -2147483647i));
    var var_1 = ~_wgslsmith_mult_vec4_u32(countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(27618u, 0u, 4294967295u, 1u))), countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 42370u, 7634u, 4294967295u), vec4<u32>(1u, 78185u, 135259u, 5169u), vec4<u32>(1u, 3706u, 19366u, 10018u)) >> (~vec4<u32>(4294967295u, 0u, 77454u, 1u) % vec4<u32>(32u))));
    var var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.x, 2608i, u_input.a, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(arg_0, vec4<i32>(-1i, u_input.a, u_input.a, u_input.a)), abs(vec4<i32>(u_input.a, -1i, arg_0.x, u_input.a))) & select(_wgslsmith_dot_vec3_i32(arg_0.yxx, arg_0.zxz), _wgslsmith_mod_i32(-2147483647i, u_input.a), true)), ~(~arg_0));
    global0 = array<vec2<f32>, 21>();
    var_1 = vec4<u32>(_wgslsmith_mod_u32(4294967295u, ~_wgslsmith_div_u32(1u, var_1.x) ^ _wgslsmith_div_u32(reverseBits(17897u), var_1.x)), abs(_wgslsmith_dot_vec2_u32(var_1.xz, var_1.wx)), 1u, var_1.x);
    return _wgslsmith_div_f32(1346f, -1237f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 21>();
    var var_0 = _wgslsmith_f_op_f32(func_4(max(vec4<i32>(u_input.a, _wgslsmith_div_i32(u_input.a, func_1()), _wgslsmith_div_i32(i32(-1i) * -2147483647i, u_input.a), u_input.a), vec4<i32>(u_input.a, -13513i, _wgslsmith_add_i32(u_input.a & u_input.a, abs(u_input.a)), ~u_input.a))));
    var var_1 = -1i;
    var var_2 = min(_wgslsmith_mult_vec2_u32(~vec2<u32>(1u, 1u), firstTrailingBit(~vec2<u32>(31524u, 4294967295u))), vec2<u32>(0u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(9968u, 1u, 4294967295u, 0u), vec4<u32>(1u, 42631u, 30199u, 0u)), 1u))) >> (~_wgslsmith_mod_vec2_u32(~(~vec2<u32>(1u, 4294967295u)), vec2<u32>(1u, 1u)) % vec2<u32>(32u));
    var var_3 = Struct_2(-137f, global0[_wgslsmith_index_u32(0u, 21u)]);
    var var_4 = var_3.b.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(706f, _wgslsmith_f_op_f32(var_3.a + var_3.a))));
    let var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1045f, var_3.b.x, -225f) * vec3<f32>(-1852f, -440f, 1346f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a, var_3.b.x, var_3.b.x))))))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_3.a, 482f, -695f))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-2242f, var_3.b.x, 196f)))))))));
    var var_6 = ~firstTrailingBit(~(abs(vec3<u32>(var_2.x, var_2.x, var_2.x)) ^ vec3<u32>(var_2.x, var_2.x, var_2.x)));
    let var_7 = select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec2<bool>(false, false)), true, true), any(vec3<bool>(true | (428f < var_5.x), !any(vec4<bool>(false, true, false, true)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(vec4<i32>(-u_input.a, -u_input.a, u_input.a, -11877i) >> ((~vec4<u32>(var_2.x, 0u, var_6.x, var_2.x) | ~vec4<u32>(var_6.x, var_6.x, var_6.x, var_2.x)) % vec4<u32>(32u)), abs(firstLeadingBit(vec4<i32>(2147483647i, u_input.a, 1i, u_input.a)))));
}

