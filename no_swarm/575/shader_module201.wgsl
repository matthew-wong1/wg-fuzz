struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x));
    let var_1 = arg_0;
    var var_2 = var_1.c;
    let var_3 = Struct_1(~(u_input.a.x & firstTrailingBit(arg_1.x)), firstTrailingBit(_wgslsmith_dot_vec4_i32(max(min(vec4<i32>(1i, 13221i, -6274i, var_1.b), vec4<i32>(arg_1.x, arg_1.x, arg_0.a, u_input.a.x)), ~vec4<i32>(0i, u_input.a.x, 0i, arg_0.b)), ~vec4<i32>(-2147483647i, -19277i, arg_1.x, 0i) | (vec4<i32>(-20232i, 44336i, 14804i, var_1.b) | vec4<i32>(arg_1.x, arg_0.b, 1i, -2147483647i)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1816f, 2032f, var_0, var_2.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, var_0, arg_0.c.x, var_2.x) - vec4<f32>(293f, var_0, arg_0.c.x, -230f)) + _wgslsmith_f_op_vec4_f32(round(var_1.c))))));
    let var_4 = !vec3<bool>(!any(vec2<bool>(true, true)), select(all(vec3<bool>(true, false, true)), false, true), all(vec3<bool>(all(vec4<bool>(true, false, true, false)), true, true)));
    return 1i;
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_1(func_3(Struct_1(u_input.a.x, abs(u_input.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-474f, 202f, -1044f, 1062f)) + vec4<f32>(385f, 171f, 447f, 1466f))), vec3<i32>(~(i32(-1i) * -60646i), u_input.a.x, 2147483647i)), u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-306f, 900f, 1228f, -1000f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-230f, -3251f, -911f, 781f), vec4<f32>(446f, -521f, -488f, -864f)))))));
    let var_1 = ~min(~select(reverseBits(vec3<u32>(44952u, 0u, 4294967295u)), ~vec3<u32>(0u, 1u, 0u), !vec3<bool>(false, arg_0, true)), vec3<u32>(max(0u, 4294967295u) & _wgslsmith_dot_vec2_u32(vec2<u32>(54589u, 4294967295u), vec2<u32>(0u, 0u)), firstTrailingBit(countOneBits(71607u)), ~1u));
    var var_2 = vec2<u32>(~31950u, var_1.x);
    var_2 = vec2<u32>(~1u, countOneBits(abs(var_1.x)));
    var_2 = min(abs(var_1.yy), ~var_1.zx);
    return Struct_1(_wgslsmith_mult_i32(-7663i, 50071i), 29404i, var_0.c);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> f32 {
    let var_0 = true;
    let var_1 = arg_1;
    var var_2 = vec4<i32>(0i, _wgslsmith_clamp_i32(0i, ~2147483647i, arg_1.b), _wgslsmith_sub_i32(~_wgslsmith_mult_i32(u_input.a.x, arg_1.b), _wgslsmith_div_i32(firstLeadingBit(var_1.b), abs(-3i))), (min(10133i, arg_1.b) >> (~20869u % 32u)) & (i32(-1i) * -1i)) | reverseBits(abs(-(vec4<i32>(arg_1.b, -2223i, arg_1.a, arg_0) & vec4<i32>(-2147483647i, arg_1.b, arg_1.b, 5211i))));
    var_2 = _wgslsmith_mult_vec4_i32(vec4<i32>(16858i ^ ~countOneBits(var_1.a), func_3(arg_1, _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, var_2.x, -1i), vec3<i32>(-8261i, 34006i, -1i)), vec3<i32>(-1i, arg_0, arg_0) << (vec3<u32>(1u, 70387u, 0u) % vec3<u32>(32u)))), abs(u_input.a.x), arg_1.a), _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -select(vec4<i32>(var_2.x, var_2.x, arg_0, -2147483647i), vec4<i32>(-14052i, 0i, 1i, 23357i), false), max(min(vec4<i32>(arg_0, arg_1.a, 1i, -1993i), vec4<i32>(arg_1.b, 13007i, arg_0, 1i)) << (min(vec4<u32>(23881u, 1u, 112850u, 5384u), vec4<u32>(65652u, 73725u, 1u, 4294967295u)) % vec4<u32>(32u)), ~max(vec4<i32>(arg_0, u_input.a.x, var_2.x, arg_1.a), vec4<i32>(9548i, 0i, -14801i, u_input.a.x)))));
    var_2 = firstLeadingBit(_wgslsmith_sub_vec4_i32(min(abs(vec4<i32>(var_1.b, 21904i, var_2.x, 15058i)), -vec4<i32>(var_1.a, var_1.b, u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_2.x, var_1.a, var_1.a, -934i), vec4<i32>(-4858i, -21136i, 0i, var_2.x)), vec4<i32>(arg_0, -66372i, -9999i, -6658i) & vec4<i32>(-1i, u_input.a.x, arg_1.a, u_input.a.x)))) << (~min(vec4<u32>(firstTrailingBit(1u), ~0u, 1u, ~45972u), vec4<u32>(~42351u, ~23584u, ~4294967295u, ~0u)) % vec4<u32>(32u));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(554f - -798f)));
}

fn func_1(arg_0: vec3<bool>, arg_1: u32) -> StorageBuffer {
    var var_0 = true | any(select(!vec4<bool>(arg_0.x, true, true, false), !select(vec4<bool>(true, true, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), arg_0.x), true));
    var_0 = !(_wgslsmith_f_op_f32(-159f + _wgslsmith_f_op_f32(func_4(u_input.a.x, func_2(arg_0.x)))) > _wgslsmith_f_op_f32(sign(946f)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(func_3(Struct_1(u_input.a.x, u_input.a.x, vec4<f32>(1224f, -1267f, -1000f, 703f)), vec3<i32>(u_input.a.x, 0i, u_input.a.x)), Struct_1(u_input.a.x, -33720i, vec4<f32>(1154f, 454f, -285f, 680f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1005f, 497f, arg_0.x)), _wgslsmith_f_op_f32(select(-434f, 221f, arg_0.x)))), _wgslsmith_f_op_f32(select(974f, -411f, arg_0.x))));
    let var_2 = Struct_1(u_input.a.x ^ -u_input.a.x, u_input.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1955f, 836f, 442f, 365f), vec4<f32>(-411f, var_1.x, var_1.x, -123f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(678f, -250f, var_1.x, -1000f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 239f, -415f) + vec4<f32>(239f, -815f, var_1.x, 1745f)), vec4<f32>(731f, var_1.x, var_1.x, 615f), any(vec3<bool>(false, arg_0.x, false)))), !arg_0.x))));
    var var_3 = _wgslsmith_f_op_f32(-338f * 1274f);
    return StorageBuffer(8717i, func_3(var_2, vec3<i32>(~2147483647i, u_input.a.x, u_input.a.x)) | -4593i, _wgslsmith_f_op_f32(-var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1207f, 570f, 702f))), _wgslsmith_div_vec3_f32(vec3<f32>(544f, 274f, -781f), vec3<f32>(-165f, 932f, -1000f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-342f, 562f, 445f), vec3<f32>(387f, -1000f, 294f)))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1000f, 648f)), _wgslsmith_f_op_f32(247f + -519f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-972f + -174f) + _wgslsmith_f_op_f32(863f * 456f))), -466f, _wgslsmith_f_op_f32(1366f - 630f)));
    let var_1 = 1000f;
    let x = u_input.a;
    s_output = func_1(vec3<bool>(true, !select(true, true, true), (true && all(vec4<bool>(false, false, true, false))) && ((u_input.a.x ^ 20159i) >= 2147483647i)), 14081u);
}

