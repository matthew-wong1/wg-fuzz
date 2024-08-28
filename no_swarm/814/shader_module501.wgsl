struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-905f, -225f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: i32) -> f32 {
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1022f, 1000f)))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-130f, 1000f)))))));
    let var_0 = vec2<f32>(475f, 620f);
    let var_1 = arg_1.c;
    global0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.b.b.zw + vec2<f32>(1392f, -500f)) * _wgslsmith_f_op_vec2_f32(var_1.b.b.ww - arg_1.c.b.b.zz)), vec2<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(var_0.x * 263f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1436f, arg_1.c.b.c)))))));
    var var_2 = arg_1;
    return 204f;
}

fn func_2() -> i32 {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1601f, 1000f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global0.x)), 1809f)))));
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-494f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(func_3(any(vec3<bool>(false, false, true)), Struct_3(u_input.a.x, u_input.a, Struct_2(-49911i, Struct_1(vec2<bool>(true, true), vec4<f32>(global0.x, -108f, -1000f, 2306f), global0.x))), -vec4<i32>(24664i, -1i, -19452i, u_input.a.x), ~u_input.a.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(false, Struct_3(u_input.a.x, u_input.a, Struct_2(u_input.a.x, Struct_1(vec2<bool>(true, false), vec4<f32>(global0.x, 999f, 1466f, global0.x), global0.x))), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), 2147483647i)) + global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -984f) * 1462f))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_0, _wgslsmith_f_op_vec2_f32(var_0 + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_0)) * vec2<f32>(173f, var_0.x))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(var_0, vec2<f32>(205f, -469f), true))))))));
    var var_1 = vec2<i32>(u_input.a.x, abs(~(-2147483647i)));
    let var_2 = Struct_1(select(select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), false), vec2<bool>(!all(vec2<bool>(false, false)), any(vec4<bool>(false, true, false, false))), any(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) - _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(sign(global0.x))), -1674f, _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, -1275f), global0.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 458f, var_0.x, var_0.x) + vec4<f32>(-396f, global0.x, global0.x, -1463f)))), var_0.x);
    return _wgslsmith_add_i32(var_1.x, 0i);
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: vec4<bool>, arg_3: f32) -> vec2<f32> {
    var var_0 = firstLeadingBit(-func_2());
    var var_1 = Struct_3(arg_0.x ^ ~(1i & _wgslsmith_sub_i32(u_input.a.x, -2147483647i)), vec2<i32>(arg_0.x, firstLeadingBit(reverseBits(29291i))), Struct_2(u_input.a.x, Struct_1(arg_2.zw, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.x, 1469f, -388f, global0.x))), global0.x)));
    let var_2 = select(arg_2, vec4<bool>(!select(true, arg_2.x != true, any(arg_2)), arg_2.x, false, any(!vec4<bool>(var_1.c.b.a.x, arg_2.x, var_1.c.b.a.x, var_1.c.b.a.x))), !select(arg_2, select(arg_2, !vec4<bool>(false, true, arg_2.x, true), var_1.c.b.a.x == false), select(vec4<bool>(var_1.c.b.a.x, false, arg_2.x, var_1.c.b.a.x), !arg_2, true)));
    let var_3 = 3178f;
    var_1 = Struct_3(arg_0.x, select(firstTrailingBit(vec2<i32>(0i, abs(var_1.a))), vec2<i32>(1i, _wgslsmith_mult_i32(2147483647i, -1i) << (_wgslsmith_add_u32(arg_1, arg_1) % 32u)), any(var_1.c.b.a)), Struct_2(~2147483647i, Struct_1(!arg_2.ww, _wgslsmith_f_op_vec4_f32(step(var_1.c.b.b, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_3, -1393f, 2020f, -571f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_3, var_1.c.b.b.x, true)) - _wgslsmith_f_op_f32(min(-911f, 184f))))));
    return var_1.c.b.b.yw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -163f, 596f, -429f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) + vec4<f32>(global0.x, global0.x, global0.x, -714f))), vec4<f32>(_wgslsmith_f_op_f32(global0.x - 1728f), _wgslsmith_f_op_f32(select(972f, global0.x, true)), 144f, _wgslsmith_div_f32(global0.x, 1199f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, 446f) - global0.x));
    var var_1 = !vec4<bool>(!var_0.a.x || true, false, !var_0.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 74246u, 4294967295u, 37844u), vec4<u32>(0u, 12394u, 5016u, 4294967295u)) != abs(1u));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-528f, global0.x))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(645f - 265f), _wgslsmith_f_op_f32(f32(-1f) * -505f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(u_input.a, 57724u, vec4<bool>(false, var_1.x, var_1.x, true), -454f)), _wgslsmith_f_op_vec2_f32(-var_0.b.zz)))));
    let var_2 = select(vec3<bool>(true, var_0.a.x, select(!var_1.x, var_0.a.x, true) && false), var_1.xyx, var_1.x);
    var var_3 = Struct_1(var_0.a, var_0.b, global0.x);
    var var_4 = var_0.c;
    var var_5 = Struct_2(~7156i, Struct_1(!var_1.wz, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_vec2_f32(func_1(u_input.a, 9793u, vec4<bool>(false, var_2.x, var_1.x, var_0.a.x), var_0.b.x)).x, 469f) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_3.b)))), _wgslsmith_div_f32(1381f, _wgslsmith_f_op_f32(-344f - global0.x))));
    var var_6 = Struct_2(abs(14314i) << (1u % 32u), var_5.b);
    var var_7 = vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(18972u, 8191u), vec2<u32>(2168u, 6461u))), ~(~vec2<u32>(0u, 4294967295u))) | select(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 3460u), vec2<u32>(1u, 103185u), vec2<u32>(1u, 117535u)), _wgslsmith_div_vec2_u32(vec2<u32>(38436u, 4294967295u), vec2<u32>(14108u, 4294967295u))), select(1u, 4294967295u, true), true && all(vec4<bool>(var_0.a.x, var_3.a.x, var_2.x, var_1.x))), ~(~(~0u) << (1u % 32u)), reverseBits(4294967295u), 0u >> (_wgslsmith_add_u32(_wgslsmith_div_u32(~8637u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 4294967295u, 32441u), vec4<u32>(36662u, 4294967295u, 8358u, 26064u))), ~_wgslsmith_div_u32(4294967295u, 18238u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec4<u32>(var_7.x, var_7.x, ~0u, 4294967295u), vec3<i32>((u_input.a.x << (1u % 32u)) << (1u % 32u), u_input.a.x, ~var_5.a) >> (_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_div_u32(51834u, 33042u), ~var_7.x, ~0u), var_7.zwy) % vec3<u32>(32u)));
}

