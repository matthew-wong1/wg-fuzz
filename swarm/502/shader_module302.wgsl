struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<f32, 24>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec4<bool> {
    let var_0 = true | any(vec3<bool>(global0.x, 29681u > firstTrailingBit(1u), all(!vec4<bool>(false, false, global0.x, global0.x))));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.a.x, ~(~22089u)), ~u_input.a.x), 24u)];
    global1 = array<f32, 24>();
    let var_2 = Struct_1(!select(vec3<bool>(global0.x, true, true), vec3<bool>(all(vec4<bool>(true, false, false, false)), !var_0, true), true), select(vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, 1i), vec3<i32>(0i, 41994i, u_input.b)), vec3<i32>(-u_input.b, u_input.b, -1531i << (1u % 32u)) >> (vec3<u32>(~u_input.a.x, ~20522u, ~u_input.a.x) % vec3<u32>(32u)), select(vec3<bool>(var_0, any(global0.zy), true), vec3<bool>(false, true, var_0 || false), !select(vec3<bool>(global0.x, var_0, var_0), vec3<bool>(true, true, false), vec3<bool>(global0.x, var_0, var_0)))));
    global0 = var_2.a;
    return select(select(!(!vec4<bool>(true, var_0, var_0, var_0)), vec4<bool>(true, false, var_0, var_2.a.x), var_2.b.x <= ~_wgslsmith_sub_i32(var_2.b.x, 2147483647i)), select(select(vec4<bool>(global0.x, all(var_2.a.zx), global1[_wgslsmith_index_u32(u_input.a.x, 24u)] > 447f, any(var_2.a)), !(!vec4<bool>(true, var_2.a.x, false, true)), !select(vec4<bool>(var_0, true, var_2.a.x, false), vec4<bool>(false, true, var_0, var_0), vec4<bool>(true, true, var_2.a.x, global0.x))), vec4<bool>(all(vec4<bool>(true, true, true, true)), var_0, all(select(vec4<bool>(false, var_0, var_0, var_2.a.x), vec4<bool>(false, var_2.a.x, global0.x, false), vec4<bool>(var_2.a.x, true, var_2.a.x, global0.x))), all(vec2<bool>(global0.x, var_2.a.x))), select(vec4<bool>(var_0, u_input.b == var_2.b.x, var_0, any(vec4<bool>(var_0, true, true, false))), vec4<bool>(true, true, !global0.x, -31280i > var_2.b.x), !select(vec4<bool>(true, var_0, global0.x, true), vec4<bool>(global0.x, true, var_2.a.x, global0.x), vec4<bool>(global0.x, global0.x, var_2.a.x, false)))), var_2.a.x);
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), 24u)])));
    global0 = !select(select(!vec3<bool>(global0.x, global0.x, true), vec3<bool>(true, !global0.x, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, global0.x), vec3<bool>(global0.x | false, global0.x, true), !(!global0.x)), all(!vec4<bool>(true, global0.x, global0.x, global0.x)));
    var var_1 = !(!(!(!func_3())));
    global1 = array<f32, 24>();
    let var_2 = var_1.x;
    return Struct_1(!select(vec3<bool>(!global0.x, u_input.a.x <= u_input.a.x, true), vec3<bool>(var_1.x, true, true), global0.x == (true | var_1.x)), ~abs(vec3<i32>(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(78919i, 1i, 1i), vec3<i32>(u_input.b, -1i, 39603i)), -1i)));
}

fn func_4(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-664f)), _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.a.x, 12795u), 0u, ~32024u), 24u)])), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-689f, global1[_wgslsmith_index_u32(4294967295u, 24u)], false)), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(u_input.a.x, 24u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1415f))))));
    var var_1 = vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(2461u, u_input.a.x), vec2<u32>(u_input.a.x, 35554u)), arg_0.zy), ~(arg_0.x ^ arg_0.x)), 24u)] <= _wgslsmith_f_op_f32(trunc(-734f)), global0.x, !(!func_3().x));
    let var_2 = Struct_1(arg_2.a, arg_2.b);
    var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(286f, var_0.x, 1000f, 1000f) * vec4<f32>(global1[_wgslsmith_index_u32(1u, 24u)], -326f, global1[_wgslsmith_index_u32(arg_0.x, 24u)], global1[_wgslsmith_index_u32(u_input.a.x, 24u)])))))))));
    global1 = array<f32, 24>();
    return !all(func_3().xyw);
}

fn func_1(arg_0: u32, arg_1: bool) -> vec3<bool> {
    return !vec3<bool>(!func_4(u_input.a.zzw, !arg_1, func_2(-829f)), true, !func_3().x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(!select(!(!vec3<bool>(global0.x, true, true)), select(select(vec3<bool>(true, false, false), vec3<bool>(global0.x, true, true), true), vec3<bool>(global0.x, false, global0.x), func_1(u_input.a.x, true)), true), select(func_1(~(~1u), func_3().x || true), !func_3().wyy, global1[_wgslsmith_index_u32(~(~22437u), 24u)] <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-350f)))), global0.x);
    var var_0 = Struct_1(func_3().wzy, abs(-_wgslsmith_mult_vec3_i32(abs(vec3<i32>(u_input.b, u_input.b, -29157i)), -vec3<i32>(58678i, 13631i, 2147483647i))));
    var var_1 = countOneBits(-10680i);
    let var_2 = var_0.b.x;
    let var_3 = func_2(global1[_wgslsmith_index_u32(~u_input.a.x, 24u)]);
    var var_4 = _wgslsmith_dot_vec4_i32(max(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(1i, -1i), 0i, _wgslsmith_add_i32(8609i, var_0.b.x), ~var_0.b.x), ~(~vec4<i32>(var_3.b.x, -1i, 17206i, -30749i))), reverseBits(abs(vec4<i32>(2147483647i, 0i, 35954i, u_input.b)) >> (vec4<u32>(4294967295u, u_input.a.x, 51743u, u_input.a.x) % vec4<u32>(32u)))), ~abs(vec4<i32>(1i, var_3.b.x, var_3.b.x, var_0.b.x) | ~vec4<i32>(-25804i, 1i, -1i, var_0.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(u_input.a.x, 24u)], _wgslsmith_mod_i32(-var_0.b.x, var_0.b.x));
}

