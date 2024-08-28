struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: vec3<f32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_4) -> vec2<bool> {
    let var_0 = Struct_1(u_input.b, vec2<bool>(arg_0.a, global0.b.a), 10428i);
    global1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, arg_1, arg_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, -1294f) * vec3<f32>(-562f, arg_1, arg_1)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-147f, arg_1, 383f), vec3<f32>(585f, global1.x, -168f), vec3<bool>(var_0.b.x, arg_0.a, false)))))) * vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.x, 542f), _wgslsmith_f_op_f32(1567f - 162f))), arg_1, arg_1)), vec3<f32>(1f, global1.x, _wgslsmith_f_op_f32(-235f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -646f) * _wgslsmith_f_op_f32(sign(global1.x)))))));
    let var_1 = global0.c;
    let var_2 = vec4<u32>(~(4294967295u >> (~var_0.a % 32u)), _wgslsmith_mult_u32(~1u, var_0.a), firstTrailingBit(4294967295u), select(~(13517u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 11980u, u_input.a, var_0.a), vec4<u32>(u_input.a, 1u, u_input.a, var_0.a))), var_0.a, true));
    var var_3 = 34208u;
    return var_0.b;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: i32) -> vec3<f32> {
    global0 = Struct_5(Struct_3(arg_2.a), Struct_3(any(!select(vec4<bool>(global0.b.a, arg_2.a, false, global0.a.a), vec4<bool>(global0.b.a, true, arg_2.a, true), vec4<bool>(global0.b.a, true, global0.b.a, global0.a.a)))), global0.c);
    let var_0 = Struct_1(u_input.b, func_3(arg_2, _wgslsmith_f_op_f32(round(global1.x)), global0.c), global0.c.a);
    let var_1 = Struct_1(~(~countOneBits(firstLeadingBit(0u))), var_0.b, -1i);
    global0 = Struct_5(Struct_3(select(global0.a.a, global0.a.a, any(!vec4<bool>(true, true, false, var_0.b.x)))), global0.b, global0.c);
    var var_2 = global1.x;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(543f, global1.x, 434f))))))));
}

fn func_1() -> vec2<u32> {
    global0 = Struct_5(global0.b, global0.b, global0.c);
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(842f + _wgslsmith_f_op_f32(ceil(global1.x)))), -1725f, _wgslsmith_f_op_f32(-global1.x));
    global1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1944f - global1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-814f + _wgslsmith_f_op_f32(-global1.x)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global1.x, -437f))))), _wgslsmith_f_op_f32(f32(-1f) * -1153f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 321f, -1000f) * vec3<f32>(global1.x, global1.x, global1.x)) + vec3<f32>(global1.x, global1.x, global1.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec4<i32>(global0.c.a, u_input.c.x, u_input.c.x, global0.c.a), vec4<i32>(u_input.c.x, u_input.c.x, -62261i, 1234i), Struct_3(global0.b.a), 6666i)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1671f, global1.x, global1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -371f, 151f) - vec3<f32>(-442f, global1.x, 1000f)))))), select(select(select(vec3<bool>(global0.b.a, global0.a.a, false), select(vec3<bool>(global0.b.a, false, false), vec3<bool>(false, global0.a.a, false), global0.a.a), 540f <= global1.x), select(select(vec3<bool>(global0.b.a, true, false), vec3<bool>(global0.b.a, global0.b.a, global0.a.a), vec3<bool>(global0.b.a, global0.b.a, global0.a.a)), !vec3<bool>(true, global0.a.a, false), true), true), vec3<bool>(!(!global0.b.a), global0.b.a, firstLeadingBit(u_input.c.x) >= u_input.c.x), true)));
    let var_0 = abs(min(_wgslsmith_sub_vec2_u32(vec2<u32>(~u_input.a, firstTrailingBit(u_input.b)), ~reverseBits(vec2<u32>(26580u, u_input.b))), countOneBits(~(~vec2<u32>(u_input.b, u_input.a)))));
    global1 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-125f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + -357f)) + -784f), _wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-global1.x)), global0.a.a))), vec3<f32>(680f, 629f, global1.x)));
    return _wgslsmith_mod_vec2_u32(~var_0, _wgslsmith_mod_vec2_u32(max(vec2<u32>(69674u, _wgslsmith_sub_u32(4294967295u, var_0.x)), vec2<u32>(u_input.a, 45598u)), vec2<u32>(1u, var_0.x)));
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: vec2<u32>) -> Struct_5 {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, 1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, 2700f, global1.x))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1362f, 1001f, -951f), vec3<f32>(global1.x, -1000f, 1721f)))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(global0.a.a, false, true), vec3<bool>(global0.b.a, global0.b.a, true)), global0.a.a || false))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, 576f, global1.x), vec3<f32>(951f, global1.x, -1154f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, -701f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.x, global1.x, 1185f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1012f, -559f, global1.x)))))), global0.b.a)));
    var var_0 = u_input.b;
    var var_1 = !vec4<bool>(true, global0.b.a, any(vec2<bool>(false, global0.b.a)), global0.a.a);
    var var_2 = Struct_1(_wgslsmith_mult_u32(max(1u, ~u_input.a ^ 1u), 0u), var_1.zz, _wgslsmith_sub_i32(u_input.c.x, -_wgslsmith_clamp_i32(countOneBits(global0.c.a), arg_0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(10224i, arg_0.a), u_input.c.yz))));
    let var_3 = vec2<i32>(-1i, -1i);
    return Struct_5(global0.a, global0.b, global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(global0.c, -_wgslsmith_dot_vec4_i32(select(abs(vec4<i32>(u_input.c.x, -10099i, u_input.c.x, global0.c.a)), reverseBits(vec4<i32>(u_input.c.x, 0i, global0.c.a, 10422i)), global0.a.a), firstLeadingBit(vec4<i32>(u_input.c.x, global0.c.a, global0.c.a, 3622i))), func_1());
    let var_0 = func_4(global0.c, -(reverseBits(-20209i) << (_wgslsmith_div_u32(483u, 4294967295u) % 32u)), ~(((vec2<u32>(4700u, 86756u) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))) | (vec2<u32>(u_input.b, 0u) | vec2<u32>(4294967295u, u_input.b))) & countOneBits(~vec2<u32>(u_input.a, 14948u))));
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(max(935f, global1.x)))), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x))), 971f)));
    var var_1 = Struct_1(1u, vec2<bool>(all(select(!vec3<bool>(global0.b.a, var_0.b.a, global0.a.a), vec3<bool>(var_0.b.a, true, false), !vec3<bool>(global0.b.a, global0.b.a, false))), all(!select(vec4<bool>(global0.a.a, false, var_0.a.a, var_0.a.a), vec4<bool>(false, global0.b.a, false, global0.b.a), vec4<bool>(false, global0.a.a, var_0.b.a, var_0.a.a)))), -23566i);
    var_1 = Struct_1(_wgslsmith_dot_vec4_u32(~((vec4<u32>(5966u, 1u, var_1.a, 0u) >> (vec4<u32>(u_input.a, u_input.b, var_1.a, 30964u) % vec4<u32>(32u))) & countOneBits(vec4<u32>(4294967295u, u_input.a, 25916u, 4294967295u))), abs(_wgslsmith_div_vec4_u32(min(vec4<u32>(89669u, u_input.a, 27858u, u_input.b), vec4<u32>(0u, var_1.a, var_1.a, 58799u)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 22698u, 49916u, 55673u), vec4<u32>(var_1.a, u_input.a, u_input.b, var_1.a))))), var_1.b, 0i);
    let var_2 = vec2<i32>(-1i) * -vec2<i32>(-firstTrailingBit(1i), -24274i);
    let x = u_input.a;
    s_output = StorageBuffer(abs(-(var_0.c.a >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(var_1.a, 1u)) % 32u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.b, _wgslsmith_div_u32(0u, var_1.a)), vec4<u32>(func_1().x, ~5036u, ~u_input.a & 4294967295u, ~(~u_input.a)), _wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(9910u, u_input.b, 1u, u_input.a)) ^ vec4<u32>(4970u, u_input.a, 18358u, 1u), ~(vec4<u32>(u_input.a, 4294967295u, 4294967295u, var_1.a) ^ vec4<u32>(u_input.a, var_1.a, u_input.b, 14221u)), abs(~vec4<u32>(u_input.b, 34006u, u_input.a, 4294967295u)))));
}

