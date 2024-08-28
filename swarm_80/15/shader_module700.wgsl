struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
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

var<private> global0: vec2<i32> = vec2<i32>(i32(-2147483648), -31739i);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: vec3<bool>) -> bool {
    var var_0 = arg_2.x;
    let var_1 = _wgslsmith_f_op_f32(-272f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a.x + 1334f), arg_0)));
    let var_2 = select(vec2<bool>(false, false || (arg_2.x != ~31269u)), arg_3.zx, any(select(!(!vec4<bool>(arg_3.x, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(all(arg_3.xx), arg_3.x || false, arg_3.x, true))));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -760f);
    let var_4 = arg_1.a.x;
    return true;
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec4<u32>, arg_3: vec4<f32>) -> i32 {
    var var_0 = Struct_3(59098u, Struct_2(countOneBits(arg_2.x), 1i, Struct_1(vec4<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(arg_2.yy, vec2<u32>(1u, 3816u)), ~93432u, 44202u), !(!vec3<bool>(true, arg_0, true)))), min(~(vec2<i32>(global0.x, -1i) | u_input.b.yz), u_input.b.yy), Struct_2(u_input.a.x, i32(-1i) * -arg_1, Struct_1(_wgslsmith_add_vec4_u32(~arg_2, max(arg_2, arg_2)), !select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, arg_0, true)))), 1186f);
    global0 = select(select(select(-_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.d.b, 0i), vec2<i32>(1i, -23462i), vec2<i32>(var_0.c.x, u_input.b.x)), vec2<i32>(-var_0.d.b, _wgslsmith_mod_i32(-2147483647i, global0.x)), var_0.b.c.b.xz), vec2<i32>(arg_1, ~u_input.b.x), arg_0), firstTrailingBit(max(-u_input.b.ww, firstLeadingBit(u_input.b.xx))), arg_0);
    var var_1 = Struct_3(~(~_wgslsmith_mult_u32(var_0.b.a, arg_2.x ^ 4294967295u)), var_0.d, var_0.c, Struct_2(7646u, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, min(6478i, global0.x), 2147483647i), vec3<i32>(-5417i, -83580i, 1i)), Struct_1(vec4<u32>(arg_2.x, _wgslsmith_add_u32(var_0.a, 1u), _wgslsmith_clamp_u32(u_input.a.x, 1u, 55027u), ~u_input.a.x), select(vec3<bool>(false, arg_0, arg_0), !vec3<bool>(false, arg_0, var_0.b.c.b.x), arg_0))), _wgslsmith_f_op_f32(-541f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1446f, var_0.e))), -820f))));
    let var_2 = 1u;
    var var_3 = Struct_4(arg_3.ww);
    return max(abs(-_wgslsmith_dot_vec2_i32(vec2<i32>(-27644i, arg_1), _wgslsmith_mult_vec2_i32(u_input.b.yz, u_input.b.wx))), abs(-_wgslsmith_dot_vec3_i32(u_input.b.zyz, ~u_input.b.yxz)));
}

fn func_1() -> Struct_2 {
    var var_0 = vec4<bool>(true, all(select(vec3<bool>(any(vec3<bool>(true, false, false)), all(vec4<bool>(false, false, false, false)), true), vec3<bool>(11602u > u_input.a.x, true, true), func_2(-788f, Struct_4(vec2<f32>(1000f, 246f)), vec3<u32>(3683u, 47676u, 9427u), vec3<bool>(false, false, false)) || true)), true, true);
    var var_1 = var_0.x;
    global0 = -u_input.b.zy;
    let var_2 = ~countOneBits(vec3<i32>(0i & func_3(true, 50714i, vec4<u32>(4294967295u, u_input.a.x, 0u, u_input.a.x), vec4<f32>(-529f, -343f, 1723f, -525f)), 2147483647i, _wgslsmith_dot_vec2_i32(u_input.b.wz, u_input.b.yw)));
    var_1 = true;
    return Struct_2(select(u_input.a.x, u_input.c.x, false), _wgslsmith_add_i32(~(2147483647i << ((0u ^ u_input.a.x) % 32u)), firstLeadingBit(~_wgslsmith_sub_i32(-1i, global0.x))), Struct_1(abs(~(vec4<u32>(29989u, 38032u, 57423u, 4294967295u) & vec4<u32>(u_input.a.x, u_input.c.x, 50166u, u_input.a.x))), var_0.zyx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(0u, func_1(), vec2<i32>(-1i) * -u_input.b.zy, func_1(), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-605f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-672f, 1398f))))));
    let var_1 = !(4294967295u <= var_0.b.a);
    global0 = ~_wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(var_0.d.b, 0i)), ~select(~vec2<i32>(1i, -5524i), ~u_input.b.yx, select(var_0.d.c.b.xz, var_0.d.c.b.zy, var_1)));
    global0 = -_wgslsmith_sub_vec2_i32(var_0.c, _wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -var_0.c, u_input.b.zy));
    global0 = firstLeadingBit(vec2<i32>(~u_input.b.x, ~1i));
    global0 = abs(min(_wgslsmith_mult_vec2_i32(vec2<i32>(~14121i, -1i), abs(~var_0.c)), var_0.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(2147483647i, global0.x, -2147483647i)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, var_0.c.x, 1i))), ~(~u_input.b.x), 1i) ^ 39231i);
}

