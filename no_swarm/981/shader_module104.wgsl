struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec3<i32>,
}

struct Struct_5 {
    a: bool,
    b: vec4<i32>,
    c: Struct_3,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<f32>(-709f, -394f), Struct_2(vec3<u32>(56314u, 1u, 54284u), Struct_1(vec3<i32>(1i, 0i, -1i)), Struct_1(vec3<i32>(11029i, 5999i, 51234i)), Struct_1(vec3<i32>(-50837i, 2544i, i32(-2147483648))), -540f), vec3<i32>(2147483647i, -31049i, 1i));

var<private> global1: array<u32, 23>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    global1 = array<u32, 23>();
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, global0.b.e) * _wgslsmith_f_op_vec2_f32(exp2(global0.a))))))), global0.b, abs(-(firstTrailingBit(u_input.e.ywy) & _wgslsmith_sub_vec3_i32(vec3<i32>(global0.b.b.a.x, -19560i, u_input.b.x), u_input.e.ywy))));
    let var_0 = Struct_1((global0.c ^ ~(-global0.b.d.a)) << (~arg_0 % vec3<u32>(32u)));
    let var_1 = Struct_5(false, vec4<i32>(-(_wgslsmith_sub_i32(global0.b.c.a.x, var_0.a.x) >> (13267u % 32u)), u_input.b.x, -(i32(-1i) * -global0.b.c.a.x), global0.c.x), Struct_3(global0.b, var_0), var_0.a.x & _wgslsmith_mult_i32(_wgslsmith_sub_i32(-9476i, -2147483647i) ^ firstTrailingBit(global0.c.x), reverseBits(1i) ^ u_input.d), global0.c.x >> (0u % 32u));
    global1 = array<u32, 23>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-821f, global0.a.x)), -1980f) - 1f));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3) -> i32 {
    let var_0 = vec2<u32>(1u, ~firstTrailingBit(arg_1.a.a.x));
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(global0.a - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1472f, arg_1.a.e) - global0.a)) * vec2<f32>(_wgslsmith_f_op_f32(790f - 1272f), 1000f))), Struct_2(~arg_0, Struct_1(min(-u_input.e.zzw, vec3<i32>(arg_1.a.d.a.x, 24178i, global0.c.x) << (vec3<u32>(arg_0.x, 4294967295u, u_input.c.x) % vec3<u32>(32u)))), global0.b.b, arg_1.a.b, arg_1.a.e), reverseBits(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.a.x, 2147483647i), global0.c), vec3<i32>(_wgslsmith_div_i32(u_input.b.x, 26436i), -global0.b.b.a.x, -29056i))));
    let var_1 = _wgslsmith_mult_vec2_i32(firstTrailingBit(-select(u_input.b.zz, arg_1.a.d.a.xy, vec2<bool>(false, true)) | -arg_1.a.d.a.zz), select(arg_1.b.a.zy | (firstTrailingBit(vec2<i32>(17408i, -1i)) & -vec2<i32>(u_input.b.x, 2703i)), u_input.e.zy, select(any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true))), true, true)));
    let var_2 = -1884f;
    global0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a))), Struct_2(countOneBits(arg_0), arg_1.a.c, Struct_1(firstTrailingBit(~vec3<i32>(global0.c.x, var_1.x, 7522i))), global0.b.b, var_2), vec3<i32>(~(-1i), global0.c.x, 1i));
    return ~_wgslsmith_add_i32(-2147483647i, (arg_1.a.c.a.x ^ 2147483647i) ^ ~arg_1.a.c.a.x) << (global1[_wgslsmith_index_u32(0u, 23u)] % 32u);
}

fn func_1(arg_0: Struct_5) -> f32 {
    var var_0 = vec3<bool>(false, any(select(!(!vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, arg_0.a, arg_0.a), !vec4<bool>(false, true, arg_0.a, true)), !select(vec4<bool>(arg_0.a, false, arg_0.a, false), vec4<bool>(false, true, arg_0.a, arg_0.a), true))), all(vec4<bool>(true, true, true, true)) || (false || arg_0.a));
    let var_1 = _wgslsmith_f_op_f32(func_2(~firstLeadingBit(firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(17776u, u_input.c.x, global1[_wgslsmith_index_u32(4294967295u, 23u)]), vec3<u32>(global1[_wgslsmith_index_u32(12661u, 23u)], global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(1u, 23u)]))))));
    var var_2 = global0.b.b;
    var_0 = vec3<bool>(true, false && (686f < _wgslsmith_div_f32(global0.b.e, -1000f)), true);
    let var_3 = vec2<i32>(select(-3610i, _wgslsmith_div_i32(~24840i, _wgslsmith_sub_i32(2147483647i, 9208i)), -var_2.a.x >= func_3(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.b.a.x, 23u)], 23u)], 4294967295u, 93821u), arg_0.c)), u_input.e.x) & (vec2<i32>(-1i) * -(~vec2<i32>(arg_0.b.x, u_input.d)));
    return global0.b.e;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2) -> Struct_3 {
    let var_0 = -1000f;
    global0 = Struct_4(arg_0.zw, Struct_2(_wgslsmith_div_vec3_u32(arg_1.a, global0.b.a), global0.b.b, arg_1.c, Struct_1(u_input.b & global0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_5(false, u_input.e, Struct_3(arg_1, Struct_1(arg_1.d.a)), u_input.d, global0.c.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1976f * -1000f) + 744f))), ~(~vec3<i32>(-16051i, arg_1.b.a.x, arg_1.d.a.x) << (_wgslsmith_add_vec3_u32(~u_input.c.yyw, abs(vec3<u32>(arg_1.a.x, global1[_wgslsmith_index_u32(global0.b.a.x, 23u)], 27531u))) % vec3<u32>(32u))));
    let var_1 = firstTrailingBit(-(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(3701i, -11896i, arg_1.b.a.x, arg_1.c.a.x), vec4<i32>(-1i, -1i, 43124i, 2147483647i)), _wgslsmith_sub_i32(27792i, -1i), -74300i, reverseBits(26698i)) & u_input.e));
    global0 = Struct_4(global0.a, Struct_2(select(_wgslsmith_div_vec3_u32(global0.b.a, arg_1.a) ^ u_input.c.ywx, select(u_input.c.zwx, arg_1.a << (vec3<u32>(35809u, arg_1.a.x, 1u) % vec3<u32>(32u)), true), all(vec2<bool>(false, true))), arg_1.d, global0.b.c, arg_1.d, _wgslsmith_div_f32(arg_0.x, 261f)), _wgslsmith_div_vec3_i32(vec3<i32>(-(~u_input.d), -56515i, _wgslsmith_div_i32(arg_1.b.a.x, 2147483647i)), ~vec3<i32>(u_input.e.x & 27607i, ~(-4199i), global0.b.c.a.x)));
    var var_2 = any(!select(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(false, true)), select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), var_0 > var_0), true));
    return Struct_3(global0.b, Struct_1(~_wgslsmith_mod_vec3_i32(~vec3<i32>(var_1.x, -11172i, -1i), vec3<i32>(global0.b.b.a.x, arg_1.c.a.x, 49690i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(-767f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_5(false, u_input.e, Struct_3(global0.b, global0.b.d), u_input.e.x, -39945i))) - _wgslsmith_f_op_f32(f32(-1f) * -1123f))), global0.a.x, -203f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(Struct_5(true, u_input.e, Struct_3(Struct_2(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], u_input.c.x, global0.b.a.x), global0.b.b, Struct_1(vec3<i32>(global0.b.b.a.x, -50067i, 1i)), global0.b.d, global0.b.e), Struct_1(global0.b.d.a)), -19276i, -1i)))))), global0.b);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a.e - var_0.a.e))), 451f, global0.a.x);
    var var_2 = select(select(vec2<bool>(all(vec2<bool>(false, true)), !all(vec3<bool>(true, false, false))), select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), false), select(vec2<bool>(true, false), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, false), false)), any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)))), vec2<bool>(true, true)), select(select(vec2<bool>(any(vec3<bool>(false, false, false)), any(vec3<bool>(false, true, true))), vec2<bool>(true, true), any(vec2<bool>(false, false))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(false, false)), true), vec2<bool>(countOneBits(global0.b.b.a.x) >= reverseBits(-61439i), select(global0.a.x < var_0.a.e, -648f >= global0.a.x, any(vec4<bool>(false, true, false, true))))), any(vec4<bool>(!all(vec3<bool>(true, false, false)), any(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true))), all(vec4<bool>(true, true, true, true)), !all(vec4<bool>(false, false, false, false)))));
    let var_3 = _wgslsmith_div_u32(~abs(var_0.a.a.x | 4294967295u) | ~var_0.a.a.x, 83720u);
    let var_4 = abs(_wgslsmith_clamp_i32(~reverseBits(global0.b.b.a.x), 28141i, ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.d.a.x, var_0.a.b.a.x, -14736i), vec3<i32>(global0.c.x, 10855i, u_input.a.x)))));
    var var_5 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.c, ~reverseBits(~vec4<u32>(global0.b.a.x, global0.b.a.x, 0u, var_0.a.a.x))), ~vec4<u32>(44109u, 2445u, _wgslsmith_div_u32(reverseBits(var_3), var_3), var_0.a.a.x));
    let var_6 = Struct_3(var_0.a, var_0.b);
    var_0 = Struct_3(Struct_2(~vec3<u32>(36255u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1242u, 23u)], 23u)]) | u_input.c.zyw, func_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_6.a.e, -294f, global0.a.x, global0.b.e), vec4<f32>(1000f, -1266f, var_1.x, var_1.x))))), Struct_2(~var_0.a.a, func_4(vec4<f32>(var_0.a.e, -721f, 1151f, -592f), Struct_2(vec3<u32>(39060u, var_0.a.a.x, 64695u), var_0.a.d, var_0.a.c, var_0.a.d, var_6.a.e)).b, func_4(vec4<f32>(832f, -800f, var_0.a.e, global0.a.x), Struct_2(vec3<u32>(var_3, 0u, u_input.c.x), Struct_1(vec3<i32>(1i, -15932i, -9364i)), global0.b.b, var_6.a.b, var_6.a.e)).b, Struct_1(vec3<i32>(var_6.b.a.x, -12239i, var_6.b.a.x)), _wgslsmith_f_op_f32(ceil(global0.b.e)))).b, Struct_1(vec3<i32>(var_4, ~var_0.b.a.x, 21814i)), Struct_1(_wgslsmith_mult_vec3_i32(var_6.b.a, u_input.b)), _wgslsmith_f_op_f32(func_1(Struct_5(all(vec3<bool>(false, true, var_2.x)), ~vec4<i32>(var_4, var_0.b.a.x, global0.b.b.a.x, var_4), var_6, var_4, firstTrailingBit(var_4))))), Struct_1(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1043f, var_6.a.e, global0.b.e, -1208f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_6.a.e, var_6.a.e, 977f, 1565f), vec4<f32>(global0.a.x, var_6.a.e, -430f, 1000f)))), global0.b).b.a));
    var_2 = vec2<bool>(var_2.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(var_6.a.d.a, abs(50957u), u_input.e, 1u, -_wgslsmith_clamp_i32(0i, var_6.b.a.x, ~_wgslsmith_div_i32(u_input.b.x, 15897i)));
}

