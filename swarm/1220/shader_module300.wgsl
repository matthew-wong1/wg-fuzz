struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(67222u, 15968u);

var<private> global1: array<u32, 30>;

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(-1515f, false, 0u, -15199i);

var<private> global4: array<vec3<bool>, 28>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(~u_input.b.xyz, vec3<u32>(u_input.b.x, arg_1.c, global2.c) >> ((u_input.b.zyw | vec3<u32>(global3.c, global0.x, 70368u)) % vec3<u32>(32u))) << ((vec3<u32>(~21560u, reverseBits(global3.c), abs(arg_1.c)) & reverseBits(vec3<u32>(global3.c, global2.c, global2.c))) % vec3<u32>(32u)), vec3<u32>(global1[_wgslsmith_index_u32(23133u, 30u)], ~(~u_input.d.x), ~_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global3.c, 30u)], 108921u, 74696u) & ~countOneBits(4294967295u)));
    global2 = Struct_1(_wgslsmith_f_op_f32(select(499f, 637f, global2.b)), !(!all(select(global4[_wgslsmith_index_u32(u_input.d.x, 28u)], global4[_wgslsmith_index_u32(arg_1.c, 28u)], global4[_wgslsmith_index_u32(arg_1.c, 28u)]))), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(69410u, 3242u, 1u) >> (countOneBits(u_input.b.xzw) % vec3<u32>(32u)), ~vec3<u32>(59359u, global3.c, 4294967295u)), 0u), 2147483647i);
    var var_1 = arg_1;
    global4 = array<vec3<bool>, 28>();
    global1 = array<u32, 30>();
    return _wgslsmith_sub_u32(~1u, _wgslsmith_mult_u32(~(~(~26930u)), global2.c));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<f32>) -> f32 {
    let var_0 = ~(~(~global3.c) << (_wgslsmith_div_u32(func_3(_wgslsmith_f_op_f32(-arg_0.x), Struct_1(-1160f, true, global1[_wgslsmith_index_u32(11305u, 30u)], global3.d)), _wgslsmith_sub_u32(16168u, global0.x)) % 32u));
    let var_1 = vec3<u32>(countOneBits(func_3(1123f, Struct_1(-850f, global3.b, 1u, u_input.c))) >> (firstLeadingBit(u_input.e) % 32u), firstTrailingBit(firstLeadingBit(min(max(var_0, global1[_wgslsmith_index_u32(global0.x, 30u)]), 1u))), 12865u);
    let var_2 = Struct_1(2295f, !(!any(!global4[_wgslsmith_index_u32(15154u, 28u)])), firstLeadingBit(~(~global1[_wgslsmith_index_u32(0u, 30u)])) >> (_wgslsmith_mod_u32(abs(u_input.e), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 8623u, var_0), vec3<u32>(0u, global1[_wgslsmith_index_u32(0u, 30u)], 4294967295u))) % 32u), global2.d);
    global4 = array<vec3<bool>, 28>();
    let var_3 = u_input.e;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-601f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(816f, var_2.a))))), false)));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_1(-533f, global2.b, 13839u, ~(-1i));
    var var_1 = vec3<f32>(var_0.a, var_0.a, -394f);
    let var_2 = ~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(~arg_0.x, -1i), u_input.a.xy), 2147483647i);
    var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -146f))), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -710f))), -810f) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a, _wgslsmith_f_op_f32(func_2(vec3<f32>(-1061f, var_1.x, global2.a), vec3<f32>(global3.a, -752f, global3.a))), _wgslsmith_f_op_f32(var_1.x * 273f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, global2.a, var_1.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -311f, global3.a))))), !global4[_wgslsmith_index_u32(global2.c, 28u)])));
    global2 = var_0;
    return var_0;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    global3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1247f * global3.a), -1286f)), global3.b, 0u, 35617i);
    var var_0 = func_1(abs(arg_2.xzx), ~_wgslsmith_div_u32(~global0.x, u_input.d.x) & _wgslsmith_add_u32(~abs(21182u), ~(~0u)));
    var var_1 = abs(u_input.b.yxx);
    let var_2 = select(u_input.a.xy >> (vec2<u32>(~_wgslsmith_mod_u32(88029u, 108967u), ~_wgslsmith_mod_u32(global0.x, 0u)) % vec2<u32>(32u)), firstTrailingBit(arg_2.xz), !(!vec2<bool>(!global3.b, !global2.b)));
    var var_3 = global2.a == _wgslsmith_f_op_f32(f32(-1f) * -123f);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, 325f, false))), _wgslsmith_f_op_f32(-global3.a) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1323f + 1460f), _wgslsmith_f_op_f32(trunc(142f)))), select(abs(arg_3.c), ~(global2.c << (~4294967295u % 32u)), !select(all(vec2<bool>(global2.b, var_0.b)), arg_3.d >= -56615i, global3.b)), min(_wgslsmith_add_i32(-_wgslsmith_clamp_i32(var_0.d, 37945i, -21953i), -arg_3.d), -1i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_sub_vec2_u32(firstTrailingBit(~vec2<u32>(global0.x, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b))), _wgslsmith_sub_vec2_u32(vec2<u32>(~0u, 37629u), vec2<u32>(global2.c, _wgslsmith_div_u32(reverseBits(25292u), _wgslsmith_mult_u32(1u, 42343u)))));
    global2 = func_4(_wgslsmith_f_op_f32(max(-299f, _wgslsmith_f_op_f32(max(220f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1499f))))))), -421f, ~abs(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global3.d, 1i, u_input.c, u_input.c), vec4<i32>(global3.d, global3.d, -1i, 23204i)), vec4<i32>(-1i, global2.d, -2147483647i, global3.d) | vec4<i32>(global2.d, 71837i, 3776i, -2147483647i), vec4<i32>(1i, u_input.c, u_input.a.x, global2.d) & vec4<i32>(global3.d, -5025i, global2.d, global2.d))), func_1(_wgslsmith_clamp_vec3_i32(select(firstLeadingBit(u_input.a), ~vec3<i32>(u_input.a.x, global3.d, 1i), global2.b), _wgslsmith_div_vec3_i32(vec3<i32>(0i, global3.d, global2.d) | vec3<i32>(global2.d, 2147483647i, u_input.c), vec3<i32>(global2.d, -1i, global3.d) ^ u_input.a), u_input.a ^ vec3<i32>(u_input.a.x, u_input.c, u_input.c)), min(~(~38103u), global3.c)));
    global4 = array<vec3<bool>, 28>();
    var var_0 = _wgslsmith_sub_i32(~_wgslsmith_mod_i32(_wgslsmith_clamp_i32(global3.d, select(global3.d, global2.d, global3.b), global2.d), -1i), ~(firstTrailingBit(-1520i) ^ _wgslsmith_sub_i32(abs(global2.d), ~global3.d)));
    var var_1 = func_1(_wgslsmith_add_vec3_i32(-(~vec3<i32>(-23571i, global2.d, -21731i)), ~_wgslsmith_div_vec3_i32(u_input.a, u_input.a)), abs(1u));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f))), global2.b, ~(((14229u >> (global3.c % 32u)) | _wgslsmith_clamp_u32(global3.c, 6547u, global3.c)) & 4294967295u), ~firstTrailingBit(-(i32(-1i) * -27862i)));
    let x = u_input.a;
    s_output = StorageBuffer(~func_4(-258f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1551f * 977f), global2.a), vec4<i32>(11834i, -47000i, _wgslsmith_mult_i32(u_input.c, var_2.d), u_input.a.x), func_4(_wgslsmith_f_op_f32(var_1.a * 1000f), _wgslsmith_f_op_f32(exp2(var_1.a)), _wgslsmith_add_vec4_i32(vec4<i32>(global2.d, -1i, global2.d, global2.d), vec4<i32>(var_2.d, var_2.d, -33095i, var_2.d)), Struct_1(-521f, true, global3.c, global2.d))).d, 28120u >> ((firstLeadingBit(~1u) | ~func_3(254f, Struct_1(global3.a, false, global0.x, -52598i))) % 32u), abs(_wgslsmith_div_i32(-29130i, 3912i | (-1i << (global3.c % 32u)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(791f))), _wgslsmith_f_op_f32(step(1f, -1754f))), var_1.a, _wgslsmith_f_op_f32(-func_4(-871f, _wgslsmith_f_op_f32(var_1.a + var_2.a), ~vec4<i32>(-26390i, global3.d, -2147483647i, 1i), var_2).a)), var_2.c);
}

