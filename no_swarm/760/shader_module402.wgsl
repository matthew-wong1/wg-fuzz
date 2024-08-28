struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: f32,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<i32>(0i, i32(-2147483648), 2147483647i, 17328i));

var<private> global1: Struct_3 = Struct_3(vec2<bool>(true, false), 4294967295u, 535f);

var<private> global2: vec3<bool>;

var<private> global3: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(Struct_1(vec4<i32>(-1i, 37696i, -52418i, -20287i), vec3<i32>(-1i, 0i, 2147483647i), vec3<bool>(false, false, false), -430f, vec3<i32>(1i, 0i, 22714i)), vec2<bool>(true, true), -1448f), Struct_2(Struct_1(vec4<i32>(-1i, 9049i, -1i, -5548i), vec3<i32>(-253i, -1i, 0i), vec3<bool>(false, true, true), -1000f, vec3<i32>(1i, 2147483647i, -1i)), vec2<bool>(true, false), 1151f));

var<private> global4: Struct_2;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: u32) -> bool {
    let var_0 = !global4.a.c;
    var var_1 = 14079i;
    let var_2 = global4.a;
    let var_3 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, arg_2), 4294967295u), 3245u, _wgslsmith_clamp_u32(abs(arg_0 & ~u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.b, arg_0), vec2<u32>(arg_2, arg_2)), global1.b), ~(~vec2<u32>(13393u, 0u))), ~global1.b), _wgslsmith_mult_u32(global1.b, arg_0));
    global0 = Struct_4(-vec4<i32>(0i, u_input.a, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(global4.a.b.x, 1i)), _wgslsmith_sub_vec2_i32(global0.a.zy, vec2<i32>(-21485i, 29376i))), -firstLeadingBit(u_input.a)));
    return false;
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: vec3<i32>) -> i32 {
    var var_0 = firstLeadingBit(_wgslsmith_add_vec4_u32(~vec4<u32>(1u, global1.b, select(42391u, arg_1.x, global4.b.x), global1.b), ~firstLeadingBit(firstTrailingBit(vec4<u32>(4294967295u, u_input.b, u_input.b, arg_1.x)))));
    global0 = Struct_4(max(-_wgslsmith_clamp_vec4_i32(global0.a & vec4<i32>(-2147483647i, 39720i, global0.a.x, -47731i), vec4<i32>(global4.a.e.x, 2147483647i, -16112i, global4.a.e.x), vec4<i32>(35144i, arg_2.x, 19485i, global0.a.x)), ~(-vec4<i32>(u_input.c, arg_2.x, global0.a.x, 21722i))));
    var var_1 = 452f;
    var_1 = global4.a.d;
    let var_2 = select(!vec2<bool>(func_3(~global1.b, -global0.a.xyw, 1u), true), !global2.zz, ~global4.a.b.x >= global0.a.x);
    return -13037i;
}

fn func_1() -> u32 {
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.d)), -1538f) - vec2<f32>(-1854f, global1.c));
    let var_2 = Struct_4(vec4<i32>(-11855i, var_0, -min(-1i, func_2(global2.x, vec2<u32>(u_input.b, u_input.d), global4.a.e)), firstTrailingBit(-1i)));
    let var_3 = global4.a;
    var var_4 = Struct_2(Struct_1(~vec4<i32>(var_2.a.x, u_input.c, 2147483647i, global4.a.e.x) & (global0.a ^ firstTrailingBit(var_3.a)), firstLeadingBit(vec3<i32>(reverseBits(51319i), ~var_3.a.x, u_input.a)), vec3<bool>(global2.x, global1.a.x, true), _wgslsmith_f_op_f32(exp2(global1.c)), vec3<i32>(-2827i, u_input.c, select(-2147483647i, _wgslsmith_div_i32(global4.a.b.x, 9929i), global4.a.c.x))), vec2<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_1.x)), -597f)) < var_3.d, global4.b.x), 1000f);
    return countOneBits(39031u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec4<u32>(func_1(), ~69866u, 2465u, 45230u) >> (vec4<u32>(u_input.b, global1.b, ((61509u ^ global1.b) ^ u_input.d) >> (_wgslsmith_mod_u32(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.b, global1.b, global1.b), vec3<u32>(1u, 67876u, 77235u))) % 32u), select(~global1.b, 4294967295u, global1.a.x) | select(u_input.b, 56730u, true)) % vec4<u32>(32u));
    let var_1 = global3[_wgslsmith_index_u32(u_input.d, 2u)];
    let var_2 = 914f;
    global3 = array<Struct_2, 2>();
    let var_3 = vec4<bool>(global4.a.c.x, true | global1.a.x, 0u < select(~1u & var_0.x, ~u_input.b, global2.x), false && var_1.a.c.x);
    var var_4 = Struct_5(select(-(vec4<i32>(-23329i, 1i, 13138i, 1i) ^ var_1.a.a), vec4<i32>(var_1.a.b.x, -(global4.a.a.x & global0.a.x), -2147483647i, var_1.a.b.x), !(!(u_input.d == 37210u))), abs(1i));
    global1 = Struct_3(!select(!vec2<bool>(global2.x, var_1.a.c.x), vec2<bool>(var_3.x || var_3.x, !global4.a.c.x), !(!global2.xx)), ~var_0.x, var_1.a.d);
    var var_5 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.x, 17694u, u_input.d << (~(20879u << (0u % 32u)) % 32u)), 2u)];
    var_5 = Struct_2(Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_5.a.a.x, 2147483647i, var_1.a.e.x, global0.a.x) & vec4<i32>(-22306i, 2147483647i, u_input.c, 54887i), var_4.a | vec4<i32>(-2147483647i, -3862i, -32720i, var_4.a.x), -var_4.a) | abs(vec4<i32>(var_5.a.a.x, u_input.a, 4030i, 0i) | vec4<i32>(var_5.a.b.x, var_1.a.b.x, global0.a.x, -62264i)), ~var_5.a.a.wxw, var_3.xxz, -1233f, var_5.a.a.xzw), !var_5.b, _wgslsmith_f_op_f32(floor(-1644f)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<i32>(-2147483647i, global4.a.e.x, global4.a.e.x, -var_1.a.a.x)), 39708u << (~func_1() % 32u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.c, _wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_5.c))), var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.a.d) * _wgslsmith_f_op_f32(var_1.a.d * -1968f))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1552f), _wgslsmith_f_op_f32(f32(-1f) * -443f), global4.a.d)), _wgslsmith_mult_vec3_i32(firstLeadingBit(-global4.a.e | vec3<i32>(-8879i, 9409i, var_4.b)), ~vec3<i32>(min(-36789i, global4.a.b.x), _wgslsmith_sub_i32(35869i, 2147483647i), 18360i >> (var_0.x % 32u))));
}

