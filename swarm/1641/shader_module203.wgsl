struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: vec3<f32>,
    d: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 31>;

var<private> global1: Struct_3;

var<private> global2: array<i32, 27>;

var<private> global3: array<Struct_4, 17>;

var<private> global4: vec3<f32> = vec3<f32>(-254f, 902f, -1227f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<bool>, arg_1: u32) -> i32 {
    global2 = array<i32, 27>();
    var var_0 = ~_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(38441u, 57478u)) << (~vec2<u32>(1671u, global1.a.a.c.x) % vec2<u32>(32u)), ~max(vec2<u32>(arg_1, global1.a.a.c.x), vec2<u32>(u_input.c, u_input.b.x)), _wgslsmith_add_vec2_u32(~(vec2<u32>(global1.a.a.c.x, arg_1) | vec2<u32>(1u, global1.a.a.c.x)), vec2<u32>(arg_1, arg_1)));
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(max(vec4<u32>(var_0.x, u_input.c, u_input.c, 9699u), countOneBits(vec4<u32>(4294967295u, 1u, 69460u, var_0.x))), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 4294967295u, var_0.x, 39682u) | vec4<u32>(2655u, var_0.x, arg_1, 86102u), vec4<u32>(arg_1, var_0.x, 0u, var_0.x))), select(~(~vec4<u32>(var_0.x, arg_1, 12249u, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(19762u, 1u, 1u, 34247u) | vec4<u32>(1u, 155409u, u_input.c, 23104u), select(vec4<u32>(arg_1, u_input.b.x, arg_1, global1.a.a.c.x), vec4<u32>(u_input.b.x, arg_1, 87369u, 0u), true)), vec4<bool>(true, !global1.a.b, global1.a.b, any(vec4<bool>(arg_0.x, global1.a.b, true, global1.a.b))))), 32602u);
    var var_2 = -37427i;
    var var_3 = Struct_2(global1.a.a, global1.a.b);
    return global1.b;
}

fn func_2(arg_0: f32) -> Struct_1 {
    global1 = Struct_3(global1.a, _wgslsmith_sub_i32(func_3(select(vec2<bool>(false, false), vec2<bool>(false, global1.a.b), global1.a.b), abs(u_input.c)), u_input.a.x) & (global1.b >> (select(_wgslsmith_add_u32(60250u, global1.a.a.c.x), 1u, u_input.b.x <= u_input.b.x) % 32u)));
    let var_0 = Struct_3(Struct_2(Struct_1(global2[_wgslsmith_index_u32(15514u, 27u)], ~(global1.a.a.b ^ vec2<i32>(-2147483647i, u_input.a.x)), min(max(vec2<u32>(1u, 1u), u_input.b), global1.a.a.c), _wgslsmith_f_op_f32(-global1.a.a.e.x), global1.a.a.e), false), ~global2[_wgslsmith_index_u32(global1.a.a.c.x, 27u)]);
    let var_1 = global1.a.a.c.x;
    let var_2 = var_0;
    return var_0.a.a;
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_4(Struct_3(Struct_2(func_2(_wgslsmith_f_op_f32(global1.a.a.e.x * global1.a.a.e.x)), any(vec3<bool>(global1.a.b, false, true))), ~global1.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1277f, _wgslsmith_div_f32(global1.a.a.e.x, _wgslsmith_f_op_f32(global4.x * global1.a.a.d)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.x, global1.a.a.e.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.a.a.e.yyz, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-166f, global1.a.a.e.x, global4.x)), vec3<f32>(-141f, -181f, global4.x), true)), vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 27u)] <= -1i, all(vec2<bool>(global1.a.b, global1.a.b)))))), (true == global1.a.b) != true);
    var var_1 = (((firstLeadingBit(vec2<i32>(global1.a.a.b.x, -17037i)) << (~u_input.b % vec2<u32>(32u))) << ((~vec2<u32>(u_input.c, global1.a.a.c.x) | ~var_0.a.a.a.c) % vec2<u32>(32u))) >> ((global1.a.a.c >> (min(~vec2<u32>(7128u, global1.a.a.c.x), ~u_input.b) % vec2<u32>(32u))) % vec2<u32>(32u))) << (func_2(_wgslsmith_f_op_f32(min(global4.x, _wgslsmith_div_f32(global1.a.a.d, global4.x)))).c % vec2<u32>(32u));
    let var_2 = abs(vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.a.a.c.x, u_input.b.x, 29085u, 296u), vec4<u32>(var_0.a.a.a.c.x, 4764u, u_input.c, global1.a.a.c.x)), _wgslsmith_add_u32(max(103684u, 42904u), u_input.c), _wgslsmith_sub_u32(func_2(-1330f).c.x, _wgslsmith_mod_u32(global1.a.a.c.x, var_0.a.a.a.c.x)), 1u) ^ ~vec4<u32>(~30570u, 1u, 14621u, ~1u));
    let var_3 = var_0.a.a;
    var var_4 = vec3<bool>(all(select(select(!vec2<bool>(var_3.b, true), !vec2<bool>(global1.a.b, false), select(vec2<bool>(var_3.b, false), vec2<bool>(var_0.d, false), true)), vec2<bool>(var_3.b, !global1.a.b), select(select(vec2<bool>(true, var_0.a.a.b), vec2<bool>(var_0.a.a.b, true), false), select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(var_0.a.a.b, true)))), var_0.d, true);
    return Struct_3(Struct_2(Struct_1(1i, _wgslsmith_mult_vec2_i32(var_3.a.b, abs(var_0.a.a.a.b)), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 20957u), vec2<u32>(var_0.a.a.a.c.x, global1.a.a.c.x)), var_0.a.a.a.e.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.a.a.a.e * var_0.a.a.a.e) * _wgslsmith_f_op_vec4_f32(exp2(var_3.a.e)))), true), _wgslsmith_add_i32(abs(global1.b), _wgslsmith_dot_vec2_i32(-global1.a.a.b, firstTrailingBit(u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_4, 17>();
    global1 = func_1();
    let var_0 = select(max(func_2(_wgslsmith_f_op_f32(ceil(-2474f))).c, ~vec2<u32>(global1.a.a.c.x, 0u)), abs(_wgslsmith_add_vec2_u32(global1.a.a.c, u_input.b)), true) ^ (vec2<u32>(1u, _wgslsmith_div_u32(u_input.c, 1u)) ^ select(u_input.b, ~_wgslsmith_mod_vec2_u32(vec2<u32>(global1.a.a.c.x, global1.a.a.c.x), vec2<u32>(u_input.b.x, 1u)), !select(vec2<bool>(false, false), vec2<bool>(global1.a.b, true), vec2<bool>(true, global1.a.b))));
    global0 = array<vec4<bool>, 31>();
    let var_1 = Struct_5(global3[_wgslsmith_index_u32(~0u, 17u)], func_1().a);
    var var_2 = _wgslsmith_f_op_f32(2202f + 253f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(i32(-1i) * -1227i, -var_1.a.a.a.a.b.x) | -15369i, _wgslsmith_add_vec2_u32(~vec2<u32>(1u, countOneBits(u_input.b.x)), ~(~(var_0 >> (global1.a.a.c % vec2<u32>(32u))))));
}

