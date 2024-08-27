struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: array<Struct_1, 25>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: f32) -> vec2<u32> {
    var var_0 = _wgslsmith_sub_u32(u_input.c, ~reverseBits(1u ^ u_input.a.x)) <= _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, 16823u), 36424u), u_input.c);
    var var_1 = global0[_wgslsmith_index_u32(6244u, 10u)];
    let var_2 = var_1.d.c;
    let var_3 = _wgslsmith_mult_u32(~95280u, 1u << (~(~var_1.a.x) % 32u));
    let var_4 = Struct_3(global0[_wgslsmith_index_u32(var_3, 10u)]);
    return min(select(countOneBits(_wgslsmith_div_vec2_u32(u_input.a.zy & var_1.b.zy, u_input.a.yz)), u_input.a.zx, arg_0.xy), u_input.a.zy >> (reverseBits(vec2<u32>(54679u, _wgslsmith_sub_u32(u_input.b, var_1.b.x))) % vec2<u32>(32u)));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec2_u32(u_input.a.xy, _wgslsmith_div_vec2_u32(vec2<u32>(15332u, arg_2.a.x), arg_2.b.ww)) << (((func_3(!vec3<bool>(arg_0.d.d.x, false, false), arg_2.d.e) & vec2<u32>(16220u, 1u)) | vec2<u32>(u_input.b, 5406u)) % vec2<u32>(32u));
    var var_1 = arg_0.d.e;
    let var_2 = vec4<i32>(-1i) * -vec4<i32>(1i, -(~arg_0.c), 20057i, arg_2.c);
    global1 = array<Struct_1, 25>();
    let var_3 = u_input.c;
    return arg_2.d;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_3) -> vec2<bool> {
    var var_0 = Struct_2(arg_3.a.b, ~vec4<u32>(min(1u, 1u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(30128u, 58211u, 0u)), vec3<u32>(u_input.b, arg_3.a.a.x, 4294967295u)), 1u, _wgslsmith_add_u32(~u_input.b, u_input.c)), min(firstTrailingBit(~(-26869i)), arg_3.a.c), arg_1);
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    let var_1 = 0u;
    return !arg_1.d;
}

fn func_5(arg_0: vec2<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(min(1000f, 1f));
    let var_1 = func_2(Struct_2(vec4<u32>(1u, abs(~1u), u_input.a.x, 0u), ~(~(~vec4<u32>(12941u, u_input.c, u_input.a.x, 63955u))), 1i, func_2(Struct_2(vec4<u32>(0u, u_input.b, u_input.a.x, u_input.a.x) | vec4<u32>(u_input.b, u_input.b, u_input.c, u_input.a.x), ~vec4<u32>(1u, u_input.b, u_input.c, u_input.b), 5523i, Struct_1(2147483647i, false, vec2<f32>(-1000f, -1000f), arg_0, -2642f)), _wgslsmith_clamp_u32(u_input.c, u_input.a.x, ~u_input.b), Struct_2(~vec4<u32>(u_input.a.x, 11899u, u_input.c, u_input.b), ~vec4<u32>(u_input.c, 0u, u_input.b, u_input.c), _wgslsmith_sub_i32(1i, -1i), global1[_wgslsmith_index_u32(18978u, 25u)]), func_2(Struct_2(vec4<u32>(0u, 0u, 1u, u_input.c), vec4<u32>(u_input.a.x, 4294967295u, 1u, 5183u), -37520i, Struct_1(-41969i, true, vec2<f32>(-2021f, 253f), vec2<bool>(arg_0.x, arg_0.x), -392f)), max(50871u, 20673u), Struct_2(vec4<u32>(u_input.c, 44077u, u_input.c, u_input.c), vec4<u32>(u_input.c, 19196u, 39719u, u_input.b), -2147483647i, Struct_1(61944i, arg_0.x, vec2<f32>(1893f, -1000f), arg_0, -466f)), func_2(Struct_2(vec4<u32>(38436u, u_input.a.x, 0u, 1u), vec4<u32>(44915u, u_input.c, 28438u, u_input.a.x), -2147483647i, global1[_wgslsmith_index_u32(1u, 25u)]), 30020u, Struct_2(vec4<u32>(u_input.b, 1u, u_input.a.x, 18286u), vec4<u32>(56638u, u_input.b, 1u, u_input.b), -19894i, Struct_1(12648i, false, vec2<f32>(310f, 824f), vec2<bool>(arg_0.x, arg_0.x), 557f)), arg_0).d).d)), firstLeadingBit(_wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.a) | u_input.a, ~u_input.a)), Struct_2(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, 10844u, u_input.c), vec4<u32>(13430u, 9939u, u_input.c, u_input.a.x)) << (~(~vec4<u32>(u_input.a.x, 4294967295u, 39416u, 0u)) % vec4<u32>(32u)), vec4<u32>(~u_input.a.x, u_input.b, ~abs(31589u), abs(~4294967295u)), reverseBits(-func_2(global0[_wgslsmith_index_u32(1u, 10u)], u_input.b, Struct_2(vec4<u32>(u_input.a.x, u_input.b, u_input.b, 73438u), vec4<u32>(7502u, 4294967295u, 5027u, 0u), -1i, global1[_wgslsmith_index_u32(u_input.c, 25u)]), arg_0).a), Struct_1(_wgslsmith_mult_i32(-9121i, -1i), !(u_input.c != u_input.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-752f, 1350f)), select(vec2<bool>(arg_0.x, true), vec2<bool>(arg_0.x, arg_0.x), arg_0), 549f)), vec2<bool>(true, 19732u >= u_input.a.x));
    let var_2 = Struct_1(-1i, var_1.d.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(454f - 282f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x * var_1.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1063f, _wgslsmith_f_op_f32(step(357f, var_1.c.x)))))), vec2<bool>(!arg_0.x, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e * var_1.c.x)))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(func_2(Struct_2(~vec4<u32>(u_input.b, u_input.c, u_input.b, 46492u), vec4<u32>(1u, 4294967295u, 116298u, u_input.a.x) << (vec4<u32>(0u, 27060u, u_input.c, 11924u) % vec4<u32>(32u)), -1i, Struct_1(var_2.a, true, var_1.c, var_2.d, var_1.e)), 66552u, Struct_2(vec4<u32>(u_input.b, u_input.a.x, 1u, u_input.b) >> (vec4<u32>(38314u, 0u, 4294967295u, 42086u) % vec4<u32>(32u)), vec4<u32>(17117u, u_input.b, 18112u, 55336u), _wgslsmith_add_i32(var_1.a, -2147483647i), global1[_wgslsmith_index_u32(47163u, 25u)]), vec2<bool>(u_input.b >= u_input.a.x, false)).c.x)) + -2273f);
    let var_4 = ~u_input.a;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1032f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c.x - 1774f) + _wgslsmith_f_op_f32(var_1.e * var_1.c.x)) - _wgslsmith_f_op_f32(-var_1.c.x)))), 1493f);
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-737f, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-623f - arg_1.x))))), _wgslsmith_f_op_f32(min(-655f, _wgslsmith_f_op_f32(arg_1.x - -647f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_4(vec2<i32>(arg_0, arg_0) << (u_input.a.zx % vec2<u32>(32u)), func_2(global0[_wgslsmith_index_u32(arg_2.x, 10u)], arg_2.x, Struct_2(vec4<u32>(4294967295u, 1u, 1u, u_input.a.x), vec4<u32>(14516u, 0u, 8812u, u_input.a.x), arg_0, global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), vec2<bool>(false, true)), vec4<i32>(2147483647i, -4374i, 9372i, arg_0) >> (vec4<u32>(arg_2.x, 4294967295u, u_input.c, 39891u) % vec4<u32>(32u)), Struct_3(Struct_2(vec4<u32>(u_input.c, 1u, 11736u, u_input.a.x), vec4<u32>(u_input.b, 1u, u_input.c, arg_2.x), arg_0, global1[_wgslsmith_index_u32(arg_2.x, 25u)])))))));
    let var_1 = Struct_2(~vec4<u32>(~_wgslsmith_add_u32(3716u, 0u), _wgslsmith_mult_u32(0u, _wgslsmith_add_u32(u_input.a.x, arg_2.x)), ~abs(arg_2.x), arg_2.x), ~(select(~vec4<u32>(62694u, u_input.c, 0u, 12224u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 0u, arg_2.x, 0u), vec4<u32>(55809u, 112277u, arg_2.x, arg_2.x)), select(true, true, true)) | reverseBits(vec4<u32>(arg_2.x, u_input.b, arg_2.x, 36532u))), -14705i, global1[_wgslsmith_index_u32(max(arg_2.x, u_input.a.x), 25u)]);
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * 1030f)), _wgslsmith_div_f32(-772f, _wgslsmith_f_op_f32(func_5(vec2<bool>(var_1.d.d.x, false)))))), -1120f, var_0.x, var_0.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1219f, var_0.x, var_1.d.e, _wgslsmith_f_op_f32(f32(-1f) * -161f)) - vec4<f32>(1f, -1231f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + -1146f)), _wgslsmith_f_op_f32(func_5(select(var_1.d.d, vec2<bool>(var_1.d.b, var_1.d.b), true))))));
    let var_2 = reverseBits(_wgslsmith_div_vec2_u32(~(~select(vec2<u32>(arg_2.x, 0u), vec2<u32>(0u, 26966u), vec2<bool>(true, true))), firstLeadingBit(_wgslsmith_mult_vec2_u32(u_input.a.zz, ~vec2<u32>(u_input.b, 120134u)))));
    var var_3 = var_1.d;
    return Struct_1(var_3.a, !(!(!all(vec2<bool>(true, var_3.b)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(var_0.zw)), _wgslsmith_f_op_vec2_f32(-var_3.c))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-454f, var_3.c.x))) + vec2<f32>(463f, 1382f))), var_3.c, !var_1.d.b)), vec2<bool>(true, true), 189f);
}

fn func_6(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_1, arg_3: vec4<i32>) -> vec3<bool> {
    var var_0 = _wgslsmith_dot_vec2_u32(u_input.a.yx, firstTrailingBit(firstTrailingBit(vec2<u32>(arg_1, ~u_input.c))));
    let var_1 = ~(-(~(_wgslsmith_sub_i32(arg_3.x, arg_2.a) >> ((u_input.b ^ 50494u) % 32u))));
    let var_2 = global0[_wgslsmith_index_u32(arg_1, 10u)];
    global0 = array<Struct_2, 10>();
    global0 = array<Struct_2, 10>();
    return !vec3<bool>(arg_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1389f, 727f, true)) - 398f) >= 1f, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(1029f, 1609f, 1015f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1565f, -128f, -2002f) - vec3<f32>(-974f, 607f, -658f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(691f, 231f, 782f), _wgslsmith_f_op_vec3_f32(vec3<f32>(244f, -826f, -364f) - vec3<f32>(339f, -252f, -1900f)), vec3<bool>(true, true, true))))));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(444f - 590f), all(vec2<bool>(all(vec3<bool>(false, true, false)) != true, true))));
    global1 = array<Struct_1, 25>();
    let var_2 = !select(!func_6(var_0, firstLeadingBit(u_input.a.x), func_1(-30121i, vec2<f32>(410f, 277f), u_input.a), vec4<i32>(1i, -14633i, -40153i, 0i) << (vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u))), func_6(var_0, ~(~80489u), global1[_wgslsmith_index_u32(u_input.b, 25u)], vec4<i32>(1i, 1i, 1i, 1i)), true);
    var_1 = -1774f;
    var var_3 = u_input.a;
    global0 = array<Struct_2, 10>();
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(441f)) + -777f);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.zy);
}

