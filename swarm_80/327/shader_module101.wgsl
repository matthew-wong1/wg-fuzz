struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec2<i32>,
    d: i32,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: bool,
    d: bool,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false));

var<private> global1: array<Struct_2, 12>;

var<private> global2: array<i32, 4> = array<i32, 4>(1i, 27223i, 1i, 0i);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_4) -> vec4<bool> {
    let var_0 = 2147483647i;
    global1 = array<Struct_2, 12>();
    var var_1 = vec2<i32>(-2147483647i, 0i);
    var var_2 = reverseBits(0u);
    let var_3 = -arg_0.b;
    return !vec4<bool>(any(select(vec4<bool>(arg_0.c.a, arg_0.c.a, arg_2.c, true), vec4<bool>(arg_2.c, arg_2.d, true, true), vec4<bool>(arg_0.d.a, arg_0.c.a, false, arg_0.c.a))), !all(vec2<bool>(true, false)), arg_0.e && true, any(vec4<bool>(all(vec3<bool>(arg_0.e, arg_2.a, arg_2.d)), arg_0.d.a, any(vec2<bool>(arg_0.e, false)), arg_0.c.a)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    var var_0 = Struct_4(any(select(!(!vec4<bool>(false, arg_0.a, true, true)), !func_3(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], arg_2.b.x, Struct_4(false, arg_2.a, arg_1.e, true, u_input.b)), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.a, arg_2.a))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-805f)), arg_1.a, all(vec2<bool>(arg_2.c.a, arg_2.d.a))))))), !all(!vec3<bool>(arg_1.d.a, true, true)), all(vec3<bool>(!arg_0.a, arg_2.e, any(func_3(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], arg_1.b.x, Struct_4(false, arg_1.a, false, true, u_input.b))))), firstTrailingBit(~u_input.b));
    var var_1 = countOneBits(select(firstLeadingBit(abs(vec4<i32>(-21994i, u_input.d.x, -2147483647i, arg_1.b.x)) >> (firstLeadingBit(vec4<u32>(52313u, var_0.e.x, 34505u, 1u)) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -7582i, 9564i, -2147483647i), vec4<i32>(arg_2.b.x, -26010i, global2[_wgslsmith_index_u32(var_0.e.x, 4u)], 78378i))), vec4<i32>(select(0i, -32456i, arg_0.a), select(0i, arg_2.b.x, false), global2[_wgslsmith_index_u32(~u_input.a.x, 4u)], arg_2.b.x)), arg_2.d.a));
    global1 = array<Struct_2, 12>();
    global0 = array<Struct_1, 16>();
    global1 = array<Struct_2, 12>();
    return ~47893u;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: f32, arg_3: Struct_4) -> vec4<i32> {
    global0 = array<Struct_1, 16>();
    global2 = array<i32, 4>();
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    let var_0 = vec3<bool>(_wgslsmith_mod_u32(~1u, min(1u, 54749u)) != ~(9202u & func_2(global0[_wgslsmith_index_u32(arg_3.e.x, 16u)], Struct_2(1000f, vec3<i32>(51985i, 1i, global2[_wgslsmith_index_u32(arg_1, 4u)]), Struct_1(false), global0[_wgslsmith_index_u32(arg_1, 16u)], true), global1[_wgslsmith_index_u32(arg_1, 12u)])), func_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), vec3<i32>(u_input.c ^ global2[_wgslsmith_index_u32(0u, 4u)], i32(-1i) * -1i, u_input.c), global0[_wgslsmith_index_u32(~arg_1, 16u)], Struct_1(false), max(u_input.d.x, u_input.e) <= ~u_input.e), 1i, Struct_4(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) + -672f), true, all(vec3<bool>(arg_3.a, arg_3.a, arg_3.a)) == true, arg_3.e)).x, true);
    return firstTrailingBit(~(~(vec4<i32>(u_input.e, 1495i, 2147483647i, 15056i) << (vec4<u32>(66370u, u_input.b.x, 1u, 1u) % vec4<u32>(32u)))) ^ vec4<i32>(-12650i | ~u_input.d.x, select(-28167i, _wgslsmith_add_i32(global2[_wgslsmith_index_u32(arg_3.e.x, 4u)], -2147483647i), 9533u < arg_3.e.x), 0i, _wgslsmith_div_i32(0i >> (arg_3.e.x % 32u), -2147483647i)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<i32>) -> u32 {
    global2 = array<i32, 4>();
    global2 = array<i32, 4>();
    var var_0 = Struct_1(true);
    var var_1 = vec3<bool>(true, all(func_3(Struct_2(-569f, vec3<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], global2[_wgslsmith_index_u32(5886u, 4u)], arg_1.x), Struct_1(true), Struct_1(var_0.a), true), u_input.d.x, Struct_4(var_0.a, -1575f, false, var_0.a && var_0.a, reverseBits(u_input.b))).wwx), true);
    global1 = array<Struct_2, 12>();
    return 923u;
}

fn func_5(arg_0: u32, arg_1: Struct_3) -> bool {
    let var_0 = arg_1;
    global1 = array<Struct_2, 12>();
    let var_1 = countOneBits(min(-vec4<i32>(arg_1.d >> (31481u % 32u), global2[_wgslsmith_index_u32(45567u, 4u)] & global2[_wgslsmith_index_u32(4294967295u, 4u)], 0i, max(-30257i, 2147483647i)), -(~_wgslsmith_add_vec4_i32(vec4<i32>(var_0.d, var_0.c.x, arg_1.c.x, u_input.c), vec4<i32>(var_0.d, -36822i, 67534i, 2147483647i)))));
    global1 = array<Struct_2, 12>();
    let var_2 = Struct_1(true);
    return all(!vec4<bool>(true, true, _wgslsmith_f_op_f32(select(421f, 152f, false)) == -1000f, arg_1.b.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 12>();
    global0 = array<Struct_1, 16>();
    var var_0 = !(!any(vec4<bool>(true, true, true, true)));
    global2 = array<i32, 4>();
    let var_1 = func_5(func_4(~u_input.a.xy, min(abs(-vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], global2[_wgslsmith_index_u32(u_input.b.x, 4u)], u_input.d.x, 0i)), func_1(1770f, 1u, _wgslsmith_f_op_f32(941f * -223f), Struct_4(false, 715f, false, true, u_input.b)))), Struct_3(~abs(1u), Struct_1(~u_input.b.x <= u_input.b.x), -(~u_input.d >> (u_input.a.yy % vec2<u32>(32u))), _wgslsmith_mod_i32(-7498i, func_1(2004f, u_input.b.x, _wgslsmith_f_op_f32(select(-1000f, 775f, false)), Struct_4(true, -774f, false, true, u_input.b)).x)));
    var var_2 = global1[_wgslsmith_index_u32(func_2(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x & u_input.a.x), 16u)], global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(7398u, ~u_input.b.x, 51355u, u_input.b.x)), 12u)], Struct_2(656f, _wgslsmith_add_vec3_i32(vec3<i32>(-4063i >> (u_input.a.x % 32u), 20338i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, u_input.c, 2147483647i, u_input.e), vec4<i32>(u_input.c, 15870i, 5455i, 0i))), _wgslsmith_mult_vec3_i32(select(vec3<i32>(2147483647i, u_input.e, u_input.c), vec3<i32>(-24760i, global2[_wgslsmith_index_u32(23373u, 4u)], 1090i), vec3<bool>(false, var_1, var_1)), vec3<i32>(global2[_wgslsmith_index_u32(23303u, 4u)], -20160i, global2[_wgslsmith_index_u32(1u, 4u)]) & vec3<i32>(global2[_wgslsmith_index_u32(45519u, 4u)], u_input.e, u_input.c))), global0[_wgslsmith_index_u32(select(59008u, ~0u, !var_1 & true), 16u)], global0[_wgslsmith_index_u32(u_input.a.x, 16u)], true | !(var_1 && var_1))), 12u)];
    var var_3 = Struct_4(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1876f, -1000f, var_1 == true))), var_2.d.a, var_2.a < -114f, select(u_input.b, min(vec4<u32>(u_input.b.x << (2729u % 32u), countOneBits(0u), u_input.b.x, ~u_input.a.x), u_input.b), !select(!vec4<bool>(true, false, var_2.c.a, var_1), vec4<bool>(var_2.d.a, true, false, var_1), vec4<bool>(var_1, false, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(max(266u, _wgslsmith_mult_u32(u_input.a.x, abs(u_input.b.x))));
}

