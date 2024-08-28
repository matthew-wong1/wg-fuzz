struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(625f, vec4<f32>(-1079f, -756f, -2341f, 231f), vec2<u32>(1u, 36605u)), Struct_2(-1262f, vec4<f32>(1520f, -2695f, 1045f, -1040f), vec2<u32>(76531u, 28490u)), Struct_2(-316f, vec4<f32>(-563f, 404f, 1612f, 452f), vec2<u32>(26827u, 1u)), Struct_2(-1000f, vec4<f32>(1000f, 616f, -2495f, 667f), vec2<u32>(4294967295u, 0u)));

var<private> global1: Struct_2 = Struct_2(-181f, vec4<f32>(286f, 1099f, 989f, -1346f), vec2<u32>(4294967295u, 15760u));

var<private> global2: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> u32 {
    var var_0 = max(countOneBits(-vec2<i32>(u_input.a, -2147483647i)) & vec2<i32>(firstLeadingBit(-22236i), abs(2147483647i & u_input.c)), select(vec2<i32>(u_input.c, _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.a, u_input.c), -1119i)), firstTrailingBit(vec2<i32>(u_input.a, select(u_input.a, u_input.a, false))), vec2<bool>(select(-420f == arg_3, true, any(vec3<bool>(true, false, false))), any(select(vec2<bool>(true, false), vec2<bool>(false, true), false)))));
    let var_1 = Struct_2(1556f, global1.b, ~vec2<u32>(u_input.b, ~(~4294967295u)));
    let var_2 = abs(~(~(~vec4<u32>(u_input.b, u_input.b, var_1.c.x, 1u) | firstTrailingBit(vec4<u32>(var_1.c.x, var_1.c.x, var_1.c.x, 16782u)))));
    let var_3 = _wgslsmith_sub_i32(1i, reverseBits(12475i));
    var var_4 = arg_1;
    return arg_2;
}

fn func_2(arg_0: u32, arg_1: i32) -> u32 {
    global1 = global0[_wgslsmith_index_u32(~func_3(~(~1u), Struct_1(vec3<f32>(global1.a, _wgslsmith_f_op_f32(-global1.b.x), 606f)), global1.c.x, global1.b.x), 4u)];
    var var_0 = vec2<u32>(1u, u_input.b & global1.c.x);
    var_0 = vec2<u32>(var_0.x, u_input.b);
    global2 = array<vec3<bool>, 8>();
    global1 = global0[_wgslsmith_index_u32(~(~abs(u_input.b)) >> (~(~arg_0) % 32u), 4u)];
    return arg_0;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> Struct_2 {
    let var_0 = vec4<bool>(arg_2, !arg_2, arg_2, true);
    global2 = array<vec3<bool>, 8>();
    let var_1 = ~_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(countOneBits(arg_1.c), global1.c), ~(~arg_0 ^ vec2<u32>(4294967295u, arg_0.x)));
    var var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(arg_0.x, 4294967295u), _wgslsmith_clamp_vec2_u32(max(vec2<u32>(~38311u, 1u), ~countOneBits(global1.c)), vec2<u32>(u_input.b | arg_0.x, u_input.b), global1.c));
    var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(func_3(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(26058u, global1.c.x, 16145u), vec3<u32>(1u, 1514u, u_input.b))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2298f, 1244f, -1376f))), global1.c.x, _wgslsmith_f_op_f32(560f + -376f)), ~_wgslsmith_mult_u32(~var_2.x, 1u)), ~arg_0);
    return arg_1;
}

fn func_1() -> i32 {
    global1 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.b, _wgslsmith_clamp_u32(global1.c.x, _wgslsmith_clamp_u32(~0u, u_input.b, reverseBits(u_input.b)), abs(u_input.b))), 4u)];
    global1 = func_4(vec2<u32>(func_2(reverseBits(4294967295u), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a, 9006i, u_input.c), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -2147483647i), vec2<i32>(-1i, 36190i)))), ~(~(66089u >> (0u % 32u)))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(countOneBits(u_input.b), global1.c.x), 4u)], global1.b.x != 1439f, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(855f, 292f, global1.b.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(578f, global1.b.x, -386f)) + global1.b.wxw))));
    return -2147483647i;
}

fn func_5(arg_0: vec2<i32>, arg_1: vec2<u32>) -> Struct_2 {
    global0 = array<Struct_2, 4>();
    global2 = array<vec3<bool>, 8>();
    global2 = array<vec3<bool>, 8>();
    let var_0 = max(_wgslsmith_add_vec3_u32(countOneBits(reverseBits(max(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(u_input.b, 0u, 1u)))), vec3<u32>(_wgslsmith_sub_u32(1u, u_input.b) ^ ~0u, _wgslsmith_div_u32(~u_input.b, ~28090u), u_input.b)), countOneBits(vec3<u32>(_wgslsmith_mod_u32(33759u, ~u_input.b), 8000u, ~(~arg_1.x))));
    global1 = func_4(max(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(arg_1.x, 0u), 37494u), arg_1, ~arg_1), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, arg_1.x), arg_1 | vec2<u32>(var_0.x, arg_1.x)), global1.c)), func_4(~(~arg_1), func_4(_wgslsmith_sub_vec2_u32(vec2<u32>(global1.c.x, var_0.x) << (vec2<u32>(68456u, var_0.x) % vec2<u32>(32u)), global1.c), func_4(max(vec2<u32>(arg_1.x, 4294967295u), var_0.yz), global0[_wgslsmith_index_u32(var_0.x, 4u)], false, Struct_1(global1.b.zyz)), any(vec3<bool>(true, true, true)), Struct_1(vec3<f32>(global1.b.x, global1.a, global1.a))), true, Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(global1.b.x, 2117f, -369f), global1.b.yzy))), true, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-148f, -709f, global1.a) * _wgslsmith_f_op_vec3_f32(-global1.b.xzy)))));
    return func_4(_wgslsmith_div_vec2_u32(select(vec2<u32>(61839u, 4294967295u), vec2<u32>(1u, 0u), false) & ~var_0.xy, ~(var_0.zz & var_0.xy)) >> (vec2<u32>(var_0.x, ~(arg_1.x << (5850u % 32u))) % vec2<u32>(32u)), Struct_2(_wgslsmith_f_op_f32(floor(global1.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.a, 1480f, 1000f, global1.a))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.b), _wgslsmith_f_op_vec4_f32(exp2(global1.b)))), global1.c), false, Struct_1(global1.b.yxy));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = func_5(vec2<i32>(arg_2.x, -(i32(-1i) * -2147483647i)) ^ ~(-arg_2.xx << (vec2<u32>(arg_0.c.x, 113337u) % vec2<u32>(32u))), abs(arg_0.c)).c;
    let var_1 = Struct_2(arg_0.b.x, _wgslsmith_f_op_vec4_f32(round(global1.b)), min(arg_0.c, ~(select(global1.c, vec2<u32>(0u, var_0.x), vec2<bool>(false, false)) >> (vec2<u32>(arg_0.c.x, arg_0.c.x) % vec2<u32>(32u)))));
    global1 = Struct_2(_wgslsmith_f_op_f32(step(global1.b.x, _wgslsmith_f_op_f32(min(arg_0.a, -2254f)))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_1.b.x, 243f)), _wgslsmith_f_op_f32(-1299f - 1000f))))), var_1.a, arg_1.a.x, _wgslsmith_f_op_f32(-arg_1.a.x)), arg_0.c & var_1.c);
    global1 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(14901u << (1u % 32u), var_0.x) << (1723u % 32u), reverseBits(47023u), countOneBits(45669u)), 4u)];
    let var_2 = abs(_wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.b, 1u, 0u, u_input.b) & vec4<u32>(u_input.b, 2987u, 1u, arg_0.c.x), reverseBits(vec4<u32>(u_input.b, var_1.c.x, var_1.c.x, 20123u))), vec4<u32>(30137u, 0u, arg_0.c.x, 0u)) | ~(~66703u));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 1i) & select(vec2<i32>(u_input.a, u_input.c), vec2<i32>(u_input.c, u_input.a), vec2<bool>(true, false)), vec2<i32>(func_1(), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, 0i), vec3<i32>(u_input.c, 10638i, -2147483647i)))), vec2<u32>(1u, 4294967295u)), Struct_1(_wgslsmith_f_op_vec3_f32(select(global1.b.wzw, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.a, 848f, -822f))), true))), vec3<i32>(-u_input.c, _wgslsmith_add_i32(i32(-1i) * -u_input.a, u_input.a >> (26038u % 32u)), ~(-_wgslsmith_add_i32(u_input.a, u_input.a))));
    let var_1 = vec2<i32>(-_wgslsmith_sub_i32(-1i, -1i) & ~reverseBits(u_input.a & u_input.a), (u_input.a >> ((u_input.b << ((u_input.b & 36258u) % 32u)) % 32u)) >> (countOneBits(~firstTrailingBit(u_input.b)) % 32u));
    let var_2 = global0[_wgslsmith_index_u32(global1.c.x, 4u)];
    global1 = global0[_wgslsmith_index_u32(firstTrailingBit(~u_input.b ^ ~_wgslsmith_mult_u32(global1.c.x & var_2.c.x, 84674u | var_2.c.x)), 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * -234f)), _wgslsmith_f_op_f32(ceil(var_2.b.x))) * _wgslsmith_f_op_vec3_f32(func_5(~vec2<i32>(-7092i, 18550i), vec2<u32>(global1.c.x, u_input.b)).b.wxw + vec3<f32>(global1.b.x, 300f, var_0.a.x))));
}

