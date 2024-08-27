struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 41981u;

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global2: vec2<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = ~(vec4<i32>(u_input.e.x, u_input.e.x, u_input.a, ~abs(u_input.b.x)) << (_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(70763u, 4294967295u, u_input.c, u_input.c)) | vec4<u32>(u_input.d.x, 4294967295u, u_input.c, u_input.d.x), firstTrailingBit(~vec4<u32>(0u, 4294967295u, 6018u, u_input.c))) % vec4<u32>(32u)));
    var var_1 = vec2<u32>(u_input.c, 0u);
    global2 = select(!global1.zz, vec2<bool>(_wgslsmith_f_op_f32(-579f * -1023f) < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(457f + -1000f))), global2.x), true);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1000f, 940f), _wgslsmith_f_op_f32(835f - 652f), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1197f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(673f, -688f))), select(true, global1.x, false))))), 1i, select(~_wgslsmith_add_vec2_i32(~vec2<i32>(-1i, var_0.x), _wgslsmith_sub_vec2_i32(vec2<i32>(-24399i, -45169i), u_input.b.xx)), _wgslsmith_sub_vec2_i32(~(-vec2<i32>(-1i, u_input.a)), _wgslsmith_add_vec2_i32(~vec2<i32>(u_input.e.x, 0i), vec2<i32>(var_0.x, 2147483647i))), !(~19516u > firstTrailingBit(1u))));
    global1 = vec4<bool>(!all(!select(global1.xw, global1.zz, true)), global1.x, true, !global2.x || !all(vec2<bool>(global1.x, global1.x)));
    return true;
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> f32 {
    let var_0 = Struct_2(_wgslsmith_sub_u32(arg_1, 9829u), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-432f * 1240f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(780f, -450f) + vec2<f32>(-1538f, -657f)) * vec2<f32>(363f, -385f))), -10718i, arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1090f - 191f)))), true);
    global1 = select(!select(vec4<bool>(var_0.d, true, !global1.x, arg_1 >= 1300u), vec4<bool>(global1.x, global2.x, true & global1.x, all(vec4<bool>(false, var_0.d, var_0.d, global2.x))), true), !select(!(!vec4<bool>(var_0.d, true, global2.x, false)), vec4<bool>(false, var_0.c != 595f, true, true & global1.x), vec4<bool>(!global1.x, true, true, func_3())), var_0.d);
    global1 = select(!vec4<bool>(global1.x, func_3(), global2.x, false), select(vec4<bool>(_wgslsmith_sub_i32(u_input.b.x, var_0.b.d.x) > -37239i, ~arg_1 > u_input.d.x, any(select(vec4<bool>(global2.x, false, true, false), vec4<bool>(var_0.d, true, var_0.d, global1.x), vec4<bool>(false, true, false, false))), func_3()), select(select(select(vec4<bool>(false, global2.x, global2.x, global1.x), vec4<bool>(var_0.d, global2.x, false, var_0.d), false), select(vec4<bool>(false, false, true, false), vec4<bool>(global2.x, var_0.d, true, global2.x), vec4<bool>(false, false, var_0.d, global1.x)), select(vec4<bool>(global2.x, false, global1.x, false), vec4<bool>(global1.x, global2.x, global1.x, true), vec4<bool>(global2.x, false, true, false))), !(!vec4<bool>(false, var_0.d, false, global1.x)), var_0.d), !(!select(vec4<bool>(true, true, global2.x, var_0.d), vec4<bool>(global1.x, var_0.d, true, var_0.d), vec4<bool>(false, true, var_0.d, var_0.d)))), select(!vec4<bool>(any(vec4<bool>(global2.x, global2.x, global2.x, global1.x)), arg_1 < 4294967295u, true, any(global1.xz)), select(select(select(vec4<bool>(true, false, var_0.d, global2.x), vec4<bool>(global2.x, global1.x, global2.x, global2.x), global1.x), select(vec4<bool>(true, global2.x, global2.x, false), vec4<bool>(false, false, true, var_0.d), vec4<bool>(var_0.d, global2.x, global2.x, false)), select(vec4<bool>(var_0.d, false, var_0.d, var_0.d), vec4<bool>(false, var_0.d, var_0.d, false), false)), vec4<bool>(all(vec2<bool>(var_0.d, true)), true, true, global2.x), global2.x), global1.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.b.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_0.b.b.x, -459f))))))));
    var var_2 = select(select(vec3<bool>(_wgslsmith_div_i32(arg_0.x, 1i) < (i32(-1i) * -20185i), global2.x | true, any(vec4<bool>(false, global1.x, true, true))), !vec3<bool>(var_0.d, true, global1.x), true), !(!global1.xxw), var_0.d);
    return var_0.b.a;
}

fn func_1() -> f32 {
    var var_0 = vec4<bool>(global2.x, u_input.a > _wgslsmith_sub_i32(u_input.a, reverseBits(-u_input.a)), false, global2.x);
    global2 = vec2<bool>(var_0.x & global2.x, true);
    var_0 = vec4<bool>(false, global2.x, var_0.x, global2.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-580f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(839f, -715f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(160f, -1000f)) * -763f) + _wgslsmith_f_op_f32(func_2(u_input.e & vec2<i32>(u_input.e.x, u_input.e.x), _wgslsmith_clamp_u32(u_input.d.x, 1u, 6379u))))));
    var var_2 = var_0.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2057f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(u_input.d.yzz, u_input.d.wyy, !vec3<bool>(any(vec2<bool>(true, global1.x)), false, global1.x)) | vec3<u32>(u_input.c, ~(31485u << (u_input.c % 32u)), u_input.c);
    var var_1 = var_0.x;
    let var_2 = vec3<bool>(!select(true & all(vec4<bool>(true, true, false, global1.x)), false, global2.x), global2.x, true);
    global1 = select(!select(vec4<bool>(all(global1.yw), false, all(var_2), select(global1.x, true, var_2.x)), !(!vec4<bool>(var_2.x, true, global1.x, var_2.x)), var_2.x), !vec4<bool>(select(1u == var_0.x, all(global1.zyw), all(vec4<bool>(true, true, false, global2.x))), var_2.x, (u_input.e.x << (28842u % 32u)) >= 1i, global1.x), !vec4<bool>(false, true, any(vec3<bool>(global1.x, global1.x, var_2.x)), any(var_2) | true));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1026f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -638f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(155f + 309f) - _wgslsmith_f_op_f32(func_1())) - 1124f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(u_input.e, ~u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - -1813f))), u_input.e.x, u_input.b.yx);
    var var_4 = vec2<bool>(!(~(~87650u) > var_0.x), any(!var_2.yy));
    global0 = reverseBits(~select(_wgslsmith_add_u32(1985u, 0u), ~select(40751u, u_input.c, true), true));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.e.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.b.x, u_input.e.x), u_input.b.x)) << (_wgslsmith_mod_vec2_u32(~max(vec2<u32>(16705u, 61510u), vec2<u32>(var_0.x, var_0.x)), reverseBits(u_input.d.xy)) % vec2<u32>(32u)), 10243u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_3.b.x, var_3.a, -171f, var_3.b.x), vec4<f32>(-214f, -607f, -516f, 1204f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_3.b.x, -1179f, var_3.a, var_3.b.x)))))), ~_wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, ~var_0.x), 1u), firstLeadingBit(max(36318i, -firstLeadingBit(u_input.b.x))));
}

