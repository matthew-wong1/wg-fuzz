struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: array<f32, 16>;

var<private> global2: f32;

var<private> global3: vec2<u32>;

var<private> global4: Struct_1 = Struct_1(true);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = vec4<bool>(any(!select(select(vec4<bool>(arg_0, true, false, false), vec4<bool>(true, arg_0, true, true), vec4<bool>(global4.a, arg_0, global4.a, true)), !vec4<bool>(false, arg_0, true, arg_0), true)), global4.a, any(select(vec2<bool>(true, false), select(vec2<bool>(true, true), !vec2<bool>(true, global4.a), select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0), vec2<bool>(arg_0, false))), select(vec2<bool>(true, true), !vec2<bool>(arg_0, true), true))), _wgslsmith_add_u32(_wgslsmith_add_u32(~0u, u_input.a), u_input.a) <= 16023u);
    let var_1 = Struct_1(false);
    global3 = u_input.c;
    let var_2 = ~1i;
    let var_3 = !(!select(select(select(var_0.zy, var_0.wz, false), !var_0.zy, all(var_0)), vec2<bool>(true, false), select(!var_0.yx, !var_0.zz, var_1.a)));
    return 84521u;
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> vec4<f32> {
    global3 = u_input.c;
    var var_0 = Struct_1(false);
    let var_1 = global0[_wgslsmith_index_u32(20033u, 25u)];
    global3 = _wgslsmith_div_vec2_u32(~_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c, abs(vec2<u32>(1u, global3.x))), _wgslsmith_mult_vec2_u32(u_input.c, u_input.c) << (select(u_input.c, u_input.c, vec2<bool>(var_0.a, global4.a)) % vec2<u32>(32u))), vec2<u32>(~0u, ~firstTrailingBit(u_input.a)));
    global0 = array<Struct_1, 25>();
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1364f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-572f * global1[_wgslsmith_index_u32(4294967295u, 16u)]) + _wgslsmith_f_op_f32(483f - global1[_wgslsmith_index_u32(13625u, 16u)])), 2504f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-566f + 961f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1312f, -966f) * _wgslsmith_f_op_f32(f32(-1f) * -1223f)), global1[_wgslsmith_index_u32(abs(59275u), 16u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(18089u, 16u)])), _wgslsmith_f_op_f32(242f - global1[_wgslsmith_index_u32(4294967295u, 16u)]), var_0.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(23271u, 16u)]), _wgslsmith_div_f32(-1000f, -2055f))))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec4<u32>) -> f32 {
    global2 = global1[_wgslsmith_index_u32(global3.x, 16u)];
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_4(global0[_wgslsmith_index_u32(func_3(arg_0 >= u_input.b.x), 25u)], 1u))));
    global3 = _wgslsmith_add_vec2_u32(~vec2<u32>(~4294967295u, ~0u), abs(reverseBits(vec2<u32>(29785u, arg_2.x | 4294967295u))));
    let var_1 = vec4<u32>(33831u, 62899u, 37018u, 1u);
    let var_2 = Struct_1(!global4.a);
    return 181f;
}

fn func_1(arg_0: vec3<i32>, arg_1: i32) -> u32 {
    global3 = vec2<u32>(global3.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(~global3.x, 0u), countOneBits(global3.x))) | ~(~(~(~vec2<u32>(u_input.a, 0u))));
    let var_0 = ~arg_0.zy;
    let var_1 = false;
    global2 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, 63254u, 0u) >> (~vec3<u32>(u_input.a, global3.x, u_input.a) % vec3<u32>(32u))), vec3<u32>(~(~4294967295u), global3.x, ~(~4294967295u))), 16u)];
    global2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(var_0.x, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(35874u, ~global3.x), 25u)], firstLeadingBit(~vec4<u32>(35231u, 1u, u_input.a, global3.x)) >> (~(vec4<u32>(30146u, u_input.c.x, u_input.c.x, 16331u) & vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.a)) % vec4<u32>(32u))))));
    return ~firstLeadingBit(_wgslsmith_clamp_u32(24977u, ~103630u, _wgslsmith_clamp_u32(~11489u, max(u_input.c.x, global3.x), ~u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec2<u32>(_wgslsmith_clamp_u32(func_1(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(u_input.b.xxw, u_input.b.yyx), ~u_input.b.wxy), _wgslsmith_clamp_i32(2147483647i, reverseBits(u_input.e), u_input.e >> (4294967295u % 32u))), 29359u, select(4294967295u, ~(~1u), global3.x <= 22789u)), ~0u);
    var var_0 = abs(_wgslsmith_mod_vec3_i32(u_input.b.wwz, ~vec3<i32>(u_input.b.x, u_input.e, u_input.e)) | ~vec3<i32>(u_input.b.x, 10837i, _wgslsmith_mult_i32(u_input.e, u_input.b.x)));
    var var_1 = _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(1u, 16u)]));
    global0 = array<Struct_1, 25>();
    var_1 = global1[_wgslsmith_index_u32(4294967295u >> (~((min(global3.x, 15716u) << (u_input.a % 32u)) & u_input.c.x) % 32u), 16u)];
    var var_2 = ~global3.x;
    let var_3 = global0[_wgslsmith_index_u32(func_3(false) << (_wgslsmith_mod_u32(~59805u, global3.x) % 32u), 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(func_4(global0[_wgslsmith_index_u32(4294967295u, 25u)], 0u)).ywx);
}

