struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
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

var<private> global0: Struct_1 = Struct_1(vec3<f32>(1072f, -1000f, -2668f), vec4<bool>(false, true, false, true), vec2<i32>(-31502i, -1i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: i32) -> vec2<f32> {
    var var_0 = false;
    global0 = arg_1.a;
    global0 = arg_1.b;
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(-_wgslsmith_div_i32(arg_1.b.c.x, 1i), i32(-1i) * -arg_2), -(i32(-1i) * -2147483647i)) | arg_2;
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(arg_1.a.a + arg_1.c.a)))))), vec4<bool>(!all(vec4<bool>(true, arg_0, global0.b.x, true)) | !global0.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.b.x, 31587u, 285u), u_input.a) <= max(4294967295u, _wgslsmith_add_u32(u_input.b.x, u_input.a.x)), false, arg_0), abs(~(-global0.c)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.a.x, global0.a.x), global0.a.zz, arg_1.b.b.xy))), vec2<f32>(_wgslsmith_f_op_f32(-1157f + global0.a.x), _wgslsmith_f_op_f32(floor(2110f))))))));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec4<f32>) -> vec3<f32> {
    let var_0 = Struct_2(arg_1.c, arg_1.b, arg_1.b);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.a.x * -1934f)) - 1294f)), _wgslsmith_f_op_f32(-arg_0.x));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(true, var_0, u_input.c)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(398f)), _wgslsmith_f_op_f32(var_0.c.a.x - global0.a.x)) * _wgslsmith_f_op_vec2_f32(exp2(arg_0.wy)))));
    var var_2 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~u_input.b, max(vec3<u32>(0u, 56741u, u_input.a.x), ~vec3<u32>(u_input.d.x, u_input.d.x, 9961u))), _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_sub_u32(21002u, 19235u), u_input.b.x), u_input.d.yw));
    let var_3 = -2147483647i;
    return arg_2.xzy;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> u32 {
    var var_0 = true;
    let var_1 = global0.b.xy;
    var var_2 = vec2<bool>(!(!(arg_2.c.x < 1i) | false), global0.b.x);
    let var_3 = Struct_2(Struct_1(vec3<f32>(-885f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.a.x)))), global0.b, ~firstLeadingBit(arg_2.c)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_2(vec4<f32>(198f, arg_1, global0.a.x, -1000f), Struct_2(Struct_1(arg_2.a, arg_2.b, vec2<i32>(global0.c.x, arg_2.c.x)), arg_2, arg_2), vec4<f32>(arg_2.a.x, -436f, arg_1, 896f)))))), !select(vec4<bool>(var_2.x, arg_2.b.x, global0.b.x, false), !arg_2.b, false), vec2<i32>(~2147483647i, _wgslsmith_div_i32(1i, arg_2.c.x | 1i))), Struct_1(_wgslsmith_f_op_vec3_f32(func_2(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(-arg_1), 159f, _wgslsmith_f_op_f32(f32(-1f) * -311f)), Struct_2(Struct_1(vec3<f32>(-1620f, 1436f, arg_1), vec4<bool>(true, global0.b.x, false, var_1.x), vec2<i32>(-1i, arg_0)), arg_2, arg_2), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-267f, arg_2.a.x, -1485f, -339f), vec4<f32>(arg_1, global0.a.x, arg_2.a.x, global0.a.x))))))), !(!(!vec4<bool>(var_1.x, false, var_1.x, false))), select(min(~global0.c, _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, 0i), vec2<i32>(global0.c.x, arg_0))), arg_2.c, select(!vec2<bool>(true, var_1.x), select(arg_2.b.yy, arg_2.b.zx, false), false))));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-547f, _wgslsmith_f_op_f32(global0.a.x * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c.a.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(640f, -639f, -591f, arg_1), vec4<f32>(-1218f, -766f, arg_1, arg_1)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1483f, arg_2.a.x, var_3.a.a.x, -288f) + vec4<f32>(-353f, -124f, arg_2.a.x, -1040f)))))));
    return ~max(16551u, ~1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.b.x;
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a + global0.a)), select(global0.b, select(global0.b, vec4<bool>(!global0.b.x, !global0.b.x, true, false), u_input.a.x == ~u_input.b.x), select(!global0.b, global0.b, global0.b.x)), ~(-(global0.c >> (~vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)))));
    let var_1 = vec3<u32>(u_input.d.x, func_1(_wgslsmith_mult_i32(~(-1i), u_input.c ^ global0.c.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.a.x))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, 1415f, 212f) + vec3<f32>(-779f, -226f, global0.a.x)), global0.b, global0.c | global0.c)) ^ ~u_input.a.x, abs(_wgslsmith_div_u32(select(u_input.d.x, u_input.a.x, global0.b.x), 0u)));
    let var_2 = _wgslsmith_sub_vec4_u32(~_wgslsmith_add_vec4_u32(~firstTrailingBit(u_input.d), countOneBits(u_input.d)), vec4<u32>(reverseBits(u_input.a.x | ~14450u), var_1.x, 55872u >> (~(u_input.d.x << (var_1.x % 32u)) % 32u), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.d.zz, _wgslsmith_mult_vec2_u32(vec2<u32>(5485u, 1u), vec2<u32>(var_1.x, var_1.x))), _wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.d.x, 4395u), vec2<u32>(0u, 1832u)), ~vec2<u32>(0u, 30911u)))));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.a.x, global0.a.x, 512f, global0.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-357f, -641f, global0.a.x, -1000f)))))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, 553f, global0.a.x) * global0.a), !vec4<bool>(true, false, global0.b.x, false), global0.c), Struct_1(global0.a, select(vec4<bool>(false, global0.b.x, global0.b.x, true), global0.b, global0.b.x), ~vec2<i32>(global0.c.x, 47623i)), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-319f, -231f, global0.a.x), vec3<f32>(-1199f, global0.a.x, global0.a.x)), !global0.b, select(vec2<i32>(u_input.c, u_input.c), global0.c, global0.b.yy))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.a.x)), _wgslsmith_f_op_f32(1416f - 215f), _wgslsmith_f_op_f32(round(-579f)), _wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global0.a.x, 1537f, global0.a.x, global0.a.x), vec4<f32>(global0.a.x, 970f, global0.a.x, global0.a.x)), vec4<f32>(global0.a.x, 796f, global0.a.x, 253f), global0.b)), select(global0.b, !global0.b, select(vec4<bool>(global0.b.x, global0.b.x, false, global0.b.x), global0.b, false)))))), !vec4<bool>(!global0.b.x, true, all(global0.b.xzz), true), reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, global0.c.x) >> (countOneBits(var_1.xy) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(global0.c & global0.c, min(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, 12062i))))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(~(~u_input.c), global0.c.x, -countOneBits(u_input.c), -u_input.c & -global0.c.x));
}

