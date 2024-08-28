struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
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

var<private> global0: u32 = 1u;

var<private> global1: array<vec3<u32>, 26>;

var<private> global2: array<bool, 1>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec3<i32> {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.c, ~(~vec2<u32>(u_input.b, 0u))), ~0u), ~select(select(4294967295u, 4294967295u, all(vec3<bool>(global2[_wgslsmith_index_u32(122945u, 1u)], global2[_wgslsmith_index_u32(u_input.c.x, 1u)], false))), u_input.c.x, true));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(2513f, 1201f), 825f)) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-560f))), _wgslsmith_f_op_f32(sign(1800f)))));
    let var_2 = global2[_wgslsmith_index_u32(48806u, 1u)];
    var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1630f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-261f, -1046f, var_1.x < var_1.x)) + 992f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2779f, -201f)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-733f, var_1.x), vec2<f32>(var_1.x, 1430f)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_1.x) * vec2<f32>(-1161f, var_1.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_1.x)), vec2<bool>(global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(u_input.b, 1u)])))))));
    global2 = array<bool, 1>();
    return ~(-(~u_input.a.zxx));
}

fn func_2(arg_0: Struct_4) -> Struct_1 {
    var var_0 = Struct_5(reverseBits(u_input.a.x ^ -firstTrailingBit(u_input.a.x)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1097f, _wgslsmith_f_op_f32(trunc(-906f)))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_1(_wgslsmith_div_u32(1u, 1u), vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x | 1u, 1u)], false, !global2[_wgslsmith_index_u32(u_input.c.x, 1u)], 1u == arg_0.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -324f))), func_3()), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-637f, 1251f, -794f, 275f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(865f, 1089f, -576f, 174f) - vec4<f32>(999f, 578f, 565f, -886f))))), u_input.a.yx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1262f, -634f, _wgslsmith_f_op_f32(round(-1225f))))), global1[_wgslsmith_index_u32(arg_0.a, 26u)], _wgslsmith_clamp_vec3_i32(select(u_input.a.xxz, ~vec3<i32>(14973i, u_input.a.x, 0i), all(vec4<bool>(global2[_wgslsmith_index_u32(arg_0.a, 1u)], global2[_wgslsmith_index_u32(u_input.b, 1u)], true, global2[_wgslsmith_index_u32(arg_0.a, 1u)]))) << (~(~global1[_wgslsmith_index_u32(29056u, 26u)]) % vec3<u32>(32u)), u_input.a.wzw, u_input.a.wwz));
    global2 = array<bool, 1>();
    var var_1 = _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(9388i, u_input.a.x), ~(-1137i)), ~_wgslsmith_add_i32(var_0.b.b.d.x, var_0.a)), 88050i), _wgslsmith_mult_i32(~(~(~49315i)), countOneBits(var_0.d.x)));
    let var_2 = Struct_3(24221i, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(var_0.b.c, vec4<f32>(-1904f, var_0.b.c.x, 2582f, 211f)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(var_0.b.c - vec4<f32>(875f, -704f, var_0.b.c.x, -1589f)), vec4<f32>(var_0.b.c.x, 1328f, -636f, 376f)))))), !(!select(!var_0.b.b.b.wzw, var_0.b.b.b.zyx, !var_0.b.b.b.yzz)));
    let var_3 = var_0.b;
    return Struct_1(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(var_0.c.xz, _wgslsmith_sub_vec2_u32(var_0.c.xz, u_input.c), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_3.b.a, arg_0.a), vec2<u32>(var_0.b.b.a, 4294967295u), var_0.c.yx)), select(var_0.c.yx >> (u_input.c % vec2<u32>(32u)), select(vec2<u32>(u_input.c.x, u_input.b), vec2<u32>(1u, 4294967295u), var_0.b.b.b.x), var_0.b.b.b.x)), firstTrailingBit(1u) << ((_wgslsmith_mult_u32(var_0.b.b.a, 4294967295u) >> (_wgslsmith_clamp_u32(4294967295u, 34848u, 25879u) % 32u)) % 32u)), select(vec4<bool>(false, var_0.b.b.b.x, true, !var_3.b.b.x || true), select(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 1u)], var_2.c.x, var_2.c.x, var_2.c.x), vec4<bool>(var_0.b.b.b.x, var_3.b.b.x, false, false), var_3.b.b), select(!var_3.b.b, !vec4<bool>(global2[_wgslsmith_index_u32(19221u, 1u)], var_3.b.b.x, var_2.c.x, true), true == var_0.b.b.b.x), var_0.b.b.b.x), var_0.b.b.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x + _wgslsmith_f_op_f32(abs(740f))) * 267f) + var_3.c.x), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(2147483647i, var_2.a), abs(-2147483647i)) >> (0u % 32u), 2147483647i, 0i));
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: i32, arg_3: Struct_2) -> vec2<f32> {
    let var_0 = u_input.a.x;
    var var_1 = ~_wgslsmith_sub_u32(arg_3.b.a, ~arg_3.b.a);
    let var_2 = vec4<bool>(false, !(!arg_3.b.b.x), false, true);
    var var_3 = 1u;
    global1 = array<vec3<u32>, 26>();
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(func_2(Struct_4(u_input.c.x)).c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(arg_3.e.x)))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_4) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_4(select(firstTrailingBit(abs(u_input.a)), vec4<i32>(u_input.a.x ^ 2147483647i, _wgslsmith_add_i32(u_input.a.x, -7662i), _wgslsmith_div_i32(0i, -1i), -26221i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -1i), vec2<i32>(1i, 4406i)) <= reverseBits(-62354i)), -26894i, _wgslsmith_dot_vec2_i32(u_input.a.yw, -_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), vec2<i32>(u_input.a.x, u_input.a.x))), Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(749f - -1067f))), func_2(Struct_4(arg_2.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-499f, -584f, -142f, -1107f)), vec4<f32>(1000f, -2209f, 583f, 390f)), ~vec2<i32>(u_input.a.x, -1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2304f, -286f, -1254f) - vec3<f32>(2079f, -1716f, -135f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(579f, 788f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1642f, 1194f)), !vec2<bool>(arg_1, true))) * vec2<f32>(_wgslsmith_f_op_f32(-838f * -1644f), _wgslsmith_f_op_f32(min(221f, 497f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-648f, -1714f)))))))));
    global2 = array<bool, 1>();
    global0 = arg_3.a;
    var var_1 = 4294967295u;
    global2 = array<bool, 1>();
    return Struct_5(-42195i, Struct_2(589f, Struct_1(abs(12777u), !vec4<bool>(global2[_wgslsmith_index_u32(arg_3.a, 1u)], true, arg_1, true), _wgslsmith_f_op_f32(step(-197f, _wgslsmith_f_op_f32(exp2(var_0.x)))), vec3<i32>(1i, max(u_input.a.x, 1i), firstLeadingBit(-105139i))), vec4<f32>(-112f, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) * _wgslsmith_f_op_f32(1082f + var_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x)))), vec2<i32>(~_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), select(u_input.a.x, ~(-1i), all(vec3<bool>(arg_1, arg_1, global2[_wgslsmith_index_u32(38189u, 1u)])))), vec3<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1131f)), var_0.x), _wgslsmith_f_op_f32(-var_0.x))), min(reverseBits(global1[_wgslsmith_index_u32(4294967295u, 26u)]), vec3<u32>(arg_3.a, u_input.b, 18579u)), (u_input.a.zzx >> (_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 1u, 71247u), arg_0) % vec3<u32>(32u))) ^ vec3<i32>(~1436i >> (0u % 32u), -2147483647i, -firstTrailingBit(u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_add_u32(~(min(~u_input.c.x, _wgslsmith_sub_u32(u_input.b, u_input.c.x)) >> (min(~85402u, _wgslsmith_mult_u32(23517u, u_input.c.x)) % 32u)), u_input.c.x);
    var var_0 = func_1(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(firstLeadingBit(global1[_wgslsmith_index_u32(u_input.b, 26u)]), ~vec3<u32>(6253u, u_input.b, u_input.b)), vec3<u32>(4294967295u, u_input.b, u_input.b)), any(!select(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 1u)], true), select(vec2<bool>(global2[_wgslsmith_index_u32(9708u, 1u)], global2[_wgslsmith_index_u32(26795u, 1u)]), vec2<bool>(global2[_wgslsmith_index_u32(0u, 1u)], true), false), true || global2[_wgslsmith_index_u32(1u, 1u)])), ~global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), _wgslsmith_add_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, u_input.b))), 26u)], Struct_4(u_input.b));
    let var_1 = -1i;
    let var_2 = func_1(vec3<u32>(var_0.b.b.a, 23046u, var_0.b.b.a ^ firstLeadingBit(17442u)), ~var_0.c.x == (1u >> (min(101137u, 0u) % 32u)), vec3<u32>(~var_0.b.b.a, u_input.b, 4294967295u), Struct_4(~_wgslsmith_add_u32(var_0.c.x, abs(0u)))).b.b.b.x;
    var var_3 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.e);
}

