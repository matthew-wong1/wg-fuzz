struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1 = Struct_1(1146f, vec3<u32>(18260u, 4294967295u, 5528u), i32(-2147483648), -1000f, -1300f);

var<private> global2: Struct_2 = Struct_2(vec3<i32>(1i, -27908i, -1i), Struct_1(-1152f, vec3<u32>(37598u, 28203u, 1u), i32(-2147483648), -987f, 329f), true, 1u);

var<private> global3: i32;

var<private> global4: Struct_4;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<i32>) -> i32 {
    global1 = Struct_1(-253f, global2.b.b, -8185i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(2159f, _wgslsmith_f_op_f32(-270f * global4.b)))) - global2.b.a), -1138f);
    global0 = Struct_2(reverseBits(global0.a), global2.b, true, _wgslsmith_dot_vec2_u32(global1.b.xy, abs(vec2<u32>(~arg_0.x, global2.d))));
    let var_0 = select(select(select(!(!vec4<bool>(global2.c, global0.c, global2.c, false)), select(select(vec4<bool>(global2.c, global0.c, false, false), vec4<bool>(global2.c, global2.c, false, global2.c), global0.c), !vec4<bool>(global0.c, global0.c, global0.c, false), all(vec3<bool>(false, false, global0.c))), true), vec4<bool>(firstTrailingBit(global1.b.x) != global1.b.x, global2.c, false, !global2.c), vec4<bool>(select(global0.c, global2.c, global0.c) != true, global0.c, true, global0.c)), !(!vec4<bool>(true, any(vec3<bool>(global2.c, true, global0.c)), true, !global0.c)), !(!select(select(vec4<bool>(global0.c, global0.c, global0.c, false), vec4<bool>(true, false, false, false), vec4<bool>(global2.c, global2.c, global2.c, global0.c)), select(vec4<bool>(global0.c, global2.c, global2.c, global0.c), vec4<bool>(true, false, global2.c, global0.c), true), any(vec4<bool>(global2.c, global0.c, global2.c, false)))));
    let var_1 = select(vec2<bool>(!global0.c, true), !vec2<bool>(global0.c, all(var_0.wzz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1504f) - global1.a) == -376f);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -439f), global1.b, _wgslsmith_mod_i32(1i, ~_wgslsmith_sub_i32(global0.a.x, global2.a.x)) << ((global4.a << (_wgslsmith_clamp_u32(~0u, ~global1.b.x, 30220u) % 32u)) % 32u), global2.b.a, _wgslsmith_f_op_f32(1084f + _wgslsmith_f_op_f32(max(-297f, 784f))));
    return ~global0.a.x;
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-661f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-482f, global4.b))))), ~(~firstLeadingBit(~vec3<u32>(global4.a, 48233u, global0.b.b.x))), -global2.a.x, global2.b.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.b.a, -794f))))));
    global0 = Struct_2(~vec3<i32>(global0.a.x, ~(~var_0.c), func_3(min(global1.b.xy, vec2<u32>(0u, 4294967295u)), vec2<i32>(global0.a.x, 0i))), global0.b, true, 0u);
    let var_1 = ~reverseBits(var_0.b);
    var var_2 = vec3<bool>(false, false, false);
    global4 = Struct_4(global1.b.x, _wgslsmith_f_op_f32(2088f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1729f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e)))));
    return _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.b.a)) + _wgslsmith_f_op_f32(-259f * global2.b.d)), global0.b.d))));
}

fn func_1(arg_0: Struct_2) -> bool {
    var var_0 = global0.c;
    let var_1 = vec4<u32>(global2.d, 92399u, global1.b.x, ~58647u);
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-683f + 240f)), _wgslsmith_f_op_f32(f32(-1f) * -865f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(global1.a)), _wgslsmith_f_op_f32(sign(global1.d)), false)) * 525f), _wgslsmith_f_op_f32(-502f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1065f))))));
    let var_3 = arg_0.b;
    let var_4 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-212f, _wgslsmith_div_f32(-281f, _wgslsmith_f_op_f32(func_2(global0.c))))));
    return !global2.c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(firstLeadingBit(min(-_wgslsmith_add_vec3_i32(vec3<i32>(global2.a.x, global2.a.x, -69848i), vec3<i32>(-26537i, 2147483647i, global2.b.c)), abs(vec3<i32>(u_input.a.x, -15478i, global1.c)) | global2.a)), global0.b, global0.c, 3513u);
    let var_0 = Struct_1(-1000f, reverseBits(~vec3<u32>(~486u, global0.b.b.x, ~global2.d)), _wgslsmith_mod_i32(countOneBits(-75637i), 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -434f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(438f, global0.b.e)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-665f, -2037f), vec2<f32>(global0.b.d, -1886f), global0.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(732f, -134f))))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-111f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.d - var_0.e)))), vec2<f32>(_wgslsmith_f_op_f32(-global1.a), 102f), !vec2<bool>(func_1(Struct_2(global0.a, global0.b, true, global4.a)), global2.c))));
    let var_2 = Struct_4(global1.b.x & global1.b.x, global4.b);
    var var_3 = true;
    let var_4 = select(select(select(!select(vec2<bool>(true, false), vec2<bool>(true, global2.c), true), select(vec2<bool>(true, false), vec2<bool>(global2.c, false), select(vec2<bool>(global2.c, global2.c), vec2<bool>(global0.c, true), vec2<bool>(false, true))), func_1(Struct_2(u_input.a.wzy, global2.b, global0.c, var_2.a))), select(select(vec2<bool>(global2.c, global0.c), select(vec2<bool>(global0.c, false), vec2<bool>(true, global2.c), global2.c), vec2<bool>(true, true)), !vec2<bool>(global0.c, false), select(select(vec2<bool>(true, global2.c), vec2<bool>(false, global0.c), global0.c), select(vec2<bool>(global0.c, true), vec2<bool>(global2.c, true), vec2<bool>(false, global0.c)), !vec2<bool>(true, global0.c))), vec2<bool>(!global0.c, func_1(Struct_2(u_input.a.yzw, Struct_1(var_2.b, vec3<u32>(1u, 57261u, 4294967295u), 0i, var_0.a, global0.b.e), false, global1.b.x)))), !select(select(select(vec2<bool>(false, global0.c), vec2<bool>(global2.c, global2.c), vec2<bool>(global0.c, global2.c)), vec2<bool>(false, false), all(vec3<bool>(true, false, global2.c))), select(select(vec2<bool>(global2.c, global2.c), vec2<bool>(false, global0.c), global2.c), vec2<bool>(true, global2.c), false && global2.c), global0.c), !vec2<bool>(global4.b != _wgslsmith_f_op_f32(-765f + -2770f), true));
    let var_5 = ~global0.b.b.yz;
    let var_6 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1629f), ~((~vec4<u32>(4294967295u, global1.b.x, global1.b.x, var_2.a) >> (firstLeadingBit(vec4<u32>(global1.b.x, var_5.x, global0.b.b.x, global2.d)) % vec4<u32>(32u))) << (~(~vec4<u32>(12460u, global2.d, global0.d, 1u)) % vec4<u32>(32u))), ~global2.d, ~_wgslsmith_sub_vec3_u32(global1.b, global2.b.b) << (global0.b.b % vec3<u32>(32u)), 660f);
}

