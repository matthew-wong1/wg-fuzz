struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global1: f32;

var<private> global2: u32 = 48418u;

var<private> global3: Struct_2;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>) -> u32 {
    global3 = Struct_2(!(!(!(!vec2<bool>(global0.x, true)))));
    var var_0 = u_input.d ^ arg_0;
    let var_1 = Struct_3(u_input.d);
    let var_2 = Struct_3(firstTrailingBit(max(_wgslsmith_mult_i32(i32(-1i) * -112825i, 1i), max(countOneBits(0i), -2147483647i))));
    var var_3 = _wgslsmith_sub_i32(31693i, _wgslsmith_mult_i32(~reverseBits(arg_0) << ((1u ^ _wgslsmith_clamp_u32(0u, 32272u, u_input.e.x)) % 32u), arg_1.x));
    return u_input.e.x;
}

fn func_2() -> Struct_3 {
    let var_0 = vec2<u32>(_wgslsmith_mod_u32(u_input.b.x & ~func_3(1i, vec4<i32>(u_input.a.x, -11479i, u_input.d, u_input.a.x)), u_input.c), func_3(1i, select(countOneBits(u_input.a), u_input.a, select(select(vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(true, true, false, true), vec4<bool>(global3.a.x, global3.a.x, global0.x, true)), select(vec4<bool>(false, global3.a.x, false, true), vec4<bool>(false, global3.a.x, global0.x, global3.a.x), global3.a.x), any(global3.a)))));
    global0 = !(!(!vec4<bool>(!global0.x, global0.x, true, false)));
    let var_1 = u_input.a.yxw;
    global0 = vec4<bool>(false && all(!select(vec3<bool>(global3.a.x, false, false), global0.ywx, vec3<bool>(global3.a.x, false, false))), global0.x, false, global3.a.x);
    let var_2 = Struct_3(13393i);
    return Struct_3(var_1.x);
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: i32) -> Struct_3 {
    var var_0 = func_2();
    var var_1 = Struct_1(!(!(!vec2<bool>(global0.x, false))), -(vec2<i32>(~arg_1, -1i) << (u_input.e % vec2<u32>(32u))), vec2<bool>(!any(select(global0.wy, global0.wy, global3.a)), any(vec3<bool>(global0.x, !global3.a.x, true))), _wgslsmith_f_op_f32(select(-497f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(1000f)))))), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, -1000f, 172f, -1683f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(437f, 524f, 479f, 641f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(414f, -636f, -623f, -235f), vec4<f32>(-103f, 162f, 832f, -340f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1326f, -1183f, -1422f, -1511f) * vec4<f32>(703f, 884f, 129f, 892f))))));
    let var_2 = Struct_1(vec2<bool>(global0.x == select(var_1.a.x, global3.a.x, any(vec3<bool>(true, global3.a.x, global0.x))), select(global3.a.x, any(vec2<bool>(global0.x, false)), all(vec2<bool>(var_1.a.x, global3.a.x))) && any(vec4<bool>(false, var_1.c.x, global3.a.x, false))), ~min(var_1.b, vec2<i32>(firstTrailingBit(var_0.a), firstTrailingBit(38080i))), select(vec2<bool>(any(vec3<bool>(var_1.c.x, true, global0.x)), global0.x), !vec2<bool>(all(vec4<bool>(var_1.c.x, global3.a.x, global0.x, true)), arg_2 != arg_1), !global0.x), 110f, _wgslsmith_f_op_vec4_f32(var_1.e + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_1.e, vec4<f32>(-526f, var_1.d, -409f, -269f), global3.a.x)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.d, var_1.e.x, var_1.d, -917f)))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-505f, -333f, 449f, var_1.e.x))))))));
    let var_3 = abs(vec2<u32>(1u, 0u));
    global2 = ~u_input.e.x;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<i32>(~u_input.d, _wgslsmith_dot_vec4_i32(~u_input.a, vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 53633i), vec2<i32>(u_input.d, u_input.d)), u_input.a.x, ~u_input.d, u_input.a.x)), -u_input.a.x >> (1u % 32u), u_input.a.x), abs(31716i) | u_input.a.x, -_wgslsmith_mult_i32(u_input.a.x, ~(u_input.d >> (30053u % 32u))));
    global3 = Struct_2(!vec2<bool>(!(global0.x || true), true));
    var var_1 = Struct_3(-10730i);
    global3 = Struct_2(select(select(!select(vec2<bool>(global0.x, global0.x), global3.a, global0.x), global0.yw, !global3.a.x), select(global3.a, global3.a, min(22452u, 1u) <= abs(u_input.c)), !vec2<bool>(true, global3.a.x)));
    global1 = -1036f;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(293f - _wgslsmith_f_op_f32(485f * 1000f)), _wgslsmith_f_op_f32(trunc(-1267f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-804f, -1000f)) * 629f), -604f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(869f * _wgslsmith_f_op_f32(f32(-1f) * -433f)) - 1f), -1609f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2225f - _wgslsmith_f_op_f32(floor(-1000f)))))));
    global2 = 26512u;
    let var_3 = Struct_2(vec2<bool>(true, false));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -1i, firstLeadingBit(vec3<i32>(_wgslsmith_div_i32(29376i, u_input.d), 1i & u_input.d, var_1.a)));
}

