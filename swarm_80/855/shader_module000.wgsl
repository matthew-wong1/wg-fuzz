struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: f32,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1(arg_0: Struct_3, arg_1: f32) -> bool {
    var var_0 = select(arg_0.a.x >= (4294967295u ^ arg_0.a.x), any(arg_0.b.d), any(arg_0.b.d));
    return true;
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_4(Struct_2(select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), false), 1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1042f - 211f) * _wgslsmith_f_op_f32(f32(-1f) * -986f)), _wgslsmith_f_op_f32(2278f - _wgslsmith_f_op_f32(-1029f - -439f)))), vec4<bool>(any(vec4<bool>(true, true, true, true)), false, any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true))), true), vec3<u32>(~(~u_input.d), 4294967295u, 0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -280f) * _wgslsmith_div_f32(591f, 139f)))));
    var var_1 = var_0.a.d.zw;
    var var_2 = any(var_0.a.d);
    let var_3 = u_input.d;
    var_2 = var_0.a.d.x;
    return vec4<i32>(countOneBits(firstLeadingBit(-2147483647i)), 16304i, -(~_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(-17945i, 1i, u_input.b)), firstLeadingBit(vec3<i32>(u_input.c, 1i, 56787i)))), 2147483647i);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: Struct_3) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.b.b)));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1299f);
    let var_2 = Struct_4(arg_2.b, arg_2.b.b);
    let var_3 = arg_2;
    let var_4 = vec2<u32>(23317u, 117514u);
    return select(_wgslsmith_mod_vec2_i32(arg_0.yx, max(vec2<i32>(-1253i, -43242i), arg_1.yz)) ^ ~func_3().zw, -(~firstTrailingBit(arg_0.zz)), true) << ((vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.e.x, var_2.a.e.x, var_3.a.x), ~var_3.b.e), 42535u) ^ vec2<u32>(~1u, var_3.b.e.x)) % vec2<u32>(32u));
}

fn func_2(arg_0: Struct_4, arg_1: f32) -> f32 {
    var var_0 = ~(~4294967295u);
    var_0 = min(firstTrailingBit(_wgslsmith_mod_u32(1u, 25452u)), 1u);
    var_0 = arg_0.a.e.x;
    var_0 = arg_0.a.e.x;
    var var_1 = func_4(vec4<i32>(-1i) * -(-vec4<i32>(u_input.b, u_input.b, -68861i, u_input.c) ^ (vec4<i32>(u_input.c, 1i, u_input.c, 42749i) << (vec4<u32>(11552u, 24926u, 4294967295u, 82391u) % vec4<u32>(32u)))), func_3(), Struct_3(abs(vec2<u32>(u_input.a, 3938u) | arg_0.a.e.xy), arg_0.a));
    return arg_0.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3((_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 56483u), select(vec2<u32>(18624u, u_input.e), vec2<u32>(u_input.a, u_input.d), true)) << (_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e, 1u), vec2<u32>(25000u, 79399u)), abs(vec2<u32>(u_input.d, 96083u))) % vec2<u32>(32u))) | vec2<u32>(u_input.a, ~4294967295u), Struct_2(select(vec4<bool>(true, false, true, u_input.d > u_input.a), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(false, true, true, true), true)), 772f, 141f, select(vec4<bool>(func_1(Struct_3(vec2<u32>(u_input.a, u_input.e), Struct_2(vec4<bool>(true, false, false, false), -1996f, 638f, vec4<bool>(false, true, true, true), vec3<u32>(105872u, u_input.d, u_input.a))), 1491f), true, true, true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), true), true), !any(vec3<bool>(true, false, true))), select(_wgslsmith_sub_vec3_u32(vec3<u32>(3203u, 1u, u_input.d), ~vec3<u32>(u_input.d, u_input.d, 1u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.d, 4294967295u), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e, u_input.a, 1u), vec3<u32>(u_input.e, u_input.a, 4294967295u))), any(vec3<bool>(false, true, false)))));
    let var_1 = countOneBits(var_0.b.e);
    var_0 = Struct_3(select(vec2<u32>(countOneBits(u_input.d), _wgslsmith_add_u32(var_1.x >> (var_0.a.x % 32u), 0u)), var_0.b.e.zz, true), var_0.b);
    let var_2 = Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(min(select(vec3<i32>(-1i, -2147483647i, u_input.c), vec3<i32>(-36280i, 1i, 1i), var_0.b.d.x), vec3<i32>(u_input.c, -14209i, -2147483647i) ^ vec3<i32>(33820i, -16573i, 2484i)), ~(~vec3<i32>(u_input.b, u_input.c, u_input.b))), ~_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, u_input.c, 37594i), vec3<i32>(u_input.b, u_input.c, u_input.c)), ~vec3<i32>(u_input.c, -2147483647i, 1i))), vec4<f32>(var_0.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_4(var_0.b, -791f), -1113f))), -781f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.b.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -378f)))), max(u_input.c | u_input.c, 0i), !(!var_0.b.a), ~_wgslsmith_dot_vec3_u32(~(~var_0.b.e), var_1));
    var var_3 = true;
    let var_4 = firstLeadingBit(~0u ^ _wgslsmith_add_u32(u_input.e & 17840u, ~1u)) & 37112u;
    let var_5 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b, 817f, 434f, var_2.b.x)) - _wgslsmith_f_op_vec4_f32(-var_2.b)) + vec4<f32>(_wgslsmith_f_op_f32(min(var_2.b.x, var_2.b.x)), _wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(var_0.b.c - var_0.b.c), _wgslsmith_div_f32(var_0.b.b, -1000f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.b * var_2.b)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-288f, var_0.b.b, var_2.b.x, var_0.b.b) - var_2.b)))));
    var var_6 = !select(select(!(!vec3<bool>(var_2.d.x, var_2.d.x, var_2.d.x)), select(vec3<bool>(true, var_0.b.d.x, var_0.b.d.x), !var_2.d.xyx, var_2.d.x), select(var_2.d.yyz, vec3<bool>(true, false, var_0.b.a.x), true)), vec3<bool>(!var_2.d.x, false, var_0.b.d.x), !select(vec3<bool>(false, var_0.b.d.x, var_0.b.a.x), var_0.b.d.zzx, vec3<bool>(false, var_2.d.x, var_0.b.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, var_2.a.x), var_2.a.yy)) ^ var_2.a.zx));
}

