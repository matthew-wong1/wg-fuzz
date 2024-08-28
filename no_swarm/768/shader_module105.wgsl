struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: i32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-1i, -1i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    global0 = u_input.a.xz;
    global0 = (-firstLeadingBit(vec2<i32>(global0.x, 1i)) ^ vec2<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(-vec2<i32>(-1922i, global0.x), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(-2147483647i, global0.x))))) & vec2<i32>(~global0.x, ~(-16605i));
    return vec4<u32>(min(~arg_0.b, ~(~abs(arg_0.a.x))), ~_wgslsmith_dot_vec2_u32(u_input.b.xx, u_input.c), ~11812u, 4294967295u);
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_2 {
    let var_0 = ~u_input.b;
    global0 = u_input.d;
    return Struct_2(_wgslsmith_mod_vec4_u32(~abs(func_3(Struct_1(u_input.b.yz, 4294967295u, true))), vec4<u32>(~(~4294967295u), u_input.b.x, ~112616u, 0u)));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec2<bool>) -> vec2<i32> {
    global0 = -u_input.d;
    let var_0 = Struct_3(~vec3<u32>(select(arg_1.a.x, arg_1.a.x >> (4294967295u % 32u), !arg_2.x), 4294967295u, _wgslsmith_sub_u32(u_input.c.x, 19540u) & 88393u), arg_1, _wgslsmith_mult_i32(-global0.x, global0.x), vec2<bool>(any(select(select(arg_2, arg_2, arg_2.x), select(vec2<bool>(false, arg_2.x), vec2<bool>(arg_2.x, false), false), all(vec3<bool>(false, true, true)))), !all(vec3<bool>(arg_2.x, false, arg_2.x))));
    global0 = u_input.a.yx;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1026f - _wgslsmith_f_op_f32(231f * 304f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(148f + -678f)))), -1010f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-110f + 796f)))) - 1380f));
    var var_2 = Struct_4(vec3<u32>(abs(arg_1.a.x), select(0u, arg_0, all(arg_2)), u_input.b.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1258f, var_1, var_1, var_1), _wgslsmith_div_vec4_f32(vec4<f32>(var_1, var_1, -1000f, var_1), vec4<f32>(1000f, -467f, 1258f, var_1))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1, var_1, 1987f, -1046f), vec4<f32>(var_1, var_1, 387f, var_1)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(782f, var_1, 359f, -107f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -1210f, -703f, -1000f) - vec4<f32>(1693f, -2948f, var_1, var_1)))), select(!select(vec4<bool>(true, var_0.d.x, true, true), vec4<bool>(false, arg_2.x, false, true), var_0.d.x), !select(vec4<bool>(arg_2.x, arg_2.x, var_0.d.x, true), vec4<bool>(var_0.d.x, false, arg_2.x, var_0.d.x), var_0.d.x), _wgslsmith_div_f32(var_1, -1325f) < 373f))), 0u, countOneBits(abs(~vec4<u32>(45009u, 65514u, arg_0, 4294967295u))));
    return _wgslsmith_add_vec2_i32(~(-firstLeadingBit(u_input.d)) ^ u_input.d, vec2<i32>(firstTrailingBit(1i | -var_0.c), min(var_0.c, var_0.c)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: i32, arg_3: f32) -> u32 {
    global0 = func_4(countOneBits(_wgslsmith_add_u32(u_input.b.x, u_input.c.x | 4294967295u)), func_2(reverseBits(20212u), 4294967295u), select(vec2<bool>(true, true), vec2<bool>(true, true), true)) & (firstTrailingBit(~_wgslsmith_add_vec2_i32(vec2<i32>(global0.x, global0.x), u_input.d)) << (vec2<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.b), select(u_input.b, u_input.b, true)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, 61827u, u_input.c.x), min(vec4<u32>(u_input.b.x, 4294967295u, 12111u, u_input.b.x), vec4<u32>(1u, 0u, u_input.b.x, u_input.b.x)))) % vec2<u32>(32u)));
    let var_0 = !select(vec2<bool>(true, true), vec2<bool>(true, true), true & select(all(vec2<bool>(false, false)), select(false, false, false), any(vec4<bool>(true, true, false, false))));
    global0 = vec2<i32>(u_input.a.x, max(_wgslsmith_sub_i32(-18066i, ~min(global0.x, 41244i)), _wgslsmith_mod_i32(global0.x, arg_2)));
    var var_1 = var_0.x || !(false == all(vec3<bool>(var_0.x, var_0.x, false)));
    var var_2 = arg_3;
    return _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.b, abs(min(_wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, 27576u, 11137u)), firstTrailingBit(vec3<u32>(u_input.b.x, u_input.b.x, u_input.c.x))))), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))) || true, true, u_input.c.x <= ~func_1(vec4<f32>(105f, 706f, 174f, -155f), vec2<f32>(761f, -254f), -8401i, -758f)), select(select(select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true)), vec3<bool>(4294967295u == u_input.c.x, true, all(vec3<bool>(false, true, true))), all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), false))), select(vec3<bool>(true, all(vec4<bool>(false, true, true, true)), 0u >= u_input.b.x), vec3<bool>(any(vec4<bool>(true, true, false, false)), true, any(vec4<bool>(true, false, true, false))), vec3<bool>(true, true, true)), all(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, all(vec2<bool>(true, false)), true), vec3<bool>(true, true, true)), vec3<bool>(false, ~26945u < countOneBits(u_input.b.x), true), false));
    var var_1 = ~select(u_input.c, ~u_input.c, select(vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(false, true), var_0.zz, var_0.x), select(var_0.zx, vec2<bool>(true, false), true)));
    var var_2 = _wgslsmith_clamp_i32(abs(abs(-u_input.a.x)) << (1u % 32u), ~(-min(max(70021i, 15150i), -global0.x)), u_input.d.x);
    global0 = firstTrailingBit(select(u_input.d, _wgslsmith_clamp_vec2_i32(select(min(u_input.d, u_input.a.yy), ~u_input.d, var_0.x), u_input.a.ww, vec2<i32>(-2147483647i, global0.x) ^ ~u_input.d), !(!var_0.yx)));
    global0 = _wgslsmith_sub_vec2_i32(-vec2<i32>(-select(global0.x, 2147483647i, true), u_input.d.x), vec2<i32>(_wgslsmith_div_i32(global0.x, -u_input.a.x), u_input.a.x >> (~var_1.x % 32u)));
    var_2 = max(global0.x, 31973i);
    let var_3 = Struct_1(~u_input.b.yz, var_1.x, var_0.x);
    global0 = -_wgslsmith_add_vec2_i32(~(-vec2<i32>(u_input.a.x, u_input.a.x)), _wgslsmith_clamp_vec2_i32(u_input.d, countOneBits(u_input.a.xy), _wgslsmith_mult_vec2_i32(vec2<i32>(18294i, global0.x), u_input.d))) >> (~max(~min(vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(u_input.c.x, u_input.b.x)), u_input.c) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-896f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-495f, _wgslsmith_f_op_f32(min(1594f, -560f)))))), -1631f, 1u, -2147483647i);
}

