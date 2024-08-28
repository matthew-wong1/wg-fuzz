struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec3<u32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -31742i;

var<private> global1: array<Struct_1, 29>;

var<private> global2: vec4<i32> = vec4<i32>(1i, 2147483647i, 0i, -1i);

var<private> global3: vec2<u32> = vec2<u32>(40665u, 49074u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> vec2<u32> {
    global2 = vec4<i32>(-2147483647i, global2.x, -1i, 6237i) >> (countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u ^ global3.x, _wgslsmith_div_u32(u_input.b.x, u_input.c.x), firstLeadingBit(u_input.c.x), firstLeadingBit(4294967295u)), abs(~u_input.b))) % vec4<u32>(32u));
    global1 = array<Struct_1, 29>();
    return vec2<u32>(select(~2071u, ~72436u >> (global3.x % 32u), -2147483647i <= _wgslsmith_clamp_i32(-1i, 1i, global2.x)) << (firstLeadingBit(~min(global3.x, 29583u)) % 32u), ~(~countOneBits(4294967295u)) & ~(~(~u_input.b.x)));
}

fn func_4(arg_0: u32) -> f32 {
    global3 = ~countOneBits(u_input.c) ^ ~vec2<u32>(_wgslsmith_clamp_u32(global3.x, ~global3.x, global3.x), firstLeadingBit(1u));
    global1 = array<Struct_1, 29>();
    var var_0 = Struct_3(vec4<f32>(-780f, 861f, 2761f, _wgslsmith_f_op_f32(f32(-1f) * -317f)), vec4<i32>(-1i, 0i, abs(u_input.a), firstLeadingBit(~_wgslsmith_mult_i32(-50339i, global2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(915f, -250f, 428f, 1189f))))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(675f - -222f), -640f, _wgslsmith_f_op_f32(-310f + -1000f), 1000f)))), Struct_1(u_input.a, vec3<bool>(true, true, all(vec4<bool>(true, true, true, true))), u_input.b.xwz, true, 0i));
    var var_1 = _wgslsmith_div_i32(-2147483647i, select(countOneBits(var_0.b.x) ^ -9438i, 2147483647i, var_0.d.b.x));
    let var_2 = _wgslsmith_div_f32(678f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) - _wgslsmith_f_op_f32(floor(548f))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2, _wgslsmith_f_op_f32(-var_2), select(!var_0.d.b.x, u_input.a >= 36359i, !any(var_0.d.b.yz)))));
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    var var_0 = abs(~abs(-_wgslsmith_div_vec2_i32(vec2<i32>(10601i, -71859i), global2.xw)));
    global0 = 2218i;
    var var_1 = arg_0;
    let var_2 = !select(select(vec3<bool>(arg_0.b.x, true, false), !var_1.b, any(arg_0.b.yz)), !arg_0.b, select(select(vec3<bool>(true, false, var_1.b.x), !var_1.b, !vec3<bool>(arg_0.b.x, arg_0.b.x, true)), var_1.b, select(vec3<bool>(arg_0.b.x, arg_0.b.x, false), arg_0.b, false == var_1.b.x)));
    let var_3 = Struct_2(arg_0.a | _wgslsmith_div_vec3_i32(arg_0.a >> (vec3<u32>(u_input.c.x, 44114u, global3.x) % vec3<u32>(32u)), vec3<i32>(var_1.a.x, 0i, -global2.x)), var_1.b);
    return Struct_3(vec4<f32>(-184f, _wgslsmith_f_op_f32(func_4(_wgslsmith_dot_vec2_u32(u_input.c, func_3()))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1828f, _wgslsmith_f_op_f32(min(1153f, 434f))))), abs(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(var_3.a.x, -52854i, var_0.x, 32425i), vec4<i32>(2147483647i, arg_0.a.x, var_3.a.x, global2.x), var_3.b.x), firstTrailingBit(vec4<i32>(arg_0.a.x, 69083i, var_1.a.x, var_0.x)), ~vec4<i32>(-3065i, 1i, -2147483647i, -2147483647i)) ^ (select(vec4<i32>(19264i, 47490i, u_input.a, -1i), vec4<i32>(var_0.x, -21151i, 2147483647i, u_input.a), false) & _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 1i, var_0.x, 2147483647i), vec4<i32>(arg_0.a.x, 0i, u_input.a, var_1.a.x)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(549f, -1002f), _wgslsmith_f_op_f32(2089f * -308f), _wgslsmith_f_op_f32(f32(-1f) * -1347f), _wgslsmith_f_op_f32(1207f + -101f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-370f, -1098f, 220f, 2148f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-284f, 1154f, 1546f, -1000f) + vec4<f32>(1113f, 126f, 429f, 1538f)), !vec4<bool>(true, false, arg_0.b.x, var_1.b.x))))))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(global3.x, global3.x, 4294967295u)), u_input.b.wwx), abs(~u_input.b.wxw)), vec3<u32>(~(~global3.x), _wgslsmith_div_u32(global3.x, 29539u) ^ u_input.c.x, u_input.b.x)), 29u)]);
}

fn func_5(arg_0: Struct_3, arg_1: u32) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(global3.x, 29u)];
    let var_1 = true;
    return var_0.c.x;
}

fn func_1(arg_0: vec3<bool>) -> vec4<i32> {
    let var_0 = Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global2.x, -4727i, -28158i, global2.x), vec4<i32>(-4266i, 1i, 0i, u_input.a)), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, -11453i, global2.x), vec4<i32>(u_input.a, global2.x, global2.x, global2.x))), global2.x), global2.yzw), vec3<bool>(true || !select(true, arg_0.x, false), any(!vec4<bool>(true, arg_0.x, false, false)) && true, true));
    let var_1 = vec4<u32>(abs(abs(~41712u)) & ~firstLeadingBit(u_input.b.x >> (u_input.c.x % 32u)), 4294967295u | ~_wgslsmith_add_u32(global3.x, 1u), reverseBits(~global3.x) << (func_5(func_2(var_0), 79127u) % 32u), 4294967295u);
    global0 = -2147483647i;
    global3 = ~reverseBits(vec2<u32>(~(~u_input.c.x), var_1.x));
    var var_2 = var_0;
    return vec4<i32>(~_wgslsmith_sub_i32(19496i, 4260i), global2.x, 1i >> (_wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(4294967295u, 1u)), countOneBits(~vec2<u32>(var_1.x, 94503u))) % 32u), _wgslsmith_div_i32(_wgslsmith_mult_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_2.a.x), select(vec2<i32>(-1i, var_2.a.x), var_2.a.xz, false))), -var_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = min(vec4<i32>(-1i, 2147483647i, u_input.a, u_input.a), func_1(vec3<bool>(all(vec2<bool>(true, true)), all(vec3<bool>(false, false, false)), true)) << (u_input.b % vec4<u32>(32u)));
    var var_0 = 49028u;
    global2 = ~(-firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(2037i, global2.x, -12564i, 2147483647i), vec4<i32>(u_input.a, 34428i, global2.x, -1731i) >> (u_input.b % vec4<u32>(32u)))));
    let var_1 = !select(true, true, true);
    var var_2 = vec3<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_mod_vec2_u32(min(u_input.b.xy, vec2<u32>(2178u, u_input.b.x)), u_input.b.yx)), ~func_3()), u_input.c.x, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, global3.x, global3.x, 1u), u_input.b) ^ global3.x));
    var_0 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_sub_i32(u_input.a, -global2.x));
}

