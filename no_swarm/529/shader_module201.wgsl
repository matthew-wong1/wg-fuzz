struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_2,
    d: i32,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 534f;

var<private> global1: array<f32, 5>;

var<private> global2: vec4<bool>;

var<private> global3: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec3<u32>(0u, 4294967295u, 1212u), -8569i, i32(-2147483648), false), Struct_1(vec3<u32>(0u, 2668u, 1u), i32(-2147483648), -1i, true), Struct_1(vec3<u32>(1u, 4294967295u, 18816u), -44626i, -1920i, false), Struct_1(vec3<u32>(14162u, 84598u, 1u), -30210i, i32(-2147483648), false), Struct_1(vec3<u32>(30478u, 0u, 25937u), 11423i, 35038i, true), Struct_1(vec3<u32>(10931u, 0u, 70829u), 64749i, 1i, false), Struct_1(vec3<u32>(0u, 62260u, 5319u), 2147483647i, -20474i, true), Struct_1(vec3<u32>(518u, 53344u, 3927u), 0i, 44397i, false), Struct_1(vec3<u32>(43339u, 0u, 0u), 23031i, i32(-2147483648), false), Struct_1(vec3<u32>(65122u, 21021u, 0u), 67848i, -30843i, true), Struct_1(vec3<u32>(0u, 0u, 26405u), 1i, 0i, true), Struct_1(vec3<u32>(4294967295u, 36269u, 0u), i32(-2147483648), -182i, false), Struct_1(vec3<u32>(1u, 47182u, 0u), 1i, 10789i, false), Struct_1(vec3<u32>(0u, 45175u, 105665u), -1i, 2147483647i, true), Struct_1(vec3<u32>(4294967295u, 3171u, 36018u), 40061i, 0i, true), Struct_1(vec3<u32>(46230u, 8816u, 3755u), 1i, 2038i, false), Struct_1(vec3<u32>(23709u, 4294967295u, 1u), 61504i, 30370i, false), Struct_1(vec3<u32>(56240u, 0u, 6790u), i32(-2147483648), 15321i, true), Struct_1(vec3<u32>(1u, 35879u, 9839u), 2147483647i, -51499i, true), Struct_1(vec3<u32>(70062u, 0u, 45481u), 88029i, -20413i, false), Struct_1(vec3<u32>(26943u, 4294967295u, 30823u), 96567i, 0i, false), Struct_1(vec3<u32>(47518u, 89190u, 10511u), 24009i, -85879i, false), Struct_1(vec3<u32>(40573u, 26893u, 15543u), -32694i, -1080i, true), Struct_1(vec3<u32>(49619u, 46578u, 490u), -1i, -35669i, true), Struct_1(vec3<u32>(0u, 25201u, 4294967295u), 3433i, 5771i, true), Struct_1(vec3<u32>(4048u, 1u, 24870u), 1i, 15205i, true));

var<private> global4: vec2<bool>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    let var_0 = global3[_wgslsmith_index_u32(u_input.a, 26u)];
    global1 = array<f32, 5>();
    let var_1 = firstTrailingBit(var_0.b);
    var var_2 = global1[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 5u)];
    let var_3 = Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(var_0.a.zz, var_0.a.yz), ~vec2<u32>(u_input.a, 1u)) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, var_0.a.x, 0u, var_0.a.x) & vec4<u32>(u_input.a, var_0.a.x, 1866u, u_input.a), min(vec4<u32>(1u, 5352u, 19593u, 26144u), vec4<u32>(4294967295u, 4294967295u, 40265u, 4294967295u))), ~(~var_0.a.x), firstLeadingBit(firstLeadingBit(4294967295u))), min(1i, var_0.b), _wgslsmith_div_i32(var_0.c, var_1), any(vec4<bool>(global4.x, global4.x, global2.x, select(true, false, true) & (true || var_0.d))));
    return -var_3.c;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_add_i32(func_3(), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(abs(reverseBits(vec3<i32>(7232i, 0i, 18744i))), vec3<i32>(1i, -2147483647i >> (u_input.a % 32u), _wgslsmith_add_i32(0i, -1i))), countOneBits(vec3<i32>(~(-2147483647i), _wgslsmith_clamp_i32(-2147483647i, 0i, -907i), 1i))));
    var var_1 = u_input.a;
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(709f, 653f) + global1[_wgslsmith_index_u32(4294967295u, 5u)])));
    global0 = 1000f;
    var var_2 = any(!vec2<bool>(global2.x, select(global2.x, true, !global2.x)));
    return global3[_wgslsmith_index_u32(u_input.a, 26u)];
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_3) -> bool {
    var var_0 = _wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(13229u, arg_0.x, arg_2.a.a.x, 1u))) << ((vec4<u32>(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, arg_1.a.x), arg_0.zx), _wgslsmith_add_u32(30445u, 25868u), ~12475u) << (~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.a.a.x, arg_2.a.a.x, arg_2.c.a, 41516u), vec4<u32>(u_input.a, 5446u, 37534u, 30794u)) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mult_u32(1u, firstLeadingBit(4294967295u)), 138722u, ~arg_2.c.a, 55378u));
    let var_1 = firstTrailingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(1u, 32109u, arg_0.x, var_0.x)), ~vec4<u32>(0u, 4294967295u, 23041u, 31255u)), min(~vec4<u32>(var_0.x, var_0.x, arg_1.a.x, var_0.x), ~vec4<u32>(55768u, u_input.a, 37854u, 8717u)), ~min(vec4<u32>(77327u, arg_2.a.a.x, arg_0.x, var_0.x), vec4<u32>(0u, var_0.x, 12067u, var_0.x)))) << (_wgslsmith_mult_vec4_u32(~(min(vec4<u32>(4294967295u, 4294967295u, 18678u, arg_1.a.x), vec4<u32>(4294967295u, 70913u, 27160u, var_0.x)) >> ((vec4<u32>(arg_0.x, 1u, 4294967295u, var_0.x) << (vec4<u32>(72743u, 50173u, 4294967295u, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<u32>(80709u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_2.a.a.yz, vec2<u32>(var_0.x, 0u), vec2<u32>(var_0.x, 9933u)), select(vec2<u32>(arg_0.x, 58143u), arg_0.yz, false)), firstTrailingBit(arg_2.c.a & arg_1.a.x), 51798u)) % vec4<u32>(32u));
    let var_2 = Struct_4(arg_2);
    global1 = array<f32, 5>();
    global2 = !(!(!(!(!vec4<bool>(false, true, false, global4.x)))));
    return false;
}

fn func_1(arg_0: bool) -> Struct_4 {
    var var_0 = Struct_1(~(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, u_input.a)), u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a))) | abs(~vec3<u32>(u_input.a, 4294967295u, 4294967295u))), _wgslsmith_mult_i32(~(~1i), 0i) >> ((_wgslsmith_add_u32(u_input.a, u_input.a) | _wgslsmith_mult_u32(u_input.a, ~29029u)) % 32u), -(~(~(-30415i >> (u_input.a % 32u)))), all(vec2<bool>(true, global4.x)));
    var var_1 = Struct_4(Struct_3(Struct_1(~(~var_0.a), _wgslsmith_mult_i32(2147483647i, var_0.b), _wgslsmith_mod_i32(firstTrailingBit(1i), var_0.c), func_4(var_0.a, func_2(), Struct_3(global3[_wgslsmith_index_u32(var_0.a.x, 26u)], vec3<i32>(var_0.b, var_0.b, 74563i), Struct_2(var_0.a.x, false, vec4<f32>(global1[_wgslsmith_index_u32(26106u, 5u)], global1[_wgslsmith_index_u32(var_0.a.x, 5u)], global1[_wgslsmith_index_u32(u_input.a, 5u)], 1000f), vec3<i32>(var_0.c, var_0.c, var_0.b)), -10119i, vec3<i32>(var_0.c, -7324i, -1i)))), abs(vec3<i32>(1i, select(2147483647i, var_0.c, true), var_0.b)), Struct_2(countOneBits(var_0.a.x), all(select(vec2<bool>(global2.x, var_0.d), global2.zy, vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(var_0.a.x, 5u)], global1[_wgslsmith_index_u32(18446u, 5u)], 763f))), vec3<i32>(-1i, ~(-2147483647i), 1i)), ~var_0.b, _wgslsmith_clamp_vec3_i32(min(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 0i, var_0.b), vec3<i32>(var_0.c, -32533i, var_0.b), vec3<i32>(var_0.c, var_0.b, 23424i)), vec3<i32>(-1i, -36793i, 1i)), countOneBits(vec3<i32>(var_0.c, var_0.c, 2147483647i)), ~vec3<i32>(var_0.c, -10796i, var_0.c))));
    global4 = select(global2.ww, vec2<bool>(var_0.d, func_4(~vec3<u32>(0u, var_0.a.x, var_0.a.x), var_1.a.a, Struct_3(Struct_1(vec3<u32>(u_input.a, 4294967295u, var_1.a.a.a.x), var_1.a.d, var_0.c, false), var_1.a.c.d, Struct_2(var_0.a.x, arg_0, var_1.a.c.c, var_1.a.b), -2147483647i, var_1.a.b)) | global4.x), !vec2<bool>(all(select(vec2<bool>(var_1.a.a.d, false), global2.xy, true)), select(any(global2.xz), any(vec3<bool>(true, false, var_0.d)), 4294967295u >= u_input.a)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.c.c.x, var_1.a.c.c.x, 459f, 379f), vec4<f32>(906f, 530f, var_1.a.c.c.x, global1[_wgslsmith_index_u32(4570u, 5u)]), global2.x)), vec4<f32>(var_1.a.c.c.x, var_1.a.c.c.x, var_1.a.c.c.x, global1[_wgslsmith_index_u32(var_0.a.x, 5u)]), true))))));
    global1 = array<f32, 5>();
    return Struct_4(Struct_3(func_2(), _wgslsmith_mult_vec3_i32(select(vec3<i32>(var_1.a.a.c, -23441i, var_1.a.c.d.x), var_1.a.c.d, vec3<bool>(var_1.a.c.b, var_0.d, global4.x)) | var_1.a.c.d, _wgslsmith_clamp_vec3_i32(countOneBits(var_1.a.b), vec3<i32>(-8719i, var_1.a.b.x, var_1.a.a.c), vec3<i32>(var_0.b, 1i, var_0.b) >> (var_0.a % vec3<u32>(32u)))), var_1.a.c, -var_0.b >> (var_1.a.c.a % 32u), ~(vec3<i32>(var_0.c, 1i, var_1.a.d) ^ vec3<i32>(var_0.c, 2504i, var_0.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global4.x);
    global1 = array<f32, 5>();
    var var_1 = !global2.wzz;
    var var_2 = min(var_0.a.e.x, -var_0.a.e.x);
    let var_3 = var_0.a.c.d;
    global2 = vec4<bool>(!any(vec2<bool>(true, all(vec2<bool>(false, var_0.a.a.d)))), var_3.x < select(var_3.x, var_3.x ^ -var_0.a.d, false), func_2().d, global4.x);
    var var_4 = vec3<i32>(abs(-var_3.x), abs(var_0.a.d), _wgslsmith_clamp_i32(_wgslsmith_add_i32(-1i, var_3.x), _wgslsmith_mult_i32(func_2().c, var_0.a.b.x), ~(-1i ^ var_0.a.d)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.e.x, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~var_0.a.a.a.yz, vec2<u32>(1u, u_input.a)), 5u)], _wgslsmith_f_op_f32(round(func_1(false).a.c.c.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.c.c.zy)) * var_0.a.c.c.wx), var_1.x)), vec4<i32>(func_2().c, -_wgslsmith_div_i32(reverseBits(var_0.a.c.d.x), ~var_0.a.c.d.x), _wgslsmith_mod_i32(abs(var_4.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-4871i, 0i, 0i, var_4.x), vec4<i32>(-2147483647i, var_3.x, -5051i, var_0.a.a.b)), vec4<i32>(var_3.x, var_0.a.a.b, var_3.x, var_4.x))), 46336i));
}

