struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec3<i32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-932f, 1008f), vec3<f32>(-341f, -525f, 1303f), false);

var<private> global2: Struct_4;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> u32 {
    var var_0 = Struct_3(~_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.c)), ~vec4<u32>(u_input.b, u_input.c, 0u, 32017u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.a, 62088u), min(~vec3<u32>(32793u, 4294967295u, 58914u) << (~vec3<u32>(16484u, 26446u, u_input.c) % vec3<u32>(32u)), reverseBits(vec3<u32>(0u, 2505u, 10678u)) ^ ~vec3<u32>(0u, 0u, u_input.b)), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(49881u, u_input.a, 0u), vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(0u, u_input.b, u_input.b)) & ~vec3<u32>(1u, u_input.c, 1513u), ~min(vec3<u32>(u_input.b, u_input.c, 14038u), vec3<u32>(65945u, 1u, u_input.c)))), Struct_2(~11667i, global1.a.x, Struct_1(global1.b.xz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1356f, 880f) * global2.a.c.b)), 0i < ~global2.a.a), vec4<f32>(_wgslsmith_f_op_f32(floor(global2.a.b)), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(abs(global2.a.d.x)), _wgslsmith_f_op_f32(global2.a.c.b.x - _wgslsmith_div_f32(global2.a.b, -1029f)))), global2.a.c, global2.a);
    global2 = Struct_4(Struct_2(~(~var_0.e.a >> (var_0.b.x % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1491f, _wgslsmith_f_op_f32(1281f - global1.a.x))) + 136f), global2.a.c, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * var_0.d.a.x), _wgslsmith_f_op_f32(f32(-1f) * -218f), true)), _wgslsmith_f_op_f32(f32(-1f) * -187f), 113f, global2.a.c.a.x)), vec4<bool>(select(true, all(!vec4<bool>(false, true, true, global0.x)), !select(true, false, false)), global0.x, all(global2.b.wzw), true), ~global2.c);
    let var_1 = Struct_3(~(var_0.a & firstTrailingBit(_wgslsmith_mod_vec4_u32(var_0.a, vec4<u32>(0u, 22973u, u_input.b, var_0.b.x)))), var_0.b, Struct_2(u_input.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.d.a.x)))), var_0.c.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.a.d + global2.a.d))), global2.a.c, global2.a);
    var var_2 = (i32(-1i) * -10917i) & firstTrailingBit(var_0.e.a);
    global1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(750f * _wgslsmith_f_op_f32(f32(-1f) * -316f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.e.d.x, 250f))))), _wgslsmith_f_op_vec3_f32(var_1.c.c.b - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.b.x, -588f, global1.b.x))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(870f, var_0.e.c.b.x, -953f)), var_1.e.d.yyx)))), global0.x);
    return ~32735u;
}

fn func_2(arg_0: Struct_2) -> vec2<f32> {
    global2 = Struct_4(arg_0, !global2.b, global2.c);
    var var_0 = arg_0.c;
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-211f)), -1000f, var_0.a.x) + vec3<f32>(_wgslsmith_f_op_f32(arg_0.d.x + global1.b.x), _wgslsmith_f_op_f32(arg_0.c.a.x + arg_0.c.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.d.x - arg_0.c.b.x) * _wgslsmith_f_op_f32(arg_0.c.a.x - -204f)) + _wgslsmith_f_op_f32(-arg_0.d.x))));
    global0 = !vec2<bool>(any(global2.b.xw), u_input.c <= ~func_3());
    var var_2 = vec2<u32>(u_input.b, ~_wgslsmith_add_u32(u_input.b, 0u));
    return vec2<f32>(671f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.a.x), arg_0.b)) * _wgslsmith_div_f32(407f, var_0.a.x)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: vec3<f32>) -> Struct_3 {
    global2 = Struct_4(Struct_2(u_input.e.x, _wgslsmith_f_op_f32(-global2.a.d.x), Struct_1(_wgslsmith_f_op_vec2_f32(func_2(global2.a)), vec3<f32>(_wgslsmith_f_op_f32(max(-1155f, global1.a.x)), _wgslsmith_div_f32(global1.a.x, arg_0.x), _wgslsmith_div_f32(global1.a.x, -1000f)), true), global2.a.d), !(!(!global2.b)), reverseBits(global2.c >> (firstLeadingBit(vec3<u32>(u_input.b, 4294967295u, 1u)) % vec3<u32>(32u))));
    var var_0 = 2147483647i;
    let var_1 = ~(-_wgslsmith_sub_vec2_i32(u_input.d.zz ^ (global2.c.xy << (vec2<u32>(u_input.c, u_input.b) % vec2<u32>(32u))), reverseBits(vec2<i32>(-2147483647i, global2.a.a))));
    var_0 = var_1.x;
    var var_2 = global2.a.c;
    return Struct_3(vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.b), vec3<u32>(u_input.a, u_input.b, u_input.b)), (vec3<u32>(11047u, u_input.b, u_input.b) | vec3<u32>(25279u, 0u, u_input.c)) & firstTrailingBit(vec3<u32>(18513u, 11386u, u_input.c))), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.a, u_input.c), vec3<u32>(0u, 37839u, 1u))) | u_input.b, firstTrailingBit(u_input.a)), ~select(~vec3<u32>(u_input.b, u_input.a, u_input.b) ^ vec3<u32>(1u, u_input.c, 59355u), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(4294967295u, 45542u, u_input.c)), _wgslsmith_clamp_vec3_u32(vec3<u32>(57846u, 111026u, u_input.b), vec3<u32>(u_input.b, u_input.a, u_input.c), vec3<u32>(u_input.b, u_input.a, 4294967295u))), arg_1.zzw), global2.a, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(-220f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_2(0i, arg_0.x, Struct_1(vec2<f32>(1004f, -2016f), vec3<f32>(-2214f, 471f, -746f), global1.c), arg_0))).x + global2.a.b)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(global1.b, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.a.d.x, arg_0.x, -366f), arg_0.zyz, vec3<bool>(global2.a.c.c, global0.x, global2.a.c.c))))))), !var_2.c), global2.a);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_3) -> vec2<bool> {
    var var_0 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.b, 600f, arg_0.d.a.x, global2.a.d.x)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.a.d)), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.d.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1040f, _wgslsmith_f_op_f32(-global2.a.c.b.x)))), select(!arg_1.b, vec4<bool>(_wgslsmith_mult_i32(-23912i, arg_0.e.a) > arg_2.c.a, arg_0.d.c, global0.x, arg_0.e.c.c), all(vec2<bool>(global0.x, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_1.a.d.zwz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.d.b + global1.b))))).e;
    global0 = global2.b.xx;
    global2 = Struct_4(arg_1.a, vec4<bool>(~1u < countOneBits(arg_2.a.x), arg_1.b.x, true, !(arg_1.b.x || var_0.c.c) != true), ~countOneBits(~firstTrailingBit(arg_1.c)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.d.x)) - _wgslsmith_f_op_f32(floor(global2.a.b)));
    global1 = func_1(_wgslsmith_f_op_vec4_f32(round(arg_1.a.d)), !arg_1.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.c.d.yxx)) * vec3<f32>(-1113f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(460f, arg_2.c.c.a.x)) * _wgslsmith_f_op_f32(f32(-1f) * -165f)), -868f))).e.c;
    return !global2.b.zx;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(func_1(_wgslsmith_f_op_vec4_f32(-global2.a.d), select(vec4<bool>(true, global0.x, false & global0.x, global2.a.c.c), global2.b, select(vec4<bool>(global0.x, false, true, global0.x), select(vec4<bool>(global0.x, global1.c, true, true), global2.b, false), global2.b)), vec3<f32>(-209f, 1170f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1472f), 890f))), Struct_4(func_1(vec4<f32>(global1.a.x, global1.a.x, _wgslsmith_f_op_f32(min(-2030f, 1323f)), _wgslsmith_f_op_f32(sign(810f))), !select(global2.b, vec4<bool>(global1.c, false, false, true), false), vec3<f32>(-968f, 1231f, -1886f)).e, select(vec4<bool>(true, any(global2.b.wy), true, !global2.b.x), vec4<bool>(!global2.b.x, true, any(vec4<bool>(true, global2.a.c.c, false, global0.x)), global1.c), !select(vec4<bool>(true, global1.c, false, true), vec4<bool>(global1.c, global2.b.x, false, global0.x), vec4<bool>(false, global0.x, global0.x, false))), global2.c), Struct_3(~abs(~vec4<u32>(4294967295u, 0u, u_input.b, u_input.c)), vec3<u32>(u_input.c, ~1u, 0u), func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.a.c.b.x, 1377f, global1.b.x, global2.a.b)))), global2.b, global2.a.d.yyz).c, global2.a.c, Struct_2(u_input.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)), global2.a.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.a.d)))));
    global2 = Struct_4(global2.a, !(!vec4<bool>(global1.c || true, all(global2.b.ww), global2.a.c.c, true)), ~u_input.d);
    var var_0 = global2.a.d.x;
    global2 = Struct_4(func_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global2.a.d))), global2.b, global2.a.d.wzz).e, !global2.b, vec3<i32>(-2147483647i, -min(0i, 1i) >> (u_input.b % 32u), global2.c.x));
    var var_1 = vec3<u32>(abs(_wgslsmith_add_u32(u_input.a, u_input.c)), u_input.c, ~reverseBits(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a, 35487u), ~0u)));
    var var_2 = vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(u_input.d.x, -2147483647i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-37571i, u_input.e.x), vec2<i32>(global2.c.x, global2.c.x), u_input.d.zx) & (global2.c.zy | vec2<i32>(-30633i, u_input.e.x))), vec2<i32>(reverseBits(u_input.e.x) >> (103730u % 32u), -1i)), 0i, u_input.e.x, ~2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mod_u32(firstTrailingBit(~4294967295u), ~_wgslsmith_clamp_u32(4294967295u, 1u, var_1.x)), var_1.x), abs(~vec4<i32>(var_2.x, select(25751i, -2147483647i, global1.c), func_1(vec4<f32>(102f, global1.b.x, 789f, 565f), vec4<bool>(false, global0.x, global2.b.x, true), vec3<f32>(1435f, global1.b.x, -1755f)).e.a, global2.a.a)), ~(_wgslsmith_div_vec4_u32(~vec4<u32>(20579u, 21365u, u_input.a, 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.b, 1u), vec4<u32>(8413u, 1u, 82963u, var_1.x))) | firstLeadingBit(~vec4<u32>(u_input.c, u_input.b, 1u, var_1.x))), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, var_1.x, 37400u, ~u_input.b), ~(~vec4<u32>(u_input.c, 0u, 25594u, 81924u))), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(95358u, u_input.c, 1u, 3635u)), countOneBits(vec4<u32>(25933u, var_1.x, 0u, 28242u)))));
}

