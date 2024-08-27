struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: u32 = 22467u;

var<private> global2: vec3<i32> = vec3<i32>(8096i, 14827i, 31045i);

var<private> global3: array<Struct_3, 13>;

var<private> global4: vec2<i32>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32) -> i32 {
    global2 = vec3<i32>(_wgslsmith_add_i32(-arg_0.x, global4.x) & min(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, -37531i, 2147483647i), vec3<i32>(global4.x, -2147483647i, global2.x))), _wgslsmith_dot_vec3_i32(firstTrailingBit(arg_0.zzy), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, global2.x, 0i), arg_0.wwx))), -1i, max(~(~_wgslsmith_sub_i32(-40549i, arg_0.x)), abs(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), arg_0.xx), _wgslsmith_dot_vec2_i32(u_input.b.ww, u_input.b.zy)))));
    global2 = u_input.b.wzz;
    global2 = _wgslsmith_sub_vec3_i32(~_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(-2147483647i, 1i, 2147483647i)), select(u_input.b.zzw, vec3<i32>(global2.x, -1i, global4.x), vec3<bool>(global0.x, false, global0.x))), arg_0.xxw & (~u_input.b.yxw ^ arg_0.xzz)) >> (vec3<u32>(~4294967295u | u_input.d, _wgslsmith_sub_u32(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, arg_1), vec2<u32>(arg_1, arg_1))), ~(~(u_input.a | u_input.d))) % vec3<u32>(32u));
    global1 = arg_1;
    let var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-571f - -353f), _wgslsmith_f_op_f32(sign(-1000f)), 985f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1420f, 434f)), _wgslsmith_div_f32(-682f, 344f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, -443f))))), _wgslsmith_mult_vec3_i32(arg_0.yxy, max(min(~u_input.b.zww, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, 2147483647i, global4.x), vec3<i32>(-1i, u_input.c, -19931i))), -vec3<i32>(2147483647i, arg_0.x, u_input.b.x))), ~0u);
    return -_wgslsmith_mult_i32(var_0.b.x, arg_0.x);
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_2 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1102f, _wgslsmith_f_op_f32(f32(-1f) * -726f), _wgslsmith_f_op_f32(1073f + _wgslsmith_f_op_f32(f32(-1f) * -373f)))), _wgslsmith_mod_vec3_i32(vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, 1i, -18601i), u_input.b.yyy), global4.x >> (4294967295u % 32u), func_3(u_input.b, ~u_input.a)), _wgslsmith_clamp_vec3_i32(-u_input.b.zyx, -firstTrailingBit(u_input.b.wxz), firstTrailingBit(countOneBits(vec3<i32>(global4.x, 0i, 0i))))), u_input.a);
    var var_1 = Struct_1(~firstTrailingBit(select(~vec3<u32>(var_0.c, var_0.c, 0u), vec3<u32>(u_input.d, var_0.c, 35548u) >> (vec3<u32>(68289u, 68742u, u_input.a) % vec3<u32>(32u)), global0.xwx)), var_0.a.x);
    var var_2 = Struct_3(vec2<f32>(297f, _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_1.b)), 1000f))))), Struct_2(select(vec3<u32>(u_input.d, 4294967295u, _wgslsmith_dot_vec3_u32(var_1.a, var_1.a)), (vec3<u32>(20820u, var_1.a.x, 0u) ^ vec3<u32>(4294967295u, var_0.c, var_0.c)) | var_1.a, !(!vec3<bool>(true, arg_1, false))), _wgslsmith_f_op_vec3_f32(-var_0.a.wwz), vec4<f32>(196f, _wgslsmith_f_op_f32(round(-869f)), _wgslsmith_f_op_f32(min(var_1.b, _wgslsmith_f_op_f32(-var_1.b))), _wgslsmith_f_op_f32(f32(-1f) * -1342f)), abs(~(~vec3<u32>(1188u, var_0.c, u_input.a)))), abs(vec3<u32>(var_0.c, _wgslsmith_dot_vec3_u32(var_1.a | var_1.a, _wgslsmith_mult_vec3_u32(vec3<u32>(39131u, u_input.d, var_0.c), var_1.a)), var_0.c)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-var_0.a.xxx);
    let var_4 = Struct_1(var_2.c, -605f);
    return Struct_2(_wgslsmith_mod_vec3_u32(var_2.c, ~var_4.a) >> (((var_1.a << ((vec3<u32>(70055u, 0u, var_0.c) ^ vec3<u32>(5613u, 1332u, var_0.c)) % vec3<u32>(32u))) | reverseBits(abs(var_4.a))) % vec3<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(-var_4.b), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(abs(var_0.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -512f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-202f, 1640f, -1000f, var_4.b)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-272f - var_1.b), var_2.b.c.x, _wgslsmith_f_op_f32(round(var_4.b)), var_4.b))), _wgslsmith_clamp_vec3_u32(var_2.b.d << ((~var_1.a << (firstLeadingBit(var_2.b.d) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(98387u, ~countOneBits(var_0.c), ~26084u), vec3<u32>(_wgslsmith_mult_u32(var_1.a.x, _wgslsmith_add_u32(26908u, 35130u)), _wgslsmith_div_u32(_wgslsmith_mod_u32(16315u, var_2.c.x), 7170u), ~countOneBits(var_4.a.x))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> Struct_4 {
    var var_0 = global3[_wgslsmith_index_u32(21929u, 13u)];
    let var_1 = Struct_1(_wgslsmith_clamp_vec3_u32(~(firstLeadingBit(vec3<u32>(1u, 4294967295u, 4294967295u)) & ~arg_1.c), arg_1.c ^ vec3<u32>(u_input.a, _wgslsmith_dot_vec2_u32(arg_0.d.xy, arg_1.b.d.zx), arg_0.d.x ^ arg_1.b.d.x), select(vec3<u32>(_wgslsmith_add_u32(1u, 0u), arg_1.b.d.x, ~arg_0.d.x), arg_0.d, !vec3<bool>(true, false, global0.x))), _wgslsmith_f_op_f32(ceil(func_2(-646f, !(arg_1.b.c.x <= var_0.b.b.x)).b.x)));
    var_0 = arg_1;
    let var_2 = -global4.x;
    var var_3 = Struct_4(vec4<f32>(_wgslsmith_div_f32(1087f, -1141f), var_1.b, var_0.b.c.x, arg_0.c.x), firstLeadingBit(-u_input.b.wyw) ^ _wgslsmith_add_vec3_i32(u_input.b.zzz, u_input.b.ywy), 1u | u_input.d);
    return Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(368f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))))), vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, var_3.b.x, var_2), _wgslsmith_mod_vec3_i32(var_3.b, var_3.b)), _wgslsmith_sub_u32(min(u_input.a, ~22334u), var_3.c) ^ abs(_wgslsmith_add_u32(1u, 37900u)));
}

fn func_1(arg_0: bool) -> vec2<u32> {
    var var_0 = func_4(func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1073f, 410f, u_input.a <= u_input.d)))), (arg_0 == true) | (true && any(global0.xy))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(reverseBits(u_input.a), reverseBits(62995u), u_input.d)), countOneBits(~_wgslsmith_mod_vec3_u32(vec3<u32>(7887u, 0u, u_input.a), vec3<u32>(u_input.a, u_input.a, 4294967295u)))), 13u)]);
    var var_1 = 40137u;
    global1 = _wgslsmith_mult_u32(~(~4294967295u), u_input.d);
    var_1 = ~8038u;
    global1 = abs(~(80010u >> (1u % 32u)));
    return _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(~u_input.a, ~97055u), vec2<u32>(_wgslsmith_sub_u32(4294967295u, var_0.c), u_input.a ^ 14882u), ~vec2<u32>(var_0.c, 18201u) >> ((vec2<u32>(var_0.c, 58587u) >> (vec2<u32>(var_0.c, 32078u) % vec2<u32>(32u))) % vec2<u32>(32u))), select(vec2<u32>(firstTrailingBit(525u), 1u), ~vec2<u32>(u_input.d, var_0.c), true)) ^ ~select(_wgslsmith_mod_vec2_u32(~vec2<u32>(var_0.c, 1u), ~vec2<u32>(5299u, var_0.c)), vec2<u32>(u_input.d, u_input.d | u_input.d), select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, true), global0.yx), select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false), global0.xy), global0.x));
}

fn func_5(arg_0: vec2<u32>, arg_1: bool) -> Struct_2 {
    var var_0 = u_input.d;
    var_0 = ~4294967295u;
    let var_1 = vec4<u32>(((u_input.a & func_2(629f, false).a.x) ^ 19920u) << (~1u % 32u), ~_wgslsmith_add_u32(0u, u_input.a), 25551u, 31030u);
    global1 = ~_wgslsmith_add_u32((select(12862u, arg_0.x, true) ^ (var_1.x ^ u_input.a)) ^ arg_0.x, firstLeadingBit(select(19162u, arg_0.x, global0.x) ^ var_1.x));
    var var_2 = ~_wgslsmith_mod_i32(~(~abs(2147483647i)), select(1i, u_input.c, global0.x));
    return func_2(412f, true);
}

fn func_6(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = func_3(-(~(-u_input.b)), reverseBits(_wgslsmith_sub_u32(arg_3.d.x, _wgslsmith_mod_u32(arg_0.d.x & arg_0.d.x, 26444u))));
    var var_1 = func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1000f)))), select(true, any(vec4<bool>(false, arg_2.x, false, true)), all(vec4<bool>(select(arg_2.x, true, true), all(arg_2), any(vec4<bool>(true, global0.x, true, global0.x)), all(global0.ywy)))));
    var var_2 = vec4<f32>(-458f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1815f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_3.c.x, 929f)), arg_3.b.x)), 1303f), _wgslsmith_f_op_f32(-568f - -1338f), _wgslsmith_f_op_f32(f32(-1f) * -705f));
    let var_3 = true;
    let var_4 = func_4(Struct_2(~var_1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-900f, var_1.b.x, 368f) * arg_0.b), var_1.c.wxw, false)) + vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(select(arg_0.b.x, 2317f, true)), _wgslsmith_f_op_f32(arg_0.b.x + 381f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.c + _wgslsmith_f_op_vec4_f32(var_1.c - arg_3.c))), ((arg_3.a << (vec3<u32>(arg_3.d.x, 11995u, var_1.d.x) % vec3<u32>(32u))) | ~vec3<u32>(38868u, 0u, 0u)) | ~func_2(-505f, global0.x).d), Struct_3(_wgslsmith_f_op_vec2_f32(-var_1.b.xz), Struct_2(vec3<u32>(0u << (var_1.d.x % 32u), ~arg_0.a.x, _wgslsmith_mult_u32(96164u, 0u)), vec3<f32>(func_4(Struct_2(vec3<u32>(1u, 4294967295u, arg_3.a.x), vec3<f32>(var_2.x, var_2.x, arg_0.c.x), var_1.c, vec3<u32>(arg_0.d.x, var_1.d.x, arg_0.a.x)), global3[_wgslsmith_index_u32(15162u, 13u)]).a.x, _wgslsmith_f_op_f32(select(var_1.c.x, var_2.x, true)), _wgslsmith_f_op_f32(var_2.x * 1160f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1700f, arg_0.b.x, 1213f, 170f) * vec4<f32>(arg_3.c.x, arg_3.c.x, arg_0.b.x, var_2.x)), abs(_wgslsmith_div_vec3_u32(arg_3.d, var_1.d))), vec3<u32>(~var_1.a.x, u_input.a, ~arg_3.d.x)));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(func_1(false) & firstTrailingBit(reverseBits(vec2<u32>(u_input.a, u_input.a))), global0.x), select(vec2<i32>(-global2.x, global4.x), abs(vec2<i32>(abs(u_input.b.x), u_input.b.x)), true), global0.yx, Struct_2(_wgslsmith_sub_vec3_u32(firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 70195u, u_input.d), vec3<u32>(u_input.d, u_input.a, 101338u))), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(0u, u_input.a, u_input.d)), vec3<u32>(23441u, 4294967295u, u_input.d) >> (vec3<u32>(u_input.d, 36784u, u_input.d) % vec3<u32>(32u)))), func_4(func_2(-2074f, true), Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1710f, -500f)), Struct_2(vec3<u32>(50781u, 4294967295u, u_input.d), vec3<f32>(-142f, 157f, -579f), vec4<f32>(495f, 1572f, -1000f, -2313f), vec3<u32>(u_input.d, u_input.a, 4294967295u)), max(vec3<u32>(u_input.a, u_input.d, 4294967295u), vec3<u32>(u_input.d, u_input.a, u_input.d)))).a.xzw, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-547f, -1127f, -749f, -1119f)) + vec4<f32>(877f, -1902f, _wgslsmith_f_op_f32(min(726f, 1000f)), _wgslsmith_f_op_f32(-1111f - 1258f))), vec3<u32>(u_input.a, _wgslsmith_div_u32(u_input.a, 1u), reverseBits(_wgslsmith_mult_u32(u_input.d, 16686u)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(var_0.c.zzz + vec3<f32>(_wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(f32(-1f) * -483f)), var_0.b.x, _wgslsmith_f_op_f32(-func_2(var_0.b.x, 4294967295u < var_0.d.x).c.x)));
    var var_2 = true;
    var var_3 = u_input.d;
    global4 = reverseBits(global2.xz);
    var var_4 = 17436i;
    let var_5 = global3[_wgslsmith_index_u32(0u, 13u)];
    global3 = array<Struct_3, 13>();
    let var_6 = ~_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(u_input.c, 1i, global2.x, global4.x) ^ u_input.b) | vec4<i32>(global4.x >> (var_0.d.x % 32u), _wgslsmith_mult_i32(-36214i, 33614i), global4.x, _wgslsmith_mod_i32(global2.x, u_input.c)), _wgslsmith_sub_vec4_i32(u_input.b, _wgslsmith_mod_vec4_i32(vec4<i32>(-3887i, -15366i, 2147483647i, u_input.c), vec4<i32>(36887i, 2147483647i, 15522i, -59986i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(350f - var_0.c.x) + 1000f))), abs(vec4<i32>(abs(34700i), global4.x, ~reverseBits(global4.x), -9798i)), min(vec4<u32>(105557u, _wgslsmith_add_u32(2394u, var_0.d.x), u_input.d, countOneBits(var_5.c.x)) ^ vec4<u32>(u_input.a, ~11417u, 16227u | u_input.a, 1u), vec4<u32>(_wgslsmith_mult_u32(~var_5.b.a.x, var_5.b.a.x), min(4294967295u, 5743u), var_5.b.a.x, 114697u)), ~_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(var_6.ywz, vec3<i32>(u_input.b.x, u_input.b.x, global2.x), vec3<i32>(var_6.x, var_6.x, u_input.b.x)) & vec3<i32>(global4.x, 21034i, -1i), -countOneBits(vec3<i32>(5794i, 1i, 4854i))));
}

