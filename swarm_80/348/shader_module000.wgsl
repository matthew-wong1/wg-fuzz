struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
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

var<private> global0: array<Struct_2, 5>;

var<private> global1: array<Struct_2, 14>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> vec2<bool> {
    var var_0 = Struct_1(55004i, select(false, all(vec2<bool>(true, all(vec3<bool>(true, false, true)))), false), !vec2<bool>(!any(vec4<bool>(false, false, true, false)), -u_input.a <= firstLeadingBit(u_input.a)));
    var var_1 = Struct_1(-(~u_input.a), var_0.b, var_0.c);
    var_0 = Struct_1(var_1.a, var_1.c.x, var_0.c);
    global0 = array<Struct_2, 5>();
    global1 = array<Struct_2, 14>();
    return !select(!(!var_0.c), vec2<bool>(all(!vec4<bool>(false, var_0.c.x, var_0.c.x, var_1.b)), var_1.c.x), select(vec2<bool>(all(vec3<bool>(true, true, var_0.b)), !var_1.c.x), !var_1.c, false));
}

fn func_2() -> Struct_2 {
    global1 = array<Struct_2, 14>();
    global1 = array<Struct_2, 14>();
    var var_0 = select(vec2<bool>(false, true), select(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), false)), !func_3(u_input.b.x >> (7578u % 32u)), select(vec2<bool>(0u < u_input.b.x, any(vec2<bool>(true, false))), select(vec2<bool>(false, true), func_3(u_input.b.x), func_3(9447u)), true)), !select(false, func_3(u_input.b.x).x || false, func_3(u_input.b.x).x));
    let var_1 = global1[_wgslsmith_index_u32(3994u, 14u)];
    var_0 = select(func_3(abs(0u)), select(var_1.e, var_1.b.c, vec2<bool>(true, true)), true);
    return Struct_2(Struct_1(var_1.b.a, var_1.e.x, !vec2<bool>(!var_1.b.c.x, var_1.d.c.x)), var_1.a, vec4<i32>(_wgslsmith_div_i32(abs(u_input.a), var_1.d.a & -69301i) ^ -46618i, ~11396i, _wgslsmith_mult_i32(-var_1.d.a, 4288i), var_1.d.a), Struct_1(_wgslsmith_mult_i32(~3729i, _wgslsmith_dot_vec4_i32(~var_1.c, vec4<i32>(0i, var_1.c.x, 46866i, var_1.c.x) << (vec4<u32>(1u, 16012u, 1u, 1u) % vec4<u32>(32u)))), func_3(min(u_input.c, 29888u)).x, select(var_1.b.c, vec2<bool>(any(vec4<bool>(var_1.e.x, var_0.x, true, true)), false), var_0.x)), vec2<bool>(all(vec4<bool>(var_1.a.c.x, false, var_1.b.b, true)) || var_0.x, var_1.a.c.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec3<f32>) -> Struct_1 {
    global1 = array<Struct_2, 14>();
    global0 = array<Struct_2, 5>();
    global0 = array<Struct_2, 5>();
    let var_0 = vec3<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(arg_1), arg_1 ^ -arg_1) >> ((u_input.c & ~u_input.c) % 32u), select(-2147483647i, abs(-1i), true), -u_input.a);
    var var_1 = -var_0.x;
    return func_2().a;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<u32>) -> u32 {
    let var_0 = ~firstTrailingBit(~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -31016i, u_input.a, u_input.a), vec4<i32>(arg_0.a, arg_0.a, 1i, 2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-17617i, arg_0.a, -2147483647i), vec3<i32>(-1i, -2150i, -2147483647i)), _wgslsmith_mult_i32(u_input.a, u_input.a), u_input.a ^ 30595i));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -206f) * _wgslsmith_f_op_f32(sign(-304f))) - 1266f)))));
    global0 = array<Struct_2, 5>();
    global0 = array<Struct_2, 5>();
    return ~min(0u ^ _wgslsmith_div_u32(47934u, ~arg_2.x), u_input.c);
}

fn func_1() -> i32 {
    let var_0 = ~(func_5(func_4(func_2(), ~vec2<i32>(-1i, u_input.a), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1126f, -1000f, -842f), vec3<f32>(247f, 553f, -870f), vec3<bool>(false, true, true)))), ~(~vec3<u32>(u_input.c, 4294967295u, 1909u)), _wgslsmith_div_vec2_u32(u_input.b, u_input.b) | max(vec2<u32>(u_input.c, u_input.c), u_input.b)) | ~1u);
    let var_1 = Struct_1(abs(abs(func_2().a.a)), true, vec2<bool>(true, func_2().b.c.x));
    global1 = array<Struct_2, 14>();
    let var_2 = global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_mod_u32(var_0 | (u_input.b.x | 0u), reverseBits(_wgslsmith_sub_u32(u_input.c, var_0))), 1u)), 5u)];
    var var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-413f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -277f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(342f, -1000f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-624f, -1000f), vec2<f32>(580f, -745f), false)))))));
    return 14425i & ~min(abs(_wgslsmith_sub_i32(var_1.a, 0i)), firstLeadingBit(var_2.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(~func_1(), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, firstTrailingBit(-28563i >> (u_input.b.x % 32u)), _wgslsmith_div_i32(u_input.a, 0i), -13268i), countOneBits(abs(-vec4<i32>(2147483647i, u_input.a, u_input.a, 28367i)))));
    global1 = array<Struct_2, 14>();
    global1 = array<Struct_2, 14>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -151f)));
    var var_2 = vec2<bool>(func_2().d.c.x, true);
    let var_3 = ~u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i);
}

