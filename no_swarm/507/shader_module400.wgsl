struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: vec4<u32>,
    d: f32,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 4599i;

var<private> global1: array<vec3<bool>, 23> = array<vec3<bool>, 23>(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true));

var<private> global2: Struct_3 = Struct_3(vec3<f32>(-513f, -1916f, -1718f), Struct_1(36211u, vec2<i32>(-19897i, -42553i)), vec4<f32>(770f, -112f, -178f, 1279f));

var<private> global3: Struct_5 = Struct_5(Struct_4(vec3<f32>(-1597f, -1278f, -909f), -436i), i32(-2147483648), vec4<u32>(0u, 35790u, 1u, 1u), -226f, Struct_4(vec3<f32>(199f, 858f, -625f), -1i));

var<private> global4: bool = false;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> bool {
    let var_0 = !select(!select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), vec2<bool>(true, false), true);
    var var_1 = all(vec2<bool>(var_0.x, true));
    let var_2 = _wgslsmith_f_op_vec3_f32(-global2.a);
    global3 = Struct_5(global3.e, -1i, global3.c, global3.a.a.x, Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_2, _wgslsmith_f_op_vec3_f32(global2.c.zyz - var_2), true))), global2.b.b.x));
    var var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(global2.c.zxx)))), global3.e.a))), global3.b);
    return any(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(select(global3.c.x, global3.c.x, false), ~global2.b.a), ~(~1u)), 23u)]) & false;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>) -> bool {
    let var_0 = ~(global3.c.x | _wgslsmith_mod_u32(4294967295u, global2.b.a));
    global4 = any(select(vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(max(0u, 0u), 23u)], vec3<bool>(all(vec2<bool>(false, false)), true, true)));
    var var_1 = global2.b;
    return func_2();
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec3<bool>) -> Struct_4 {
    var var_0 = vec2<u32>(~32439u, ~global2.b.a);
    global0 = max(2147483647i, global2.b.b.x);
    global0 = arg_1;
    let var_1 = ~_wgslsmith_clamp_vec2_i32(global2.b.b, ~global2.b.b, vec2<i32>(arg_0, -arg_1 << (~12237u % 32u)));
    var var_2 = -max(1i, global3.b);
    return global3.a;
}

fn func_1(arg_0: vec4<i32>) -> Struct_5 {
    global0 = ~(-58797i);
    let var_0 = func_4(~(-30454i), global2.b.b.x, !select(vec3<bool>(true, true, true), !(!global1[_wgslsmith_index_u32(0u, 23u)]), vec3<bool>(func_2(), true, func_3(Struct_2(global3.c.x, arg_0.xz, 15970u, vec4<u32>(global3.c.x, global3.c.x, global2.b.a, 1u)), vec4<f32>(global3.a.a.x, 1171f, global2.c.x, global3.a.a.x)))));
    global4 = !(!(global2.b.b.x >= -(~arg_0.x)));
    var var_1 = Struct_5(global3.e, abs(_wgslsmith_mod_i32(_wgslsmith_sub_i32(var_0.b, _wgslsmith_mod_i32(0i, 24477i)), _wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_0.x, u_input.a.x, 1i, global2.b.b.x), vec4<i32>(global3.b, -57657i, global2.b.b.x, global2.b.b.x), true), ~vec4<i32>(2147483647i, global2.b.b.x, 1i, global2.b.b.x)))), global3.c & vec4<u32>(global2.b.a, max(firstTrailingBit(19776u), global2.b.a ^ 19335u), ~1374u, reverseBits(1u)), var_0.a.x, func_4(firstTrailingBit(min(var_0.b, ~var_0.b)), 2147483647i, select(vec3<bool>(true, any(global1[_wgslsmith_index_u32(global2.b.a, 23u)]), var_0.b == global3.e.b), vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(global2.b.a, 23u)])));
    var var_2 = global2.b;
    return Struct_5(global3.e, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(35671i, -636i) | var_0.b, global2.b.b.x, u_input.a.x, global3.b), ~(vec4<i32>(-1i) * -vec4<i32>(2147483647i, var_1.a.b, var_0.b, 0i))), select(var_1.c | global3.c, vec4<u32>(62146u, firstTrailingBit(var_1.c.x), 1u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1387u, 20144u), var_1.c.wx), global3.c.xw | vec2<u32>(40749u, 4294967295u))), !vec4<bool>(select(true, false, true), false, all(global1[_wgslsmith_index_u32(4294967295u, 23u)]), select(false, true, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(610f * global2.a.x)) - _wgslsmith_f_op_f32(f32(-1f) * -899f)), func_4(i32(-1i) * -countOneBits(global3.b), max(i32(-1i) * -var_2.b.x, var_0.b), !select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_div_vec4_i32(~vec4<i32>(select(-8936i, u_input.a.x, true), -1i, 1i, _wgslsmith_mod_i32(u_input.a.x, global3.a.b)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.a.b, -1i, 12194i), vec3<i32>(global2.b.b.x, 18626i, 1i)) >> (_wgslsmith_mult_u32(global2.b.a, 0u) % 32u), 2147483647i, u_input.a.x, i32(-1i) * -u_input.a.x)));
    var var_1 = vec4<bool>((~_wgslsmith_add_i32(global2.b.b.x, 24894i) < global3.a.b) | true, false, all(vec2<bool>(any(vec3<bool>(true, false, false)), any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false))))), true);
    global1 = array<vec3<bool>, 23>();
    let var_2 = Struct_1(~global2.b.a, global2.b.b);
    var var_3 = global3.d;
    var var_4 = !func_2();
    let var_5 = var_1.x;
    let var_6 = global3.e.a.yx;
    var var_7 = Struct_5(var_0.a, ~(-2147483647i), global3.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3.a.a.x * 564f))), func_1(-abs(-vec4<i32>(var_2.b.x, -44665i, var_2.b.x, var_2.b.x))).a);
    let x = u_input.a;
    s_output = StorageBuffer(min(~(~_wgslsmith_mult_vec4_u32(var_0.c, vec4<u32>(global3.c.x, 7307u, 0u, var_0.c.x))), vec4<u32>(~global3.c.x, global2.b.a, var_2.a & var_0.c.x, 7494u) | global3.c), global3.c);
}

