struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 9>;

var<private> global1: array<i32, 29> = array<i32, 29>(33067i, -47807i, 63222i, 1i, 0i, 2147483647i, 15064i, 2147483647i, -23022i, 39172i, 45687i, 31183i, -4347i, 40958i, 1i, -20912i, -54421i, 0i, i32(-2147483648), 56675i, -1i, i32(-2147483648), -2177i, 29334i, -11358i, 0i, 1i, -19349i, -1i);

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: i32) -> i32 {
    global0 = array<vec2<u32>, 9>();
    let var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, ~(~29749u), u_input.c), firstTrailingBit(~select(vec4<u32>(arg_1.e, u_input.c, 29864u, arg_1.e), vec4<u32>(arg_1.e, global2.e, arg_0.e, u_input.c), vec4<bool>(false, false, true, arg_0.a)) & firstLeadingBit(select(vec4<u32>(1u, global2.e, global2.e, arg_0.e), vec4<u32>(4294967295u, u_input.c, 19158u, 0u), vec4<bool>(true, true, arg_0.d.x, arg_1.a)))));
    let var_1 = Struct_1((abs(1u) | abs(_wgslsmith_dot_vec3_u32(var_0.zyw, var_0.www))) >= 2940u, vec4<i32>(global1[_wgslsmith_index_u32(arg_0.e, 29u)], _wgslsmith_dot_vec3_i32(arg_0.c & global2.b.xxx, max(vec3<i32>(global2.b.x, 26758i, arg_3), vec3<i32>(arg_0.b.x, -1i, global2.b.x))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(89528u, var_0.x), 29u)] & global2.b.x, ~66389i) << (~countOneBits(var_0) % vec4<u32>(32u)), abs(_wgslsmith_clamp_vec3_i32(arg_1.b.xzz, vec3<i32>(-24766i, arg_1.c.x & -39076i, arg_3), u_input.b.yxy)), vec2<bool>(~_wgslsmith_sub_u32(arg_0.e, arg_0.e) > 1u, ~_wgslsmith_dot_vec4_i32(u_input.b, u_input.b) <= 1i), 4294967295u);
    var var_2 = Struct_1(all(!(!select(vec3<bool>(var_1.a, global2.a, global2.a), vec3<bool>(global2.a, global2.d.x, arg_1.d.x), vec3<bool>(true, global2.a, arg_0.a)))), ~vec4<i32>(-_wgslsmith_mod_i32(-2147483647i, 1i), -11879i, _wgslsmith_mod_i32(arg_3, var_1.c.x), _wgslsmith_mult_i32(~arg_0.c.x, 2147483647i)), arg_1.c, vec2<bool>(all(!select(vec3<bool>(var_1.d.x, var_1.d.x, true), vec3<bool>(arg_0.a, false, true), global2.a)), !(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(var_1.e, 4294967295u)) > var_0.x)), countOneBits(u_input.c));
    let var_3 = var_1.d;
    return _wgslsmith_mod_i32(_wgslsmith_add_i32(~_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-33911i, var_1.c.x), var_2.b.x ^ 0i, i32(-1i) * -8721i), 0i), ~(-1i));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec4<i32> {
    global2 = arg_0;
    global2 = Struct_1(all(vec4<bool>(false, true, arg_3.d.x, true)), arg_1.b, arg_0.b.yxy, arg_0.d, 1u);
    let var_0 = arg_1.a;
    global1 = array<i32, 29>();
    var var_1 = vec2<f32>(1027f, -2261f);
    return vec4<i32>(select(~(-arg_3.c.x), _wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_3.b.x, min(-44540i, 2147483647i)), _wgslsmith_clamp_i32(-global1[_wgslsmith_index_u32(arg_1.e, 29u)], min(-1i, 79249i), arg_1.c.x)), all(!vec3<bool>(arg_1.d.x, arg_0.d.x, true))), select(max(countOneBits(0i) | arg_0.c.x, -43774i), arg_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-758f, var_1.x)) * _wgslsmith_f_op_f32(f32(-1f) * -239f)) == var_1.x), _wgslsmith_dot_vec4_i32(arg_0.b, select(-vec4<i32>(25024i, arg_2, -11289i, 1i), vec4<i32>(arg_1.b.x, u_input.b.x, reverseBits(0i), _wgslsmith_sub_i32(arg_0.c.x, arg_1.c.x)), select(!vec4<bool>(arg_1.a, false, false, false), !vec4<bool>(true, true, true, arg_1.a), select(vec4<bool>(arg_0.a, global2.a, false, arg_0.d.x), vec4<bool>(arg_3.a, true, arg_1.d.x, arg_1.a), false)))), u_input.b.x);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(global2.a, min(func_4(Struct_1(true, global2.b, u_input.b.wxy, global2.d, global2.e), Struct_1(global2.a, u_input.b, vec3<i32>(-29790i, global1[_wgslsmith_index_u32(u_input.c, 29u)], 1i), vec2<bool>(false, true), u_input.c), func_3(Struct_1(global2.d.x, vec4<i32>(57896i, global2.b.x, global2.b.x, u_input.a), global2.c, global2.d, 24334u), Struct_1(global2.a, global2.b, vec3<i32>(-1i, global1[_wgslsmith_index_u32(0u, 29u)], -1i), vec2<bool>(false, true), 5372u), vec4<f32>(295f, 319f, 926f, -825f), global1[_wgslsmith_index_u32(global2.e, 29u)]), Struct_1(global2.d.x, global2.b, u_input.b.xxy, global2.d, 4294967295u)) ^ global2.b, -u_input.b), u_input.b.yzx, select(select(!(!global2.d), global2.d, any(select(vec2<bool>(false, true), global2.d, global2.d))), select(!(!vec2<bool>(global2.a, false)), !global2.d, select(select(vec2<bool>(global2.d.x, true), global2.d, global2.d), vec2<bool>(global2.d.x, false), select(global2.d, global2.d, true))), global2.d), reverseBits(_wgslsmith_add_u32(3234u, u_input.c)));
    var var_1 = global2.c.yx;
    let var_2 = select(vec3<bool>(true, global2.d.x, !var_0.d.x), vec3<bool>(true, select(!var_0.a, true, false) & true, true && (-var_1.x >= func_4(Struct_1(global2.d.x, global2.b, vec3<i32>(497i, var_0.c.x, -2147483647i), vec2<bool>(true, var_0.d.x), 29810u), var_0, 1i, var_0).x)), var_0.d.x);
    var var_3 = Struct_1(~(~_wgslsmith_add_i32(-4997i, var_1.x)) <= -38i, u_input.b, vec3<i32>(-18634i, 1i, global2.c.x), vec2<bool>(true, true), _wgslsmith_mult_u32(~(global2.e | var_0.e) << ((var_0.e & 118576u) % 32u), ~(u_input.c >> (_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(u_input.c, 9u)], vec2<u32>(global2.e, 1u)) % 32u))));
    var var_4 = var_0;
    return var_0;
}

fn func_1() -> vec4<bool> {
    var var_0 = any(vec2<bool>(true, true));
    let var_1 = 505f;
    global0 = array<vec2<u32>, 9>();
    let var_2 = func_2();
    var_0 = var_2.d.x;
    return vec4<bool>(var_1 >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))), true, var_2.d.x, var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_1();
    global0 = array<vec2<u32>, 9>();
    var var_1 = Struct_1(false, vec4<i32>(-2147483647i, -u_input.a, 11268i, -2147483647i), countOneBits(_wgslsmith_mod_vec3_i32(-u_input.b.wxx, _wgslsmith_clamp_vec3_i32(vec3<i32>(18137i, 2147483647i, global1[_wgslsmith_index_u32(u_input.c, 29u)]), vec3<i32>(-1i, 2147483647i, global1[_wgslsmith_index_u32(u_input.c, 29u)]), global2.c)) ^ ~_wgslsmith_add_vec3_i32(u_input.b.wyx, vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(4294967295u, 29u)], u_input.a))), !vec2<bool>(false, var_0.x), _wgslsmith_div_u32(~(u_input.c & 15860u), u_input.c) | 23592u);
    var var_2 = var_0;
    let var_3 = ~38781i;
    let var_4 = Struct_1(all(func_1().xzz), _wgslsmith_mult_vec4_i32(-u_input.b, ~u_input.b | ~(-var_1.b)), firstTrailingBit(~var_1.c), var_1.d, 4294967295u);
    global2 = Struct_1(any(var_0), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, global2.b.x, -41946i, abs(-2147483647i)), -vec4<i32>(-37054i, -1i ^ u_input.a, -var_3, global1[_wgslsmith_index_u32(var_4.e, 29u)] ^ var_4.c.x)), ~global2.c, var_0.wz, (39336u >> (_wgslsmith_add_u32(0u, _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(19478u, 9u)], vec2<u32>(u_input.c, var_1.e))) % 32u)) ^ ~18569u);
    let var_5 = global0[_wgslsmith_index_u32(min(var_1.e, 14655u), 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2623f, 1177f, -1091f)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 231f, 342f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-215f, -1219f, 126f), vec3<f32>(1332f, 1000f, -1243f), vec3<bool>(var_2.x, var_1.d.x, true))))))));
}

