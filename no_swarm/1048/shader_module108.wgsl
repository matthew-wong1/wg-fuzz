struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: vec4<i32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(round(415f));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-373f, _wgslsmith_f_op_f32(f32(-1f) * -623f), true)))));
    let var_1 = abs(countOneBits(arg_1.zx));
    var_0 = -287f;
    var var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(1197f, 620f, 830f, 392f), vec4<f32>(-803f, 729f, 592f, -983f)))))))), ~vec3<u32>(reverseBits(u_input.a), var_1.x, countOneBits(var_1.x)), Struct_2(vec3<bool>(all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true))), false, true && any(vec2<bool>(false, true))), Struct_1(vec4<u32>(_wgslsmith_mod_u32(arg_0, 30376u), 1u, arg_1.x, _wgslsmith_mult_u32(0u, 4294967295u)), ~(~u_input.a), vec2<f32>(293f, _wgslsmith_f_op_f32(196f + -723f)))));
    return select(select(vec4<bool>(true, _wgslsmith_sub_u32(4294967295u, 0u) <= max(1u, var_2.c.b.b), select(true, true, true | var_2.c.a.x), var_2.c.a.x), !(!(!vec4<bool>(false, true, var_2.c.a.x, var_2.c.a.x))), vec4<bool>(var_2.c.a.x | (-1i > u_input.b), any(vec3<bool>(var_2.c.a.x, var_2.c.a.x, var_2.c.a.x)), (arg_2.x << (1u % 32u)) < u_input.b, var_2.c.a.x)), select(vec4<bool>(var_2.c.a.x, any(!var_2.c.a), var_2.c.a.x, all(var_2.c.a.yx)), vec4<bool>(select(var_2.c.a.x, var_2.c.a.x, any(vec4<bool>(true, false, var_2.c.a.x, var_2.c.a.x))), !(true || var_2.c.a.x), var_2.c.a.x, var_2.c.a.x), true), any(!var_2.c.a) && false);
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_3) -> vec4<u32> {
    var var_0 = countOneBits(select(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 21468u, 0u, u_input.a), ~vec4<u32>(0u, u_input.a, u_input.a, arg_0)), max(~vec4<u32>(4294967295u, u_input.a, arg_0, 1u), vec4<u32>(arg_2.b.x, arg_0, 0u, arg_2.b.x) >> (vec4<u32>(arg_0, 6871u, 1u, arg_0) % vec4<u32>(32u))), any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true))))) ^ select(abs(vec4<u32>(24332u, ~37307u, ~32058u, 0u)), vec4<u32>(1u, 4294967295u, min(select(arg_0, arg_2.b.x, false), ~69918u), arg_2.b.x), select(vec4<bool>(all(vec4<bool>(true, true, false, false)), all(vec3<bool>(true, true, false)), true, 32687u > arg_0), func_3(~arg_0, vec4<u32>(12545u, 1u, 1u, 32292u) >> (vec4<u32>(69727u, arg_2.a, 23486u, 1u) % vec4<u32>(32u)), vec4<i32>(8520i, u_input.b, u_input.b, u_input.b)), false));
    let var_1 = Struct_5(vec4<f32>(-564f, arg_1, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1)))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a, 1u, var_0.x), ~(vec3<u32>(arg_0, arg_2.b.x, arg_0) << (vec3<u32>(var_0.x, 0u, u_input.a) % vec3<u32>(32u))), ~vec3<u32>(var_0.x, 1u, 4294967295u)) >> (var_0.zxx % vec3<u32>(32u)), Struct_2(func_3(_wgslsmith_clamp_u32(57665u, arg_0, var_0.x) ^ arg_0, vec4<u32>(firstTrailingBit(arg_2.b.x), 1u, 1u, firstLeadingBit(u_input.a)), ~(~vec4<i32>(2147483647i, u_input.b, -1i, u_input.b))).xyx, Struct_1(vec4<u32>(var_0.x, firstLeadingBit(0u), ~arg_0, ~34778u), _wgslsmith_mod_u32(firstLeadingBit(var_0.x), 1u), vec2<f32>(_wgslsmith_f_op_f32(min(arg_1, arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -1364f)))));
    var_0 = _wgslsmith_mult_vec4_u32(countOneBits((reverseBits(var_1.c.b.a) & (var_1.c.b.a | vec4<u32>(1u, 22385u, arg_2.b.x, 4294967295u))) << (_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.b.x, 25015u, u_input.a, 1u), vec4<u32>(var_1.b.x, 46156u, 7465u, u_input.a)) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(var_1.c.b.a, min(max(_wgslsmith_clamp_vec4_u32(vec4<u32>(22739u, var_1.b.x, 482u, 1u), var_1.c.b.a, vec4<u32>(19902u, var_0.x, u_input.a, 106676u)), vec4<u32>(arg_0, 4294967295u, var_0.x, arg_0)), ~vec4<u32>(u_input.a, arg_2.a, 33901u, 0u))));
    let var_2 = var_1.c.a.x | ((((var_1.c.b.c.x <= arg_1) || select(var_1.c.a.x, var_1.c.a.x, var_1.c.a.x)) && false) || (var_1.c.a.x && var_1.c.a.x));
    return reverseBits(vec4<u32>(arg_0, 27339u, _wgslsmith_mult_u32(77146u, 0u), 1u));
}

fn func_1(arg_0: vec2<bool>) -> i32 {
    var var_0 = Struct_1(abs(_wgslsmith_div_vec4_u32(~func_2(u_input.a, 287f, Struct_3(17424u, vec2<u32>(5817u, 37939u))), firstLeadingBit(vec4<u32>(u_input.a, u_input.a, 5081u, u_input.a)))), max(~(~0u), u_input.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1607f, -586f) + vec2<f32>(-445f, -1469f)) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-654f, 512f)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, -305f))) + vec2<f32>(_wgslsmith_f_op_f32(max(102f, 1769f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.c.x)), -203f, _wgslsmith_f_op_f32(-var_0.c.x)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -114f), _wgslsmith_f_op_f32(sign(-226f)), _wgslsmith_f_op_f32(abs(-1000f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(round(-898f))) + vec3<f32>(_wgslsmith_f_op_f32(var_0.c.x * var_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -599f), _wgslsmith_f_op_f32(f32(-1f) * -1351f))), vec3<bool>(any(vec4<bool>(arg_0.x, true, arg_0.x, false)) & any(vec3<bool>(arg_0.x, false, true)), !arg_0.x, arg_0.x))));
    var var_2 = false;
    var var_3 = Struct_4(Struct_2(!(!func_3(u_input.a, var_0.a, vec4<i32>(0i, u_input.b, -41586i, 868i)).www), Struct_1(reverseBits(~vec4<u32>(var_0.a.x, 0u, var_0.b, var_0.b)), _wgslsmith_dot_vec4_u32(var_0.a, var_0.a), var_1.xy)), vec4<i32>(_wgslsmith_mult_i32(max(~u_input.b, _wgslsmith_mod_i32(20022i, 1i)), -7591i), reverseBits(u_input.b), 12687i, _wgslsmith_mult_i32(-1i, -(~u_input.b))));
    let var_4 = func_3(var_3.a.b.a.x, ~select(_wgslsmith_div_vec4_u32(var_3.a.b.a, vec4<u32>(var_0.a.x, var_3.a.b.a.x, 4294967295u, var_3.a.b.a.x)), vec4<u32>(var_3.a.b.a.x, ~4294967295u, ~var_3.a.b.a.x, ~u_input.a), !vec4<bool>(arg_0.x, false, false, true)), _wgslsmith_mult_vec4_i32(var_3.b, (var_3.b | vec4<i32>(0i, var_3.b.x, 9999i, 8559i)) ^ var_3.b));
    return ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(var_3.b.zx, var_3.b.yz), min(u_input.b, firstTrailingBit(u_input.b)), 2147483647i | u_input.b);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec4<f32>) -> StorageBuffer {
    let var_0 = ~(_wgslsmith_dot_vec4_u32(arg_2.b.a, min(arg_2.b.a, ~arg_2.b.a)) & ~max(_wgslsmith_div_u32(u_input.a, 1u), _wgslsmith_div_u32(1u, 1u)));
    var var_1 = vec4<i32>(abs(arg_1.x), _wgslsmith_add_i32(-arg_1.x, ~2147483647i) << (~1u % 32u), 2147483647i, -45187i) ^ vec4<i32>(abs(_wgslsmith_div_i32(13534i, u_input.b)), arg_1.x, -arg_1.x, -1i);
    var_1 = vec4<i32>(-1i) * -countOneBits(firstTrailingBit(reverseBits(vec4<i32>(u_input.b, -2147483647i, 2147483647i, var_1.x))));
    var var_2 = u_input.b;
    let var_3 = 569f;
    return StorageBuffer(abs(abs(_wgslsmith_add_vec2_i32(arg_1.yz, select(vec2<i32>(1i, 2147483647i), vec2<i32>(var_1.x, 39619i), vec2<bool>(arg_2.a.x, arg_2.a.x))))), vec2<u32>(_wgslsmith_mult_u32(arg_2.b.b, 1u), ~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, false), all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true))))), all(select(vec4<bool>(true, true, false, all(vec4<bool>(false, true, true, false))), select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), u_input.b <= 0i), vec4<bool>(true, true, true, true))), all(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))) && (2147483647i <= _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, 0i), vec2<i32>(0i, -1i) << (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)))));
    let x = u_input.a;
    s_output = func_4(var_0, vec3<i32>(_wgslsmith_add_i32(func_1(select(var_0.xy, vec2<bool>(true, false), vec2<bool>(false, var_0.x))), firstTrailingBit(1i << (u_input.a % 32u))), i32(-1i) * -1i, u_input.b), Struct_2(vec3<bool>(true, true || !var_0.x, !(u_input.a != u_input.a)), Struct_1(vec4<u32>(~u_input.a, _wgslsmith_div_u32(u_input.a, 1u), abs(u_input.a), ~22517u), (u_input.a >> (u_input.a % 32u)) | ~u_input.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(132f, 185f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))));
}

