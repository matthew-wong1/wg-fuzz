struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), 21836i, 20385i);

var<private> global1: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(1000f, 181f), vec2<f32>(-528f, -336f), vec2<f32>(187f, 2457f), vec2<f32>(409f, -1380f), vec2<f32>(1573f, -1455f), vec2<f32>(-1265f, 327f), vec2<f32>(-335f, 1000f), vec2<f32>(-202f, -285f), vec2<f32>(-142f, 443f), vec2<f32>(200f, -1099f), vec2<f32>(1828f, 1292f), vec2<f32>(-899f, -250f), vec2<f32>(-574f, -381f));

var<private> global2: array<i32, 28>;

var<private> global3: Struct_1 = Struct_1(vec3<f32>(-798f, 1911f, 1343f), vec4<bool>(false, true, false, true));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> f32 {
    global0 = -vec3<i32>(_wgslsmith_div_i32(~_wgslsmith_sub_i32(-13594i, global0.x), 172i), ~(~_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(1u, 28u)], global0.x)), i32(-1i) * -global0.x);
    global2 = array<i32, 28>();
    var var_0 = 0i;
    var var_1 = vec4<bool>(true, arg_2.b.x & all(!vec2<bool>(false, global3.b.x)), false, false);
    var var_2 = -vec2<i32>(i32(-1i) * -1i, -2147483647i);
    return _wgslsmith_f_op_f32(f32(-1f) * -719f);
}

fn func_2() -> Struct_3 {
    let var_0 = !(!vec2<bool>(!any(global3.b), global3.b.x));
    var var_1 = -3257i;
    global2 = array<i32, 28>();
    var var_2 = Struct_3(Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(max(global3.a.x, global3.a.x)), _wgslsmith_div_f32(global3.a.x, -224f)), vec4<bool>(2147483647i < global2[_wgslsmith_index_u32(u_input.d.x, 28u)], true, global3.b.x, true))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_3(1u, ~1u, Struct_1(global3.a, vec4<bool>(var_0.x, true, true, global3.b.x)), _wgslsmith_f_op_f32(-global3.a.x))), global3.a.x, _wgslsmith_f_op_f32(global3.a.x * _wgslsmith_f_op_f32(-global3.a.x))), select(select(vec4<bool>(false, true, true, global3.b.x), global3.b, select(global3.b, vec4<bool>(var_0.x, false, var_0.x, true), var_0.x)), select(global3.b, select(vec4<bool>(var_0.x, var_0.x, true, global3.b.x), global3.b, global3.b.x), global3.b), global3.b)), u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, ~(~u_input.b.x), 64861u, countOneBits(~u_input.c)), vec4<u32>(_wgslsmith_div_u32(u_input.c, u_input.c), abs(4294967295u), ~u_input.d.x, u_input.c) & ~vec4<u32>(u_input.b.x, u_input.c, u_input.d.x, u_input.b.x)));
    global3 = var_2.a.a;
    return Struct_3(Struct_2(var_2.b), var_2.a.a, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(52858u, 32119u), _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(var_2.c, u_input.c), vec2<u32>(55415u, 54062u)), ~(~u_input.b))));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = Struct_1(vec3<f32>(global3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-256f - var_0.b.a.x)), _wgslsmith_f_op_f32(252f + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1952f, -721f))))), select(select(global3.b, !global3.b, all(!var_0.b.b.ywx)), select(var_0.b.b, !(!var_0.b.b), arg_1 || (global2[_wgslsmith_index_u32(var_0.c, 28u)] <= global2[_wgslsmith_index_u32(23679u, 28u)])), func_2().b.b));
    let var_2 = vec4<bool>(~u_input.b.x < (((u_input.d.x | 0u) | (u_input.b.x << (66552u % 32u))) & u_input.d.x), true, false, all(!(!select(var_1.b, vec4<bool>(var_1.b.x, global3.b.x, false, true), vec4<bool>(arg_1, true, true, var_1.b.x)))));
    let var_3 = 0u;
    let var_4 = u_input.b.x;
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-435f + _wgslsmith_f_op_f32(round(519f))), -536f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)))), var_2);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_1) -> bool {
    global2 = array<i32, 28>();
    global3 = func_2().b;
    global1 = array<vec2<f32>, 13>();
    var var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(abs(arg_2.zz), ~vec2<u32>(45852u, 4294967295u)), _wgslsmith_clamp_u32(24797u, _wgslsmith_dot_vec4_u32(vec4<u32>(17697u, u_input.b.x, arg_2.x, 4294967295u), vec4<u32>(0u, arg_2.x, 43502u, 31427u)), countOneBits(arg_2.x))) | arg_2.wx, vec2<u32>(u_input.b.x, 48149u));
    global0 = vec3<i32>(-(~2147483647i), 40578i, reverseBits((arg_1 ^ 0i) << (arg_2.x % 32u)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mult_vec3_i32(abs(vec3<i32>(75680i, 0i, u_input.a >> (6099u % 32u))), ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-8853i, -63646i, global2[_wgslsmith_index_u32(4294967295u, 28u)], u_input.a), vec4<i32>(1i, 0i, -1i, 14438i)) >> (u_input.b.x % 32u), -14986i, -1i));
    let var_0 = vec4<bool>(!(0u <= _wgslsmith_mult_u32(_wgslsmith_add_u32(79985u, u_input.b.x), u_input.b.x & u_input.c)), true, func_4(Struct_2(func_1(global3.a.xz, all(global3.b.xw))), _wgslsmith_dot_vec3_i32(vec3<i32>(-59355i, ~global0.x, u_input.a), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-39027i, global0.x, -41993i), vec3<i32>(2147483647i, global0.x, 0i)), -16867i, global0.x)), vec4<u32>(u_input.b.x, u_input.b.x & 19468u, ~u_input.b.x, u_input.d.x), func_1(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], any(vec2<bool>(false, true)))), false);
    global0 = -(~vec3<i32>(-1i, _wgslsmith_clamp_i32(reverseBits(global0.x), 31155i, _wgslsmith_dot_vec2_i32(global0.xz, global0.xx)), -2928i));
    global0 = -_wgslsmith_mult_vec3_i32(-_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(0i, 2147483647i, 0i)), vec3<i32>(33872i, 6449i, u_input.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, 0i, u_input.a), _wgslsmith_mod_vec3_i32(vec3<i32>(-54038i, u_input.a, global0.x) | vec3<i32>(global2[_wgslsmith_index_u32(u_input.d.x, 28u)], 1i, u_input.a), abs(vec3<i32>(global0.x, -10218i, global0.x)))));
    global2 = array<i32, 28>();
    let var_1 = Struct_2(func_2().b);
    let var_2 = -173f;
    let x = u_input.a;
    s_output = StorageBuffer(select(firstTrailingBit(~vec2<i32>(-7093i, -2147483647i)) ^ global0.yx, global0.yx, var_1.a.b.zz), 4294967295u);
}

