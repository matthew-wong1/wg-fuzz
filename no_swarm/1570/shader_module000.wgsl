struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<f32>,
    c: Struct_4,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28> = array<u32, 28>(96781u, 1u, 65811u, 2788u, 8872u, 4294967295u, 58516u, 1u, 1u, 0u, 32929u, 4294967295u, 13697u, 1u, 1244u, 4294967295u, 45238u, 69994u, 82561u, 4294967295u, 0u, 1u, 5494u, 10313u, 43879u, 0u, 1u, 19034u);

var<private> global1: f32;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> vec3<u32> {
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(261f, 348f)) * _wgslsmith_f_op_f32(f32(-1f) * -959f)) - _wgslsmith_f_op_f32(min(213f, _wgslsmith_f_op_f32(-1000f - -189f)))))));
    return ~max(_wgslsmith_mod_vec3_u32(u_input.b.xyx, u_input.b.zyw << (u_input.b.zxw % vec3<u32>(32u))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, 0u), ~u_input.b.zyy));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_mod_u32(1u, ~17705u);
    var var_1 = arg_1.b.x;
    var var_2 = select(vec4<bool>(true, _wgslsmith_f_op_f32(-300f - _wgslsmith_f_op_f32(ceil(-145f))) < _wgslsmith_f_op_f32(ceil(1052f)), true, select(all(vec2<bool>(true, true)), true, all(vec2<bool>(true, true)))), vec4<bool>(all(vec2<bool>(true, true)), false || all(vec4<bool>(true, true, true, true)), !select(global0[_wgslsmith_index_u32(arg_2.x, 28u)] >= u_input.b.x, true, all(vec2<bool>(true, false))), true), any(vec3<bool>(true, true, true)));
    var_0 = ~global0[_wgslsmith_index_u32(~(~(~4294967295u)), 28u)] & global0[_wgslsmith_index_u32(1u, 28u)];
    let var_3 = 1091f;
    return _wgslsmith_mod_i32(-37558i, -reverseBits(min(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c.b, arg_0, -2147483647i, u_input.c), vec4<i32>(-71128i, -17334i, 0i, arg_1.c.b)))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: vec4<u32>) -> vec4<bool> {
    let var_0 = !vec3<bool>(_wgslsmith_f_op_f32(1481f + _wgslsmith_f_op_f32(exp2(arg_0.x))) >= arg_0.x, !((64195u << (u_input.b.x % 32u)) <= _wgslsmith_dot_vec3_u32(arg_2.yxw, vec3<u32>(global0[_wgslsmith_index_u32(0u, 28u)], 0u, 1u))), true);
    var var_1 = func_4(u_input.a, Struct_3(vec2<u32>(u_input.b.x, ~_wgslsmith_div_u32(1u, 4294967295u)), firstLeadingBit(~arg_2.ww << (firstLeadingBit(vec2<u32>(14903u, 34204u)) % vec2<u32>(32u))), Struct_2(min(~arg_1.x, arg_1.x), -firstTrailingBit(u_input.a))), ((~vec3<u32>(1u, 2674u, 0u) ^ u_input.b.xzx) | (~vec3<u32>(u_input.b.x, arg_2.x, global0[_wgslsmith_index_u32(33075u, 28u)]) | ~u_input.b.xyy)) | ~func_3(vec4<bool>(var_0.x, false, false, var_0.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-413f, 1288f, arg_0.x, arg_0.x), vec4<f32>(-439f, arg_0.x, -562f, arg_0.x)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 355f) * vec4<f32>(arg_0.x, -1084f, arg_0.x, arg_0.x)))), !select(vec4<bool>(var_0.x, false, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), true)))));
    var_1 = u_input.a;
    var_1 = u_input.a;
    return vec4<bool>(any(select(!var_0, !select(vec3<bool>(false, var_0.x, var_0.x), var_0, var_0), var_0.x && (u_input.c >= u_input.a))), true, false, true);
}

fn func_1(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: u32) -> vec4<bool> {
    global0 = array<u32, 28>();
    return select(select(!arg_1, !(!arg_1), arg_1), select(func_2(vec2<f32>(-499f, 1000f), ~(vec2<u32>(global0[_wgslsmith_index_u32(14227u, 28u)], 4294967295u) << (vec2<u32>(72910u, 1u) % vec2<u32>(32u))), vec4<u32>(~global0[_wgslsmith_index_u32(arg_2, 28u)], min(arg_0.c.a, global0[_wgslsmith_index_u32(19321u, 28u)]), 1u, 14930u)), func_2(vec2<f32>(_wgslsmith_f_op_f32(sign(3026f)), _wgslsmith_f_op_f32(trunc(729f))), _wgslsmith_sub_vec2_u32(func_3(arg_1).xx, vec2<u32>(arg_2, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(598u, 1u, 30283u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 28u)], 28u)]), vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], 0u, 1u, 74581u)) << (firstLeadingBit(u_input.b) % vec4<u32>(32u))), !(!select(vec4<bool>(false, false, true, false), arg_1, vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x)))), select(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1103f, 706f)), ~min(arg_0.b, vec2<u32>(1u, 38144u)), ~(~vec4<u32>(arg_0.b.x, u_input.b.x, 20871u, arg_2))), !vec4<bool>(all(vec3<bool>(arg_1.x, arg_1.x, false)), !arg_1.x, arg_1.x, arg_1.x), vec4<bool>(any(vec3<bool>(arg_1.x, arg_1.x, arg_1.x)), arg_1.x, arg_1.x & arg_1.x, arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-890f, -1320f) - 508f))), _wgslsmith_f_op_f32(min(1258f, 1f)))));
    let var_1 = vec2<bool>(any(select(vec4<bool>(any(vec2<bool>(false, true)), global0[_wgslsmith_index_u32(56694u, 28u)] == u_input.b.x, true, true), !func_1(Struct_3(vec2<u32>(1u, u_input.b.x), vec2<u32>(u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40883u, 28u)], 28u)], 28u)]), Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], -27082i)), vec4<bool>(false, false, false, false), 4294967295u), true)), true);
    var var_2 = Struct_3(~(~vec2<u32>(global0[_wgslsmith_index_u32(16611u, 28u)], abs(u_input.b.x))), u_input.b.yw, Struct_2(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(global0[_wgslsmith_index_u32(35274u, 28u)], 32132u, 37141u)), ~select(u_input.b.wxz, u_input.b.yyx, true)), func_4(~(-u_input.c), Struct_3(u_input.b.zw, ~u_input.b.xx, Struct_2(4294967295u, 0i)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 28u)]), vec3<u32>(u_input.b.x, 0u, global0[_wgslsmith_index_u32(25113u, 28u)]), vec3<u32>(60589u, global0[_wgslsmith_index_u32(29666u, 28u)], global0[_wgslsmith_index_u32(15860u, 28u)])))));
    var var_3 = true;
    var var_4 = max(~(func_3(vec4<bool>(var_1.x, true, true, true)).x << (90112u % 32u)), 1u);
    var var_5 = Struct_3(vec2<u32>(31415u, _wgslsmith_sub_u32(7957u, var_2.b.x)), ~func_3(vec4<bool>(var_1.x, any(vec3<bool>(false, var_1.x, true)), true, false)).zy, Struct_2(var_2.b.x, _wgslsmith_add_i32(firstTrailingBit(u_input.a) >> (47258u % 32u), 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(var_0.x + -2680f))), var_0.x, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1076f, _wgslsmith_f_op_f32(-415f + var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x * var_0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, 1879f))))), ~firstTrailingBit(6742u << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~4294967295u, 28u)], 28u)] % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), -1i);
}

