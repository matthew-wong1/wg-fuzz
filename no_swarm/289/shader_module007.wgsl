struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> i32 {
    global0 = Struct_1(-_wgslsmith_clamp_vec4_i32(-vec4<i32>(0i, 44761i, global1.x, global1.x), vec4<i32>(12477i, -47559i, u_input.b, u_input.b) | _wgslsmith_mult_vec4_i32(vec4<i32>(global1.x, 0i, global0.a.x, global0.a.x), vec4<i32>(46649i, u_input.b, u_input.b, global0.a.x)), firstTrailingBit(vec4<i32>(global0.a.x, global0.a.x, 2147483647i, global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.b))) + global0.b));
    global0 = Struct_1(global0.a, global0.b);
    var var_0 = vec2<bool>(true, false);
    var var_1 = Struct_1(_wgslsmith_clamp_vec4_i32(-vec4<i32>(global1.x, abs(1i), reverseBits(global1.x), _wgslsmith_dot_vec2_i32(global0.a.yy, global0.a.wz)), countOneBits(vec4<i32>(-global0.a.x, -2147483647i, _wgslsmith_div_i32(u_input.b, global0.a.x), -1i)), -min(vec4<i32>(25338i, global0.a.x, global1.x, global1.x), firstLeadingBit(vec4<i32>(u_input.b, u_input.b, global0.a.x, global0.a.x)))), 1f);
    var var_2 = Struct_1(var_1.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b * var_1.b), global0.b) + -2102f));
    return 0i;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> vec4<bool> {
    let var_0 = false;
    var var_1 = Struct_1(global0.a, global0.b);
    var_1 = arg_0;
    var_1 = Struct_1(~global0.a, 768f);
    global0 = Struct_1(vec4<i32>(abs(_wgslsmith_add_i32(-arg_3, arg_3)), _wgslsmith_clamp_i32(54351i, max(firstLeadingBit(global1.x), -arg_0.a.x), abs(1i)), arg_3, _wgslsmith_sub_i32(1i, max(arg_1.a.x, -2949i)) & abs(arg_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b, global0.b) - _wgslsmith_f_op_f32(trunc(1322f))), 296f))));
    return select(select(!select(!vec4<bool>(false, var_0, true, false), !vec4<bool>(false, true, var_0, var_0), !vec4<bool>(var_0, var_0, false, var_0)), !vec4<bool>(true, true, var_0, true), any(select(vec2<bool>(false, false), !vec2<bool>(true, var_0), false))), vec4<bool>(!all(vec3<bool>(var_0, true, var_0)) & (0u >= arg_2), !(!any(vec3<bool>(false, var_0, false))), !(var_0 != all(vec3<bool>(var_0, var_0, false))), var_0), !vec4<bool>(false, arg_2 == arg_2, var_0, true && (var_0 != var_0)));
}

fn func_2() -> Struct_1 {
    global1 = vec4<i32>(_wgslsmith_div_i32(2147483647i, global0.a.x | -2147483647i), u_input.b, global1.x ^ -18297i, _wgslsmith_mod_i32(-1i, ~_wgslsmith_mod_i32(1i, 38867i)));
    global0 = Struct_1(-global0.a, -984f);
    let var_0 = func_4(Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.a.x, 1i, _wgslsmith_sub_i32(-2147483647i, global0.a.x), ~1i), vec4<i32>(28502i, i32(-1i) * -4005i, func_3(), 1i), global0.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-429f + global0.b)))), Struct_1(~global0.a ^ global0.a, -526f), u_input.a.x, -(~u_input.b ^ _wgslsmith_mult_i32(2147483647i >> (0u % 32u), firstLeadingBit(2147483647i))));
    global0 = Struct_1(firstLeadingBit((~vec4<i32>(global1.x, global1.x, -12342i, 34654i) >> ((vec4<u32>(28516u, 0u, u_input.a.x, 126266u) ^ vec4<u32>(12053u, u_input.c.x, 0u, 1u)) % vec4<u32>(32u))) ^ select(vec4<i32>(u_input.b, u_input.b, -18208i, global0.a.x), firstTrailingBit(global0.a), vec4<bool>(var_0.x, false, var_0.x, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.b, 644f)) - global0.b)), _wgslsmith_div_f32(-1000f, 1008f)));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1427f * -1000f), 1088f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1072f, -1045f)))), var_0.xx)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b - global0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-171f, global0.b)) - 553f)), -767f));
    return Struct_1(global0.a, -1033f);
}

fn func_1(arg_0: vec4<f32>) -> vec4<i32> {
    let var_0 = select(vec2<bool>(true, true), vec2<bool>(true, select(global0.a.x, global1.x, true) <= 53136i), all(vec3<bool>(true, true, true)));
    var var_1 = func_2();
    global1 = vec4<i32>(global0.a.x, -2147483647i, 1i, -1i);
    global1 = vec4<i32>(i32(-1i) * -8207i, global0.a.x, ~u_input.b, select(_wgslsmith_dot_vec4_i32(global0.a, func_2().a), -2147483647i, var_0.x));
    var var_2 = 0u;
    return ~select(global0.a, select(vec4<i32>(global0.a.x, -2147483647i << (u_input.c.x % 32u), _wgslsmith_div_i32(-9090i, u_input.b), -1i), -_wgslsmith_clamp_vec4_i32(global0.a, global0.a, var_1.a), select(!vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(false, var_0.x, false, false), func_4(Struct_1(vec4<i32>(var_1.a.x, 1i, u_input.b, 0i), arg_0.x), Struct_1(var_1.a, var_1.b), 0u, u_input.b).x)), !select(!vec4<bool>(false, var_0.x, true, true), !vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(true, var_0.x, var_0.x, false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(func_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_div_f32(global0.b, -608f), _wgslsmith_f_op_f32(max(global0.b, 2192f)), 1000f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(812f, global0.b, global0.b, global0.b) + vec4<f32>(277f, global0.b, global0.b, 1401f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, global0.b, -470f, -836f))))), -532f);
    var var_0 = func_4(func_2(), func_2(), 16897u, u_input.b).x;
    let var_1 = ~u_input.c.x;
    let var_2 = func_2();
    var var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(109f, select(vec3<u32>(~38580u, 19292u, ~var_1), select(vec3<u32>(0u, var_1, var_1), vec3<u32>(u_input.a.x, 2001u, 29215u), vec3<bool>(false, false, true)) >> (~vec3<u32>(u_input.c.x, var_1, 1426u) % vec3<u32>(32u)), func_4(var_2, Struct_1(var_2.a, -600f), ~var_1, -12576i).xyy) | (firstLeadingBit(vec3<u32>(0u, var_1, 58572u)) >> (vec3<u32>(1u, 26983u, var_1 & 4294967295u) % vec3<u32>(32u))), -828f, u_input.b);
}

