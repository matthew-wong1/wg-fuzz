struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<bool>,
    d: f32,
    e: u32,
}

struct Struct_5 {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 11> = array<Struct_5, 11>(Struct_5(15746u, vec3<i32>(-69659i, 10023i, 2147483647i), vec2<u32>(0u, 21770u), Struct_1(1u, vec3<u32>(51951u, 1u, 0u), 38200i, 5366i), vec2<i32>(36313i, 2147483647i)), Struct_5(0u, vec3<i32>(0i, -12458i, 10374i), vec2<u32>(4294967295u, 1u), Struct_1(0u, vec3<u32>(1u, 1u, 23471u), 2147483647i, -47418i), vec2<i32>(23166i, 51058i)), Struct_5(5037u, vec3<i32>(-1i, -41086i, i32(-2147483648)), vec2<u32>(101089u, 0u), Struct_1(12590u, vec3<u32>(33344u, 3988u, 0u), 0i, i32(-2147483648)), vec2<i32>(29625i, 2147483647i)), Struct_5(4294967295u, vec3<i32>(2147483647i, 13859i, 1i), vec2<u32>(1u, 1u), Struct_1(1u, vec3<u32>(1u, 4294967295u, 61555u), 0i, -10129i), vec2<i32>(-85281i, 1i)), Struct_5(0u, vec3<i32>(i32(-2147483648), 0i, -1i), vec2<u32>(3305u, 1u), Struct_1(1u, vec3<u32>(42004u, 0u, 4294967295u), 2147483647i, 21534i), vec2<i32>(-14095i, i32(-2147483648))), Struct_5(1281u, vec3<i32>(-10119i, 27803i, 2147483647i), vec2<u32>(39025u, 35979u), Struct_1(59290u, vec3<u32>(129541u, 48986u, 0u), 12602i, -1i), vec2<i32>(2147483647i, -18273i)), Struct_5(0u, vec3<i32>(-1i, -12331i, -18982i), vec2<u32>(24817u, 4294967295u), Struct_1(0u, vec3<u32>(21437u, 41710u, 16266u), -1i, -15736i), vec2<i32>(1i, i32(-2147483648))), Struct_5(1u, vec3<i32>(17863i, 58433i, -1i), vec2<u32>(13015u, 33301u), Struct_1(21366u, vec3<u32>(0u, 50102u, 0u), i32(-2147483648), 0i), vec2<i32>(18685i, 7839i)), Struct_5(59514u, vec3<i32>(35365i, 83432i, i32(-2147483648)), vec2<u32>(40776u, 1u), Struct_1(30348u, vec3<u32>(1u, 4294967295u, 54527u), i32(-2147483648), 0i), vec2<i32>(i32(-2147483648), 84019i)), Struct_5(20869u, vec3<i32>(1i, -1i, 0i), vec2<u32>(21755u, 32548u), Struct_1(82940u, vec3<u32>(25703u, 45356u, 99u), -1i, -30719i), vec2<i32>(16560i, -17856i)), Struct_5(28521u, vec3<i32>(0i, i32(-2147483648), 2147483647i), vec2<u32>(4294967295u, 51596u), Struct_1(4294967295u, vec3<u32>(4294967295u, 1u, 1u), i32(-2147483648), 5079i), vec2<i32>(i32(-2147483648), -4029i)));

var<private> global1: array<Struct_4, 7>;

var<private> global2: Struct_1;

var<private> global3: Struct_1;

var<private> global4: Struct_1 = Struct_1(0u, vec3<u32>(67372u, 91092u, 0u), 0i, -20679i);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = (vec3<u32>(abs(global2.a), ~u_input.a, abs(1u)) & global4.b) ^ global4.b;
    var var_1 = Struct_1(u_input.c.x, _wgslsmith_div_vec3_u32(~(max(var_0, global3.b) | _wgslsmith_mult_vec3_u32(global4.b, global2.b)), ~vec3<u32>(global2.a | global3.a, _wgslsmith_sub_u32(0u, global2.b.x), ~1u)), _wgslsmith_div_i32(select(-2468i, global2.d ^ global3.d, arg_0), -_wgslsmith_dot_vec3_i32(vec3<i32>(global3.c, global2.c, -1i), vec3<i32>(global2.c, u_input.b, -27720i))) >> (abs(4294967295u) % 32u), _wgslsmith_dot_vec2_i32(-select(vec2<i32>(31084i, 9575i), vec2<i32>(-2147483647i, u_input.b), arg_0) << (global4.b.yy % vec2<u32>(32u)), vec2<i32>(u_input.b, ~(-global4.c))));
    let var_2 = vec3<bool>(arg_0, true, true);
    let var_3 = ~_wgslsmith_add_u32(0u, countOneBits(4294967295u));
    let var_4 = reverseBits(~firstTrailingBit(vec4<u32>(global2.a, 1u, _wgslsmith_dot_vec2_u32(global2.b.zz, vec2<u32>(1u, 47495u)), 1u)));
    return 42682u;
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-arg_0);
    global3 = Struct_1(~(~1u), vec3<u32>(97622u, firstTrailingBit(_wgslsmith_sub_u32(~global3.a, u_input.a)), func_3(true)), global2.c, _wgslsmith_dot_vec2_i32(firstTrailingBit(-_wgslsmith_mult_vec2_i32(vec2<i32>(global2.d, global4.d), vec2<i32>(global4.d, 43407i))), vec2<i32>(0i, ~_wgslsmith_clamp_i32(16421i, -2147483647i, global2.d))));
    var var_1 = Struct_1(max(~firstLeadingBit(global3.b.x), select(13170u, 1u, !any(vec4<bool>(true, true, false, false)))), _wgslsmith_mod_vec3_u32(vec3<u32>(global4.b.x, 1u, abs(4294967295u)), abs(vec3<u32>(global2.a, 4294967295u, u_input.c.x)) ^ vec3<u32>(u_input.c.x, global3.a, ~1u)), 1i, 18193i);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.x * -1270f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x)))) * _wgslsmith_f_op_f32(var_0.x * -1084f)));
    var var_3 = false;
    return Struct_1(~global3.b.x, vec3<u32>((_wgslsmith_mod_u32(global3.b.x, global4.b.x) ^ global2.a) << (global4.a % 32u), (~global4.a | global2.a) & select(_wgslsmith_div_u32(51330u, 1u), firstTrailingBit(44501u), all(vec4<bool>(false, false, true, false))), u_input.c.x), ~global2.d, ~(-11556i));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> bool {
    let var_0 = arg_2;
    global4 = func_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, _wgslsmith_f_op_f32(885f * 529f), arg_2)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(arg_2 - var_0), _wgslsmith_f_op_f32(abs(arg_2)), _wgslsmith_f_op_f32(min(var_0, 343f)), _wgslsmith_f_op_f32(-var_0)))))));
    var var_1 = countOneBits(abs(abs(vec4<u32>(global4.a, global2.a, global3.b.x, global2.a))) >> ((abs(~vec4<u32>(26197u, 12240u, 168315u, u_input.a)) ^ ~(vec4<u32>(7127u, 0u, global4.a, global2.a) & vec4<u32>(47016u, 52100u, global2.a, global4.b.x))) % vec4<u32>(32u)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 7>();
    let var_0 = 2046f;
    let var_1 = Struct_2(Struct_1(~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(global4.b, vec3<u32>(21473u, global3.a, global3.a)), _wgslsmith_clamp_u32(global3.a, global4.b.x, 3705u)), global2.b, max(_wgslsmith_dot_vec4_i32(-vec4<i32>(-1490i, global3.c, 3266i, global2.d), vec4<i32>(-2147483647i, 59573i, 7625i, u_input.b)), global3.d), global3.d), vec4<bool>(-2147483647i > u_input.b, global2.c <= -2147483647i, any(vec2<bool>(true, true)), func_1(Struct_1(_wgslsmith_mod_u32(global3.b.x, 39664u), firstLeadingBit(vec3<u32>(0u, global3.b.x, 0u)), ~2147483647i, abs(global4.d)), _wgslsmith_f_op_f32(427f - var_0) != var_0, _wgslsmith_f_op_f32(276f + -1000f))));
    global1 = array<Struct_4, 7>();
    let var_2 = _wgslsmith_mod_vec4_i32(~vec4<i32>(-19414i, 2147483647i, global4.c, global3.c) << (~vec4<u32>(global3.b.x, 4294967295u, 0u, 0u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(global4.c, -2147483647i, -2147483647i, global3.c) | vec4<i32>(12053i, global3.d, 48810i, -22020i), vec4<i32>(1i, var_1.a.d, ~(-15808i), global2.c))) >> ((_wgslsmith_clamp_vec4_u32(~(vec4<u32>(global3.a, var_1.a.b.x, global3.a, 4294967295u) ^ vec4<u32>(56237u, global3.b.x, u_input.a, u_input.c.x)), ~vec4<u32>(0u, 48259u, u_input.c.x, global2.b.x) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(23924u, global3.a, 0u, 24484u), vec4<u32>(u_input.c.x, 1u, u_input.a, var_1.a.a)), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(58994u, u_input.a, global3.b.x, 90908u), vec4<u32>(4294967295u, 0u, u_input.c.x, 40050u)), firstLeadingBit(vec4<u32>(global2.a, var_1.a.a, 0u, 15392u)))) << (~max(_wgslsmith_sub_vec4_u32(vec4<u32>(global4.a, u_input.a, 24650u, 32323u), vec4<u32>(29345u, 1u, global4.a, u_input.a)), select(vec4<u32>(17162u, global4.b.x, u_input.a, global2.b.x), vec4<u32>(0u, 0u, global2.a, 61919u), var_1.b.x)) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_3 = var_1;
    global1 = array<Struct_4, 7>();
    var var_4 = global1[_wgslsmith_index_u32(~global3.a, 7u)];
    var var_5 = firstTrailingBit(min(~vec2<u32>(abs(111292u), _wgslsmith_mod_u32(global3.a, 0u)), max(~vec2<u32>(global2.b.x, 0u), countOneBits(~vec2<u32>(global3.a, u_input.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2208f, var_4.d, -439f, var_4.d) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(680f, -986f, var_0, 1000f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1359f, var_4.d, var_4.d, var_0) * vec4<f32>(var_0, 454f, -385f, var_4.d)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 446f, var_4.d, 623f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -1366f, -1900f, 665f) * vec4<f32>(var_0, -1778f, var_0, -2331f)), vec4<f32>(239f, var_0, var_4.d, var_4.d))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1283f, var_0, 901f, var_0)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1848f, var_0, -305f, -131f), vec4<f32>(-120f, -539f, -2099f, 278f)))), all(select(vec2<bool>(var_3.b.x, var_3.b.x), var_3.b.xw, vec2<bool>(true, var_3.b.x))))))), ~global2.a, _wgslsmith_mult_u32(u_input.a, global4.a), -_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -1i, 0i) & (vec3<i32>(var_4.b.c, var_2.x, 0i) >> (vec3<u32>(var_4.e, 4294967295u, global4.a) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(vec3<i32>(-65800i, var_3.a.c, var_1.a.d), reverseBits(vec3<i32>(var_3.a.c, -37696i, -1i))), select(abs(var_2.zzw), -var_2.yxw, var_3.b.x)), var_1.a.b.x);
}

