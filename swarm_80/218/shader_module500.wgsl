struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28> = array<bool, 28>(true, true, true, true, true, true, false, true, false, true, false, false, false, true, true, true, false, false, true, true, false, false, true, false, false, false, false, false);

var<private> global1: bool;

var<private> global2: vec2<bool>;

var<private> global3: array<vec4<bool>, 13>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> bool {
    global2 = !(!select(!select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 28u)], global0[_wgslsmith_index_u32(u_input.d, 28u)]), vec2<bool>(global2.x, false), vec2<bool>(false, global0[_wgslsmith_index_u32(48631u, 28u)])), select(select(vec2<bool>(false, true), vec2<bool>(global2.x, global2.x), true), vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 28u)]), vec2<bool>(global2.x, global2.x)), vec2<bool>(!global0[_wgslsmith_index_u32(u_input.e, 28u)], true)));
    var var_0 = Struct_3(Struct_1(global3[_wgslsmith_index_u32(reverseBits(u_input.b.x), 13u)], _wgslsmith_f_op_f32(max(-211f, -1300f)), !any(vec2<bool>(false, global0[_wgslsmith_index_u32(7460u, 28u)]))), firstLeadingBit(arg_0), Struct_2(423u, abs(~u_input.a), Struct_1(global3[_wgslsmith_index_u32(21706u, 13u)], _wgslsmith_f_op_f32(f32(-1f) * -2089f), ~4294967295u < _wgslsmith_mod_u32(u_input.b.x, u_input.d)), Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.d) << (72792u % 32u), 13u)], -1000f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d, u_input.b.x, 17664u), ~vec3<u32>(0u, u_input.e, 4294967295u)), 28u)])), _wgslsmith_f_op_f32(select(-1321f, -1492f, true)) >= _wgslsmith_f_op_f32(-227f * _wgslsmith_f_op_f32(-638f - _wgslsmith_f_op_f32(723f + -1544f))));
    var var_1 = ~0u;
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.d.b, var_0.c.c.b, -480f, 1152f) + vec4<f32>(-532f, var_0.c.c.b, var_0.a.b, var_0.c.c.b)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.d.b, -559f, 1259f, 774f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1216f, var_0.c.d.b, var_0.a.b, -742f), vec4<f32>(var_0.c.d.b, var_0.c.c.b, 1308f, 285f)))))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.b), 704f, _wgslsmith_f_op_f32(-var_0.c.c.b), var_0.c.d.b)))));
    var var_3 = !select(var_0.c.d.a.zzy, !select(!var_0.a.a.yyz, var_0.a.a.xzw, select(var_0.a.a.zxw, var_0.a.a.zxy, var_0.a.a.wxx)), !select(var_0.a.a.zyy, var_0.a.a.xzz, !var_0.a.a.yxx));
    return _wgslsmith_mult_u32(~abs(reverseBits(u_input.d)), u_input.e) >= u_input.d;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: i32, arg_3: bool) -> Struct_1 {
    let var_0 = -1116f;
    global2 = vec2<bool>(!select(all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], true)) || !global0[_wgslsmith_index_u32(0u, 28u)], arg_3, any(!vec4<bool>(true, global2.x, false, false))), max(~u_input.e, 0u) < (~(u_input.b.x ^ 32228u) << (_wgslsmith_mod_u32(~u_input.d, ~u_input.e) % 32u)));
    let var_1 = all(vec2<bool>(!(false | func_3(arg_1.x)), false));
    let var_2 = select(!select(!select(global3[_wgslsmith_index_u32(71013u, 13u)], global3[_wgslsmith_index_u32(54122u, 13u)], var_1), vec4<bool>(true || global0[_wgslsmith_index_u32(1u, 28u)], true, u_input.d != 9417u, global2.x), global2.x), global3[_wgslsmith_index_u32(abs(~firstTrailingBit(u_input.e)) << (abs(1u) % 32u), 13u)], !(!(!vec4<bool>(true, global2.x, arg_3, var_1))));
    global2 = var_2.xz;
    return Struct_1(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.d), vec3<u32>(u_input.d, u_input.d, u_input.b.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, u_input.b.x, u_input.d), vec3<u32>(4294967295u, u_input.b.x, 0u), vec3<u32>(u_input.d, 26141u, u_input.d))), ~vec3<u32>(u_input.d, 0u, u_input.e)), ~u_input.d), 13u)], -357f, any(var_2.wzw));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> vec4<f32> {
    global0 = array<bool, 28>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_0))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(arg_0 - vec2<f32>(_wgslsmith_f_op_f32(floor(arg_1.b)), -420f)))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1340f, arg_3.x) + _wgslsmith_f_op_f32(-963f * 1795f))))), -1454f);
    var_0 = arg_0;
    var var_2 = u_input.c & _wgslsmith_add_i32(-7223i, firstTrailingBit(_wgslsmith_div_i32(i32(-1i) * -77276i, u_input.c)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-472f, var_0.x, -488f, -2098f))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(535f, arg_1.b, -317f, arg_2.b)), _wgslsmith_f_op_vec4_f32(exp2(arg_3)), global2.x))))));
}

fn func_1() -> Struct_2 {
    global3 = array<vec4<bool>, 13>();
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -431f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1160f, -719f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(827f, 814f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(352f, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-643f, -386f))))), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -602f), 1069f, _wgslsmith_f_op_f32(-381f + 1270f))), firstLeadingBit(vec2<i32>(~u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 19323i), vec2<i32>(u_input.a, 10120i)))), 1i, !any(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(20124u, 16114u), 13u)])), Struct_1(vec4<bool>(select(false, any(vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.e, 28u)], false)), false), global0[_wgslsmith_index_u32(firstLeadingBit(~u_input.b.x), 28u)], !(global0[_wgslsmith_index_u32(u_input.b.x, 28u)] || global2.x), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-944f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1911f)) - 1056f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1114f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1175f, -2745f, _wgslsmith_f_op_f32(-1570f + 1648f), 1448f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(2175f, 1450f, -1000f, -240f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-2057f, -539f, 474f, -225f) * vec4<f32>(-1653f, -1239f, 549f, 306f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1652f, 766f, 1918f, 1633f) * vec4<f32>(-371f, 687f, -851f, -575f)))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(105f, 257f, 147f, 1676f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-544f, -881f, -664f, 233f))))))));
    global0 = array<bool, 28>();
    var var_1 = Struct_1(!select(!(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.d, 28u)], global2.x)), vec4<bool>(!global0[_wgslsmith_index_u32(u_input.e, 28u)], global0[_wgslsmith_index_u32(73297u, 28u)] | false, false, true), select(vec4<bool>(true, global2.x, global0[_wgslsmith_index_u32(u_input.e, 28u)], global2.x), global3[_wgslsmith_index_u32(6092u, 13u)], !vec4<bool>(global0[_wgslsmith_index_u32(0u, 28u)], true, false, false))), -1339f, global2.x);
    var var_2 = Struct_4(u_input.d, firstTrailingBit(-u_input.c), ~(-(~vec2<i32>(-24832i, -1i) >> (~vec2<u32>(u_input.d, 29298u) % vec2<u32>(32u)))), vec2<f32>(-574f, _wgslsmith_f_op_f32(-var_0.x)));
    return Struct_2(u_input.d, max(max(u_input.a, _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.c, -2147483647i), -40916i)), ~u_input.c >> (reverseBits(~42235u) % 32u)), Struct_1(var_1.a, -878f, any(!vec2<bool>(global0[_wgslsmith_index_u32(1u, 28u)], false))), Struct_1(global3[_wgslsmith_index_u32(var_2.a ^ _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_2.a), _wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(57107u, var_2.a))), 13u)], _wgslsmith_f_op_f32(692f * 489f), all(vec4<bool>(!var_1.a.x, true, true & global2.x, true & var_1.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_4(~110341u, firstTrailingBit(_wgslsmith_add_i32(var_0.b, max(1i, -50861i))) | 46076i, ~_wgslsmith_mod_vec2_i32(vec2<i32>(-21482i, 21762i), vec2<i32>(var_0.b | var_0.b, _wgslsmith_mult_i32(0i, u_input.a))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1720f, var_0.c.b) * vec2<f32>(1206f, var_0.d.b))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.d.b, 429f))), _wgslsmith_div_vec2_f32(vec2<f32>(-548f, var_0.d.b), vec2<f32>(-2518f, 309f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-891f, var_0.c.b) * vec2<f32>(-360f, -784f))))));
    let var_2 = select(1u, _wgslsmith_mod_u32(var_1.a, var_0.a), !(true || all(vec3<bool>(true, global2.x, global0[_wgslsmith_index_u32(78872u, 28u)])))) ^ var_0.a;
    let var_3 = vec3<i32>(-var_1.c.x, 1i, -1i);
    let var_4 = all(vec3<bool>(var_0.d.c, reverseBits(var_0.a) == _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(var_2, 1u, 0u)), select(vec3<u32>(4294967295u, 59638u, u_input.b.x), vec3<u32>(12180u, 4294967295u, u_input.b.x), vec3<bool>(true, var_0.c.a.x, global0[_wgslsmith_index_u32(var_0.a, 28u)]))), !select(true, any(var_0.d.a.xy), any(var_0.d.a.wz))));
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec4<u32>(1502u, var_1.a, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2, var_0.a, u_input.e), vec3<u32>(var_0.a, 4294967295u, 21758u)), u_input.e), firstTrailingBit(~vec4<u32>(7496u, 0u, 9093u, 6846u)), false), 1u);
}

