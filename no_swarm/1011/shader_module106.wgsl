struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7>;

var<private> global1: vec4<u32>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec4<u32> {
    global0 = array<bool, 7>();
    let var_0 = Struct_1(arg_0.a, (!(global1.x < 24476u) && true) != (!arg_0.b & (arg_0.b || arg_0.c.x)), select(vec3<bool>(firstLeadingBit(u_input.b.x) > 4294967295u, true, !all(vec4<bool>(false, false, true, false))), vec3<bool>(arg_0.b, !arg_0.b, all(vec4<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x, arg_0.c.x))), true));
    global0 = array<bool, 7>();
    let var_1 = select(select(select(!(!vec4<bool>(global0[_wgslsmith_index_u32(25761u, 7u)], true, true, true)), vec4<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], var_0.c.x, true, false)), false, true, false), !(!vec4<bool>(arg_0.c.x, true, false, false))), vec4<bool>(arg_0.c.x, !(!arg_0.b), global0[_wgslsmith_index_u32(~(0u >> (u_input.a.x % 32u)), 7u)], all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], true, false))), any(!arg_0.c.zx)), !select(vec4<bool>(any(vec4<bool>(var_0.c.x, false, arg_0.b, false)), true, true, true), !vec4<bool>(global0[_wgslsmith_index_u32(global1.x, 7u)], global0[_wgslsmith_index_u32(global1.x, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)], false), select(vec4<bool>(arg_0.b, false, false, global0[_wgslsmith_index_u32(0u, 7u)]), !vec4<bool>(arg_0.c.x, global0[_wgslsmith_index_u32(global1.x, 7u)], arg_0.c.x, true), !vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(36u, 7u)]))), select(select(vec4<bool>(true && arg_0.c.x, -2147483647i <= u_input.c, !arg_0.c.x, 4294967295u <= u_input.b.x), vec4<bool>(var_0.b, true, !var_0.c.x, global0[_wgslsmith_index_u32(~12594u, 7u)]), select(var_0.c.x, global1.x > global1.x, arg_0.b)), vec4<bool>(false, true, true, false), select(!vec4<bool>(true, true, var_0.c.x, false), select(!vec4<bool>(true, false, global0[_wgslsmith_index_u32(91382u, 7u)], true), !vec4<bool>(false, arg_0.b, var_0.c.x, var_0.b), true), all(select(vec4<bool>(true, false, false, true), vec4<bool>(global0[_wgslsmith_index_u32(49869u, 7u)], false, arg_0.b, true), false)))));
    var var_2 = vec2<i32>(_wgslsmith_clamp_i32(72007i, 1i, _wgslsmith_mult_i32(countOneBits(~43904i), var_0.a)), 52288i);
    return u_input.a;
}

fn func_2(arg_0: f32, arg_1: vec4<f32>) -> u32 {
    global1 = abs(func_3(Struct_1(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(3749i, u_input.d, 34742i), select(u_input.c, u_input.d, global0[_wgslsmith_index_u32(u_input.a.x, 7u)])), (global1.x ^ 30645u) == u_input.b.x, !(!vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 7u)], false, false))), _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(select(-3311f, arg_1.x, 0i != u_input.d)))));
    let var_0 = ~_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.c, u_input.d), vec3<i32>(u_input.d, u_input.d, u_input.c)), select(vec3<i32>(1i, u_input.c, u_input.c), vec3<i32>(u_input.d, 0i, -28754i), global0[_wgslsmith_index_u32(0u, 7u)])) << (~25236u % 32u), u_input.d);
    let var_1 = ~(~var_0);
    let var_2 = select(!(!vec3<bool>(true, any(vec3<bool>(global0[_wgslsmith_index_u32(70701u, 7u)], global0[_wgslsmith_index_u32(global1.x, 7u)], global0[_wgslsmith_index_u32(global1.x, 7u)])), false)), vec3<bool>(true, global0[_wgslsmith_index_u32(50711u, 7u)], global0[_wgslsmith_index_u32(0u, 7u)]), !(!select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(97719u, 7u)], true), select(vec3<bool>(true, true, false), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 7u)], false, global0[_wgslsmith_index_u32(4294967295u, 7u)]), vec3<bool>(global0[_wgslsmith_index_u32(global1.x, 7u)], true, global0[_wgslsmith_index_u32(global1.x, 7u)])), true)));
    let var_3 = Struct_1(var_0, true, select(select(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 7u)], select(var_2.x, global0[_wgslsmith_index_u32(4294967295u, 7u)], false)), vec3<bool>(global0[_wgslsmith_index_u32(global1.x, 7u)], global0[_wgslsmith_index_u32(global1.x, 7u)] & var_2.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(global1.x, u_input.b.x)), 7u)]), select(var_2, !vec3<bool>(var_2.x, var_2.x, global0[_wgslsmith_index_u32(101148u, 7u)]), !vec3<bool>(false, global0[_wgslsmith_index_u32(global1.x, 7u)], false))), !var_2, var_2));
    return ~0u;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_div_f32(739f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(272f * _wgslsmith_f_op_f32(trunc(-853f))))));
    global1 = ~u_input.a;
    let var_1 = arg_2;
    let var_2 = global1.x;
    let var_3 = 22873u;
    return StorageBuffer(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -5231i, -2147483647i >> (firstLeadingBit(var_3) % 32u), arg_2.a), ~vec4<i32>(0i, u_input.c, u_input.c, var_1.a) | -(vec4<i32>(u_input.c, arg_2.a, var_1.a, var_1.a) << (vec4<u32>(arg_1, var_3, var_3, 1u) % vec4<u32>(32u)))));
}

fn func_1() -> StorageBuffer {
    global0 = array<bool, 7>();
    global1 = u_input.a;
    var var_0 = true;
    var_0 = global0[_wgslsmith_index_u32(4294967295u, 7u)];
    global1 = u_input.a;
    return func_4(global0[_wgslsmith_index_u32(10392u, 7u)], ~((global1.x << (4294967295u % 32u)) & ~func_2(894f, vec4<f32>(999f, 770f, -449f, 643f))), Struct_1(select(u_input.d, _wgslsmith_sub_i32(i32(-1i) * -77690i, -1484i), global0[_wgslsmith_index_u32(0u, 7u)]), any(select(select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], true, true), vec3<bool>(false, global0[_wgslsmith_index_u32(60007u, 7u)], true), vec3<bool>(global0[_wgslsmith_index_u32(65603u, 7u)], false, true)), vec3<bool>(global0[_wgslsmith_index_u32(global1.x, 7u)], false, global0[_wgslsmith_index_u32(11408u, 7u)]), !global0[_wgslsmith_index_u32(u_input.a.x, 7u)])), !vec3<bool>(!global0[_wgslsmith_index_u32(u_input.b.x, 7u)], all(vec4<bool>(global0[_wgslsmith_index_u32(87674u, 7u)], true, global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(6158u, 7u)])), any(vec3<bool>(true, global0[_wgslsmith_index_u32(global1.x, 7u)], global0[_wgslsmith_index_u32(global1.x, 7u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -13616i;
    var var_1 = -(~vec4<i32>(u_input.c, countOneBits(1i), -u_input.c ^ max(u_input.d, -47434i), ~select(u_input.c, u_input.d, false)));
    var var_2 = -_wgslsmith_mult_i32(-3947i, (_wgslsmith_mod_i32(-42626i, var_1.x) >> (~0u % 32u)) & -50836i);
    global0 = array<bool, 7>();
    let var_3 = _wgslsmith_f_op_f32(-1241f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(1303f, 798f)))));
    let x = u_input.a;
    s_output = func_1();
}

