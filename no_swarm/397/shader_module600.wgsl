struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(0u, 7936u, -513f)), Struct_2(Struct_1(4294967295u, 14316u, -2959f)), Struct_2(Struct_1(26906u, 37538u, -1000f)), Struct_2(Struct_1(21352u, 0u, -698f)), Struct_2(Struct_1(75695u, 4294967295u, 990f)));

var<private> global1: array<bool, 6> = array<bool, 6>(false, true, true, false, false, true);

var<private> global2: Struct_3 = Struct_3(vec4<f32>(1222f, -336f, 1129f, 234f), 1u);

var<private> global3: array<Struct_3, 18>;

var<private> global4: array<bool, 18> = array<bool, 18>(true, false, true, false, true, false, true, false, false, false, true, false, false, true, true, true, false, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: vec4<f32>) -> u32 {
    var var_0 = -633f;
    global0 = array<Struct_2, 5>();
    global2 = global3[_wgslsmith_index_u32(arg_1, 18u)];
    global0 = array<Struct_2, 5>();
    return ~23924u;
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> vec4<bool> {
    return vec4<bool>(true, true, any(vec2<bool>(true, !(550f > arg_1.a.x))), true);
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    global2 = global3[_wgslsmith_index_u32(u_input.a ^ 4294967295u, 18u)];
    var var_0 = _wgslsmith_div_u32(u_input.a, firstTrailingBit(~global2.b));
    var var_1 = vec3<bool>(_wgslsmith_f_op_f32(-arg_1.a.c) > arg_1.a.c, !(global2.a.x > arg_1.a.c), all(func_4(true, Struct_3(global2.a, func_3(vec2<i32>(arg_0, -7775i), 21779u, vec4<f32>(arg_1.a.c, -426f, 896f, arg_1.a.c))))));
    var var_2 = global0[_wgslsmith_index_u32(52986u, 5u)];
    let var_3 = global3[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(var_2.a.a, ~1u) << (61908u % 32u)), 18u)];
    return Struct_1(abs(~global2.b), 1u, _wgslsmith_f_op_f32(-var_3.a.x));
}

fn func_1() -> Struct_3 {
    global1 = array<bool, 6>();
    global0 = array<Struct_2, 5>();
    let var_0 = global2.a.xxw;
    var var_1 = Struct_2(func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -1i, 0i), _wgslsmith_mod_vec2_i32(-vec2<i32>(2150i, 11243i), vec2<i32>(1i, 1i))), global0[_wgslsmith_index_u32(4294967295u, 5u)]));
    var var_2 = !vec2<bool>(false, global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2.b, firstLeadingBit(max(17735u, var_1.a.a))), 18u)]);
    return Struct_3(_wgslsmith_f_op_vec4_f32(-global2.a), reverseBits(1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(1u, 5u)];
    var var_1 = ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global2.b), max(vec2<u32>(global2.b, var_0.a.b), vec2<u32>(var_0.a.b, 27093u)))) ^ 43760u;
    global2 = func_1();
    global0 = array<Struct_2, 5>();
    var_1 = 4294967295u;
    global3 = array<Struct_3, 18>();
    var var_2 = -firstLeadingBit(max(reverseBits(vec3<i32>(0i, -2147483647i, 13168i)), vec3<i32>(-1i) * -vec3<i32>(1457i, -2147483647i, -4808i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_add_i32(~abs(reverseBits(var_2.x)), var_2.x), ~_wgslsmith_mod_vec3_i32(abs(vec3<i32>(var_2.x, var_2.x, var_2.x)), vec3<i32>(var_2.x, _wgslsmith_div_i32(-38578i, var_2.x), var_2.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(772f - global2.a.x) * _wgslsmith_f_op_f32(-647f - 867f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-365f + global2.a.x) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a.c)))))), -328f);
}

