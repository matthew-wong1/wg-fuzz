struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27> = array<bool, 27>(true, true, false, true, true, false, true, true, false, false, true, true, true, false, false, false, false, true, false, true, true, true, false, false, false, true, false);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    global0 = array<bool, 27>();
    var var_0 = reverseBits(min(min(0u, 1u), ~u_input.a.x));
    let var_1 = Struct_1(firstLeadingBit(_wgslsmith_mult_vec2_u32(~max(vec2<u32>(u_input.b.x, u_input.a.x), vec2<u32>(u_input.b.x, u_input.b.x)), countOneBits(abs(vec2<u32>(u_input.b.x, u_input.b.x))))), !(!select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(5019u, 27u)], true, false), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 27u)], false, global0[_wgslsmith_index_u32(u_input.b.x, 27u)]), vec4<bool>(false, true, true, false)), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], true, global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(68977u, 27u)]), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], true, true, true))), vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, -29942i), -(-45283i << (u_input.b.x % 32u))), _wgslsmith_mod_i32(i32(-1i) * -39713i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(-1i, 22159i, -4722i), vec3<i32>(-1i, -10341i, -16118i), global0[_wgslsmith_index_u32(32503u, 27u)]), vec3<i32>(2147483647i, 0i, 33940i) >> (vec3<u32>(78759u, 6468u, u_input.a.x) % vec3<u32>(32u))))), vec3<bool>(all(!select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(8396u, 27u)], global0[_wgslsmith_index_u32(16452u, 27u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a.x, 27u)], false), global0[_wgslsmith_index_u32(u_input.b.x, 27u)])), ~(1u ^ u_input.a.x) <= _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(u_input.b.x, 4294967295u, 1u)), ~u_input.a), u_input.b.x > select(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 1u, 1u), vec3<u32>(u_input.a.x, 4294967295u, 38823u)), 849u, global0[_wgslsmith_index_u32(~u_input.b.x, 27u)])), max(max(vec3<i32>(-1i, ~1i, i32(-1i) * -57066i), firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -18900i, 2147483647i), vec3<i32>(2147483647i, 40253i, 1i)))), vec3<i32>(firstLeadingBit(0i), select(_wgslsmith_clamp_i32(-1i, 28570i, 0i), 1i, true), _wgslsmith_mult_i32(48984i, 12171i))));
    var_0 = ~firstTrailingBit(~1u);
    var var_2 = all(select(select(select(var_1.b, vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], var_1.b.x, false, false), var_1.b.x), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 27u)], true, var_1.b.x, global0[_wgslsmith_index_u32(u_input.a.x, 27u)]), vec4<bool>(true, true, true, true)), var_1.b, var_1.b.x));
    return _wgslsmith_sub_u32(var_1.a.x, ~countOneBits(5600u) ^ ~u_input.a.x);
}

fn func_2(arg_0: vec4<bool>, arg_1: f32, arg_2: u32) -> u32 {
    let var_0 = Struct_2(vec4<bool>(true, true, any(vec4<bool>(false, global0[_wgslsmith_index_u32(59026u, 27u)], false, false)), arg_0.x));
    var var_1 = false;
    var var_2 = Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(~func_3(), arg_2), _wgslsmith_sub_vec2_u32(firstTrailingBit(u_input.a.xy), _wgslsmith_add_vec2_u32(firstLeadingBit(u_input.a.xx), _wgslsmith_clamp_vec2_u32(u_input.a.yx, u_input.b.xy, u_input.a.zy)))), vec4<bool>(arg_0.x && all(select(arg_0.xz, arg_0.xx, vec2<bool>(var_0.a.x, false))), global0[_wgslsmith_index_u32(~u_input.a.x, 27u)], true, var_0.a.x), vec2<i32>(_wgslsmith_add_i32(~(-2147483647i), _wgslsmith_div_i32(~(-24434i), _wgslsmith_dot_vec4_i32(vec4<i32>(7623i, -61i, -1i, -2147483647i), vec4<i32>(31274i, 30443i, -1i, -4503i)))), _wgslsmith_dot_vec3_i32(-select(vec3<i32>(17959i, 17031i, -72357i), vec3<i32>(1i, -8502i, 0i), var_0.a.x), -vec3<i32>(-1i, 31306i, 1i))), vec3<bool>(all(var_0.a.yyz), all(select(!vec3<bool>(var_0.a.x, true, true), !var_0.a.wyz, !arg_0.x)), false), abs(-(vec3<i32>(-1i) * -vec3<i32>(56269i, 1i, -1097i))));
    let var_3 = 54692u;
    var_1 = true;
    return 21659u;
}

fn func_1() -> vec4<bool> {
    global0 = array<bool, 27>();
    global0 = array<bool, 27>();
    let var_0 = Struct_2(!(!(!select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(0u, 27u)], true), vec4<bool>(global0[_wgslsmith_index_u32(1u, 27u)], true, global0[_wgslsmith_index_u32(75856u, 27u)], true), false))));
    var var_1 = u_input.b.zz;
    var_1 = _wgslsmith_mod_vec2_u32((~max(vec2<u32>(var_1.x, var_1.x), u_input.a.yy) >> (~u_input.a.yx % vec2<u32>(32u))) | vec2<u32>(~(~1u), _wgslsmith_dot_vec2_u32(~u_input.a.yy, ~vec2<u32>(var_1.x, var_1.x))), _wgslsmith_sub_vec2_u32(vec2<u32>(~max(u_input.a.x, 55839u), func_2(var_0.a, -450f, ~u_input.b.x)), vec2<u32>(~(~0u), ~firstTrailingBit(0u))));
    return select(vec4<bool>(!any(vec4<bool>(false, global0[_wgslsmith_index_u32(106632u, 27u)], global0[_wgslsmith_index_u32(u_input.a.x, 27u)], true)), all(select(!var_0.a.zxy, select(var_0.a.xzy, vec3<bool>(false, var_0.a.x, global0[_wgslsmith_index_u32(5404u, 27u)]), var_0.a.wzz), var_0.a.yxy)), !global0[_wgslsmith_index_u32(~1u, 27u)], true), var_0.a, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(select(func_1(), select(vec4<bool>(select(true, global0[_wgslsmith_index_u32(4294967295u, 27u)], true), false, false, func_1().x), vec4<bool>(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 27u)], true, !global0[_wgslsmith_index_u32(u_input.b.x, 27u)], true), vec4<bool>(global0[_wgslsmith_index_u32(1u, 27u)], true, true & global0[_wgslsmith_index_u32(4294967295u, 27u)], all(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 27u)], true)))), global0[_wgslsmith_index_u32(~12422u, 27u)]));
    let var_1 = false;
    let var_2 = vec2<i32>(1i, ~(~select(~(-1i), _wgslsmith_mult_i32(1i, 1i), any(vec4<bool>(true, var_0.a.x, true, var_1)))));
    var var_3 = Struct_2(vec4<bool>(var_0.a.x | var_1, any(var_0.a.zxw), global0[_wgslsmith_index_u32(min(u_input.a.x, 4294967295u), 27u)], true));
    var var_4 = Struct_2(select(func_1(), var_3.a, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(438f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -737f), _wgslsmith_f_op_f32(-2235f + -667f))))));
}

