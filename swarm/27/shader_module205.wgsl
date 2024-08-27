struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: i32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_4;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: bool, arg_3: u32) -> Struct_2 {
    let var_0 = Struct_1(global0.c, select(select(!(!vec4<bool>(global0.b.x, global0.b.x, global1.b.x, true)), vec4<bool>(all(global1.b), false, false, true), select(vec4<bool>(arg_0, global1.b.x, arg_0, arg_2), vec4<bool>(arg_0, true, arg_2, true), select(vec4<bool>(global0.b.x, global0.b.x, global1.a.b.x, false), vec4<bool>(false, global0.b.x, true, arg_0), global0.b.x))), !(!(!vec4<bool>(true, false, arg_0, global1.a.b.x))), global1.a.b.x), firstLeadingBit(0u), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-448f, global1.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.a.a)) + -1277f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a * 2327f), -897f), _wgslsmith_f_op_f32(ceil(global1.a.a))))), arg_1);
    var var_1 = global0.c.x;
    let var_2 = true;
    global1 = Struct_4(global1.a, !vec3<bool>(var_2, true, all(vec4<bool>(true, var_0.b.x, true, true))), select(global1.c, global1.c, select(all(var_0.b), global0.b.x, var_0.b.x)));
    var var_3 = var_0.b.x;
    return global1.a;
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_2, arg_3: Struct_3) -> vec4<bool> {
    global1 = Struct_4(func_2(select(arg_0, global0.b.x, !arg_3.d.b.x), 0u, any(arg_3.e.b.zyw), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.c.zz | u_input.c.zy, vec2<u32>(arg_3.e.e, arg_3.b.x)), abs(vec2<u32>(arg_3.b.x, 56326u) & arg_3.b.zx))), vec3<bool>(all(arg_3.e.b) == arg_3.a, true, true), global1.c);
    global1 = Struct_4(func_2(true, arg_3.b.x, arg_0, ~_wgslsmith_dot_vec3_u32(~arg_3.b, u_input.c)), arg_3.e.b.yzx, abs(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_2.c.x, ~44320i, 1i), global1.c)));
    var var_0 = Struct_4(global1.a, !vec3<bool>(any(vec3<bool>(true, arg_0, arg_2.b.x)), all(select(arg_3.e.b, arg_3.e.b, arg_3.e.b)), global1.b.x), vec3<i32>(global0.c.x, arg_2.c.x, global0.c.x));
    var var_1 = Struct_1(firstTrailingBit(firstLeadingBit(-vec2<i32>(-1i, 1i))), select(select(!vec4<bool>(false, false, true, global0.b.x), vec4<bool>(func_2(arg_0, u_input.c.x, global1.a.b.x, arg_3.e.c).b.x, arg_0, true, true), arg_3.e.b), !(!arg_3.e.b), select(select(arg_3.e.b, vec4<bool>(arg_0, global0.b.x, var_0.b.x, true), true), vec4<bool>(all(vec4<bool>(true, global0.b.x, true, false)), all(vec2<bool>(arg_3.d.b.x, true)), any(arg_3.e.b), var_0.b.x), true)), reverseBits(_wgslsmith_dot_vec3_u32(u_input.c, _wgslsmith_div_vec3_u32(~u_input.a, u_input.a))), arg_3.e.d, u_input.c.x);
    var var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(abs(arg_3.b), max(arg_3.b, u_input.a)) & select(select(u_input.a, vec3<u32>(var_1.c, 5625u, 0u), var_0.b), vec3<u32>(23695u, 4294967295u, arg_3.b.x), select(var_1.b.zwx, vec3<bool>(var_1.b.x, var_1.b.x, arg_0), global1.b)), u_input.c) > u_input.a.x;
    return vec4<bool>(true, false, false, _wgslsmith_f_op_f32(exp2(global1.a.a)) >= func_2(u_input.c.x <= ~u_input.a.x, abs(~4294967295u), any(select(vec4<bool>(var_1.b.x, true, true, arg_2.b.x), vec4<bool>(true, true, true, false), arg_3.e.b)), arg_1).a);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<u32>) -> Struct_2 {
    global1 = Struct_4(func_2(!(~arg_1.x > ~3603u), 1u, any(vec4<bool>(all(vec4<bool>(global0.b.x, false, global1.a.b.x, true)), false, !global1.b.x, true)), 4294967295u), !(!vec3<bool>(all(vec4<bool>(true, false, false, true)), false, global0.b.x)), firstLeadingBit(~_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(u_input.b, 15778i, global0.c.x)), countOneBits(vec3<i32>(1i, u_input.b, -65869i)))));
    let var_0 = select(vec4<bool>(global0.b.x, func_2(false, firstLeadingBit(~arg_1.x), any(func_3(global1.b.x, arg_1.x, global1.a, Struct_3(true, vec3<u32>(u_input.a.x, 11173u, 0u), u_input.b, global1.a, Struct_1(global0.c, vec4<bool>(global0.b.x, global1.a.b.x, true, global1.b.x), 4294967295u, vec4<f32>(-356f, -603f, global0.a, 518f), 0u)))), min(select(46410u, u_input.c.x, global1.b.x), 1065u)).b.x, true, func_3(global0.b.x, arg_1.x, global1.a, Struct_3(global1.a.b.x, u_input.c, 0i, global1.a, Struct_1(arg_0.xy, vec4<bool>(true, global1.a.b.x, global1.a.b.x, true), arg_1.x, vec4<f32>(global1.a.a, global1.a.a, -199f, 1323f), 1u))).x | true), vec4<bool>(-(global1.a.c.x << (1u % 32u)) > ~(~arg_0.x), func_3(global0.b.x, u_input.c.x, Struct_2(-1244f, !global0.b, _wgslsmith_div_vec2_i32(vec2<i32>(global0.c.x, 25408i), global0.c)), Struct_3(false, vec3<u32>(4294967295u, 0u, arg_1.x), 2147483647i, Struct_2(global0.a, vec2<bool>(false, false), global0.c), Struct_1(arg_0.yz, vec4<bool>(global0.b.x, true, global1.a.b.x, true), arg_1.x, vec4<f32>(global0.a, -872f, global1.a.a, global1.a.a), arg_1.x))).x, global0.b.x, _wgslsmith_f_op_f32(global0.a - 911f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a))), func_3(!(!any(vec4<bool>(global1.a.b.x, global1.a.b.x, false, global0.b.x))), 62258u, Struct_2(-212f, global0.b, arg_0.yz), Struct_3(global0.b.x, ~(~u_input.a), arg_0.x << (~0u % 32u), global1.a, Struct_1(global1.c.yz >> (u_input.a.yy % vec2<u32>(32u)), vec4<bool>(false, global1.a.b.x, false, true), _wgslsmith_div_u32(4294967295u, u_input.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, 1000f, global0.a, global1.a.a)), abs(u_input.a.x)))));
    var var_1 = -2168f;
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1148f, 681f, -1288f, global1.a.a) + vec4<f32>(680f, -1052f, -960f, global0.a)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1230f, global0.a, global0.a, global0.a), vec4<f32>(796f, global0.a, global1.a.a, 805f))))))));
    let var_3 = Struct_3(true, ~(~arg_1.xzw), firstLeadingBit(-u_input.b), global1.a, Struct_1(vec2<i32>(arg_0.x, arg_0.x), !(!select(vec4<bool>(false, false, true, global0.b.x), vec4<bool>(false, var_0.x, false, var_0.x), true)), arg_1.x, vec4<f32>(_wgslsmith_f_op_f32(abs(global0.a)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-143f * _wgslsmith_f_op_f32(min(-1000f, -463f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.a), 1008f)), ~arg_1.x));
    return Struct_2(var_2.x, select(global0.b, var_3.d.b, select(!global1.a.b.x, func_2(all(var_0), 132298u, var_0.x, 0u).b.x, true)), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_add_i32(0i, 22427i), ~u_input.b), vec2<i32>(~global1.a.c.x, arg_0.x)), vec2<i32>(-1i) * -(~global1.a.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(false, u_input.a, 0i, func_1(vec4<i32>(u_input.b, _wgslsmith_add_i32(0i, global0.c.x << (u_input.a.x % 32u)), firstTrailingBit(38119i), i32(-1i) * -8446i), vec4<u32>(4294967295u, 0u, abs(u_input.a.x >> (u_input.a.x % 32u)), 0u & u_input.c.x)), Struct_1(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(global0.c, global0.c), func_2(true, 62651u, false, u_input.c.x).c), countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, 17762i), global0.c, global0.c))), !(!func_3(false, u_input.a.x, global1.a, Struct_3(false, vec3<u32>(1u, u_input.a.x, 43047u), 2147483647i, Struct_2(811f, global0.b, global1.c.yy), Struct_1(vec2<i32>(global0.c.x, -1i), vec4<bool>(global0.b.x, global1.b.x, true, true), 4294967295u, vec4<f32>(global1.a.a, 678f, -1166f, -421f), 1u)))), 0u, vec4<f32>(804f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -260f)), _wgslsmith_f_op_f32(floor(global0.a)), _wgslsmith_f_op_f32(f32(-1f) * -891f)), ~_wgslsmith_sub_u32(~u_input.c.x, u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(34155u, vec4<u32>(u_input.c.x ^ _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.c.yy, vec2<u32>(0u, u_input.a.x)), 29346u), 24883u, var_0.b.x, 4294967295u));
}

