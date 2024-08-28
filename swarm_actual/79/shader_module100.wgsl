struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: f32,
    d: u32,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: Struct_3,
    d: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec2<u32>(4294967295u, 4579u), 128336u, 50105u, 90729u, 1u), Struct_1(vec2<u32>(60275u, 1u), 15694u, 0u, 0u, 0u), Struct_1(vec2<u32>(12494u, 70902u), 46315u, 47361u, 80108u, 4294967295u), Struct_1(vec2<u32>(1u, 46131u), 82125u, 72682u, 4294967295u, 4294967295u), Struct_1(vec2<u32>(1u, 64899u), 93323u, 59805u, 0u, 4809u), Struct_1(vec2<u32>(53011u, 4294967295u), 0u, 1092u, 60337u, 46866u), Struct_1(vec2<u32>(470u, 4294967295u), 29975u, 36957u, 1u, 0u), Struct_1(vec2<u32>(1u, 1u), 31098u, 120915u, 34684u, 28655u), Struct_1(vec2<u32>(1u, 1u), 0u, 24438u, 61467u, 60219u), Struct_1(vec2<u32>(28422u, 47558u), 47696u, 1u, 1u, 0u), Struct_1(vec2<u32>(16846u, 29450u), 4294967295u, 4294967295u, 4294967295u, 7430u), Struct_1(vec2<u32>(1u, 0u), 4294967295u, 1u, 4294967295u, 30601u), Struct_1(vec2<u32>(43443u, 64922u), 0u, 20768u, 1u, 1u), Struct_1(vec2<u32>(17843u, 54453u), 4294967295u, 65408u, 4294967295u, 1u));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = Struct_2(-(~(-arg_2.a.a | -2147483647i)));
    return select(vec4<bool>((any(vec3<bool>(global0[_wgslsmith_index_u32(31737u, 28u)], arg_2.c.e, global0[_wgslsmith_index_u32(global1.x, 28u)])) | true) == !any(vec3<bool>(false, global0[_wgslsmith_index_u32(global1.x, 28u)], true)), !select(any(vec3<bool>(false, false, false)), all(vec4<bool>(global0[_wgslsmith_index_u32(62562u, 28u)], false, true, global0[_wgslsmith_index_u32(77433u, 28u)])), any(vec2<bool>(arg_2.c.a, true))), arg_2.c.e, select(arg_2.a.a >= u_input.d.x, true, !global0[_wgslsmith_index_u32(u_input.e.x, 28u)])), vec4<bool>(select(false, true, arg_2.c.a), arg_2.c.e, all(vec2<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(arg_1.d, 28u)], true, true, true)), any(vec4<bool>(arg_2.c.e, arg_2.c.e, global0[_wgslsmith_index_u32(arg_1.c, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)])))), global0[_wgslsmith_index_u32(~0u, 28u)]), global0[_wgslsmith_index_u32(arg_1.c, 28u)]);
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: u32) -> vec2<u32> {
    global0 = array<bool, 28>();
    let var_0 = _wgslsmith_mod_i32(~abs(i32(-1i) * -51486i), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(0i, u_input.b.x, 1i), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(31263i, 0i))), u_input.a, 1i));
    return vec2<u32>(global1.x, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 24u, u_input.e.x, 12860u) ^ ~vec4<u32>(37422u, 77386u, 1u, global1.x), ~(vec4<u32>(1u, 12403u, global1.x, 32059u) ^ vec4<u32>(1u, u_input.e.x, global1.x, u_input.e.x)))));
}

fn func_2() -> Struct_2 {
    global0 = array<bool, 28>();
    var var_0 = vec2<u32>(global1.x, ~u_input.e.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-581f * 490f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1944f, -360f, false))), 692f)));
    var var_2 = Struct_5(Struct_2(-1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * var_1.x)), abs(select(-u_input.c, u_input.c, true) | (u_input.c | _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, u_input.d.x, u_input.c.x), vec3<i32>(u_input.a, 1i, u_input.a)))), Struct_1(_wgslsmith_mult_vec2_u32(func_4(func_3(var_1.x, Struct_1(u_input.e.xy, 17267u, var_0.x, 15310u, 1u), Struct_4(Struct_2(u_input.a), u_input.e.x, Struct_3(global0[_wgslsmith_index_u32(u_input.e.x, 28u)], Struct_2(0i), -874f, 4294967295u, global0[_wgslsmith_index_u32(46648u, 28u)]), u_input.e.x), Struct_1(u_input.e.yz, global1.x, u_input.e.x, 57343u, 4294967295u)), global0[_wgslsmith_index_u32(global1.x, 28u)], _wgslsmith_mod_u32(0u, 1u)), vec2<u32>(~1u, u_input.e.x)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(var_0.x, 4294967295u, global1.x, var_0.x), vec4<u32>(var_0.x, 1u, 10919u, 0u)), vec4<u32>(4294967295u, 10091u, 20791u, 0u)), abs(~u_input.e.x)), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.e.x), vec2<u32>(u_input.e.x, 0u)), ~global1.xw), _wgslsmith_mult_u32(~_wgslsmith_add_u32(var_0.x, 45927u), _wgslsmith_div_u32(u_input.e.x, 506u) ^ (var_0.x ^ var_0.x)), firstTrailingBit(~(~0u))));
    let var_3 = var_2.d;
    return var_2.a;
}

fn func_1(arg_0: Struct_3) -> f32 {
    global2 = array<Struct_1, 14>();
    global2 = array<Struct_1, 14>();
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(129f, _wgslsmith_f_op_f32(-arg_0.c), arg_0.c) - _wgslsmith_div_vec3_f32(vec3<f32>(-816f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -722f) - _wgslsmith_f_op_f32(exp2(arg_0.c))), _wgslsmith_f_op_f32(ceil(arg_0.c))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(338f, 440f, -1000f)))), vec3<f32>(_wgslsmith_div_f32(arg_0.c, 1436f), -534f, arg_0.c))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) * -1000f)), var_0.x, arg_0.c);
    let var_2 = Struct_5(func_2(), var_0.x, _wgslsmith_add_vec3_i32(vec3<i32>(~u_input.d.x, ~(-16214i), reverseBits(firstLeadingBit(u_input.c.x))), ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.a, u_input.c.x, 31375i, 2147483647i), vec4<i32>(u_input.b.x, 14621i, u_input.d.x, u_input.a)), 1i, -2147483647i & arg_0.b.a)), Struct_1(~u_input.e.yz, firstTrailingBit(u_input.e.x), global1.x, _wgslsmith_sub_u32(arg_0.d, _wgslsmith_div_u32(global1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(5949u, arg_0.d, 41635u), global1.wyx))), 1u));
    return -958f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.c.yz;
    let var_1 = Struct_2(var_0.x);
    var var_2 = Struct_3(true, Struct_2(-_wgslsmith_sub_i32(18482i, ~var_1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_3(false, Struct_2(-1i), _wgslsmith_f_op_f32(1790f - -301f), 110161u, true))) + _wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(-866f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), ~1u, func_2().a <= 6951i);
    var var_3 = Struct_3(global0[_wgslsmith_index_u32(~min(~var_2.d, 30885u), 28u)], var_2.b, var_2.c, ~(~58101u), any(vec4<bool>(!(4294967295u > u_input.e.x), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(u_input.e), global1.wxz), 28u)], true, global0[_wgslsmith_index_u32(~global1.x & 4687u, 28u)])));
    var var_4 = global0[_wgslsmith_index_u32(global1.x, 28u)];
    let var_5 = -6292i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-718f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(global0[_wgslsmith_index_u32(4294967295u, 28u)], var_1, var_3.c, var_2.d, true))))), _wgslsmith_f_op_f32(sign(-429f)), _wgslsmith_div_f32(-1235f, 1802f), 823f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-219f * _wgslsmith_div_f32(-887f, 1917f)), -1000f, 241f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) * _wgslsmith_f_op_f32(var_3.c - var_3.c)) * _wgslsmith_f_op_f32(max(var_3.c, var_2.c)))), vec4<i32>(var_3.b.a, u_input.d.x, abs(-1i), (-2147483647i & var_0.x) << (max(firstLeadingBit(var_2.d), global1.x) % 32u)), ~vec4<u32>(~global1.x & ~global1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.e.x, 0u) << (global1.xyz % vec3<u32>(32u)), vec3<u32>(global1.x, u_input.e.x, var_2.d)), ~var_3.d, _wgslsmith_sub_u32(u_input.e.x, countOneBits(u_input.e.x))));
}

