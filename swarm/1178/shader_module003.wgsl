struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: vec4<f32> = vec4<f32>(-228f, -461f, -403f, 111f);

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(false, vec4<bool>(false, false, false, true), vec3<f32>(-2074f, -519f, -1091f), vec2<f32>(-821f, -317f)), Struct_1(true, vec4<bool>(false, false, true, false), vec3<f32>(-1439f, 949f, 223f), vec2<f32>(-158f, 156f)), Struct_1(true, vec4<bool>(true, false, true, true), vec3<f32>(-472f, -272f, -939f), vec2<f32>(688f, 690f)), Struct_1(true, vec4<bool>(true, false, false, true), vec3<f32>(-1137f, 1000f, -351f), vec2<f32>(1286f, 137f)), Struct_1(false, vec4<bool>(false, false, false, false), vec3<f32>(1784f, 1042f, 881f), vec2<f32>(-542f, 200f)), Struct_1(false, vec4<bool>(true, false, false, true), vec3<f32>(-1262f, -1000f, 873f), vec2<f32>(390f, -208f)), Struct_1(false, vec4<bool>(false, false, true, true), vec3<f32>(-998f, -1032f, -1753f), vec2<f32>(-634f, 1284f)), Struct_1(false, vec4<bool>(true, true, false, true), vec3<f32>(-767f, -1042f, -767f), vec2<f32>(-273f, -919f)), Struct_1(false, vec4<bool>(true, false, true, true), vec3<f32>(-391f, 1391f, 146f), vec2<f32>(-267f, 739f)), Struct_1(true, vec4<bool>(false, true, false, true), vec3<f32>(-195f, -680f, -143f), vec2<f32>(-369f, -2142f)), Struct_1(true, vec4<bool>(true, true, false, true), vec3<f32>(-1000f, -1640f, -1371f), vec2<f32>(970f, -615f)), Struct_1(false, vec4<bool>(false, false, true, false), vec3<f32>(-1871f, 191f, -972f), vec2<f32>(-862f, 461f)));

var<private> global3: array<f32, 28>;

var<private> global4: array<vec4<f32>, 8>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    global3 = array<f32, 28>();
    let var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, _wgslsmith_clamp_u32(firstLeadingBit(1u) ^ abs(u_input.d.x), u_input.d.x, ~u_input.a.x << (u_input.d.x % 32u)), ~u_input.a.x, 30289u), _wgslsmith_add_vec4_u32(vec4<u32>(43410u, countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 71088u), u_input.d.yw)), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.d.zww, vec3<u32>(u_input.a.x, 43200u, u_input.a.x)), reverseBits(20816u)), ~u_input.a.x), ~(~reverseBits(u_input.d))));
    let var_1 = Struct_2(select(min(~var_0, ~vec4<u32>(49881u, 1u, 13095u, 4294967295u) >> (vec4<u32>(var_0.x, 11719u, u_input.d.x, 1u) % vec4<u32>(32u))), u_input.d, true), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global1.xzw), global1.xyz, (~var_0.x | var_0.x) > 4294967295u)), global0[_wgslsmith_index_u32(19083u & ~u_input.d.x, 26u)], Struct_1(any(vec2<bool>(true, true)), vec4<bool>(true, true, true, true), vec3<f32>(_wgslsmith_f_op_f32(ceil(-1230f)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(select(25760u, u_input.a.x, true), 28u)] - _wgslsmith_f_op_f32(sign(global1.x))), global1.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, _wgslsmith_f_op_f32(max(-680f, global3[_wgslsmith_index_u32(0u, 28u)]))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(261f, 376f)), vec2<bool>(true, all(vec2<bool>(true, false)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-global1.wyx);
    var var_3 = Struct_3(var_1);
    return ~var_0.x | 92817u;
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: vec2<i32>) -> Struct_3 {
    let var_0 = Struct_3(Struct_2(~vec4<u32>(arg_0.a.x, 48170u, u_input.d.x, ~8808u), vec3<f32>(-679f, 1190f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-138f * -566f), -1234f)), global0[_wgslsmith_index_u32(arg_0.a.x, 26u)], Struct_1(!arg_1, arg_0.c.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.yww - global1.xyy)), global1.xw)));
    let var_1 = 61393u;
    global4 = array<vec4<f32>, 8>();
    var var_2 = u_input.b;
    let var_3 = max(~vec2<i32>(-2147483647i, select(-2305i, 0i, arg_0.c.b.x)), -firstLeadingBit(~vec2<i32>(44990i, 0i) << ((vec2<u32>(arg_0.a.x, 74333u) | var_0.a.a.yx) % vec2<u32>(32u))));
    return Struct_3(Struct_2(vec4<u32>(var_1, 20706u, 0u, arg_0.a.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-349f, -1195f, global1.x) - arg_0.b), vec3<f32>(289f, -1000f, var_0.a.b.x))))), global0[_wgslsmith_index_u32(func_3(), 26u)], Struct_1(any(var_0.a.d.b.zyz), var_0.a.d.b, _wgslsmith_f_op_vec3_f32(global1.xxz * _wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(var_1, 28u)], -696f, 967f), arg_0.d.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(var_1, 28u)], arg_0.b.x) * _wgslsmith_f_op_vec2_f32(min(global1.zw, var_0.a.c.c.yy))))));
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> u32 {
    let var_0 = func_2(arg_0, arg_0.d.a, min(u_input.c.xy, vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(u_input.c.xx, vec2<i32>(1i, 0i))));
    let var_1 = func_2(arg_0, select(false & !(var_0.a.b.x != var_0.a.b.x), ~(u_input.a.x | var_0.a.a.x) > max(4294967295u, 41798u), arg_0.c.b.x), select(~(~(~u_input.c.yz)), -countOneBits(u_input.c.zx), _wgslsmith_div_i32(_wgslsmith_mod_i32(arg_1, arg_1), u_input.c.x) <= _wgslsmith_mult_i32(~2147483647i, firstTrailingBit(-14408i))));
    var var_2 = 59269i;
    global4 = array<vec4<f32>, 8>();
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.b.x, arg_0.b.x, 1034f) - vec3<f32>(global1.x, var_1.a.d.d.x, global3[_wgslsmith_index_u32(arg_0.a.x, 28u)]))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.d.c.x, 504f, 1000f)), vec3<f32>(-1053f, 1267f, _wgslsmith_f_op_f32(-global1.x)), var_1.a.c.b.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(var_0.a.d.c)))))), var_1.a.c.c));
    return 0u | ~reverseBits(arg_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_f32(global4[_wgslsmith_index_u32(1u, 8u)], vec4<f32>(1586f, _wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), 28u)], 1478f)), global3[_wgslsmith_index_u32(~(~u_input.a.x), 28u)], _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(~u_input.a.x, 28u)]))));
    var var_1 = _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(11065u, 28u)]);
    var var_2 = vec2<bool>(((_wgslsmith_mult_i32(-9246i, -33195i) & (u_input.b.x >> (u_input.a.x % 32u))) & 8010i) > u_input.c.x, (_wgslsmith_f_op_f32(-249f * _wgslsmith_div_f32(-2340f, var_0.x)) != global3[_wgslsmith_index_u32(u_input.a.x, 28u)]) || true);
    let var_3 = global1.x;
    global0 = array<Struct_1, 26>();
    var var_4 = Struct_2(select(~reverseBits(vec4<u32>(u_input.d.x, 77813u, u_input.d.x, 1u)) | vec4<u32>(1u, 1746u, func_1(Struct_2(vec4<u32>(u_input.a.x, u_input.a.x, 38149u, u_input.a.x), global1.zxz, global2[_wgslsmith_index_u32(u_input.d.x, 12u)], Struct_1(false, vec4<bool>(var_2.x, false, false, false), vec3<f32>(global1.x, var_0.x, -914f), global1.wx)), u_input.e), 19673u), vec4<u32>(firstTrailingBit(u_input.d.x) & ~u_input.d.x, min(u_input.a.x, 53298u), _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.a.zx), _wgslsmith_div_vec2_u32(vec2<u32>(33499u, 1u), u_input.d.xy)), ~0u), vec4<bool>(true, (u_input.a.x ^ 4294967295u) != (25422u << (u_input.a.x % 32u)), var_2.x, var_2.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(trunc(321f)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(-1129f))))))), func_2(Struct_2(~(u_input.d & u_input.d), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(336f, global3[_wgslsmith_index_u32(u_input.a.x, 28u)], var_0.x))), global2[_wgslsmith_index_u32(~u_input.a.x, 12u)], global0[_wgslsmith_index_u32(65873u, 26u)]), false, select(select(vec2<i32>(27465i, u_input.c.x), ~vec2<i32>(1i, 2147483647i), vec2<bool>(var_2.x, true)), vec2<i32>(-u_input.e, u_input.c.x), var_2.x)).a.d, Struct_1(var_2.x, select(!select(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(false, var_2.x, var_2.x, var_2.x), false), select(!vec4<bool>(var_2.x, var_2.x, false, var_2.x), vec4<bool>(true, false, false, var_2.x), !vec4<bool>(var_2.x, false, var_2.x, false)), !vec4<bool>(var_2.x, var_2.x, true, false)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-global1.x), global3[_wgslsmith_index_u32(func_3(), 28u)]), var_0.wx));
    global2 = array<Struct_1, 12>();
    global4 = array<vec4<f32>, 8>();
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_2(var_4.a, vec3<f32>(1000f, -145f, 459f), global2[_wgslsmith_index_u32(var_4.a.x, 12u)], global0[_wgslsmith_index_u32(u_input.d.x, 26u)]), true, abs(u_input.c.xz)).a.c.d.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-756f)))), func_2(Struct_2(abs(var_4.a), _wgslsmith_f_op_vec3_f32(round(global1.zzw)), func_2(Struct_2(u_input.d, var_0.zyx, Struct_1(var_2.x, var_4.d.b, vec3<f32>(var_0.x, -250f, 1604f), vec2<f32>(var_0.x, -1174f)), global0[_wgslsmith_index_u32(var_4.a.x, 26u)]), false, u_input.c.yz).a.d, func_2(Struct_2(vec4<u32>(1u, 1u, 1u, 4294967295u), global1.www, global2[_wgslsmith_index_u32(4294967295u, 12u)], Struct_1(var_2.x, vec4<bool>(false, var_2.x, var_4.d.b.x, var_2.x), var_4.d.c, vec2<f32>(var_0.x, var_0.x))), false, vec2<i32>(-40393i, 0i)).a.d), true, _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(41503i, 2147483647i), u_input.c.yx), -u_input.b.zx)).a.b.x, _wgslsmith_f_op_f32(-730f * _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-var_4.c.c.x))), _wgslsmith_f_op_f32(-var_4.b.x)) - global4[_wgslsmith_index_u32(abs(1u), 8u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, 2147483647i, 147i, u_input.c.x)), _wgslsmith_mult_i32(u_input.b.x, -2147483647i), u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.e), vec3<i32>(u_input.e, 0i, -1i)))), u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(47492u, 28u)] + global1.x))))), u_input.b.x, reverseBits(firstTrailingBit(func_3())));
}

