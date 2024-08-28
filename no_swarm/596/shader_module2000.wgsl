struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(true, false, vec3<i32>(-21938i, 0i, 2147483647i)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    global0 = array<Struct_1, 2>();
    var var_0 = ~vec2<i32>(firstLeadingBit(i32(-1i) * -12462i) & _wgslsmith_sub_i32(~(-1i), -2147483647i << (u_input.a.x % 32u)), (-8015i >> (~u_input.b.x % 32u)) >> (5608u % 32u));
    let var_1 = Struct_1(!(var_0.x > var_0.x), !any(vec4<bool>(var_0.x != var_0.x, true, true, var_0.x == -17288i)), _wgslsmith_add_vec3_i32((vec3<i32>(-1i, var_0.x, -6659i) ^ ~vec3<i32>(var_0.x, 0i, var_0.x)) | ~vec3<i32>(19132i, var_0.x, -35097i), vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, -2630i, 16437i, var_0.x), vec4<i32>(2147483647i, var_0.x, var_0.x, 1i)), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, 16350i, var_0.x, var_0.x), vec4<i32>(var_0.x, 40892i, var_0.x, var_0.x))), var_0.x, _wgslsmith_sub_i32(-var_0.x, var_0.x))));
    let var_2 = vec2<f32>(1046f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-549f)) - _wgslsmith_f_op_f32(717f * -478f)), _wgslsmith_f_op_f32(f32(-1f) * -518f))));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(step(906f, var_2.x)));
    return -var_1.c.x;
}

fn func_4(arg_0: i32, arg_1: vec3<f32>) -> i32 {
    return -1i;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec4<u32>) -> vec3<i32> {
    let var_0 = _wgslsmith_div_u32(u_input.b.x, 83990u);
    let var_1 = -2147483647i < _wgslsmith_mult_i32(func_4(func_3(), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-186f, 420f, 852f) - vec3<f32>(1498f, 2251f, -1296f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1403f, 215f, -1156f))))), _wgslsmith_mult_i32(1i, ~0i));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -625f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1173f, 1515f) - vec2<f32>(-767f, 707f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(472f, 1000f)) + vec2<f32>(661f, -473f))))), min(countOneBits(select(vec2<u32>(u_input.b.x, 1u), vec2<u32>(1444u, u_input.b.x), var_1)) << (~arg_2.xx % vec2<u32>(32u)), ~abs(~arg_2.zz)));
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(383f, 2192f, var_2.a)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1102f, var_2.a, arg_0)) + 1f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_2.b.x, var_2.a)), _wgslsmith_f_op_f32(var_2.b.x - 971f)))) * vec3<f32>(var_2.b.x, var_2.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_2.a)), var_2.a)))));
    let var_4 = Struct_2(!all(select(select(vec3<bool>(var_1, false, arg_0), vec3<bool>(arg_0, true, false), false), !vec3<bool>(arg_0, false, arg_0), var_1)), max(~(vec3<u32>(0u, var_2.c.x, 0u) | ~vec3<u32>(118233u, var_0, var_0)), vec3<u32>(var_0, _wgslsmith_sub_u32(arg_2.x >> (0u % 32u), ~68500u), var_2.c.x)), global0[_wgslsmith_index_u32(arg_1 ^ _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(u_input.b.x), arg_2.x), ~(vec2<u32>(arg_1, 33050u) | vec2<u32>(var_2.c.x, 0u))), 2u)]);
    return var_4.c.c;
}

fn func_5(arg_0: f32, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: Struct_3) -> bool {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~1u), min(_wgslsmith_mod_u32(37238u, _wgslsmith_dot_vec3_u32(u_input.a.xwx, u_input.a.yzx) | ~1u), arg_2.x)), 2u)];
    var var_1 = Struct_3(374f, arg_3.b, _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(arg_3.c, ~u_input.a.yz), firstTrailingBit(countOneBits(u_input.a.wy))) ^ vec2<u32>(_wgslsmith_add_u32(arg_3.c.x, 22745u), _wgslsmith_mod_u32(12683u, 4294967295u) >> (1u % 32u)));
    var var_2 = Struct_2(var_0.b, firstTrailingBit(~_wgslsmith_add_vec3_u32(firstTrailingBit(u_input.a.ywx), vec3<u32>(arg_3.c.x, arg_3.c.x, u_input.a.x))), global1[_wgslsmith_index_u32(1u, 1u)]);
    let var_3 = reverseBits(vec4<i32>(firstTrailingBit(-2147483647i) | _wgslsmith_add_i32(-var_0.c.x, var_2.c.c.x), select(var_0.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_0.c.x, var_2.c.c.x), vec3<i32>(var_2.c.c.x, var_0.c.x, var_0.c.x)), false) << (u_input.a.x % 32u), _wgslsmith_div_i32(var_0.c.x, -2147483647i), (arg_1.x >> (42886u % 32u)) | select(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_0.c.x, var_0.c.x, var_2.c.c.x), vec4<i32>(var_2.c.c.x, var_2.c.c.x, 14112i, var_2.c.c.x)), var_0.c.x, false)));
    let var_4 = select(37226u, min(~(~var_1.c.x), 8123u), var_2.c.b);
    return any(select(vec3<bool>(any(vec3<bool>(false, true, true)), var_0.a, !var_0.b), !select(vec3<bool>(false, var_0.b, true), select(vec3<bool>(true, var_2.a, true), vec3<bool>(var_2.c.a, var_2.c.a, false), var_2.a), select(vec3<bool>(false, false, var_0.b), vec3<bool>(var_2.c.b, var_0.a, var_0.b), false)), vec3<bool>(!var_2.c.a, true, !var_2.c.b && all(vec4<bool>(var_2.a, var_2.c.a, var_0.b, var_2.a)))));
}

fn func_1() -> Struct_3 {
    var var_0 = 23696i;
    var var_1 = !func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-136f))), _wgslsmith_mult_vec3_i32(vec3<i32>(~2147483647i, 1i, 0i), select(func_2(false, 76700u, u_input.a), vec3<i32>(1i, -1i, 970i), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))), vec2<u32>(~min(u_input.b.x, 23945u), 23405u), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1067f))), vec2<f32>(-764f, -1007f), u_input.a.yw));
    var var_2 = global0[_wgslsmith_index_u32(~(4294967295u >> (u_input.a.x % 32u)), 2u)];
    global1 = array<Struct_1, 1>();
    var var_3 = vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_2.c.x, -1i) & (var_2.c.zx << (vec2<u32>(1u, 13819u) % vec2<u32>(32u))), select(max(var_2.c.xy, var_2.c.zz), -vec2<i32>(var_2.c.x, 0i), func_5(1206f, var_2.c, vec2<u32>(u_input.a.x, 4688u), Struct_3(1117f, vec2<f32>(-1000f, -367f), u_input.a.yy)))), vec2<i32>(_wgslsmith_div_i32(var_2.c.x, reverseBits(var_2.c.x)), _wgslsmith_mult_i32(-24548i, ~var_2.c.x))), -1i, max(firstLeadingBit(-(~(-1i))), -2147483647i));
    return Struct_3(709f, vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-752f, 1950f, true)), 1f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(888f - 373f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(sign(-187f))), 296f))), vec2<u32>(max(max(u_input.b.x, abs(u_input.a.x)), _wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(0u, u_input.a.x, 31366u, 1u))), 53603u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 1>();
    let var_0 = func_1();
    let var_1 = Struct_1(true, !all(vec3<bool>(any(vec3<bool>(true, true, false)), true, true)), _wgslsmith_mult_vec3_i32(~_wgslsmith_mult_vec3_i32(func_2(true, 45317u, vec4<u32>(u_input.a.x, var_0.c.x, 37218u, 44919u)), vec3<i32>(-2147483647i, 43653i, -521i)), vec3<i32>(-1i, _wgslsmith_mod_i32(1i, 1i), -14274i)));
    global1 = array<Struct_1, 1>();
    global1 = array<Struct_1, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_f_op_vec2_f32(vec2<f32>(287f, _wgslsmith_div_f32(-1340f, func_1().b.x)) * _wgslsmith_f_op_vec2_f32(exp2(var_0.b))), 23758u, vec2<u32>(~var_0.c.x, 0u));
}

