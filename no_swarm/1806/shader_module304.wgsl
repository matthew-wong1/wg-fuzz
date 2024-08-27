struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(1000f, 1000f), vec2<f32>(-497f, 749f), vec2<f32>(-364f, -149f), vec2<f32>(-830f, -223f), vec2<f32>(1657f, -198f), vec2<f32>(925f, -391f), vec2<f32>(1796f, -522f), vec2<f32>(-388f, 487f), vec2<f32>(-1686f, -944f), vec2<f32>(-462f, 714f), vec2<f32>(593f, -1010f), vec2<f32>(-587f, 1469f), vec2<f32>(756f, 521f), vec2<f32>(1473f, 1000f), vec2<f32>(182f, -1000f), vec2<f32>(1522f, 642f), vec2<f32>(1000f, 277f), vec2<f32>(970f, -971f), vec2<f32>(597f, -588f), vec2<f32>(-2000f, 525f), vec2<f32>(1469f, -262f), vec2<f32>(950f, -1540f), vec2<f32>(269f, 345f), vec2<f32>(832f, -954f), vec2<f32>(1571f, -695f), vec2<f32>(-2149f, 782f), vec2<f32>(1532f, 1501f), vec2<f32>(-119f, 956f));

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(vec2<f32>(738f, -1187f));

var<private> global3: vec2<bool>;

var<private> global4: vec2<f32> = vec2<f32>(640f, 1000f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = var_0.c;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_1.d.a));
    let var_3 = min(4294967295u, select(~min(u_input.b, ~var_0.b.x), u_input.a.x, true));
    let var_4 = arg_1;
    return var_0.d;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> vec2<u32> {
    var var_0 = arg_1;
    global2 = arg_0;
    var var_1 = var_0.a.ww;
    var var_2 = func_2(-_wgslsmith_sub_i32(u_input.c, -countOneBits(-1i)), arg_2);
    let var_3 = 963f;
    return arg_1.b.yy;
}

fn func_1() -> Struct_1 {
    global0 = array<vec2<f32>, 28>();
    var var_0 = vec4<bool>(true, false, any(vec2<bool>(all(!vec4<bool>(true, global3.x, global3.x, true)), global3.x)), false);
    let var_1 = reverseBits(~(func_3(func_2(u_input.c, Struct_2(vec4<i32>(72063i, u_input.c, -48541i, 2147483647i), u_input.a, false, Struct_1(global2.a))), Struct_2(vec4<i32>(-2147483647i, 21222i, u_input.c, 1i), vec3<u32>(133598u, 4294967295u, u_input.b), var_0.x, Struct_1(vec2<f32>(276f, -697f))), Struct_2(vec4<i32>(-52381i, -1i, u_input.c, u_input.c), u_input.a, false, Struct_1(vec2<f32>(668f, 956f)))) >> (~countOneBits(vec2<u32>(u_input.b, 70886u)) % vec2<u32>(32u))));
    let var_2 = Struct_2(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(-1i, -73605i, -1i, u_input.c), vec4<i32>(_wgslsmith_clamp_i32(0i, 2147483647i, u_input.c), u_input.c, u_input.c, -55440i)), _wgslsmith_mult_vec4_i32(min(countOneBits(vec4<i32>(u_input.c, 13368i, u_input.c, 343i)), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c) & vec4<i32>(-22541i, u_input.c, -1i, -2147483647i)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -26970i), vec2<i32>(1i, 15269i)), abs(u_input.c), u_input.c, 782i))), u_input.a, true, Struct_1(func_2(i32(-1i) * -343i, Struct_2(~vec4<i32>(u_input.c, 21754i, u_input.c, 1i), u_input.a, true, func_2(1i, Struct_2(vec4<i32>(2147483647i, 38967i, -5238i, u_input.c), vec3<u32>(u_input.a.x, u_input.a.x, var_1.x), false, Struct_1(global1.a))))).a));
    var var_3 = ~var_2.a.wz;
    return func_2(1i, Struct_2(firstLeadingBit(var_2.a), ~(~_wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(0u, var_1.x, var_1.x))), true, func_2(_wgslsmith_dot_vec4_i32(~var_2.a, var_2.a), var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-767f, global2.a.x))), global4.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1477f)))))));
    var var_2 = u_input.a.x >> (u_input.b % 32u);
    global2 = var_1;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(sign(1097f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2141f)), -773f), var_1.a.x);
    let var_4 = !(u_input.c >= 1i);
    let var_5 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.a.x, global4.x), _wgslsmith_f_op_f32(global2.a.x + -1296f)), -1000f) * global2.a.x)));
    let var_6 = select(vec4<bool>(global3.x, var_4, var_4, select(~u_input.c, ~43455i, true) == _wgslsmith_mult_i32(0i, 0i)), vec4<bool>(-(-1i | u_input.c) == -31037i, var_4, var_4, ((var_4 || global3.x) && any(vec4<bool>(false, global3.x, var_4, false))) & all(vec4<bool>(var_4, true, false, true))), global3.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(~u_input.c, u_input.c, true), -firstTrailingBit(u_input.c) >> (~_wgslsmith_clamp_u32(u_input.b, _wgslsmith_div_u32(u_input.b, 35801u), firstTrailingBit(17525u)) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-497f))));
}

