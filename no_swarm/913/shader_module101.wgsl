struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<bool>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    return Struct_1(-2147483647i, -(~(-_wgslsmith_mult_vec4_i32(vec4<i32>(-43103i, -1i, u_input.e.x, -4099i), vec4<i32>(u_input.d, u_input.c, 2147483647i, u_input.e.x)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -1743f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-104f * 1013f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 476f)))), 1000f), vec3<i32>(u_input.e.x, u_input.c, _wgslsmith_mod_i32(-18473i, 35296i)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> vec4<f32> {
    let var_0 = Struct_2(Struct_1(arg_0.d.x, _wgslsmith_clamp_vec4_i32(arg_0.b, _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -2147483647i, arg_0.b.x, u_input.d), arg_0.b), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e.x, u_input.e.x, 14472i, arg_0.d.x), arg_0.b)), max(~vec4<i32>(-43355i, -31663i, u_input.e.x, 35490i), vec4<i32>(-8216i, 43696i, arg_0.d.x, 27914i))), vec3<f32>(_wgslsmith_f_op_f32(1169f - _wgslsmith_f_op_f32(-arg_0.c.x)), _wgslsmith_f_op_f32(min(arg_1.x, arg_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.c.x, arg_1.x)) + _wgslsmith_f_op_f32(323f * -2489f))), _wgslsmith_clamp_vec3_i32(arg_0.b.zyy, vec3<i32>(0i, arg_0.d.x, -1i) << (countOneBits(vec3<u32>(u_input.a, u_input.b.x, 77366u)) % vec3<u32>(32u)), ~vec3<i32>(-1i, arg_0.d.x, -35649i))), _wgslsmith_f_op_vec4_f32(-arg_1), func_1(vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), u_input.a, 59782u), 1u)), arg_0, true);
    var var_1 = 1u;
    var_1 = u_input.b.x;
    let var_2 = abs(vec3<u32>(u_input.b.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.a, u_input.b.x, ~7083u), ~_wgslsmith_sub_u32(0u, u_input.b.x)), u_input.b.x));
    let var_3 = arg_1.x;
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1013f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.c.x - var_3))) - -466f), arg_0.c.x, _wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_f_op_f32(min(var_3, arg_1.x)));
}

fn func_3(arg_0: Struct_4) -> vec2<i32> {
    let var_0 = ~(~(~u_input.a) << (~(~u_input.a | min(u_input.b.x, u_input.a)) % 32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-502f)), _wgslsmith_f_op_f32(229f * -1293f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(539f - 2085f) - _wgslsmith_f_op_f32(484f + -1276f)), -2056f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1000f)), func_1(u_input.b.zx).c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -132f) - _wgslsmith_div_f32(-2124f, -512f)))));
    let var_2 = var_1.x;
    var var_3 = !(!(!vec2<bool>(all(vec4<bool>(arg_0.a, true, arg_0.a, arg_0.a)), arg_0.a)));
    var var_4 = _wgslsmith_mod_i32(min(u_input.d, u_input.e.x), u_input.c & -61006i);
    return u_input.e & ~vec2<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.c, 32885i, 41829i), vec3<i32>(-2147483647i, -8034i, u_input.c), vec3<bool>(false, var_3.x, true)), max(vec3<i32>(u_input.c, -37807i, -1i), vec3<i32>(u_input.c, 1i, 1i))), firstTrailingBit(abs(u_input.e.x)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: bool) -> StorageBuffer {
    var var_0 = arg_0.a.c;
    var_0 = arg_0.d.c;
    var_0 = func_1(~u_input.b.zz).c;
    var var_1 = true;
    var var_2 = Struct_4(arg_2);
    return StorageBuffer(~u_input.c, _wgslsmith_dot_vec3_i32(~reverseBits(vec3<i32>(arg_1.x, 0i, u_input.d)), firstTrailingBit(arg_0.d.d >> ((vec3<u32>(u_input.b.x, 4294967295u, 39852u) | vec3<u32>(u_input.a, 43052u, 0u)) % vec3<u32>(32u)))), select(vec2<i32>(~_wgslsmith_dot_vec2_i32(u_input.e, arg_0.d.b.yw), func_1(vec2<u32>(4294967295u, u_input.b.x)).a), -func_1(vec2<u32>(u_input.a, 31176u)).d.zx, !select(!vec2<bool>(true, var_2.a), vec2<bool>(true, var_2.a), !vec2<bool>(arg_0.e, false))), _wgslsmith_f_op_f32(f32(-1f) * -958f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2021f)));
    let var_1 = _wgslsmith_sub_vec2_i32(~vec2<i32>(-(~(-12545i)), _wgslsmith_sub_i32(_wgslsmith_mod_i32(2147483647i, u_input.c), ~u_input.e.x)), max(reverseBits(_wgslsmith_add_vec2_i32(u_input.e, u_input.e)), _wgslsmith_add_vec2_i32(~u_input.e, _wgslsmith_sub_vec2_i32(max(u_input.e, u_input.e), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, u_input.d), vec2<i32>(-32794i, u_input.e.x))))));
    let x = u_input.a;
    s_output = func_4(Struct_2(func_1(min(u_input.b.xx, vec2<u32>(2004u, u_input.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -1318f, var_0, 653f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 1922f, 347f, -345f) - _wgslsmith_f_op_vec4_f32(func_2(Struct_1(u_input.e.x, vec4<i32>(-2147483647i, 54683i, -5543i, u_input.d), vec3<f32>(var_0, var_0, 1088f), vec3<i32>(-2147483647i, u_input.c, u_input.d)), vec4<f32>(var_0, var_0, var_0, 1000f))))), Struct_1(var_1.x, ~vec4<i32>(u_input.e.x, -1i, var_1.x, -28030i) ^ _wgslsmith_div_vec4_i32(vec4<i32>(-64672i, -2147483647i, u_input.e.x, 24430i), vec4<i32>(816i, 0i, u_input.e.x, u_input.c)), _wgslsmith_div_vec3_f32(vec3<f32>(var_0, 161f, var_0), vec3<f32>(var_0, 574f, -1585f)), reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.x, -61577i, -10045i), vec3<i32>(-1i, 0i, u_input.d)))), func_1(vec2<u32>(~11598u, min(4294967295u, u_input.a))), var_0 <= var_0), ~firstTrailingBit(select(func_3(Struct_4(true)), u_input.e, vec2<bool>(true, true))), any(vec4<bool>(!all(vec3<bool>(true, false, true)), any(vec2<bool>(true, true)), all(vec2<bool>(true, true)), any(vec3<bool>(false, true, false)) || (1i < var_1.x))));
}

