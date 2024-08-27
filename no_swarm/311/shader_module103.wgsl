struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec2<bool>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec3<i32>,
    d: bool,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(-132f, Struct_2(vec4<u32>(1u, 54770u, 0u, 0u), Struct_1(1021f, vec4<u32>(0u, 4294967295u, 53780u, 4294967295u), vec3<u32>(4294967295u, 1u, 61955u), vec4<f32>(837f, 1000f, -706f, 773f), true), Struct_1(1000f, vec4<u32>(20569u, 4294967295u, 2285u, 36577u), vec3<u32>(1u, 4294967295u, 29462u), vec4<f32>(1000f, -2374f, 1000f, 548f), true)), vec3<i32>(-1i, 39415i, 2147483647i), false, Struct_3(Struct_1(-1829f, vec4<u32>(0u, 1u, 1u, 1u), vec3<u32>(37592u, 19177u, 55470u), vec4<f32>(-221f, -251f, -450f, -1758f), true), 0i, vec2<bool>(true, true), 20256i, vec3<bool>(false, false, false)));

var<private> global1: Struct_1;

var<private> global2: array<vec3<f32>, 4>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2(arg_0: vec3<f32>, arg_1: u32) -> Struct_3 {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(arg_0.x + arg_0.x), global0.b, min(_wgslsmith_clamp_vec3_i32(select(global0.c, global0.c, select(vec3<bool>(true, global1.e, global0.b.c.e), global0.e.e, global1.e)), select(vec3<i32>(1i, 1i, u_input.c.x), global0.c, false) << (firstLeadingBit(global1.b.wyy) % vec3<u32>(32u)), abs(global0.c)), select(~abs(vec3<i32>(u_input.c.x, u_input.c.x, global0.c.x)), -(~u_input.c), global1.e)), false, global0.e);
    return global0.e;
}

fn func_3(arg_0: Struct_3) -> Struct_4 {
    var var_0 = ~(-(vec2<i32>(-1i) * -vec2<i32>(1i, global0.c.x)));
    global2 = array<vec3<f32>, 4>();
    let var_1 = !(!vec4<bool>(!any(global0.e.e.yx), any(vec4<bool>(true, false, false, false)), global1.e, !global0.e.e.x));
    global0 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-798f - global0.b.b.d.x))) * _wgslsmith_f_op_f32(-func_2(arg_0.a.d.yzx, u_input.b).a.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_0.a.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.d.x) * -2091f))), global0.b, ~(_wgslsmith_sub_vec3_i32(u_input.c, -global0.c) & vec3<i32>(-37702i, global0.e.b, -84520i)), arg_0.a.a == _wgslsmith_f_op_f32(f32(-1f) * -490f), arg_0);
    let var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(min(arg_0.d, var_0.x) ^ _wgslsmith_mod_i32(~(-54252i), arg_0.b), 15697i, ~_wgslsmith_sub_i32(0i, func_2(vec3<f32>(global1.d.x, global0.e.a.d.x, global1.a), global1.b.x).b)), vec3<i32>(45647i, _wgslsmith_dot_vec4_i32(reverseBits(max(vec4<i32>(arg_0.b, var_0.x, var_0.x, u_input.c.x), vec4<i32>(u_input.c.x, arg_0.b, var_0.x, -31867i))), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, arg_0.b, arg_0.b, 41371i), abs(vec4<i32>(-27941i, -26662i, arg_0.b, 12596i)))), reverseBits(-60318i)));
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(floor(929f)))))), Struct_2(vec4<u32>(~(~global0.e.a.c.x), ~func_2(vec3<f32>(global1.a, arg_0.a.d.x, -638f), 38934u).a.c.x, _wgslsmith_dot_vec3_u32(global1.b.zzy, global0.e.a.c) | (u_input.b ^ global1.c.x), 3874u), func_2(arg_0.a.d.wzz, ~(u_input.b << (global1.b.x % 32u))).a, arg_0.a), global0.c, false, global0.e);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_4) -> u32 {
    let var_0 = arg_1.c.d.x;
    var var_1 = global0.b;
    global0 = func_3(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(arg_1.c.d.xxy))), var_1.b.b.x));
    var var_2 = select(func_3(func_3(arg_2.e).e).e.c, vec2<bool>(all(select(vec2<bool>(false, true), func_2(global1.d.zwy, 58876u).c, true)), arg_0.d), arg_2.d);
    var var_3 = _wgslsmith_mod_i32(~(-1i), _wgslsmith_mod_i32(1i, _wgslsmith_sub_i32(abs(-2147483647i), _wgslsmith_clamp_i32(arg_0.c.x, global0.e.d, global0.c.x)) & ~(-1i)));
    return ~(~firstTrailingBit(global0.b.b.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 28921u;
    var var_1 = global0.e.a.d.zz;
    global2 = array<vec3<f32>, 4>();
    let var_2 = vec4<u32>(_wgslsmith_mod_u32(4294967295u, (min(global1.c.x, 4294967295u) ^ (1u >> (1u % 32u))) >> (~(~global1.b.x) % 32u)), ~4294967295u, u_input.a, max(min(~4294967295u, func_1(Struct_4(-272f, global0.b, u_input.c, global1.e, Struct_3(global0.e.a, -2147483647i, vec2<bool>(global1.e, true), 1i, global0.e.e)), global0.b, Struct_4(var_1.x, global0.b, vec3<i32>(-11624i, 2147483647i, u_input.c.x), false, global0.e))), func_1(func_3(func_2(global1.d.xwy, 82035u)), Struct_2(~global1.b, global0.e.a, func_3(Struct_3(Struct_1(-2953f, global0.e.a.b, global0.e.a.b.yzy, vec4<f32>(-1999f, 192f, 1062f, global0.e.a.a), false), -42930i, global0.e.e.zz, u_input.c.x, global0.e.e)).b.b), Struct_4(_wgslsmith_f_op_f32(global1.a + -284f), global0.b, -vec3<i32>(1i, global0.e.d, u_input.c.x), true, Struct_3(Struct_1(-1000f, vec4<u32>(0u, u_input.a, 48542u, global0.e.a.b.x), vec3<u32>(0u, 60161u, 0u), global0.b.c.d, global1.e), 1i, global0.e.c, global0.e.b, global0.e.e)))));
    let var_3 = global0.e.a;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(max(var_3.b.x, u_input.b), 4294967295u, max(11985u, 4294967295u)), firstTrailingBit(_wgslsmith_mult_vec3_u32(var_2.yzx, global1.c)))), -2147483647i, ~(~(~global1.c.yz)) ^ reverseBits(min(vec2<u32>(1u, var_2.x) & var_3.b.yy, global0.b.c.b.wy)));
}

