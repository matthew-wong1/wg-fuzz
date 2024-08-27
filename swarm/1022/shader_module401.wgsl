struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec4<bool>,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
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

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = max(arg_2.e.x, arg_2.e.x);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1583f + arg_2.d.x))), 162f), _wgslsmith_f_op_f32(arg_2.d.x - _wgslsmith_f_op_f32(-arg_2.d.x)));
    return Struct_1(_wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(arg_0.c.wxy | arg_0.b, _wgslsmith_clamp_vec3_i32(arg_3, vec3<i32>(arg_2.b.x, u_input.a, u_input.a), vec3<i32>(2147483647i, 14345i, arg_2.a))), arg_3.x), arg_0.b.x), ~(vec2<i32>(arg_2.a, arg_3.x) << (arg_0.a.e % vec2<u32>(32u))), !vec4<bool>(arg_2.c.x, true, (-6250i << (arg_2.e.x % 32u)) == arg_3.x, arg_3.x == 1i), _wgslsmith_f_op_vec2_f32(arg_2.d * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_0.a.d, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2.d.x, -482f)))))), min(vec2<u32>(arg_0.a.e.x, arg_0.a.e.x), arg_0.a.e));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = -arg_2.b;
    let var_1 = u_input.a;
    let var_2 = all(!vec4<bool>(arg_0.c.x, true, var_0.x == -2547i, true));
    let var_3 = min(vec3<u32>(0u, ~max(arg_2.e.x, 0u), countOneBits(~26738u)), ~reverseBits(vec3<u32>(arg_2.e.x, arg_2.e.x, arg_0.e.x) << (vec3<u32>(1u, arg_2.e.x, arg_2.e.x) % vec3<u32>(32u)))) & vec3<u32>(abs(84000u), arg_0.e.x, 3041u);
    var var_4 = vec2<bool>(true, all(vec4<bool>((4294967295u ^ var_3.x) <= ~var_3.x, arg_0.c.x, !(!var_2), !all(arg_0.c.wx))));
    return !func_2(Struct_2(func_2(Struct_2(Struct_1(2147483647i, arg_0.b, vec4<bool>(false, arg_1, false, arg_1), vec2<f32>(arg_0.d.x, 1000f), arg_2.e), vec3<i32>(1i, arg_2.a, var_1), vec4<i32>(0i, 0i, var_0.x, var_1)), i32(-1i) * -1i, arg_2, _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, var_0.x, var_1), vec3<i32>(48653i, var_0.x, -7708i), vec3<i32>(-2147483647i, 0i, -4986i))), ~_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, arg_0.b.x, 1i), vec3<i32>(-30342i, -2147483647i, -1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.b.x, -52033i, -13197i, 30788i) | vec4<i32>(var_0.x, arg_2.a, arg_2.a, arg_0.a), reverseBits(vec4<i32>(var_0.x, -1i, u_input.a, -986i)))), func_2(Struct_2(arg_2, -vec3<i32>(3123i, -1i, -23574i), _wgslsmith_div_vec4_i32(vec4<i32>(-29306i, -2147483647i, -1i, u_input.a), vec4<i32>(0i, var_1, 1021i, u_input.a))), _wgslsmith_div_i32(_wgslsmith_div_i32(arg_0.a, -10151i), -2147483647i), arg_2, vec3<i32>(var_0.x, -3433i, 659i)).a, Struct_1(func_2(Struct_2(arg_0, vec3<i32>(8579i, -2147483647i, -29913i), vec4<i32>(44315i, arg_0.a, 3584i, 2147483647i)), -1i, Struct_1(var_1, vec2<i32>(-2147483647i, -21356i), arg_0.c, arg_2.d, arg_0.e), vec3<i32>(var_1, 23615i, u_input.a)).a << (arg_2.e.x % 32u), vec2<i32>(arg_2.a & u_input.a, -30882i), !vec4<bool>(arg_0.c.x, arg_2.c.x, arg_1, true), _wgslsmith_f_op_vec2_f32(arg_2.d + arg_2.d), ~arg_2.e), ~vec3<i32>(var_1, var_1, 12886i) | (abs(vec3<i32>(var_1, -32019i, 2147483647i)) & _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a, -61087i, 1i), vec3<i32>(1i, 0i, var_0.x)))).c.ywx;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: vec4<u32>) -> i32 {
    var var_0 = func_2(Struct_2(func_2(Struct_2(Struct_1(u_input.a, vec2<i32>(u_input.a, 25513i), vec4<bool>(false, arg_0.x, true, arg_0.x), vec2<f32>(-1181f, 906f), vec2<u32>(0u, 0u)), vec3<i32>(-25891i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 1i, 2147483647i)), -1i, func_2(Struct_2(Struct_1(1i, vec2<i32>(u_input.a, u_input.a), vec4<bool>(arg_0.x, false, arg_0.x, false), vec2<f32>(2085f, -616f), arg_1.xx), vec3<i32>(1i, u_input.a, u_input.a), vec4<i32>(-2054i, 1i, 45381i, 16028i)), 2370i, Struct_1(u_input.a, vec2<i32>(2147483647i, 0i), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec2<f32>(636f, -1290f), vec2<u32>(10351u, 71157u)), -vec3<i32>(u_input.a, 42495i, 1i)), vec3<i32>(u_input.a, -8441i, -17452i) >> ((vec3<u32>(arg_1.x, 4294967295u, arg_2.x) | vec3<u32>(arg_2.x, arg_1.x, arg_1.x)) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(24818i, u_input.a, u_input.a), vec3<i32>(firstTrailingBit(u_input.a), u_input.a, ~u_input.a), _wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(-13602i, -1490i, u_input.a)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 36093i, u_input.a), vec3<i32>(1i, 43707i, u_input.a)))), -(countOneBits(vec4<i32>(2147483647i, u_input.a, 25130i, -2147483647i)) >> (vec4<u32>(arg_1.x, 0u, arg_1.x, 42151u) % vec4<u32>(32u)))), u_input.a, Struct_1(~(~29357i), select(vec2<i32>(_wgslsmith_clamp_i32(-6555i, 1i, u_input.a), ~u_input.a), vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(26915i, 36111i), func_3(func_2(Struct_2(Struct_1(u_input.a, vec2<i32>(u_input.a, u_input.a), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec2<f32>(1903f, 351f), vec2<u32>(0u, 4294967295u)), vec3<i32>(u_input.a, -28246i, u_input.a), vec4<i32>(2147483647i, u_input.a, 38490i, u_input.a)), 18479i, Struct_1(18774i, vec2<i32>(2147483647i, 16317i), vec4<bool>(false, true, arg_0.x, false), vec2<f32>(-1396f, -615f), arg_1.yz), vec3<i32>(u_input.a, u_input.a, 2147483647i)), true, func_2(Struct_2(Struct_1(u_input.a, vec2<i32>(-2147483647i, u_input.a), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec2<f32>(-154f, -1352f), arg_2.zw), vec3<i32>(22092i, u_input.a, u_input.a), vec4<i32>(0i, 11093i, 11235i, 0i)), 6082i, Struct_1(u_input.a, vec2<i32>(0i, u_input.a), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec2<f32>(522f, -1491f), arg_2.yw), vec3<i32>(u_input.a, -33082i, u_input.a))).yz), vec4<bool>(true, arg_0.x, true, _wgslsmith_f_op_f32(-1281f + 688f) <= _wgslsmith_f_op_f32(round(-1477f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(597f, 600f)), _wgslsmith_f_op_f32(trunc(-2128f))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(3008f, -298f)))), vec2<u32>(arg_1.x, firstTrailingBit(arg_2.x) ^ ~24276u)), vec3<i32>(-(~_wgslsmith_mod_i32(u_input.a, u_input.a)), u_input.a, _wgslsmith_add_i32(~_wgslsmith_mult_i32(u_input.a, u_input.a), func_2(Struct_2(Struct_1(u_input.a, vec2<i32>(u_input.a, 50019i), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec2<f32>(-439f, 553f), arg_1.xw), vec3<i32>(u_input.a, 8514i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i)), _wgslsmith_clamp_i32(0i, -31726i, u_input.a), Struct_1(24557i, vec2<i32>(-2147483647i, 4702i), vec4<bool>(arg_0.x, true, true, false), vec2<f32>(280f, 515f), arg_2.wz), ~vec3<i32>(-2147483647i, u_input.a, 25042i)).a))).c.xzx;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(-484f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1081f, -203f, arg_0.x)), -1387f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(910f)))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1573f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(1299f, -1916f))), func_2(Struct_2(Struct_1(u_input.a, vec2<i32>(u_input.a, u_input.a), vec4<bool>(true, true, true, arg_0.x), vec2<f32>(1000f, -781f), arg_1.yz), vec3<i32>(u_input.a, 11051i, u_input.a), vec4<i32>(u_input.a, -22032i, 0i, -25219i)), 35100i, Struct_1(select(u_input.a, -1i, false), ~vec2<i32>(u_input.a, 1i), vec4<bool>(arg_0.x, false, true, true), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(334f, -875f), vec2<f32>(1000f, -2631f), arg_0.x)), reverseBits(arg_1.zz)), vec3<i32>(u_input.a, -27357i, ~38564i)).d.x), _wgslsmith_f_op_f32(1929f * 1f));
    var var_3 = _wgslsmith_dot_vec2_i32(-(~vec2<i32>(-2147483647i, u_input.a)), vec2<i32>(select(_wgslsmith_mod_i32(-39231i, 32318i), ~u_input.a >> ((arg_2.x ^ arg_2.x) % 32u), true), 43702i));
    var var_4 = (~(~abs(arg_1.x)) & 0u) ^ abs(21921u << ((~arg_1.x & ~arg_2.x) % 32u));
    return ~1i;
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: f32) -> vec4<u32> {
    var var_0 = func_4(select(vec3<bool>(true, true, true), !func_3(func_2(Struct_2(Struct_1(-58212i, vec2<i32>(u_input.a, 1i), vec4<bool>(false, false, true, true), vec2<f32>(arg_0.x, 596f), vec2<u32>(55371u, 15341u)), vec3<i32>(u_input.a, u_input.a, -1i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), u_input.a, Struct_1(u_input.a, vec2<i32>(2147483647i, -1289i), vec4<bool>(true, true, true, false), vec2<f32>(arg_2, 2180f), vec2<u32>(59535u, 4294967295u)), vec3<i32>(1117i, u_input.a, u_input.a)), all(vec4<bool>(true, false, true, false)), func_2(Struct_2(Struct_1(-34438i, vec2<i32>(u_input.a, 2147483647i), vec4<bool>(false, false, true, false), arg_0.xz, vec2<u32>(37766u, 125024u)), vec3<i32>(-1i, u_input.a, -175i), vec4<i32>(1185i, -2147483647i, 1343i, -9720i)), -1i, Struct_1(u_input.a, vec2<i32>(u_input.a, 14070i), vec4<bool>(false, true, true, true), vec2<f32>(arg_1, arg_0.x), vec2<u32>(90631u, 5804u)), vec3<i32>(u_input.a, u_input.a, 0i))), all(vec4<bool>(true, true, true, true))), vec4<u32>(1u, 4294967295u, _wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_div_u32(2701u, 30382u)), _wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(0u, 0u))), ~1u & _wgslsmith_div_u32(select(4294967295u, 113937u, false), 1u)), ~(~vec4<u32>(40840u, _wgslsmith_div_u32(1u, 1633u), 4294967295u >> (1u % 32u), 1u)));
    var var_1 = all(vec2<bool>(true, func_2(Struct_2(Struct_1(u_input.a, vec2<i32>(u_input.a, 1i), vec4<bool>(false, true, true, false), vec2<f32>(arg_2, arg_2), vec2<u32>(37591u, 0u)), vec3<i32>(-2147483647i, u_input.a, 4170i) | vec3<i32>(u_input.a, u_input.a, -29320i), vec4<i32>(u_input.a, -26608i, u_input.a, 2147483647i) >> (vec4<u32>(26888u, 89669u, 4833u, 38547u) % vec4<u32>(32u))), firstLeadingBit(-1i), func_2(Struct_2(Struct_1(u_input.a, vec2<i32>(38678i, u_input.a), vec4<bool>(false, false, true, false), arg_0.zy, vec2<u32>(1u, 4294967295u)), vec3<i32>(u_input.a, -78505i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, -29065i)), countOneBits(u_input.a), func_2(Struct_2(Struct_1(u_input.a, vec2<i32>(2147483647i, 2147483647i), vec4<bool>(true, true, true, true), vec2<f32>(-795f, 1482f), vec2<u32>(4294967295u, 0u)), vec3<i32>(-729i, 29608i, 44844i), vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a)), u_input.a, Struct_1(-1i, vec2<i32>(u_input.a, u_input.a), vec4<bool>(false, true, true, false), arg_0.wy, vec2<u32>(0u, 0u)), vec3<i32>(1i, u_input.a, 1i)), vec3<i32>(u_input.a, 32718i, u_input.a) & vec3<i32>(23851i, u_input.a, u_input.a)), -_wgslsmith_mult_vec3_i32(vec3<i32>(49039i, -6390i, u_input.a), vec3<i32>(u_input.a, 49989i, u_input.a))).c.x));
    var_1 = true;
    var_0 = -u_input.a;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(max(arg_0.x, arg_2)), arg_2, _wgslsmith_div_f32(861f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(Struct_2(Struct_1(u_input.a, vec2<i32>(u_input.a, -15675i), vec4<bool>(false, true, true, true), arg_0.zx, vec2<u32>(50233u, 14538u)), vec3<i32>(-2147483647i, u_input.a, 2147483647i), vec4<i32>(u_input.a, u_input.a, -1i, u_input.a)), -2147483647i, Struct_1(1i, vec2<i32>(u_input.a, u_input.a), vec4<bool>(true, true, true, true), arg_0.zw, vec2<u32>(4294967295u, 57217u)), vec3<i32>(1i, -40676i, u_input.a)).d.x))));
    return _wgslsmith_clamp_vec4_u32(min(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 40758u, min(1u, 37805u))), vec4<u32>(_wgslsmith_clamp_u32(29767u, ~1u, 38263u), firstTrailingBit(max(max(1u, 1u), 5304u)), ~_wgslsmith_mod_u32(76111u, _wgslsmith_clamp_u32(4294967295u, 0u, 30596u)), ~(~0u)), min(~vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(~19960u, select(4294967295u, 4294967295u, false), _wgslsmith_mod_u32(1u, 8307u), min(4294967295u, 0u)), ~(~vec4<u32>(1u, 0u, 1u, 0u)))));
}

fn func_5(arg_0: vec4<u32>) -> Struct_2 {
    return Struct_2(Struct_1(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-837i, u_input.a), _wgslsmith_div_i32(u_input.a, u_input.a) | -1i), countOneBits(max(vec2<i32>(u_input.a, 13742i), ~vec2<i32>(19532i, -16316i))), vec4<bool>(!any(vec2<bool>(false, false)), true, true, any(func_2(Struct_2(Struct_1(u_input.a, vec2<i32>(u_input.a, 0i), vec4<bool>(true, false, true, false), vec2<f32>(1848f, 300f), vec2<u32>(arg_0.x, 1u)), vec3<i32>(u_input.a, 1i, -1i), vec4<i32>(39712i, u_input.a, 0i, 0i)), u_input.a, Struct_1(1i, vec2<i32>(u_input.a, 8142i), vec4<bool>(false, true, true, false), vec2<f32>(1000f, -908f), vec2<u32>(4294967295u, 1u)), vec3<i32>(1i, u_input.a, 28428i)).c.wwz)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1135f, -2127f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1175f, -667f))))), ~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 6565u), ~arg_0.wz)), vec3<i32>(-u_input.a, -15489i, -1i), _wgslsmith_clamp_vec4_i32(firstTrailingBit(countOneBits(vec4<i32>(-42588i, -40281i, u_input.a, 0i))), max(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1i, u_input.a), -vec4<i32>(-15307i, u_input.a, 4145i, 1i), vec4<i32>(u_input.a, 17015i, u_input.a, -33544i) ^ vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), min(vec4<i32>(2147483647i, u_input.a, -2147483647i, u_input.a), vec4<i32>(1i, -55041i, 2147483647i, 29394i)) >> (reverseBits(vec4<u32>(27525u, 0u, arg_0.x, arg_0.x)) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, 2147483647i, -12435i), vec4<i32>(u_input.a, -16321i, 0i, 8912i)), u_input.a, min(u_input.a, -56045i), u_input.a) >> (arg_0 % vec4<u32>(32u))));
}

fn func_6(arg_0: i32, arg_1: Struct_2) -> Struct_3 {
    var var_0 = any(vec3<bool>(arg_1.a.c.x, true, !(arg_1.a.c.x || true)));
    let var_1 = any(select(select(vec4<bool>(arg_1.a.c.x, true, select(true, true, arg_1.a.c.x), true), vec4<bool>(arg_1.a.c.x, arg_1.a.c.x | arg_1.a.c.x, false, all(arg_1.a.c)), vec4<bool>(arg_1.a.c.x, arg_1.a.c.x, arg_1.a.c.x, all(vec4<bool>(true, arg_1.a.c.x, arg_1.a.c.x, arg_1.a.c.x)))), select(arg_1.a.c, vec4<bool>(all(arg_1.a.c.xzx), true, true, any(vec4<bool>(arg_1.a.c.x, arg_1.a.c.x, arg_1.a.c.x, false))), !(!arg_1.a.c.x)), func_3(arg_1.a, false, func_5(_wgslsmith_div_vec4_u32(vec4<u32>(42227u, 0u, arg_1.a.e.x, 17050u), vec4<u32>(1u, 17933u, 23906u, arg_1.a.e.x))).a).x));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.a.d.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-761f + arg_1.a.d.x)), 1017f), arg_1.a.d.x)));
    var var_3 = arg_1.a;
    return Struct_3(func_5(~(~max(vec4<u32>(0u, var_3.e.x, 1u, var_3.e.x), vec4<u32>(var_3.e.x, arg_1.a.e.x, var_3.e.x, arg_1.a.e.x)))), -firstLeadingBit(func_5(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_3.e.x, var_3.e.x, arg_1.a.e.x), vec4<u32>(47441u, arg_1.a.e.x, arg_1.a.e.x, arg_1.a.e.x))).a.b), (min(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -19421i, arg_0), arg_1.b), vec3<i32>(0i, u_input.a, arg_0) & vec3<i32>(-16368i, -1i, -3145i)) | countOneBits(select(vec3<i32>(0i, 58898i, -1i), vec3<i32>(arg_1.a.b.x, var_3.b.x, arg_1.a.a), false))) & countOneBits(vec3<i32>(i32(-1i) * -8265i, 0i, u_input.a)), vec3<bool>(var_3.c.x, !(var_3.c.x || !var_3.c.x), arg_1.a.e.x >= 0u), arg_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(-10617i, func_5(_wgslsmith_mult_vec4_u32(min(func_1(vec4<f32>(519f, -471f, 112f, 1339f), -287f, -735f), vec4<u32>(1u, 1u, 1u, 1u)), ~(~vec4<u32>(24776u, 22868u, 44577u, 4294967295u)))));
    let var_1 = var_0.a.a.e.x;
    let var_2 = vec4<bool>(true, !(!var_0.d.x), !select(_wgslsmith_mult_i32(u_input.a, 45317i) < -22342i, select(var_0.d.x, var_0.d.x, true) & var_0.a.a.c.x, false), var_0.d.x);
    var_0 = Struct_3(Struct_2(Struct_1(0i, vec2<i32>(_wgslsmith_div_i32(u_input.a, u_input.a), var_0.b.x), func_2(var_0.a, -770i, Struct_1(-16578i, vec2<i32>(-2147483647i, -1i), vec4<bool>(true, true, var_0.d.x, var_2.x), vec2<f32>(var_0.a.a.d.x, 689f), vec2<u32>(var_0.a.a.e.x, 1u)), var_0.e & vec3<i32>(1i, 2147483647i, var_0.c.x)).c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.a.d)), var_0.a.a.e), select(var_0.c, ~vec3<i32>(-7877i, -15321i, u_input.a), !vec3<bool>(var_2.x, true, var_2.x)) >> (func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a.d.x, -1476f, -1111f, var_0.a.a.d.x) + vec4<f32>(var_0.a.a.d.x, var_0.a.a.d.x, 1973f, var_0.a.a.d.x)), var_0.a.a.d.x, func_6(var_0.c.x, var_0.a).a.a.d.x).ywy % vec3<u32>(32u)), vec4<i32>(u_input.a, -14175i, -max(53534i, -1i), u_input.a)), var_0.b, var_0.a.b, var_2.ywz, -_wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -var_0.a.b, vec3<i32>(u_input.a, -2147483647i, var_0.a.a.b.x) | vec3<i32>(1i, var_0.e.x, 18413i)));
    var_0 = Struct_3(Struct_2(var_0.a.a, func_5(vec4<u32>(var_0.a.a.e.x ^ var_0.a.a.e.x, 45984u, var_0.a.a.e.x, reverseBits(var_0.a.a.e.x))).c.xwz, min(firstLeadingBit(max(vec4<i32>(u_input.a, u_input.a, -53055i, var_0.a.a.b.x), vec4<i32>(u_input.a, 8535i, 10170i, var_0.a.c.x))), var_0.a.c & countOneBits(var_0.a.c))), abs(var_0.b), vec3<i32>(-1i) * -var_0.c, !var_2.zwx, var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-850f, -2240f, var_0.a.a.d.x, var_0.a.a.d.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a.d.x, 304f, -1000f, -241f)))))), var_0.a.a.e.x, ~(-35595i), vec2<i32>(min(countOneBits(-2147483647i) << (var_0.a.a.e.x % 32u), firstLeadingBit(abs(u_input.a))), func_6(_wgslsmith_dot_vec3_i32(~var_0.a.b, _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, u_input.a, -58260i), vec3<i32>(1i, -1i, u_input.a))), Struct_2(Struct_1(23950i, var_0.e.xy, var_0.a.a.c, vec2<f32>(-559f, -434f), vec2<u32>(9692u, var_0.a.a.e.x)), -vec3<i32>(-24151i, 2147483647i, -13560i), _wgslsmith_clamp_vec4_i32(var_0.a.c, vec4<i32>(2552i, var_0.a.a.a, 1i, 1i), var_0.a.c))).c.x));
}

