struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5> = array<f32, 5>(837f, -858f, -2508f, 658f, 847f);

var<private> global1: array<Struct_3, 14>;

var<private> global2: Struct_1;

var<private> global3: array<vec3<f32>, 15>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>) -> bool {
    var var_0 = ~vec4<i32>(_wgslsmith_sub_i32(-1i, ~global2.b), 37357i, 2596i, -9982i);
    var var_1 = min(~81653u, reverseBits(~19596u));
    let var_2 = select(vec2<u32>(max(45792u, ~global2.a.x ^ (global2.a.x >> (34324u % 32u))), ~countOneBits(reverseBits(global2.a.x))), vec2<u32>(countOneBits(_wgslsmith_dot_vec3_u32(select(global2.a.yzw, u_input.a.wxz, vec3<bool>(false, arg_0, arg_0)), _wgslsmith_mult_vec3_u32(u_input.a.yyx, vec3<u32>(0u, global2.a.x, 2636u)))), u_input.a.x), all(!vec2<bool>(arg_0, global2.a.x < 4294967295u)));
    let var_3 = 4294967295u;
    let var_4 = Struct_1(~(~vec4<u32>(u_input.a.x >> (0u % 32u), select(global2.a.x, global2.a.x, false), ~global2.a.x, ~27738u)), u_input.d);
    return true;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: vec2<u32>) -> i32 {
    var var_0 = select(vec4<bool>(true, true, func_3(arg_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(20873u, 5u)], 432f)))), firstTrailingBit(_wgslsmith_add_i32(global2.b, arg_2.x)) > _wgslsmith_dot_vec4_i32(vec4<i32>(22271i, arg_2.x, u_input.d, arg_2.x) >> (vec4<u32>(arg_3.x, arg_1.a.a.x, 30428u, arg_3.x) % vec4<u32>(32u)), -vec4<i32>(u_input.d, u_input.d, -1i, arg_2.x))), select(select(vec4<bool>(!arg_0.x, arg_0.x, true, select(true, arg_0.x, arg_0.x)), select(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, false), vec4<bool>(arg_0.x, false, arg_0.x, false)), !arg_0.x), !(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)), any(arg_0)), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(34680u, arg_1.a.a.x, arg_3.x, u_input.a.x), u_input.a) << (57352u % 32u)) != arg_1.a.a.x);
    global2 = arg_1.a;
    var var_1 = select(select(vec4<u32>(_wgslsmith_mod_u32(55313u >> (u_input.a.x % 32u), 4294967295u), min(~arg_3.x, ~arg_1.a.a.x), 51330u, 17810u), vec4<u32>(reverseBits(~global2.a.x), _wgslsmith_mod_u32(u_input.a.x, ~arg_3.x), ~_wgslsmith_dot_vec2_u32(global2.a.yy, arg_3), 1u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(811f)), global0[_wgslsmith_index_u32(~global2.a.x, 5u)], arg_0.x)) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(52193u, 5u)] * 1295f)))), _wgslsmith_div_vec4_u32(~arg_1.a.a, select(~vec4<u32>(arg_3.x, 22220u, global2.a.x, 0u), u_input.a, var_0.x)), arg_0.x);
    let var_2 = arg_1.a.a.x;
    let var_3 = global1[_wgslsmith_index_u32(79u, 14u)];
    return _wgslsmith_sub_i32(global2.b, -_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(11143i, 833i, -1i, 25558i), vec4<i32>(-33155i, arg_1.a.b, global2.b, arg_2.x)), vec4<i32>(arg_1.a.b, arg_2.x | u_input.c, countOneBits(arg_2.x), arg_1.a.b)));
}

fn func_1() -> StorageBuffer {
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(651f - 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1625f * global0[_wgslsmith_index_u32(u_input.a.x, 5u)]) - _wgslsmith_f_op_f32(trunc(649f))), 931f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-671f + -844f) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 5u)]))) * _wgslsmith_div_vec4_f32(vec4<f32>(1935f, _wgslsmith_f_op_f32(244f + global0[_wgslsmith_index_u32(global2.a.x, 5u)]), 1309f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 5u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-131f, 1756f, 811f, 1915f)))))), _wgslsmith_sub_u32(~20926u, ~u_input.a.x << (~global2.a.x % 32u)), ~vec4<i32>(-1i, -abs(19464i), global2.b, func_2(vec3<bool>(true, true, true), Struct_4(Struct_1(vec4<u32>(46284u, 21374u, 1u, 0u), u_input.d)), _wgslsmith_mult_vec3_i32(vec3<i32>(global2.b, u_input.d, 0i), vec3<i32>(33294i, -18686i, u_input.d)), vec2<u32>(59105u, 46498u))), u_input.a.x, 18827u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

