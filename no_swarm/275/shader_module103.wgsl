struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: i32 = 1i;

var<private> global2: Struct_2;

var<private> global3: array<vec2<i32>, 23>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<i32>) -> vec3<i32> {
    return abs(countOneBits(vec3<i32>(arg_0.x, _wgslsmith_mult_i32(1221i, arg_0.x), 36404i)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: i32) -> i32 {
    let var_0 = arg_0.x;
    global2 = Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, ~arg_1.b.x), vec2<u32>(4294967295u, 1u)), _wgslsmith_mod_u32(abs(u_input.c), global2.b), global2.c, u_input.a);
    var var_1 = -1695f;
    var var_2 = arg_2;
    global0 = arg_0;
    return u_input.d;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: i32, arg_3: u32) -> Struct_3 {
    var var_0 = Struct_1(arg_1, func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, global2.c.d))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.x, arg_0.c.d), vec2<f32>(arg_0.c.d, 1000f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.c.d, global2.c.d), vec2<f32>(-2578f, 136f), arg_1)))), Struct_3(1i, ~(global2.d.yz & global2.d.xz), -func_3(vec2<i32>(2147483647i, 0i)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global2.c.d)), _wgslsmith_f_op_f32(123f * -769f)))), -8180i), select(!select(vec4<bool>(true, false, false, false), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), arg_0.c.a.x), arg_0.c.c, arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -621f));
    let var_1 = vec2<f32>(220f, _wgslsmith_f_op_f32(sign(var_0.d)));
    let var_2 = global2.c;
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(465f, _wgslsmith_div_f32(566f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.d * 2104f), _wgslsmith_f_op_f32(f32(-1f) * -2337f), false)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.c.d, var_1.x)))), vec2<f32>(2156f, -1225f), (arg_3 >> (1u % 32u)) < reverseBits(u_input.a.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, var_2.d) + _wgslsmith_f_op_vec2_f32(vec2<f32>(2487f, -394f) - vec2<f32>(529f, var_2.d))))));
    var var_4 = (var_2.b << ((~(~arg_0.d.x) ^ global2.a) % 32u)) & _wgslsmith_mod_i32(func_3(vec2<i32>(global2.c.b, ~global2.c.b)).x, var_0.b);
    return Struct_3(_wgslsmith_clamp_i32(16749i, ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, var_0.b, 4301i, arg_0.c.b), vec4<i32>(70470i, -1i, var_2.b, -1523i))), firstLeadingBit(-2147483647i)), _wgslsmith_div_vec2_u32(vec2<u32>(6100u, ~0u), reverseBits(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.zz, global2.d.zz), vec2<u32>(0u, arg_0.a)))), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(~(~vec3<i32>(19788i, u_input.d, var_0.b)), _wgslsmith_mult_vec3_i32(vec3<i32>(global2.c.b, 1i, -1i) ^ vec3<i32>(global2.c.b, u_input.d, var_0.b), _wgslsmith_sub_vec3_i32(vec3<i32>(-6682i, arg_2, -7369i), vec3<i32>(var_2.b, 2147483647i, 0i)))), (_wgslsmith_div_vec3_i32(vec3<i32>(-30585i, -2147483647i, -495i), vec3<i32>(global2.c.b, arg_2, -61959i)) << (_wgslsmith_add_vec3_u32(vec3<u32>(30617u, global2.b, arg_3), global2.d) % vec3<u32>(32u))) ^ -(vec3<i32>(arg_0.c.b, var_2.b, var_2.b) | vec3<i32>(2147483647i, arg_0.c.b, u_input.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-453f + _wgslsmith_f_op_f32(max(-575f, var_3.x)))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1285f) + 150f))));
}

fn func_1() -> Struct_3 {
    global3 = array<vec2<i32>, 23>();
    var var_0 = global2.c;
    var var_1 = func_2(Struct_2(0u, global2.d.x, global2.c, vec3<u32>(~global2.d.x & 4294967295u, _wgslsmith_div_u32(~u_input.c, 5276u), 47950u)), !select(vec2<bool>(false, global2.c.c.x), var_0.c.yw, var_0.a), min((i32(-1i) * -18605i) >> (u_input.a.x % 32u), countOneBits(global2.c.b)), abs(global2.d.x));
    let var_2 = select(var_0.c, vec4<bool>(false, false, true, true), select(!select(select(vec4<bool>(global2.c.c.x, global2.c.c.x, true, var_0.a.x), vec4<bool>(var_0.c.x, global2.c.a.x, true, false), vec4<bool>(global2.c.a.x, var_0.a.x, var_0.a.x, false)), !vec4<bool>(global2.c.a.x, global2.c.a.x, false, var_0.c.x), !global2.c.c), var_0.c, global0.x >= var_0.d));
    var var_3 = _wgslsmith_sub_vec3_u32(vec3<u32>(22015u, (_wgslsmith_sub_u32(u_input.a.x, 17081u) >> (global2.d.x % 32u)) << (~24577u % 32u), u_input.a.x), vec3<u32>(_wgslsmith_sub_u32(~37193u, ~global2.d.x), 4294967295u, _wgslsmith_dot_vec2_u32(var_1.b, vec2<u32>(18491u, var_1.b.x)) | ~4294967295u) ^ reverseBits(~(vec3<u32>(u_input.c, 91709u, u_input.a.x) & u_input.a)));
    return func_2(Struct_2(_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(u_input.a.yy, vec2<u32>(var_3.x, 8404u))) ^ ~_wgslsmith_div_u32(u_input.a.x, var_3.x), ~_wgslsmith_sub_u32(u_input.c, ~u_input.a.x), Struct_1(select(!global2.c.a, vec2<bool>(var_2.x, false), vec2<bool>(false, var_2.x)), _wgslsmith_dot_vec2_i32(global3[_wgslsmith_index_u32(1u, 23u)], var_1.c.zz | vec2<i32>(-2147483647i, -31359i)), vec4<bool>(u_input.b > var_1.c.x, any(vec2<bool>(false, false)), false, var_2.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-753f * global0.x), _wgslsmith_f_op_f32(min(var_1.d, global0.x)), global2.c.a.x))), vec3<u32>(global2.a, max(firstTrailingBit(u_input.a.x), u_input.a.x), 0u)), !select(select(var_2.ww, select(vec2<bool>(false, false), var_2.xy, global2.c.a.x), select(var_0.c.xy, global2.c.c.wx, var_0.c.x)), !(!vec2<bool>(var_2.x, global2.c.c.x)), vec2<bool>(true, true)), countOneBits(var_1.c.x), ~_wgslsmith_clamp_u32(~5434u, ~global2.a, firstLeadingBit(var_1.b.x)) ^ (~(var_3.x >> (var_1.b.x % 32u)) ^ var_3.x));
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: vec4<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-global0.x);
    global3 = array<vec2<i32>, 23>();
    return global2.c.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(func_5(func_1(), global2.b, countOneBits(~(vec4<i32>(global2.c.b, global2.c.b, global2.c.b, u_input.b) ^ vec4<i32>(0i, -47668i, global2.c.b, -15079i)))), !((firstLeadingBit(u_input.c) >> (~global2.b % 32u)) <= _wgslsmith_dot_vec3_u32(~global2.d, ~vec3<u32>(32722u, 75219u, global2.a))));
    let var_1 = Struct_2(~_wgslsmith_add_u32(_wgslsmith_sub_u32(~global2.b, 8379u), 13609u), global2.d.x, Struct_1(select(var_0, global2.c.c.ww, vec2<bool>(true, true)), func_2(Struct_2(_wgslsmith_sub_u32(global2.b, u_input.c), 33920u << (global2.b % 32u), Struct_1(global2.c.a, global2.c.b, vec4<bool>(global2.c.a.x, global2.c.c.x, true, true), 1148f), max(u_input.a, vec3<u32>(u_input.a.x, u_input.c, global2.a))), vec2<bool>(all(global2.c.c), var_0.x), u_input.b, _wgslsmith_clamp_u32(global2.d.x, abs(global2.a), ~global2.a)).a, select(!global2.c.c, !select(vec4<bool>(global2.c.a.x, true, global2.c.a.x, false), vec4<bool>(global2.c.c.x, false, false, false), var_0.x), all(select(global2.c.c, vec4<bool>(false, false, global2.c.a.x, true), global2.c.a.x))), global0.x), ~abs(global2.d));
    let var_2 = all(var_1.c.c);
    var var_3 = abs(func_1().a);
    let var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1435f * -815f) - var_1.c.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(771f, -279f) - _wgslsmith_f_op_f32(abs(-829f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.x, -1114f)) * 1491f))), _wgslsmith_f_op_f32(abs(1591f))));
    var var_5 = _wgslsmith_sub_i32(-(~global2.c.b), 2147483647i);
    let var_6 = Struct_1(!(!var_1.c.c.yy), _wgslsmith_sub_i32(func_3(global3[_wgslsmith_index_u32(59718u, 23u)]).x, firstTrailingBit(-64629i)), global2.c.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - -484f)) - var_1.c.d), _wgslsmith_f_op_f32(-845f + 220f)));
    let var_7 = var_6;
    let var_8 = func_5(func_2(Struct_2(u_input.a.x, ~u_input.c, Struct_1(vec2<bool>(true, global2.c.c.x), _wgslsmith_mult_i32(var_6.b, u_input.d), vec4<bool>(false, var_7.a.x, false, false), var_4), min(var_1.d, countOneBits(u_input.a))), select(select(select(vec2<bool>(var_0.x, true), var_0, vec2<bool>(false, true)), !vec2<bool>(false, global2.c.c.x), vec2<bool>(true, true)), select(!vec2<bool>(global2.c.c.x, false), !vec2<bool>(true, var_1.c.c.x), vec2<bool>(false, false)), vec2<bool>(var_2, var_7.c.x)), -(-var_7.b >> (~1u % 32u)), ~(42441u | var_1.d.x)), ~u_input.c, -vec4<i32>(var_6.b, ~1i, -39641i, _wgslsmith_sub_i32(-2147483647i, 1i)) & -_wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.b, var_7.b, -36634i, var_1.c.b), vec4<i32>(u_input.b, var_7.b, -10638i, u_input.b), vec4<bool>(global2.c.a.x, false, var_7.a.x, global2.c.c.x)), vec4<i32>(var_1.c.b, 32464i, var_6.b, 14497i)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, 33499u, global2.a, u_input.a.zx);
}

