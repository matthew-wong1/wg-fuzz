struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, vec2<bool>(false, false), 0u);

var<private> global1: u32 = 44514u;

var<private> global2: vec4<bool> = vec4<bool>(true, true, true, false);

var<private> global3: i32 = 49330i;

var<private> global4: vec3<bool>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool) -> u32 {
    global2 = select(vec4<bool>(true, true, true, true), vec4<bool>(global2.x, global0.b.x, true, true), true);
    let var_0 = Struct_1(max(countOneBits(_wgslsmith_clamp_u32(global0.c, 1u, global0.a)), ~abs(4294967295u)) >> (81019u % 32u), select(select(global4.zx, !(!vec2<bool>(global0.b.x, global0.b.x)), select(select(global4.yz, vec2<bool>(global2.x, arg_0), global0.b), global4.zz, vec2<bool>(global0.b.x, false))), !vec2<bool>(4294967295u <= global0.a, arg_0), true), abs(4294967295u));
    global0 = Struct_1(global0.a, select(global4.xx, !global0.b, select(vec2<bool>(global4.x, true), !select(vec2<bool>(var_0.b.x, global0.b.x), global0.b, arg_0), !(!arg_0))), _wgslsmith_add_u32(1u, 11414u));
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-625f, -730f, 171f) - vec3<f32>(-1378f, -355f, -820f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(879f, 126f, 700f) - vec3<f32>(232f, 779f, 1030f))) * vec3<f32>(-722f, _wgslsmith_div_f32(-2476f, -2081f), -722f))))));
    return var_0.a << (abs(global0.a) % 32u);
}

fn func_2(arg_0: vec3<f32>) -> vec4<bool> {
    var var_0 = Struct_1(~global0.a, vec2<bool>(true, false), func_3(!all(vec2<bool>(global4.x, global4.x))));
    global1 = select(~(~1u), 90207u, 4294967295u == ~global0.c);
    var var_1 = _wgslsmith_div_f32(-840f, arg_0.x);
    var_1 = arg_0.x;
    let var_2 = arg_0.x;
    return !vec4<bool>(!all(global0.b), global2.x, true, var_0.b.x);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> vec3<f32> {
    global2 = select(func_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(min(-1340f, arg_0.x)), 304f), arg_0.wzy))), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, 1000f), arg_0.wyw)))), true);
    var var_0 = select(~(~(vec4<u32>(arg_1.a, 0u, 22373u, global0.c) >> ((vec4<u32>(4723u, 1u, 0u, arg_1.a) & vec4<u32>(arg_1.a, arg_1.a, arg_1.a, global0.a)) % vec4<u32>(32u)))), _wgslsmith_add_vec4_u32(vec4<u32>(1u, global0.c, func_3(any(vec3<bool>(true, global4.x, global0.b.x))), ~(~arg_1.c)), _wgslsmith_div_vec4_u32(select(~vec4<u32>(global0.a, 27072u, 4294967295u, global0.a), max(vec4<u32>(0u, 52471u, global0.c, 1u), vec4<u32>(4294967295u, 41503u, 1u, 0u)), select(vec4<bool>(arg_1.b.x, global2.x, false, false), vec4<bool>(global4.x, true, false, global0.b.x), vec4<bool>(global2.x, arg_1.b.x, arg_1.b.x, arg_1.b.x))), min(abs(vec4<u32>(4294967295u, 1u, global0.c, arg_1.c)), vec4<u32>(11704u, 4294967295u, arg_1.a, global0.a)))), true);
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(sign(449f)))));
    var var_2 = select(!vec4<bool>(global4.x, true || (arg_1.b.x & false), func_2(arg_0.wwz).x && select(global4.x, false, true), true), !(!select(!vec4<bool>(false, true, global4.x, global4.x), !vec4<bool>(global4.x, global4.x, false, true), !vec4<bool>(global0.b.x, global4.x, global4.x, global4.x))), false);
    let var_3 = _wgslsmith_add_u32(1u, 47379u);
    return vec3<f32>(_wgslsmith_div_f32(-531f, arg_0.x), arg_0.x, arg_0.x);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-279f)))), 1181f))));
    let var_1 = global0.a;
    var var_2 = 70055u;
    let var_3 = !(!global2.zyw);
    var var_4 = arg_1;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_0.xy)));
}

fn func_5(arg_0: vec2<f32>, arg_1: vec2<i32>) -> vec2<u32> {
    var var_0 = u_input.b;
    var var_1 = arg_0;
    global2 = vec4<bool>(true, !(!global0.b.x), true & !(!(global0.b.x & true)), any(vec4<bool>(all(vec3<bool>(false, global4.x, global0.b.x)), global2.x & !global4.x, !(!global4.x), true)));
    global2 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -405f), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_1(vec4<f32>(var_1.x, -1035f, -849f, arg_0.x), Struct_1(global0.c, vec2<bool>(false, global0.b.x), 68888u))).x * _wgslsmith_f_op_f32(var_1.x * arg_0.x)))));
    var var_2 = ~(~abs(~(vec2<u32>(1u, 74919u) & vec2<u32>(global0.a, global0.c))));
    return (_wgslsmith_sub_vec2_u32(~(vec2<u32>(var_2.x, 6495u) ^ vec2<u32>(global0.c, var_2.x)), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 1447u), vec2<u32>(13932u, global0.c)) | select(vec2<u32>(27873u, var_2.x), vec2<u32>(1u, 1u), global4.yy)) | ~firstLeadingBit(vec2<u32>(4294967295u, 0u))) & vec2<u32>(var_2.x, ~select(55776u, 1994u, select(global2.x, global2.x, false)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = global2.xzx;
    global0 = Struct_1(~(~abs(18122u)), vec2<bool>(global2.x, false), 34514u);
    var var_0 = _wgslsmith_clamp_i32(select(_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.b.x, u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, u_input.a.x, u_input.c), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.d.x))) | abs(u_input.d.x), u_input.d.x, true), -2147483647i >> (~(global0.c << (global0.c % 32u)) % 32u), select(u_input.d.x, 2147483647i, 822f >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-561f + -130f)))));
    let var_1 = firstLeadingBit(func_5(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(vec4<f32>(502f, -1260f, -753f, -566f), Struct_1(14009u, global4.yx, 4294967295u))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1218f, -1148f, 1008f) + vec3<f32>(931f, 548f, 1107f))), Struct_1(abs(43057u), global4.xy, global0.c))), u_input.b.yy));
    global4 = vec3<bool>(all(!global2.yxw) && false, false && all(vec4<bool>(true, global4.x, global2.x, global4.x)), global0.b.x);
    global2 = !vec4<bool>(false, select(any(vec4<bool>(false, false, global4.x, true)), all(!global0.b), true | global0.b.x), global4.x, true);
    let var_2 = var_1.x >> (~0u % 32u);
    var var_3 = ~max(_wgslsmith_div_vec4_u32(~select(vec4<u32>(0u, var_1.x, 4294967295u, 64665u), vec4<u32>(47619u, 29602u, 112132u, var_2), vec4<bool>(global2.x, global2.x, true, true)), vec4<u32>(var_1.x, var_1.x, 0u, global0.c) >> (select(vec4<u32>(global0.c, 68732u, global0.c, var_2), vec4<u32>(var_2, 4294967295u, 1u, var_1.x), global2.x) % vec4<u32>(32u))), abs(select(max(vec4<u32>(4294967295u, var_1.x, var_1.x, var_2), vec4<u32>(0u, var_1.x, var_1.x, 80558u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(25342u, 1u, 1u, 4294967295u), vec4<u32>(19601u, 0u, var_2, var_2), vec4<u32>(4294967295u, 11868u, global0.c, var_1.x)), select(global0.b.x, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, u_input.b.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-185f, 1438f, 509f) + vec3<f32>(-515f, -1741f, 524f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), vec3<f32>(_wgslsmith_f_op_f32(668f + _wgslsmith_f_op_f32(abs(497f))), _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-161f, -552f, -451f), vec3<f32>(-733f, -1285f, 828f))), Struct_1(59439u, global0.b, 0u))).x, 244f), true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(2359f)), -1458f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(896f)) * _wgslsmith_f_op_f32(floor(1000f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-552f, 1062f, 1426f, -1616f)))), Struct_1(firstTrailingBit(var_2), vec2<bool>(global0.b.x, false), _wgslsmith_mod_u32(65452u, 17611u)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
}

