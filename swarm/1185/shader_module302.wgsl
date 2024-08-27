struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<vec2<bool>, 4>;

var<private> global2: array<bool, 21> = array<bool, 21>(true, false, true, true, true, true, true, true, false, true, false, true, true, true, true, false, true, true, false, true, false);

var<private> global3: vec3<i32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> vec2<f32> {
    var var_0 = _wgslsmith_mult_u32(~16805u, _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.c.x, arg_0.c.x) ^ abs(arg_0.c), ~(arg_1.c >> (vec2<u32>(0u, arg_0.c.x) % vec2<u32>(32u)))) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c.x, arg_1.c.x, _wgslsmith_clamp_u32(30481u, arg_1.c.x, arg_0.c.x), 52182u), ~(~vec4<u32>(0u, arg_0.c.x, arg_0.c.x, 4294967295u))) % 32u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)));
    global1 = array<vec2<bool>, 4>();
    let var_2 = vec4<u32>(~32897u, ~select(reverseBits(~arg_1.c.x), 4294967295u, true), arg_1.c.x, countOneBits(14338u));
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-542f, -202f))))), _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, -348f) - arg_0.a), arg_1.b.x)), !select(global2[_wgslsmith_index_u32(0u, 21u)], global2[_wgslsmith_index_u32(~4294967295u, 21u)] || global2[_wgslsmith_index_u32(arg_0.c.x, 21u)], -1858f == _wgslsmith_f_op_f32(round(-1000f)))));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.d.zz), vec2<f32>(-781f, arg_0.b.x));
}

fn func_2(arg_0: vec3<u32>) -> bool {
    var var_0 = -(~(~(-_wgslsmith_add_i32(global3.x, u_input.a.x))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -171f), -895f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(1f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(547f, 390f), vec2<f32>(499f, 1059f))), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(-1376f, vec2<f32>(1158f, -598f), vec2<u32>(arg_0.x, 17339u), vec3<f32>(417f, 1516f, 619f)), Struct_1(-1486f, vec2<f32>(-1343f, -963f), vec2<u32>(arg_0.x, arg_0.x), vec3<f32>(1289f, -1708f, 665f)), 1i)))))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(1789f * -882f), -675f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(926f, -489f)))), global1[_wgslsmith_index_u32(~0u, 4u)]))), vec2<u32>(_wgslsmith_div_u32(1u, ~arg_0.x), 4294967295u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1364f, -1281f, -105f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(267f, 1180f, -746f), vec3<f32>(-2754f, 803f, 1000f), vec3<bool>(false, false, global2[_wgslsmith_index_u32(33499u, 21u)]))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-389f, 1000f, 450f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(282f, -761f, 1468f)))))));
    let var_2 = var_1;
    global1 = array<vec2<bool>, 4>();
    global2 = array<bool, 21>();
    return all(vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(var_2.c.x, var_2.c.x, 29381u, var_1.c.x), vec4<u32>(var_1.c.x, 4294967295u, var_1.c.x, var_2.c.x), vec4<bool>(global2[_wgslsmith_index_u32(arg_0.x, 21u)], false, global2[_wgslsmith_index_u32(4294967295u, 21u)], global2[_wgslsmith_index_u32(1u, 21u)])), countOneBits(vec4<u32>(20770u, var_1.c.x, 4294967295u, 1u))), ~arg_0.x), 21u)], select(all(select(vec3<bool>(global2[_wgslsmith_index_u32(var_2.c.x, 21u)], false, true), vec3<bool>(false, global2[_wgslsmith_index_u32(28735u, 21u)], true), vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 21u)], global2[_wgslsmith_index_u32(72659u, 21u)]))), true, true)));
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_1 {
    global3 = vec3<i32>(_wgslsmith_add_i32(3716i, -reverseBits(~0i)), _wgslsmith_sub_i32(u_input.b, global3.x) | 3896i, reverseBits(select(0i, abs(u_input.a.x), global2[_wgslsmith_index_u32(min(37261u, arg_2.c.x), 21u)]) >> (arg_2.c.x % 32u)));
    var var_0 = any(vec2<bool>(true, arg_2.b.x > arg_2.d.x));
    global0 = 73528u;
    var var_1 = -34378i;
    var var_2 = vec4<i32>(-(abs(~(-3743i)) >> (((arg_2.c.x << (arg_2.c.x % 32u)) >> (_wgslsmith_add_u32(arg_2.c.x, 4294967295u) % 32u)) % 32u)), global3.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~(~vec4<i32>(u_input.b, global3.x, u_input.a.x, global3.x)), -(vec4<i32>(u_input.b, -1i, global3.x, u_input.b) << (vec4<u32>(1u, arg_2.c.x, 38810u, arg_2.c.x) % vec4<u32>(32u)))), -47359i), _wgslsmith_div_i32((u_input.b | global3.x) << (~arg_2.c.x % 32u), ~min(global3.x, -17944i)) | -u_input.a.x);
    return Struct_1(_wgslsmith_f_op_vec2_f32(func_3(arg_2, arg_2, var_2.x)).x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.x, arg_2.a)), vec2<f32>(-1717f, arg_2.b.x), select(all(arg_1), arg_1.x || true, true)))), ~select(min(vec2<u32>(71585u, 9732u), ~vec2<u32>(arg_2.c.x, arg_2.c.x)), arg_2.c, select(select(vec2<bool>(arg_1.x, global2[_wgslsmith_index_u32(59962u, 21u)]), arg_1.yx, vec2<bool>(global2[_wgslsmith_index_u32(77517u, 21u)], global2[_wgslsmith_index_u32(arg_2.c.x, 21u)])), vec2<bool>(true, true), arg_0)), arg_2.d);
}

fn func_1() -> vec3<u32> {
    let var_0 = Struct_2(vec2<bool>(true, false), func_4(func_2(max(vec3<u32>(1u, 1u, 1u), countOneBits(vec3<u32>(4294967295u, 4294967295u, 1u)))), !vec3<bool>(true, true, false || global2[_wgslsmith_index_u32(57851u, 21u)]), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-952f, 1555f))), vec2<f32>(_wgslsmith_div_f32(850f, -138f), -1380f), ~vec2<u32>(43734u, 67952u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1543f, 511f, -819f)))))));
    let var_1 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.b.x) * 1229f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1070f) - _wgslsmith_f_op_f32(var_0.b.d.x + 747f)))), var_0.b.d.yx, vec2<u32>(~1u, var_0.b.c.x), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.b.b.x)), _wgslsmith_f_op_f32(var_0.b.d.x * 1283f), var_0.b.a)))));
    var var_2 = var_0.b;
    let var_3 = ~abs(var_1.c.x);
    global3 = min(u_input.a, -(~firstTrailingBit(u_input.a)) >> (vec3<u32>(countOneBits(~81639u), ~(~var_2.c.x), var_3) % vec3<u32>(32u)));
    return reverseBits(firstTrailingBit(~(vec3<u32>(31450u, var_2.c.x, 47461u) | vec3<u32>(var_3, var_2.c.x, var_3))) | ~(~(vec3<u32>(1u, var_1.c.x, var_0.b.c.x) | vec3<u32>(39062u, var_2.c.x, var_0.b.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec3<u32>(1u, ~(~38413u), ~_wgslsmith_mult_u32(30356u, 5235u))) >> (~(~func_1()) % vec3<u32>(32u));
    var var_1 = all(!vec4<bool>(select(true, global2[_wgslsmith_index_u32(var_0.x, 21u)], false) || global2[_wgslsmith_index_u32(~0u, 21u)], true, true, !(!global2[_wgslsmith_index_u32(2649u, 21u)])));
    var var_2 = func_1().x | var_0.x;
    var_2 = 1u;
    var var_3 = _wgslsmith_mult_u32(var_0.x, 4294967295u);
    var var_4 = func_4(any(select(vec4<bool>(global2[_wgslsmith_index_u32(func_4(global2[_wgslsmith_index_u32(var_0.x, 21u)], vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 21u)], true, global2[_wgslsmith_index_u32(5476u, 21u)]), Struct_1(-1421f, vec2<f32>(548f, 827f), vec2<u32>(4294967295u, 102391u), vec3<f32>(1000f, -1000f, -1000f))).c.x, 21u)], true, global2[_wgslsmith_index_u32(reverseBits(0u), 21u)], true), select(!vec4<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 21u)], true, false), !vec4<bool>(global2[_wgslsmith_index_u32(1u, 21u)], true, global2[_wgslsmith_index_u32(var_0.x, 21u)], false), true), select(vec4<bool>(global2[_wgslsmith_index_u32(var_0.x, 21u)], true, global2[_wgslsmith_index_u32(73013u, 21u)], false), vec4<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 21u)], global2[_wgslsmith_index_u32(var_0.x, 21u)], true), vec4<bool>(global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(4294967295u, 21u)], global2[_wgslsmith_index_u32(var_0.x, 21u)], global2[_wgslsmith_index_u32(var_0.x, 21u)])))), !vec3<bool>(true, !(!global2[_wgslsmith_index_u32(1u, 21u)]), true), func_4(func_2(vec3<u32>(_wgslsmith_mod_u32(0u, 32527u), ~131958u, var_0.x)), vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), ~vec4<u32>(0u, 116874u, var_0.x, 0u)), 21u)], (14145u >= var_0.x) != !global2[_wgslsmith_index_u32(4294967295u, 21u)], false), Struct_1(-891f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(104f, 1542f)) + vec2<f32>(-391f, 1265f)), vec2<u32>(func_1().x, 1u & var_0.x), vec3<f32>(1271f, 1089f, 1000f))));
    let var_5 = var_4.b.x;
    let var_6 = Struct_2(vec2<bool>(all(!(!vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 21u)], true, true))), _wgslsmith_f_op_f32(f32(-1f) * -1004f) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_4.a)))), func_4(true, vec3<bool>(false, global2[_wgslsmith_index_u32(26890u, 21u)], func_2(var_0)), func_4(false, !vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 21u)], global2[_wgslsmith_index_u32(var_4.c.x, 21u)], global2[_wgslsmith_index_u32(59703u, 21u)]), func_4(true, !vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 21u)], false, global2[_wgslsmith_index_u32(var_0.x, 21u)]), func_4(global2[_wgslsmith_index_u32(17665u, 21u)], vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 21u)], false), Struct_1(var_4.a, var_4.d.xz, var_4.c, var_4.d))))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, min(_wgslsmith_mod_vec4_u32(~vec4<u32>(var_4.c.x, 1u, 0u, var_0.x), ~vec4<u32>(4294967295u, 28645u, 4294967295u, 1u)) & _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 48498u, 0u, 25449u), vec4<u32>(5241u, 16927u, 0u, 1u)), select(vec4<u32>(abs(63430u), var_4.c.x, var_6.b.c.x, abs(8247u)), abs(vec4<u32>(var_4.c.x, 33912u, 13280u, 4294967295u)) << (vec4<u32>(0u, 33778u, 1u, var_0.x) % vec4<u32>(32u)), vec4<bool>(global2[_wgslsmith_index_u32(~var_4.c.x, 21u)], true, any(vec4<bool>(false, global2[_wgslsmith_index_u32(26043u, 21u)], true, false)), !var_6.a.x))), countOneBits(firstLeadingBit(-_wgslsmith_add_i32(1i, -24384i))));
}

