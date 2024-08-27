struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_2,
    e: bool,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
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

var<private> global0: array<bool, 24>;

var<private> global1: u32;

var<private> global2: vec3<u32>;

var<private> global3: Struct_5 = Struct_5(vec3<bool>(true, true, false), Struct_1(-44226i, 4294967295u, -183f), 1i, Struct_3(vec4<u32>(4294967295u, 24739u, 23875u, 0u)));

var<private> global4: array<i32, 21> = array<i32, 21>(-14059i, i32(-2147483648), -28272i, 43477i, -13187i, i32(-2147483648), -16464i, -1i, 2147483647i, 8888i, -1738i, -1i, -35536i, 55110i, 14330i, -1i, -2140i, 19217i, -33779i, -6620i, -13108i);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>) -> vec2<u32> {
    global1 = ~79541u;
    global2 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.d.a.x, 1u, arg_0.a.x, 0u), _wgslsmith_sub_vec4_u32(global3.d.a, global3.d.a)), _wgslsmith_div_u32(~global2.x, arg_0.a.x), 1u ^ ~global2.x), ~(~(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, 81020u), vec3<u32>(global2.x, 4294967295u, arg_0.a.x)))), global3.d.a.wwz);
    let var_0 = vec2<f32>(-914f, 1f);
    var var_1 = global3.b;
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b.c, -616f, global3.b.c, 345f) - vec4<f32>(938f, arg_1.x, 516f, var_1.c)))) - vec4<f32>(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(-1679f + 1426f), _wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(1066f + arg_1.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(var_1.c)), _wgslsmith_f_op_f32(-744f + global3.b.c), global3.b.c, _wgslsmith_f_op_f32(-var_1.c)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(205f)), var_1.c, _wgslsmith_f_op_f32(exp2(var_1.c)), _wgslsmith_f_op_f32(ceil(global3.b.c))) - vec4<f32>(-1048f, _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(global3.b.c * var_0.x), var_0.x)))));
    return min(abs(vec2<u32>(~min(global2.x, var_1.b), _wgslsmith_add_u32(_wgslsmith_mult_u32(global2.x, global3.d.a.x), 1471u))), _wgslsmith_sub_vec2_u32(countOneBits(global2.xy), ~(~_wgslsmith_mod_vec2_u32(global2.xx, u_input.c.xy))));
}

fn func_2(arg_0: i32, arg_1: vec2<i32>) -> u32 {
    let var_0 = true;
    let var_1 = _wgslsmith_clamp_vec2_u32(max(~(~vec2<u32>(1u, global2.x) & firstLeadingBit(vec2<u32>(u_input.a.x, 0u))), min(func_3(Struct_3(u_input.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b.c, -435f))), ~vec2<u32>(global3.b.b, 25382u) | ~vec2<u32>(15937u, global2.x))), ~vec2<u32>(4294967295u, 4294967295u), ~select(vec2<u32>(min(1u, 104604u), ~5299u), select(vec2<u32>(global3.b.b, u_input.c.x), min(global3.d.a.wx, vec2<u32>(0u, u_input.c.x)), global3.a.x), any(vec2<bool>(false, global0[_wgslsmith_index_u32(35333u, 24u)]))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(200f + _wgslsmith_f_op_f32(-global3.b.c)), -1145f);
    var var_3 = -1i;
    var var_4 = all(!global3.a);
    return (var_1.x ^ 47875u) << (4294967295u % 32u);
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> Struct_3 {
    var var_0 = abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(reverseBits(select(u_input.a.wz, vec2<u32>(28567u, global3.d.a.x), vec2<bool>(global3.a.x, global3.a.x))), ~u_input.a.yz), firstLeadingBit(u_input.c.x)));
    let var_1 = ~(~func_2(u_input.b, arg_0.xy));
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(global3.b.c, _wgslsmith_f_op_f32(global3.b.c * -730f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(664f, global3.b.c))))))));
    global3 = Struct_5(vec3<bool>(all(select(vec3<bool>(global0[_wgslsmith_index_u32(global2.x, 24u)], global0[_wgslsmith_index_u32(global3.d.a.x, 24u)], global3.a.x), !vec3<bool>(true, false, global3.a.x), !vec3<bool>(global3.a.x, true, true))), !any(vec2<bool>(global3.a.x, global0[_wgslsmith_index_u32(1u, 24u)])), (_wgslsmith_f_op_f32(global3.b.c - 477f) > _wgslsmith_f_op_f32(-858f * global3.b.c)) & global3.a.x), global3.b, select(1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(-12194i, 1i, global4[_wgslsmith_index_u32(20521u, 21u)], 2147483647i), vec4<i32>(arg_0.x, -1i, _wgslsmith_clamp_i32(-10850i, 58518i, arg_0.x), 20026i)), false), global3.d);
    let var_3 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b.c * var_2.x) + global3.b.c)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(floor(-1339f))))) | global3.a.x;
    return global3.d;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_4) -> u32 {
    global2 = abs(u_input.a.yzw);
    global2 = vec3<u32>(~(~abs(global2.x >> (105963u % 32u))), _wgslsmith_div_u32((firstTrailingBit(72735u) | ~4294967295u) << (arg_1.a.x % 32u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(69370u, global3.d.a.x), arg_2.d.b.b)), global2.x);
    let var_0 = u_input.a;
    global2 = min(arg_1.a.yzx, ~vec3<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a.x, 17067u)), _wgslsmith_mult_vec2_u32(arg_1.a.xy, vec2<u32>(16496u, 11598u))), _wgslsmith_sub_u32(~global3.d.a.x, _wgslsmith_clamp_u32(u_input.c.x, 4294967295u, global2.x)), arg_1.a.x));
    global1 = select(89178u, arg_1.a.x, arg_2.c.x) >> (_wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(~(~u_input.a.x), ~0u)) % 32u);
    return reverseBits(var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(func_4(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-134f, global3.b.c, 1251f, global3.b.c))), func_1(vec3<i32>(2147483647i, global3.c, -58562i), 13138u), Struct_4(Struct_2(vec3<i32>(u_input.b, -65685i, -1i), Struct_1(13869i, 114422u, global3.b.c), 12624i, global3.b.c), Struct_2(vec3<i32>(26128i, u_input.b, u_input.b), Struct_1(global4[_wgslsmith_index_u32(60625u, 21u)], 1u, global3.b.c), global3.c, global3.b.c), global3.a, Struct_2(vec3<i32>(2147483647i, global4[_wgslsmith_index_u32(global3.b.b, 21u)], -1i), Struct_1(26547i, 105713u, -1198f), 15781i, 501f), true)), global3.d.a.x), firstLeadingBit(~global2.xz)), 24u)], global3.a.x);
    global3 = Struct_5(!vec3<bool>(true, true, !select(false, false, global3.a.x)), Struct_1(global3.b.a, u_input.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-746f, -349f)), _wgslsmith_f_op_f32(-global3.b.c))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.b.c, -1000f)))), -1i, Struct_3(vec4<u32>(min(_wgslsmith_sub_u32(global2.x, global3.b.b), ~5515u), select(abs(global2.x), func_4(vec4<f32>(global3.b.c, 1670f, global3.b.c, global3.b.c), global3.d, Struct_4(Struct_2(vec3<i32>(global4[_wgslsmith_index_u32(global2.x, 21u)], -2147483647i, 0i), Struct_1(21664i, u_input.c.x, global3.b.c), global3.c, -1425f), Struct_2(vec3<i32>(-29651i, global3.b.a, 0i), Struct_1(1i, 11313u, -497f), 19374i, global3.b.c), vec3<bool>(global3.a.x, global0[_wgslsmith_index_u32(0u, 24u)], false), Struct_2(vec3<i32>(2147483647i, global3.b.a, global3.c), global3.b, global4[_wgslsmith_index_u32(802u, 21u)], 248f), true)), global0[_wgslsmith_index_u32(202u, 24u)]), 4294967295u, abs(global3.b.b) ^ 4294967295u)));
    global0 = array<bool, 24>();
    var var_1 = Struct_5(vec3<bool>(true, all(vec3<bool>(true, -152f <= global3.b.c, all(vec4<bool>(global3.a.x, true, global0[_wgslsmith_index_u32(23536u, 24u)], false)))), global0[_wgslsmith_index_u32(global3.b.b, 24u)]), Struct_1(global3.c, countOneBits(u_input.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1524f - -1000f) * _wgslsmith_f_op_f32(min(361f, _wgslsmith_f_op_f32(select(-1000f, global3.b.c, false)))))), ~_wgslsmith_clamp_i32(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global3.b.b, global3.b.b) | vec3<u32>(u_input.a.x, 1u, u_input.a.x), u_input.c), 21u)], 1i, 4169i), global3.d);
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(2247f, -480f, var_1.b.c) * vec3<f32>(657f, -934f, -408f))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.c, 540f, var_1.b.c) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(183f, 1543f, -148f), vec3<f32>(var_1.b.c, global3.b.c, 230f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.b.c, 1436f, global3.b.c))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.c, var_1.b.c, global3.b.c) * vec3<f32>(253f, global3.b.c, global3.b.c))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.c, global3.b.c, global3.b.c)))))));
    global2 = min(vec3<u32>(~firstLeadingBit(func_1(vec3<i32>(global3.b.a, global4[_wgslsmith_index_u32(63248u, 21u)], 72729i), var_1.d.a.x).a.x), ~global3.b.b, _wgslsmith_mult_u32(55694u >> (firstLeadingBit(global3.b.b) % 32u), 0u)), vec3<u32>(~(~global3.d.a.x), var_1.b.b, ~(~43055u)) << (vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c.x, 1u), global3.d.a.wzy << (var_1.d.a.wxw % vec3<u32>(32u))), countOneBits(_wgslsmith_sub_u32(1u, 1u)), 0u) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(785f + _wgslsmith_f_op_f32(step(var_2.x, -113f)))));
}

