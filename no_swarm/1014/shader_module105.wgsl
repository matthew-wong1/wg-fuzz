struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), 1i, 0i);

var<private> global1: array<Struct_4, 17>;

var<private> global2: bool = true;

var<private> global3: vec4<f32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    return 1u;
}

fn func_2() -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(1u, 17u)];
    var var_1 = Struct_3(true, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-573f, 1717f), _wgslsmith_f_op_f32(round(424f)))), _wgslsmith_sub_u32(u_input.a, ~(~u_input.a)), u_input.a, ~(~vec4<u32>(0u, 26450u, 1u, u_input.a))));
    let var_2 = -u_input.b.x ^ u_input.b.x;
    global1 = array<Struct_4, 17>();
    var var_3 = abs(_wgslsmith_add_vec2_i32(vec2<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 1423i, 0i, u_input.b.x), vec4<i32>(18423i, 2147483647i, 0i, global0.x))) | abs(~global0.yx), _wgslsmith_add_vec2_i32(~global0.zy, firstLeadingBit(vec2<i32>(-22343i, u_input.b.x)))));
    return min(var_1.b.d.x, _wgslsmith_mod_u32(64631u, (firstLeadingBit(56520u) ^ func_3(Struct_4(var_1.a), var_1.b.a, Struct_1(u_input.b.x, vec3<u32>(61625u, var_1.b.b, 106697u), vec3<i32>(var_3.x, var_2, -16183i)), Struct_2(var_1.b.a, u_input.a, 4294967295u, var_1.b.d))) | min(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.c, 10180u), var_1.b.d.yx), 4294967295u | var_1.b.d.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: u32, arg_3: Struct_2) -> Struct_2 {
    var var_0 = ~vec3<u32>(u_input.a, ~_wgslsmith_clamp_u32(4294967295u, arg_3.c, countOneBits(4294967295u)), u_input.a);
    var var_1 = Struct_3(true, arg_3);
    var_1 = Struct_3(!(~(~arg_3.c) <= arg_2), var_1.b);
    var var_2 = Struct_1(abs(global0.x), abs(firstTrailingBit(max(abs(var_1.b.d.yyw), ~vec3<u32>(1u, arg_0.c, 86977u)))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-56222i, global0.x, ~(-2147483647i)), ~vec3<i32>(2147483647i, global0.x, 80513i)), -(~(~(-2147483647i))), 0i));
    let var_3 = Struct_4(all(!select(!vec4<bool>(var_1.a, false, var_1.a, true), select(vec4<bool>(true, true, var_1.a, false), vec4<bool>(true, var_1.a, var_1.a, false), var_1.a), select(vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), vec4<bool>(false, false, true, false), var_1.a))));
    return Struct_2(arg_0.a, 4294967295u, ~(~(~arg_3.c)), vec4<u32>(_wgslsmith_mod_u32(30640u, _wgslsmith_mult_u32(var_2.b.x, firstLeadingBit(arg_0.c))), arg_2, _wgslsmith_mod_u32(arg_3.c | _wgslsmith_div_u32(26411u, 1u), ~var_1.b.b), ~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(var_1.b.d.wzx, vec3<u32>(var_1.b.c, arg_0.d.x, u_input.a)), arg_0.d.xyy)));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: i32, arg_3: bool) -> Struct_2 {
    let var_0 = -2147483647i;
    let var_1 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global3.x, _wgslsmith_f_op_f32(trunc(-1321f))), global3.zy));
    let var_2 = func_4(Struct_2(306f, 7943u, ~(~41108u), ~vec4<u32>(5726u, _wgslsmith_add_u32(u_input.a, 6819u), abs(u_input.a), abs(u_input.a))), _wgslsmith_sub_vec3_i32(vec3<i32>(-arg_0, u_input.b.x, -(arg_0 >> (27686u % 32u))), -(countOneBits(vec3<i32>(1i, arg_0, global0.x)) & _wgslsmith_mult_vec3_i32(vec3<i32>(-99388i, var_0, var_0), vec3<i32>(14096i, 2147483647i, arg_1)))), ~(~u_input.a ^ _wgslsmith_div_u32(u_input.a, u_input.a)) >> (func_2() % 32u), Struct_2(_wgslsmith_f_op_f32(755f + _wgslsmith_f_op_f32(-global3.x)), ~_wgslsmith_add_u32(_wgslsmith_sub_u32(0u, u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(14500u, 1u, 15579u, 0u), vec4<u32>(4294967295u, 0u, u_input.a, u_input.a))), ~(min(4628u, u_input.a) >> (_wgslsmith_add_u32(0u, u_input.a) % 32u)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, 4294967295u, 1u, 59246u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 39319u, 31176u), vec4<u32>(1u, 4294967295u, u_input.a, u_input.a)) << (abs(vec4<u32>(0u, u_input.a, u_input.a, 4294967295u)) % vec4<u32>(32u)), ~countOneBits(vec4<u32>(86911u, 4008u, u_input.a, u_input.a)))));
    let var_3 = Struct_1(-47669i, ~_wgslsmith_sub_vec3_u32(func_4(func_4(Struct_2(var_2.a, u_input.a, u_input.a, var_2.d), vec3<i32>(u_input.b.x, u_input.b.x, 29012i), var_2.b, Struct_2(574f, 1u, var_2.c, var_2.d)), vec3<i32>(-2147483647i, arg_0, arg_0), select(51623u, 1u, arg_3), func_4(var_2, vec3<i32>(u_input.b.x, u_input.b.x, arg_0), u_input.a, var_2)).d.yxy, ~abs(var_2.d.wwx)), _wgslsmith_sub_vec3_i32(-(~_wgslsmith_div_vec3_i32(vec3<i32>(var_0, 0i, 2147483647i), vec3<i32>(u_input.b.x, -1i, var_0))), firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, var_0, 1i) >> (vec3<u32>(u_input.a, 17938u, var_2.c) % vec3<u32>(32u)), vec3<i32>(var_0, var_0, arg_1) << (var_2.d.wxw % vec3<u32>(32u))))));
    global1 = array<Struct_4, 17>();
    return func_4(var_2, _wgslsmith_sub_vec3_i32(-vec3<i32>(_wgslsmith_sub_i32(arg_0, -2147483647i), -arg_0, 1i), vec3<i32>(global0.x | -1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0, -45249i, arg_2, arg_1), vec4<i32>(u_input.b.x, -3621i, global0.x, -25272i)), arg_0)), var_3.b.x, Struct_2(var_2.a, u_input.a, ~66290u, vec4<u32>(~u_input.a, ~(~u_input.a), ~_wgslsmith_mult_u32(var_3.b.x, u_input.a), ~(~var_2.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-275f, global3.x), global3.x, 550f));
    let var_1 = global0.xx;
    var var_2 = func_1(u_input.b.x, -(~_wgslsmith_clamp_i32(45372i, 20186i, 33546i)) ^ min(global0.x, -2147483647i), 20406i, !(global3.x == global3.x));
    let var_3 = 18362u;
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(381f, global3.x, _wgslsmith_f_op_f32(-var_2.a)), vec3<f32>(global3.x, _wgslsmith_div_f32(-511f, -1074f), _wgslsmith_f_op_f32(-var_2.a))) - global3.yyw) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-265f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-628f, var_2.a)), _wgslsmith_f_op_f32(f32(-1f) * -580f))), global3.x));
    let var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, var_0.x)))));
    var var_5 = _wgslsmith_f_op_f32(round(var_0.x));
    let var_6 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a, 1000f) - var_4), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, 155f)))))));
    var var_7 = Struct_4(true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4, -606f) * global3.xx), vec2<f32>(var_2.a, var_6.x))))), vec2<f32>(-348f, _wgslsmith_f_op_f32(-func_1(33531i, global0.x, -2147483647i, false).a)))), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, global0.x, u_input.b.x) >> (vec3<u32>(4294967295u, var_2.d.x, u_input.a) % vec3<u32>(32u)), vec3<i32>(33548i, -1i, u_input.b.x)) << (countOneBits(var_2.d.xxy >> (var_2.d.yww % vec3<u32>(32u))) % vec3<u32>(32u)), ~(~abs(vec3<i32>(-1i, u_input.b.x, -1i)))), ~(~select(var_2.d.zxx | vec3<u32>(1u, 4294967295u, var_2.d.x), vec3<u32>(28004u, 29945u, var_2.b), var_7.a)), var_2.d.wxx);
}

