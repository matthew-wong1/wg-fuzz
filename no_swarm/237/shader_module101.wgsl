struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec3<i32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: vec3<bool>, arg_3: bool) -> vec4<u32> {
    let var_0 = ~arg_0.zz;
    let var_1 = u_input.b;
    var var_2 = Struct_3((all(arg_2) | !(true != arg_3)) & true, arg_0.x, ~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, 1i, var_1) & vec3<i32>(2147483647i, -1i, 38866i), countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(-4607i, u_input.b, 31849i), vec3<i32>(-1i, u_input.b, -57939i), vec3<i32>(var_1, -54641i, 2147483647i)))), Struct_1(_wgslsmith_mod_vec3_i32(-(~vec3<i32>(40001i, var_1, -206i)), countOneBits(countOneBits(vec3<i32>(2147483647i, var_1, var_1)))), vec4<u32>(4294967295u, arg_0.x, ~_wgslsmith_mod_u32(u_input.a, arg_0.x), 0u >> (arg_1 % 32u)), ~abs(~vec2<i32>(288i, var_1))), select(vec3<bool>(!arg_3, true, false), arg_2, any(arg_2)));
    let var_3 = reverseBits(1i);
    var_2 = Struct_3(false, select(arg_0.x, arg_1, false | var_2.a), var_2.d.a, var_2.d, select(vec3<bool>(_wgslsmith_mod_i32(u_input.c, var_1) >= ~1i, arg_2.x, !arg_3), select(select(select(var_2.e, vec3<bool>(arg_3, arg_3, false), var_2.a), !vec3<bool>(arg_3, false, false), any(vec4<bool>(arg_2.x, var_2.e.x, true, var_2.e.x))), select(select(vec3<bool>(arg_3, false, false), vec3<bool>(false, arg_3, true), var_2.e), select(vec3<bool>(arg_3, var_2.e.x, true), arg_2, var_2.e), true), vec3<bool>(true, false, any(vec2<bool>(arg_2.x, true)))), true));
    return abs(~firstTrailingBit(var_2.d.b | _wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_2.d.b.x, 0u, u_input.a), var_2.d.b)));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec4<u32>) -> f32 {
    var var_0 = Struct_1(vec3<i32>(-1i) * -vec3<i32>(firstLeadingBit(u_input.b), arg_1, -1i << (u_input.a % 32u)), _wgslsmith_mult_vec4_u32(abs(arg_2 & arg_2), ~(~arg_2)), firstTrailingBit(vec2<i32>(abs(-1i), u_input.b)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(201f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -353f))))));
}

fn func_2(arg_0: vec4<i32>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_4(true, u_input.b, func_3(vec3<u32>(u_input.a, u_input.a, u_input.a), u_input.a, vec3<bool>(false, false, true), false))))) - _wgslsmith_f_op_f32(-1064f * _wgslsmith_f_op_f32(min(-653f, -1000f)))));
    var var_1 = arg_0.x;
    let var_2 = var_0;
    var_1 = _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-88138i, -15275i), arg_0.yw), vec2<i32>(1i, u_input.b)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, -1i, -2147483647i, 0i), abs(arg_0)), firstTrailingBit(-5149i))), 1i);
    var_1 = _wgslsmith_div_i32(31054i >> ((~u_input.a | 1u) % 32u), -(~(~arg_0.x) << (u_input.a % 32u)));
    return Struct_4(1153f, Struct_1(arg_0.wxz, max(~vec4<u32>(u_input.a, u_input.a, 90338u, u_input.a), max(~vec4<u32>(1u, 0u, 63866u, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 0u), vec4<u32>(u_input.a, 1u, u_input.a, 1u)))), abs(arg_0.zy)), _wgslsmith_div_f32(1047f, -1728f), Struct_3(true, ~12922u, vec3<i32>(-1i) * -vec3<i32>(arg_0.x, u_input.c, arg_0.x), Struct_1(select(select(arg_0.wyw, vec3<i32>(-15664i, -1i, 0i), false), vec3<i32>(u_input.b, u_input.c, u_input.c) << (vec3<u32>(50977u, 23086u, 0u) % vec3<u32>(32u)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true)), ~(~vec4<u32>(70689u, u_input.a, 53745u, 4294967295u)), arg_0.ww), !select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true))));
}

fn func_1() -> StorageBuffer {
    let var_0 = func_2(vec4<i32>(-1i) * -(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, -12766i, u_input.b, -2147483647i), vec4<i32>(u_input.b, u_input.b, -1i, 1i)) | vec4<i32>(52072i, 2147483647i, u_input.b, u_input.b)));
    return StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 715f)))), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-select(-919i & u_input.c, u_input.c, true), _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b, u_input.b, -1i), _wgslsmith_sub_vec3_i32(vec3<i32>(firstTrailingBit(u_input.c), _wgslsmith_add_i32(1i, -1i), u_input.b), ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, 1i, u_input.c), vec3<i32>(u_input.c, 18054i, 7926i)))));
    let x = u_input.a;
    s_output = func_1();
}

