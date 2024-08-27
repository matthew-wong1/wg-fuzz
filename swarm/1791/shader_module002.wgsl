struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2;

var<private> global2: array<u32, 7>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(min(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x + global1.a))))), _wgslsmith_div_u32(global2[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(global1.b, 7u)], 24849u) >> (4294967295u % 32u)), 7u)], abs(_wgslsmith_mod_u32(_wgslsmith_mod_u32(51598u, global1.b), reverseBits(global1.b)))), ~_wgslsmith_clamp_i32(reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 38199i), vec2<i32>(u_input.a.x, -1i))), 0i, firstTrailingBit(~(-6639i))));
    global0 = var_0.a;
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a), arg_0.a.x, any(vec2<bool>(all(vec2<bool>(false, true)), any(vec4<bool>(false, true, false, true)))))), -1184f);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -247f)), 300f), vec2<f32>(855f, 396f), vec2<bool>(true, true))));
    global1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(global1.a)))) - _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(-var_1.a.x))) * _wgslsmith_f_op_f32(-var_1.a.x)), min(_wgslsmith_mod_u32(min(firstTrailingBit(1u), _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10643u, 7u)], 7u)], 7u)], global1.b, global2[_wgslsmith_index_u32(40970u, 7u)])), 1u), abs(countOneBits(1u))), _wgslsmith_add_i32(u_input.a.x, _wgslsmith_mod_i32(-7804i & global1.c, _wgslsmith_div_i32(10643i, 7355i))) & reverseBits(-2147483647i));
    return ~(-_wgslsmith_sub_i32(global1.c, 34956i));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = min((_wgslsmith_mod_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global1.b, 7u)], 41399u) >> (vec2<u32>(arg_0.b, 39025u) % vec2<u32>(32u)), reverseBits(vec2<u32>(81073u, 10154u))) << (min(_wgslsmith_mod_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(3834u, 7u)], 1u), vec2<u32>(0u, 51195u)), countOneBits(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(63230u, 7u)], 7u)], 1u))) % vec2<u32>(32u))) | select(_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, global1.b), select(vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 7u)], arg_0.b), vec2<u32>(35502u, 1u), false)), vec2<u32>(14953u, arg_0.b), false), reverseBits(vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 70884u, global1.b), 0u) | select(~vec2<u32>(1u, global2[_wgslsmith_index_u32(37372u, 7u)]), _wgslsmith_sub_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(global1.b, 7u)]), vec2<u32>(44820u, global1.b)), vec2<bool>(false, false))));
    var var_1 = _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(max(vec3<u32>(global1.b, arg_0.b, var_0.x) | select(vec3<u32>(var_0.x, arg_0.b, var_0.x), vec3<u32>(global1.b, 55049u, 4294967295u), vec3<bool>(arg_1, arg_1, arg_1)), ~(~vec3<u32>(0u, 93390u, 49962u))), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(11653u, 44400u, arg_0.b), countOneBits(vec3<u32>(global1.b, var_0.x, 4294967295u))))), min(_wgslsmith_mult_vec3_u32(firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, global2[_wgslsmith_index_u32(1u, 7u)], var_0.x), vec3<u32>(global1.b, 1u, 33670u), vec3<u32>(arg_0.b, arg_0.b, arg_0.b))), ~select(vec3<u32>(1u, 1u, 1u), vec3<u32>(global2[_wgslsmith_index_u32(global1.b, 7u)], 60501u, global1.b), arg_1)), _wgslsmith_mult_vec3_u32(firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, global2[_wgslsmith_index_u32(1u, 7u)], 15845u), vec3<u32>(global1.b, global1.b, 0u))), abs(~vec3<u32>(71234u, var_0.x, 13826u)))));
    global2 = array<u32, 7>();
    let var_2 = _wgslsmith_mod_u32(50102u, arg_0.b);
    var var_3 = vec3<bool>(-1i > arg_0.c, all(!(!select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(false, true, false), arg_1))), !arg_1);
    return ~_wgslsmith_mult_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 0u, 41496u, 4294967295u) >> (vec4<u32>(var_2, 6269u, var_2, 41958u) % vec4<u32>(32u)), vec4<u32>(var_1.x, 1u, 41615u, 41974u) ^ vec4<u32>(4294967295u, arg_0.b, var_0.x, global2[_wgslsmith_index_u32(0u, 7u)]), ~vec4<u32>(49719u, 0u, var_2, arg_0.b)), vec4<u32>(4294967295u, abs(91361u), select(4294967295u, 0u, all(vec3<bool>(var_3.x, true, true))), 1u));
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.a, 982f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.a))))))));
    global2 = array<u32, 7>();
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1470f))), global1.a, 203f);
    let var_1 = _wgslsmith_clamp_vec4_u32(~func_4(Struct_2(_wgslsmith_f_op_f32(ceil(global1.a)), max(102671u, global2[_wgslsmith_index_u32(0u, 7u)]), func_3(Struct_1(var_0.zy))), arg_0.x, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-622f, var_0.x)))), ~max(_wgslsmith_clamp_vec4_u32(~vec4<u32>(26853u, 4294967295u, 4294967295u, 4294967295u), firstTrailingBit(vec4<u32>(global2[_wgslsmith_index_u32(38302u, 7u)], 54464u, 12442u, global2[_wgslsmith_index_u32(35025u, 7u)])), firstLeadingBit(vec4<u32>(global1.b, 43629u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(47425u, 7u)], 7u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(96303u, 7u)], 7u)], 7u)]))), vec4<u32>(0u, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(57892u, 7u)], 9868u, 28674u), 7u)], abs(1u), 0u)), ~(_wgslsmith_add_vec4_u32(vec4<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 4294967295u, global2[_wgslsmith_index_u32(global1.b, 7u)]), vec4<u32>(1u, 43454u, 1u, 4294967295u)) << (_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, 91410u, 12461u), vec4<u32>(global2[_wgslsmith_index_u32(72706u, 7u)], global2[_wgslsmith_index_u32(60640u, 7u)], 18200u, global2[_wgslsmith_index_u32(0u, 7u)])) % vec4<u32>(32u))) ^ ~vec4<u32>(~global2[_wgslsmith_index_u32(14381u, 7u)], global2[_wgslsmith_index_u32(~global1.b, 7u)], _wgslsmith_div_u32(74531u, global2[_wgslsmith_index_u32(13468u, 7u)]), global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(1u, 7u)], 7u)]));
    global2 = array<u32, 7>();
    return Struct_2(var_0.x, _wgslsmith_mod_u32(select(~(~1u), 9158u, arg_0.x), var_1.x), u_input.a.x);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_1 {
    global0 = -698f;
    global1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.a)) - -1011f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) - _wgslsmith_f_op_f32(round(global1.a))))), 1000f), 1u, _wgslsmith_dot_vec2_i32(~abs(vec2<i32>(arg_0.c, -25691i)), u_input.a.xz));
    var var_0 = Struct_2(_wgslsmith_f_op_f32(func_2(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), false))).a * -568f), global2[_wgslsmith_index_u32(4294967295u, 7u)], global1.c);
    var_0 = func_2(vec4<bool>(all(vec2<bool>(true, false)) & !(-295f != arg_0.a), !all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.b, 39072u, 70614u), vec3<u32>(arg_0.b, global1.b, 14417u) << (vec3<u32>(16046u, global2[_wgslsmith_index_u32(80607u, 7u)], 70709u) % vec3<u32>(32u))), 7u)] < (_wgslsmith_div_u32(0u, arg_0.b) & reverseBits(arg_0.b)), false));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.a * 676f))), arg_0.b, 1i);
    return Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1344f + 214f) * _wgslsmith_f_op_f32(round(-224f))), _wgslsmith_f_op_f32(select(857f, var_1.a, true))) + _wgslsmith_div_vec2_f32(vec2<f32>(global1.a, var_0.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-415f, arg_0.a)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, 995f)))))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> f32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(round(arg_2.a)), -975f, arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1241f - arg_2.a) + -252f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.a))))));
    var var_1 = arg_1;
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_1.a));
    global2 = array<u32, 7>();
    let var_2 = u_input.a.zz;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(196f, -813f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3))))), _wgslsmith_f_op_f32(select(arg_3, _wgslsmith_f_op_f32(-400f - -1196f), true))));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global2 = array<u32, 7>();
    let var_0 = arg_1;
    global0 = -277f;
    global2 = array<u32, 7>();
    global0 = _wgslsmith_div_f32(arg_1.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_6(Struct_2(global1.a, global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], _wgslsmith_div_i32(global1.c, 1i)), func_5(func_2(vec4<bool>(true, true, true, true)), vec4<i32>(29320i, 0i, 30309i, arg_0)), func_2(vec4<bool>(true, true, true, true)), global1.a)))));
    return arg_1;
}

fn func_7(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: f32, arg_3: f32) -> u32 {
    let var_0 = global1.c;
    global0 = arg_3;
    var var_1 = ~min(24889u, 0u);
    let var_2 = 0u;
    var var_3 = select(!select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true)), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(true, false, false, true)))), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    return 40056u & _wgslsmith_add_u32(global2[_wgslsmith_index_u32(global1.b, 7u)], global1.b);
}

fn func_8(arg_0: u32, arg_1: u32, arg_2: bool) -> Struct_2 {
    global2 = array<u32, 7>();
    let var_0 = !(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a, global1.a) - _wgslsmith_f_op_f32(ceil(global1.a))) > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.a)))) || (any(vec3<bool>(false, global2[_wgslsmith_index_u32(38728u, 7u)] < 71745u, true)) & all(vec2<bool>(u_input.a.x >= 3327i, true)));
    var var_1 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1372f, _wgslsmith_div_f32(-430f, _wgslsmith_f_op_f32(global1.a - -1000f))))));
    let var_2 = Struct_2(925f, 0u, _wgslsmith_mod_i32(global1.c, u_input.a.x));
    global2 = array<u32, 7>();
    return func_2(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a, -2798f) - -487f) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a), func_2(vec4<bool>(arg_2, arg_2, true, false)).a), any(vec2<bool>(arg_2, true)) || all(!vec4<bool>(true, var_0, true, arg_2)), var_0, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global1.a, global2[_wgslsmith_index_u32(countOneBits(1u), 7u)], countOneBits(global1.c));
    global1 = func_8(global1.b, min(1u, func_7(func_1(0i, Struct_1(vec2<f32>(1655f, var_0.a))), vec4<f32>(var_0.a, _wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(-129f - var_0.a), global1.a), 1173f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-530f, global1.a)))), countOneBits(var_0.c) > firstTrailingBit(-u_input.a.x));
    let var_1 = func_1(-1i, func_5(func_8(_wgslsmith_add_u32(48000u, 342u) & ~global2[_wgslsmith_index_u32(0u, 7u)], var_0.b, true), -vec4<i32>(20484i, -2147483647i, global1.c, -1i) | -_wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.a.x, 1i, var_0.c), vec4<i32>(global1.c, var_0.c, -6046i, -13401i))));
    let var_2 = func_2(select(vec4<bool>(true, any(vec3<bool>(false, true, false)), any(vec2<bool>(true, false)), true), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), true), vec4<bool>(false, true, true, false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), false)), !any(vec4<bool>(true, false, true, false))));
    let var_3 = _wgslsmith_add_u32(4294967295u, var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-582f, -1645f) - vec2<f32>(256f, var_0.a)) - _wgslsmith_f_op_vec2_f32(-var_1.a)), _wgslsmith_f_op_vec2_f32(-var_1.a)) - _wgslsmith_f_op_vec2_f32(-func_5(func_8(1u, var_0.b, true), -vec4<i32>(21339i, var_0.c, u_input.a.x, global1.c)).a)), ~(~var_0.b), select(firstLeadingBit(vec4<u32>(74702u, var_2.b, var_0.b, 1u) >> (vec4<u32>(4294967295u, 20416u, global1.b, global2[_wgslsmith_index_u32(var_2.b, 7u)]) % vec4<u32>(32u))), vec4<u32>(var_2.b << (var_2.b % 32u), 50073u, 4294967295u, 4294967295u), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true))) >> (countOneBits(~vec4<u32>(var_3, global1.b, global2[_wgslsmith_index_u32(var_2.b, 7u)], 1u)) % vec4<u32>(32u)), ~(~28751u), var_1.a);
}

