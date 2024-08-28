struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: f32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

var<private> global1: Struct_1;

var<private> global2: array<vec4<u32>, 6>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = vec3<bool>(!(!(true || (global1.a && false))), false, !(true || !(!global1.a)));
    var var_1 = 1f;
    var_1 = global1.c;
    let var_2 = Struct_1(select(var_0.x, var_0.x, !(true && !global1.a)), firstLeadingBit(vec3<u32>(u_input.a, 55801u, 1u & _wgslsmith_add_u32(5840u, arg_0))), 587f, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global1.d, ~vec4<u32>(u_input.a, arg_0, global1.b.x, 54942u)), 6u)] | vec4<u32>(reverseBits(~u_input.a), arg_0, select(15838u, global1.d.x, var_0.x), ~(~global0[_wgslsmith_index_u32(0u, 1u)])));
    var var_3 = var_2;
    return ~(0u << (~_wgslsmith_sub_u32(arg_0, var_2.d.x) % 32u));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: f32, arg_3: vec2<u32>) -> f32 {
    let var_0 = Struct_1(any(vec4<bool>(arg_1.x, false | (67040i <= arg_0), (global1.a & false) | select(true, true, true), all(vec3<bool>(true, true, false)))), abs(vec3<u32>(func_3(global0[_wgslsmith_index_u32(41131u, 1u)]) | abs(global0[_wgslsmith_index_u32(u_input.a, 1u)]), 12448u, 42579u)), _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(f32(-1f) * -2104f)), vec4<u32>(~1u, 1u, max(1u, global0[_wgslsmith_index_u32(~(~1u), 1u)]), 0u));
    global1 = Struct_1(true, ~_wgslsmith_div_vec3_u32(~vec3<u32>(global1.d.x, arg_3.x, var_0.d.x), ~min(vec3<u32>(var_0.d.x, u_input.a, 4294967295u), global1.b)), _wgslsmith_f_op_f32(-arg_2), firstTrailingBit(min(~(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 1u)], 6u)] ^ vec4<u32>(arg_3.x, 1u, 46917u, 45445u)), _wgslsmith_add_vec4_u32(var_0.d, global2[_wgslsmith_index_u32(4294967295u, 6u)] << (vec4<u32>(arg_3.x, arg_3.x, 17800u, 1u) % vec4<u32>(32u))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(889f, var_0.c) + vec2<f32>(arg_2, -521f))))))));
    var var_2 = Struct_1(true, ~(~vec3<u32>(~global1.b.x, var_0.b.x, _wgslsmith_mod_u32(14984u, 1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(633f)))) * -779f), vec4<u32>(_wgslsmith_mod_u32(~73438u, abs(4294967295u)), _wgslsmith_add_u32(global1.d.x, 4294967295u), 50805u, arg_3.x));
    global0 = array<u32, 1>();
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(533f, -293f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) * 222f));
}

fn func_4(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = !(!vec3<bool>(global1.a, true, any(!vec3<bool>(global1.a, true, false))));
    global1 = Struct_1(all(select(!select(vec2<bool>(false, false), vec2<bool>(global1.a, global1.a), false), !(!vec2<bool>(global1.a, var_0.x)), select(false, all(vec2<bool>(false, global1.a)), false))), vec3<u32>(0u, _wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(reverseBits(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global1.d.x, global0[_wgslsmith_index_u32(4294967295u, 1u)]), 1u)]), 6u)], min(~global2[_wgslsmith_index_u32(u_input.a, 6u)], firstTrailingBit(vec4<u32>(global1.b.x, 0u, 17016u, 23420u)))), 1u), arg_0.x, countOneBits(global2[_wgslsmith_index_u32(~(~u_input.a), 6u)]) ^ _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(u_input.a, global1.d.x, 731u, 1u) >> (vec4<u32>(global1.b.x, global1.d.x, u_input.a, 2650u) % vec4<u32>(32u))), global2[_wgslsmith_index_u32(u_input.a, 6u)]));
    global2 = array<vec4<u32>, 6>();
    global2 = array<vec4<u32>, 6>();
    global0 = array<u32, 1>();
    return Struct_1(global1.a, global1.d.yzw, 493f, _wgslsmith_add_vec4_u32(firstTrailingBit(global2[_wgslsmith_index_u32(~60473u >> (global1.b.x % 32u), 6u)]), ~_wgslsmith_mod_vec4_u32(vec4<u32>(54982u, 11335u, 73122u, u_input.a), vec4<u32>(93595u, u_input.a, 0u, global0[_wgslsmith_index_u32(4294967295u, 1u)]) | vec4<u32>(0u, 875u, global0[_wgslsmith_index_u32(21807u, 1u)], u_input.a))));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> Struct_1 {
    global2 = array<vec4<u32>, 6>();
    global1 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(826f, _wgslsmith_f_op_f32(abs(arg_1.c))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(816f, arg_1.c)) - vec2<f32>(arg_1.c, arg_0)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1065f, arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c, global1.c))))));
    let var_0 = arg_1;
    let var_1 = countOneBits(arg_1.d) & ~vec4<u32>(~(u_input.a >> (u_input.a % 32u)), ~4294967295u, ~global0[_wgslsmith_index_u32(u_input.a, 1u)], firstTrailingBit(~0u));
    let var_2 = func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c, -445f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, var_0.c)))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.c, 1057f))), vec2<f32>(arg_1.c, arg_0)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0, arg_1.c))), vec2<f32>(arg_0, global1.c)))));
    return func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c, arg_0) - vec2<f32>(global1.c, -1334f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, arg_1.c) * vec2<f32>(446f, arg_0))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.c, -377f)))))));
}

fn func_1() -> Struct_1 {
    var var_0 = global1.c;
    var var_1 = func_5(-2291f, func_4(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(-1i, vec3<bool>(global1.a, false, false), global1.c, vec2<u32>(18764u, u_input.a))), _wgslsmith_f_op_f32(-global1.c)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c, global1.c)))), _wgslsmith_sub_i32(0i, -2147483647i), 1i);
    var var_2 = 62583u;
    let var_3 = -18171i;
    let var_4 = func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2030f, -959f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(130f, global1.c))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c, 2289f)))).a;
    return func_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-733f * 121f)), 697f), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.c, var_1.c), vec2<f32>(-1262f, 380f), false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-616f, global1.c)))), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(-15797i);
    let var_1 = Struct_1(true, _wgslsmith_mod_vec3_u32(global1.d.wxy ^ _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, global1.b.x, global0[_wgslsmith_index_u32(1u, 1u)]), vec3<u32>(31453u, 10769u, u_input.a)), global1.d.wxw << ((global1.d.wyz ^ vec3<u32>(1u, global0[_wgslsmith_index_u32(u_input.a, 1u)], 1u)) % vec3<u32>(32u))) << (((global1.b << (vec3<u32>(4294967295u, 0u, global1.b.x) % vec3<u32>(32u))) | (abs(vec3<u32>(42030u, u_input.a, 65306u)) ^ (global1.d.yzz >> (vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 1u)], u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(149u, 1u)], 1u)]) % vec3<u32>(32u))))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-global1.c), vec4<u32>(global1.b.x, (countOneBits(32905u) >> (_wgslsmith_add_u32(12603u, global0[_wgslsmith_index_u32(4294967295u, 1u)]) % 32u)) & max(firstLeadingBit(global1.b.x), u_input.a), 1u, ~(~_wgslsmith_dot_vec2_u32(global1.b.xx, vec2<u32>(global1.d.x, 19396u)))));
    global1 = func_1();
    let var_2 = 1u;
    let var_3 = var_1;
    global1 = var_3;
    var var_4 = 22730u;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~global2[_wgslsmith_index_u32(global1.b.x, 6u)]));
}

