struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(60680u, vec2<u32>(97430u, 48673u), -547f), Struct_1(1u, vec2<u32>(17671u, 4294967295u), 382f), Struct_1(54204u, vec2<u32>(70527u, 1u), 1459f), Struct_1(0u, vec2<u32>(29335u, 30324u), 653f), Struct_1(1u, vec2<u32>(0u, 58026u), -252f), Struct_1(4294967295u, vec2<u32>(4136u, 0u), 434f), Struct_1(18850u, vec2<u32>(0u, 4294967295u), -324f), Struct_1(29686u, vec2<u32>(1037u, 38940u), -1478f), Struct_1(0u, vec2<u32>(47538u, 0u), -558f), Struct_1(0u, vec2<u32>(1u, 34058u), 1000f), Struct_1(4294967295u, vec2<u32>(4294967295u, 1992u), -499f), Struct_1(3963u, vec2<u32>(4294967295u, 1u), 1172f), Struct_1(109653u, vec2<u32>(39239u, 17645u), 691f), Struct_1(29264u, vec2<u32>(1u, 71149u), -581f), Struct_1(0u, vec2<u32>(4294967295u, 9439u), 1167f));

var<private> global1: vec2<bool>;

var<private> global2: Struct_2 = Struct_2(vec3<i32>(-220i, 30890i, 38016i), Struct_1(56505u, vec2<u32>(56377u, 32091u), -118f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    global1 = vec2<bool>(select(!global1.x, !any(!vec4<bool>(global1.x, global1.x, global1.x, global1.x)), global1.x), any(select(!vec4<bool>(true, true, true, global1.x), vec4<bool>(u_input.c.x == u_input.c.x, false, !global1.x, all(vec4<bool>(false, global1.x, global1.x, true))), !vec4<bool>(global1.x, false, global1.x, false))));
    let var_0 = ~_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~global2.b.a, arg_0.a, _wgslsmith_clamp_u32(4294967295u, 15049u, u_input.d), 30894u), vec4<u32>(~arg_0.a, _wgslsmith_mult_u32(25245u, arg_0.b.x), global2.b.a, ~4294967295u)), abs(~vec4<u32>(u_input.d, u_input.b, arg_0.a, global2.b.b.x)));
    global2 = Struct_2(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(select(vec2<i32>(8783i, 1i), vec2<i32>(-2147483647i, global2.a.x), false), u_input.c.zz ^ vec2<i32>(70699i, 5136i)), vec2<i32>(-1i, global2.a.x)), -16152i << (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_0.x, global2.b.b.x, 24036u, u_input.a.x)), vec4<u32>(14265u, 4294967295u, 0u, arg_0.b.x) ^ var_0) % 32u), -(i32(-1i) * -24737i)), global0[_wgslsmith_index_u32(~abs(_wgslsmith_sub_u32(72355u, ~var_0.x)), 15u)]);
    global2 = Struct_2(vec3<i32>(abs(0i), -1i, abs(_wgslsmith_mod_i32(u_input.c.x, global2.a.x))), Struct_1((~14290u | u_input.b) << (_wgslsmith_div_u32(arg_0.b.x, abs(u_input.a.x)) % 32u), vec2<u32>(~(~var_0.x), 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1366f))));
    var var_1 = max(-vec4<i32>(i32(-1i) * -73222i, global2.a.x, 2147483647i, _wgslsmith_sub_i32(-2147483647i, global2.a.x)) >> (~var_0 % vec4<u32>(32u)), abs(-(~vec4<i32>(global2.a.x, 2147483647i, -31784i, u_input.c.x) & vec4<i32>(-1i, global2.a.x, -25214i, 0i))));
    return vec2<u32>(arg_0.b.x, ~4294967295u);
}

fn func_2(arg_0: vec2<bool>, arg_1: f32) -> Struct_1 {
    let var_0 = vec3<bool>(true, true, false);
    let var_1 = func_3(Struct_1(max(~firstLeadingBit(u_input.d), u_input.d), _wgslsmith_mod_vec2_u32(select(u_input.a.xx, global2.b.b, arg_0) & (vec2<u32>(21529u, global2.b.b.x) ^ global2.b.b), ~u_input.a.xz << (max(global2.b.b, u_input.a.xx) % vec2<u32>(32u))), _wgslsmith_f_op_f32(ceil(global2.b.c))));
    global2 = Struct_2(~_wgslsmith_add_vec3_i32(abs(u_input.c) & select(vec3<i32>(global2.a.x, 0i, -1i), global2.a, var_0), global2.a), global0[_wgslsmith_index_u32(4294967295u, 15u)]);
    let var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, ~u_input.b, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(43995u, 36805u, 4294967295u, 1u), vec4<u32>(var_1.x, u_input.d, var_1.x, 0u), vec4<u32>(5589u, var_1.x, 0u, 4894u)), select(vec4<u32>(u_input.b, var_1.x, 1u, var_1.x), vec4<u32>(u_input.d, 17982u, 0u, 39762u), true)), abs(1u)), select(select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, var_1.x, u_input.a.x, 4294967295u), vec4<u32>(40097u, global2.b.b.x, 1u, 43518u)), vec4<u32>(var_1.x, 7161u, 36087u, 1u), arg_0.x), vec4<u32>(~u_input.d, 1u, ~19078u, 37972u), false | all(vec4<bool>(arg_0.x, var_0.x, arg_0.x, false)))) | 10988u;
    let var_3 = _wgslsmith_sub_u32(global2.b.a, _wgslsmith_clamp_u32(0u, 4294967295u, global2.b.a));
    return Struct_1(33567u, ~firstTrailingBit(~(~u_input.a.yz)), global2.b.c);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_2(global2.a, func_2(!(!select(vec2<bool>(true, false), vec2<bool>(global1.x, global1.x), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-110f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1509f)))));
    global2 = var_0;
    global0 = array<Struct_1, 15>();
    let var_1 = global2.a.yy;
    global0 = array<Struct_1, 15>();
    return _wgslsmith_div_f32(var_0.b.c, _wgslsmith_f_op_f32(-arg_1.c));
}

fn func_4(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = vec4<i32>(-1i, abs(global2.a.x), -(~global2.a.x), _wgslsmith_dot_vec2_i32(-global2.a.zx, firstLeadingBit(u_input.c.zz & u_input.c.xx)) | global2.a.x);
    let var_1 = _wgslsmith_clamp_i32(var_0.x, abs(global2.a.x), -global2.a.x);
    global2 = Struct_2(min(u_input.c, var_0.wzz), global0[_wgslsmith_index_u32(~64359u, 15u)]);
    var var_2 = Struct_2(abs(min(~var_0.zxw, vec3<i32>(1i, 1i, -9113i))), Struct_1(~(~firstLeadingBit(global2.b.b.x)), select(u_input.a.yz, _wgslsmith_sub_vec2_u32(u_input.a.xy, vec2<u32>(42208u, u_input.a.x)), u_input.b >= 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1884f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -577f))))));
    let var_3 = Struct_2(_wgslsmith_add_vec3_i32(vec3<i32>(-var_2.a.x, 31437i, -global2.a.x) & u_input.c, min(_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(-1i, var_1, var_2.a.x)), vec3<i32>(282i, 16314i, 35085i)), countOneBits(var_0.yxx))), global0[_wgslsmith_index_u32(func_2(!(!select(vec2<bool>(global1.x, true), vec2<bool>(true, global1.x), vec2<bool>(global1.x, global1.x))), var_2.b.c).a, 15u)]);
    return global0[_wgslsmith_index_u32(1u, 15u)];
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = 13363i;
    var var_1 = _wgslsmith_f_op_f32(floor(350f));
    global0 = array<Struct_1, 15>();
    global1 = vec2<bool>(global1.x, true);
    let var_2 = !select(vec3<bool>(!(global1.x | true), ~global2.a.x >= global2.a.x, global1.x), vec3<bool>(global1.x, global1.x, u_input.c.x <= _wgslsmith_sub_i32(var_0, -18823i)), global1.x);
    return Struct_1(abs(~(arg_1.a & _wgslsmith_dot_vec4_u32(vec4<u32>(7175u, arg_1.b.x, u_input.d, global2.b.b.x), vec4<u32>(global2.b.a, 0u, u_input.d, u_input.b)))), ~vec2<u32>(1928u, _wgslsmith_clamp_u32(arg_1.b.x ^ global2.b.a, ~4294967295u, ~arg_1.b.x)), -1200f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    let var_0 = !(!vec2<bool>(true, all(vec2<bool>(true, global1.x))));
    let var_1 = func_5(396f, func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1649f, 1504f, -1302f) * vec3<f32>(1000f, global2.b.c, global2.b.c))) * vec3<f32>(_wgslsmith_div_f32(global2.b.c, global2.b.c), -503f, _wgslsmith_f_op_f32(func_1(global2.b, Struct_1(44439u, vec2<u32>(global2.b.a, 0u), 1759f)))))));
    global0 = array<Struct_1, 15>();
    let var_2 = ~max(min(1u, ~(~u_input.b)), var_1.b.x);
    var var_3 = u_input.c;
    var var_4 = global0[_wgslsmith_index_u32(29086u, 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(22331u, vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_3.x, u_input.c.x, -32846i, 3816i), vec4<i32>(1i, -14106i, -1i, 1358i)), _wgslsmith_div_vec4_i32(vec4<i32>(2867i, var_3.x, u_input.c.x, u_input.c.x), vec4<i32>(var_3.x, global2.a.x, global2.a.x, 6869i)), vec4<i32>(-2147483647i, global2.a.x, -1i, global2.a.x)), vec4<i32>(-2147483647i, select(21605i, var_3.x, var_0.x), u_input.c.x, ~global2.a.x)), ~(-2147483647i) & var_3.x));
}

