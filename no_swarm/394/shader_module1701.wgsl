struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec4<f32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(1398f, 1456f, -1000f), true, vec4<f32>(376f, 475f, -561f, 680f), false);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> vec3<f32> {
    global0 = Struct_1(global0.a, any(select(!select(vec4<bool>(false, global0.d, global0.b, false), vec4<bool>(global0.d, true, global0.b, true), vec4<bool>(false, true, global0.b, true)), vec4<bool>(true, true, true, true), !vec4<bool>(true, global0.d, false, false))), _wgslsmith_f_op_vec4_f32(-global0.c), all(!(!(!vec4<bool>(global0.d, global0.d, global0.b, global0.d)))));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a)), global0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.a.x, global0.c.x, global0.c.x, -647f)))) - _wgslsmith_f_op_vec4_f32(-global0.c)), all(select(vec4<bool>(true, all(vec3<bool>(false, true, false)), 563f == global0.a.x, global0.d), !(!vec4<bool>(global0.b, global0.b, false, true)), global0.b)));
    global0 = Struct_1(global0.c.xxy, false, vec4<f32>(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) + _wgslsmith_f_op_f32(select(global0.c.x, global0.c.x, global0.d)))), -389f, 975f), _wgslsmith_dot_vec2_u32(max(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, 0u), u_input.b, vec2<u32>(u_input.b.x, 61313u)), vec2<u32>(0u, 28344u) << (u_input.b % vec2<u32>(32u))), u_input.b) != (4294967295u ^ _wgslsmith_sub_u32(u_input.b.x, firstLeadingBit(19376u))));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1025f + global0.a.x)), _wgslsmith_f_op_f32(global0.c.x * -449f), _wgslsmith_f_op_f32(trunc(global0.c.x))))), true, global0.c, any(vec4<bool>(~u_input.a.x <= _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x), true, true, true)));
    let var_0 = -1i;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.c.zyy) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global0.c.xww)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> vec2<bool> {
    let var_0 = arg_0.c;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.x + arg_0.c.x), _wgslsmith_f_op_f32(-global0.c.x), global0.c.x) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.a.x, -1220f, arg_0.a.x))) - _wgslsmith_f_op_vec3_f32(func_3()))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, -1378f, arg_0.a.x))))), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.c.x, var_0.x, -601f, var_0.x), global0.c, vec4<bool>(false, arg_0.b, arg_0.b, false))))))), arg_0.b);
    let var_2 = Struct_1(var_0.zyw, false, var_0, arg_0.b);
    let var_3 = ~1u;
    var var_4 = var_1;
    return vec2<bool>(var_2.b, select(true, any(vec2<bool>(var_4.b, true)), any(!vec4<bool>(global0.b, var_4.b, var_2.b, var_2.b))));
}

fn func_4(arg_0: vec2<bool>) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_div_vec3_f32(global0.c.zzx, vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-787f * -779f))), -116f, _wgslsmith_f_op_f32(exp2(global0.a.x)))), global0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(global0.c))), !(!vec4<bool>(false, arg_0.x, true, global0.d)))) + vec4<f32>(1297f, global0.c.x, global0.c.x, _wgslsmith_f_op_f32(-1954f - _wgslsmith_f_op_f32(exp2(global0.a.x))))), all(arg_0));
    var var_0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global0.a)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c.x, 572f)), _wgslsmith_f_op_f32(floor(-260f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(894f * global0.a.x)))), true, vec4<f32>(global0.c.x, global0.a.x, _wgslsmith_f_op_f32(global0.a.x - 2178f), -202f), global0.d);
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(global0.c.xwx)), !any(select(!vec3<bool>(true, false, arg_0.x), !vec3<bool>(true, false, global0.d), select(arg_0.x, true, arg_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_0.c), global0.c, arg_0.x)), vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(round(var_0.a.x)), 1000f))) + vec4<f32>(123f, -1107f, 642f, var_0.a.x)), false);
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(global0.c.xxy * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-2461f, var_0.c.x, 697f)))))), true, _wgslsmith_f_op_vec4_f32(var_0.c * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-852f, global0.c.x, var_0.a.x, -1000f) * vec4<f32>(152f, 217f, var_0.c.x, -1000f)) + _wgslsmith_f_op_vec4_f32(-global0.c)), global0.c)), any(vec3<bool>(arg_0.x, arg_0.x, true)));
    let var_1 = select(firstLeadingBit(select(~(~vec4<u32>(1074u, u_input.b.x, u_input.b.x, u_input.b.x)), ~min(vec4<u32>(u_input.b.x, 50823u, 1u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 33055u)), vec4<bool>(arg_0.x, true, true, u_input.a.x > u_input.a.x))), abs(reverseBits(vec4<u32>(~0u, firstLeadingBit(u_input.b.x), ~66061u, ~4294967295u))), !((14625i >= u_input.a.x) && func_2(Struct_1(vec3<f32>(1432f, 474f, var_0.c.x), false, global0.c, arg_0.x), u_input.a.yz ^ vec2<i32>(u_input.a.x, 24779i)).x));
    return Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.c.x), -614f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a.x - -1000f)))) - vec3<f32>(var_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_0.c.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(221f + -111f))))), global0.d & false, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(global0.c * vec4<f32>(783f, -669f, -1344f, -272f)))), arg_0.x);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: Struct_1) -> f32 {
    global0 = func_4(select(vec2<bool>(any(!vec3<bool>(false, arg_2.b, false)), any(func_2(arg_2, vec2<i32>(u_input.a.x, u_input.a.x)))), select(!vec2<bool>(true, global0.b), vec2<bool>(global0.b, arg_2.b || false), !(arg_2.c.x > 1246f)), !func_2(arg_2, u_input.a.xz)));
    global0 = func_4(vec2<bool>(any(!select(vec3<bool>(global0.d, true, global0.d), vec3<bool>(false, arg_2.d, false), vec3<bool>(global0.d, arg_2.b, arg_2.d))), !(!arg_2.d & all(vec3<bool>(false, true, false)))));
    let var_0 = _wgslsmith_f_op_vec3_f32(func_3()).zx;
    let var_1 = ~(~select(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 16887u, 4294967295u, 0u), vec4<u32>(arg_0.x, 35400u, 29024u, u_input.b.x)), ~vec4<u32>(4294967295u, 1u, 13923u, 0u), vec4<u32>(arg_0.x, arg_1.x, 22487u, arg_0.x)), vec4<u32>(u_input.b.x, _wgslsmith_add_u32(arg_0.x, 1u), ~u_input.b.x, 66986u), !func_2(arg_2, vec2<i32>(0i, u_input.a.x)).x));
    let var_2 = global0.a.zy;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-379f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.c.x - 1121f)))) - _wgslsmith_f_op_f32(sign(-740f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global0.c.wxy, global0.d, _wgslsmith_f_op_vec4_f32(round(global0.c)), !(!global0.d));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.c.xyy), false, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b, Struct_1(vec3<f32>(940f, global0.c.x, global0.a.x), global0.b, var_0.c, true))), _wgslsmith_f_op_f32(-var_0.c.x), global0.a.x, global0.a.x) - vec4<f32>(var_0.a.x, _wgslsmith_div_f32(global0.c.x, 790f), -1063f, var_0.a.x)), vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * 1372f)), _wgslsmith_f_op_f32(f32(-1f) * -1025f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a.x)))))), global0.d);
    var var_1 = u_input.b.x;
    let var_2 = ~((u_input.a.x & u_input.a.x) >> (countOneBits(~u_input.b.x) % 32u)) ^ _wgslsmith_div_i32(-u_input.a.x, -1i);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.x, abs(abs(~(~u_input.b))), _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(var_2, u_input.a.x, 7130i, u_input.a.x)), vec4<i32>(0i, -46943i, -34136i, -53117i) << (~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u))) ^ _wgslsmith_sub_vec4_i32(firstTrailingBit(reverseBits(vec4<i32>(-41565i, 1i, u_input.a.x, u_input.a.x))), vec4<i32>(var_2, 1i, -1i, firstLeadingBit(10520i))), u_input.b.x);
}

