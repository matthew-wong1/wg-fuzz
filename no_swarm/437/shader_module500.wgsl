struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(Struct_1(vec4<i32>(2147483647i, -48885i, -29380i, 7051i), i32(-2147483648), vec3<u32>(4294967295u, 54714u, 16938u), 0i)), Struct_2(Struct_1(vec4<i32>(11155i, i32(-2147483648), 2147483647i, -46425i), -34711i, vec3<u32>(29949u, 20233u, 11594u), i32(-2147483648))), Struct_2(Struct_1(vec4<i32>(-34903i, 52299i, -15361i, -19059i), 8722i, vec3<u32>(16619u, 1u, 27193u), i32(-2147483648))), Struct_2(Struct_1(vec4<i32>(-384i, 2147483647i, 1i, 0i), 2147483647i, vec3<u32>(102665u, 37151u, 0u), -16861i)), Struct_2(Struct_1(vec4<i32>(54497i, 1i, 2147483647i, i32(-2147483648)), -1i, vec3<u32>(0u, 1u, 4294967295u), -50669i)), Struct_2(Struct_1(vec4<i32>(1i, 72190i, -34508i, 0i), 43969i, vec3<u32>(0u, 0u, 29514u), -24661i)), Struct_2(Struct_1(vec4<i32>(22239i, -72591i, 4537i, -1i), 1i, vec3<u32>(0u, 4294967295u, 4294967295u), 1i)), Struct_2(Struct_1(vec4<i32>(-1i, 1i, -31125i, -36038i), -50310i, vec3<u32>(1u, 3719u, 1u), 1604i)), Struct_2(Struct_1(vec4<i32>(10820i, i32(-2147483648), 0i, i32(-2147483648)), -2499i, vec3<u32>(10167u, 31096u, 2365u), -31421i)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 1i, -12104i, -31392i), -48566i, vec3<u32>(0u, 0u, 4294967295u), -476i)), Struct_2(Struct_1(vec4<i32>(-633i, -17644i, 44045i, 0i), 14692i, vec3<u32>(92855u, 16803u, 0u), 13894i)), Struct_2(Struct_1(vec4<i32>(3282i, 745i, -69412i, -67018i), i32(-2147483648), vec3<u32>(127486u, 61760u, 7114u), 0i)), Struct_2(Struct_1(vec4<i32>(1i, i32(-2147483648), -22778i, i32(-2147483648)), 0i, vec3<u32>(59329u, 75046u, 4294967295u), -47247i)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -1i, -19283i, -17486i), i32(-2147483648), vec3<u32>(46164u, 1u, 1u), -1i)));

var<private> global1: bool = true;

var<private> global2: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(Struct_1(vec4<i32>(0i, i32(-2147483648), 0i, -1i), 53557i, vec3<u32>(1u, 27676u, 1742u), 1i)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 50745i, -3790i, i32(-2147483648)), i32(-2147483648), vec3<u32>(0u, 57318u, 40806u), 0i)), Struct_2(Struct_1(vec4<i32>(12439i, -1i, i32(-2147483648), i32(-2147483648)), 1i, vec3<u32>(0u, 8188u, 105852u), 1i)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 34028i, 1i, -37162i), -30148i, vec3<u32>(1923u, 92570u, 1u), 0i)), Struct_2(Struct_1(vec4<i32>(0i, 3264i, 2147483647i, -1i), -46924i, vec3<u32>(0u, 1u, 19914u), 2147483647i)), Struct_2(Struct_1(vec4<i32>(-4265i, -73202i, -1i, -33621i), 2147483647i, vec3<u32>(87318u, 20554u, 4658u), 2147483647i)), Struct_2(Struct_1(vec4<i32>(2147483647i, 0i, -12467i, -46832i), 38262i, vec3<u32>(0u, 0u, 1u), -21526i)), Struct_2(Struct_1(vec4<i32>(-3852i, -29882i, 14893i, 39091i), -7499i, vec3<u32>(3003u, 4294967295u, 4294967295u), 23791i)), Struct_2(Struct_1(vec4<i32>(-4537i, -1i, 1i, -24234i), -12863i, vec3<u32>(1u, 0u, 9167u), 1i)), Struct_2(Struct_1(vec4<i32>(12811i, -12280i, -5492i, 13822i), -7513i, vec3<u32>(4294967295u, 0u, 41161u), -27503i)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, -22601i), -5188i, vec3<u32>(18087u, 1u, 39077u), 43693i)), Struct_2(Struct_1(vec4<i32>(33376i, 1i, 2147483647i, -46393i), 0i, vec3<u32>(9271u, 0u, 37057u), 28048i)), Struct_2(Struct_1(vec4<i32>(9322i, 33493i, 1i, 27452i), -18523i, vec3<u32>(4294967295u, 0u, 38043u), -61249i)), Struct_2(Struct_1(vec4<i32>(-5995i, i32(-2147483648), 2147483647i, -5748i), 44495i, vec3<u32>(0u, 24401u, 0u), 81563i)), Struct_2(Struct_1(vec4<i32>(10896i, 16563i, 1i, 46525i), i32(-2147483648), vec3<u32>(34149u, 0u, 0u), 1i)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -717i, 29880i, i32(-2147483648)), -8175i, vec3<u32>(58724u, 47425u, 918u), 0i)), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), 0i, 0i, 26345i), -15633i, vec3<u32>(1u, 18585u, 19375u), 65981i)), Struct_2(Struct_1(vec4<i32>(-1i, -5573i, 2147483647i, i32(-2147483648)), 21665i, vec3<u32>(1u, 18475u, 0u), i32(-2147483648))), Struct_2(Struct_1(vec4<i32>(0i, 2482i, -1i, 2147483647i), 17262i, vec3<u32>(53944u, 1u, 43827u), 56391i)), Struct_2(Struct_1(vec4<i32>(1i, i32(-2147483648), 1i, -23940i), 1i, vec3<u32>(5921u, 1u, 12017u), 1i)), Struct_2(Struct_1(vec4<i32>(2147483647i, -1i, 2147483647i, 52674i), 2147483647i, vec3<u32>(11077u, 16163u, 102624u), 7194i)), Struct_2(Struct_1(vec4<i32>(0i, 4606i, -3833i, -15007i), 0i, vec3<u32>(27734u, 42216u, 4294967295u), 0i)), Struct_2(Struct_1(vec4<i32>(12357i, 0i, -27771i, -1i), -1i, vec3<u32>(1u, 9697u, 105686u), -23791i)), Struct_2(Struct_1(vec4<i32>(21419i, -32212i, -1i, 20271i), -1i, vec3<u32>(4294967295u, 1u, 4294967295u), -1400i)), Struct_2(Struct_1(vec4<i32>(-47027i, -33696i, i32(-2147483648), 10914i), -32957i, vec3<u32>(3649u, 101354u, 4294967295u), 49072i)), Struct_2(Struct_1(vec4<i32>(20174i, 0i, 1i, -610i), -51625i, vec3<u32>(1u, 18340u, 4294967295u), -17727i)), Struct_2(Struct_1(vec4<i32>(0i, 0i, -1i, 0i), 0i, vec3<u32>(0u, 67913u, 1u), -1i)), Struct_2(Struct_1(vec4<i32>(-31785i, 1i, 0i, -1i), 26140i, vec3<u32>(111877u, 0u, 0u), 3198i)), Struct_2(Struct_1(vec4<i32>(51340i, -63075i, -66912i, -25363i), -79753i, vec3<u32>(0u, 1u, 99608u), 26483i)), Struct_2(Struct_1(vec4<i32>(1i, -63766i, 50407i, -4957i), 0i, vec3<u32>(51385u, 14918u, 70622u), 37508i)), Struct_2(Struct_1(vec4<i32>(14253i, 0i, -1i, 1i), 0i, vec3<u32>(4294967295u, 60333u, 21860u), -16562i)), Struct_2(Struct_1(vec4<i32>(26865i, -3760i, 30889i, 0i), 0i, vec3<u32>(34756u, 4294967295u, 1u), -1i)));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> i32 {
    var var_0 = -vec4<i32>(-(~_wgslsmith_clamp_i32(u_input.e.x, 2147483647i, -54769i)), u_input.b.x, u_input.a, u_input.e.x);
    var_0 = u_input.e;
    let var_1 = firstLeadingBit(~vec4<i32>(u_input.b.x, countOneBits(-62253i), -13686i, ~var_0.x)) & abs(abs(u_input.e));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.c.x, ~u_input.c.x), 32u)];
    global2 = array<Struct_2, 32>();
    return -_wgslsmith_div_i32(u_input.e.x, i32(-1i) * -47129i);
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    global2 = array<Struct_2, 32>();
    let var_0 = Struct_1(vec4<i32>(_wgslsmith_add_i32(~u_input.b.x, countOneBits(-2147483647i)), _wgslsmith_mod_i32(u_input.e.x, 29693i) & ~(-1i), -_wgslsmith_div_i32(u_input.b.x, 19678i), u_input.e.x) | u_input.b, func_3(), ~min(min(~vec3<u32>(u_input.d, u_input.d, 12775u), vec3<u32>(1u, u_input.d, 1u)), ~(~u_input.c.zwy)), u_input.b.x);
    let var_1 = vec2<bool>(true, true);
    let var_2 = u_input.b.wx | (min(_wgslsmith_add_vec2_i32(~var_0.a.yy, _wgslsmith_clamp_vec2_i32(u_input.b.xy, var_0.a.yx, var_0.a.wy)), vec2<i32>(1i, -14775i)) >> (~firstTrailingBit(_wgslsmith_add_vec2_u32(u_input.c.ww, vec2<u32>(var_0.c.x, u_input.c.x))) % vec2<u32>(32u)));
    global2 = array<Struct_2, 32>();
    return Struct_2(var_0);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>) -> bool {
    let var_0 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))))).a;
    global2 = array<Struct_2, 32>();
    var var_1 = func_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1735f, arg_1.x, arg_1.x)), vec3<f32>(-1762f, arg_1.x, -1575f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, arg_1.x), vec3<f32>(639f, -2328f, -737f))))))).a;
    let var_2 = Struct_2(var_0);
    global1 = -3685i < (reverseBits(var_0.a.x) << (~_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0.a.c.x, arg_0.a.c.x), firstLeadingBit(vec2<u32>(20936u, 29106u))) % 32u));
    return true;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>) -> vec4<i32> {
    global1 = func_4(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(169f, 2108f, 229f)) - arg_0))), _wgslsmith_f_op_vec2_f32(-arg_0.yx));
    global0 = array<Struct_2, 14>();
    let var_0 = Struct_1(u_input.e, -(~26525i), vec3<u32>(u_input.d, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u, _wgslsmith_sub_u32(u_input.d, u_input.c.x), u_input.d), u_input.c.x, _wgslsmith_dot_vec3_u32(u_input.c.zwz << (u_input.c.yxz % vec3<u32>(32u)), countOneBits(vec3<u32>(u_input.c.x, 4294967295u, 1u)))), 70751u), _wgslsmith_add_i32(14115i, 55206i));
    global0 = array<Struct_2, 14>();
    let var_1 = Struct_2(var_0);
    return -max(func_2(vec3<f32>(arg_0.x, -259f, -375f)).a.a, _wgslsmith_mod_vec4_i32(-select(var_0.a, u_input.b, vec4<bool>(false, true, true, false)), u_input.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(_wgslsmith_sub_vec4_i32((vec4<i32>(u_input.b.x, -1i, u_input.b.x, 13854i) << (u_input.c % vec4<u32>(32u))) ^ func_1(vec3<f32>(-117f, -571f, -1000f), vec2<i32>(u_input.b.x, -22440i)), -_wgslsmith_add_vec4_i32(u_input.b, u_input.b)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.e.x, 1i), u_input.a, -2147483647i >> (~u_input.c.x % 32u)), ~select(u_input.c.xwz, u_input.c.xwx, vec3<bool>(true, true, true)), _wgslsmith_div_i32(-u_input.b.x, u_input.e.x)));
    let var_1 = -(~(~(-22412i)));
    var var_2 = _wgslsmith_mult_vec3_i32(min(-(~vec3<i32>(u_input.e.x, var_0.a.d, u_input.b.x)), vec3<i32>(~func_3(), firstTrailingBit(var_0.a.d), ~firstTrailingBit(-32533i))), _wgslsmith_mult_vec3_i32((~vec3<i32>(-2147483647i, 10025i, 59853i) | -vec3<i32>(var_0.a.a.x, var_1, var_1)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, 0u, 9008u), max(vec3<u32>(u_input.c.x, var_0.a.c.x, 35322u), vec3<u32>(0u, 5743u, 0u))) % vec3<u32>(32u)), u_input.e.wwy));
    global1 = true;
    let var_3 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.c.x, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1194f, -214f, -1000f)))).a.a.yx, max(~var_3.c, var_3.c), u_input.a);
}

