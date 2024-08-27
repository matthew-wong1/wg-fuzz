struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-891f, -1000f);

var<private> global1: array<vec2<i32>, 11>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = u_input.e.x >> (~u_input.d % 32u);
    let var_1 = 2158f;
    var var_2 = Struct_1(true, u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-170f * global0.x)))), -1512f), ~min(-abs(3413i), ~_wgslsmith_sub_i32(u_input.c, u_input.c)));
    var_0 = u_input.e.x;
    global0 = vec2<f32>(var_1, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.c))))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - 128f)))))));
}

fn func_2(arg_0: u32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(round(1487f));
    let var_1 = ~2147483647i;
    let var_2 = Struct_4(false, Struct_1(false, u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + 439f)), -1i), vec4<u32>(u_input.d, ~(~u_input.d), u_input.b, ~1u), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(ceil(930f))), _wgslsmith_f_op_f32(sign(global0.x)))));
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(sign(1258f)), _wgslsmith_f_op_f32(f32(-1f) * -981f))))), var_2.d.a.yy, ~vec2<i32>(-var_1, 0i), vec3<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -226f) - _wgslsmith_f_op_f32(var_2.b.c - _wgslsmith_f_op_f32(-1304f - 1493f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_0)))))));
    var var_4 = Struct_4(true, Struct_1(min(30503u, 1u) != _wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, 4294967295u), ~arg_0), _wgslsmith_sub_i32(var_1, -u_input.c >> (0u % 32u)), var_0, reverseBits(u_input.c)), var_2.c, Struct_2(vec3<f32>(var_2.d.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d.a.x) + var_0), 652f)));
    return var_2;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, 1132f, global0.x, _wgslsmith_f_op_f32(arg_1.c + 626f)))), vec2<f32>(-455f, 129f), vec2<i32>(arg_1.b, countOneBits(0i)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.c, global0.x, arg_1.c))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-101f, global0.x, 897f))))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -227f));
    let var_2 = func_2(countOneBits(reverseBits(u_input.e.x)));
    let var_3 = Struct_5(var_2.c.x, Struct_1(!(!arg_0.x), -1i, _wgslsmith_f_op_f32(global0.x * global0.x), firstLeadingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, arg_1.b, 1i, u_input.a), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 10076i, arg_1.d, arg_1.d), vec4<i32>(-2147483647i, 0i, var_2.b.b, arg_1.d))))), reverseBits(-select(vec2<i32>(arg_1.d, 39416i) >> (var_2.c.ww % vec2<u32>(32u)), select(vec2<i32>(2147483647i, -6725i), var_0.c, false), vec2<bool>(arg_0.x, arg_0.x))));
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.a.x, -801f)))), -1000f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c, _wgslsmith_f_op_f32(-arg_1.c))));
    return func_2(4294967295u).b;
}

fn func_4(arg_0: Struct_5, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: vec4<f32>) -> Struct_2 {
    var var_0 = firstLeadingBit(~(~_wgslsmith_sub_vec3_u32(select(vec3<u32>(62212u, u_input.d, arg_1.x), vec3<u32>(u_input.b, arg_1.x, 82674u), vec3<bool>(false, true, false)), _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.a, u_input.e.x, u_input.b), vec3<u32>(21117u, u_input.e.x, u_input.d)))));
    var_0 = ~func_2(1u).c.yww;
    var var_1 = 45442u;
    global1 = array<vec2<i32>, 11>();
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(arg_3.wwx + arg_3.zyz));
    return func_2(_wgslsmith_add_u32(u_input.d, _wgslsmith_dot_vec2_u32(vec2<u32>(64790u, arg_0.a), vec2<u32>(reverseBits(u_input.e.x), ~28024u)))).d;
}

fn func_5(arg_0: Struct_4, arg_1: u32) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.d.a.yx) * arg_0.d.a.xy);
    global1 = array<vec2<i32>, 11>();
    global0 = _wgslsmith_f_op_vec2_f32(arg_0.d.a.xx + arg_0.d.a.zy);
    var var_0 = vec2<u32>(reverseBits(u_input.b), arg_1);
    var_0 = vec2<u32>(abs(_wgslsmith_dot_vec3_u32(arg_0.c.wwz, vec3<u32>(37791u, arg_0.c.x, var_0.x))), 61292u);
    return Struct_2(vec3<f32>(-305f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(257f))))), func_2(0u).b.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_4(any(vec4<bool>(true, true, true, true)), Struct_1(true, u_input.a, 507f, _wgslsmith_mod_i32(reverseBits(-14618i), 32799i)), reverseBits(~vec4<u32>(u_input.b, 10502u, 49189u, 30399u)), func_4(Struct_5(countOneBits(18710u), func_1(vec4<bool>(true, true, false, true), Struct_1(false, u_input.c, -971f, u_input.a)), vec2<i32>(u_input.c, u_input.c)), ~select(vec2<u32>(u_input.e.x, u_input.d), vec2<u32>(25845u, 49525u), vec2<bool>(false, false)), vec2<bool>(false, true), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, 1265f) - vec4<f32>(1174f, global0.x, -245f, 250f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1915f, 1284f, global0.x, global0.x))))))), _wgslsmith_mult_u32(firstLeadingBit(u_input.e.x), ~4683u));
    var var_1 = ~(~(~(~vec4<u32>(u_input.b, 92289u, 0u, 30220u)) | vec4<u32>(0u, 1u, ~4294967295u, u_input.e.x)));
    var var_2 = vec3<i32>(-_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(0i, 2147483647i, -1i, u_input.c), vec4<i32>(u_input.a, u_input.c, 4962i, 2147483647i), -vec4<i32>(0i, u_input.a, u_input.c, u_input.c)), -firstLeadingBit(vec4<i32>(25325i, 13643i, -28209i, u_input.a))), firstTrailingBit(0i), u_input.a);
    var_1 = ~select(~_wgslsmith_add_vec4_u32(~vec4<u32>(1u, 4294967295u, var_1.x, 4294967295u), abs(vec4<u32>(4294967295u, var_1.x, 0u, var_1.x))), func_2(min(countOneBits(u_input.d), 16355u)).c, true);
    var var_3 = Struct_5(53889u, Struct_1(!((255f != global0.x) || all(vec4<bool>(true, true, true, true))), 51159i, var_0.a.x, select(u_input.a, _wgslsmith_clamp_i32(~24259i, _wgslsmith_dot_vec2_i32(var_2.zx, vec2<i32>(u_input.a, 1i)), 1i), true)), countOneBits(-(vec2<i32>(u_input.a, 1i) ^ _wgslsmith_mod_vec2_i32(global1[_wgslsmith_index_u32(29104u, 11u)], global1[_wgslsmith_index_u32(54314u, 11u)]))));
    let var_4 = func_2(abs(0u));
    var var_5 = !(!select(!vec3<bool>(var_3.b.a, false, var_4.a), vec3<bool>(func_1(vec4<bool>(var_4.a, var_4.a, var_3.b.a, true), var_3.b).a, false, any(vec2<bool>(true, var_3.b.a))), (var_4.b.a | var_4.a) && (true || var_4.b.a)));
    var var_6 = var_4;
    var_5 = select(vec3<bool>(var_5.x, !var_6.a, var_6.c.x >= ~0u), !select(!vec3<bool>(true, var_5.x, var_5.x), select(vec3<bool>(var_3.b.a, var_6.a, var_6.b.a), !vec3<bool>(var_4.a, var_4.a, var_6.b.a), !vec3<bool>(false, var_4.b.a, false)), !select(vec3<bool>(var_5.x, false, var_3.b.a), vec3<bool>(true, true, var_5.x), vec3<bool>(false, var_6.b.a, var_4.a))), false);
    let x = u_input.a;
    s_output = StorageBuffer(1204f, firstLeadingBit(99514u), -355f, var_3.b.b ^ ~2147483647i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_4.d.a.zy) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.a.x, -1608f))))));
}

