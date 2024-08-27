struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = vec3<bool>(select(-firstLeadingBit(-19850i) < (1i << (u_input.a % 32u)), false, !(!global1.x)), !((global1.x == true) && all(select(vec4<bool>(global1.x, false, global1.x, true), vec4<bool>(global1.x, true, true, true), global1.x))), false);
    let var_1 = ~u_input.a;
    var_0 = vec3<bool>(true, !any(vec2<bool>(!global1.x, !global1.x)), false);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, -459f, -213f), vec3<f32>(169f, arg_0, arg_0), vec3<bool>(false, global1.x, false))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1036f, -333f, arg_0) + vec3<f32>(arg_0, arg_0, arg_0)) * vec3<f32>(1416f, arg_0, -1895f)), any(select(vec2<bool>(true, true), vec2<bool>(false, false), true)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(floor(arg_0))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -239f, arg_0)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 206f, 1506f) - vec3<f32>(184f, 1430f, -2974f)))), vec3<bool>(true, any(select(vec4<bool>(var_0.x, true, false, global1.x), vec4<bool>(false, global1.x, var_0.x, global1.x), vec4<bool>(true, false, false, var_0.x))), any(select(vec4<bool>(true, true, global1.x, false), vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(true, var_0.x, true, global1.x)))))));
    var_0 = vec3<bool>(global1.x, !global1.x, ~countOneBits(_wgslsmith_add_u32(u_input.a, 6148u)) != u_input.a);
    return arg_0;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: u32, arg_3: Struct_3) -> f32 {
    let var_0 = arg_3.c;
    global1 = !(!select(!vec3<bool>(true, global1.x, false), !vec3<bool>(var_0.b, false, var_0.b), !vec3<bool>(true, false, var_0.b)));
    global1 = select(vec3<bool>(any(global1.zx), var_0.b, any(!(!vec3<bool>(true, var_0.b, arg_1)))), !(!select(select(vec3<bool>(arg_3.c.b, false, var_0.b), vec3<bool>(var_0.b, arg_1, arg_1), vec3<bool>(true, false, false)), !vec3<bool>(false, false, arg_3.c.b), select(vec3<bool>(var_0.b, false, global1.x), vec3<bool>(global1.x, arg_3.c.b, false), vec3<bool>(false, var_0.b, var_0.b)))), arg_1);
    global1 = !(!(!(!(!vec3<bool>(var_0.b, false, arg_3.a)))));
    global0 = var_0.a.x == -359f;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)))), 1000f));
}

fn func_2(arg_0: bool, arg_1: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -355f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1244f)))), 2567f), vec3<f32>(_wgslsmith_f_op_f32(func_4(-65452i, 1i <= _wgslsmith_clamp_i32(-70781i, 1i, 20062i), 5163u, Struct_3(false, _wgslsmith_f_op_f32(func_3(-987f)), Struct_1(vec4<f32>(-1000f, 690f, 1247f, -949f), true, vec4<i32>(-6783i, -2281i, -1i, 8141i), vec4<f32>(-271f, -1000f, -2987f, -1241f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2286f, 885f, -1211f, 1000f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(1f)))), 755f)));
    let var_1 = max(reverseBits(1u), ~(min(arg_1, ~0u) >> (min(arg_1, ~65153u) % 32u)));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-416f, var_0.x, var_0.x, var_0.x)))) * vec4<f32>(var_0.x, -888f, _wgslsmith_div_f32(2376f, var_0.x), _wgslsmith_f_op_f32(805f - var_0.x)))), false, min(vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(-12526i, -1i, 33941i, 12605i), vec4<i32>(1i, 1i, 1i, 1i)), ~abs(-2147483647i), ~firstLeadingBit(-2147483647i), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-2147483647i, -1i)), vec2<i32>(-1i, 0i))), vec4<i32>(1i, 2147483647i, firstTrailingBit(_wgslsmith_clamp_i32(1i, 0i, -2147483647i)), -10042i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-691f, var_0.x, var_0.x, 349f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2610f, 625f, 198f, 1563f)), vec4<f32>(var_0.x, -588f, var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) + vec4<f32>(-2244f, 795f, var_0.x, var_0.x))), select(select(vec4<bool>(global1.x, true, arg_0, arg_0), vec4<bool>(arg_0, false, false, false), false), select(vec4<bool>(true, global1.x, arg_0, arg_0), vec4<bool>(global1.x, global1.x, false, false), global1.x), !vec4<bool>(true, false, arg_0, false))))));
}

fn func_1(arg_0: vec4<u32>) -> bool {
    var var_0 = func_2(false, 56730u >> (0u % 32u));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(var_0.a)), !var_0.b, var_0.c, func_2(true, 0u).d);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_0.d.x)) * var_0.d.x);
    var var_2 = Struct_4(Struct_2(Struct_1(var_0.a, var_0.b, -var_0.c, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-126f, 323f, var_0.a.x, var_0.d.x))))), 98447u, Struct_2(func_2(false, _wgslsmith_clamp_u32(34149u, arg_0.x, 0u) << (~arg_0.x % 32u))), global1.yx);
    global0 = var_0.b;
    return var_0.a.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2720f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<bool>(global1.x, select(all(select(vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(true, false, false, global1.x), true)) & func_1(vec4<u32>(0u, u_input.a, u_input.a, 4294967295u) >> (vec4<u32>(0u, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))), false, !func_2(true, _wgslsmith_add_u32(u_input.a, 4294967295u)).b), !all(vec2<bool>(true, true)));
    var var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(~0u, 1u) ^ firstLeadingBit(~(~vec2<u32>(u_input.a, 4294967295u))), ~abs(~firstLeadingBit(vec2<u32>(6131u, u_input.a))), ~vec2<u32>(~_wgslsmith_mult_u32(24990u, 59479u), _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a, 1u), 4294967295u)));
    let var_1 = _wgslsmith_dot_vec3_i32(-vec3<i32>(firstLeadingBit(24926i), -70358i, ~3588i << (_wgslsmith_mult_u32(u_input.a, u_input.a) % 32u)), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(1i, i32(-1i) * -1i), firstLeadingBit(abs(-1i))), min(abs(-2147483647i >> (var_0.x % 32u)), ~0i), firstLeadingBit(11927i)));
    let var_2 = ~(~firstLeadingBit(_wgslsmith_mult_vec4_u32(select(vec4<u32>(130768u, u_input.a, 75377u, 69204u), vec4<u32>(u_input.a, var_0.x, u_input.a, var_0.x), vec4<bool>(true, global1.x, global1.x, false)), abs(vec4<u32>(var_0.x, 1u, 10070u, u_input.a)))));
    var var_3 = func_2(global1.x, 1960u);
    let var_4 = Struct_4(Struct_2(func_2(any(vec4<bool>(true, var_3.b, false, global1.x)), var_2.x)), 3520u, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -530f, -1443f, -352f)), global1.x, ~(-var_3.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-258f, 297f, var_3.d.x, var_3.d.x)))), global1.yz);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b >> (~u_input.a % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(3752i, var_4.d.x, var_2.x, Struct_3(var_4.d.x, var_4.c.a.a.x, Struct_1(vec4<f32>(var_3.a.x, var_3.d.x, var_3.d.x, var_3.d.x), false, var_4.a.a.c, var_3.d), vec4<f32>(-972f, var_3.d.x, 421f, 2099f))))), var_4.c.a.d.x, var_4.c.a.b)) - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(483f - -527f), _wgslsmith_f_op_f32(f32(-1f) * -907f))))), var_4.a.a.a.x);
}

