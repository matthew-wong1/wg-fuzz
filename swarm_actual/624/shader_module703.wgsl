struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> bool {
    var var_0 = ~vec3<u32>(reverseBits(45711u), abs(max(u_input.a << (u_input.a % 32u), u_input.a)), ~u_input.a);
    var var_1 = Struct_2(true, Struct_1(4294967295u, vec2<bool>(true, select(any(vec2<bool>(false, false)), true, true))), ~_wgslsmith_div_vec4_i32(~(-vec4<i32>(2147483647i, 1i, -21190i, 0i)), reverseBits(vec4<i32>(1i, 1i, 1i, 1i))), true);
    var_1 = Struct_2(all(select(!select(vec3<bool>(var_1.b.b.x, false, false), vec3<bool>(false, var_1.d, true), var_1.a), vec3<bool>(any(vec2<bool>(var_1.d, true)), true, select(var_1.b.b.x, var_1.a, true)), !select(vec3<bool>(var_1.d, var_1.a, var_1.a), vec3<bool>(var_1.b.b.x, true, true), vec3<bool>(true, false, false)))), var_1.b, var_1.c, true);
    var_1 = Struct_2(all(!(!select(vec4<bool>(true, var_1.d, true, var_1.b.b.x), vec4<bool>(false, false, var_1.d, var_1.a), vec4<bool>(var_1.b.b.x, var_1.b.b.x, false, false)))), var_1.b, _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_mult_i32(2147483647i, _wgslsmith_sub_i32(6426i, var_1.c.x)), 4780i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.c.x, -2147483647i, -1i, var_1.c.x), vec4<i32>(var_1.c.x, -4671i, 0i, var_1.c.x)), ~vec4<i32>(-2147483647i, var_1.c.x, var_1.c.x, 2147483647i))), select(vec4<i32>(-var_1.c.x, i32(-1i) * -2147483647i, ~var_1.c.x, -619i), reverseBits(var_1.c), vec4<bool>(true, !var_1.a, 4294967295u != var_1.b.a, var_1.b.b.x))), var_1.b.b.x);
    var var_2 = _wgslsmith_mod_vec4_i32(~(~(-firstTrailingBit(var_1.c))), vec4<i32>(var_1.c.x, var_1.c.x, 8600i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-19550i, var_1.c.x), vec2<i32>(var_1.c.x, var_1.c.x)), min(vec2<i32>(2147483647i, var_1.c.x), var_1.c.xy))) | vec4<i32>(~(0i >> (var_0.x % 32u)), 1i, var_1.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_1.c.x, var_1.c.x, 26211i), select(var_1.c, var_1.c, vec4<bool>(true, false, false, var_1.b.b.x)))));
    return any(var_1.b.b);
}

fn func_4(arg_0: vec2<i32>) -> i32 {
    let var_0 = Struct_2(true, Struct_1(~(~4294967295u & ~u_input.a), select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), true), true), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true))), ~((vec4<i32>(2147483647i, arg_0.x, 20855i, -49134i) | vec4<i32>(-2147483647i, arg_0.x, arg_0.x, arg_0.x)) << (vec4<u32>(1u, 4294967295u, 1u, u_input.a) % vec4<u32>(32u))) ^ ~(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 35848i, -86853i), vec4<i32>(arg_0.x, 1i, 22378i, 10777i)) >> (~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))), min(~(~0u), 0u) >= _wgslsmith_mult_u32(~_wgslsmith_div_u32(u_input.a, u_input.a), u_input.a));
    var var_1 = abs(arg_0.x);
    var_1 = -27259i;
    let var_2 = Struct_2(false, var_0.b, var_0.c, all(!select(vec3<bool>(false, var_0.a, var_0.b.b.x), select(vec3<bool>(var_0.a, true, var_0.b.b.x), vec3<bool>(var_0.a, var_0.a, var_0.a), true), select(vec3<bool>(var_0.a, false, var_0.b.b.x), vec3<bool>(var_0.d, false, false), vec3<bool>(var_0.a, true, var_0.d)))));
    var var_3 = var_2.c.wzy;
    return -2147483647i;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: i32) -> Struct_1 {
    let var_0 = countOneBits(u_input.a);
    var var_1 = Struct_1(0u, select(!(!arg_1), select(arg_1, !(!vec2<bool>(false, arg_1.x)), !select(vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(true, arg_1.x), vec2<bool>(arg_1.x, true))), vec2<bool>(true, any(vec3<bool>(true, true, false)))));
    var var_2 = ~0i;
    var_2 = ~func_4(select(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(24395i, arg_2), arg_0.wz), firstLeadingBit(vec2<i32>(-1i, 25524i))), abs(abs(arg_0.yz)), func_3()));
    let var_3 = abs(arg_2);
    return Struct_1(~max(abs(var_1.a), u_input.a), select(arg_1, var_1.b, arg_1.x));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: bool, arg_3: i32) -> vec3<bool> {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i, countOneBits(arg_3) | -27121i), ~1i);
    let var_1 = !arg_2;
    var var_2 = ~_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(~(-2147483647i), 0i, arg_3, -arg_3), _wgslsmith_mod_vec4_i32(vec4<i32>(69392i, 2147483647i, -35007i, arg_0.c.x), -arg_0.c)), abs(vec4<i32>(arg_3, arg_3, var_0, 32962i)) | ~select(arg_0.c, arg_0.c, vec4<bool>(arg_2, true, arg_2, arg_2)));
    var var_3 = arg_0;
    var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.c.x, 1i, -1i, 25995i), -(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.c.x, var_2.x, arg_3, var_2.x), vec4<i32>(var_0, -29190i, arg_3, -1i)) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(1i, 2147483647i, 2147483647i, -2147483647i), arg_0.c)));
    return vec3<bool>(false, arg_1.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1283f + 150f) - -858f), true);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -224f), _wgslsmith_f_op_f32(floor(1f)))));
    var var_1 = 1u <= reverseBits(~arg_0.a);
    let var_2 = Struct_2(!any(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, arg_0.a < 0u)), arg_0, vec4<i32>(select(countOneBits(1i), _wgslsmith_div_i32(2147483647i, min(23232i, -1i)), true), ~min(~5203i, 2147483647i), _wgslsmith_dot_vec4_i32(firstTrailingBit(~vec4<i32>(1i, -2147483647i, 1i, 2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-31117i, 28104i, -2147483647i, 0i), vec4<i32>(1i, 1i, 1i, 1i))), ~(1i >> (arg_0.a % 32u)) & 2147483647i), arg_0.b.x);
    var var_3 = vec2<bool>(arg_0.b.x, all(func_5(Struct_2(arg_0.b.x, func_2(vec4<i32>(var_2.c.x, -8585i, 5416i, var_2.c.x), var_2.b.b, var_2.c.x), var_2.c, arg_0.b.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, 829f, var_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, 2614f) + vec3<f32>(-1218f, var_0, var_0)), false)), any(!vec3<bool>(true, arg_0.b.x, var_2.d)), func_4(var_2.c.zz))));
    var_1 = var_3.x;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(~u_input.a, select(!select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true)), any(vec2<bool>(false, false)))));
    let var_1 = _wgslsmith_sub_vec4_i32(-(~vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_sub_vec4_i32(-(vec4<i32>(-2147483647i, -2147483647i, -1i, -2147483647i) << (reverseBits(vec4<u32>(21799u, var_0.a, 1u, 1u)) % vec4<u32>(32u))), select(_wgslsmith_add_vec4_i32(vec4<i32>(29775i, -42515i, -1i, 21703i), vec4<i32>(0i, 20483i, 38988i, -18380i)), select(vec4<i32>(-79165i, -2180i, -24786i, 30475i), vec4<i32>(31844i, 34022i, 0i, -9359i), vec4<bool>(false, var_0.b.x, true, false)), !vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x)) & vec4<i32>(~27103i, _wgslsmith_add_i32(-25395i, -17996i), ~(-24081i), _wgslsmith_add_i32(1i, 15270i))));
    var var_2 = min(-vec3<i32>(-(var_1.x & var_1.x), var_1.x, abs(var_1.x << (u_input.a % 32u))), vec3<i32>(_wgslsmith_div_i32(min(_wgslsmith_div_i32(29286i, var_1.x), 30883i), _wgslsmith_clamp_i32(var_1.x, var_1.x, var_1.x) << (~4294967295u % 32u)), ~28322i, _wgslsmith_mod_i32(firstLeadingBit(func_4(var_1.zw)), -var_1.x << (u_input.a % 32u))));
    var var_3 = Struct_2(any(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, var_0.b.x), var_0.b.x))), var_0, vec4<i32>(func_4(~select(var_1.zz, var_2.yz, true)), _wgslsmith_div_i32(-20125i, -1i), _wgslsmith_div_i32(-1i, firstLeadingBit(28857i)) & (_wgslsmith_clamp_i32(var_1.x, var_2.x, var_2.x) & var_2.x), -1i), var_0.b.x);
    var var_4 = vec2<bool>(all(vec3<bool>(true, func_3(), true)), any(vec2<bool>(true & (1u <= var_0.a), false)));
    var_2 = reverseBits(~_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, var_3.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.c.x, var_1.x, -1i), vec3<i32>(var_3.c.x, var_3.c.x, -2147483647i))), var_1.zwz));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.xww, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(f32(-1f) * -637f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(408f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-854f + -917f))), -486f));
}

