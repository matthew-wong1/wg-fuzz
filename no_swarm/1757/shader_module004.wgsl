struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 29>;

var<private> global1: array<Struct_1, 3>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> u32 {
    var var_0 = Struct_2(~firstLeadingBit(vec4<u32>(~u_input.d.x, 18505u, ~u_input.d.x, u_input.d.x)), 31738u, global1[_wgslsmith_index_u32(4294967295u, 3u)]);
    global1 = array<Struct_1, 3>();
    var var_1 = Struct_2(~var_0.a, _wgslsmith_sub_u32(~1u, u_input.d.x), Struct_1(-global0[_wgslsmith_index_u32(1u, 29u)] | var_0.c.a, all(vec3<bool>(!var_0.c.b, var_0.c.b && var_0.c.b, var_0.c.c < -305f)), _wgslsmith_f_op_f32(1603f * -168f), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 0i), _wgslsmith_clamp_vec2_i32(vec2<i32>(41411i, u_input.c.x), vec2<i32>(u_input.a, u_input.b.x), global0[_wgslsmith_index_u32(var_0.a.x, 29u)])), vec2<i32>(_wgslsmith_mod_i32(u_input.b.x, 25406i), u_input.b.x))));
    global1 = array<Struct_1, 3>();
    global0 = array<vec2<i32>, 29>();
    return var_0.a.x;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = ~reverseBits(u_input.a);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1003f - _wgslsmith_f_op_f32(-arg_2.c)))) * -321f);
    var var_2 = abs(reverseBits(0u));
    let var_3 = u_input.b;
    let var_4 = 2147483647i;
    return Struct_1(select(-(~vec2<i32>(-10236i, var_4)), arg_0.a, true) << (~vec2<u32>(4294967295u, _wgslsmith_mult_u32(0u, u_input.e)) % vec2<u32>(32u)), !(var_1 != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.c)))), arg_0.c, _wgslsmith_div_i32(9855i, arg_2.d) ^ ~select(countOneBits(7636i), var_4, all(vec3<bool>(true, true, arg_0.b))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: u32) -> vec4<bool> {
    let var_0 = !arg_1.zy;
    global0 = array<vec2<i32>, 29>();
    var var_1 = Struct_2(abs(vec4<u32>(_wgslsmith_clamp_u32(u_input.e, ~u_input.e, ~76153u), _wgslsmith_mult_u32(0u, _wgslsmith_mod_u32(4294967295u, 6442u)), min(~u_input.d.x, _wgslsmith_add_u32(1u, 29333u)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 0u, 1u), vec4<u32>(4294967295u, arg_2, arg_2, u_input.e)), arg_2, u_input.e))), 0u ^ ~u_input.e, func_3(Struct_1(-vec2<i32>(-8019i, 2147483647i) ^ countOneBits(vec2<i32>(u_input.a, -17508i)), true, -113f, max(firstTrailingBit(8886i), -2147483647i)), false, global1[_wgslsmith_index_u32(func_2() & _wgslsmith_clamp_u32(~arg_2, 25550u & arg_2, u_input.d.x), 3u)]));
    let var_2 = vec4<u32>(17370u, min(~1u, var_1.a.x), ~0u, ~u_input.d.x);
    var var_3 = (var_2.yz & var_1.a.yy) | vec2<u32>(u_input.d.x, ~47594u);
    return select(select(vec4<bool>(false, true, any(select(vec2<bool>(false, arg_1.x), vec2<bool>(arg_1.x, var_1.c.b), var_1.c.b)), true), vec4<bool>(true, var_1.c.b || any(arg_1.yyx), any(select(arg_1.wyz, arg_1.wyx, vec3<bool>(arg_1.x, var_0.x, arg_1.x))), all(vec4<bool>(false, true, true, false))), true || (select(var_1.c.b, false, var_0.x) & true)), !select(!(!vec4<bool>(var_1.c.b, var_1.c.b, true, var_0.x)), vec4<bool>(true, false, 0u != var_3.x, var_1.c.b), arg_1), any(!(!arg_1.xw)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(func_1(vec3<i32>(abs(u_input.c.x), _wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(54295u, 29u)], vec2<i32>(0i, -45193i)), countOneBits(-45405i)), vec4<bool>(true, true, u_input.e >= u_input.d.x, true), u_input.d.x), vec4<bool>(all(vec3<bool>(true, false, false)), -14099i < -u_input.b.x, false, !any(vec2<bool>(false, false))), func_1(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, 4077i, u_input.a), ~u_input.b.xzw), vec4<bool>(true, any(vec3<bool>(true, true, true)), true, all(vec4<bool>(true, true, true, true))), (u_input.e >> (4294967295u % 32u)) << (~u_input.d.x % 32u))), select(vec4<bool>(!any(vec4<bool>(false, true, false, false)), true && select(false, false, false), true, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), all(vec2<bool>(true, false)))), vec4<bool>(false, true, false, all(vec2<bool>(true, true)))), true || (true && (_wgslsmith_f_op_f32(round(-1085f)) > _wgslsmith_div_f32(-1433f, 807f))));
    var var_1 = 5114u;
    var var_2 = ~(~0u);
    global0 = array<vec2<i32>, 29>();
    global1 = array<Struct_1, 3>();
    var_2 = 4294967295u;
    var var_3 = 1856f;
    var var_4 = func_3(Struct_1(u_input.b.xw, true, _wgslsmith_f_op_f32(min(1780f, -1380f)), -(~(-u_input.b.x))), !func_3(func_3(func_3(Struct_1(vec2<i32>(-19404i, 2147483647i), false, -669f, u_input.a), true, global1[_wgslsmith_index_u32(u_input.e, 3u)]), true, func_3(Struct_1(vec2<i32>(u_input.c.x, -1i), true, 1653f, u_input.b.x), false, Struct_1(vec2<i32>(28783i, u_input.c.x), false, -345f, 0i))), true, func_3(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(40125u, u_input.d.x, u_input.e), 3u)], true, func_3(Struct_1(global0[_wgslsmith_index_u32(0u, 29u)], var_0.x, -1000f, u_input.c.x), var_0.x, global1[_wgslsmith_index_u32(u_input.e, 3u)]))).b, Struct_1(_wgslsmith_add_vec2_i32(global0[_wgslsmith_index_u32(790u, 29u)], vec2<i32>(1i, i32(-1i) * -1i)), !all(var_0), -528f, -1i)).b;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_i32(-global0[_wgslsmith_index_u32(~4294967295u, 29u)], vec2<i32>(u_input.a | u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.b.x, u_input.c.x), u_input.b.yyx))), -1841f);
}

