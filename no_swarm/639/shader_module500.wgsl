struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<f32>, 5>;

var<private> global2: vec2<u32>;

var<private> global3: array<vec4<i32>, 25>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> f32 {
    return -1179f;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b - 408f));
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b), arg_0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(true, Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 5u)], 1367f, 0i))), 996f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(366f + 810f) * _wgslsmith_f_op_f32(trunc(-374f)))) - arg_0.b), 1i);
    global3 = array<vec4<i32>, 25>();
    global2 = vec2<u32>(67376u, 48614u) ^ ~u_input.b;
    global1 = array<vec2<f32>, 5>();
    return _wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, arg_1.x), (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_1.x, arg_1.x, 47641u), vec4<u32>(66431u, 16912u, 12484u, global2.x)) ^ u_input.b.x) >> (~arg_1.x % 32u)) >= abs(arg_1.x);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = select(select(vec3<bool>((arg_0.c < u_input.a) && true, !all(vec3<bool>(false, false, false)), true), select(vec3<bool>(func_2(Struct_1(global1[_wgslsmith_index_u32(1u, 5u)], arg_0.b, -1948i), vec2<u32>(global2.x, global2.x)), any(vec2<bool>(true, true)), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !all(select(vec2<bool>(true, true), vec2<bool>(false, false), false))), !select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false), vec3<bool>(any(vec2<bool>(true, false)), true, true)), vec3<bool>(!func_2(arg_0, vec2<u32>(global2.x, 32615u)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), ~arg_0.c > 1i));
    global0 = all(var_0.zy);
    let var_1 = _wgslsmith_add_i32(u_input.a ^ 1i, arg_0.c) << (global2.x % 32u);
    let var_2 = 9069u;
    var var_3 = vec3<i32>(var_1, max(u_input.a, -(~var_1) & u_input.a), 0i);
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec2<bool>) -> u32 {
    var var_0 = -1i;
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 5u)];
    var var_2 = _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(f32(-1f) * -356f)))) - -1698f));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(arg_0.a + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-609f, arg_0.a.x))))))), 1439f, _wgslsmith_mod_i32(arg_0.c, max(arg_0.c, min(_wgslsmith_div_i32(-26700i, arg_0.c), firstTrailingBit(-7969i)))));
    let var_4 = var_3.a.x;
    return ~(_wgslsmith_div_u32(1u, _wgslsmith_div_u32(u_input.b.x, 1u >> (1u % 32u))) << (61117u % 32u));
}

fn func_5(arg_0: u32) -> StorageBuffer {
    global0 = all(!vec3<bool>(true != any(vec3<bool>(false, true, true)), true, !any(vec2<bool>(false, true))));
    var var_0 = _wgslsmith_div_vec2_u32(~(vec2<u32>(0u, 43778u) | u_input.b), vec2<u32>(~(~29047u), ~4294967295u));
    let var_1 = Struct_1(global1[_wgslsmith_index_u32(53702u, 5u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1216f * _wgslsmith_div_f32(-1000f, -972f)))), reverseBits(2147483647i & ~(~u_input.a)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -984f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a.x)))))));
    global2 = vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(51736u, arg_0, 1u, 4294967295u) & vec4<u32>(4294967295u, arg_0, 97278u, 1u), vec4<u32>(4294967295u, 346u, 68104u, var_0.x) ^ ~vec4<u32>(u_input.b.x, 1u, u_input.b.x, 1u)) ^ 0u, ~_wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(0u, 52934u, var_0.x, 4294967295u)), max(vec4<u32>(25390u, u_input.b.x, u_input.b.x, 1u), vec4<u32>(var_0.x, 54114u, global2.x, arg_0))));
    return StorageBuffer(-4639i, _wgslsmith_div_vec4_i32(global3[_wgslsmith_index_u32(arg_0, 25u)], _wgslsmith_mult_vec4_i32(global3[_wgslsmith_index_u32(0u, 25u)], min(_wgslsmith_clamp_vec4_i32(global3[_wgslsmith_index_u32(56040u, 25u)], vec4<i32>(-2070i, u_input.a, var_1.c, var_1.c), vec4<i32>(var_1.c, var_1.c, u_input.a, u_input.a)), _wgslsmith_div_vec4_i32(global3[_wgslsmith_index_u32(0u, 25u)], global3[_wgslsmith_index_u32(7835u, 25u)])))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(abs(-444f))) * -1007f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 5>();
    global3 = array<vec4<i32>, 25>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1134f, _wgslsmith_f_op_f32(-744f + 164f)), vec2<f32>(_wgslsmith_f_op_f32(311f - -661f), _wgslsmith_f_op_f32(f32(-1f) * -705f)))), 847f, 73202i);
    let x = u_input.a;
    s_output = func_5(~_wgslsmith_mod_u32(1u, func_4(func_1(Struct_1(var_0.a, var_0.a.x, var_0.c)), vec4<bool>(true, true, true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)))));
}

