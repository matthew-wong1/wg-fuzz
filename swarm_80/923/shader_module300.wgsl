struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: Struct_2,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6>;

var<private> global1: array<u32, 15> = array<u32, 15>(4535u, 4294967295u, 0u, 11094u, 0u, 4294967295u, 3954u, 1u, 6751u, 1u, 30876u, 46406u, 39508u, 53612u, 23926u);

var<private> global2: array<i32, 16>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: Struct_5, arg_2: vec2<bool>, arg_3: bool) -> u32 {
    let var_0 = Struct_1(-7760i, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 15u)], 15u)], 1u), _wgslsmith_add_u32(0u, ~147997u)), ~0u, max(_wgslsmith_mod_u32(u_input.c.x, 4294967295u), ~14215u)), false, vec3<i32>(_wgslsmith_sub_i32((u_input.d.x ^ global2[_wgslsmith_index_u32(20253u, 16u)]) << (~1u % 32u), countOneBits(19921i) >> (global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 0u), u_input.b.zx), 15u)] % 32u)), min(-_wgslsmith_mult_i32(-2147483647i, global2[_wgslsmith_index_u32(u_input.c.x, 16u)]), -30779i), -global2[_wgslsmith_index_u32(~firstTrailingBit(u_input.b.x), 16u)]));
    global0 = array<bool, 6>();
    var var_1 = max(vec4<i32>(min(countOneBits(global2[_wgslsmith_index_u32(var_0.b, 16u)]), -18772i), -60693i, max(~var_0.d.x, -1i), firstLeadingBit(abs(12368i))), firstLeadingBit(vec4<i32>(1i, -1i, var_0.d.x, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 16u)]) >> (vec4<u32>(99707u, 12269u, global1[_wgslsmith_index_u32(79410u, 15u)], 4294967295u) % vec4<u32>(32u)))) >> (vec4<u32>(_wgslsmith_div_u32(~global1[_wgslsmith_index_u32(0u, 15u)], ~0u) ^ min(~u_input.c.x, ~u_input.b.x), 21322u, _wgslsmith_add_u32(_wgslsmith_sub_u32(firstTrailingBit(4294967295u), ~0u), ~min(var_0.b, 0u)), 4294967295u) % vec4<u32>(32u));
    global2 = array<i32, 16>();
    global1 = array<u32, 15>();
    return 4294967295u;
}

fn func_2(arg_0: u32) -> Struct_5 {
    let var_0 = Struct_3(select(_wgslsmith_sub_vec4_u32(u_input.a, vec4<u32>(35210u | arg_0, ~74182u, arg_0, u_input.a.x)), ~vec4<u32>(u_input.a.x, 4294967295u, global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.c.x, 15u)], 15u)], func_3(global0[_wgslsmith_index_u32(55153u, 6u)], Struct_5(Struct_2(vec2<bool>(true, true))), vec2<bool>(true, true), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 6u)])), vec4<bool>(!global0[_wgslsmith_index_u32(max(global1[_wgslsmith_index_u32(1u, 15u)], arg_0), 6u)], true, global0[_wgslsmith_index_u32(arg_0, 6u)], any(select(vec4<bool>(true, false, false, global0[_wgslsmith_index_u32(arg_0, 6u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 6u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 6u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 15u)], 6u)]), global0[_wgslsmith_index_u32(u_input.a.x, 6u)])))));
    global2 = array<i32, 16>();
    global2 = array<i32, 16>();
    let var_1 = 4294967295u;
    global2 = array<i32, 16>();
    return Struct_5(Struct_2(select(select(select(vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(arg_0, 6u)], global0[_wgslsmith_index_u32(1u, 6u)]), global0[_wgslsmith_index_u32(var_0.a.x, 6u)]), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 15u)], 6u)])), false), select(vec2<bool>(global0[_wgslsmith_index_u32(var_0.a.x, 6u)], global0[_wgslsmith_index_u32(var_0.a.x, 6u)]), select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 6u)]), vec2<bool>(false, false), true), global0[_wgslsmith_index_u32(1u, 6u)]), !vec2<bool>(global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(8309u, 6u)]))));
}

fn func_1(arg_0: vec2<bool>) -> i32 {
    var var_0 = arg_0.x;
    var var_1 = Struct_3(~u_input.a);
    var var_2 = func_2(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(min(countOneBits(~1u) & ~_wgslsmith_dot_vec2_u32(vec2<u32>(2190u, var_1.a.x), var_1.a.zx), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, abs(var_1.a.x) | u_input.b.x), 15u)], 15u)]), 15u)], 15u)]);
    var_0 = all(select(select(vec3<bool>(false, true, false), select(!vec3<bool>(arg_0.x, global0[_wgslsmith_index_u32(var_1.a.x, 6u)], false), vec3<bool>(true, true, true), false), !(!vec3<bool>(arg_0.x, false, false))), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 6u)] & true, global0[_wgslsmith_index_u32(var_1.a.x, 6u)], false), select(vec3<bool>(0i == global2[_wgslsmith_index_u32(0u, 16u)], all(vec3<bool>(false, false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.a.x, 15u)], 6u)])), true), select(vec3<bool>(true, true, arg_0.x), !vec3<bool>(true, var_2.a.a.x, arg_0.x), true), (true | arg_0.x) || var_2.a.a.x)));
    let var_3 = func_2(~max(reverseBits(30407u) | var_1.a.x, 0u));
    return 1058i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 16>();
    let var_0 = Struct_1(global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(25562u, u_input.a.x), 15u)], 16u)], ~19252u, false, abs(vec3<i32>(_wgslsmith_mod_i32(36725i, u_input.d.x), _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(0u, 16u)], func_1(vec2<bool>(false, false))), i32(-1i) * -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-109f, -497f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(146f)) - _wgslsmith_f_op_f32(1104f * -1681f))))), _wgslsmith_div_i32(-reverseBits(global2[_wgslsmith_index_u32(u_input.c.x, 16u)]), global2[_wgslsmith_index_u32(var_0.b, 16u)]), ~(~65961u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_f32(f32(-1f) * -1297f));
}

