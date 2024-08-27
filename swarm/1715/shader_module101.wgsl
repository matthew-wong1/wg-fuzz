struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: vec3<u32> = vec3<u32>(10055u, 45889u, 4294967295u);

var<private> global2: array<f32, 29>;

var<private> global3: Struct_2 = Struct_2(894f, Struct_1(false, vec4<i32>(2147483647i, i32(-2147483648), 15054i, 1i), 12737i, vec4<bool>(false, false, true, true)), Struct_1(true, vec4<i32>(1i, -1i, i32(-2147483648), -2206i), 1i, vec4<bool>(true, true, false, false)));

var<private> global4: f32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(~countOneBits(u_input.a)), select(abs(u_input.a & global1.x), 4294967295u, -1i >= u_input.c), u_input.a >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 35531u), global1.yy) & u_input.a) % 32u), u_input.a), vec4<u32>(_wgslsmith_dot_vec2_u32(global1.xx, select(vec2<u32>(0u, 0u), vec2<u32>(85420u, u_input.a), global3.c.d.yw)) & _wgslsmith_clamp_u32(~0u, 1u ^ global1.x, 1u), global1.x, 47288u, firstTrailingBit(~1u)));
    global3 = Struct_2(_wgslsmith_div_f32(1000f, global3.a), global3.b, global0[_wgslsmith_index_u32(global1.x, 30u)]);
    global2 = array<f32, 29>();
    var_0 = min(29666u << (~_wgslsmith_mod_u32(_wgslsmith_div_u32(global1.x, u_input.a), 1u) % 32u), _wgslsmith_add_u32(global1.x, 1u));
    var var_1 = -22329i;
    return _wgslsmith_div_f32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, global1.x) | vec3<u32>(u_input.a, global1.x, u_input.a), vec3<u32>(1u, ~0u, 4294967295u)), vec3<u32>(global1.x >> (global1.x % 32u), 1u, abs(52945u) | u_input.a)), 29u)], global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global1.x, firstLeadingBit(abs(select(0u, 4294967295u, false)))), 29u)]);
}

fn func_4(arg_0: f32) -> vec4<bool> {
    var var_0 = global1.x;
    global0 = array<Struct_1, 30>();
    let var_1 = global0[_wgslsmith_index_u32(~78066u, 30u)];
    var var_2 = Struct_2(-143f, Struct_1(any(!select(vec2<bool>(true, false), var_1.d.zw, var_1.d.wx)), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, -1i, 0i, global3.c.c), vec4<i32>(var_1.c, 4376i, 88076i, u_input.b), _wgslsmith_add_vec4_i32(global3.c.b, var_1.b)), _wgslsmith_add_i32(abs(var_1.c), max(1i, ~(-48277i))), vec4<bool>(true, ~53560u > ~u_input.a, var_1.d.x, !any(vec2<bool>(global3.b.a, global3.c.a)))), Struct_1(true, global3.c.b, -13209i, vec4<bool>(any(vec2<bool>(false, false)), false, !any(var_1.d.www), true)));
    global1 = vec3<u32>(~(~21221u) ^ (abs(~0u) & ~_wgslsmith_add_u32(0u, u_input.a)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~global1.xz, vec2<u32>(4294967295u, 30304u) >> (global1.yy % vec2<u32>(32u))), firstLeadingBit(select(~0u, 45379u, false)), 57695u), global1.x);
    return select(var_2.c.d, select(var_2.c.d, var_1.d, global3.b.d), var_1.d);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<bool>) -> f32 {
    global1 = ~(~(vec3<u32>(global1.x, 13735u, 4252u) & _wgslsmith_add_vec3_u32(select(vec3<u32>(global1.x, 117282u, global1.x), vec3<u32>(u_input.a, 54363u, global1.x), arg_1.d.xxy), ~vec3<u32>(4294967295u, 52966u, 8991u))));
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1539f + -664f), 894f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(17906u, 29u)]) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * 1f)));
    global0 = array<Struct_1, 30>();
    var var_1 = Struct_2(-1000f, Struct_1(all(arg_1.d), global3.c.b, abs(firstLeadingBit(global3.c.c)), func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), 1166f))), global3.c);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-648f + 1500f) * _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.x, 29u)]) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)))));
}

fn func_1() -> Struct_1 {
    let var_0 = !vec4<bool>(global3.c.a, !(global3.c.d.x && true) | true, false, select((u_input.a | 1u) != _wgslsmith_clamp_u32(79559u, global1.x, u_input.a), true, true));
    let var_1 = global0[_wgslsmith_index_u32(countOneBits(537u), 30u)];
    let var_2 = vec4<i32>(global3.b.c | var_1.c, _wgslsmith_add_i32(21948i, _wgslsmith_add_i32(1i, abs(var_1.b.x << (u_input.a % 32u)))), 2147483647i >> (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, global1.x, global1.x, 4294967295u), vec4<u32>(46299u, global1.x, 0u, 1u)) | ~vec4<u32>(u_input.a, u_input.a, global1.x, global1.x), abs(select(vec4<u32>(global1.x, 72588u, 90420u, 4294967295u), vec4<u32>(global1.x, u_input.a, 1u, global1.x), vec4<bool>(false, false, false, false)))) % 32u), 1i);
    let var_3 = global0[_wgslsmith_index_u32(~(~(~_wgslsmith_mod_u32(_wgslsmith_add_u32(global1.x, u_input.a), _wgslsmith_mult_u32(1u, global1.x)))), 30u)];
    var var_4 = vec2<f32>(-314f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(vec2<f32>(global3.a, global2[_wgslsmith_index_u32(u_input.a, 29u)]), global0[_wgslsmith_index_u32(firstTrailingBit(35806u), 30u)], var_0.zw)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1717f)))))));
    return global3.c;
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = global1.x;
    var var_1 = arg_0;
    var_0 = u_input.a;
    global0 = array<Struct_1, 30>();
    let var_2 = select(-select(_wgslsmith_mult_vec4_i32(~global3.b.b, vec4<i32>(global3.c.b.x, global3.b.c, var_1.c.c, 1i) ^ vec4<i32>(15964i, -2147483647i, 15011i, var_1.b.c)), var_1.b.b, vec4<bool>(true, func_1().a, var_1.b.d.x | false, true)), select(var_1.b.b, var_1.b.b, all(!func_1().d.yyx)), func_4(862f));
    return Struct_1(true, -vec4<i32>(func_1().c, -1410i, ~(~var_2.x), arg_0.b.c), ~(~u_input.c), vec4<bool>(u_input.a >= (0u | _wgslsmith_dot_vec4_u32(vec4<u32>(104981u, 1u, 1u, u_input.a), vec4<u32>(global1.x, 29593u, u_input.a, u_input.a))), func_1().d.x, arg_0.b.a, !func_4(_wgslsmith_f_op_f32(abs(-361f))).x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(global1.x, 29u)], 324f), _wgslsmith_f_op_f32(-427f * -1032f)))), global0[_wgslsmith_index_u32(u_input.a, 30u)], func_1()));
    var var_1 = ~_wgslsmith_sub_u32(19363u, 805u);
    var var_2 = 2147483647i;
    global4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global3.a, 771f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(~4294967295u, 29u)], -1000f))) + global2[_wgslsmith_index_u32(u_input.a, 29u)])));
    var_1 = global1.x;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -2510f), Struct_1(!(!var_0.a) | var_0.d.x, _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(global3.b.b, vec4<i32>(1i, u_input.b, -10i, var_0.c), global3.c.b), vec4<i32>(-1i, 2147483647i, 28198i, 70078i) ^ var_0.b) << (abs(~vec4<u32>(u_input.a, 74587u, global1.x, 1u)) % vec4<u32>(32u)), -4770i, func_4(441f)), func_1());
    var_2 = _wgslsmith_add_i32(~(-1i), i32(-1i) * -(reverseBits(var_3.b.c) | u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, select(func_1().c, ~(~global3.b.c), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 75366u, 20888u), vec3<u32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(42717u, 4294967295u, 22828u), vec3<u32>(global1.x, u_input.a, global1.x))) != ~_wgslsmith_clamp_u32(0u, u_input.a, 0u)), countOneBits(abs(u_input.a)) & ~_wgslsmith_sub_u32(countOneBits(5533u), _wgslsmith_add_u32(86252u, global1.x)));
}

