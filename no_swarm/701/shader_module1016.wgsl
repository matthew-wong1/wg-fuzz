struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> bool {
    let var_0 = all(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, all(vec2<bool>(false, true)), true, true))) | true;
    var var_1 = ~firstLeadingBit(~(vec4<i32>(29012i, u_input.c, u_input.c, 1i) >> (vec4<u32>(u_input.b, 1u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) << (_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, vec4<u32>(0u, u_input.a.x, 69493u, u_input.b)), _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(4294967295u, 56857u, u_input.b, u_input.b))) % vec4<u32>(32u)));
    var_1 = ~select(vec4<i32>(var_1.x, var_1.x, u_input.c, -(var_1.x | u_input.c)), -(~(-vec4<i32>(var_1.x, var_1.x, var_1.x, 2147483647i))), vec4<bool>(all(vec3<bool>(true, var_0, var_0)), all(!vec2<bool>(false, var_0)), true, var_0));
    var_1 = vec4<i32>(_wgslsmith_div_i32(~var_1.x, ~u_input.c), ~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(u_input.c, -64491i), var_1.x ^ u_input.c, 1i, _wgslsmith_mult_i32(var_1.x, u_input.c)), firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, u_input.c, u_input.c, u_input.c), vec4<i32>(-2147483647i, 29188i, 2147483647i, -6007i)))), reverseBits(min(u_input.c, min(0i, var_1.x)) >> (~(~1u) % 32u)), var_1.x);
    let var_2 = abs(~1i);
    return all(!vec4<bool>(false, any(select(vec3<bool>(false, var_0, false), vec3<bool>(var_0, false, var_0), true)), any(vec3<bool>(false, var_0, var_0)) | var_0, !var_0 && var_0));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: vec4<i32>) -> vec3<bool> {
    var var_0 = Struct_1(vec2<bool>(!(!func_3()), false), arg_1, !vec3<bool>(all(vec4<bool>(true, true, true, true)), any(vec3<bool>(false, false, false)) || true, -144f >= _wgslsmith_f_op_f32(ceil(404f))));
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-298f, -292f, _wgslsmith_f_op_f32(-1903f - 718f), _wgslsmith_div_f32(1657f, -1046f))))));
    var_0 = Struct_1(var_0.a, arg_1, !vec3<bool>(true, func_3(), var_0.a.x || any(vec2<bool>(true, false))));
    var_0 = Struct_1(vec2<bool>(((var_0.b.x ^ 4294967295u) < ~var_0.b.x) != true, false), _wgslsmith_clamp_vec4_u32(~u_input.a, var_0.b, ~vec4<u32>(_wgslsmith_mod_u32(0u, var_0.b.x), var_0.b.x >> (2243u % 32u), 22450u, ~0u)), vec3<bool>(!all(vec3<bool>(var_0.a.x, var_0.c.x, true)), false, all(!(!vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.c.x)))));
    let var_2 = 0u;
    return vec3<bool>(all(!vec3<bool>(any(vec2<bool>(true, var_0.a.x)), true, var_0.c.x)), any(vec4<bool>(false, !any(var_0.a), var_0.c.x, true)), !all(select(!var_0.c, !var_0.c, select(var_0.c, vec3<bool>(true, var_0.c.x, var_0.a.x), var_0.c))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = arg_1;
    let var_2 = Struct_1(!(!var_1.c.yz), vec4<u32>(firstLeadingBit(abs(1u)), u_input.b, firstTrailingBit(4294967295u), arg_0.b.x), func_2(~var_1.b.xw, arg_0.b, arg_3));
    var var_3 = var_0.a;
    var var_4 = var_2.c.x & (_wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_sub_vec2_u32(u_input.a.zx, u_input.a.wx)), (vec2<u32>(30407u, 0u) & vec2<u32>(var_2.b.x, arg_1.b.x)) << (select(vec2<u32>(var_2.b.x, arg_2.b.x), arg_2.b.wy, false) % vec2<u32>(32u))) == var_0.b.x);
    return Struct_1(vec2<bool>(true, !(!(var_3.x && true))), firstTrailingBit(_wgslsmith_add_vec4_u32(arg_0.b, firstTrailingBit(vec4<u32>(arg_2.b.x, arg_2.b.x, var_0.b.x, var_2.b.x)))), arg_0.c);
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = arg_1.b.xz;
    let var_1 = arg_1;
    let var_2 = u_input.c;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1797f, 205f));
    var var_4 = func_4(Struct_1(vec2<bool>(arg_0 & any(vec2<bool>(true, arg_0)), all(arg_1.c.yz)), max(vec4<u32>(30235u >> (var_1.b.x % 32u), ~var_0.x, _wgslsmith_dot_vec4_u32(arg_1.b, vec4<u32>(var_1.b.x, 41064u, var_0.x, var_1.b.x)), _wgslsmith_div_u32(1u, var_1.b.x)), abs(arg_1.b)), func_2(vec2<u32>(~var_1.b.x, reverseBits(u_input.b)), countOneBits(~vec4<u32>(4294967295u, 32512u, arg_1.b.x, 26801u)), ~select(vec4<i32>(0i, 12899i, -1i, 0i), vec4<i32>(2147483647i, -44173i, var_2, 29984i), var_1.a.x))), Struct_1(func_2(vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(41558u, 4294967295u, var_0.x, 22546u)), _wgslsmith_mod_u32(var_0.x, 51728u)), ~vec4<u32>(u_input.a.x, 43223u, 1u, u_input.a.x), ~vec4<i32>(-2147483647i, 3118i, 0i, u_input.c) | vec4<i32>(u_input.c, var_2, u_input.c, var_2)).xz, arg_1.b, vec3<bool>(false, (var_1.c.x || var_1.c.x) & true, true)), Struct_1(select(vec2<bool>(select(var_1.a.x, var_1.c.x, arg_1.a.x), var_1.a.x), select(func_2(var_0, vec4<u32>(u_input.b, arg_1.b.x, 50530u, 22678u), vec4<i32>(2147483647i, -2147483647i, u_input.c, -2147483647i)).yy, !vec2<bool>(false, arg_0), false), !select(vec2<bool>(arg_1.c.x, false), vec2<bool>(false, true), arg_0)), ~u_input.a, !(!vec3<bool>(var_1.c.x, true, var_1.a.x))), min(~(~vec4<i32>(73170i, u_input.c, u_input.c, 0i)), abs(vec4<i32>(~(-1i), max(var_2, var_2), var_2, -1i))));
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), false)), select(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true)), !func_1(false, Struct_1(vec2<bool>(false, false), u_input.a, vec3<bool>(true, true, true))), any(vec2<bool>(true, true))), (_wgslsmith_clamp_i32(u_input.c, u_input.c, u_input.c) <= 9205i) && any(vec3<bool>(true, true, true))), firstLeadingBit((_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, u_input.a) & u_input.a) >> (abs(_wgslsmith_mult_vec4_u32(u_input.a, u_input.a)) % vec4<u32>(32u))), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-194f)) + _wgslsmith_f_op_f32(max(-252f, 441f))) > -1459f, true, ~u_input.a.x != 1u));
    let var_1 = var_0.a.x;
    var var_2 = func_1(false, Struct_1(func_4(var_0, func_4(var_0, Struct_1(vec2<bool>(var_1, var_1), vec4<u32>(var_0.b.x, 83953u, var_0.b.x, var_0.b.x), vec3<bool>(false, true, var_1)), func_4(Struct_1(vec2<bool>(var_1, var_0.c.x), u_input.a, var_0.c), var_0, var_0, vec4<i32>(11102i, -21083i, 0i, u_input.c)), vec4<i32>(-12811i, -43813i, -66512i, 60727i) ^ vec4<i32>(u_input.c, u_input.c, -29307i, 5580i)), Struct_1(vec2<bool>(true, true), select(var_0.b, vec4<u32>(u_input.a.x, 1u, var_0.b.x, u_input.b), vec4<bool>(var_1, true, var_0.c.x, var_0.a.x)), select(var_0.c, vec3<bool>(false, var_1, var_1), vec3<bool>(var_0.a.x, false, var_1))), vec4<i32>(-2147483647i, ~(-1i), _wgslsmith_add_i32(u_input.c, u_input.c), ~u_input.c)).a, abs(~vec4<u32>(13111u, u_input.b, 58157u, var_0.b.x)) << (vec4<u32>(~var_0.b.x, _wgslsmith_clamp_u32(var_0.b.x, var_0.b.x, var_0.b.x), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), _wgslsmith_sub_u32(63324u, u_input.b)) % vec4<u32>(32u)), vec3<bool>(true, !var_0.c.x || var_0.c.x, true))).x;
    var var_3 = vec4<i32>(u_input.c, ~u_input.c, 0i, -abs(firstTrailingBit(_wgslsmith_add_i32(37040i, -2147483647i))));
    var_3 = firstLeadingBit(~vec4<i32>(_wgslsmith_div_i32(abs(u_input.c), _wgslsmith_add_i32(var_3.x, u_input.c)), -20404i, var_3.x, -1i));
    let var_4 = _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_3.x | var_3.x, ~(-64454i)), vec2<i32>(firstTrailingBit(u_input.c), -2147483647i)), select(_wgslsmith_div_vec2_i32(var_3.zz & _wgslsmith_sub_vec2_i32(vec2<i32>(var_3.x, u_input.c), var_3.yz), -var_3.yy), ~_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, var_3.x), -vec2<i32>(-30753i, 2424i)), !vec2<bool>(var_0.a.x, u_input.b >= var_0.b.x)));
    var var_5 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-501f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -370f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(319f - 792f) - _wgslsmith_f_op_f32(step(-377f, -1000f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * 1330f), 1f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1078f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-734f - _wgslsmith_f_op_f32(ceil(-1000f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1179f + 666f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1066f, -856f, -304f, -2150f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(758f, -697f, 1329f, 622f))) * vec4<f32>(_wgslsmith_f_op_f32(abs(304f)), -392f, -1039f, _wgslsmith_f_op_f32(-1000f * 950f)))));
    let var_6 = ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.c), _wgslsmith_sub_vec2_i32(var_3.xx, ~(-vec2<i32>(-16300i, 2220i))));
    let var_7 = ~vec4<i32>(~(-2147483647i), _wgslsmith_add_i32(0i, 1i), _wgslsmith_div_i32(var_4.x, firstTrailingBit(-14943i)), 2147483647i) | firstLeadingBit(reverseBits(vec4<i32>(max(var_3.x, -1i), 2147483647i, ~(-1i), ~u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(~vec3<u32>(~var_0.b.x, var_0.b.x, 95991u), ~_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(4294967295u, 0u, 0u)), ~vec3<u32>(0u, u_input.b, 1u))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(-var_7, var_7), var_7, vec4<i32>(-1i & var_7.x, 0i, _wgslsmith_dot_vec2_i32(var_7.zw, var_7.yz), _wgslsmith_dot_vec2_i32(var_7.yw, var_7.zz)) << (u_input.a % vec4<u32>(32u))), max(vec4<i32>(-11661i, 0i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, 9674i, 1i), i32(-1i) * -2147483647i), 31461i), vec4<i32>(69259i, ~(-15076i), _wgslsmith_clamp_i32(-21762i, ~(-42764i), var_7.x | 2147483647i), 2147483647i)));
}

