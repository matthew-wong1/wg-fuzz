struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: f32,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: u32 = 4294967295u;

var<private> global3: array<Struct_1, 27>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = u_input.a;
    var var_1 = ~countOneBits(vec2<u32>(1u, arg_0.d) >> (_wgslsmith_div_vec2_u32(vec2<u32>(0u, 42575u) & vec2<u32>(4294967295u, u_input.b.x), arg_0.e.wx) % vec2<u32>(32u)));
    var var_2 = var_1.x | global0.e.x;
    global2 = ~81261u << (global0.b.x % 32u);
    let var_3 = true;
    return arg_0.a;
}

fn func_3() -> u32 {
    let var_0 = global3[_wgslsmith_index_u32(global1.b.x, 27u)];
    global2 = (_wgslsmith_mult_u32(u_input.b.x, ~(global1.e.x | 0u)) ^ ~4294967295u) ^ global0.d;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1277f, global0.c), global1.c, 1223f, _wgslsmith_f_op_f32(-730f + -550f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(879f, 334f, 735f, -215f))))));
    var var_2 = Struct_1(global0.a, vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u, global0.e.x >> (7980u % 32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(global1.b, vec3<u32>(var_0.d, 0u, 0u)), global0.b), u_input.b.x), global1.e.x, ~(~_wgslsmith_mod_u32(41843u, 1u))), global1.c, 0u << (_wgslsmith_add_u32(reverseBits(~global0.d), ~global1.e.x) % 32u), vec4<u32>(~1u, 1u, 0u, u_input.b.x));
    var var_3 = reverseBits(select(min(vec4<i32>(-1i, 10890i, u_input.a, u_input.a), vec4<i32>(u_input.a, 0i, u_input.a, 2147483647i)) >> ((vec4<u32>(0u, var_0.d, 0u, var_2.b.x) | var_2.e) % vec4<u32>(32u)), ~firstTrailingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<bool>(!any(vec3<bool>(var_2.a.x, var_0.a.x, false)), var_2.a.x, true, var_0.a.x)));
    return ~max(global1.e.x, select(max(~u_input.b.x, 0u), global0.d, true));
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: vec2<f32>) -> bool {
    global0 = Struct_1(func_2(global3[_wgslsmith_index_u32(global0.b.x ^ max(0u, ~4694u), 27u)]), vec3<u32>(global0.b.x, ~_wgslsmith_mod_u32(1u, ~global1.b.x), global0.d), arg_0, u_input.b.x, ~_wgslsmith_mod_vec4_u32(global1.e, ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, global0.e.x, 0u, global1.b.x), u_input.b)));
    var var_0 = global3[_wgslsmith_index_u32(u_input.b.x, 27u)];
    var var_1 = countOneBits(0i);
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_mod_u32(1u, ~func_3())), _wgslsmith_sub_u32(~27965u, _wgslsmith_div_u32(abs(13034u), 1u))), 27u)];
    var_2 = Struct_1(!func_2(global3[_wgslsmith_index_u32(global1.e.x, 27u)]), ~_wgslsmith_mod_vec3_u32(countOneBits(~vec3<u32>(u_input.b.x, 83385u, var_2.d)), countOneBits(~vec3<u32>(var_0.b.x, 1u, 9891u))), -1077f, var_2.e.x, select(firstLeadingBit(~var_2.e), ~var_0.e, select(!select(vec4<bool>(true, true, var_2.a.x, true), vec4<bool>(true, true, var_2.a.x, global0.a.x), vec4<bool>(true, arg_1, true, true)), !vec4<bool>(arg_1, false, false, false), !vec4<bool>(arg_1, true, global0.a.x, global1.a.x))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(select(vec3<bool>(!(global0.a.x && global1.a.x), func_1(global0.c, true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c, global0.c))), !global1.a.x), !global1.a, global0.a), vec3<u32>(~3146u, u_input.b.x, ~reverseBits(u_input.b.x)) ^ global0.e.yww, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-565f + global0.c)))), _wgslsmith_sub_u32(~(~global1.e.x), ~(~global0.b.x)), select(~firstTrailingBit(global0.e), global0.e ^ _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b.x, global0.b.x, global0.b.x, global1.d), select(vec4<u32>(global1.d, u_input.b.x, global1.d, 1u), global1.e, vec4<bool>(global0.a.x, true, false, global1.a.x))), vec4<bool>(true, (521f >= global0.c) || global1.a.x, !all(vec2<bool>(global1.a.x, global0.a.x)), !(global0.a.x & global1.a.x))));
    let var_0 = u_input.a;
    let var_1 = select(select(global1.a.yy, select(global1.a.yy, global1.a.zz, vec2<bool>(global0.a.x, false)), global0.a.xz), !(!vec2<bool>(all(vec2<bool>(true, true)), all(global1.a.xz))), vec2<bool>(any(select(global1.a.xx, vec2<bool>(global1.a.x, true), vec2<bool>(false, global1.a.x))) & false, global1.a.x));
    let var_2 = global1.e ^ (global1.e ^ u_input.b);
    let var_3 = -max(abs(vec3<i32>(-var_0, 7601i, max(var_0, var_0))), select(_wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a, -1i, -82726i)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0, 52195i, var_0), vec3<i32>(u_input.a, -47563i, var_0))), vec3<i32>(-1i) * -vec3<i32>(-2147483647i, var_0, -1i), true));
    let var_4 = global3[_wgslsmith_index_u32(0u, 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_div_f32(global1.c, 349f))))), vec4<i32>(abs(reverseBits(u_input.a)), -(2147483647i << (_wgslsmith_add_u32(var_4.d, u_input.b.x) % 32u)), u_input.a, max(var_0 & var_3.x, -46260i) & firstLeadingBit(u_input.a ^ 56952i)), var_3.xz);
}

