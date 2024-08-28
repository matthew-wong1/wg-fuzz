struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<bool>,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec2<i32>, 31> = array<vec2<i32>, 31>(vec2<i32>(45276i, 15759i), vec2<i32>(-1i, -39379i), vec2<i32>(-12486i, -47412i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(2147483647i, -1i), vec2<i32>(2431i, 2147483647i), vec2<i32>(1i, 0i), vec2<i32>(i32(-2147483648), -5083i), vec2<i32>(-22478i, 46551i), vec2<i32>(1i, 1i), vec2<i32>(1i, 9960i), vec2<i32>(-52564i, 0i), vec2<i32>(18517i, 11997i), vec2<i32>(i32(-2147483648), 11964i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(1i, 1117i), vec2<i32>(-1i, -57707i), vec2<i32>(i32(-2147483648), -36069i), vec2<i32>(1i, 38922i), vec2<i32>(-33827i, 1i), vec2<i32>(0i, 1i), vec2<i32>(-1i, 35449i), vec2<i32>(9746i, 26991i), vec2<i32>(-1i, 33297i), vec2<i32>(1i, 2147483647i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-2060i, i32(-2147483648)), vec2<i32>(33673i, -37249i), vec2<i32>(2147483647i, 71845i));

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(61751u, 1134f, 1u), Struct_1(0u, -2023f, 44170u), Struct_1(0u, 864f, 4294967295u), Struct_1(10121u, -1253f, 26103u));

var<private> global3: Struct_2 = Struct_2(vec4<u32>(4294967295u, 64736u, 66264u, 1u), Struct_1(0u, 856f, 4294967295u), vec3<bool>(true, false, false), -18205i, false);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> u32 {
    let var_0 = arg_2;
    global2 = array<Struct_1, 4>();
    global1 = array<vec2<i32>, 31>();
    global3 = Struct_2(vec4<u32>(~1u, var_0.b.c, _wgslsmith_dot_vec4_u32(~global3.a | firstTrailingBit(vec4<u32>(15052u, 60754u, 1u, 0u)), countOneBits(~global3.a)), 4294967295u), Struct_1(firstTrailingBit(4294967295u), _wgslsmith_f_op_f32(-arg_2.b.b), var_0.a.x), select(var_0.c, global3.c, !vec3<bool>(!global3.e, arg_2.a.x != 0u, true)), 3762i, true);
    var var_1 = var_0;
    return 1u;
}

fn func_2() -> f32 {
    let var_0 = vec3<bool>(!global3.c.x, !any(vec4<bool>(global3.c.x, global3.e == true, global3.e, global3.e)), true);
    global1 = array<vec2<i32>, 31>();
    var var_1 = Struct_2(global3.a, Struct_1(func_3(Struct_2(vec4<u32>(global3.b.a, 0u, 69571u, global3.b.a), global3.b, select(var_0, var_0, global3.c.x), -global3.d, false), reverseBits(1u) > global3.b.c, Struct_2(abs(vec4<u32>(66403u, 66313u, global3.b.a, global3.b.a)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global3.a.x, global3.b.a), 4u)], !vec3<bool>(global3.c.x, true, true), 49000i >> (global3.b.a % 32u), any(global3.c.zz))), -742f, global3.b.a), !vec3<bool>(!(!var_0.x), any(global3.c), any(vec2<bool>(true, true))), -global3.d, !select(all(global3.c), true, any(vec2<bool>(true, var_0.x))));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-218f))), -1130f))))));
    var var_3 = ~(~24439u);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.b)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(735f - 599f))))), var_1.b.b);
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3.b.b, global3.b.b, 513f))) - vec3<f32>(_wgslsmith_f_op_f32(func_2()), global3.b.b, -857f))) - vec3<f32>(_wgslsmith_f_op_f32(2433f - 1636f), global3.b.b, global3.b.b));
    var var_1 = _wgslsmith_mult_u32(global3.b.c, global3.a.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(359f, -1908f, 128f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.b.b)) + _wgslsmith_f_op_f32(-var_0.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(2385f, 665f), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.x) * vec4<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), global3.b.b, var_0.x, global3.b.b))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, -488f) + var_0.zx)))));
    var var_4 = global3.b.b;
    return ~(~_wgslsmith_sub_i32(global3.d, -5292i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.b.c;
    var_0 = global3.b.a;
    global2 = array<Struct_1, 4>();
    var var_1 = 0i;
    let var_2 = Struct_2(~vec4<u32>(~13110u, global3.b.c, 48215u << (global3.a.x % 32u), 17133u), Struct_1(firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_sub_u32(20107u, global3.b.c), global3.b.c)), global3.b.b, global3.b.a), vec3<bool>(!all(!vec4<bool>(false, global3.c.x, true, global3.e)), all(!global3.c.xx), global3.c.x), global0.x, all(global3.c));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(var_2.d, 0i, 0i), vec3<i32>(func_1(), u_input.a.x, global0.x))), firstTrailingBit(vec4<i32>((61719i ^ global3.d) | _wgslsmith_div_i32(2147483647i, global3.d), -(~global3.d), _wgslsmith_add_i32(var_2.d, -2147483647i), ~var_2.d & ~var_2.d)), -1i);
}

