struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, false);

var<private> global1: array<vec3<i32>, 32>;

var<private> global2: array<Struct_4, 10>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_3(Struct_1(false, abs(64600u), u_input.a.x, countOneBits(~vec3<u32>(27938u, 4294967295u, 102473u) >> (vec3<u32>(u_input.a.x, 1u, 16916u) % vec3<u32>(32u))), abs(vec4<u32>(39216u, ~1u, ~4294967295u, ~25449u))), select(select(vec2<bool>(global0.x, true), select(!global0.yz, global0.yx, true), !(!vec2<bool>(true, global0.x))), !(!(!global0.xy)), !vec2<bool>(select(global0.x, global0.x, true), u_input.a.x == 46748u)), Struct_2(~(-reverseBits(vec2<i32>(1i, 15844i))), vec2<i32>(-_wgslsmith_clamp_i32(-1i, 37797i, 22826i), -_wgslsmith_div_i32(2221i, -21665i)), Struct_1(global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(2600u, 0u), vec2<u32>(1u, u_input.a.x)), ~firstLeadingBit(u_input.a.x), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 12514u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) ^ vec3<u32>(u_input.a.x, u_input.a.x, 35509u), vec4<u32>(select(u_input.a.x, 37808u, global0.x), u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x), reverseBits(46473u))), vec4<bool>(global0.x, true, global0.x, true), Struct_1(global0.x, 0u, max(firstLeadingBit(u_input.a.x), u_input.a.x), _wgslsmith_sub_vec3_u32(max(vec3<u32>(u_input.a.x, 4294967295u, 9909u), vec3<u32>(1u, 23874u, 27484u)), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), min(vec4<u32>(u_input.a.x, u_input.a.x, 54689u, u_input.a.x), vec4<u32>(1u, 11675u, 0u, 5367u)) ^ ~vec4<u32>(1u, u_input.a.x, 1u, u_input.a.x))), Struct_1(global0.x, _wgslsmith_add_u32(9800u, _wgslsmith_dot_vec4_u32(vec4<u32>(80527u, 6479u, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, 53071u, 0u, u_input.a.x))) << (~u_input.a.x % 32u), 20323u, countOneBits(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a.x, 50093u, 1980u), max(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 0u, u_input.a.x)), _wgslsmith_add_vec3_u32(vec3<u32>(220u, u_input.a.x, 4294967295u), vec3<u32>(1u, u_input.a.x, 7375u)))), firstTrailingBit(~min(vec4<u32>(254u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)))));
    return global1[_wgslsmith_index_u32(u_input.a.x, 32u)];
}

fn func_2() -> bool {
    global2 = array<Struct_4, 10>();
    let var_0 = Struct_2(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(-51195i, -2842i), ~(vec2<i32>(-65630i, 7804i) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)))), ~_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(8622i, -1i), vec2<i32>(0i, -35379i)), vec2<i32>(-43364i, 2147483647i) << (u_input.a % vec2<u32>(32u)))), min(vec2<i32>(_wgslsmith_add_i32(-29056i, _wgslsmith_add_i32(18054i, 1i)), _wgslsmith_dot_vec3_i32(func_3(), vec3<i32>(1i, 1i, 13881i))), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-39188i, -1712i), vec2<i32>(49216i, _wgslsmith_clamp_i32(-2147483647i, -35623i, 1i)))), Struct_1(global0.x, 4294967295u, 28960u, ~abs(vec3<u32>(1u, 0u, 0u)), reverseBits(vec4<u32>(select(68653u, 18080u, false), ~0u, _wgslsmith_mod_u32(u_input.a.x, 2281u), _wgslsmith_dot_vec4_u32(vec4<u32>(49668u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(32948u, u_input.a.x, u_input.a.x, 0u))))), select(!select(select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(false, true, false, global0.x), vec4<bool>(global0.x, true, global0.x, false)), select(vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(false, global0.x, true, false), true), !global0.x), select(select(!vec4<bool>(global0.x, global0.x, global0.x, false), select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(true, global0.x, global0.x, global0.x)), global0.x), vec4<bool>(global0.x != global0.x, true, global0.x, false & global0.x), !select(vec4<bool>(global0.x, global0.x, true, true), vec4<bool>(true, false, global0.x, false), true)), !global0.x), Struct_1(global0.x, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(54555u, u_input.a.x, u_input.a.x)) | vec3<u32>(0u, 20660u, u_input.a.x), ~(vec3<u32>(u_input.a.x, 1u, u_input.a.x) << (vec3<u32>(u_input.a.x, u_input.a.x, 12822u) % vec3<u32>(32u)))), u_input.a.x, (max(vec3<u32>(u_input.a.x, 34067u, u_input.a.x), vec3<u32>(57622u, u_input.a.x, u_input.a.x)) ^ ~vec3<u32>(12999u, 9234u, u_input.a.x)) << (~select(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), vec3<u32>(65858u, u_input.a.x, 0u), vec3<bool>(global0.x, global0.x, global0.x)) % vec3<u32>(32u)), select(abs(vec4<u32>(u_input.a.x, u_input.a.x, 9739u, 1u) & vec4<u32>(u_input.a.x, 1346u, u_input.a.x, u_input.a.x)), vec4<u32>(firstLeadingBit(u_input.a.x), reverseBits(u_input.a.x), ~u_input.a.x, 11101u), !global0.x)));
    var var_1 = var_0.c;
    var var_2 = var_0.d.xzx;
    let var_3 = 15723i;
    return true | !var_2.x;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-398f)), arg_1, arg_2))));
    var var_1 = Struct_2(~reverseBits(~(vec2<i32>(17837i, 23410i) >> (u_input.a % vec2<u32>(32u)))), _wgslsmith_div_vec2_i32(~(-vec2<i32>(1i, 1i)), max(vec2<i32>(~1i, _wgslsmith_add_i32(33244i, 28550i)), vec2<i32>(firstTrailingBit(1i), ~2147483647i))), Struct_1(arg_2, 0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, u_input.a.x, u_input.a.x) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 27209u, u_input.a.x, 1u)) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(1u, 0u, 0u, u_input.a.x) & vec4<u32>(32785u, u_input.a.x, u_input.a.x, u_input.a.x))), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, ~21216u, u_input.a.x), abs(vec3<u32>(1u, u_input.a.x, u_input.a.x)) >> (~vec3<u32>(u_input.a.x, 19190u, u_input.a.x) % vec3<u32>(32u)), vec3<u32>(1u, firstTrailingBit(65155u), ~u_input.a.x)), abs(~(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x) << (vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x) % vec4<u32>(32u))))), select(vec4<bool>(true && arg_2, max(4294967295u, u_input.a.x) < _wgslsmith_sub_u32(4234u, u_input.a.x), !all(vec3<bool>(false, global0.x, arg_0)), arg_0), vec4<bool>(arg_0, any(!vec4<bool>(arg_0, arg_0, global0.x, false)), false, u_input.a.x <= _wgslsmith_mod_u32(u_input.a.x, 1u)), select(vec4<bool>(all(vec2<bool>(arg_0, true)), true, -661f != arg_1, arg_2), vec4<bool>(false, all(global0.zx), !arg_0, global0.x != false), !(arg_1 >= arg_1))), Struct_1(arg_2, u_input.a.x, u_input.a.x, _wgslsmith_div_vec3_u32(abs(countOneBits(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), vec3<u32>(_wgslsmith_sub_u32(66841u, u_input.a.x), ~u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, 6365u, u_input.a.x))), ~firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(68008u, 50269u, 4294967295u, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, 36306u, u_input.a.x)))));
    let var_2 = Struct_2(-(~var_1.b), var_1.b, var_1.e, select(!var_1.d, vec4<bool>(any(global0.xy), !(!arg_0), true, false), !vec4<bool>(func_2(), !var_1.d.x, true, !global0.x)), Struct_1(true, ~firstTrailingBit(33676u), reverseBits(select(40455u, 18144u, false)), _wgslsmith_mod_vec3_u32(var_1.c.e.ywx, ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, var_1.e.e.x, 1u), var_1.c.d)), var_1.e.e));
    global2 = array<Struct_4, 10>();
    global1 = array<vec3<i32>, 32>();
    return Struct_2(max(_wgslsmith_div_vec2_i32(vec2<i32>(var_2.b.x, var_2.b.x), _wgslsmith_sub_vec2_i32(var_1.b, var_2.a)) | (-var_2.b & -var_2.a), _wgslsmith_mod_vec2_i32(func_3().zz, vec2<i32>(var_1.a.x, _wgslsmith_div_i32(2147483647i, -29040i)))), vec2<i32>(min(_wgslsmith_dot_vec2_i32(var_1.b, firstLeadingBit(var_2.b)), _wgslsmith_mod_i32(0i, _wgslsmith_clamp_i32(0i, var_2.a.x, var_2.b.x))), _wgslsmith_add_i32(-58717i, var_2.a.x) ^ ~(-11908i)), var_2.c, vec4<bool>(all(var_1.d.yyz), func_2(), !(!arg_0), var_1.c.e.x <= var_1.e.c), var_2.c);
}

fn func_1(arg_0: f32) -> vec3<bool> {
    var var_0 = Struct_1(!global0.x, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(firstLeadingBit(1u), 1u)), ~u_input.a.x, vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 34046u, 4294967295u), vec3<u32>(28103u, 0u, 0u)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(54816u, 19074u, 16607u), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u))), _wgslsmith_add_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, 0u, 4294967295u))), 4294967295u), vec4<u32>(16005u | ~_wgslsmith_mult_u32(88256u, u_input.a.x), u_input.a.x, ~37880u | u_input.a.x, ~abs(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x))));
    let var_1 = func_4(!(!(!var_0.a) && true), arg_0, all(vec4<bool>(countOneBits(21298u) >= ~var_0.e.x, select(var_0.a, all(global0.yz), false), var_0.a, func_2())));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + arg_0)))));
    let var_3 = func_4(false, _wgslsmith_f_op_f32(trunc(966f)), var_0.a);
    var var_4 = var_1.e.e.zzx >> (~var_0.e.zyw % vec3<u32>(32u));
    return vec3<bool>(var_3.e.a, true, all(select(vec4<bool>(var_2 <= 1604f, select(var_1.d.x, var_3.e.a, global0.x), !var_3.c.a, any(var_1.d.zw)), var_1.d, !(!vec4<bool>(var_3.e.a, global0.x, var_3.c.a, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(u_input.a);
    var var_1 = vec3<bool>(true, true, global0.x);
    global0 = select(!(!func_1(251f)), !func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 161f)))), select(!vec3<bool>(false, true, var_1.x), !vec3<bool>(true, true, all(vec4<bool>(false, var_1.x, true, global0.x))), true));
    global1 = array<vec3<i32>, 32>();
    var var_2 = func_4(select(any(!select(vec3<bool>(true, false, global0.x), vec3<bool>(var_1.x, false, var_1.x), var_1.x)), !(all(vec3<bool>(var_1.x, false, var_1.x)) && func_1(-2242f).x), all(!select(vec4<bool>(var_1.x, global0.x, true, true), vec4<bool>(global0.x, false, var_1.x, true), vec4<bool>(false, true, global0.x, global0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-604f - 346f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-2439f)), 1306f)), true);
    let var_3 = true;
    let var_4 = Struct_3(var_2.e, !select(var_2.d.yy, vec2<bool>(global0.x, !var_1.x), any(var_1.yx)), func_4(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -205f)), true), func_4(true, -1082f, var_2.c.a).e);
    let x = u_input.a;
    s_output = StorageBuffer(select(var_4.c.e.e, var_2.e.e, !(!var_4.c.d)), vec4<i32>(-_wgslsmith_mult_i32(abs(var_2.a.x), _wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(var_0.x, 32u)], global1[_wgslsmith_index_u32(1u, 32u)])), 38510i, 2169i, var_4.c.b.x), ~(~vec4<u32>(40245u, var_0.x, var_2.e.e.x, var_2.e.b)) & ~(select(vec4<u32>(4294967295u, var_0.x, var_2.e.d.x, 1u), vec4<u32>(4294967295u, var_2.c.c, var_0.x, var_2.e.b), var_2.d) >> (vec4<u32>(40766u, 56525u, 53397u, 4294967295u) % vec4<u32>(32u))));
}

