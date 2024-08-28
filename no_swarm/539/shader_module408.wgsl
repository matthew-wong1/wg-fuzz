struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
    c: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_2,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<bool>;

var<private> global2: array<vec3<f32>, 11> = array<vec3<f32>, 11>(vec3<f32>(769f, -539f, 1103f), vec3<f32>(-178f, 273f, 1437f), vec3<f32>(480f, -894f, 1191f), vec3<f32>(837f, 1358f, 425f), vec3<f32>(1746f, 666f, -1138f), vec3<f32>(-912f, -318f, 765f), vec3<f32>(265f, -359f, 834f), vec3<f32>(-1592f, 754f, 811f), vec3<f32>(-610f, 188f, -861f), vec3<f32>(-861f, 396f, 194f), vec3<f32>(193f, 120f, -642f));

var<private> global3: array<bool, 31>;

var<private> global4: array<Struct_3, 26>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_3 {
    var var_0 = Struct_1(-vec2<i32>(1i, -(1i << (u_input.e.x % 32u))), u_input.a, global1.x);
    let var_1 = -1521f;
    let var_2 = ~(~firstTrailingBit(select(~u_input.e.yz, ~u_input.e.wy, true)));
    let var_3 = abs(~(~arg_0.x));
    global4 = array<Struct_3, 26>();
    return global4[_wgslsmith_index_u32(min(countOneBits(u_input.a), var_2.x), 26u)];
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec3<f32>) -> u32 {
    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~(~u_input.e.xzz), u_input.e.yyy), vec3<u32>(1u, ~(~u_input.e.x), ~(10648u | u_input.a))), 1u), 26u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_3.zx, arg_1.zx)));
    let var_2 = i32(-1i) * -(global0.c >> (~abs(arg_2.b) % 32u));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(-258f, arg_1.x), var_0.d.b.x))), _wgslsmith_f_op_f32(-395f - arg_0.a.x), 1834f);
    var var_4 = u_input.c;
    return ~(~_wgslsmith_clamp_u32(21438u, arg_2.b, 21u));
}

fn func_1(arg_0: vec4<i32>) -> vec3<bool> {
    let var_0 = arg_0;
    global2 = array<vec3<f32>, 11>();
    global4 = array<Struct_3, 26>();
    let var_1 = u_input.e.x;
    let var_2 = select(max(1i, _wgslsmith_clamp_i32(u_input.d, ~1i, -34577i) >> (func_3(func_2(arg_0.wyw), global0.b.xyw, Struct_1(arg_0.wy, var_1, global0.a), vec3<f32>(global0.b.x, global0.b.x, global0.b.x)) % 32u)), arg_0.x, true);
    return select(func_2(var_0.xxw).c, !func_2(~abs(vec3<i32>(-1i, 2147483647i, 36879i))).c, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-780f - 1399f)), _wgslsmith_f_op_f32(378f - global0.b.x))), Struct_1(-(~vec2<i32>(-69178i, u_input.b)), _wgslsmith_mult_u32(~4294967295u, (u_input.a ^ 7738u) | (u_input.c & 4294967295u)), select(false, false, !global1.x)), func_1(~(~vec4<i32>(0i, global0.c, -890i, u_input.b) >> (countOneBits(vec4<u32>(97788u, u_input.a, u_input.e.x, 39858u)) % vec4<u32>(32u)))), Struct_2(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, global0.b.x, -1805f, global0.b.x) - vec4<f32>(160f, global0.b.x, 425f, global0.b.x)), _wgslsmith_f_op_vec4_f32(-global0.b), true))), u_input.b), ~(select(abs(vec2<i32>(u_input.b, global0.c)), firstTrailingBit(vec2<i32>(u_input.d, -1078i)), global1.yx) >> (~(~vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))));
    var var_1 = _wgslsmith_mod_u32(var_0.b.b, 0u);
    global1 = select(select(select(!select(vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(var_0.c.x, true, global3[_wgslsmith_index_u32(4294967295u, 31u)], false), vec4<bool>(global1.x, false, true, global3[_wgslsmith_index_u32(1u, 31u)])), vec4<bool>(!var_0.c.x, true, true | global1.x, any(vec3<bool>(global3[_wgslsmith_index_u32(0u, 31u)], var_0.c.x, true))), true), !select(!vec4<bool>(global3[_wgslsmith_index_u32(1u, 31u)], var_0.d.a, global3[_wgslsmith_index_u32(4294967295u, 31u)], false), !vec4<bool>(global3[_wgslsmith_index_u32(var_0.b.b, 31u)], false, false, true), global0.a), false), !select(select(!vec4<bool>(global0.a, false, true, global0.a), vec4<bool>(true, true, global1.x, true), select(vec4<bool>(false, false, var_0.c.x, global1.x), vec4<bool>(var_0.d.a, global3[_wgslsmith_index_u32(26982u, 31u)], var_0.b.c, false), true)), !(!vec4<bool>(global0.a, global0.a, var_0.c.x, global3[_wgslsmith_index_u32(4294967295u, 31u)])), vec4<bool>(any(vec4<bool>(true, global0.a, global3[_wgslsmith_index_u32(var_0.b.b, 31u)], global1.x)), global0.a, global1.x, !var_0.c.x)), vec4<bool>(func_1(-vec4<i32>(var_0.d.c, 8467i, var_0.e.x, var_0.b.a.x)).x && false, !global0.a, true, false));
    let var_2 = func_2(_wgslsmith_mult_vec3_i32(vec3<i32>(reverseBits(~global0.c), countOneBits(u_input.b), -20739i), ~(-vec3<i32>(global0.c, global0.c, -2147483647i) ^ -vec3<i32>(2147483647i, global0.c, var_0.e.x)))).b;
    let var_3 = func_2(vec3<i32>(_wgslsmith_add_i32(global0.c, _wgslsmith_mult_i32(_wgslsmith_add_i32(2147483647i, var_2.a.x), -14253i)), _wgslsmith_sub_i32(firstTrailingBit(1i), 2147483647i) ^ 1i, ~var_0.b.a.x)).d;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.zz, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) + 832f), 293f, !(!(var_0.d.c <= -1i)))), var_0.b.a.x, vec2<i32>(var_3.c, -(~(-2147483647i))));
}

