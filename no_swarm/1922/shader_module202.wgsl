struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: Struct_3,
    e: vec3<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: Struct_3,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-639f, 758f, -1595f, 330f);

var<private> global1: Struct_1;

var<private> global2: vec4<bool>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    let var_0 = -vec2<i32>(abs(_wgslsmith_sub_i32(global1.e.x, global1.e.x)), abs(global1.e.x)) >> (vec2<u32>(global1.a.x, 0u) % vec2<u32>(32u));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1331f, global1.c, global1.d.x, -659f))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c, global1.c, -782f, global1.c) + vec4<f32>(global1.d.x, global0.x, -407f, global1.d.x)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(global0.xw));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1.d, global0.zz) * vec2<f32>(_wgslsmith_f_op_f32(floor(1190f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x)))));
    var var_3 = reverseBits(min(((var_0 & var_0) >> (reverseBits(global1.a) % vec2<u32>(32u))) & global1.e, vec2<i32>(1i & ~u_input.a.x, var_0.x & u_input.a.x)));
    return var_1.x;
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = vec4<bool>(true, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(921f, global1.d.x, global2.x)))), global1.b.x > (abs(global1.a.x) & ~_wgslsmith_mod_u32(arg_0.x, 0u)));
    let var_1 = Struct_1(~global1.a, global1.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) + _wgslsmith_f_op_f32(func_3()))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.d))), countOneBits(vec2<i32>(~_wgslsmith_div_i32(global1.e.x, -23249i), _wgslsmith_mod_i32(global1.e.x ^ u_input.b.x, u_input.b.x))));
    var var_2 = firstLeadingBit(global1.b.x);
    let var_3 = Struct_4(_wgslsmith_f_op_f32(-var_1.d.x), Struct_2(var_1), Struct_1(arg_0, global1.b, 1000f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(global0.yz * var_1.d))) + _wgslsmith_f_op_vec2_f32(trunc(var_1.d))), vec2<i32>(0i, 2147483647i)), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, var_1.d.x)) - vec2<f32>(1165f, var_1.d.x))), var_1), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-758f * global1.d.x) * _wgslsmith_div_f32(-699f, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x * 289f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, 872f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(global0.zwx, global0.wzz))), select(select(vec3<bool>(global2.x, var_0.x, false), var_0.wyx, global2.x), global2.yyx, global2.wyz))), var_0.zww)));
    let var_4 = var_3.d;
    return Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 0u), var_1.b.wzz), firstTrailingBit(arg_0.x)), _wgslsmith_clamp_vec2_u32(min(_wgslsmith_add_vec2_u32(vec2<u32>(global1.b.x, 26164u), var_1.b.zy), vec2<u32>(global1.b.x, 0u) | var_3.b.a.a), vec2<u32>(max(4294967295u, 0u), 1u), arg_0)), abs(_wgslsmith_mult_vec4_u32(firstLeadingBit(global1.b), var_3.c.b) | _wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_0.x, var_4.b.b.x, var_1.b.x), var_4.b.b)), _wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.d * _wgslsmith_f_op_vec2_f32(trunc(var_1.d))) + _wgslsmith_f_op_vec2_f32(floor(var_1.d))), var_4.b.e);
}

fn func_1(arg_0: Struct_5, arg_1: f32, arg_2: vec2<bool>, arg_3: i32) -> vec4<i32> {
    global1 = func_2(~global1.b.yz);
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(206f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(3091f + arg_0.c.a.x) + _wgslsmith_div_f32(382f, 896f)))))));
    var var_1 = ~0u;
    global1 = Struct_1(~vec2<u32>(func_2(_wgslsmith_clamp_vec2_u32(global1.a, vec2<u32>(arg_0.d, 61041u), vec2<u32>(1u, arg_0.c.b.a.x))).b.x, ~arg_0.a.a.a.x), _wgslsmith_clamp_vec4_u32(arg_0.c.b.b, vec4<u32>(_wgslsmith_sub_u32(~121500u, _wgslsmith_div_u32(43613u, arg_0.d)), 0u, reverseBits(1u), ~14067u ^ reverseBits(arg_0.a.a.b.x)), vec4<u32>(global1.a.x, ~_wgslsmith_add_u32(global1.b.x, arg_0.a.a.a.x), _wgslsmith_clamp_u32(firstLeadingBit(arg_0.c.b.b.x), global1.b.x, arg_0.a.a.a.x), global1.b.x)), _wgslsmith_div_f32(global0.x, 1548f), global1.d, u_input.b.xy);
    let var_2 = global0.x;
    return vec4<i32>(-2147483647i, -14150i, i32(-1i) * -(~(~u_input.b.x)), ~(-select(~(-28335i), i32(-1i) * -24456i, any(arg_0.e.yz))));
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_2) -> vec3<i32> {
    global2 = !select(select(!select(vec4<bool>(false, false, global2.x, global2.x), vec4<bool>(true, global2.x, false, false), vec4<bool>(false, global2.x, global2.x, global2.x)), vec4<bool>(global2.x, global2.x, arg_2.a.e.x <= arg_1.x, true), !vec4<bool>(global2.x, true, false, false)), select(select(select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(global2.x, global2.x, global2.x, true), false), !vec4<bool>(global2.x, global2.x, true, global2.x), true), !(!vec4<bool>(global2.x, true, global2.x, global2.x)), !(!vec4<bool>(false, global2.x, global2.x, false))), !vec4<bool>(true, true, false, all(global2.xw)));
    global2 = vec4<bool>((_wgslsmith_f_op_f32(1814f + -410f) > _wgslsmith_f_op_f32(-arg_2.a.d.x)) != (_wgslsmith_sub_i32(-1i, u_input.b.x) != ~abs(-2147483647i)), any(!vec4<bool>(false, true, global2.x, false)) || !(!any(vec4<bool>(global2.x, false, true, global2.x))), any(select(!(!vec3<bool>(true, true, global2.x)), vec3<bool>(false, all(global2.xxz), true), global2.xzz)), true);
    global1 = arg_2.a;
    let var_0 = global0.x;
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global1.c, _wgslsmith_f_op_f32(-global1.d.x), 242f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.c, 892f, 1114f, -1819f)))))));
    return vec3<i32>(u_input.b.x, _wgslsmith_mult_i32(_wgslsmith_div_i32(-2147483647i, firstTrailingBit(global1.e.x)) >> (reverseBits(func_2(global1.b.zz).b.x) % 32u), arg_1.x), -(~44642i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_dot_vec3_i32(~u_input.a.xzx, func_4(7501u, abs(func_1(Struct_5(Struct_2(Struct_1(global1.a, vec4<u32>(4294967295u, global1.a.x, 0u, 1u), -1854f, vec2<f32>(global1.d.x, 213f), vec2<i32>(14523i, global1.e.x))), global1.a.x, Struct_3(vec2<f32>(global1.c, 2615f), Struct_1(vec2<u32>(global1.a.x, 4294967295u), global1.b, global1.d.x, global0.zx, u_input.b.yx)), global1.b.x, global2.zyw), 226f, vec2<bool>(global2.x, global2.x), u_input.a.x)), Struct_2(func_2(vec2<u32>(1u, 4294967295u)))));
    global0 = vec4<f32>(func_2(global1.a).c, global0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(global1.c, _wgslsmith_f_op_f32(step(-1550f, _wgslsmith_f_op_f32(1394f * 548f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-701f, global0.x))))));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(func_3()), Struct_2(Struct_1(~global1.b.zz, vec4<u32>(1u, global1.b.x, 1u << (global1.a.x % 32u), 1u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(541f, global0.x) * global0.x), _wgslsmith_f_op_vec2_f32(-global0.xw), global1.e)), Struct_1(~vec2<u32>(_wgslsmith_sub_u32(global1.a.x, 1u), ~global1.b.x), ~vec4<u32>(global1.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.x, 47027u, global1.a.x), global1.b.wwz), reverseBits(global1.b.x), 4294967295u >> (1u % 32u)), 819f, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -469f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.c * -1470f)))), global1.e), Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global1.d + global0.zw))), vec2<f32>(-602f, -900f), select(false, 42441u == global1.b.x, all(global2.wwz)))), func_2(select(_wgslsmith_sub_vec2_u32(vec2<u32>(global1.b.x, global1.b.x), global1.b.yz), vec2<u32>(global1.a.x, global1.b.x), true))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, _wgslsmith_f_op_f32(step(-1106f, global1.d.x)), _wgslsmith_f_op_f32(1739f - -301f)))))));
    let var_2 = global1.e.x | 37447i;
    var var_3 = ~_wgslsmith_mult_i32(-max(_wgslsmith_sub_i32(-14347i, var_0), _wgslsmith_div_i32(var_0, u_input.b.x)), -32677i);
    var var_4 = _wgslsmith_f_op_f32(trunc(677f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_mult_i32(countOneBits(1i), global1.e.x), -var_0, global1.e.x, global1.e.x) >> ((vec4<u32>(17806u, firstTrailingBit(1552u), _wgslsmith_mult_u32(var_1.b.a.b.x, 25287u), global1.b.x) << (select(~vec4<u32>(global1.a.x, 0u, var_1.b.a.a.x, 15839u), ~vec4<u32>(22352u, 4294967295u, 0u, 4294967295u), global2.x) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 18255i);
}

