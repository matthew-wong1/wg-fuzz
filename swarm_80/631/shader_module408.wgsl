struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(i32(-2147483648), 26760i, i32(-2147483648)), -932f, vec4<f32>(-1153f, 248f, -1000f, 109f), vec2<f32>(-898f, 1551f));

var<private> global1: f32 = 459f;

var<private> global2: vec4<bool>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    global0 = Struct_1(vec3<i32>(1i, -1701i, global0.a.x), global0.c.x, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.c)) * vec4<f32>(_wgslsmith_div_f32(global0.b, global0.c.x), global0.b, _wgslsmith_f_op_f32(f32(-1f) * -286f), global0.c.x)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.d.x, -571f), _wgslsmith_f_op_vec2_f32(global0.d + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.c.yx, vec2<f32>(1237f, global0.b)))))));
    let var_0 = Struct_1(vec3<i32>(_wgslsmith_clamp_i32(-34546i, abs(~u_input.a), -2147483647i), (reverseBits(u_input.b.x) >> (117583u % 32u)) >> (u_input.c % 32u), min(~firstTrailingBit(global0.a.x), _wgslsmith_div_i32(min(23067i, u_input.a), max(79459i, -2147483647i)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), global0.c.x), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global0.c))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1257f, 847f)));
    let var_1 = firstLeadingBit(vec4<i32>(13804i, 2076i, firstTrailingBit(abs(global0.a.x)) & -16441i, _wgslsmith_clamp_i32(-_wgslsmith_mod_i32(global0.a.x, -2147483647i), _wgslsmith_mult_i32(2147483647i >> (u_input.c % 32u), reverseBits(global0.a.x)), u_input.b.x)));
    let var_2 = vec3<u32>(u_input.c, 41412u, _wgslsmith_dot_vec2_u32(select(_wgslsmith_add_vec2_u32(abs(vec2<u32>(1u, u_input.c)), ~vec2<u32>(8287u, 0u)), abs(vec2<u32>(u_input.c, u_input.c) & vec2<u32>(u_input.c, 4294967295u)), true), ~vec2<u32>(~u_input.c, firstLeadingBit(u_input.c))));
    var var_3 = var_0;
    return global2.x && false;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: f32) -> vec2<bool> {
    var var_0 = 0i;
    global0 = arg_0;
    var var_1 = 428f;
    var var_2 = !(!(func_3() && global2.x));
    var_2 = (~arg_0.a.x < arg_1.a.x) | !any(!arg_2.zyz);
    return !vec2<bool>(!(!any(vec2<bool>(false, false))), _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(2147483647i, 1i)), -vec2<i32>(arg_0.a.x, 1i)) == -max(arg_1.a.x, global0.a.x));
}

fn func_4(arg_0: bool) -> Struct_1 {
    global2 = select(vec4<bool>(!(min(93958i, u_input.b.x) > (u_input.b.x << (21988u % 32u))), true, !global2.x, true), vec4<bool>(1000f > global0.b, true, func_3(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)) >= global0.b), any(!global2.yx) && global2.x);
    let var_0 = global2.zyx;
    let var_1 = 27398i;
    let var_2 = firstTrailingBit(max(~(~u_input.c), ~u_input.c << (59477u % 32u))) >> (firstTrailingBit(1u) % 32u);
    global1 = global0.c.x;
    return Struct_1(min(vec3<i32>(-(~(-87114i)), 0i, u_input.b.x | 2147483647i), global0.a), -1258f, _wgslsmith_f_op_vec4_f32(round(global0.c)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0.d, vec2<f32>(global0.b, global0.b), global2.yz)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, global0.b) - vec2<f32>(-786f, 1335f))), global0.c.xy), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) + global0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b - -1254f)))));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>) -> f32 {
    global0 = func_4(any(func_2(Struct_1(-global0.a, _wgslsmith_f_op_f32(global0.c.x + -1067f), _wgslsmith_f_op_vec4_f32(step(global0.c, global0.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(190f, global0.b) + global0.c.zx)), Struct_1(-vec3<i32>(0i, 13324i, -146i), global0.d.x, global0.c, _wgslsmith_f_op_vec2_f32(global0.c.wx - global0.c.zz)), !vec4<bool>(false, arg_0, true, arg_0), -972f)));
    let var_0 = Struct_1(~(vec3<i32>(firstTrailingBit(-21117i), arg_1.x, firstLeadingBit(global0.a.x)) | max(~global0.a, ~global0.a)), 421f, vec4<f32>(_wgslsmith_f_op_f32(select(-292f, global0.d.x, !global2.x)), _wgslsmith_f_op_f32(floor(global0.c.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.d.x))))), global0.d.x), _wgslsmith_f_op_vec2_f32(exp2(global0.c.wy)));
    let var_1 = var_0;
    var var_2 = Struct_1(reverseBits(max(global0.a, firstTrailingBit(~var_0.a))), 181f, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.c - _wgslsmith_f_op_vec4_f32(floor(global0.c))) - _wgslsmith_f_op_vec4_f32(var_0.c + vec4<f32>(var_0.d.x, var_1.b, var_0.c.x, -284f))))), global0.c.yx);
    var_2 = var_1;
    return -1461f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(vec3<i32>(global0.a.x, -22910i, -(~(-9910i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -252f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)), global0.d.x, global0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global2.x, ~vec2<i32>(27709i, global0.a.x))) * -1812f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b * 1078f) - -705f), -209f)));
    let var_0 = Struct_1(global0.a, _wgslsmith_f_op_f32(round(global0.c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-222f, _wgslsmith_f_op_f32(global0.d.x + global0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -1107f), _wgslsmith_f_op_f32(-global0.c.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -280f), _wgslsmith_f_op_f32(141f + 1934f), _wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_div_f32(global0.c.x, 419f)))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-659f, -1000f, -2923f, global0.b), global0.c, vec4<bool>(true, global2.x, global2.x, global0.a.x == u_input.b.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(trunc(global0.c.x)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.d.x - 1128f), _wgslsmith_f_op_f32(ceil(669f))), _wgslsmith_f_op_vec2_f32(-global0.d)), func_2(Struct_1(global0.a & vec3<i32>(-43104i, global0.a.x, 77240i), _wgslsmith_f_op_f32(round(-477f)), global0.c, vec2<f32>(global0.c.x, global0.d.x)), func_4(true), vec4<bool>(true, select(true, false, false), global2.x, func_2(Struct_1(global0.a, -1420f, global0.c, vec2<f32>(global0.b, -613f)), Struct_1(global0.a, global0.c.x, global0.c, vec2<f32>(719f, -293f)), vec4<bool>(global2.x, global2.x, global2.x, true), -1081f).x), -1139f))));
    let var_1 = false;
    var var_2 = ~(u_input.c | u_input.c);
    let var_3 = countOneBits(~(~u_input.c));
    let var_4 = var_0;
    let var_5 = ~1u;
    let var_6 = abs(vec4<u32>(_wgslsmith_div_u32(78174u, 77302u), var_3 | u_input.c, 1u, var_3) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c ^ 0u, u_input.c, 6893u, var_5), ~vec4<u32>(var_5, 4294967295u, u_input.c, var_5) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 27809u, var_5, 1u), vec4<u32>(4294967295u, 4294967295u, u_input.c, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

