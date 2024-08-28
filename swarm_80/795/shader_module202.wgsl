struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_2,
    d: f32,
}

struct Struct_5 {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3> = array<i32, 3>(i32(-2147483648), -34865i, 0i);

var<private> global1: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(54251u, 10926u, 4294967295u, 17927u), vec4<u32>(1u, 1u, 18576u, 1u), vec4<u32>(1u, 53432u, 1u, 7136u), vec4<u32>(1u, 25028u, 4294967295u, 12151u), vec4<u32>(0u, 0u, 8095u, 89047u), vec4<u32>(1u, 48393u, 52691u, 13017u), vec4<u32>(4294967295u, 4294967295u, 120713u, 96781u), vec4<u32>(77676u, 1u, 92906u, 3516u), vec4<u32>(65662u, 1u, 1u, 25169u), vec4<u32>(113983u, 1u, 0u, 31139u), vec4<u32>(0u, 26607u, 0u, 4294967295u), vec4<u32>(4294967295u, 0u, 54679u, 21666u), vec4<u32>(28583u, 84445u, 34677u, 25441u), vec4<u32>(14420u, 0u, 0u, 1u), vec4<u32>(51157u, 1126u, 1u, 4294967295u), vec4<u32>(4294967295u, 1u, 45332u, 39693u), vec4<u32>(32955u, 0u, 0u, 7277u), vec4<u32>(13161u, 1u, 1u, 2789u), vec4<u32>(0u, 1u, 28193u, 43886u), vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<u32>(1u, 9272u, 51032u, 0u), vec4<u32>(102920u, 1u, 1u, 4294967295u), vec4<u32>(1u, 1u, 37965u, 0u), vec4<u32>(0u, 15296u, 0u, 0u), vec4<u32>(4294967295u, 1u, 105646u, 0u), vec4<u32>(1u, 1908u, 37143u, 56194u), vec4<u32>(1u, 4792u, 39165u, 37452u), vec4<u32>(23468u, 1053u, 4294967295u, 15286u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u));

var<private> global2: vec4<u32> = vec4<u32>(30897u, 23771u, 4294967295u, 4294967295u);

var<private> global3: Struct_2;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1(arg_0: Struct_4, arg_1: i32) -> i32 {
    let var_0 = 1u;
    var var_1 = global2.zzx;
    let var_2 = !select(_wgslsmith_mult_u32(~global2.x, ~27238u) == _wgslsmith_mod_u32(_wgslsmith_mult_u32(30439u, u_input.a), 0u), false, false);
    var_1 = global2.wzy;
    global0 = array<i32, 3>();
    return arg_0.a.b.x;
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<bool>) -> vec4<i32> {
    var var_0 = 19258i;
    var var_1 = Struct_4(Struct_2(global3.d, max(-u_input.d, global3.c.ywx) << (~u_input.b.yxw % vec3<u32>(32u)), vec4<i32>(_wgslsmith_div_i32(firstLeadingBit(global0[_wgslsmith_index_u32(79770u, 3u)]), -8133i), 4908i, global3.c.x, _wgslsmith_dot_vec4_i32(global3.c, global3.c)), Struct_1(1000f)), ~abs(~(-global3.c)), Struct_2(global3.a, u_input.d, vec4<i32>(func_1(Struct_4(Struct_2(Struct_1(288f), vec3<i32>(0i, -4711i, global0[_wgslsmith_index_u32(23519u, 3u)]), global3.c, global3.d), vec4<i32>(global0[_wgslsmith_index_u32(1u, 3u)], 1i, -46594i, -59123i), Struct_2(Struct_1(-229f), vec3<i32>(38103i, 2147483647i, -18454i), vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(1u, 3u)], 21306i, 4233i), global3.a), global3.d.a), ~u_input.d.x), _wgslsmith_add_i32(global3.c.x & -2147483647i, global3.b.x), global3.c.x, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.c, global2.x), u_input.c), 3u)]), global3.a), arg_0.x);
    var var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, ~min(~global2.x, global2.x)), countOneBits(~select(u_input.b.yyx, global2.xyw, false)));
    let var_3 = global2.x;
    var_0 = var_1.a.c.x;
    return -(_wgslsmith_clamp_vec4_i32(~(global3.c >> (global1[_wgslsmith_index_u32(29268u, 29u)] % vec4<u32>(32u))), global3.c << (~vec4<u32>(global2.x, var_2.x, global2.x, global2.x) % vec4<u32>(32u)), var_1.c.c) | vec4<i32>(max(5278i, var_1.c.b.x) & ~u_input.e, var_1.c.b.x, -(~var_1.a.c.x), global0[_wgslsmith_index_u32(4294967295u, 3u)]));
}

fn func_2() -> u32 {
    global3 = Struct_2(global3.d, u_input.d, vec4<i32>(~(-7009i), -4527i, ~(global0[_wgslsmith_index_u32(4294967295u, 3u)] ^ global0[_wgslsmith_index_u32(44462u, 3u)]), global0[_wgslsmith_index_u32(global2.x, 3u)] << (~u_input.a % 32u)) | firstTrailingBit(reverseBits(global3.c)), global3.d);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(564f * _wgslsmith_f_op_f32(-global3.a.a)));
    global3 = Struct_2(global3.d, select(vec3<i32>(-1628i, -(u_input.e << (global2.x % 32u)), global3.b.x), vec3<i32>(abs(countOneBits(19818i)), global0[_wgslsmith_index_u32(4294967295u, 3u)] << (0u % 32u), -35254i), select(all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true))), false, false)), func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(1288f + 653f), -332f, _wgslsmith_div_f32(global3.a.a, var_0), _wgslsmith_f_op_f32(ceil(148f))), vec4<f32>(_wgslsmith_f_op_f32(round(var_0)), -934f, var_0, 749f), vec4<bool>(true, true, true, true))), select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(u_input.c < 13634u, false, true), (global3.a.a >= var_0) | true)), Struct_1(var_0));
    var var_1 = Struct_2(Struct_1(-607f), global3.c.wwx, firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(37068i, u_input.e, -14536i, global0[_wgslsmith_index_u32(u_input.b.x, 3u)]), global3.c)) & _wgslsmith_clamp_vec4_i32(abs(global3.c), global3.c, func_3(_wgslsmith_div_vec4_f32(vec4<f32>(-745f, -1299f, global3.d.a, 270f), vec4<f32>(var_0, -1269f, global3.d.a, 1079f)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))), global3.d);
    global0 = array<i32, 3>();
    return _wgslsmith_add_u32(31002u, global2.x) ^ 36353u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(firstLeadingBit(func_1(Struct_4(Struct_2(Struct_1(-904f), vec3<i32>(-1i, 2147483647i, 1i), vec4<i32>(global3.c.x, 67298i, 0i, u_input.d.x), Struct_1(global3.a.a)), vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(global2.x, 3u)], global0[_wgslsmith_index_u32(global2.x, 3u)], 1i), Struct_2(Struct_1(-146f), global3.b, vec4<i32>(2147483647i, -1i, 2147483647i, global0[_wgslsmith_index_u32(0u, 3u)]), global3.a), 704f), global3.b.x) << (_wgslsmith_add_u32(func_2(), 14273u) % 32u)), abs(global3.c.x), -(~global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(15855u, 4294967295u, 4294967295u), 3u)] & ~2147483647i), -43551i);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(609f * global3.d.a)) + -568f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global3.d.a))))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global3.d.a, _wgslsmith_f_op_f32(-global3.a.a))), -609f))), vec3<i32>(firstLeadingBit(abs(abs(-1i))), var_0.x, _wgslsmith_mod_i32(-var_0.x, u_input.d.x)), vec4<i32>(-_wgslsmith_sub_i32(-2147483647i, _wgslsmith_clamp_i32(var_0.x, -38334i, global3.c.x)), ~(~var_0.x) & abs(-33397i), _wgslsmith_sub_i32(-2147483647i >> (1u % 32u), _wgslsmith_mod_i32(u_input.e, 54221i)) & reverseBits(u_input.e), _wgslsmith_add_i32(_wgslsmith_div_i32(-global3.b.x, -u_input.d.x), global3.b.x)), Struct_1(-1000f));
    var var_3 = Struct_4(Struct_2(var_2.d, global3.b, ~(var_0 | global3.c), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(287f - var_1.a))))), select(~global3.c, var_2.c, !all(vec3<bool>(true, true, true))), Struct_2(Struct_1(var_1.a), max(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -27957i, 0i), vec3<i32>(var_2.c.x, var_2.b.x, -8670i), vec3<i32>(var_2.b.x, -6120i, 43863i)), -vec3<i32>(global3.c.x, u_input.e, 927i)), var_0.www), var_2.c, var_2.d), -792f);
    let var_4 = vec3<bool>(false, true & select(!(global2.x <= 29816u), true, all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false)))), global3.c.x >= -1i);
    let x = u_input.a;
    s_output = StorageBuffer(max(max(_wgslsmith_add_i32(var_2.b.x & global3.c.x, global0[_wgslsmith_index_u32(47819u, 3u)]), 29797i), 29044i), vec2<i32>(-(-var_3.b.x << (1u % 32u)), ~func_3(vec4<f32>(595f, 396f, 229f, -1574f), !vec3<bool>(var_4.x, true, var_4.x)).x), select(~(~vec4<i32>(global3.c.x, 0i, var_3.a.b.x, u_input.e)), _wgslsmith_mod_vec4_i32(select(vec4<i32>(var_3.b.x, 1i, var_0.x, var_2.c.x), var_2.c, vec4<bool>(var_4.x, false, var_4.x, var_4.x)), select(var_3.c.c, var_2.c, vec4<bool>(var_4.x, false, false, true))), _wgslsmith_f_op_f32(-var_3.d) < _wgslsmith_f_op_f32(exp2(var_3.a.a.a))) & _wgslsmith_clamp_vec4_i32(select(vec4<i32>(var_2.b.x, global0[_wgslsmith_index_u32(global2.x, 3u)], u_input.e, -2147483647i), ~vec4<i32>(32895i, -2147483647i, 0i, -3709i), vec4<bool>(true, true, false, var_4.x)), vec4<i32>(firstLeadingBit(2147483647i), var_2.b.x, -15415i, var_3.a.b.x ^ -1i), abs(countOneBits(var_3.a.c))), 1u);
}

