struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
    d: bool,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(vec2<bool>(true, true), 28338u, Struct_1(vec4<u32>(17805u, 56258u, 24849u, 1u), -1115f), false, vec2<u32>(1u, 4294967295u)), Struct_2(vec2<bool>(true, true), 0u, Struct_1(vec4<u32>(1u, 142554u, 1u, 62819u), 796f), true, vec2<u32>(16895u, 12975u)), Struct_2(vec2<bool>(true, true), 0u, Struct_1(vec4<u32>(4294967295u, 4294967295u, 66663u, 1u), 928f), false, vec2<u32>(35687u, 1u)), Struct_2(vec2<bool>(true, false), 4294967295u, Struct_1(vec4<u32>(0u, 61612u, 27113u, 4292u), 1474f), true, vec2<u32>(0u, 18029u)), Struct_2(vec2<bool>(true, true), 34700u, Struct_1(vec4<u32>(1u, 42382u, 4294967295u, 17981u), -486f), false, vec2<u32>(6135u, 0u)), Struct_2(vec2<bool>(true, true), 46153u, Struct_1(vec4<u32>(4294967295u, 30739u, 0u, 29546u), 591f), true, vec2<u32>(1u, 58755u)), Struct_2(vec2<bool>(true, false), 50309u, Struct_1(vec4<u32>(46542u, 94199u, 4294967295u, 20689u), -549f), true, vec2<u32>(0u, 119722u)), Struct_2(vec2<bool>(false, true), 51696u, Struct_1(vec4<u32>(0u, 0u, 57569u, 4294967295u), 1170f), false, vec2<u32>(0u, 4294967295u)), Struct_2(vec2<bool>(false, true), 0u, Struct_1(vec4<u32>(11327u, 4294967295u, 27345u, 0u), 2463f), true, vec2<u32>(17364u, 0u)), Struct_2(vec2<bool>(false, false), 3423u, Struct_1(vec4<u32>(116303u, 67050u, 1341u, 1u), -203f), false, vec2<u32>(4294967295u, 1u)), Struct_2(vec2<bool>(false, true), 1u, Struct_1(vec4<u32>(24480u, 1u, 75325u, 39945u), -1027f), false, vec2<u32>(7487u, 96489u)), Struct_2(vec2<bool>(true, true), 8324u, Struct_1(vec4<u32>(47480u, 0u, 4294967295u, 18532u), -290f), false, vec2<u32>(1u, 4294967295u)), Struct_2(vec2<bool>(false, true), 4294967295u, Struct_1(vec4<u32>(4294967295u, 22610u, 47018u, 41332u), 337f), false, vec2<u32>(4294967295u, 1u)), Struct_2(vec2<bool>(false, false), 2818u, Struct_1(vec4<u32>(10736u, 71567u, 84529u, 1u), -1161f), false, vec2<u32>(4772u, 76052u)));

var<private> global2: array<Struct_2, 9>;

var<private> global3: array<u32, 27> = array<u32, 27>(19278u, 16947u, 4294967295u, 1u, 46781u, 1u, 37667u, 5030u, 0u, 4294967295u, 39090u, 64862u, 4294967295u, 27945u, 8196u, 52050u, 35440u, 4294967295u, 1858u, 82049u, 1u, 18567u, 1u, 0u, 91048u, 35051u, 0u);

var<private> global4: Struct_2 = Struct_2(vec2<bool>(true, false), 37760u, Struct_1(vec4<u32>(0u, 42454u, 94561u, 29722u), 1000f), false, vec2<u32>(4294967295u, 36640u));

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> vec2<bool> {
    return !global4.a;
}

fn func_3() -> vec2<bool> {
    global4 = Struct_2(!select(func_2(Struct_1(vec4<u32>(1u, u_input.c, 10253u, global4.b), global4.c.b), true), global4.a, select(vec2<bool>(true, true), vec2<bool>(global4.a.x, true), false)), _wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(1u, 27u)], 0u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(7215u, global3[_wgslsmith_index_u32(min(76301u, global4.c.a.x), 27u)]), ~(global3[_wgslsmith_index_u32(u_input.d.x, 27u)] ^ 1u))), Struct_1(~firstTrailingBit(min(global4.c.a, global4.c.a)), _wgslsmith_f_op_f32(global4.c.b * _wgslsmith_f_op_f32(1470f * _wgslsmith_f_op_f32(ceil(-1679f))))), true, _wgslsmith_add_vec2_u32(global4.c.a.zz, firstLeadingBit(global4.e) << (vec2<u32>(14378u, 4294967295u) % vec2<u32>(32u))) << (reverseBits(u_input.d) % vec2<u32>(32u)));
    let var_0 = vec4<bool>(all(select(select(vec4<bool>(global4.d, true, global4.a.x, global4.a.x), vec4<bool>(true, global4.a.x, true, true), false), !vec4<bool>(global4.a.x, global4.d, true, false), select(vec4<bool>(global4.d, false, global4.a.x, false), vec4<bool>(true, global4.d, global4.a.x, false), global4.a.x))) == true, !all(!vec3<bool>(false, global4.a.x, global4.d)), !all(vec3<bool>(all(vec3<bool>(global4.d, true, true)), global4.d, true)), any(select(!global4.a, !(!global4.a), select(select(global4.a, global4.a, global4.a.x), global4.a, !global4.a))));
    global1 = array<Struct_2, 14>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(268f, global4.c.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global4.c.b))), global4.c.b)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1483f, -353f, global4.c.b, -1581f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.c.b, global4.c.b, -1000f, 1098f) * vec4<f32>(-491f, global4.c.b, global4.c.b, global4.c.b))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.c.b, -693f, -976f, global4.c.b))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.c.b, 486f, global4.c.b, -591f) - vec4<f32>(-149f, global4.c.b, global4.c.b, global4.c.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(324f, global4.c.b, global4.c.b, global4.c.b))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global4.c.b, 1704f, global4.c.b, -435f))))));
    let var_2 = global1[_wgslsmith_index_u32(~(~firstLeadingBit(~u_input.a.x)), 14u)];
    return vec2<bool>(all(select(var_0, !(!var_0), !(!var_0))), global4.d);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    var var_0 = abs(~_wgslsmith_div_vec2_u32(vec2<u32>(59264u, arg_3.b), arg_0.c.a.zy & u_input.d)) ^ ~reverseBits(vec2<u32>(~99706u, _wgslsmith_mod_u32(5215u, u_input.c)));
    return arg_2.c;
}

fn func_1(arg_0: vec4<bool>) -> f32 {
    global1 = array<Struct_2, 14>();
    var var_0 = func_4(global1[_wgslsmith_index_u32(24932u, 14u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global4.c.b + global4.c.b))))) - global4.c.b), Struct_2(select(vec2<bool>(false, true), func_2(Struct_1(vec4<u32>(global4.e.x, 1u, global3[_wgslsmith_index_u32(global4.c.a.x, 27u)], 79110u), global4.c.b), any(arg_0)), func_3()), _wgslsmith_div_u32(7254u, reverseBits(1u)), Struct_1(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(global4.c.a, global4.c.a, global4.c.a), vec4<u32>(34776u, global4.c.a.x, 8582u, 79743u) & global4.c.a), global4.c.b), global4.d, u_input.a), global1[_wgslsmith_index_u32(~51590u, 14u)]);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-253f, _wgslsmith_div_f32(global4.c.b, _wgslsmith_f_op_f32(global4.c.b + 793f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1354f, global4.c.b)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-587f, -250f)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global4.c.b, global4.c.b))))));
    var_0 = func_4(Struct_2(vec2<bool>(true, true), abs(1u), Struct_1(vec4<u32>(18809u, 1u, _wgslsmith_mult_u32(u_input.a.x, 4294967295u), min(38830u, 4294967295u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_0.b, var_0.b)), -746f))), func_2(Struct_1(~global4.c.a, var_1.x), !(!global4.a.x)).x, ~vec2<u32>(u_input.c, global3[_wgslsmith_index_u32(4294967295u, 27u)])), 1546f, Struct_2(global4.a, min(global4.c.a.x, 1u), func_4(Struct_2(vec2<bool>(global4.d, arg_0.x), global4.e.x << (global3[_wgslsmith_index_u32(63989u, 27u)] % 32u), global4.c, false, _wgslsmith_div_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(1u, 27u)], 1u), vec2<u32>(26198u, u_input.d.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(867f)))), Struct_2(select(vec2<bool>(global4.a.x, global4.a.x), vec2<bool>(true, true), arg_0.x), var_0.a.x, Struct_1(vec4<u32>(1u, 1u, 69218u, 9580u), var_0.b), func_3().x, global4.c.a.yz), global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(5119u, 27u)], 27u)], var_0.a.x), 14u)]), arg_0.x, ~(~var_0.a.xy) | abs(u_input.d << (vec2<u32>(63891u, u_input.c) % vec2<u32>(32u)))), Struct_2(!select(vec2<bool>(global4.a.x, arg_0.x), !arg_0.yy, !vec2<bool>(global4.d, true)), _wgslsmith_div_u32(1u ^ global4.b, global4.c.a.x), Struct_1(abs(vec4<u32>(61271u, u_input.d.x, 4294967295u, global4.b) ^ var_0.a), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-global4.c.b))), any(arg_0.wzz) | true, max((vec2<u32>(1u, 1u) << (vec2<u32>(u_input.c, 4294967295u) % vec2<u32>(32u))) ^ global4.c.a.zy, ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, global3[_wgslsmith_index_u32(19346u, 27u)]), global4.e))));
    global1 = array<Struct_2, 14>();
    return _wgslsmith_f_op_f32(global4.c.b - 1000f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 14>();
    global2 = array<Struct_2, 9>();
    var var_0 = ~abs(abs(vec3<u32>(~global4.b, firstLeadingBit(global4.c.a.x), _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(68172u, 27u)], 55707u))));
    var var_1 = var_0.x | ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(global4.e.x, ~7306u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-136f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<bool>(false, global4.a.x, false, global4.a.x))) - _wgslsmith_f_op_f32(global4.c.b - global4.c.b)))));
}

