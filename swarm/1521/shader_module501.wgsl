struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<f32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-213f)))) + -1407f);
    let var_1 = true;
    let var_2 = vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), ~_wgslsmith_sub_u32(countOneBits(u_input.c.x) >> (0u % 32u), 1u), ~max(u_input.d, u_input.d >> (_wgslsmith_dot_vec3_u32(vec3<u32>(28551u, 0u, 1u), vec3<u32>(u_input.d, 27882u, 50730u)) % 32u)));
    var var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1226f - var_0) * _wgslsmith_div_f32(var_0, -279f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1562f) * _wgslsmith_f_op_f32(sign(var_0))) * _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(sign(-1000f)))), _wgslsmith_div_f32(523f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1924f)))), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(min(vec4<u32>(var_2.x, 12805u, 1u, u_input.d), vec4<u32>(var_2.x, 0u, var_2.x, 47654u)), vec4<u32>(var_2.x, 56751u, 4294967295u, u_input.d)), ~vec4<u32>(u_input.c.x, 59254u, 0u, var_2.x)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(23348u, var_2.x), var_2.x, var_2.x, 42302u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_2.x, var_2.x, u_input.d), vec4<u32>(22419u, u_input.c.x, 0u, var_2.x))) % vec4<u32>(32u)), 32232i, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0, -969f, var_0, -229f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-363f, var_0, var_0, 1916f) - vec4<f32>(-344f, var_0, 1696f, 217f)))))), _wgslsmith_sub_u32(37256u, u_input.c.x));
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.a.x, _wgslsmith_f_op_f32(var_0 + 177f), var_3.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.d.wzw)), all(select(vec2<bool>(true, var_1), vec2<bool>(var_1, false), false))))), max(reverseBits(~firstTrailingBit(var_3.b)), _wgslsmith_clamp_vec4_u32(~countOneBits(vec4<u32>(90349u, 0u, 8849u, 37118u)), ~max(vec4<u32>(var_3.b.x, var_2.x, var_3.b.x, var_3.e), var_3.b), var_3.b)), firstLeadingBit(-2147483647i), _wgslsmith_f_op_vec4_f32(trunc(var_3.d)), abs(~select(~10416u, ~59417u, var_1)));
    return var_4.c;
}

fn func_2() -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(1792f, 164f), _wgslsmith_f_op_f32(-553f + -618f), _wgslsmith_f_op_f32(step(-1100f, -252f))))))), ~((vec4<u32>(4294967295u, 26977u, 1u, u_input.c.x) << (~vec4<u32>(499u, 37431u, u_input.c.x, 95411u) % vec4<u32>(32u))) | select(select(vec4<u32>(u_input.d, 112414u, 0u, 4294967295u), vec4<u32>(u_input.c.x, 27034u, 0u, 4294967295u), vec4<bool>(false, false, false, true)), ~vec4<u32>(u_input.c.x, u_input.c.x, 1u, 51477u), vec4<bool>(true, true, true, true))), firstTrailingBit(-56237i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(249f, -537f, 2508f, 1000f) + vec4<f32>(1006f, 1118f, 355f, 358f)), vec4<f32>(-1481f, 1688f, -1000f, -873f))), vec4<f32>(_wgslsmith_f_op_f32(1394f + _wgslsmith_f_op_f32(select(-416f, -2026f, false))), -836f, 312f, _wgslsmith_f_op_f32(floor(287f))), any(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false))))), firstLeadingBit(u_input.d));
    var var_1 = true;
    let var_2 = var_0;
    var_1 = true;
    var var_3 = -_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(max(u_input.b.zx, abs(u_input.b.yw)), -_wgslsmith_add_vec2_i32(u_input.b.zz, u_input.b.xy)), vec2<i32>(func_3(), _wgslsmith_dot_vec3_i32(select(u_input.b.xxz, vec3<i32>(2147483647i, -6597i, -1i), vec3<bool>(false, false, true)), u_input.b.xwx >> (vec3<u32>(u_input.c.x, 92755u, var_2.b.x) % vec3<u32>(32u)))));
    return select(!(!any(vec2<bool>(false, false)) != all(vec2<bool>(true, true))), any(!select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), all(vec2<bool>(true, true)))), -u_input.e >= (_wgslsmith_mult_i32(var_0.c, -2147483647i) << (var_0.e % 32u)));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = u_input.b.www;
    var_0 = -u_input.b.xyz & ~_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.b.x, u_input.e, -2147483647i), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 2147483647i, var_0.x), vec3<i32>(-2147483647i, arg_0.x, 10184i)), vec3<i32>(arg_0.x, arg_1.c, 30356i)));
    var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(u_input.b.wyz, select(vec3<i32>(1i, var_0.x, arg_0.x) << (_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 58893u, arg_1.b.x), vec3<u32>(22739u, arg_1.e, u_input.d)) % vec3<u32>(32u)), u_input.b.zyy, func_2() | true)), vec3<i32>(select(~(~0i), arg_0.x, true), -var_0.x, arg_1.c));
    var var_1 = var_0.x;
    var var_2 = arg_1;
    return arg_1;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec3<bool>) -> vec2<u32> {
    var var_0 = arg_1;
    let var_1 = select(vec3<bool>(true, false, firstLeadingBit(-u_input.e) > select(~(-64670i), -1i, any(vec4<bool>(true, false, arg_0, false)))), arg_3, select(vec3<bool>(_wgslsmith_mult_u32(2401u, u_input.c.x) != select(0u, 10882u, arg_3.x), false, all(vec2<bool>(arg_3.x, arg_0))), select(select(!vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, arg_0, arg_0), var_0.d.x <= 1199f), select(select(vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, arg_3.x, arg_3.x), vec3<bool>(true, arg_0, false)), arg_3, arg_3), !vec3<bool>(arg_3.x, arg_0, arg_0)), any(select(vec3<bool>(false, false, false), select(arg_3, vec3<bool>(false, arg_0, arg_0), arg_0), func_2()))));
    let var_2 = min(~_wgslsmith_mult_i32(arg_1.c, arg_1.c), arg_1.c);
    let var_3 = func_1(_wgslsmith_div_vec3_i32(-min(vec3<i32>(2610i, arg_1.c, 52324i), arg_2.xyy), -u_input.b.wxz), arg_1);
    var var_4 = ~arg_1.b.xz;
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    var_0 = u_input.d;
    var var_1 = abs(~u_input.c & func_4(!all(vec3<bool>(false, true, false)), func_1(abs(u_input.b.wzz), Struct_1(vec3<f32>(1269f, -1011f, -160f), vec4<u32>(u_input.d, 1u, u_input.c.x, u_input.d), -73023i, vec4<f32>(-1000f, 536f, -1000f, 1978f), 48323u)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 38691i, u_input.b.x, 33833i), vec4<i32>(-4080i, -64937i, -1718i, -24764i)), vec3<bool>(true, true, true)));
    let var_2 = u_input.c.x;
    let var_3 = _wgslsmith_sub_u32(reverseBits(~(~1u | ~u_input.d)), _wgslsmith_mult_u32(u_input.d, select(~var_2, 1u, true)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, u_input.c.x);
}

