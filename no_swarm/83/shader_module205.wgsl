struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(342f * -1679f)), -347f, _wgslsmith_f_op_f32(ceil(-345f)), -2320f)));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(849f, 1055f, var_0.x, var_0.x)) + vec4<f32>(1000f, var_0.x, var_0.x, var_0.x))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 544f, var_0.x, -483f) + vec4<f32>(var_0.x, 489f, var_0.x, 1802f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(652f, var_0.x, var_0.x, var_0.x) * vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)))))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1151f, 1137f, 1607f, 670f)))))));
    let var_1 = Struct_1(~(~u_input.e), any(vec4<bool>(select(arg_1, arg_1, any(vec2<bool>(arg_1, arg_1))), arg_1, any(!vec3<bool>(false, true, arg_1)), true)), arg_2.x, _wgslsmith_sub_vec4_u32(select(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.e, 23475u, u_input.e, u_input.e), firstTrailingBit(vec4<u32>(u_input.c.x, 4294967295u, u_input.e, 4294967295u))), max(firstLeadingBit(vec4<u32>(u_input.e, 68656u, u_input.c.x, u_input.c.x)), select(vec4<u32>(u_input.e, 13557u, u_input.c.x, u_input.e), vec4<u32>(29547u, 4294967295u, 3837u, u_input.e), arg_1)), vec4<bool>(arg_1 | arg_1, false, false, arg_1 & arg_1)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, min(u_input.e, u_input.e), _wgslsmith_add_u32(u_input.e, 77194u), u_input.c.x), ~(vec4<u32>(u_input.e, u_input.e, u_input.e, u_input.c.x) >> (vec4<u32>(214u, 4294967295u, 13038u, 16497u) % vec4<u32>(32u))))));
    let var_2 = ~vec4<u32>(27328u, u_input.e, _wgslsmith_dot_vec3_u32(select(var_1.d.xwy & vec3<u32>(u_input.e, 4294967295u, 45589u), vec3<u32>(var_1.d.x, 4294967295u, u_input.c.x) | var_1.d.wwy, true), select(var_1.d.zzy, var_1.d.yzx, vec3<bool>(arg_1, arg_1, var_1.b)) << (var_1.d.wzy % vec3<u32>(32u))), ~_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.c.x, 1u), 34538u));
    var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-151f, var_0.x, var_0.x, var_0.x))))))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1747f, 649f) - _wgslsmith_f_op_f32(abs(-688f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) + var_0.x))));
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = select(select(select(!arg_0.yx, vec2<bool>(true, true), any(!vec4<bool>(arg_0.x, true, false, arg_0.x))), vec2<bool>(!arg_0.x, -1i != _wgslsmith_sub_i32(u_input.d.x, -59671i)), arg_0.x), !arg_0.zy, arg_0.zw);
    let var_1 = u_input.c.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-461f, 107f, 555f) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -391f), _wgslsmith_f_op_f32(f32(-1f) * -968f), 1710f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1000f * 1562f), _wgslsmith_f_op_f32(231f - -1162f), _wgslsmith_f_op_f32(-435f - -747f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(545f, -690f, 509f) + vec3<f32>(435f, -1043f, -887f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-274f, -882f, 129f) + vec3<f32>(813f, 1056f, 489f))), select(select(arg_0.xxw, vec3<bool>(true, var_0.x, true), var_0.x), arg_0.yzz, !var_0.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-283f, 1035f, 1669f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-435f, -432f, 321f)))))));
    var var_3 = var_2;
    var_3 = vec3<f32>(115f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.b, var_0.x, vec2<i32>(u_input.d.x, u_input.b.x))) - var_2.x))));
    return Struct_1(~(~u_input.c.x), var_0.x, ~(~(~(~(-1i)))), ~(vec4<u32>(~0u, ~31773u, firstLeadingBit(var_1), 4294967295u) | ~vec4<u32>(var_1, u_input.c.x, u_input.c.x, 4294967295u)));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> vec4<bool> {
    let var_0 = any(select(!vec4<bool>(any(vec2<bool>(true, true)), arg_2.a.b | true, true && arg_1.b, true | arg_2.a.b), select(vec4<bool>(true, false, arg_1.b, arg_1.b), select(vec4<bool>(false, false, arg_1.b, arg_2.b.x), vec4<bool>(arg_2.b.x, arg_1.b, arg_2.b.x, arg_2.b.x), select(vec4<bool>(arg_1.b, arg_1.b, false, arg_1.b), vec4<bool>(true, true, false, true), false)), false | any(arg_2.b)), vec4<bool>(arg_2.a.b, false, any(select(vec4<bool>(false, arg_1.b, false, true), vec4<bool>(true, true, true, true), true)), arg_2.a.b)));
    let var_1 = Struct_2(Struct_1(~_wgslsmith_mult_u32(0u, 4294967295u), u_input.a.x < _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-13292i, arg_1.c, arg_2.a.c, arg_2.a.c)), arg_2.a.c ^ -5496i, arg_2.a.d), arg_2.b, ~(~_wgslsmith_div_vec3_u32(arg_2.a.d.xyy, ~vec3<u32>(1u, 11949u, 0u))), arg_1.d, _wgslsmith_f_op_vec4_f32(max(arg_2.e, arg_2.e)));
    var var_2 = !select(!vec3<bool>(arg_2.a.b, all(vec3<bool>(false, arg_1.b, arg_1.b)), any(vec3<bool>(true, false, true))), vec3<bool>(false || any(vec3<bool>(arg_2.b.x, arg_2.b.x, var_1.b.x)), 1112f < arg_0, any(!vec4<bool>(false, var_0, arg_1.b, false))), !(!(!vec3<bool>(arg_2.a.b, var_1.a.b, arg_2.b.x))));
    let var_3 = !select(!select(vec2<bool>(false, false), !vec2<bool>(var_1.b.x, true), arg_2.b.x), var_1.b, arg_1.c <= max(-var_1.a.c, _wgslsmith_dot_vec2_i32(u_input.d.xy, vec2<i32>(arg_1.c, arg_1.c))));
    var var_4 = arg_2;
    return select(select(vec4<bool>(all(var_1.b), true, var_2.x && !arg_1.b, var_4.a.b), select(vec4<bool>(true, var_0, var_4.a.b, var_0), select(vec4<bool>(false, var_1.b.x, var_3.x, true), vec4<bool>(var_2.x, false, false, false), false), select(!vec4<bool>(false, false, var_1.a.b, false), select(vec4<bool>(false, var_4.a.b, arg_1.b, arg_1.b), vec4<bool>(false, true, true, var_3.x), vec4<bool>(false, var_1.b.x, var_1.b.x, var_2.x)), true)), true), select(vec4<bool>(var_4.a.b, false, var_2.x, var_4.a.b & select(false, var_1.a.b, arg_2.b.x)), !vec4<bool>(arg_2.a.a > var_4.a.d.x, all(vec3<bool>(var_3.x, var_0, false)), true, true), false), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -120f), _wgslsmith_f_op_f32(abs(1f)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e.x)));
}

fn func_1(arg_0: vec3<bool>, arg_1: bool, arg_2: vec4<bool>) -> vec4<bool> {
    return !func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -396f), _wgslsmith_f_op_f32(f32(-1f) * -1110f)))), Struct_1(reverseBits(68790u), false, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, u_input.d.x, u_input.a.x, u_input.d.x), vec4<i32>(u_input.d.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(u_input.a.x, u_input.b.x, 21094i, u_input.a.x) << (vec4<u32>(0u, u_input.c.x, u_input.c.x, 1u) % vec4<u32>(32u))), abs(select(vec4<u32>(0u, u_input.e, 4294967295u, 42508u), vec4<u32>(u_input.e, 40917u, u_input.c.x, 41534u), arg_0.x))), Struct_2(func_2(arg_2), !arg_2.yw, select(vec3<u32>(u_input.e, 1u, 61741u), _wgslsmith_div_vec3_u32(vec3<u32>(14845u, 3805u, u_input.e), vec3<u32>(90345u, u_input.c.x, 25981u)), !arg_2.x), vec4<u32>(1u, _wgslsmith_add_u32(4294967295u, u_input.c.x), _wgslsmith_mod_u32(16603u, u_input.c.x), _wgslsmith_clamp_u32(50584u, 15512u, 0u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-161f, -624f, -121f, 648f) * vec4<f32>(1000f, 1515f, 1323f, -235f)) - vec4<f32>(930f, -410f, -1266f, -835f))), 848f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec4<bool>(true, all(vec4<bool>(false, false, false, false)) | select(true, true, false), 4294967295u >= firstTrailingBit(47445u), true), select(func_1(vec3<bool>(true, true, true), true, vec4<bool>(true, true, true, true)), func_4(530f, Struct_1(u_input.e, false, 1475i, vec4<u32>(1u, 1u, 25466u, u_input.e)), Struct_2(Struct_1(u_input.c.x, true, u_input.b.x, vec4<u32>(u_input.e, u_input.e, u_input.c.x, 0u)), vec2<bool>(true, true), vec3<u32>(72284u, u_input.c.x, u_input.c.x), vec4<u32>(0u, u_input.e, 8944u, u_input.e), vec4<f32>(-1140f, 298f, 1359f, 1917f)), _wgslsmith_f_op_f32(-1338f * 433f)), func_1(vec3<bool>(true, true, true), true, select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)))), !func_4(-990f, Struct_1(2614u, false, 19743i, vec4<u32>(u_input.c.x, u_input.e, 14731u, u_input.e)), Struct_2(Struct_1(7989u, true, u_input.d.x, vec4<u32>(55192u, u_input.e, u_input.c.x, 0u)), vec2<bool>(false, false), vec3<u32>(u_input.e, 29697u, 773u), vec4<u32>(0u, 11999u, 30058u, u_input.c.x), vec4<f32>(-225f, -2020f, 1991f, -542f)), _wgslsmith_f_op_f32(f32(-1f) * -1684f))), vec4<bool>(firstLeadingBit(0i) > ~u_input.d.x, (-1614f != _wgslsmith_f_op_f32(round(-1124f))) || true, false, false || !(u_input.c.x != u_input.c.x)), any(func_4(_wgslsmith_f_op_f32(-2609f + _wgslsmith_f_op_f32(f32(-1f) * -1063f)), Struct_1(func_2(vec4<bool>(false, true, false, false)).d.x, true, ~u_input.a.x, select(vec4<u32>(26800u, 4294967295u, 0u, 21218u), vec4<u32>(u_input.c.x, u_input.e, u_input.c.x, 4294967295u), false)), Struct_2(Struct_1(u_input.e, true, u_input.d.x, vec4<u32>(u_input.e, u_input.e, 4294967295u, 30057u)), vec2<bool>(false, false), vec3<u32>(0u, u_input.c.x, u_input.e) ^ vec3<u32>(1u, u_input.c.x, 1u), ~vec4<u32>(22503u, 4294967295u, u_input.c.x, u_input.c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1502f, 839f, -407f, -472f))), _wgslsmith_div_f32(-1849f, _wgslsmith_f_op_f32(func_3(u_input.a, true, vec2<i32>(u_input.a.x, -58542i))))).xxx));
    var var_1 = -(~_wgslsmith_mod_vec2_i32(u_input.b.xy & u_input.b.yw, max(vec2<i32>(39254i, u_input.a.x), u_input.b.wy))) >> (vec2<u32>(u_input.c.x, abs(_wgslsmith_dot_vec2_u32(u_input.c, ~vec2<u32>(u_input.c.x, 34879u)))) % vec2<u32>(32u));
    let var_2 = Struct_1(min(~(3221u | (u_input.c.x >> (1u % 32u))), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c.x, 1u, u_input.c.x, 0u), ~vec4<u32>(48207u, u_input.c.x, u_input.e, u_input.e))), ((u_input.e ^ func_2(var_0).d.x) > (_wgslsmith_mod_u32(u_input.e, u_input.c.x) | ~u_input.c.x)) & true, -firstTrailingBit(_wgslsmith_clamp_i32(countOneBits(u_input.b.x), 2147483647i, -29610i)), vec4<u32>(u_input.c.x, 0u, u_input.c.x, u_input.c.x));
    var var_3 = countOneBits(u_input.c);
    var_3 = ~(~_wgslsmith_mult_vec2_u32(var_2.d.xx, u_input.c));
    let var_4 = func_2(vec4<bool>(true, var_2.b, true, true));
    var_1 = _wgslsmith_sub_vec2_i32(~vec2<i32>(var_1.x, var_2.c) >> (_wgslsmith_mult_vec2_u32(var_2.d.xy, ~var_2.d.wy) % vec2<u32>(32u)), reverseBits(-select(u_input.d.zx, vec2<i32>(2147483647i, 2147483647i), false))) | (((vec2<i32>(var_2.c, -1i) & firstLeadingBit(vec2<i32>(u_input.d.x, var_2.c))) & _wgslsmith_add_vec2_i32(countOneBits(u_input.b.zz), u_input.b.zw)) ^ firstLeadingBit(vec2<i32>(1i ^ u_input.a.x, ~0i)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

