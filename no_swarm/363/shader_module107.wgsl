struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec4<i32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_2,
    d: vec2<i32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
    e: u32,
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

var<private> global0: vec3<u32>;

var<private> global1: array<f32, 11> = array<f32, 11>(589f, 844f, -1631f, 168f, 1189f, -700f, 1385f, -634f, -935f, 448f, 1108f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: vec3<i32>) -> bool {
    let var_0 = (global1[_wgslsmith_index_u32(4294967295u, 11u)] <= global1[_wgslsmith_index_u32(u_input.b.x, 11u)]) & arg_0.b;
    global1 = array<f32, 11>();
    global0 = u_input.c.yyw;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(561f)), global1[_wgslsmith_index_u32(24443u, 11u)], !var_0)));
    var_1 = 1000f;
    return any(!(!(!vec2<bool>(arg_0.b, false))));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(global1[_wgslsmith_index_u32(16511u, 11u)]);
    global1 = array<f32, 11>();
    global1 = array<f32, 11>();
    let var_1 = Struct_3(106914u, !(func_2(Struct_3(14631u, false, vec4<i32>(-2147483647i, u_input.d, u_input.d, u_input.d), global0.x), 41294i, ~vec3<i32>(u_input.d, -43343i, u_input.d)) && !(u_input.d == u_input.d)), firstTrailingBit(-(min(vec4<i32>(u_input.d, u_input.d, 8432i, u_input.d), vec4<i32>(-27989i, u_input.d, u_input.d, u_input.d)) & (vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d) & vec4<i32>(-72825i, u_input.d, 0i, u_input.d)))), ~global0.x);
    return global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~countOneBits(_wgslsmith_div_u32(global0.x, var_1.a)), ~(_wgslsmith_sub_u32(90301u, 0u) ^ ~u_input.b.x)) | u_input.e, 11u)];
}

fn func_1() -> vec4<f32> {
    var var_0 = ~(~vec2<u32>(select(1u, _wgslsmith_add_u32(833u, global0.x), func_2(Struct_3(global0.x, true, vec4<i32>(u_input.d, u_input.d, u_input.d, 1i), global0.x), u_input.d, vec3<i32>(u_input.d, -34971i, u_input.d))), ~55477u));
    var_0 = _wgslsmith_sub_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 24139u, global0.x), u_input.c), var_0.x), vec2<u32>(1u, _wgslsmith_add_u32(1u, global0.x))), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(30075u, _wgslsmith_div_u32(0u, 28018u)), _wgslsmith_clamp_vec2_u32(global0.zx, global0.zy, vec2<u32>(var_0.x, 1u) >> (vec2<u32>(6259u, var_0.x) % vec2<u32>(32u)))), u_input.b.yx));
    var_0 = _wgslsmith_sub_vec2_u32(abs(u_input.c.zy), vec2<u32>(6551u, u_input.c.x));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1202f, -1439f, 433f, global1[_wgslsmith_index_u32(4294967295u, 11u)]))), vec4<f32>(_wgslsmith_f_op_f32(-1000f + 1199f), -769f, -277f, _wgslsmith_f_op_f32(ceil(911f))))) - vec4<f32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(13893u, u_input.c.x, 1u, global0.x), firstLeadingBit(vec4<u32>(u_input.b.x, global0.x, 2962u, 26585u)))), 11u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -570f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1419f, 2579f)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1536f, global1[_wgslsmith_index_u32(7463u, 11u)], true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -439f))));
}

fn func_4(arg_0: vec4<f32>) -> u32 {
    global0 = max(~u_input.c.xyx, vec3<u32>(global0.x, ~0u >> (global0.x % 32u), u_input.c.x)) ^ vec3<u32>(global0.x, ~u_input.a >> (30825u % 32u), 0u);
    global1 = array<f32, 11>();
    var var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_1 = _wgslsmith_mult_u32(~(~0u), ~select(firstTrailingBit(~global0.x), select(_wgslsmith_mult_u32(0u, 0u), firstLeadingBit(4294967295u), true), !any(vec2<bool>(true, false))));
    global0 = vec3<u32>(~max(u_input.a >> (global0.x % 32u), u_input.c.x), ~30329u, countOneBits(~u_input.b.x | ~(u_input.e ^ 69513u)));
    return ~38369u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(abs(global0.x) | _wgslsmith_mod_u32(global0.x, func_4(_wgslsmith_f_op_vec4_f32(func_1()))), global0.x);
    var var_1 = true || !all(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), any(vec3<bool>(false, false, true))));
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(42720u, 11u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(47352u, 11u)]) - _wgslsmith_f_op_f32(sign(418f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(69248u, 11u)]), global1[_wgslsmith_index_u32(33786u, 11u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1024f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.e, 11u)])), _wgslsmith_div_f32(-1745f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))));
    global1 = array<f32, 11>();
    global0 = vec3<u32>(u_input.c.x, _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, u_input.a, u_input.a, 4294967295u), vec4<u32>(0u, 47888u, u_input.b.x, var_0), vec4<bool>(true, true, false, true)) << (vec4<u32>(global0.x, 1u, 34116u, 5982u) % vec4<u32>(32u)), vec4<u32>(var_0, 61080u, global0.x, global0.x) ^ vec4<u32>(0u, global0.x, global0.x, 0u))), ~(global0.x << (~4294967295u % 32u)));
    var var_3 = firstTrailingBit(i32(-1i) * -countOneBits(11663i)) > -((i32(-1i) * -u_input.d) << (1u % 32u));
    let var_4 = -_wgslsmith_clamp_vec3_i32(vec3<i32>(abs(70706i), u_input.d & u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.d, -2147483647i), vec4<i32>(21483i, u_input.d, 47345i, u_input.d))), -(~vec3<i32>(u_input.d, u_input.d, -2147483647i)), ~vec3<i32>(0i, u_input.d, 1i) << (countOneBits(u_input.c.zyx) % vec3<u32>(32u))) & firstTrailingBit(-(~vec3<i32>(u_input.d, u_input.d, 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), 424f));
}

