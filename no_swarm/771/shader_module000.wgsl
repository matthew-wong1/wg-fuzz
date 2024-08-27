struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: Struct_3 = Struct_3(-825f, Struct_2(Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -41500i, -1i), false, vec3<u32>(18189u, 4294967295u, 39158u), vec3<bool>(true, false, false)), -27746i, Struct_1(vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), -1i), true, vec3<u32>(3639u, 5900u, 44150u), vec3<bool>(true, false, false)), Struct_1(vec4<i32>(-10066i, -6369i, 2147483647i, 14359i), false, vec3<u32>(1u, 9329u, 0u), vec3<bool>(false, true, false))), 1848f);

var<private> global2: array<vec3<bool>, 27> = array<vec3<bool>, 27>(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> Struct_1 {
    let var_0 = global1.b.a.d.x;
    global1 = Struct_3(379f, global1.b, global1.c);
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2003f, _wgslsmith_div_f32(global1.a, global1.a)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.c, global1.c), vec2<f32>(global1.a, 498f))), vec2<f32>(global1.a, global1.c)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(global1.c)), 518f));
    let var_2 = global1.b.c;
    let var_3 = Struct_3(-1601f, Struct_2(global1.b.c, var_2.a.x, global1.b.d, Struct_1(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(97071i, 0i, 0i, var_2.a.x)), global1.b.a.a), any(!var_2.d), var_2.c >> (abs(vec3<u32>(70362u, 19460u, 0u)) % vec3<u32>(32u)), !global1.b.c.d)), var_1.x);
    return global1.b.c;
}

fn func_1() -> i32 {
    let var_0 = (38773u ^ global1.b.d.c.x) ^ ~_wgslsmith_clamp_u32(~_wgslsmith_add_u32(u_input.d.x, 1u), 16701u, 1u);
    let var_1 = 4294967295u;
    var var_2 = ~countOneBits(_wgslsmith_div_u32(var_1, u_input.d.x));
    var var_3 = Struct_2(Struct_1(-abs(vec4<i32>(-1i, 10414i, 14252i, u_input.c)), all(vec4<bool>(global1.b.d.d.x & true, false, false, global1.b.d.b)), vec3<u32>(1u, (0u & var_1) << (4294967295u % 32u), ~select(var_0, var_1, true)), select(!(!vec3<bool>(global1.b.a.b, true, global1.b.d.b)), global1.b.a.d, !vec3<bool>(false, global1.b.d.d.x, true))), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-1i, ~u_input.b.x), i32(-1i) * -38642i), min(~0i, u_input.b.x), ~u_input.c), global1.b.a, func_2());
    global2 = array<vec3<bool>, 27>();
    return select(1i, 2147483647i, var_3.a.b);
}

fn func_3(arg_0: vec4<u32>) -> vec3<u32> {
    global2 = array<vec3<bool>, 27>();
    let var_0 = 20388u;
    let var_1 = global1.b;
    global2 = array<vec3<bool>, 27>();
    let var_2 = !vec3<bool>(true, var_1.a.b, any(!(!global1.b.c.d)));
    return firstTrailingBit(var_1.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<i32>(~u_input.c, u_input.c, func_1(), global1.b.d.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.a))) < 106f, ~(~select(func_3(vec4<u32>(global1.b.d.c.x, 433u, 0u, 4294967295u)), global1.b.a.c, !global1.b.a.d)), global2[_wgslsmith_index_u32(global1.b.c.c.x, 27u)]);
    global2 = array<vec3<bool>, 27>();
    var var_1 = Struct_2(Struct_1(firstTrailingBit(vec4<i32>(-1i, 15521i, -43548i, -1i)) << ((vec4<u32>(4294967295u, var_0.c.x, 0u, var_0.c.x) << (firstTrailingBit(vec4<u32>(var_0.c.x, 511u, var_0.c.x, global1.b.a.c.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), var_0.d.x, global1.b.d.c, select(global2[_wgslsmith_index_u32(~43167u, 27u)], vec3<bool>(var_0.d.x, true, all(global1.b.c.d.xx)), true)), ~(-_wgslsmith_dot_vec2_i32(-vec2<i32>(global1.b.a.a.x, -1i), ~var_0.a.zw)), func_2(), func_2());
    var var_2 = var_1.a.a.x;
    let var_3 = Struct_1(abs(-(~var_1.d.a)), true, var_1.a.c, !vec3<bool>(firstTrailingBit(4242u) <= 4294967295u, false, global1.b.a.d.x | select(global1.b.d.b, false, true)));
    let var_4 = global1.b.a.a.xy;
    var var_5 = ~select(~vec3<i32>(abs(global1.b.d.a.x), u_input.a & var_1.b, var_0.a.x), global1.b.a.a.xzz, func_2().b);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(vec4<u32>(33327u, 9059u, u_input.e, 56187u) << (vec4<u32>(global1.b.a.c.x, var_3.c.x, 10787u, 1u) % vec4<u32>(32u))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.a))));
}

