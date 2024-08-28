struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_2(Struct_1(1u, vec2<u32>(4097u, 0u), 1267f, false, vec4<f32>(-530f, -1680f, -903f, -860f))), 531f);

var<private> global1: f32 = 140f;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    var var_0 = vec3<i32>(u_input.e, firstLeadingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.e, u_input.e, 0i, u_input.e), vec4<i32>(-1i, u_input.e, u_input.e, 71783i) | vec4<i32>(u_input.e, 0i, u_input.e, u_input.e))) >> (~1u % 32u), 2147483647i);
    var var_1 = ~(u_input.c | min(~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 1u), u_input.c), ~u_input.c));
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a.a.e - _wgslsmith_div_vec4_f32(vec4<f32>(253f, 951f, -1434f, -2716f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-212f, 269f, 1000f, -172f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-152f, global0.b, -1455f, -1399f))))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(global0.a.a.e.ww - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.wz) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global0.a.a.e.zz, vec2<f32>(388f, var_2.x)))))));
    let var_4 = _wgslsmith_div_vec4_u32(firstTrailingBit(_wgslsmith_mod_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, global0.a.a.b.x, u_input.a, 0u), vec4<u32>(1u, 69382u, 4294967295u, 93622u), vec4<u32>(var_1.x, u_input.c.x, var_1.x, 0u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(13163u, 1u, global0.a.a.a, 50278u), vec4<u32>(global0.a.a.a, 1u, 15345u, u_input.d)))), vec4<u32>(~(~15503u), ~reverseBits(70593u), _wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(65390u, 36847u), vec2<u32>(4294967295u, 19924u)), 4294967295u), u_input.a), select(max(countOneBits(u_input.c.x), ~var_1.x), select(var_1.x & var_1.x, u_input.a, false), global0.a.a.d)));
    return true;
}

fn func_2(arg_0: u32) -> vec2<f32> {
    var var_0 = global0.a.a;
    let var_1 = ~vec3<u32>(_wgslsmith_sub_u32(firstLeadingBit(arg_0), ~global0.a.a.a), arg_0, _wgslsmith_div_u32(u_input.d, var_0.a)) ^ ~(~vec3<u32>(_wgslsmith_mod_u32(50453u, arg_0), _wgslsmith_sub_u32(0u, global0.a.a.a), 4294967295u));
    var var_2 = 4509u;
    var var_3 = !vec4<bool>(false, var_0.d, !func_3(), var_0.d);
    var var_4 = select(select(vec4<bool>(var_0.d, global0.a.a.d, false, !any(vec3<bool>(var_3.x, var_3.x, true))), select(!(!vec4<bool>(var_0.d, var_0.d, false, var_0.d)), select(select(vec4<bool>(false, true, var_0.d, false), vec4<bool>(true, global0.a.a.d, false, global0.a.a.d), var_0.d), !vec4<bool>(true, false, var_0.d, true), true), select(vec4<bool>(true, var_3.x, true, var_3.x), select(vec4<bool>(global0.a.a.d, global0.a.a.d, global0.a.a.d, var_3.x), vec4<bool>(global0.a.a.d, true, var_3.x, true), var_3.x), true)), select(!select(vec4<bool>(var_0.d, var_3.x, global0.a.a.d, var_0.d), vec4<bool>(true, true, var_0.d, false), var_0.d), !select(vec4<bool>(global0.a.a.d, var_3.x, false, true), vec4<bool>(var_3.x, var_0.d, true, var_0.d), false), vec4<bool>(true, -2147483647i <= u_input.e, var_0.d || true, !var_3.x))), !select(!(!vec4<bool>(true, global0.a.a.d, var_0.d, false)), select(vec4<bool>(var_3.x, global0.a.a.d, var_3.x, false), select(vec4<bool>(true, var_0.d, var_3.x, var_0.d), vec4<bool>(var_0.d, var_3.x, var_3.x, var_0.d), vec4<bool>(false, false, false, false)), vec4<bool>(global0.a.a.d, true, global0.a.a.d, global0.a.a.d)), false), (true != (select(true, true, true) && global0.a.a.d)) || all(vec2<bool>(true, !var_0.d)));
    return global0.a.a.e.xy;
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_5) -> bool {
    var var_0 = arg_2;
    global0 = arg_2;
    let var_1 = max(max(max(vec4<i32>(u_input.e, u_input.e, 13177i, -2147483647i) >> (vec4<u32>(global0.a.a.a, u_input.a, 0u, 5954u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.e, u_input.e, u_input.e, 32291i), vec4<i32>(1i, 0i, -14035i, -9034i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, u_input.e, u_input.e), -vec4<i32>(u_input.e, -2147483647i, u_input.e, -1i), -vec4<i32>(-504i, 15670i, -2147483647i, 1i))) ^ min(-vec4<i32>(-910i, u_input.e, 1i, 1i), vec4<i32>(29496i, 30901i, u_input.e ^ -44794i, u_input.e)), firstLeadingBit(vec4<i32>(~u_input.e, u_input.e, u_input.e, -53706i)));
    var var_2 = _wgslsmith_clamp_u32(~(_wgslsmith_sub_u32(u_input.a, arg_2.a.a.b.x) & global0.a.a.a), ~13445u, u_input.b);
    let var_3 = var_0.a.a;
    return select(global0.a.a.d, !(!(!(arg_0 != arg_0))), any(!select(vec2<bool>(var_3.d, var_3.d), !vec2<bool>(false, var_0.a.a.d), !vec2<bool>(true, global0.a.a.d))));
}

fn func_1(arg_0: bool, arg_1: f32) -> u32 {
    global1 = global0.a.a.c;
    var var_0 = Struct_4(select(select(vec4<i32>(18105i, ~(-39411i), -u_input.e, _wgslsmith_clamp_i32(1i, 20236i, u_input.e)), firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, u_input.e, u_input.e, u_input.e), vec4<i32>(2147483647i, 1i, u_input.e, u_input.e))), select(select(vec4<bool>(global0.a.a.d, global0.a.a.d, true, true), vec4<bool>(global0.a.a.d, false, false, true), vec4<bool>(global0.a.a.d, true, global0.a.a.d, arg_0)), !vec4<bool>(global0.a.a.d, arg_0, arg_0, true), all(vec2<bool>(global0.a.a.d, false)))), vec4<i32>(~(~u_input.e), ~u_input.e, -1i, ~(-2147483647i)), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a.e.x) - _wgslsmith_div_f32(arg_1, 1000f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_2(u_input.b)))), Struct_5(Struct_2(Struct_1(92554u, u_input.c, 250f, global0.a.a.d, global0.a.a.e)), _wgslsmith_f_op_f32(-630f + global0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1, -221f))), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global0.a.a.e, global0.a.a.e, false))), _wgslsmith_mult_vec3_i32(select(vec3<i32>(-18229i, -43356i, 1i), vec3<i32>(1i, -61049i, 2147483647i), true), ~vec3<i32>(u_input.e, 0i, u_input.e) << (vec3<u32>(87146u, u_input.c.x, global0.a.a.a) % vec3<u32>(32u))), Struct_1(global0.a.a.b.x, firstTrailingBit(vec2<u32>(global0.a.a.a, u_input.d)) ^ u_input.c, global0.b, !global0.a.a.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a.a.e))), global0.a.a, abs(max(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.e, -2147483647i, 2147483647i), vec3<i32>(0i, 2147483647i, u_input.e)), ~vec3<i32>(95398i, 3335i, u_input.e)))));
    let var_1 = var_0.c.b.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -777f))))));
    var_0 = Struct_4(var_0.a, 441f, Struct_3(global0.a.a.e, ~abs(vec3<i32>(43535i, u_input.e, var_0.a.x)), var_0.c.d, global0.a.a, vec3<i32>(_wgslsmith_clamp_i32(var_0.a.x, -36322i, ~(-47688i)), 18779i, i32(-1i) * -2147483647i)));
    return ~global0.a.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(~u_input.c.x, 0u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.b), _wgslsmith_sub_vec2_u32(u_input.c, vec2<u32>(1u, global0.a.a.a))), global0.a.a.b.x), vec3<u32>(~0u, func_1(all(select(vec3<bool>(false, global0.a.a.d, true), vec3<bool>(false, global0.a.a.d, global0.a.a.d), global0.a.a.d)), _wgslsmith_f_op_f32(round(340f))), global0.a.a.a));
    global0 = Struct_5(global0.a, _wgslsmith_f_op_f32(-global0.a.a.e.x));
    var var_1 = global0.a;
    global1 = var_1.a.c;
    global1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1435f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.e.x * 1326f))) * -311f)));
    var_0 = vec3<u32>(global0.a.a.b.x, _wgslsmith_div_u32(select(var_0.x, max(var_1.a.a, 20757u << (global0.a.a.a % 32u)), global0.a.a.d), _wgslsmith_clamp_u32(77902u, u_input.a, _wgslsmith_div_u32(1u, 4294967295u)) >> (21878u % 32u)), var_0.x);
    var_1 = Struct_2(Struct_1(14209u, vec2<u32>(0u, var_0.x), _wgslsmith_div_f32(910f, 923f), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.e.x, global0.b, var_1.a.c, global0.b))))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -610f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.b)) * 1032f)) * _wgslsmith_f_op_f32(-1766f * 185f)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.b);
}

