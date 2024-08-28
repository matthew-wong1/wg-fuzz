struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(386f, vec4<i32>(18841i, 0i, 20369i, 1i), 4294967295u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(global0.a, firstTrailingBit(global1.b), ~_wgslsmith_dot_vec3_u32(~vec3<u32>(107400u, global0.c, 55802u), countOneBits(~vec3<u32>(1u, global0.c, global0.c))));
    let var_1 = true;
    var var_2 = all(vec3<bool>(true, all(select(vec3<bool>(var_1, var_1, var_1), !vec3<bool>(false, var_1, var_1), !vec3<bool>(true, var_1, var_1))), !var_1 || (~u_input.d.x < ~global2.c)));
    global0 = var_0;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a))) - 750f), ~(~vec4<i32>(-31027i, firstTrailingBit(u_input.b.x), -global1.b.x, 2147483647i << (u_input.a % 32u))), _wgslsmith_mod_u32(4294967295u, ~70299u));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-666f * 805f)) - 1148f), 703f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2224f, global0.a)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(913f - _wgslsmith_f_op_f32(var_0.a - -382f)))), true));
}

fn func_2() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(func_3()), abs(global1.b), _wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(global0.c, global1.c, global0.c)), firstTrailingBit(max(u_input.d.xzw, min(u_input.d.yxz, u_input.d.wyw)))));
    var_0 = Struct_1(-1000f, -_wgslsmith_div_vec4_i32(firstLeadingBit(abs(var_0.b)), var_0.b), select(_wgslsmith_clamp_u32(0u, var_0.c & 0u, reverseBits(~4294967295u)), ~firstTrailingBit(1u), any(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-246f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, -380f))) - -335f);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec3<bool>, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = true;
    let var_1 = !var_0;
    let var_2 = ~min(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(u_input.b.x, global2.b.x, u_input.b.x)), arg_0.b.xyy), global2.b.x) == _wgslsmith_dot_vec2_i32(vec2<i32>(abs(global2.b.x), reverseBits(-2147483647i)), _wgslsmith_add_vec2_i32(~arg_0.b.yy, vec2<i32>(-1912i, arg_0.b.x)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(max(arg_0.a, global2.a)), ~_wgslsmith_div_vec4_i32(reverseBits(global0.b ^ global2.b), _wgslsmith_mod_vec4_i32(arg_0.b, vec4<i32>(-1i, arg_0.b.x, global0.b.x, -47367i))), 0u);
    let var_4 = Struct_1(508f, ~vec4<i32>(global0.b.x, (-1i >> (global0.c % 32u)) ^ var_3.b.x, _wgslsmith_mod_i32(var_3.b.x ^ -15410i, -10195i), 1i), select(4294967295u, min(reverseBits(max(global2.c, 31533u)), ~1u), false));
    return var_4;
}

fn func_1(arg_0: u32, arg_1: i32) -> i32 {
    global2 = func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2())))), ~vec4<i32>(u_input.b.x, global2.b.x, _wgslsmith_sub_i32(global2.b.x, 12970i), _wgslsmith_add_i32(0i, global2.b.x)), u_input.a), vec4<bool>(u_input.e.x > (global1.c ^ arg_0), all(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)), all(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false))), !select(vec3<bool>(all(vec3<bool>(true, false, false)), any(vec3<bool>(false, false, true)), true), vec3<bool>(true, true, true), false), vec2<bool>(true, select(select(true, false, true), true, !all(vec2<bool>(false, true)))));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(step(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2294f - 1247f))))), global2.b, arg_0);
    global2 = func_4(func_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -559f), vec4<i32>(-34376i << (1u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 7227i), vec2<i32>(1i, -1i)), _wgslsmith_mult_i32(global0.b.x, -5790i), select(0i, 1i, false)), 45011u), vec4<bool>(true, true, true, true), vec3<bool>(!any(vec2<bool>(true, false)), any(vec3<bool>(false, true, true)), false), select(vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(true, true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), true))), vec4<bool>(~global0.c > 3486u, true, global2.a != func_4(Struct_1(2048f, vec4<i32>(arg_1, -81302i, var_0.b.x, var_0.b.x), 18502u), vec4<bool>(true, true, true, true), vec3<bool>(false, true, false), vec2<bool>(true, true)).a, false), vec3<bool>(true, any(vec3<bool>(all(vec4<bool>(true, false, false, false)), select(true, true, true), global0.a > 1000f)), true), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), select(vec2<bool>(all(vec4<bool>(true, false, true, false)), false), vec2<bool>(all(vec3<bool>(false, true, false)), false), !all(vec2<bool>(false, false)))));
    var var_1 = func_4(func_4(Struct_1(_wgslsmith_f_op_f32(-1402f * _wgslsmith_f_op_f32(round(global2.a))), ~var_0.b, _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(1u, u_input.e.x, 22104u, 4294967295u))), select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, false, select(true, false, false)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, false, false, true), true)), !vec3<bool>(true, true, any(vec2<bool>(false, false))), vec2<bool>(global2.c != global0.c, false)), select(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false)), all(vec4<bool>(true, false, true, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), true)), !(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), true))), vec3<bool>(true, true, true), vec2<bool>(!any(vec4<bool>(false, false, true, true)), all(vec2<bool>(1u < global1.c, true))));
    var var_2 = all(select(!vec2<bool>(false, all(vec3<bool>(false, false, true))), vec2<bool>(true, true), select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false)), select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false)), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false))))));
    return reverseBits(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(_wgslsmith_f_op_f32(max(-269f, _wgslsmith_div_f32(266f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a))))), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(countOneBits(global1.b.x), func_1(4294967295u, global1.b.x)), _wgslsmith_div_i32(-50507i, 2147483647i) & global2.b.x, 2147483647i, _wgslsmith_dot_vec2_i32(abs(u_input.b.xz), select(vec2<i32>(global2.b.x, global1.b.x), vec2<i32>(34640i, -1i), vec2<bool>(false, false)))), ~reverseBits(firstTrailingBit(vec4<i32>(-19466i, global1.b.x, 29061i, u_input.b.x)))), 1u);
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a * 441f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + _wgslsmith_f_op_f32(global2.a * 262f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(859f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(929f + -1000f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -466f) - global2.a)))));
    let var_1 = -1060f;
    global1 = Struct_1(_wgslsmith_f_op_f32(global2.a - global1.a), _wgslsmith_sub_vec4_i32(global2.b >> (~(~vec4<u32>(global2.c, 48452u, global1.c, global0.c)) % vec4<u32>(32u)), ~vec4<i32>(_wgslsmith_add_i32(global1.b.x, -29939i), ~6772i, global1.b.x, _wgslsmith_dot_vec3_i32(u_input.b, global0.b.yzw))), global1.c);
    let var_2 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(~1u, ~reverseBits(countOneBits(u_input.d.zz)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.a, -140f, global2.a, -536f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, global0.a, var_1, global2.a)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.a, var_0.x, -600f, 1131f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, var_1, global1.a, 1421f) - vec4<f32>(var_1, 1000f, 359f, 709f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, global1.a, var_0.x, global0.a)))), true)), _wgslsmith_sub_u32(19311u, u_input.e.x), vec2<u32>(var_2, 1u));
}

