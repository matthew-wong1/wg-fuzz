struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec2<bool>,
    d: vec4<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-1000f, vec4<u32>(1u, 0u, 4294967295u, 1u), vec4<f32>(-1161f, -378f, -342f, -738f));

var<private> global1: vec4<bool> = vec4<bool>(true, true, true, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>) -> vec3<bool> {
    global1 = vec4<bool>(false, global1.x, all(arg_0.b), all(vec3<bool>(true, arg_0.b.x, global1.x)));
    let var_0 = arg_0;
    let var_1 = firstTrailingBit(0u);
    let var_2 = _wgslsmith_add_i32(~(~(-1i)), firstLeadingBit(countOneBits(1i) << (max(~global0.b.x, ~5621u) % 32u)));
    global0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.a.x, global0.a, var_0.b.x)) + -505f), ~(~max(global0.b, global0.b)) >> (vec4<u32>(abs(u_input.a.x), countOneBits(_wgslsmith_div_u32(14188u, global0.b.x)), ~u_input.a.x, firstLeadingBit(firstLeadingBit(4294967295u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.a * 748f), _wgslsmith_f_op_f32(f32(-1f) * -1487f))), 280f, _wgslsmith_f_op_f32(global0.a + _wgslsmith_div_f32(global0.a, global0.c.x)), _wgslsmith_f_op_f32(global0.a + -2296f))));
    return !arg_0.b;
}

fn func_2() -> vec4<u32> {
    var var_0 = -1i;
    let var_1 = global0.a;
    let var_2 = true;
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(global0.c)), vec4<f32>(global0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.a - global0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.a)) + global0.a), _wgslsmith_f_op_f32(sign(global0.a))), select(true, true, true))), func_3(Struct_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(global0.c - global0.c))), vec3<bool>(!global1.x, true, false)), global0.c));
    var var_4 = ~u_input.a.zyw;
    return u_input.a;
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: vec3<u32>) -> Struct_3 {
    var var_0 = Struct_2(arg_1, ~func_2() >> (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(5377u, arg_2.x, 4294967295u), vec3<u32>(arg_2.x, u_input.a.x, 61120u)), _wgslsmith_dot_vec2_u32(~u_input.a.yw, _wgslsmith_mult_vec2_u32(arg_2.xx, vec2<u32>(global0.b.x, 21741u))), 21976u, arg_2.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(global0.c - vec4<f32>(global0.a, arg_1, -1757f, arg_1)))))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_0.c)) - global0.c))), global1.yxw);
    let var_2 = Struct_3(var_0.c, !(!(!vec3<bool>(false, var_1.b.x, false))));
    global0 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -831f), func_2(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_2.a), _wgslsmith_f_op_vec4_f32(var_1.a - vec4<f32>(-407f, 1929f, -1136f, -226f))))))));
    var var_3 = Struct_1(global1.yxx, vec3<bool>(any(vec4<bool>(var_1.b.x, true, any(var_1.b), true)), !global1.x, var_1.b.x), var_1.b.zz, vec4<bool>(true, true, true, true), func_3(Struct_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-940f, var_2.a.x, arg_1, var_1.a.x))))), vec3<bool>(true, global1.x, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(global0.a, 601f)), _wgslsmith_f_op_f32(sign(arg_1)), global0.a, -1199f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-509f, var_2.a.x, arg_1, global0.a))), vec4<f32>(254f, 696f, 529f, -1236f)))));
    return var_2;
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2, arg_3: i32) -> vec4<f32> {
    var var_0 = arg_0.a.zy;
    let var_1 = global0.c.wx;
    global0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(210f))) + _wgslsmith_f_op_f32(f32(-1f) * -1436f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x - _wgslsmith_f_op_f32(1022f + -1016f)))), global0.b, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 452f, arg_0.a.x, var_0.x) - vec4<f32>(global0.a, var_0.x, arg_0.a.x, global0.a)))), arg_0.a)))));
    let var_2 = min(_wgslsmith_sub_vec3_i32(abs(abs(vec3<i32>(-1i, arg_3, arg_3))), ~_wgslsmith_div_vec3_i32(~vec3<i32>(0i, arg_3, arg_3), firstTrailingBit(vec3<i32>(arg_3, 2147483647i, -1i)))), _wgslsmith_sub_vec3_i32(abs(~vec3<i32>(2147483647i, -1i, arg_3)), reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_3, arg_3, arg_3), vec3<i32>(-2147483647i, -1i, arg_3), vec3<i32>(arg_3, -2147483647i, 1i)))) | vec3<i32>(-37548i, -1i, max(abs(arg_3), arg_3)));
    var var_3 = firstTrailingBit(vec4<i32>(-1i, ~6634i, arg_3, 0i));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_0.a, vec4<f32>(_wgslsmith_f_op_f32(sign(585f)), var_1.x, _wgslsmith_f_op_f32(ceil(-1267f)), 893f), false))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(623f, var_0.x, var_1.x, -309f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1798f, arg_2.a, 388f, 191f))) + arg_0.a) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global0.c * arg_0.a))))), select(select(select(select(vec4<bool>(global1.x, true, global1.x, arg_1), vec4<bool>(false, false, true, arg_1), false), vec4<bool>(true, false, global1.x, true), var_3.x < 13769i), select(select(vec4<bool>(arg_0.b.x, arg_0.b.x, true, true), vec4<bool>(global1.x, arg_1, true, global1.x), true), select(vec4<bool>(false, false, global1.x, global1.x), vec4<bool>(arg_0.b.x, arg_0.b.x, false, arg_0.b.x), arg_1), all(vec2<bool>(arg_0.b.x, arg_1))), true), !select(vec4<bool>(global1.x, global1.x, true, arg_0.b.x), vec4<bool>(false, false, true, false), !vec4<bool>(global1.x, true, false, false)), select(select(vec4<bool>(global1.x, true, true, arg_1), vec4<bool>(global1.x, false, global1.x, global1.x), arg_0.b.x), vec4<bool>(true, true, arg_1, -349f != arg_0.a.x), vec4<bool>(!arg_1, true, !arg_1, select(false, true, global1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(func_1(vec3<i32>(1i, 35112i, -12150i), global0.c.x, vec3<u32>(u_input.a.x, u_input.a.x, global0.b.x)), false, Struct_2(545f, vec4<u32>(52746u, global0.b.x, 7030u, u_input.a.x), global0.c), 1i))), vec4<f32>(_wgslsmith_div_f32(-150f, _wgslsmith_f_op_f32(global0.c.x - global0.c.x)), _wgslsmith_f_op_f32(global0.a + -447f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -385f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.c.x)))), all(select(func_1(vec3<i32>(13980i, 2147483647i, 58359i), -1128f, vec3<u32>(65577u, 1u, u_input.a.x)).b, vec3<bool>(true, global1.x, false), select(vec3<bool>(true, true, global1.x), vec3<bool>(true, global1.x, true), global1.x))))), func_3(Struct_3(vec4<f32>(-423f, _wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(global0.a + global0.c.x), _wgslsmith_f_op_f32(-global0.c.x)), select(global1.wwx, select(vec3<bool>(global1.x, false, true), vec3<bool>(global1.x, false, true), global1.zzx), !global1.x)), global0.c));
    let var_1 = func_1(_wgslsmith_sub_vec3_i32(~_wgslsmith_mod_vec3_i32(~vec3<i32>(-1i, 0i, -1i), vec3<i32>(1i, 1i, 1i)), abs(_wgslsmith_clamp_vec3_i32(~vec3<i32>(2147483647i, -2147483647i, 15832i), ~vec3<i32>(-8809i, 6436i, 1i), -vec3<i32>(0i, 0i, -58278i)))), global0.c.x, _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(global0.b.x, 1u, firstLeadingBit(0u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(global0.b.x, _wgslsmith_mod_u32(global0.b.x, 0u), ~22753u), global0.b.zxx, ~u_input.a.wxy)));
    var var_2 = Struct_2(703f, vec4<u32>(0u, 4294967295u, 0u, _wgslsmith_mult_u32(1u, firstLeadingBit(global0.b.x) >> (min(u_input.a.x, 1956u) % 32u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1152f), 416f, _wgslsmith_f_op_f32(min(-190f, var_0.a.x)), -493f) * vec4<f32>(_wgslsmith_div_f32(-264f, _wgslsmith_f_op_f32(f32(-1f) * -177f)), var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a.x)) - global0.c.x), _wgslsmith_f_op_f32(684f - _wgslsmith_f_op_f32(ceil(var_0.a.x))))));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), countOneBits(vec4<u32>(max(~10253u, ~25252u), 46845u, var_2.b.x, 43324u >> (1u % 32u))), global0.c);
    let var_4 = ~(-1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(var_0.a.x, _wgslsmith_div_f32(global0.c.x, var_2.c.x))), 3164f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(2374f, -603f, false)), _wgslsmith_f_op_f32(select(456f, -783f, global1.x)))), var_1.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_2.c.wyz * var_1.a.zzw))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(738f, var_2.a, global0.c.x)))))) - vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.a.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.x))), -810f)), var_2.a, 1u);
}

