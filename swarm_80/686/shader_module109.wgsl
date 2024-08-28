struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<u32> = vec4<u32>(1u, 28081u, 111354u, 1u);

var<private> global2: vec3<bool>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = global2.x;
    var var_1 = 4294967295u;
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1242f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-441f, -918f)), _wgslsmith_f_op_f32(-807f + _wgslsmith_div_f32(-2082f, -548f)))))));
    let var_3 = global1.x;
    let var_4 = Struct_1(select(vec4<bool>(global2.x, all(vec2<bool>(false, arg_0)) || true, true | any(global2.yy), false), vec4<bool>(true, global2.x, true, true), !select(vec4<bool>(false, true, arg_0, false), vec4<bool>(global2.x, true, arg_0, true), !vec4<bool>(arg_0, true, arg_0, arg_0))), _wgslsmith_add_vec3_i32(vec3<i32>(firstLeadingBit(2147483647i) >> (global1.x % 32u), ~(~18714i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, 64231i), vec3<i32>(-24483i, -2147483647i, 1i))), reverseBits(firstTrailingBit(select(vec3<i32>(-1986i, 0i, 8786i), vec3<i32>(-2147483647i, 7677i, 2147483647i), global2.x)))), firstLeadingBit(_wgslsmith_clamp_i32(-2147483647i, (-1i >> (global1.x % 32u)) & -10479i, firstTrailingBit(-2147483647i) | select(-35471i, -347i, true))), vec3<bool>(true, true, all(!vec3<bool>(arg_0, global2.x, true))));
    return _wgslsmith_dot_vec2_i32(select(-vec2<i32>(2147483647i, ~var_4.b.x), -vec2<i32>(var_4.c, ~1i), !select(select(global2.zy, global2.yx, vec2<bool>(arg_0, true)), vec2<bool>(var_4.d.x, arg_0), global2.x)), firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 26856i, var_4.c, 11196i), vec4<i32>(-2147483647i, var_4.c, var_4.c, var_4.c)), var_4.b.x), vec2<i32>(firstTrailingBit(0i), abs(var_4.c)), min(-var_4.b.yy, -vec2<i32>(15806i, -14154i)))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec4<u32>) -> bool {
    global2 = select(vec3<bool>(arg_2.a.d.b.x == (func_3(arg_0.e.a.x) | _wgslsmith_clamp_i32(arg_0.b.c, arg_2.c.b.x, arg_2.c.b.x)), arg_0.c.a.x, -2147483647i == _wgslsmith_mult_i32(1i, arg_2.c.c | -1i)), !select(vec3<bool>(false, all(vec2<bool>(global2.x, true)), true), arg_0.e.a.yxy, true), all(!select(!arg_0.e.a, vec4<bool>(true, global2.x, arg_2.b, true), arg_2.c.a.x)));
    let var_0 = any(vec4<bool>(!any(!arg_0.c.a.wz), !(arg_0.e.d.x | arg_2.b) && all(select(vec2<bool>(false, arg_2.c.a.x), global2.xz, vec2<bool>(arg_0.e.a.x, true))), false, arg_2.b));
    var var_1 = Struct_4(arg_0, global2.x, Struct_1(vec4<bool>(all(arg_2.c.a.xzy), all(arg_0.c.d), !var_0 & false, !(arg_2.c.a.x | false)), arg_1.b, -arg_2.a.e.c >> (~reverseBits(0u) % 32u), !(!(!arg_2.a.b.d))));
    global0 = _wgslsmith_div_f32(691f, -1348f);
    global2 = select(!select(select(vec3<bool>(false, arg_2.c.a.x, var_0), !arg_0.e.d, arg_1.d), arg_0.e.d, all(select(vec4<bool>(false, arg_0.d.a.x, true, false), vec4<bool>(arg_2.b, arg_2.a.e.a.x, global2.x, arg_2.a.b.a.x), var_1.c.d.x))), var_1.c.a.xww, true || (1i == arg_2.a.c.b.x));
    return all(select(select(vec3<bool>(arg_1.d.x, arg_0.b.a.x, true), vec3<bool>(arg_1.d.x, arg_2.b, var_0), false), !vec3<bool>(var_0, true, all(vec4<bool>(true, false, false, var_1.b))), var_0));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_clamp_i32(firstLeadingBit(-33693i), ~_wgslsmith_mod_i32(arg_2.b.x, -arg_2.b.x), ~arg_2.b.x) << (~23600u % 32u);
    let var_1 = ~(-arg_2.b);
    let var_2 = vec4<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1))) - _wgslsmith_f_op_f32(-531f - arg_1))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-972f)))))), arg_1);
    var var_3 = ~firstTrailingBit(~(~(~30966u)));
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1260f * _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(291f * -425f), _wgslsmith_f_op_f32(-2404f * 158f))))));
    return arg_2.d;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<bool>) -> Struct_1 {
    global2 = func_4(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-33241i, -53742i, -43761i, 1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-15876i, -52506i, -65849i, 66821i), vec4<i32>(-2147483647i, -18332i, 1978i, 18424i))), -19656i) > ((_wgslsmith_clamp_i32(-2147483647i, -2147483647i, -5895i) ^ _wgslsmith_mod_i32(1i, -59602i)) << (_wgslsmith_div_u32(~global1.x, 17592u) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1268f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1002f)), -1921f))))), Struct_1(vec4<bool>(true, func_2(Struct_2(vec4<u32>(0u, 1u, u_input.b.x, global1.x), Struct_1(arg_1, vec3<i32>(0i, 2478i, -29727i), -2147483647i, vec3<bool>(true, global2.x, arg_1.x)), Struct_1(arg_1, vec3<i32>(-2147483647i, 2147483647i, -46855i), -27400i, arg_1.xxw), Struct_1(vec4<bool>(false, arg_1.x, false, global2.x), vec3<i32>(-21344i, 963i, 27088i), -13953i, vec3<bool>(global2.x, false, global2.x)), Struct_1(vec4<bool>(false, global2.x, false, arg_1.x), vec3<i32>(-1i, 0i, 3638i), 63311i, vec3<bool>(false, arg_0.x, true))), Struct_1(vec4<bool>(arg_0.x, true, true, true), vec3<i32>(-1i, 2147483647i, -8743i), -3094i, arg_1.wyx), Struct_4(Struct_2(vec4<u32>(1u, 4294967295u, 45968u, global1.x), Struct_1(vec4<bool>(global2.x, global2.x, arg_0.x, arg_1.x), vec3<i32>(-2147483647i, 46349i, -1i), -24596i, vec3<bool>(true, arg_1.x, false)), Struct_1(arg_1, vec3<i32>(-9463i, -19743i, 37069i), -61915i, vec3<bool>(global2.x, arg_1.x, arg_0.x)), Struct_1(vec4<bool>(false, arg_1.x, arg_0.x, global2.x), vec3<i32>(1i, -2147483647i, -1i), -2147483647i, arg_1.yyx), Struct_1(vec4<bool>(arg_1.x, global2.x, global2.x, false), vec3<i32>(-65466i, 23478i, 1i), 2147483647i, vec3<bool>(arg_1.x, arg_1.x, arg_1.x))), true, Struct_1(arg_1, vec3<i32>(-2147483647i, 19199i, -2147483647i), 1i, vec3<bool>(arg_1.x, false, true))), vec4<u32>(global1.x, u_input.b.x, global1.x, 19974u)) && true, func_2(Struct_2(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 38516u), Struct_1(vec4<bool>(true, true, true, false), vec3<i32>(-17744i, 2147483647i, -34353i), 29158i, arg_1.xxy), Struct_1(arg_1, vec3<i32>(1i, -13560i, 2147483647i), 0i, arg_1.wxx), Struct_1(arg_1, vec3<i32>(0i, 3739i, 0i), -19379i, vec3<bool>(global2.x, false, false)), Struct_1(vec4<bool>(true, arg_1.x, false, arg_0.x), vec3<i32>(45221i, 2922i, 47718i), -21750i, arg_1.wyz)), Struct_1(arg_1, vec3<i32>(2070i, 0i, 24614i), 24001i, arg_1.zwy), Struct_4(Struct_2(vec4<u32>(28559u, global1.x, u_input.b.x, global1.x), Struct_1(vec4<bool>(false, true, arg_0.x, false), vec3<i32>(805i, 1i, 9635i), -19991i, vec3<bool>(global2.x, true, false)), Struct_1(vec4<bool>(true, arg_1.x, global2.x, true), vec3<i32>(34799i, -28167i, 41404i), 1i, arg_1.zyx), Struct_1(vec4<bool>(false, false, arg_0.x, arg_1.x), vec3<i32>(1i, 6235i, -28060i), -2147483647i, vec3<bool>(arg_1.x, true, arg_1.x)), Struct_1(arg_1, vec3<i32>(-26430i, 2147483647i, -44483i), -26009i, arg_1.zwz)), global2.x, Struct_1(vec4<bool>(arg_1.x, arg_0.x, true, true), vec3<i32>(0i, -37082i, -2147483647i), 1i, vec3<bool>(arg_0.x, global2.x, arg_0.x))), ~vec4<u32>(u_input.a.x, global1.x, global1.x, 35793u)), !arg_0.x), vec3<i32>(~12461i, -1i, ~(-7276i) | _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -37437i), vec2<i32>(1i, 10997i))), ~_wgslsmith_clamp_i32(12571i, 0i, 1i), select(select(select(arg_1.xwy, arg_1.zzx, arg_1.yzz), select(vec3<bool>(global2.x, false, arg_0.x), vec3<bool>(arg_1.x, true, true), arg_0.x), true), arg_1.zxz, max(1u, 43542u) < select(0u, u_input.a.x, true))));
    let var_0 = Struct_2(~(~vec4<u32>(7716u, global1.x, 23355u, global1.x) | vec4<u32>(~global1.x, _wgslsmith_sub_u32(u_input.b.x, 4294967295u), ~9221u, ~0u)), Struct_1(vec4<bool>(false, false, arg_0.x, global2.x), -min(vec3<i32>(-23922i, 42594i, 0i), vec3<i32>(1i, 1i, 1i)), 1i, arg_1.xxw), Struct_1(arg_1, ~abs(vec3<i32>(1i, 1i, 1i)), abs(_wgslsmith_mult_i32(-1i, -2147483647i)), !vec3<bool>(!global2.x, arg_1.x, false)), Struct_1(select(!(!arg_1), vec4<bool>(39853u <= global1.x, global2.x, true, true), true), -vec3<i32>(_wgslsmith_mult_i32(-2147483647i, 0i), -2147483647i, 12635i << (global1.x % 32u)), firstLeadingBit(-2147483647i), vec3<bool>(global2.x, arg_1.x, all(select(vec3<bool>(arg_1.x, true, false), arg_1.zzw, true)))), Struct_1(select(!select(vec4<bool>(false, arg_1.x, arg_1.x, global2.x), vec4<bool>(true, arg_1.x, true, global2.x), vec4<bool>(arg_1.x, true, true, arg_1.x)), select(!vec4<bool>(true, true, true, arg_0.x), arg_1, vec4<bool>(global2.x, false, true, arg_1.x)), arg_1), vec3<i32>(1i, min(min(17639i, -20570i), 1i), ~(i32(-1i) * -28951i)), 13855i, arg_1.yyx));
    let var_1 = select(select(!vec2<bool>(true, all(vec2<bool>(arg_1.x, true))), arg_0, global2.x), select(func_4(any(vec4<bool>(var_0.b.a.x, arg_0.x, false, arg_0.x)), -1000f, var_0.b).xz, vec2<bool>(!arg_0.x, !any(vec4<bool>(false, arg_1.x, global2.x, true))), !func_4(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -597f), Struct_1(vec4<bool>(arg_1.x, true, true, arg_1.x), var_0.d.b, var_0.d.c, arg_1.yzx)).x), _wgslsmith_f_op_f32(-2722f * _wgslsmith_f_op_f32(ceil(-1087f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(873f)), -991f))));
    global2 = vec3<bool>(false, true, true);
    global2 = vec3<bool>(all(select(vec2<bool>(false != arg_0.x, all(vec2<bool>(arg_1.x, global2.x))), var_0.b.d.xy, 1u == reverseBits(var_0.a.x))), true, true);
    return var_0.e;
}

fn func_5(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = abs(vec2<i32>(arg_0.c, ~(~14759i))) | vec2<i32>(abs(arg_0.b.x), arg_0.b.x);
    let var_1 = func_1(!global2.yz, select(arg_0.a, vec4<bool>(false, arg_0.a.x, !(!arg_0.d.x), !arg_0.a.x), !arg_0.a));
    let var_2 = !arg_0.a;
    let var_3 = 78758u;
    var var_4 = Struct_3(-315f, func_1(vec2<bool>(false, true), select(func_1(!vec2<bool>(var_2.x, arg_0.a.x), func_1(global2.yx, vec4<bool>(var_2.x, true, var_1.a.x, var_1.d.x)).a).a, func_1(vec2<bool>(true, true), select(vec4<bool>(arg_0.d.x, var_1.a.x, arg_0.a.x, false), vec4<bool>(global2.x, false, global2.x, arg_0.a.x), vec4<bool>(global2.x, false, true, false))).a, all(select(vec4<bool>(true, var_2.x, true, global2.x), var_2, arg_0.d.x)))));
    return vec4<bool>(select(!var_1.a.x, all(func_1(var_2.yy, var_4.b.a).a), true), false, arg_0.a.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_5(func_1(!select(vec2<bool>(global2.x, false), global2.zz, global2.yy), select(vec4<bool>(global2.x, false, global2.x, true), !vec4<bool>(false, global2.x, global2.x, global2.x), vec4<bool>(true, global2.x, global2.x, true)))), vec3<i32>(_wgslsmith_clamp_i32(230i, firstTrailingBit(-2147483647i), 1i) ^ max(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, -62320i, 0i), vec4<i32>(-1i, 12807i, 3645i, -2147483647i)), -36010i << (0u % 32u)), _wgslsmith_add_i32(abs(_wgslsmith_mult_i32(0i, -1i)), -_wgslsmith_mod_i32(23304i, 1i)), firstTrailingBit(17692i)), -2147483647i, func_5(func_1(global2.xx, vec4<bool>(true, !global2.x, func_5(Struct_1(vec4<bool>(global2.x, global2.x, false, false), vec3<i32>(-1i, -38710i, 2147483647i), -25383i, vec3<bool>(false, global2.x, true))).x, all(vec4<bool>(false, true, true, false))))).zxx);
    let var_1 = Struct_2(_wgslsmith_sub_vec4_u32(max(vec4<u32>(u_input.a.x | 57595u, u_input.b.x ^ 51612u, abs(0u), global1.x), _wgslsmith_add_vec4_u32(~vec4<u32>(0u, u_input.b.x, 4294967295u, u_input.a.x), select(vec4<u32>(31997u, 47020u, 0u, global1.x), vec4<u32>(u_input.a.x, global1.x, global1.x, 4294967295u), vec4<bool>(global2.x, true, var_0.d.x, false)))), firstLeadingBit(_wgslsmith_div_vec4_u32(select(vec4<u32>(0u, 1u, 9169u, u_input.b.x), vec4<u32>(u_input.a.x, global1.x, u_input.b.x, global1.x), var_0.a), ~vec4<u32>(1u, global1.x, 4294967295u, 1u)))), Struct_1(!(!vec4<bool>(var_0.a.x, false, global2.x, global2.x)), var_0.b, var_0.c, func_1(!select(global2.zz, vec2<bool>(var_0.a.x, false), var_0.a.x), !select(vec4<bool>(var_0.d.x, global2.x, true, global2.x), var_0.a, false)).d), Struct_1(var_0.a, var_0.b, abs(var_0.b.x), !(!func_1(var_0.a.yy, vec4<bool>(global2.x, var_0.a.x, var_0.a.x, global2.x)).a.ywy)), func_1(func_5(func_1(vec2<bool>(true, false), var_0.a)).yy, func_5(Struct_1(select(var_0.a, vec4<bool>(var_0.d.x, global2.x, var_0.d.x, true), var_0.a), _wgslsmith_mult_vec3_i32(var_0.b, vec3<i32>(var_0.c, var_0.b.x, -1i)), ~27497i, vec3<bool>(global2.x, global2.x, var_0.a.x)))), Struct_1(select(!func_5(Struct_1(var_0.a, vec3<i32>(var_0.c, -7801i, -1i), 2147483647i, vec3<bool>(false, global2.x, false))), !(!vec4<bool>(var_0.d.x, false, var_0.a.x, false)), !func_1(vec2<bool>(true, true), vec4<bool>(var_0.d.x, false, false, var_0.a.x)).a), vec3<i32>(~0i, var_0.c, var_0.c), select(var_0.b.x, 3317i, false), vec3<bool>(var_0.a.x, false, global2.x)));
    let var_2 = Struct_2(max(firstTrailingBit(vec4<u32>(13901u, global1.x, u_input.b.x, 32003u)) << (vec4<u32>(1u, ~global1.x, global1.x | var_1.a.x, ~global1.x) % vec4<u32>(32u)), ~vec4<u32>(var_1.a.x, ~global1.x, ~33710u, ~global1.x)), var_1.c, func_1(func_5(Struct_1(vec4<bool>(false, true, false, var_1.b.a.x), -var_0.b, var_0.c, select(vec3<bool>(var_1.e.d.x, true, global2.x), var_0.a.xxw, false))).zw, func_1(vec2<bool>(var_0.d.x, func_1(vec2<bool>(true, true), vec4<bool>(true, true, true, false)).d.x), vec4<bool>(true, global2.x, func_4(var_0.d.x, -272f, Struct_1(vec4<bool>(true, var_1.d.d.x, var_1.b.a.x, true), vec3<i32>(29510i, var_0.c, var_1.b.c), -22225i, vec3<bool>(var_1.c.a.x, false, var_0.d.x))).x, !var_1.d.d.x)).a), var_1.c, Struct_1(!vec4<bool>(true, false, false == global2.x, true), _wgslsmith_sub_vec3_i32(var_1.d.b, vec3<i32>(-2115i, var_0.b.x, var_1.e.c)) >> (vec3<u32>(var_1.a.x, reverseBits(global1.x), 0u) % vec3<u32>(32u)), -(i32(-1i) * -28917i), var_0.a.yxx));
    var var_3 = func_4(false, -342f, func_1(!(!vec2<bool>(true, var_2.c.d.x)), func_1(func_1(vec2<bool>(true, true), vec4<bool>(false, false, false, true)).a.xx, func_1(select(var_0.d.yx, vec2<bool>(false, false), var_0.a.ww), func_5(Struct_1(vec4<bool>(false, var_0.d.x, var_0.d.x, true), var_2.d.b, -1i, vec3<bool>(var_1.c.a.x, global2.x, var_0.a.x)))).a).a)).xz;
    var var_4 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1446f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-676f)), _wgslsmith_f_op_f32(floor(-1583f)), !var_0.d.x))))), func_1(vec2<bool>(all(vec4<bool>(var_1.c.a.x, false, var_0.a.x, true)), var_2.b.a.x), var_0.a));
    let var_5 = _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(select(abs(~vec4<i32>(0i, var_1.b.c, -36865i, var_2.c.b.x)), reverseBits(vec4<i32>(-43190i, var_2.e.c, var_1.b.b.x, -24936i)), select(var_0.a, func_5(Struct_1(var_2.b.a, vec3<i32>(var_2.e.b.x, 1i, var_1.d.b.x), var_0.c, vec3<bool>(false, true, var_1.e.d.x))), !var_1.c.a.x)), -(~_wgslsmith_div_vec4_i32(vec4<i32>(-1i, var_1.b.c, var_4.b.c, -1i), vec4<i32>(-13537i, var_1.c.b.x, var_2.b.c, 1i)))), ~(~vec4<i32>(_wgslsmith_mult_i32(-11549i, 9132i), -65291i, abs(var_0.c), ~var_2.d.c)));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<u32>(13373u, reverseBits(countOneBits(4517u))), global1.yx), 4294967295u, 4294967295u, 0u, var_4.b.c);
}

