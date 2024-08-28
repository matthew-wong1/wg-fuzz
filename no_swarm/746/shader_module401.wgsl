struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: f32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<u32> {
    var var_0 = u_input.b.x;
    var var_1 = select(!select(select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), false), true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), true)), !(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true))), !select(vec4<bool>(true, false, all(vec4<bool>(false, false, true, false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), any(vec4<bool>(true, true, true, true))));
    var_1 = vec4<bool>(any(vec4<bool>(var_1.x, true, !(var_1.x && var_1.x), var_1.x | true)), 11129u >= u_input.b.x, var_1.x, false);
    let var_2 = Struct_3(vec4<i32>(u_input.a, u_input.a, -1557i, _wgslsmith_mult_i32(-7210i, i32(-1i) * -u_input.a)), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 1u, 27607u) >> (vec3<u32>(22075u, u_input.b.x, u_input.b.x) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(17943u, 21486u, 0u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 0u)), ~vec3<u32>(u_input.b.x, 0u, 1u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec3<u32>(52228u, 0u, u_input.b.x))), min(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(4294967295u, 32212u, u_input.b.x)), vec3<u32>(17801u, 16830u, 4294967295u)), countOneBits(firstLeadingBit(vec3<u32>(1u, u_input.b.x, 35284u))))), _wgslsmith_div_f32(-1078f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -533f))), _wgslsmith_f_op_f32(-1300f - 1000f), false))));
    var var_3 = 4294967295u;
    return vec4<u32>(select(var_2.b.x, var_2.b.x, !(var_1.x != false)) << (4294967295u % 32u), ~u_input.b.x, var_2.b.x, ~(~(1u >> (var_2.b.x % 32u)) << (var_2.b.x % 32u)));
}

fn func_2(arg_0: u32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-560f, -645f)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1182f, -1896f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-705f, -261f) + vec2<f32>(-921f, -1027f)), vec2<bool>(true, true)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-455f, 1091f)))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-868f, -645f)))));
    var_0 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-505f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1662f)) - var_0.x)));
    let var_1 = vec2<i32>(-2147483647i, u_input.a);
    let var_2 = arg_0;
    var_0 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -939f));
    return vec4<u32>(countOneBits(arg_0 & arg_0) | _wgslsmith_add_u32(select(var_2, 1u, true), ~var_2), ~countOneBits(19607u), _wgslsmith_add_u32(_wgslsmith_mult_u32(41758u, var_2), firstTrailingBit(_wgslsmith_div_u32(90258u, u_input.b.x))), ~(~max(arg_0, 13378u))) >> (func_3() % vec4<u32>(32u));
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    let var_0 = -arg_0.a.x;
    let var_1 = ~((reverseBits(vec3<i32>(1i, arg_0.a.x, arg_0.a.x) << (arg_0.b % vec3<u32>(32u))) ^ arg_0.a.yzw) << (_wgslsmith_mod_vec3_u32(arg_0.b | ~vec3<u32>(0u, u_input.b.x, 1u), ~vec3<u32>(4294967295u, arg_0.b.x, 4294967295u) ^ (vec3<u32>(1u, u_input.b.x, u_input.b.x) | arg_0.b)) % vec3<u32>(32u)));
    let var_2 = func_2(arg_0.b.x) >> (~(~(vec4<u32>(28998u, 37615u, 69703u, 0u) >> ((vec4<u32>(95760u, 7648u, 4294967295u, 15214u) | vec4<u32>(1u, 0u, arg_0.b.x, 23542u)) % vec4<u32>(32u)))) % vec4<u32>(32u));
    return Struct_3(arg_0.a, func_3().wxw, arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(580f, -859f, 507f) + vec3<f32>(237f, 473f, -148f)))))));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(978f, 1097f, var_0.a.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_0.a, vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a.x, 1830f, var_0.a.x))), true)))));
    let var_1 = func_1(Struct_3(_wgslsmith_mult_vec4_i32(min(vec4<i32>(19172i, u_input.a, u_input.a, u_input.a), vec4<i32>(-1i, 2147483647i, u_input.a, -2147483647i)), vec4<i32>(9964i, u_input.a, -31463i, u_input.a)) >> (vec4<u32>(~u_input.b.x, u_input.b.x, 1u, _wgslsmith_add_u32(u_input.b.x, u_input.b.x)) % vec4<u32>(32u)), ~(~(~vec3<u32>(41539u, u_input.b.x, 0u))), -328f));
    let var_2 = func_3().x;
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a));
    var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(976f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1322f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(var_1.c + var_0.a.x)));
    var var_3 = u_input.b;
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-104f)), 591f, _wgslsmith_f_op_f32(f32(-1f) * -1625f))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1228f, var_0.a.x, 366f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-247f, -422f, var_1.c), vec3<f32>(556f, var_0.a.x, var_1.c))), var_0.a, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -290f) - _wgslsmith_f_op_f32(f32(-1f) * -845f)) - var_0.a.x)));
}

