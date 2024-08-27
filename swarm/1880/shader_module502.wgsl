struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_1,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(-180f, 141f, Struct_1(false, 4294967295u, i32(-2147483648), vec2<bool>(false, false)), vec2<u32>(3225u, 0u), vec2<u32>(36249u, 62405u));

var<private> global1: array<Struct_1, 16>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: vec3<bool>) -> f32 {
    global1 = array<Struct_1, 16>();
    let var_0 = select(!select(vec2<bool>(true, global0.c.d.x), select(vec2<bool>(arg_2.x, true), !arg_2.xx, !vec2<bool>(false, global0.c.a)), arg_2.x), arg_2.xz, true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b))) + _wgslsmith_f_op_f32(-global0.b)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_3) -> i32 {
    let var_0 = abs(4294967295u);
    let var_1 = global0.c;
    var var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(sign(arg_0.a)), _wgslsmith_clamp_vec3_i32(arg_0.b, arg_0.b, arg_0.b));
    let var_3 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0.a.x)), _wgslsmith_f_op_f32(floor(-1000f)), -387f) + vec3<f32>(global0.b, _wgslsmith_f_op_f32(min(arg_1.b, global0.a)), _wgslsmith_f_op_f32(min(-875f, arg_0.a.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1980f, global0.a, var_2.a.x), _wgslsmith_div_vec3_f32(var_2.a, vec3<f32>(global0.a, arg_1.a, -771f)))))), ~(~(~(vec3<i32>(global0.c.c, u_input.a, arg_0.b.x) & vec3<i32>(arg_0.b.x, 1i, arg_0.b.x)))));
    let var_4 = select(!(!select(select(vec4<bool>(true, false, global0.c.d.x, false), vec4<bool>(arg_1.c.a, true, arg_1.c.a, true), false), !vec4<bool>(var_1.d.x, var_1.a, arg_1.c.d.x, arg_1.c.a), !arg_1.c.a)), select(!vec4<bool>(true, arg_1.c.a, true, all(vec3<bool>(var_1.d.x, false, var_1.a))), select(!(!vec4<bool>(arg_1.c.d.x, false, var_1.d.x, global0.c.d.x)), select(select(vec4<bool>(true, var_1.d.x, global0.c.d.x, arg_1.c.a), vec4<bool>(false, false, false, var_1.d.x), vec4<bool>(var_1.d.x, arg_1.c.d.x, arg_1.c.a, global0.c.d.x)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, arg_1.c.d.x, global0.c.a, true), vec4<bool>(global0.c.a, false, false, true)), var_1.a), arg_1.c.a), select(!vec4<bool>(false, global0.c.d.x, false, false), !select(vec4<bool>(global0.c.a, true, global0.c.a, false), vec4<bool>(false, global0.c.d.x, false, true), false), false)), var_1.d.x);
    return -_wgslsmith_mult_i32(global0.c.c, global0.c.c);
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.a & 2147483647i;
    let var_1 = Struct_4(Struct_3(-537f, _wgslsmith_f_op_f32(-global0.b), global1[_wgslsmith_index_u32(select(~36326u, _wgslsmith_sub_u32(u_input.b.x, u_input.d.x), true) << (1u % 32u), 16u)], u_input.d.xy, firstLeadingBit(~vec2<u32>(1u, 2656u) << (vec2<u32>(global0.d.x, global0.c.b) % vec2<u32>(32u)))), Struct_2(~_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 0i, global0.c.c), vec3<i32>(0i, u_input.a, 0i)), -global0.c.c, func_3(Struct_5(vec3<f32>(global0.b, global0.a, global0.b), vec3<i32>(global0.c.c, 0i, global0.c.c)), Struct_3(-1000f, global0.b, global0.c, vec2<u32>(15446u, global0.e.x), vec2<u32>(41601u, global0.e.x)))), global0.c, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-984f, global0.b, 975f, -827f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, 1000f, global0.b, global0.a)))), vec4<f32>(global0.a, -1087f, _wgslsmith_div_f32(global0.b, 1310f), 784f))), vec3<f32>(_wgslsmith_f_op_f32(sign(1338f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(global0.b, -881f, global0.c.d.x)), global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b))), ~u_input.d), Struct_1(global0.c.d.x, 1u & _wgslsmith_dot_vec2_u32(u_input.b.yw, u_input.d.yy), -1i, vec2<bool>(true, 1062f <= _wgslsmith_f_op_f32(step(-768f, 442f)))), ~(u_input.b.xwz | ~vec3<u32>(4294967295u, u_input.d.x, u_input.d.x)), select(-vec4<i32>(1i, max(0i, 14150i), u_input.a, 1i), vec4<i32>(global0.c.c, 1i, -global0.c.c ^ firstLeadingBit(global0.c.c), ~(-u_input.a)), false));
    global1 = array<Struct_1, 16>();
    var var_2 = var_1.c;
    global1 = array<Struct_1, 16>();
    return Struct_1(global0.c.d.x, ~37096u, countOneBits(reverseBits(-24102i)), select(select(select(!global0.c.d, !global0.c.d, var_1.b.b.d), select(global0.c.d, select(vec2<bool>(false, var_1.a.c.a), vec2<bool>(true, true), vec2<bool>(global0.c.d.x, false)), select(true, false, global0.c.a)), !select(var_1.a.c.d, global0.c.d, var_2.a)), !(!(!var_1.c.d)), vec2<bool>(!any(vec2<bool>(var_1.c.a, false)), false)));
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = select(select(select(!(!vec4<bool>(global0.c.a, global0.c.d.x, true, true)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, arg_2.b.a, arg_2.b.d.x, arg_2.b.d.x), vec4<bool>(false, arg_2.b.a, arg_2.b.d.x, global0.c.a)), vec4<bool>(arg_2.b.d.x, all(vec3<bool>(false, global0.c.d.x, global0.c.a)), arg_2.b.a == false, global0.c.a)), vec4<bool>(min(-63760i, global0.c.c) != ~(-1i), arg_2.b.d.x, any(!vec3<bool>(false, global0.c.a, global0.c.a)), ~(-6370i) != _wgslsmith_sub_i32(global0.c.c, -27848i)), !vec4<bool>(true, true, !arg_2.b.a, global0.c.a)), select(select(vec4<bool>(global0.c.a == global0.c.d.x, !arg_2.b.a, any(vec4<bool>(true, global0.c.a, global0.c.a, arg_2.b.a)), global0.c.a), vec4<bool>(-698f >= global0.b, !arg_2.b.d.x, !global0.c.a, arg_2.b.d.x), all(select(vec4<bool>(global0.c.d.x, global0.c.a, true, global0.c.a), vec4<bool>(global0.c.a, false, false, false), global0.c.a))), !vec4<bool>(false, global0.c.a, false, false), !vec4<bool>(func_2().d.x, true, all(arg_2.b.d), true)), !vec4<bool>(all(select(vec4<bool>(arg_2.b.a, false, false, global0.c.d.x), vec4<bool>(arg_2.b.a, true, global0.c.a, global0.c.d.x), vec4<bool>(global0.c.d.x, true, true, false))), arg_2.b.d.x, arg_2.b.a, true));
    let var_1 = global0.c;
    global1 = array<Struct_1, 16>();
    let var_2 = Struct_4(Struct_3(arg_2.c.x, arg_2.d.x, Struct_1(false, 4294967295u, 1i, func_2().d), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(~u_input.d.zy, global0.d), firstLeadingBit(countOneBits(vec2<u32>(global0.c.b, 0u)))), firstTrailingBit(reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.b, 1u), vec2<u32>(var_1.b, 38796u))))), Struct_2(2147483647i, Struct_1(true, u_input.d.x, i32(-1i) * -1i, var_0.wz), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.c) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-960f, global0.b, arg_2.d.x, global0.a), arg_2.c))))), arg_2.c.zyx, _wgslsmith_mod_vec3_u32(~vec3<u32>(15656u, 0u, var_1.b) >> (max(arg_2.e, vec3<u32>(u_input.b.x, arg_2.b.b, 1u)) % vec3<u32>(32u)), reverseBits(vec3<u32>(33288u, global0.c.b, global0.d.x)))), arg_2.b, arg_2.e, -select((vec4<i32>(7252i, 46164i, arg_2.a, 0i) << (vec4<u32>(arg_2.e.x, arg_2.b.b, 1u, arg_2.e.x) % vec4<u32>(32u))) | vec4<i32>(-33572i, var_1.c, -67900i, 49577i), vec4<i32>(func_2().c, i32(-1i) * -3409i, var_1.c, -arg_1.x), select(vec4<bool>(true, true, arg_2.b.a, false), select(vec4<bool>(global0.c.d.x, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(arg_2.b.a, true, var_0.x, false)), true)));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1588f, _wgslsmith_f_op_f32(910f + var_2.b.d.x), true))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec2<u32>(global0.d.x, 61005u), vec2<i32>(40843i, 0i), var_0.xwz)), _wgslsmith_f_op_f32(exp2(arg_0))) * _wgslsmith_f_op_f32(func_1(vec2<u32>(global0.d.x, 0u), select(var_2.e.zz, vec2<i32>(arg_2.a, var_2.b.a), arg_2.b.d), !var_0.wyy)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_2.d.x)), _wgslsmith_f_op_f32(arg_0 + var_2.a.a)), arg_2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1184f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) * -192f));
    return Struct_2(abs(0i), Struct_1(!arg_2.b.d.x, ~1u, 1i, !(!vec2<bool>(global0.c.d.x, true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_2.d.x, 264f), _wgslsmith_div_f32(arg_2.c.x, -1836f), 705f, _wgslsmith_f_op_f32(trunc(arg_0))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_2.c, var_2.b.c, global0.c.d.x)), _wgslsmith_f_op_vec4_f32(arg_2.c + vec4<f32>(-1059f, arg_2.d.x, -1486f, -395f)))), var_2.b.c), vec3<f32>(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-565f + _wgslsmith_f_op_f32(-global0.b)), arg_2.c.x), _wgslsmith_f_op_f32(func_1(select(var_2.d.yx, arg_2.e.zz, any(vec2<bool>(var_2.c.d.x, true))), ~(var_2.e.yw | vec2<i32>(19757i, var_1.c)), !var_0.yzx))), u_input.b.wxy);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_2 {
    global0 = Struct_3(arg_1.c.x, arg_1.d.x, Struct_1(false, ~u_input.d.x, countOneBits(min(~arg_1.a, global0.c.c)), !arg_1.b.d), vec2<u32>(max(86586u, _wgslsmith_dot_vec3_u32(arg_1.e, arg_2.yxw)), arg_1.b.b) & _wgslsmith_sub_vec2_u32(arg_2.yy, vec2<u32>(0u, _wgslsmith_div_u32(arg_1.e.x, 4294967295u))), ~vec2<u32>(36886u, 1u));
    var var_0 = firstTrailingBit(firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(4294967295u, 38194u), 63635u, ~arg_0.b) << (vec3<u32>(max(1u, 86090u), ~4294967295u, 49283u) % vec3<u32>(32u))));
    let var_1 = _wgslsmith_mod_i32(global0.c.c, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b.c, _wgslsmith_mult_i32(-40252i, arg_1.a), arg_0.c), -vec3<i32>(-1i, 0i, 0i) & reverseBits(vec3<i32>(arg_1.a, 1i, -1i)))));
    var var_2 = Struct_3(global0.a, 1684f, global1[_wgslsmith_index_u32(4294967295u, 16u)], vec2<u32>(arg_2.x, ~global0.d.x), _wgslsmith_div_vec2_u32(~vec2<u32>(24807u, 4294967295u), var_0.zy) >> (_wgslsmith_clamp_vec2_u32(var_0.zx, ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, arg_1.b.b), vec2<u32>(global0.c.b, 4294967295u)), global0.e) % vec2<u32>(32u)));
    let var_3 = _wgslsmith_div_u32(~(~(~var_0.x)), _wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(var_2.d, var_2.d), select(countOneBits(global0.e.x), arg_2.x, all(vec3<bool>(arg_1.b.d.x, true, global0.c.a)))), ~_wgslsmith_clamp_u32(23756u, 1905u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), arg_2.zx))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(0i);
    global0 = Struct_3(296f, _wgslsmith_f_op_f32(func_1(firstLeadingBit(vec2<u32>(4294967295u, abs(global0.d.x))), vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-13197i, 1i), vec2<i32>(u_input.c, global0.c.c)), _wgslsmith_mod_vec2_i32(vec2<i32>(global0.c.c, 1i), vec2<i32>(-48458i, u_input.c))), _wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.a, global0.c.c), _wgslsmith_div_i32(global0.c.c, -1i), -6553i)), select(select(select(vec3<bool>(global0.c.a, false, false), vec3<bool>(global0.c.d.x, true, global0.c.a), vec3<bool>(global0.c.a, false, false)), !vec3<bool>(global0.c.d.x, true, true), !vec3<bool>(global0.c.a, global0.c.a, true)), !(!vec3<bool>(global0.c.a, global0.c.a, global0.c.a)), select(vec3<bool>(true, false, true), vec3<bool>(global0.c.d.x, false, global0.c.d.x), global0.c.d.x)))), Struct_1(global0.c.a, u_input.d.x, -17324i, global0.c.d), vec2<u32>(51626u, 0u), vec2<u32>(global0.e.x, ~(~0u)));
    var var_1 = ~vec3<u32>(u_input.d.x, 4294967295u, select(50113u, ~0u & u_input.d.x, !(global0.c.a && global0.c.d.x)));
    let var_2 = abs(~vec4<i32>(-26692i, 27240i, ~u_input.a, global0.c.c));
    var var_3 = Struct_5(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global0.a)), _wgslsmith_div_f32(533f, global0.a))), _wgslsmith_f_op_f32(round(-1234f)), _wgslsmith_f_op_f32(-global0.b)))), var_2.wxz);
    var var_4 = 0i;
    var var_5 = func_5(global1[_wgslsmith_index_u32(1u, 16u)], func_4(global0.b, vec4<i32>(u_input.a, abs(_wgslsmith_mult_i32(var_3.b.x, u_input.c)), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-41243i, var_3.b.x, 2147483647i, u_input.a), var_2)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.b.x, var_2.x, u_input.a), firstTrailingBit(vec3<i32>(43099i, 0i, 51598i)))), Struct_2(var_2.x ^ (global0.c.c >> (u_input.d.x % 32u)), func_2(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.a, global0.a, global0.b, global0.a), vec4<f32>(795f, -1071f, 798f, var_3.a.x)))), vec3<f32>(var_3.a.x, 1000f, _wgslsmith_f_op_f32(-var_3.a.x)), abs(vec3<u32>(1u, u_input.b.x, 0u)))), vec4<u32>(_wgslsmith_clamp_u32(~_wgslsmith_mult_u32(20692u, u_input.d.x), 1u | _wgslsmith_clamp_u32(17646u, 67294u, 4294967295u), global0.c.b), var_1.x, 83260u >> (_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.x, 1u), _wgslsmith_clamp_vec2_u32(u_input.d.yy, vec2<u32>(35518u, var_1.x), vec2<u32>(u_input.b.x, var_1.x))) % 32u), 8667u));
    let x = u_input.a;
    s_output = StorageBuffer(func_5(func_5(func_4(-635f, _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, 10000i, u_input.c, 17735i), vec4<i32>(2147483647i, 18382i, var_5.a, -27581i), var_2), func_4(global0.b, vec4<i32>(-2147483647i, 2147483647i, var_5.a, var_3.b.x), Struct_2(-1i, global1[_wgslsmith_index_u32(4294967295u, 16u)], vec4<f32>(271f, var_3.a.x, 1320f, 135f), vec3<f32>(var_5.d.x, var_3.a.x, var_3.a.x), var_5.e))).b, Struct_2(u_input.c, func_2(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, var_5.d.x, var_5.d.x, var_3.a.x)), var_5.d, abs(var_5.e)), u_input.b).b, Struct_2(~var_2.x, func_5(global1[_wgslsmith_index_u32(~4294967295u, 16u)], Struct_2(var_3.b.x, Struct_1(false, 12113u, var_2.x, vec2<bool>(false, false)), var_5.c, var_5.c.wyw, var_5.e), u_input.b).b, vec4<f32>(1082f, global0.a, _wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(-var_3.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_3.a, var_3.a)), firstTrailingBit(vec3<u32>(1u, var_5.b.b, 1u))), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(14513u, var_5.b.b, 97526u, global0.d.x), u_input.b) | vec4<u32>(global0.d.x, 38094u, 20120u, u_input.b.x), max(vec4<u32>(var_1.x, global0.e.x, 1u, u_input.d.x), vec4<u32>(global0.d.x, global0.e.x, 4294967295u, 1u)) & firstTrailingBit(vec4<u32>(25736u, u_input.d.x, u_input.d.x, var_1.x)))).e, var_5.e.x, var_3.a);
}

