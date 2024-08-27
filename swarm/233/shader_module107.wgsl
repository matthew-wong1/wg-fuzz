struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: i32,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1028f, -1900f, 516f, 166f);

var<private> global1: Struct_2 = Struct_2(Struct_1(true, vec3<bool>(false, false, true), 30018i, 0i, vec4<f32>(231f, -1944f, 245f, -1857f)), Struct_1(true, vec3<bool>(false, false, true), 80977i, -59052i, vec4<f32>(204f, -475f, -824f, -530f)), Struct_1(false, vec3<bool>(true, true, true), 21869i, i32(-2147483648), vec4<f32>(1140f, -807f, 438f, 1066f)), 1347f, vec2<bool>(true, true));

var<private> global2: array<f32, 6> = array<f32, 6>(1000f, -722f, -771f, -1470f, -528f, 1000f);

var<private> global3: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(false, vec3<bool>(false, true, false), -6323i, 0i, vec4<f32>(171f, 106f, -1136f, 1754f)), Struct_1(false, vec3<bool>(true, true, true), 22306i, 0i, vec4<f32>(-450f, 700f, -1000f, -276f)), Struct_1(false, vec3<bool>(false, true, false), 22572i, 664i, vec4<f32>(-1418f, -1350f, 1000f, 146f)), Struct_1(true, vec3<bool>(false, false, false), 47740i, -10149i, vec4<f32>(562f, -167f, 2052f, -1671f)), Struct_1(false, vec3<bool>(false, true, false), -41150i, -71771i, vec4<f32>(-1548f, -1068f, 509f, -310f)), Struct_1(false, vec3<bool>(false, true, false), 26726i, 597i, vec4<f32>(3207f, 462f, 469f, 1000f)), Struct_1(true, vec3<bool>(true, true, true), 60662i, -30434i, vec4<f32>(409f, -1909f, -1792f, -1289f)), Struct_1(false, vec3<bool>(true, true, false), -19731i, -1i, vec4<f32>(2211f, 2414f, 1811f, -1000f)), Struct_1(true, vec3<bool>(false, true, true), -30789i, -23813i, vec4<f32>(1052f, 639f, -612f, 1428f)), Struct_1(true, vec3<bool>(true, false, true), -14639i, -20104i, vec4<f32>(400f, -744f, -1349f, -531f)), Struct_1(false, vec3<bool>(false, true, false), 18399i, 24188i, vec4<f32>(-901f, 1151f, -1929f, 483f)), Struct_1(true, vec3<bool>(true, true, true), i32(-2147483648), -1i, vec4<f32>(2093f, -1014f, -423f, 571f)), Struct_1(false, vec3<bool>(true, false, false), 27103i, 0i, vec4<f32>(-1000f, -983f, 803f, 734f)), Struct_1(true, vec3<bool>(false, true, false), 0i, 4029i, vec4<f32>(163f, 1017f, 1033f, 2015f)), Struct_1(false, vec3<bool>(false, true, false), -1i, 0i, vec4<f32>(-1000f, 664f, 783f, 1000f)), Struct_1(true, vec3<bool>(false, true, false), 30923i, 2147483647i, vec4<f32>(985f, 314f, 458f, -1427f)), Struct_1(false, vec3<bool>(false, false, false), i32(-2147483648), 2147483647i, vec4<f32>(-318f, -1000f, 659f, -241f)), Struct_1(true, vec3<bool>(true, false, false), 7575i, -17866i, vec4<f32>(639f, -1183f, 197f, -765f)));

var<private> global4: Struct_3;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<f32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(329f, -428f) - vec2<f32>(global2[_wgslsmith_index_u32(global4.a, 6u)], global1.b.e.x))))));
    var var_1 = Struct_3(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(arg_0.x, abs(global4.a), arg_0.x)), arg_0.x), Struct_2(Struct_1(global1.b.a, global1.c.b, -global4.d.d, 7740i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -868f, arg_1.x, global1.b.e.x)))), Struct_1(any(vec3<bool>(false, false, global4.d.b.x)), select(select(global1.c.b, vec3<bool>(false, global4.b.b.b.x, global4.b.e.x), global1.b.b.x), global1.b.b, global1.b.b), global4.b.a.c, 2147483647i, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.e.x, global4.d.e.x, var_0.x, -795f))))), Struct_1(!global4.b.e.x || true, !select(global1.a.b, global1.b.b, global1.b.b), u_input.a.x, firstLeadingBit(13744i), global1.a.e), arg_1.x, vec2<bool>(true, true)), -43104i, global4.d, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global0.xyw))));
    global1 = Struct_2(Struct_1(any(!vec2<bool>(global1.e.x, true)) || true, vec3<bool>(true, true, true), firstTrailingBit(~global1.a.d ^ global4.b.c.c), reverseBits(~1i), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global4.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(832f + 521f)), -572f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * -849f)))), Struct_1(all(!vec4<bool>(var_1.b.c.b.x, global4.d.b.x, global1.c.a, true)), !select(vec3<bool>(var_1.b.c.a, true, global1.c.a), select(global1.a.b, vec3<bool>(var_1.b.e.x, false, true), vec3<bool>(var_1.d.b.x, true, var_1.d.b.x)), vec3<bool>(true, global4.d.b.x, true)), ~var_1.b.b.d, firstTrailingBit(-2147483647i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -692f), global2[_wgslsmith_index_u32(0u >> (global4.a % 32u), 6u)], _wgslsmith_f_op_f32(abs(global4.d.e.x)), _wgslsmith_f_op_f32(select(1538f, arg_1.x, var_1.d.b.x))))), var_1.b.b, _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(var_1.a, _wgslsmith_sub_u32(4294967295u, global4.a)), 6u)])), vec2<bool>(any(!select(vec3<bool>(global1.b.b.x, true, global4.d.a), vec3<bool>(true, false, false), vec3<bool>(global1.e.x, false, true))), !global1.b.a));
    let var_2 = var_1.b.e.x;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1520f, global0.x)) * 513f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1935f, _wgslsmith_f_op_f32(abs(-946f)), all(!vec3<bool>(global1.a.a, var_1.b.c.b.x, global4.d.b.x))))), global1.b.e.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1773f + _wgslsmith_f_op_f32(f32(-1f) * -406f)), var_0.x)))));
    return vec4<bool>(any(var_1.d.b), !all(!select(vec2<bool>(var_1.d.a, global1.c.a), var_1.d.b.zz, global4.b.c.b.yx)), true, true);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2) -> Struct_1 {
    global2 = array<f32, 6>();
    let var_0 = reverseBits(~(~32445u));
    var var_1 = !vec4<bool>(true, any(!(!vec4<bool>(global4.d.a, global1.b.b.x, global1.a.b.x, global1.e.x))), false, !all(func_3(vec3<u32>(32223u, var_0, 2124u), global1.b.e.xz)));
    let var_2 = Struct_3(_wgslsmith_mult_u32(abs(1u), 36962u), arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, arg_1.a.c | _wgslsmith_sub_i32(530i, 2147483647i), _wgslsmith_clamp_i32(2147483647i, -68494i, u_input.a.x) | 2147483647i, _wgslsmith_mult_i32(-u_input.a.x, global1.c.d)), -vec4<i32>(~u_input.a.x, global4.b.c.c | global4.b.a.d, global4.d.c, 1i)), Struct_1(firstLeadingBit(global4.a << (5434u % 32u)) >= _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global4.a, 36946u, 0u, var_0), vec4<u32>(64455u, var_0, var_0, 4294967295u)), ~vec4<u32>(var_0, 1u, 31070u, global4.a)), !vec3<bool>(!global1.a.a, global4.d.a, true), -(1i & global1.c.d) & abs(~global4.c), 3640i, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global4.b.c.e.x)) * arg_1.c.e.x), -1106f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~65383u, 6u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(969f))))), arg_0);
    var var_3 = vec4<u32>(min(_wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(var_0, 48806u, var_2.a), global4.a), ~var_2.a >> (97406u % 32u)), 1u), global4.a, ~18624u, ~global4.a);
    return Struct_1(!func_3(select(~var_3.zzx, ~vec3<u32>(var_0, var_3.x, 40245u), !global1.e.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.e.x, 1072f)))).x, !vec3<bool>(!any(vec4<bool>(true, var_2.d.b.x, true, var_1.x)), _wgslsmith_clamp_u32(5454u, 4294967295u, 127119u) < global4.a, var_2.b.b.a), -61604i, 1i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1336f, -318f, -400f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global4.b.d)))))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = !(!any(vec3<bool>(select(true, false, global1.a.a), global4.b.b.a, 8418i < arg_0.c)));
    var var_1 = global4.b;
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1437f) - func_2(global4.e, global4.b).e.x), global4.d.e.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.e.x, 1206f)))), vec3<f32>(global2[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(global4.a, global4.a)), 6u)], _wgslsmith_f_op_f32(abs(arg_0.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1614f)))))));
    global1 = global4.b;
    let var_3 = ~_wgslsmith_add_u32(global4.a, global4.a);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.e.x, -435f)) < _wgslsmith_f_op_f32(-749f + _wgslsmith_div_f32(-396f, _wgslsmith_f_op_f32(-1400f + 1000f))), !vec3<bool>(false, !any(var_1.e), true), -u_input.a.x, min(arg_0.c, _wgslsmith_div_i32(u_input.a.x, firstLeadingBit(8065i)) | select(global1.a.c, min(-16103i, global1.c.c), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global4.b.c.e)) + global4.d.e), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(var_3, 6u)], -940f, global2[_wgslsmith_index_u32(1u, 6u)], 1373f) + vec4<f32>(106f, 498f, -1313f, global0.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_1.c.e, vec4<f32>(global1.d, 233f, arg_0.e.x, -1725f)))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> Struct_2 {
    global3 = array<Struct_1, 18>();
    var var_0 = global1.c.a;
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-267f, _wgslsmith_f_op_f32(ceil(global0.x)), true))))), global4.e.x, _wgslsmith_f_op_f32(f32(-1f) * -1634f));
    var var_1 = Struct_3(reverseBits(global4.a), global4.b, _wgslsmith_clamp_i32(countOneBits(i32(-1i) * -50608i), 2147483647i, func_2(vec3<f32>(-424f, global4.d.e.x, global1.d), global4.b).d) << (global4.a % 32u), Struct_1(arg_1.b.x, !func_3(~vec3<u32>(arg_3, 13006u, 4294967295u), vec2<f32>(arg_0.e.x, -1602f)).yxx, ~(~u_input.a.x), global4.c, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.e.x * 479f)), arg_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(322f * -202f)), _wgslsmith_f_op_f32(global4.e.x - _wgslsmith_div_f32(global1.a.e.x, global2[_wgslsmith_index_u32(28569u, 6u)])))), vec3<f32>(-1041f, -1742f, -965f));
    global3 = array<Struct_1, 18>();
    return var_1.b;
}

fn func_6(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: f32, arg_3: vec4<bool>) -> Struct_1 {
    global1 = func_5(global1.b, global4.d, -41085i, global4.a);
    global1 = global4.b;
    var var_0 = global4.b;
    global4 = Struct_3(1838u, func_5(func_4(func_5(Struct_1(true, vec3<bool>(false, true, global1.a.b.x), -2147483647i, var_0.a.c, vec4<f32>(779f, -879f, -237f, arg_2)), global3[_wgslsmith_index_u32(global4.a, 18u)], i32(-1i) * -48539i, 4294967295u).b), var_0.a, global4.b.c.c, min(_wgslsmith_clamp_u32(global4.a, ~global4.a, ~global4.a), 1u)), -4833i << (select(~(global4.a >> (87230u % 32u)), select(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(global4.a, global4.a, 67299u), vec3<u32>(global4.a, 104065u, 16863u)), !arg_0.a.a), any(func_3(vec3<u32>(global4.a, global4.a, global4.a), var_0.a.e.zx).xwz)) % 32u), func_4(global1.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.yxw) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -183f), _wgslsmith_f_op_f32(min(628f, var_0.b.e.x))) * vec3<f32>(_wgslsmith_div_f32(-676f, global0.x), _wgslsmith_f_op_f32(step(1274f, -1878f)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(19245u, 6u)] - 691f)))));
    let var_1 = any(func_3(vec3<u32>(_wgslsmith_div_u32(~global4.a, min(global4.a, 58097u)), _wgslsmith_sub_u32(global4.a, 60398u) | global4.a, ~(~global4.a)), _wgslsmith_f_op_vec2_f32(var_0.b.e.zx * vec2<f32>(_wgslsmith_f_op_f32(-1644f + 2674f), _wgslsmith_f_op_f32(431f + -388f)))).yw);
    return Struct_1(true, !select(!vec3<bool>(true, global1.b.a, true), vec3<bool>(global1.a.b.x, all(arg_3.zyz), true), arg_3.yzw), -global1.c.d, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global1.c.e.x, arg_2))), Struct_2(Struct_1(!global4.b.a.a, select(vec3<bool>(var_0.b.b.x, arg_0.e.x, false), var_0.a.b, arg_3.x), -4464i, 1i, _wgslsmith_f_op_vec4_f32(-global1.a.e)), Struct_1(false, select(vec3<bool>(var_0.a.b.x, global1.b.b.x, true), var_0.a.b, arg_3.x), -global4.b.a.c, func_4(global3[_wgslsmith_index_u32(global4.a, 18u)]).d, var_0.b.e), global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.x, 1000f))), !select(var_0.b.b.yy, arg_0.b.b.yy, vec2<bool>(true, true)))).c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global4.d.e, global1.a.e) - _wgslsmith_div_vec4_f32(vec4<f32>(-514f, -2147f, arg_0.c.e.x, -1819f), var_0.a.e)))));
}

fn func_1() -> Struct_3 {
    global2 = array<f32, 6>();
    var var_0 = Struct_2(global1.c, Struct_1(global1.b.a, select(global4.b.b.b, !select(global1.b.b, vec3<bool>(global1.a.a, global4.b.e.x, false), false), true), global4.c, i32(-1i) * -15652i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(355f, global1.c.e.x, global1.b.e.x, 1000f)), vec4<f32>(111f, _wgslsmith_f_op_f32(246f - 515f), _wgslsmith_f_op_f32(global4.e.x - 1199f), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global4.a, 0u), 6u)]))), func_6(func_5(func_4(func_2(vec3<f32>(global1.a.e.x, global1.d, global4.b.d), Struct_2(global4.b.c, Struct_1(global4.b.c.a, vec3<bool>(false, global4.b.e.x, global4.b.b.b.x), global4.c, 0i, vec4<f32>(-211f, 1302f, global0.x, -640f)), global3[_wgslsmith_index_u32(21824u, 18u)], global4.d.e.x, global4.d.b.yz))), global4.d, -global1.b.c, ~54980u), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(step(global0.x, global1.b.e.x)), _wgslsmith_f_op_f32(global4.e.x - global1.c.e.x), _wgslsmith_f_op_f32(floor(global1.d))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1326f, global2[_wgslsmith_index_u32(global4.a, 6u)]) - _wgslsmith_f_op_f32(min(global0.x, 431f)))), vec4<bool>(!global4.d.a, !all(vec3<bool>(global4.d.b.x, true, global1.a.a)), global1.b.b.x, !(u_input.a.x <= global4.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.e.x) - 751f), global1.c.b.zx);
    let var_1 = -21935i;
    let var_2 = _wgslsmith_mod_i32(select(var_0.a.c & ~_wgslsmith_mod_i32(var_0.a.c, -38590i), _wgslsmith_div_i32(global4.d.d, ~(-1i)), all(!(!global1.a.b.yx))), global4.b.c.d);
    var var_3 = firstLeadingBit(~countOneBits(~4294967295u));
    return Struct_3(abs(global4.a), Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(~vec4<u32>(4294967295u, global4.a, 0u, 4294967295u)), abs(abs(vec4<u32>(global4.a, 14509u, 16189u, global4.a)))), 18u)], Struct_1(var_0.b.a & true, !(!global1.a.b), _wgslsmith_dot_vec4_i32(vec4<i32>(24557i, global4.c, 25387i, -1i), reverseBits(vec4<i32>(var_1, var_1, global1.c.d, -60197i))), _wgslsmith_add_i32(var_2, _wgslsmith_mod_i32(-22084i, u_input.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a.e))), Struct_1(global4.b.c.a, !global4.b.a.b, 2147483647i, countOneBits(max(2147483647i, var_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.b.e - var_0.c.e))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-367f, global2[_wgslsmith_index_u32(0u, 6u)]) * -747f), global2[_wgslsmith_index_u32(4294967295u, 6u)]), vec2<bool>(func_4(func_5(Struct_1(false, global4.b.b.b, 0i, -2147483647i, vec4<f32>(global4.d.e.x, 941f, -866f, global4.e.x)), Struct_1(true, vec3<bool>(false, global4.d.a, true), -27748i, global1.b.c, vec4<f32>(328f, var_0.d, 457f, -991f)), var_1, global4.a).b).a, !var_0.b.b.x)), var_2, global1.a, global4.b.a.e.ywy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = firstLeadingBit(vec3<i32>(-1i, u_input.a.x, ~var_0.d.c));
    var_0 = Struct_3(1u, func_1().b, 0i, func_2(func_4(var_0.b.a).e.xwz, Struct_2(func_4(func_4(global1.a)), Struct_1(func_2(vec3<f32>(global4.b.a.e.x, var_0.e.x, 382f), var_0.b).a, !vec3<bool>(true, global4.b.a.b.x, false), func_2(vec3<f32>(global2[_wgslsmith_index_u32(global4.a, 6u)], var_0.e.x, var_0.e.x), Struct_2(var_0.d, global3[_wgslsmith_index_u32(19910u, 18u)], Struct_1(global1.a.b.x, var_0.d.b, -1i, 1i, global1.c.e), global1.a.e.x, vec2<bool>(true, var_0.b.e.x))).d, 5502i, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(487f, 189f, 985f, var_0.d.e.x), vec4<f32>(223f, 1799f, global4.d.e.x, global0.x), global1.c.b.x))), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(var_0.a, 1u), global4.a), 18u)], _wgslsmith_f_op_f32(sign(436f)), vec2<bool>(global4.a == 1u, !global1.a.a))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1696f, global4.d.e.x)) + vec3<f32>(func_6(Struct_2(Struct_1(false, vec3<bool>(var_0.b.c.b.x, var_0.d.a, false), var_0.d.d, 6090i, vec4<f32>(global2[_wgslsmith_index_u32(1u, 6u)], 903f, -1216f, global2[_wgslsmith_index_u32(global4.a, 6u)])), Struct_1(true, global4.d.b, global4.c, u_input.a.x, global1.b.e), global1.a, global1.d, var_0.d.b.yy), vec3<f32>(1593f, global2[_wgslsmith_index_u32(1u, 6u)], global2[_wgslsmith_index_u32(global4.a, 6u)]), -560f, vec4<bool>(false, false, true, false)).e.x, _wgslsmith_f_op_f32(f32(-1f) * -1361f), 728f)), _wgslsmith_f_op_vec3_f32(var_0.b.b.e.wyy + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.d.e.yxz - vec3<f32>(244f, global2[_wgslsmith_index_u32(1u, 6u)], global0.x)), func_4(var_0.d).e.zyy))));
    var var_2 = Struct_3(var_0.a, func_1().b, countOneBits(func_1().c), func_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-global1.c.e.x), global1.d, _wgslsmith_f_op_f32(-global1.d)))), func_5(global4.d, Struct_1(true, select(global4.b.c.b, vec3<bool>(true, true, var_0.b.a.b.x), true), -17804i, func_2(var_0.e, Struct_2(Struct_1(false, global4.d.b, var_0.c, global4.d.d, global1.a.e), Struct_1(global4.d.b.x, vec3<bool>(true, global4.b.a.a, false), 1i, u_input.a.x, vec4<f32>(1448f, global0.x, -1506f, global1.a.e.x)), Struct_1(global4.b.e.x, global4.d.b, -1285i, 16893i, vec4<f32>(global0.x, global0.x, global1.d, -2247f)), var_0.b.a.e.x, vec2<bool>(false, global1.b.a))).d, _wgslsmith_f_op_vec4_f32(-global1.b.e)), global4.d.c, var_0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-func_5(Struct_1(global1.e.x, global1.b.b, global4.b.c.d, global1.b.c, global1.a.e), Struct_1(global1.b.b.x, vec3<bool>(true, global1.e.x, var_0.b.c.a), var_1.x, -61258i, global4.b.c.e), select(var_1.x, 1i, false), ~global4.a).a.e.xyy)));
    global4 = func_1();
    var_0 = Struct_3(reverseBits(var_0.a), var_0.b, max(_wgslsmith_clamp_i32(min(~(-25462i), i32(-1i) * -2147483647i), reverseBits(abs(22527i)), firstLeadingBit(0i)), func_4(global3[_wgslsmith_index_u32(var_0.a, 18u)]).d ^ ~(~72392i)), Struct_1(true, !(!var_0.d.b), var_2.d.c, -17400i, var_0.b.b.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_2.d.e.x), 1167f, -973f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(func_2(global1.b.e.wyy, Struct_2(Struct_1(true, vec3<bool>(var_2.d.a, false, true), var_2.c, 50141i, global1.c.e), Struct_1(global4.b.a.a, global1.b.b, -1i, -2655i, global4.b.a.e), global4.b.b, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_2.a, 6u)]), !var_0.d.b.zx)).e.ywx + _wgslsmith_f_op_vec3_f32(var_2.b.a.e.xzw + global0.xwz)), vec2<f32>(global4.d.e.x, 741f), _wgslsmith_div_vec4_f32(var_2.d.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(236f, 498f, -953f, 799f) * vec4<f32>(166f, global1.d, global4.d.e.x, 196f)))))), -284f);
}

