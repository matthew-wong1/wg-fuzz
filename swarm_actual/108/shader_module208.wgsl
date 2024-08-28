struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_1, 7>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    var var_0 = global0.e;
    let var_1 = ~global1.yxx;
    var var_2 = true;
    let var_3 = Struct_1(max(global0.a, min(global0.a, vec2<u32>(u_input.a.x, ~global0.a.x))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, -1969f, _wgslsmith_f_op_f32(sign(1131f))) * global0.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(314f, -727f, global0.b.x))))))), 69620u, _wgslsmith_f_op_f32(global0.b.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-634f, 1542f)) + _wgslsmith_f_op_f32(abs(838f))), -778f)), !(!vec2<bool>(any(global0.e), any(vec3<bool>(global0.e.x, var_0.x, false)))));
    let var_4 = max(-1i, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-global1.x, ~global1.x, firstTrailingBit(global1.x), i32(-1i) * -2147483647i)), firstLeadingBit(-(vec4<i32>(var_1.x, global1.x, 0i, 1i) ^ vec4<i32>(global1.x, var_1.x, 2147483647i, var_1.x)))));
    return _wgslsmith_add_u32(~_wgslsmith_sub_u32(4294967295u & global0.c, 16529u), arg_0.x) & 32817u;
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = Struct_1(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.c, 1u, arg_0.c, arg_0.a.x), vec4<u32>(4294967295u, 4294967295u, 0u, 1u)), ~vec4<u32>(0u, global0.c, u_input.b, 0u)), ~min(10085u, u_input.b)), ~(~global0.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.d - arg_0.d))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + global0.b.x) + arg_0.b.x))), 5766u, -336f, global0.e);
    var var_1 = true;
    var var_2 = Struct_1(arg_0.a, _wgslsmith_f_op_vec3_f32(arg_0.b - global0.b), 0u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1015f + var_0.d), -269f, true)), global0.e);
    var var_3 = Struct_1(vec2<u32>(~1u, _wgslsmith_dot_vec2_u32(firstTrailingBit(~var_2.a), vec2<u32>(arg_0.c, func_3(var_2.a)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-146f, _wgslsmith_f_op_f32(exp2(arg_0.d)), _wgslsmith_f_op_f32(f32(-1f) * -616f)) - vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-992f * 339f), _wgslsmith_f_op_f32(f32(-1f) * -354f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-117f * var_0.b.x)))), _wgslsmith_div_u32(~reverseBits(~global0.a.x), 1704u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -884f) + -2041f))), var_0.e);
    let var_4 = any(!(!(!(!vec3<bool>(true, true, var_3.e.x)))));
    return all(vec2<bool>(!any(var_0.e), all(select(select(arg_0.e, var_2.e, global0.e.x), !var_2.e, select(global0.e, vec2<bool>(false, false), var_3.e.x)))));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = !(func_2(Struct_1(min(global0.a, vec2<u32>(u_input.b, 1u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(654f, global0.d, global0.d)), _wgslsmith_clamp_u32(global0.c, arg_0, u_input.b), global0.b.x, select(vec2<bool>(global0.e.x, true), vec2<bool>(false, false), vec2<bool>(global0.e.x, global0.e.x)))) & global0.e.x);
    let var_1 = Struct_1(~select(global0.a | u_input.a, u_input.a, global0.e), global0.b, firstLeadingBit(select(~3565u, global0.c ^ u_input.a.x, false)), _wgslsmith_f_op_f32(-global0.d), select(vec2<bool>(var_0, var_0), !global0.e, !global0.e.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1221f, var_1.d, 635f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.d + var_1.b.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1471f)) - global0.b.x), -1254f, _wgslsmith_f_op_f32(2333f + var_1.b.x), 1598f)), !(!var_0)));
    var var_3 = vec2<u32>(global0.c, var_1.a.x);
    global0 = Struct_1(~min(u_input.a, vec2<u32>(_wgslsmith_div_u32(arg_0, u_input.a.x), _wgslsmith_clamp_u32(1u, 4294967295u, global0.c))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-719f, -147f, global0.d))), _wgslsmith_div_vec3_f32(global0.b, vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), -1208f, var_2.x))), 15889u, _wgslsmith_f_op_f32(min(-915f, _wgslsmith_f_op_f32(f32(-1f) * -142f))), var_1.e);
    return var_1;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> i32 {
    let var_0 = func_1(global0.c);
    global1 = vec4<i32>(1231i, 28637i, 1i, _wgslsmith_dot_vec4_i32(firstTrailingBit(~vec4<i32>(-2147483647i, global1.x, global1.x, global1.x)) | vec4<i32>(~global1.x, _wgslsmith_sub_i32(50553i, global1.x), global1.x, -1i), vec4<i32>(42318i, -global1.x, global1.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(21865i, global1.x, 0i), vec3<i32>(1i, global1.x, global1.x)), max(vec3<i32>(-1i, global1.x, global1.x), vec3<i32>(global1.x, -3798i, global1.x))))));
    global0 = Struct_1(~vec2<u32>(~global0.c, ~14325u) << (u_input.a % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d, func_1(min(604u, 15230u)).d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.d)) - -1162f))), 4294967295u, 1000f, vec2<bool>(true, func_2(func_1(27823u))));
    let var_1 = 7355u;
    var var_2 = Struct_1(vec2<u32>(arg_1.c, var_1), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global0.b, vec3<f32>(494f, -427f, arg_1.b.x))))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(555f, arg_0, 530f) - vec3<f32>(var_0.d, arg_1.b.x, -1751f)), _wgslsmith_div_vec3_f32(vec3<f32>(-339f, arg_0, var_0.d), var_0.b)))))), (~_wgslsmith_mod_u32(0u, arg_1.a.x) & countOneBits(arg_1.a.x)) ^ ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_1, var_0.a.x, var_0.a.x), select(vec3<u32>(61186u, 4294967295u, 3392u), u_input.d.yyw, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-150f - var_0.d)), !(!var_0.e));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false && all(select(!vec4<bool>(global0.e.x, false, global0.e.x, true), select(!vec4<bool>(global0.e.x, global0.e.x, false, false), select(vec4<bool>(true, false, true, global0.e.x), vec4<bool>(false, false, global0.e.x, false), vec4<bool>(global0.e.x, false, false, global0.e.x)), global1.x == 0i), !global0.e.x));
    let var_1 = vec3<i32>(_wgslsmith_mod_i32(global1.x, -(i32(-1i) * -global1.x)), _wgslsmith_div_i32(-countOneBits(global1.x | -1i), global1.x >> (24072u % 32u)), min(~(~58145i), -global1.x));
    global1 = (_wgslsmith_clamp_vec4_i32(-firstTrailingBit(vec4<i32>(global1.x, var_1.x, 1i, var_1.x)), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global1.x, var_1.x, var_1.x, global1.x), vec4<i32>(50175i, var_1.x, global1.x, 12791i)), -vec4<i32>(var_1.x, 0i, var_1.x, global1.x)), min(~vec4<i32>(-9850i, var_1.x, var_1.x, global1.x), vec4<i32>(var_1.x, var_1.x, -1349i, 2147483647i) >> (vec4<u32>(u_input.a.x, 1u, 44067u, global0.c) % vec4<u32>(32u)))) << (abs(~(u_input.d << (vec4<u32>(4294967295u, u_input.a.x, global0.a.x, global0.a.x) % vec4<u32>(32u)))) % vec4<u32>(32u))) ^ vec4<i32>(reverseBits(2147483647i), (_wgslsmith_clamp_i32(14883i, -26260i, var_1.x) << (30865u % 32u)) | var_1.x, global1.x, func_4(global0.d, func_1(1u)));
    var var_2 = global0.c;
    let var_3 = func_1(abs(37237u));
    global1 = ~_wgslsmith_sub_vec4_i32(-_wgslsmith_sub_vec4_i32(~vec4<i32>(global1.x, var_1.x, global1.x, -2121i), countOneBits(vec4<i32>(global1.x, 4080i, var_1.x, 8621i))), ~(~vec4<i32>(1i, global1.x, global1.x, var_1.x)));
    global0 = Struct_1(~firstLeadingBit(~_wgslsmith_add_vec2_u32(var_3.a, vec2<u32>(1u, 1u))), vec3<f32>(_wgslsmith_div_f32(-1352f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.d, 1421f, false)) - _wgslsmith_f_op_f32(floor(-323f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(171f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.d)))), var_3.d), abs(286u), _wgslsmith_f_op_f32(f32(-1f) * -1000f), func_1(var_3.c).e);
    let x = u_input.a;
    s_output = StorageBuffer(func_1(func_1(1u).a.x).a.x ^ ~(~1u), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.x) * _wgslsmith_f_op_f32(-global0.b.x))) - global0.b.xx), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_3.b.x, -219f, global0.b.x, -372f), vec4<f32>(-1650f, var_3.b.x, 2059f, var_3.d)))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.b.x, 129f, var_3.d, 347f))), vec4<f32>(global0.d, -2602f, -222f, -1681f), select(vec4<bool>(var_0, false, var_3.e.x, true), vec4<bool>(var_0, true, true, true), global0.e.x))), vec4<f32>(var_3.b.x, _wgslsmith_f_op_f32(-global0.b.x), global0.d, global0.d))), ~u_input.a.x == _wgslsmith_sub_u32(~37655u, ~global0.a.x))), select(~(vec2<i32>(var_1.x, global1.x) & ~vec2<i32>(1832i, 2147483647i)), global1.xy, select(var_3.e, func_1(26582u).e, var_0)));
}

