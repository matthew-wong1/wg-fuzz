struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10>;

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec2<u32>(4294967295u, 41263u)), Struct_1(vec2<u32>(24557u, 4294967295u)), Struct_1(vec2<u32>(1u, 4294967295u)), Struct_1(vec2<u32>(116488u, 0u)), Struct_1(vec2<u32>(23947u, 14667u)), Struct_1(vec2<u32>(117909u, 1u)), Struct_1(vec2<u32>(27571u, 11781u)), Struct_1(vec2<u32>(137044u, 4294967295u)), Struct_1(vec2<u32>(0u, 1u)), Struct_1(vec2<u32>(1u, 1u)), Struct_1(vec2<u32>(0u, 4294967295u)), Struct_1(vec2<u32>(79898u, 1u)), Struct_1(vec2<u32>(0u, 4294967295u)), Struct_1(vec2<u32>(45314u, 21675u)), Struct_1(vec2<u32>(90692u, 4294967295u)), Struct_1(vec2<u32>(15861u, 0u)), Struct_1(vec2<u32>(22733u, 47447u)));

var<private> global2: Struct_3;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec2<u32>(11328u, 1u)), true, -9243i, Struct_1(vec2<u32>(1u, 0u)));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<u32> {
    global0 = array<i32, 10>();
    let var_0 = any(vec3<bool>(!all(vec3<bool>(true, true, true)), true, !all(select(vec3<bool>(true, true, true), vec3<bool>(global3.b, global3.b, global2.b.x), vec3<bool>(global2.b.x, false, false)))));
    var var_1 = Struct_3(all(!(!vec4<bool>(global3.b, global3.b, global2.b.x, global2.a))), vec2<bool>(true, true), global2.c);
    let var_2 = min(firstLeadingBit(firstTrailingBit(u_input.b.yy)), min(vec2<i32>(global3.c, ~(global0[_wgslsmith_index_u32(4294967295u, 10u)] & global3.c)), _wgslsmith_add_vec2_i32(-(u_input.d.yx << (global3.a.a % vec2<u32>(32u))), ~vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 10u)], -49737i))));
    let var_3 = ~vec3<u32>(_wgslsmith_add_u32(~(~u_input.c), abs(56134u)), 105639u, abs(0u));
    return _wgslsmith_mult_vec2_u32((min(~global3.a.a, vec2<u32>(19663u, global3.a.a.x)) & global3.a.a) ^ ~vec2<u32>(1u, ~19585u), var_3.yz);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    global1 = array<Struct_1, 17>();
    let var_0 = arg_1.b;
    let var_1 = global1[_wgslsmith_index_u32(max(_wgslsmith_sub_u32(global3.a.a.x, ~_wgslsmith_div_u32(61659u, 4972u) << (0u % 32u)), ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(~4294967295u, arg_1.a.a.x), global3.a.a.x, 67649u)), 17u)];
    var var_2 = _wgslsmith_add_i32(47899i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 0u, 4294967295u), vec3<u32>(global3.d.a.x, global3.a.a.x, arg_1.d.a.x)), 10u)]);
    var var_3 = ~_wgslsmith_sub_vec4_i32(-(_wgslsmith_add_vec4_i32(vec4<i32>(global3.c, 21723i, u_input.d.x, arg_1.c), vec4<i32>(2939i, -3700i, global3.c, -50361i)) & (vec4<i32>(1i, u_input.b.x, arg_1.c, -1i) | vec4<i32>(-2147483647i, u_input.d.x, arg_1.c, -21075i))), -_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(global3.c, u_input.d.x, 2147483647i, u_input.b.x)), vec4<i32>(-16551i, arg_1.c, -2147483647i, u_input.b.x), vec4<i32>(-18630i, 2147483647i, 2147483647i, 54331i) ^ vec4<i32>(-2147483647i, arg_1.c, u_input.b.x, -59260i)));
    return Struct_1(func_3());
}

fn func_4(arg_0: Struct_1) -> vec3<u32> {
    global3 = Struct_2(global1[_wgslsmith_index_u32(arg_0.a.x, 17u)], false == global2.b.x, 2147483647i, global3.d);
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.c.xzx + vec3<f32>(global2.c.x, global2.c.x, _wgslsmith_f_op_f32(global2.c.x - global2.c.x))), _wgslsmith_f_op_vec3_f32(global2.c.zwy - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.x, 459f, global2.c.x)) + vec3<f32>(948f, global2.c.x, global2.c.x))))));
    var var_1 = true;
    global0 = array<i32, 10>();
    var var_2 = Struct_1(~vec2<u32>(~abs(4294967295u), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, global3.a.a.x, 42997u), vec3<u32>(arg_0.a.x, 0u, 0u)))));
    return vec3<u32>(1u, ~(~(~u_input.a)), var_2.a.x);
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_3 {
    var var_0 = false;
    var var_1 = select(firstTrailingBit(vec3<u32>(u_input.a, arg_0, 34182u) ^ firstTrailingBit(vec3<u32>(0u, global3.d.a.x, u_input.c))), func_4(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(729f, global2.c.x) - global2.c.yy), Struct_2(Struct_1(vec2<u32>(u_input.a, arg_1)), global2.a, global0[_wgslsmith_index_u32(35801u, 10u)], Struct_1(global3.d.a)), _wgslsmith_f_op_f32(abs(global2.c.x)))), select(select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, global3.b), vec3<bool>(false, false, global3.b), vec3<bool>(true, global2.a, global2.a)), vec3<bool>(global3.b, global2.b.x, global2.b.x)), vec3<bool>(any(vec4<bool>(global2.a, false, false, global2.b.x)), any(vec3<bool>(false, false, global2.a)), false), select(vec3<bool>(false, global2.a, global2.b.x), select(vec3<bool>(global2.b.x, true, global3.b), vec3<bool>(global3.b, false, true), vec3<bool>(global2.a, global3.b, global3.b)), true))) ^ _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1, global3.a.a.x, u_input.a), ~vec3<u32>(1u, arg_1, arg_0)), min(vec3<u32>(4294967295u, arg_1, 38745u), vec3<u32>(0u, 4294967295u, 68782u)) << (~vec3<u32>(global3.d.a.x, arg_1, arg_0) % vec3<u32>(32u))), ~abs(~vec3<u32>(1u, global3.d.a.x, u_input.c)));
    let var_2 = Struct_3(global3.b, !select(select(select(global2.b, vec2<bool>(true, true), global2.b), !vec2<bool>(false, global2.a), global2.b), !select(global2.b, global2.b, global3.b), select(!global2.b, global2.b, vec2<bool>(false, false))), global2.c);
    var_1 = ~(~(~vec3<u32>(4294967295u, arg_1, func_2(global2.c.wx, Struct_2(global1[_wgslsmith_index_u32(4294967295u, 17u)], global2.b.x, 6933i, global1[_wgslsmith_index_u32(0u, 17u)]), 1000f).a.x)));
    var var_3 = -_wgslsmith_mult_i32(global3.c, _wgslsmith_div_i32(u_input.b.x, ~23545i ^ global0[_wgslsmith_index_u32(603u, 10u)]));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(firstTrailingBit(global3.d.a.x), 35713u);
    let var_0 = global2.b;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.x * _wgslsmith_f_op_f32(round(270f))) + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-662f, global2.c.x), 358f)));
    let var_2 = global2.c;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(4294967295u, global3.a.a.x).c.x + -1096f))), 1000f, -1693f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -342f) * global2.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(1029f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)) * global2.c.x), u_input.c);
}

