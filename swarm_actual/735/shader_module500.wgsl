struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9> = array<i32, 9>(-10770i, i32(-2147483648), i32(-2147483648), -40549i, i32(-2147483648), 58205i, 1i, 1i, 1i);

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec4<u32>(4294967295u, 1800u, 12710u, 4294967295u), vec4<i32>(54566i, -20587i, 33855i, 15831i), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4792u, 16247u)), Struct_1(vec4<u32>(0u, 1u, 0u, 20926u), vec4<i32>(0i, 23632i, 0i, 81167i), vec2<u32>(0u, 4294967295u), vec2<u32>(12458u, 4294967295u)), Struct_1(vec4<u32>(33600u, 37652u, 55897u, 4294967295u), vec4<i32>(-1i, 56024i, 0i, 1i), vec2<u32>(56015u, 0u), vec2<u32>(0u, 0u)), Struct_1(vec4<u32>(0u, 0u, 4294967295u, 35548u), vec4<i32>(-35791i, 2147483647i, 1i, i32(-2147483648)), vec2<u32>(21890u, 0u), vec2<u32>(21646u, 23767u)), Struct_1(vec4<u32>(1u, 6615u, 29655u, 4294967295u), vec4<i32>(-5580i, 6978i, -1i, 1i), vec2<u32>(1372u, 1u), vec2<u32>(12458u, 77514u)), Struct_1(vec4<u32>(18032u, 12378u, 1u, 49639u), vec4<i32>(1i, 18404i, -1039i, 0i), vec2<u32>(77568u, 4294967295u), vec2<u32>(4294967295u, 0u)), Struct_1(vec4<u32>(77098u, 33754u, 9202u, 4294967295u), vec4<i32>(-15774i, 26348i, 9461i, 8373i), vec2<u32>(39125u, 47053u), vec2<u32>(1558u, 4294967295u)), Struct_1(vec4<u32>(20217u, 10620u, 4294967295u, 1u), vec4<i32>(-23386i, 0i, -1i, -13456i), vec2<u32>(137771u, 1u), vec2<u32>(6661u, 70794u)), Struct_1(vec4<u32>(1658u, 0u, 16205u, 43095u), vec4<i32>(-53836i, i32(-2147483648), -14452i, -15668i), vec2<u32>(15559u, 1u), vec2<u32>(9582u, 50894u)), Struct_1(vec4<u32>(50369u, 4294967295u, 4294967295u, 4294967295u), vec4<i32>(-1i, i32(-2147483648), 0i, 0i), vec2<u32>(4294967295u, 35579u), vec2<u32>(4294967295u, 33331u)), Struct_1(vec4<u32>(4294967295u, 10044u, 0u, 11125u), vec4<i32>(i32(-2147483648), -829i, -10576i, i32(-2147483648)), vec2<u32>(1u, 0u), vec2<u32>(0u, 4294967295u)), Struct_1(vec4<u32>(8347u, 0u, 4294967295u, 4294967295u), vec4<i32>(0i, 42520i, 6109i, -39704i), vec2<u32>(20524u, 50946u), vec2<u32>(49292u, 20886u)), Struct_1(vec4<u32>(1u, 1u, 10604u, 4294967295u), vec4<i32>(2147483647i, 1i, 1i, -296i), vec2<u32>(24948u, 1u), vec2<u32>(54791u, 4294967295u)), Struct_1(vec4<u32>(92437u, 25867u, 46714u, 4294967295u), vec4<i32>(66397i, 2147483647i, -13550i, -1534i), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(6845u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 44531u, 43288u), vec4<i32>(2147483647i, 49010i, -10040i, 11594i), vec2<u32>(8986u, 1u), vec2<u32>(0u, 62184u)), Struct_1(vec4<u32>(22888u, 4294967295u, 72215u, 4294967295u), vec4<i32>(i32(-2147483648), -21140i, 62461i, 6430i), vec2<u32>(31345u, 58934u), vec2<u32>(42764u, 22441u)), Struct_1(vec4<u32>(0u, 31180u, 19185u, 13687u), vec4<i32>(44109i, 0i, 43024i, -40266i), vec2<u32>(1u, 90344u), vec2<u32>(1u, 57220u)), Struct_1(vec4<u32>(13263u, 39823u, 19092u, 4294967295u), vec4<i32>(15869i, 0i, -39099i, -86099i), vec2<u32>(1u, 1u), vec2<u32>(71609u, 4294967295u)));

var<private> global2: vec3<u32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: Struct_3) -> f32 {
    global0 = array<i32, 9>();
    return -393f;
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: i32) -> u32 {
    global2 = firstLeadingBit(~(((arg_1.a.a.yyz | arg_1.a.a.wxx) | select(arg_1.a.a.yyw, arg_1.a.a.zwz, vec3<bool>(arg_1.b, true, true))) >> (~(~vec3<u32>(arg_1.a.c.x, 103842u, 25651u)) % vec3<u32>(32u))));
    var var_0 = arg_1;
    let var_1 = -380f;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1432f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) + -1670f)))));
    let var_3 = global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, _wgslsmith_mod_u32(global2.x, 0u), ~arg_1.a.a.x, _wgslsmith_dot_vec3_u32(arg_1.a.a.zwz, vec3<u32>(var_0.a.d.x, 1u, arg_1.a.d.x))) ^ vec4<u32>(u_input.b, u_input.c, select(68184u, 24717u, true), 0u), vec4<u32>(~(global2.x | arg_1.a.c.x), var_0.a.d.x, 0u, _wgslsmith_mod_u32(1u, max(4294967295u, u_input.b))))), 18u)];
    return 4294967295u;
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: vec2<f32>) -> vec4<bool> {
    let var_0 = Struct_1(~select(~vec4<u32>(1u, arg_1, global2.x, 1u), abs(vec4<u32>(arg_1, 33544u, arg_1, 19268u)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), false)) & ~vec4<u32>(_wgslsmith_sub_u32(u_input.b, u_input.c), u_input.c, ~61737u, 24501u), ~firstTrailingBit(_wgslsmith_add_vec4_i32(abs(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(global2.x, 9u)], u_input.a, 1i)), firstLeadingBit(vec4<i32>(global0[_wgslsmith_index_u32(59654u, 9u)], u_input.d.x, -5952i, -2147483647i)))), countOneBits(min(global2.yx, _wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(global2.x, u_input.c)), vec2<u32>(1u, 1u)))), ~vec2<u32>(~global2.x << (u_input.b % 32u), arg_1));
    let var_1 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_3(u_input.a, Struct_1(vec4<u32>(99403u, u_input.c, u_input.b, 0u), var_0.b, vec2<u32>(14531u, 38967u), var_0.a.yy), 1u), var_0.b.ww, Struct_3(37609i, Struct_1(vec4<u32>(13010u, global2.x, 1u, 55483u), var_0.b, global2.zz, vec2<u32>(u_input.c, 94265u)), 1986u))), _wgslsmith_f_op_f32(-arg_0.x)), Struct_2(Struct_1(~_wgslsmith_add_vec4_u32(var_0.a, var_0.a), countOneBits(var_0.b), ~_wgslsmith_add_vec2_u32(vec2<u32>(21350u, 4294967295u), var_0.a.xy), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.b, 1u), global2.xy)), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.x, 1317f))), -279f)), abs(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.d.x), -vec2<i32>(u_input.a, global0[_wgslsmith_index_u32(arg_1, 9u)]))));
    var var_2 = var_0;
    var_2 = global1[_wgslsmith_index_u32(~global2.x, 18u)];
    global2 = ~abs(_wgslsmith_mult_vec3_u32(firstLeadingBit(var_0.a.zzx) << (~vec3<u32>(38246u, 7401u, 0u) % vec3<u32>(32u)), var_2.a.yyw));
    return vec4<bool>(all(vec4<bool>(select(true, true, false), false, true, -global0[_wgslsmith_index_u32(27190u, 9u)] <= 2147483647i)), any(vec2<bool>(1407f >= arg_0.x, arg_0.x > -1845f)) == all(vec2<bool>(true, true)), any(vec3<bool>(true, true, -35839i != firstTrailingBit(2147483647i))), all(vec2<bool>(true, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(1u, 18u)], any(!(!func_1(vec2<f32>(-246f, -273f), 4294967295u, vec2<f32>(-1000f, 1096f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(1364f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-107f, 414f))), !all(vec2<bool>(false, true)))))));
    global2 = _wgslsmith_div_vec3_u32(vec3<u32>(~(~global2.x ^ 4294967295u), min(var_0.a.c.x, ~4294967295u), ~_wgslsmith_add_u32(global2.x, ~u_input.c)), var_0.a.a.zxz);
    global2 = var_0.a.a.wyy;
    let var_1 = var_0.c;
    let var_2 = select(var_0.a.a.x, _wgslsmith_mult_u32(71u, global2.x), var_0.b);
    let var_3 = -186f;
    global1 = array<Struct_1, 18>();
    let var_4 = Struct_2(Struct_1(var_0.a.a, vec4<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.b.x, u_input.a) & u_input.d, abs(u_input.d)), _wgslsmith_div_i32(-2147483647i, i32(-1i) * -2147483647i), ~var_0.a.b.x), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.c, 63059u), vec2<u32>(50904u, 32349u)), vec2<u32>(var_2, 4294967295u), ~max(global2.zy, global2.yz)), ~vec2<u32>(~15189u, ~global2.x)), var_0.b, var_3);
    var var_5 = vec3<f32>(var_3, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + _wgslsmith_f_op_f32(-115f - 876f))))), -972f);
    let x = u_input.a;
    s_output = StorageBuffer(247f);
}

