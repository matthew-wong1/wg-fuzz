struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = u_input.a;
    let var_1 = Struct_1(_wgslsmith_div_f32(arg_0.b.a, arg_0.b.b), _wgslsmith_f_op_f32(-arg_0.b.b));
    let var_2 = ~firstLeadingBit(min(abs(-1i), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-44033i, -17956i, -2882i), vec3<i32>(36767i, -2147483647i, 51227i)), vec3<i32>(-1i, -121i, 18769i))));
    var var_3 = Struct_1(-2454f, _wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.a))))));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.b, var_3.b, var_1.b, -1932f)), vec4<f32>(var_3.a, _wgslsmith_f_op_f32(-1723f * var_1.b), _wgslsmith_f_op_f32(-arg_0.b.a), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))) + vec4<f32>(_wgslsmith_f_op_f32(416f + -432f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a, var_1.a)))), _wgslsmith_f_op_f32(trunc(arg_0.b.b)), -1000f));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1071f, var_1.a)) - _wgslsmith_f_op_f32(-arg_0.b.a))))));
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(203f, -489f)))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1135f - 1848f) - -160f) + _wgslsmith_f_op_f32(func_3(Struct_2(vec2<bool>(false, true), Struct_1(-827f, -1457f), false)))), 183f));
    var_0 = _wgslsmith_f_op_f32(-1261f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-772f)) - _wgslsmith_f_op_f32(sign(-443f))))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(3362f, 807f) * _wgslsmith_f_op_f32(trunc(-709f))) * 1f)));
    var var_1 = Struct_3(-11109i, vec4<u32>(u_input.a, ~(abs(2913u) | (u_input.a >> (u_input.a % 32u))), abs(~(~u_input.a)), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(0u, 1u)) & _wgslsmith_add_u32(u_input.a, u_input.a), countOneBits(u_input.a) << (select(u_input.a, u_input.a, false) % 32u))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -528f))) - _wgslsmith_f_op_f32(f32(-1f) * -489f)), _wgslsmith_div_f32(-1969f, -167f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-789f)), 1471f));
    return Struct_4(Struct_2(!vec2<bool>(true, u_input.a < var_1.b.x), Struct_1(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_div_f32(-325f, 1050f)), true), Struct_3(-15390i, var_1.b), -(~abs(~vec4<i32>(var_1.a, 7229i, var_1.a, 2147483647i))));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: Struct_3) -> Struct_1 {
    let var_0 = true;
    let var_1 = Struct_1(1000f, _wgslsmith_f_op_f32(round(1762f)));
    let var_2 = arg_3.a;
    let var_3 = func_2().b;
    let var_4 = !(!(_wgslsmith_div_f32(-645f, _wgslsmith_f_op_f32(-var_1.a)) >= arg_1.a.b.b));
    return func_2().a.b;
}

fn func_5(arg_0: Struct_1) -> Struct_3 {
    var var_0 = func_2().a;
    var_0 = func_2().a;
    var_0 = func_2().a;
    var var_1 = _wgslsmith_sub_u32(~u_input.a, u_input.a);
    var_0 = Struct_2(!select(vec2<bool>(true, true), !(!vec2<bool>(var_0.c, var_0.c)), vec2<bool>(true, !var_0.a.x)), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.b * -1891f), -936f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(811f)), _wgslsmith_f_op_f32(-var_0.b.b)) + _wgslsmith_f_op_f32(min(arg_0.b, arg_0.a)))), select(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.a, -1092f), _wgslsmith_f_op_f32(-arg_0.a)) >= _wgslsmith_f_op_f32(-var_0.b.b), true, true));
    return Struct_3(_wgslsmith_mult_i32(firstTrailingBit(~_wgslsmith_div_i32(2147483647i, -29703i)), -2147483647i), abs(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 388u, u_input.a), ~vec4<u32>(0u, u_input.a, u_input.a, u_input.a)), ~(~vec4<u32>(u_input.a, 11014u, u_input.a, 94496u)))));
}

fn func_1(arg_0: f32) -> Struct_4 {
    let var_0 = func_5(func_4(u_input.a, func_2(), vec2<bool>(arg_0 < -610f, false), func_2().b));
    var var_1 = ~(vec2<i32>(_wgslsmith_sub_i32(2147483647i, select(44022i, var_0.a, true)), abs(2147483647i) & (-14723i ^ var_0.a)) & _wgslsmith_mult_vec2_i32(~firstLeadingBit(vec2<i32>(var_0.a, var_0.a)), -(vec2<i32>(var_0.a, -1i) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))));
    var var_2 = true;
    let var_3 = func_2().a.b;
    let var_4 = 976f;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-267f, 533f)) + 1083f))));
    var var_1 = _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~0u, ~4294967295u, ~4294967295u, var_0.b.b.x) ^ _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, 42341u, var_0.b.b.x), var_0.b.b), vec4<u32>(15869u, 0u, 4294967295u, u_input.a)), _wgslsmith_mult_vec4_u32(~var_0.b.b | vec4<u32>(var_0.b.b.x, 24673u, var_0.b.b.x, u_input.a), ~var_0.b.b), vec4<u32>((u_input.a << (36136u % 32u)) >> (u_input.a % 32u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(46962u, u_input.a, u_input.a), vec3<u32>(u_input.a, 1u, 17997u)), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, var_0.b.b.x, 19085u), 86227u), 0u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(~var_0.b.b.x, max(u_input.a, var_0.b.b.x), ~0u, 0u >> (var_0.b.b.x % 32u)), vec4<u32>(~1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(var_0.b.b.xxw, vec3<u32>(0u, u_input.a, 28040u)), reverseBits(u_input.a)), 1u, firstTrailingBit(u_input.a & 4294967295u))));
    var_1 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(firstLeadingBit(1u), max(~42978u, min(14077u, u_input.a)), 4294967295u, max(~var_1.x, u_input.a)), var_0.b.b, vec4<u32>(1u, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b.a) - _wgslsmith_f_op_f32(step(-1656f, -1497f)))).b.b.x, ~var_1.x, ~u_input.a));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b.a * _wgslsmith_f_op_f32(f32(-1f) * -447f))))));
    let var_3 = firstTrailingBit(vec3<i32>(-12730i ^ var_0.b.a, 57031i, func_2().c.x)) << (var_0.b.b.xyz % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_vec2_i32(var_3.zz, var_3.zx)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2))), var_0.c.xwy, -var_0.c, ~(~(var_0.b.b & vec4<u32>(4294967295u, 109u, u_input.a, 2102u)) | _wgslsmith_div_vec4_u32(var_0.b.b, _wgslsmith_clamp_vec4_u32(var_0.b.b, vec4<u32>(var_1.x, var_0.b.b.x, var_1.x, 15189u), var_0.b.b))));
}

