struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> i32 {
    var var_0 = arg_1;
    var_0 = arg_1;
    var_0 = arg_1;
    let var_1 = firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-(~arg_0), select(-37685i, arg_0, true) ^ max(2147483647i, 822i), 51316i), arg_1.b.c.xyy | vec3<i32>(-global0.x, var_0.b.b << (u_input.c.x % 32u), arg_1.b.c.x)));
    var var_2 = arg_1.b;
    return arg_0;
}

fn func_2() -> i32 {
    global0 = reverseBits(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(12066i, 5133i, -2147483647i), ~vec3<i32>(2147483647i, global0.x, 2147483647i)), countOneBits(vec3<i32>(-7147i, u_input.a, -2147483647i))), -vec3<i32>(-19169i, 1i, -1i), vec3<i32>(global0.x, global0.x, _wgslsmith_div_i32(1i, u_input.a))));
    global0 = vec3<i32>(-reverseBits(11136i), u_input.a, _wgslsmith_clamp_i32(-1i, _wgslsmith_sub_i32(_wgslsmith_add_i32(func_3(u_input.a, Struct_2(vec3<i32>(global0.x, -2147483647i, global0.x), Struct_1(vec4<f32>(300f, -1645f, -591f, 1142f), 1i, vec4<i32>(-8805i, global0.x, global0.x, global0.x), u_input.b.wz, vec2<u32>(4294967295u, 43719u)), vec2<u32>(u_input.d.x, 0u))), max(-1i, -32539i)), 2147483647i), u_input.a));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-651f, 788f) + vec2<f32>(-516f, -640f)))))), vec2<f32>(_wgslsmith_div_f32(-1875f, 631f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-569f)) + -1264f))));
    var var_1 = 4294967295u;
    var var_2 = vec2<i32>(abs(u_input.a), _wgslsmith_dot_vec2_i32(~(select(vec2<i32>(1i, -22860i), global0.yy, vec2<bool>(true, false)) >> (abs(u_input.d.yz) % vec2<u32>(32u))), global0.yy));
    return firstTrailingBit(28918i);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    global0 = firstLeadingBit(abs(min(vec3<i32>(firstLeadingBit(arg_3.b), 0i, _wgslsmith_div_i32(6342i, arg_3.b)), vec3<i32>(_wgslsmith_div_i32(global0.x, 1i), func_2(), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.c.x, global0.x), vec2<i32>(-1i, -13795i))))));
    global0 = _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(max(vec3<i32>(-arg_2.a.x, _wgslsmith_mod_i32(0i, u_input.a), reverseBits(global0.x)), ~vec3<i32>(u_input.a, 16891i, global0.x)), select(arg_2.b.c.zyz, arg_3.c.xxy, any(select(arg_0.xxz, arg_0.zwx, true))), vec3<i32>(~func_2(), _wgslsmith_mod_i32(u_input.a, arg_3.b) & select(0i, -67i, arg_1.x), -2147483647i)), ~arg_2.a | (vec3<i32>(18774i, firstLeadingBit(-2154i), arg_3.b >> (arg_3.d.x % 32u)) >> ((vec3<u32>(4294967295u, 28503u, u_input.c.x) >> (vec3<u32>(4294967295u, arg_3.d.x, u_input.b.x) % vec3<u32>(32u))) % vec3<u32>(32u))));
    let var_0 = ~(~reverseBits(~(u_input.b.x ^ 84675u)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(arg_2.b.a - vec4<f32>(-857f, arg_3.a.x, _wgslsmith_f_op_f32(min(arg_2.b.a.x, _wgslsmith_f_op_f32(arg_3.a.x * arg_2.b.a.x))), arg_2.b.a.x)), -15066i, ~arg_2.b.c & arg_2.b.c, ~firstTrailingBit(vec2<u32>(u_input.c.x << (arg_2.c.x % 32u), ~var_0)), arg_3.d << (_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(var_0, u_input.b.x), u_input.d.wz), ~firstTrailingBit(vec2<u32>(u_input.c.x, 0u))) % vec2<u32>(32u)));
    let var_2 = any(arg_0.xxw);
    return arg_2.b;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_2(vec3<i32>(arg_0.b, -global0.x, min(arg_0.c.x, -u_input.a)), Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x) - vec4<f32>(arg_0.a.x, 467f, -1236f, arg_0.a.x))))), func_1(vec4<bool>(false, false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), Struct_2(arg_0.c.zww, arg_0, vec2<u32>(u_input.d.x, arg_0.e.x)), Struct_1(arg_0.a, 27532i, arg_0.c, vec2<u32>(4540u, 60718u), arg_1.zz)).b >> (arg_1.x % 32u), func_1(vec4<bool>(true, true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), Struct_2(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -18886i, 2147483647i), arg_0.c.wwy), Struct_1(arg_0.a, 57916i, vec4<i32>(0i, u_input.a, arg_0.c.x, arg_0.c.x), u_input.d.wy, vec2<u32>(arg_1.x, arg_1.x)), vec2<u32>(25525u, arg_0.d.x)), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(arg_0.a)), 0i, select(arg_0.c, arg_0.c, true), ~u_input.b.yw, u_input.d.wx ^ vec2<u32>(arg_1.x, u_input.d.x))).c, reverseBits(arg_1.xy), select(~u_input.b.xx, vec2<u32>(~1u, 799u | u_input.d.x), vec2<bool>(true, true))), arg_0.e);
    let var_1 = abs(vec4<i32>(0i, arg_0.b & -(u_input.a | 1i), u_input.a, 2147483647i));
    var var_2 = 5420u;
    var var_3 = vec4<bool>(all(select(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), arg_1.x >= 112985u))), !all(vec4<bool>(false, all(vec4<bool>(false, true, true, true)), true, true)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), true);
    let var_4 = var_3.x;
    return Struct_2(select((-vec3<i32>(-17780i, 0i, 0i) >> (max(vec3<u32>(54121u, var_0.b.e.x, 1u), arg_1) % vec3<u32>(32u))) << (_wgslsmith_sub_vec3_u32(reverseBits(arg_1), arg_1) % vec3<u32>(32u)), max(vec3<i32>(arg_0.b | arg_0.c.x, ~(-1i), i32(-1i) * -9160i), min(arg_0.c.ywy, select(var_0.a, vec3<i32>(-1i, var_1.x, u_input.a), var_3.x))), all(!(!vec4<bool>(var_3.x, true, var_3.x, false)))), arg_0, _wgslsmith_div_vec2_u32(u_input.b.xy, vec2<u32>(31230u, ~(~arg_0.e.x))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = Struct_2(_wgslsmith_mult_vec3_i32(min(-vec3<i32>(arg_2.c.x, arg_3.b, global0.x), vec3<i32>(16105i, _wgslsmith_mult_i32(arg_3.b, arg_2.c.x), _wgslsmith_sub_i32(-28931i, global0.x))), arg_3.c.zzz ^ arg_1.a), arg_2, arg_2.d);
    var var_1 = !vec4<bool>(all(select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true), vec2<bool>(false, true))), true, all(vec3<bool>(true, true, true)) && any(vec3<bool>(true, false, false)), true);
    var var_2 = _wgslsmith_f_op_f32(arg_1.b.a.x + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(vec4<bool>(false, true, false, true), var_1.zyy, Struct_2(vec3<i32>(global0.x, -2147483647i, 41563i), Struct_1(arg_2.a, arg_2.b, arg_3.c, arg_2.d, vec2<u32>(arg_2.d.x, var_0.b.d.x)), vec2<u32>(20056u, var_0.c.x)), arg_2).a.x + -935f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1504f, _wgslsmith_f_op_f32(1445f + arg_2.a.x), false))), true)));
    let var_3 = vec3<i32>(~reverseBits(func_3(arg_1.a.x, Struct_2(vec3<i32>(-2705i, u_input.a, arg_1.b.b), Struct_1(vec4<f32>(1000f, arg_1.b.a.x, 1013f, arg_3.a.x), u_input.a, arg_3.c, arg_3.d, vec2<u32>(arg_3.d.x, 1u)), arg_2.d))), _wgslsmith_mod_i32(func_1(!(!vec4<bool>(true, true, var_1.x, true)), vec3<bool>(var_1.x, false, true), Struct_2(~var_0.a, var_0.b, vec2<u32>(55924u, 23884u)), func_1(!vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec3<bool>(var_1.x, true, var_1.x), arg_1, arg_2)).c.x, i32(-1i) * -4789i), _wgslsmith_div_i32(var_0.a.x, arg_1.a.x));
    var_2 = _wgslsmith_f_op_f32(-1807f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-366f * -1167f), _wgslsmith_f_op_f32(-681f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.a.x * 1000f) + 1000f)))));
    return ~global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(-(vec3<i32>(global0.x, -32499i, global0.x) | vec3<i32>(u_input.a, u_input.a, -2147483647i)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, 63585i, u_input.a), vec3<i32>(0i, -30378i, -24675i)));
    var var_0 = false || (func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(-202f, 1548f, -808f, 1184f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(117f, 300f, 2385f, -1456f) + vec4<f32>(100f, 449f, 883f, -1075f))), func_4(func_1(vec4<bool>(false, false, true, false), vec3<bool>(false, false, true), Struct_2(vec3<i32>(u_input.a, 10640i, -25542i), Struct_1(vec4<f32>(-108f, -390f, 1744f, -979f), 62587i, vec4<i32>(u_input.a, 11891i, 49177i, -2147483647i), u_input.c.xz, u_input.d.zw), vec2<u32>(15452u, u_input.b.x)), Struct_1(vec4<f32>(715f, 875f, -220f, 1462f), u_input.a, vec4<i32>(0i, -27093i, global0.x, global0.x), vec2<u32>(u_input.d.x, u_input.c.x), u_input.b.zz)), vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)), func_1(vec4<bool>(true, true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), Struct_2(vec3<i32>(global0.x, 8114i, global0.x), Struct_1(vec4<f32>(1291f, 197f, 242f, 2392f), u_input.a, vec4<i32>(8052i, 0i, global0.x, 1i), u_input.b.zy, u_input.c.yz), u_input.b.zw), func_4(Struct_1(vec4<f32>(-946f, 183f, -925f, 1870f), -27679i, vec4<i32>(global0.x, 0i, 0i, u_input.a), vec2<u32>(u_input.d.x, u_input.b.x), vec2<u32>(u_input.d.x, 1u)), vec3<u32>(u_input.b.x, 28232u, u_input.c.x)).b), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(133f, -132f, -1256f, -794f), vec4<f32>(710f, -1204f, 453f, -511f)), global0.x, vec4<i32>(u_input.a, u_input.a, global0.x, global0.x), vec2<u32>(4294967295u, 4294967295u), u_input.c.yx)) > func_1(vec4<bool>(any(vec2<bool>(true, true)), u_input.d.x <= 0u, true, all(vec3<bool>(false, false, true))), vec3<bool>(any(vec3<bool>(true, false, true)), true, true), Struct_2(-vec3<i32>(14343i, -1i, global0.x), func_4(Struct_1(vec4<f32>(-183f, -342f, 811f, -833f), u_input.a, vec4<i32>(-43093i, 19407i, global0.x, u_input.a), vec2<u32>(76770u, 1u), vec2<u32>(10987u, 0u)), vec3<u32>(4294967295u, u_input.d.x, u_input.c.x)).b, min(u_input.b.wz, u_input.b.xx)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1684f, -212f, 1866f, 254f)), -33500i, vec4<i32>(global0.x, 1i, 5581i, -29286i), u_input.d.zx, reverseBits(vec2<u32>(69244u, 10654u)))).b);
    var var_1 = func_1(vec4<bool>(all(vec2<bool>(false, false)) | (~1u > ~u_input.d.x), false, true, true), !select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), true), func_4(Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1985f, -415f, -172f, -671f)))), _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.a, 50804i), 1i), vec4<i32>(_wgslsmith_mult_i32(-13526i, 0i), func_3(global0.x, Struct_2(vec3<i32>(-1i, u_input.a, -22578i), Struct_1(vec4<f32>(-519f, 817f, -742f, -1000f), 1i, vec4<i32>(-17121i, 7031i, 1i, global0.x), vec2<u32>(0u, 414u), u_input.c.zz), u_input.b.xx)), func_1(vec4<bool>(false, true, true, false), vec3<bool>(true, true, true), Struct_2(vec3<i32>(global0.x, global0.x, u_input.a), Struct_1(vec4<f32>(1868f, -380f, 264f, -520f), u_input.a, vec4<i32>(u_input.a, global0.x, -17127i, 2147483647i), vec2<u32>(53642u, u_input.c.x), u_input.d.yw), u_input.c.yx), Struct_1(vec4<f32>(-957f, -568f, 445f, -1000f), global0.x, vec4<i32>(-1i, u_input.a, 0i, 0i), vec2<u32>(u_input.c.x, u_input.d.x), u_input.d.yy)).c.x, global0.x), vec2<u32>(_wgslsmith_mod_u32(u_input.d.x, 68038u), u_input.c.x), u_input.b.zy), vec3<u32>(55351u, ~(~16490u), 101776u)), Struct_1(vec4<f32>(1f, 1f, 1f, 1f), global0.x, firstLeadingBit(min(abs(vec4<i32>(2147483647i, u_input.a, -37040i, global0.x)), vec4<i32>(u_input.a, 1i, global0.x, 2147483647i) << (vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 0u) % vec4<u32>(32u)))), u_input.b.zz, _wgslsmith_mod_vec2_u32(func_4(func_1(vec4<bool>(false, false, true, false), vec3<bool>(true, false, true), Struct_2(vec3<i32>(u_input.a, u_input.a, global0.x), Struct_1(vec4<f32>(-1214f, -1365f, -331f, 863f), 4976i, vec4<i32>(-1i, 0i, 2147483647i, 2147483647i), u_input.d.zz, vec2<u32>(u_input.c.x, u_input.c.x)), u_input.d.xx), Struct_1(vec4<f32>(-1809f, 208f, -1530f, 236f), -1i, vec4<i32>(u_input.a, u_input.a, 2147483647i, global0.x), u_input.c.xx, vec2<u32>(u_input.d.x, u_input.d.x))), _wgslsmith_mult_vec3_u32(u_input.c, vec3<u32>(u_input.b.x, 0u, u_input.c.x))).c, ~u_input.b.zy)));
    global0 = _wgslsmith_mult_vec3_i32(var_1.c.xzz, vec3<i32>(_wgslsmith_sub_i32(-abs(0i), _wgslsmith_div_i32(_wgslsmith_sub_i32(1i, global0.x), func_2())), var_1.c.x, ~(~firstLeadingBit(u_input.a))));
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_1.a.zxz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a.zzy))));
    let var_3 = func_4(func_4(func_4(Struct_1(vec4<f32>(-413f, var_1.a.x, var_2.x, var_2.x), 1i, vec4<i32>(var_1.c.x, -1i, var_1.b, global0.x) & vec4<i32>(var_1.c.x, var_1.c.x, var_1.b, var_1.c.x), vec2<u32>(33809u, var_1.d.x), var_1.d), ~(u_input.b.zxy & u_input.d.zxy)).b, _wgslsmith_mult_vec3_u32(vec3<u32>(var_1.e.x, u_input.c.x, 28695u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 30189u, 0u), vec3<u32>(u_input.c.x, 28722u, var_1.d.x), vec3<u32>(40541u, u_input.b.x, 1457u))) | ~vec3<u32>(0u, 0u, 21829u)).b, vec3<u32>(_wgslsmith_sub_u32(7146u, u_input.d.x >> (6877u % 32u)) | 15245u, _wgslsmith_mod_u32(var_1.d.x, abs(_wgslsmith_add_u32(var_1.e.x, var_1.d.x))), abs(u_input.d.x << (1u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(644f, ~0u);
}

