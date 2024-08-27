struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(-754f, -2948f, 646f, -1560f), vec4<f32>(-2004f, 606f, -486f, -1532f), vec4<f32>(1000f, 167f, 403f, 456f), vec4<f32>(591f, 160f, -1330f, -1000f), vec4<f32>(-1935f, 1536f, 320f, 1037f), vec4<f32>(1130f, 335f, 828f, -186f), vec4<f32>(-1198f, 1364f, -2975f, 1133f), vec4<f32>(-323f, 712f, -1009f, 1402f), vec4<f32>(430f, 537f, 2027f, 1000f), vec4<f32>(-236f, 1398f, -1313f, 485f), vec4<f32>(372f, -401f, 138f, 1012f));

var<private> global1: vec2<i32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>, arg_3: vec3<f32>) -> vec4<bool> {
    var var_0 = -1324f;
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.x), arg_3.x)));
    global1 = firstLeadingBit(min(_wgslsmith_sub_vec2_i32(abs(arg_0.c), firstTrailingBit(vec2<i32>(0i, arg_0.c.x) >> (vec2<u32>(68246u, arg_2.x) % vec2<u32>(32u)))), select(vec2<i32>(1i, 1i), ~vec2<i32>(global1.x, u_input.a.x), !all(arg_0.d.zxy))));
    global0 = array<vec4<f32>, 11>();
    global0 = array<vec4<f32>, 11>();
    return arg_0.b;
}

fn func_3(arg_0: vec2<i32>) -> vec4<bool> {
    var var_0 = Struct_1(select(select(func_2(Struct_1(vec2<bool>(false, true), vec4<bool>(true, true, true, true), arg_0, vec4<bool>(true, true, false, true)), -2147483647i, vec2<u32>(10708u, 22303u), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, -144f, -655f), vec3<f32>(-1192f, 196f, -1000f))).xx, vec2<bool>(true, true), vec2<bool>(-22810i != global1.x, true)), select(func_2(Struct_1(vec2<bool>(false, true), vec4<bool>(true, true, false, true), arg_0, vec4<bool>(false, true, true, true)), ~u_input.a.x, vec2<u32>(1u, 1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-566f, -719f, -380f))).xw, select(func_2(Struct_1(vec2<bool>(false, true), vec4<bool>(false, false, true, true), u_input.a.xz, vec4<bool>(true, true, false, true)), 54497i, vec2<u32>(2195u, 0u), vec3<f32>(231f, -739f, 805f)).xy, vec2<bool>(true, true), vec2<bool>(false, true)), false), false), select(vec4<bool>(true, true, true, true), !(!func_2(Struct_1(vec2<bool>(false, true), vec4<bool>(true, false, true, false), vec2<i32>(u_input.a.x, u_input.a.x), vec4<bool>(false, false, true, true)), global1.x, vec2<u32>(4294967295u, 39588u), vec3<f32>(464f, -397f, -148f))), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), false))), vec2<i32>(_wgslsmith_div_i32(~arg_0.x, max(~u_input.a.x, u_input.a.x)), ~arg_0.x), vec4<bool>(true, true, true, true));
    let var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(abs(var_0.c.x), firstTrailingBit(global1.x)), -(u_input.a.zz ^ -abs(u_input.a.zw)));
    var_0 = Struct_1(select(!vec2<bool>(true, all(vec2<bool>(var_0.d.x, true))), !var_0.d.yz, all(vec4<bool>(var_0.d.x, var_0.d.x | true, all(vec3<bool>(var_0.d.x, var_0.d.x, var_0.a.x)), !var_0.d.x))), vec4<bool>(false, all(select(!vec3<bool>(var_0.d.x, var_0.d.x, var_0.b.x), vec3<bool>(true, false, false), all(vec2<bool>(var_0.b.x, false)))), true, !(!all(var_0.b.yy))), _wgslsmith_add_vec2_i32(-_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.zw, vec2<i32>(-35817i, var_0.c.x)), vec2<i32>(var_1.x, -1i)), vec2<i32>(-21981i | (-54244i ^ arg_0.x), countOneBits(~71769i))), select(func_2(Struct_1(select(var_0.a, var_0.a, vec2<bool>(false, var_0.d.x)), vec4<bool>(var_0.a.x, false, var_0.d.x, var_0.d.x), var_1, !var_0.d), firstLeadingBit(1i), firstLeadingBit(vec2<u32>(1u, 1u)), vec3<f32>(-1055f, _wgslsmith_f_op_f32(floor(689f)), _wgslsmith_f_op_f32(-1158f * -939f))), vec4<bool>(var_0.d.x, var_0.b.x, all(vec4<bool>(true, var_0.b.x, false, var_0.a.x)) != true, var_0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-252f, -1457f)) * _wgslsmith_div_f32(-343f, -439f)) <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(582f))))));
    global1 = _wgslsmith_mult_vec2_i32(vec2<i32>(~u_input.a.x, 18423i), _wgslsmith_add_vec2_i32(firstLeadingBit(firstTrailingBit(vec2<i32>(var_1.x, -24816i))) & vec2<i32>(select(-48070i, -13053i, var_0.a.x), _wgslsmith_mod_i32(2147483647i, 15835i)), firstLeadingBit(vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_1.x, 15240i), u_input.a.wzy)))));
    let var_2 = _wgslsmith_f_op_f32(-1f);
    return vec4<bool>(select(!(!(!var_0.a.x)), false, true), true, var_0.d.x, var_0.b.x | any(var_0.d));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(!arg_0.d.zz, !vec4<bool>(arg_0.b.x, -2147483647i >= _wgslsmith_add_i32(u_input.a.x, global1.x), any(!vec2<bool>(true, arg_0.a.x)), arg_0.b.x), countOneBits(vec2<i32>(0i, min(27975i, 1i))), !vec4<bool>(func_2(Struct_1(vec2<bool>(false, arg_0.b.x), arg_0.d, u_input.a.yy, arg_0.b), -2147483647i, firstLeadingBit(vec2<u32>(8486u, 1u)), vec3<f32>(848f, 689f, -393f)).x, (u_input.a.x == -2147483647i) & !arg_0.a.x, true, true));
    var var_1 = var_0;
    let var_2 = countOneBits(~vec2<i32>(~_wgslsmith_div_i32(u_input.a.x, -1i), -var_1.c.x));
    let var_3 = select(vec4<bool>(!(!var_1.d.x), !var_1.a.x, var_0.a.x, true), arg_0.b, var_0.b);
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(681f - -702f), _wgslsmith_f_op_f32(f32(-1f) * -777f), _wgslsmith_f_op_f32(f32(-1f) * -1076f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(538f, 135f, 1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1477f, 1649f, 478f)))) - vec3<f32>(-2539f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2560f, -793f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -253f)))));
    return var_0;
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x ^ -51030i, firstLeadingBit(_wgslsmith_div_i32(1i, -1i))), u_input.a.yy, _wgslsmith_clamp_vec2_i32(~vec2<i32>(_wgslsmith_div_i32(2147483647i, 1i), -global1.x), -u_input.a.yz, vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(-5380i, 17563i), vec2<i32>(1i, 41443i)), u_input.a.x)));
    global0 = array<vec4<f32>, 11>();
    var var_1 = func_4(Struct_1(vec2<bool>(false, all(func_2(Struct_1(vec2<bool>(true, true), vec4<bool>(true, true, false, true), vec2<i32>(-2518i, var_0.x), vec4<bool>(true, false, true, false)), global1.x, vec2<u32>(67936u, arg_0), vec3<f32>(100f, -343f, -287f)))), func_3(abs(_wgslsmith_sub_vec2_i32(u_input.a.xy, vec2<i32>(-1i, var_0.x)))), ~vec2<i32>(countOneBits(global1.x), global1.x), !func_3(select(u_input.a.xw, u_input.a.xx, false))));
    let var_2 = Struct_1(var_1.a, select(var_1.d, !select(vec4<bool>(var_1.a.x, var_1.d.x, true, var_1.d.x), var_1.d, select(var_1.b.x, false, var_1.d.x)), !(!var_1.d.x) && any(!var_1.a)), firstTrailingBit(reverseBits(func_4(Struct_1(vec2<bool>(true, var_1.b.x), vec4<bool>(false, var_1.a.x, var_1.d.x, true), vec2<i32>(var_1.c.x, 24135i), vec4<bool>(true, false, false, true))).c)), vec4<bool>(false, false, !select(any(var_1.b.zx), var_1.b.x, var_1.d.x), true));
    var_1 = func_4(func_4(Struct_1(!(!vec2<bool>(var_1.a.x, true)), !vec4<bool>(true, var_2.d.x, false, false), ~var_1.c, !func_3(vec2<i32>(0i, var_1.c.x)))));
    return true;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    global1 = min(-func_4(func_4(arg_1)).c, vec2<i32>(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(global1.x, 1i, u_input.a.x)), reverseBits(select(u_input.a.zww, vec3<i32>(arg_1.c.x, 1i, -26748i), arg_1.b.yyw))), abs(~global1.x ^ global1.x)));
    var var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(4294967295u, 11u)]), vec4<f32>(566f, 1330f, 418f, arg_0.x), var_0.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1061f, -353f, -1000f, arg_0.x) - global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(35858u, 42049u, 22921u, 9616u), vec4<u32>(23526u, 0u, 59611u, 24911u)), 11u)]))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(abs(1u), 11u)]) + global0[_wgslsmith_index_u32(~max(42922u, 1u), 11u)]))));
    let var_2 = 5547u;
    var_1 = global0[_wgslsmith_index_u32(4294967295u >> (var_2 % 32u), 11u)];
    return Struct_1(!var_0.a, arg_1.b, vec2<i32>(_wgslsmith_sub_i32(var_0.c.x, -15813i >> (var_2 % 32u)) << (~var_2 % 32u), -2147483647i), var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1291f, 113f)))), Struct_1(vec2<bool>(any(vec3<bool>(true, true, true)), 641f > _wgslsmith_f_op_f32(step(2097f, -1000f))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), false), true), vec4<bool>(func_1(21803u), true, all(vec4<bool>(false, false, false, true)), true), all(vec3<bool>(true, false, true))), select(max(_wgslsmith_mult_vec2_i32(u_input.a.zy, vec2<i32>(u_input.a.x, -20128i)), u_input.a.zy), ~(-u_input.a.wx), !func_2(Struct_1(vec2<bool>(true, true), vec4<bool>(true, true, false, true), u_input.a.zw, vec4<bool>(false, false, false, false)), u_input.a.x, vec2<u32>(945u, 0u), vec3<f32>(-1209f, 1102f, -223f)).zz), vec4<bool>(true, true, true, true)));
    var var_1 = vec3<bool>(true, var_0.a.x || false, var_0.b.x);
    var var_2 = Struct_1(select(!select(!vec2<bool>(var_1.x, var_0.d.x), func_2(Struct_1(var_1.yx, var_0.b, u_input.a.yy, vec4<bool>(true, true, false, var_1.x)), global1.x, vec2<u32>(4294967295u, 1u), vec3<f32>(-1000f, -297f, -245f)).zy, select(vec2<bool>(false, true), vec2<bool>(var_0.d.x, var_1.x), false)), var_0.d.wy, all(!var_0.d.zwx)), vec4<bool>(true, true && any(!vec4<bool>(false, var_1.x, true, var_1.x)), var_1.x, var_1.x), u_input.a.xx, !vec4<bool>(true, func_2(func_4(Struct_1(var_1.yy, vec4<bool>(var_0.a.x, false, var_1.x, var_1.x), u_input.a.wz, var_0.d)), var_0.c.x, vec2<u32>(49573u, 4294967295u), vec3<f32>(1342f, -753f, 287f)).x, true, false));
    var var_3 = Struct_1(func_5(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -323f), -1000f), _wgslsmith_f_op_vec2_f32(vec2<f32>(990f, -171f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-539f, 178f)))), func_4(Struct_1(!var_0.b.wz, select(var_0.d, vec4<bool>(true, var_0.b.x, var_0.b.x, var_2.d.x), var_0.d.x), var_0.c, var_0.d))).a, vec4<bool>(!func_1(1u), true, var_0.b.x | true, all(vec4<bool>(true, !var_2.b.x, var_2.d.x, func_4(Struct_1(var_1.zx, var_0.d, var_2.c, vec4<bool>(var_0.b.x, var_0.a.x, false, false))).b.x))), var_0.c, vec4<bool>(!all(var_0.d.yz), true, func_4(Struct_1(func_3(var_0.c).yz, vec4<bool>(true, var_1.x, var_2.b.x, true), ~vec2<i32>(u_input.a.x, -7817i), !vec4<bool>(false, var_1.x, var_0.a.x, var_1.x))).b.x, func_1(1u)));
    var var_4 = vec3<i32>(-u_input.a.x, 1i, var_2.c.x);
    var var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(580f, 426f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(695f, -996f) - vec2<f32>(567f, -722f))) - _wgslsmith_div_vec2_f32(vec2<f32>(-524f, 1000f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(833f, -484f), vec2<f32>(1000f, -411f)))))));
    var_5 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-648f, _wgslsmith_f_op_f32(-var_5.x)));
    var var_6 = Struct_1(vec2<bool>(any(!(!var_2.d.xy)), true), !var_2.d, ~(-(_wgslsmith_div_vec2_i32(vec2<i32>(1i, var_3.c.x), vec2<i32>(var_3.c.x, u_input.a.x)) ^ func_4(Struct_1(vec2<bool>(var_3.d.x, false), vec4<bool>(var_1.x, var_0.d.x, true, var_1.x), u_input.a.yy, vec4<bool>(var_2.a.x, var_2.a.x, false, true))).c)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(true, false)), var_2.b.x, false, var_2.d.x && var_1.x), false), !vec4<bool>(var_2.a.x, false, all(var_2.b), any(vec3<bool>(var_0.b.x, var_1.x, var_3.d.x))), vec4<bool>(true, !var_3.b.x && func_4(Struct_1(var_2.d.yx, vec4<bool>(var_2.b.x, var_1.x, true, false), vec2<i32>(-6134i, var_4.x), vec4<bool>(true, true, var_2.a.x, var_1.x))).b.x, !var_2.d.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(1u, 1u)), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, 12378u, 1u)), ~vec3<u32>(0u, 0u, 1u)), _wgslsmith_mod_u32(~4294967295u, 1u), select(select(1u, 4294967295u, false), 4294967295u, var_3.d.x && var_1.x)), (max(~vec3<i32>(var_4.x, -1i, -2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, var_2.c.x, 2147483647i), u_input.a.yzx, vec3<i32>(var_4.x, var_6.c.x, 10827i))) ^ vec3<i32>(~var_4.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c.x, 9355i), var_6.c), ~global1.x)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_5.x), _wgslsmith_f_op_f32(f32(-1f) * -588f)), var_5.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.x - var_5.x))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.x, var_5.x, -790f))))))));
}

