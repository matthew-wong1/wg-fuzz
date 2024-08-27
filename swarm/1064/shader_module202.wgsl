struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<f32, 27>;

var<private> global2: u32 = 4294967295u;

var<private> global3: array<vec3<bool>, 25> = array<vec3<bool>, 25>(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = reverseBits(vec4<i32>(-(~reverseBits(u_input.a.x)), -38358i, _wgslsmith_add_i32(u_input.a.x, abs(select(u_input.a.x, -2147483647i, true))), u_input.a.x | ~1i));
    let var_1 = arg_0.a;
    let var_2 = arg_0;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-124f + -1292f) - _wgslsmith_f_op_f32(var_1.a + -1384f)))))));
    global2 = u_input.b.x;
    return u_input.c;
}

fn func_2() -> Struct_2 {
    var var_0 = u_input.a.x;
    var var_1 = vec2<bool>(select(true, true, all(global3[_wgslsmith_index_u32(~1u, 25u)])), !(!(!(global1[_wgslsmith_index_u32(4294967295u, 27u)] > -568f))));
    var var_2 = vec3<u32>(~(global0.x << (countOneBits(0u) % 32u)), global0.x, 4294967295u);
    let var_3 = select(vec4<bool>(~26494u != u_input.b.x, false, var_1.x, true), !vec4<bool>(var_1.x, any(vec2<bool>(false, var_1.x)) || true, !var_1.x, false), !(!var_1.x));
    var_2 = _wgslsmith_mod_vec3_u32(global0.zzy & global0.xxw, ~vec3<u32>(abs(u_input.c) << (_wgslsmith_div_u32(u_input.b.x, 61741u) % 32u), _wgslsmith_mod_u32(0u, ~1u), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 43846u, 1u, 14829u), vec4<u32>(0u, 1u, 51608u, 0u)))));
    return Struct_2(Struct_1(global1[_wgslsmith_index_u32(func_3(Struct_2(Struct_1(global1[_wgslsmith_index_u32(16512u, 27u)]))), 27u)]));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: i32, arg_3: i32) -> Struct_2 {
    var var_0 = func_2();
    let var_1 = Struct_1(1761f);
    global0 = vec4<u32>(~_wgslsmith_clamp_u32(u_input.b.x, u_input.c, countOneBits(_wgslsmith_sub_u32(u_input.b.x, global0.x))), ~3810u, 0u, _wgslsmith_dot_vec3_u32(~(~global0.wxw) << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, u_input.c, 34337u), global0.yzx) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(~_wgslsmith_sub_vec3_u32(global0.zyz, global0.wzz), global0.xzx)));
    global0 = ~select(~(~vec4<u32>(global0.x, global0.x, u_input.c, 4294967295u)), abs(abs(vec4<u32>(1u, global0.x, u_input.b.x, global0.x)) & ~vec4<u32>(4294967295u, 0u, 8948u, 10951u)), any(!global3[_wgslsmith_index_u32(1u, 25u)]) | true);
    var var_2 = var_1;
    return func_2();
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(global0.wzw, vec3<u32>(8670u, 4294967295u, 9480u)), firstTrailingBit(vec3<u32>(arg_0.x, global0.x, 4294967295u))), 27u)])) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.a.a - -1220f)))))));
    let var_2 = 1827f <= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a.a), arg_2.a.a));
    let var_3 = abs(max(vec3<i32>(_wgslsmith_mod_i32(3558i, u_input.a.x), max(~(-6702i), -u_input.a.x), _wgslsmith_add_i32(1i, u_input.a.x)), (vec3<i32>(u_input.a.x, u_input.a.x, 0i) ^ _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, 60025i, u_input.a.x), vec3<i32>(u_input.a.x, 1i, 19647i))) >> (~(~vec3<u32>(arg_0.x, 53801u, global0.x)) % vec3<u32>(32u))));
    var var_4 = func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 27u)], arg_2.a.a))))), func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.a))), _wgslsmith_f_op_f32(196f - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(2381u, u_input.b.x), 27u)])), _wgslsmith_sub_i32(1i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_3.x, var_3.x, var_3.x), vec4<i32>(u_input.a.x, -40085i, var_3.x, 2147483647i))), var_3.x).a.a, var_3.x, var_3.x).a;
    return Struct_2(func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))), _wgslsmith_f_op_f32(func_2().a.a * arg_2.a.a), -1i, 46510i).a);
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec2<u32>) -> vec4<bool> {
    global1 = array<f32, 27>();
    return vec4<bool>(all(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true)), false, any(vec3<bool>(true, true, true)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!func_5(func_4(vec4<u32>(4294967295u, global0.x, u_input.c, global0.x) & vec4<u32>(u_input.c, global0.x, global0.x, 4294967295u), vec2<bool>(false, true), func_1(Struct_1(-1186f), -1000f, 2147483647i, -1i), ~vec3<u32>(global0.x, u_input.b.x, u_input.b.x)), global1[_wgslsmith_index_u32(u_input.b.x, 27u)], select(global0.zw, vec2<u32>(u_input.b.x, 11395u), true)));
    var var_1 = func_2().a;
    let var_2 = func_1(Struct_1(-166f), global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(func_3(Struct_2(Struct_1(var_1.a))), u_input.b.x) & 16820u, 27u)], -2147483647i, u_input.a.x);
    let var_3 = func_4(vec4<u32>(~u_input.c, reverseBits(49455u), u_input.b.x, _wgslsmith_sub_u32(~(~u_input.b.x), _wgslsmith_sub_u32(global0.x, _wgslsmith_add_u32(global0.x, u_input.b.x)))), vec2<bool>(true, (19795i > -u_input.a.x) && var_0.x), var_2, ~global0.xxw);
    let var_4 = -1000f;
    global2 = 1u << (u_input.c % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.a.a + _wgslsmith_f_op_f32(f32(-1f) * -2889f)))));
}

