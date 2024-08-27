struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 4> = array<bool, 4>(true, false, true, false);

var<private> global2: array<Struct_1, 18>;

var<private> global3: Struct_1;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool) -> bool {
    let var_0 = Struct_1(countOneBits(_wgslsmith_add_u32(_wgslsmith_mult_u32(global3.a, 10628u >> (0u % 32u)), ~4294967295u)), select(!vec3<bool>(global0.b.x, all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 4u)], true, global0.b.x, true)), global0.b.x), select(select(global3.b, select(global3.b, global0.b, global3.b.x), all(global0.b.yz)), vec3<bool>(all(vec4<bool>(global0.b.x, false, true, false)), false, true), true), global3.b.x));
    global0 = var_0;
    global1 = array<bool, 4>();
    global1 = array<bool, 4>();
    var var_1 = ~(~(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, global3.a), u_input.c))));
    return global0.b.x;
}

fn func_2(arg_0: Struct_1) -> bool {
    global1 = array<bool, 4>();
    global1 = array<bool, 4>();
    global3 = Struct_1(100408u, select(select(vec3<bool>(all(vec2<bool>(global3.b.x, false)), false, false), arg_0.b, vec3<bool>(!global1[_wgslsmith_index_u32(arg_0.a, 4u)], any(global3.b.zx), true)), arg_0.b, !global0.b));
    var var_0 = Struct_1(u_input.c.x, global3.b);
    global1 = array<bool, 4>();
    return ((false || func_3(false)) || true) || var_0.b.x;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> f32 {
    let var_0 = 1965f;
    global3 = arg_0;
    let var_1 = vec2<bool>(true, select(!(!select(global0.b.x, false, global1[_wgslsmith_index_u32(1u, 4u)])), !(!(global3.a != global0.a)), global3.b.x));
    global1 = array<bool, 4>();
    global1 = array<bool, 4>();
    return var_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> vec2<bool> {
    global1 = array<bool, 4>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1682f, arg_2, true)));
    let var_1 = global3.b.yz;
    let var_2 = vec2<i32>(-30683i, ~(-2147483647i));
    var var_3 = Struct_1(~1u, select(!select(select(arg_0.b, arg_0.b, var_1.x), vec3<bool>(var_1.x, global1[_wgslsmith_index_u32(0u, 4u)], false), !global0.b), !(!(!arg_1.b)), vec3<bool>(any(vec2<bool>(true, true)), select(true, true, true) & arg_1.b.x, any(vec4<bool>(global3.b.x, arg_1.b.x, var_1.x, arg_0.b.x)))));
    return !vec2<bool>(global1[_wgslsmith_index_u32(~arg_1.a, 4u)], func_2(arg_1));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(1u, vec3<bool>(true, false, global3.b.x));
    let var_1 = func_5(var_0, Struct_1(69254u, vec3<bool>(!(u_input.a < u_input.a), ~u_input.b.x <= firstLeadingBit(global0.a), any(select(vec2<bool>(true, true), global3.b.yx, true)))), _wgslsmith_f_op_f32(func_4(Struct_1(1u, vec3<bool>(true, any(var_0.b), func_2(Struct_1(global0.a, vec3<bool>(global0.b.x, true, global3.b.x))))), false)));
    global0 = global2[_wgslsmith_index_u32(var_0.a, 18u)];
    global1 = array<bool, 4>();
    let var_2 = global2[_wgslsmith_index_u32(38926u, 18u)];
    return global2[_wgslsmith_index_u32(countOneBits(~16131u), 18u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(ceil(-1508f));
    let var_2 = global2[_wgslsmith_index_u32(select(firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.a, 3496u, global0.a), u_input.b), ~vec3<u32>(global0.a, var_0.a, 9224u)), 57154u)), _wgslsmith_clamp_u32(40324u, 1u, ~1u), false), 18u)];
    global0 = func_1();
    global2 = array<Struct_1, 18>();
    global2 = array<Struct_1, 18>();
    global0 = func_1();
    global1 = array<bool, 4>();
    global1 = array<bool, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-563f - var_1), 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(step(-866f, var_1)), _wgslsmith_f_op_f32(-265f * -1508f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, 125f), vec2<f32>(var_1, -279f)))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -639f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 828f))), vec2<f32>(_wgslsmith_f_op_f32(abs(var_1)), _wgslsmith_f_op_f32(abs(114f))))), max(_wgslsmith_add_vec2_i32(-select(vec2<i32>(u_input.a, -1i), vec2<i32>(20718i, -57182i), var_2.b.x), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), -vec2<i32>(570i, u_input.a))), _wgslsmith_clamp_vec2_i32(reverseBits(~vec2<i32>(-33523i, 17354i)), -vec2<i32>(1i, u_input.a), abs(vec2<i32>(-44657i, 8450i)) >> (reverseBits(u_input.c) % vec2<u32>(32u)))));
}

