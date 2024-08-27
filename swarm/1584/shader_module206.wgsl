struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 6>;

var<private> global1: array<Struct_4, 31>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> vec4<u32> {
    global1 = array<Struct_4, 31>();
    global0 = array<Struct_4, 6>();
    let var_0 = Struct_5(Struct_2(_wgslsmith_mult_u32(countOneBits(min(u_input.d.x, u_input.d.x)), 1u), vec2<bool>(false, all(!vec2<bool>(arg_0, arg_0))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1334f), arg_2.a, _wgslsmith_f_op_f32(658f + arg_2.a)), vec3<f32>(_wgslsmith_div_f32(arg_2.a, 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(arg_2.a * arg_2.a))), ~(~max(vec4<u32>(arg_1, u_input.d.x, 59873u, u_input.d.x), vec4<u32>(0u, arg_1, u_input.d.x, 4294967295u))), select(0i, -1i, true) << (arg_1 % 32u)));
    global0 = array<Struct_4, 6>();
    var var_1 = Struct_2(4294967295u, select(vec2<bool>(!var_0.a.b.x, any(select(var_0.a.b, var_0.a.b, true))), select(select(!var_0.a.b, vec2<bool>(false, var_0.a.b.x), !vec2<bool>(var_0.a.b.x, true)), var_0.a.b, true), true), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(466f + _wgslsmith_f_op_f32(trunc(var_0.a.c.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -538f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(1071f))))), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, arg_1), u_input.d.x), ~1u, 1u, _wgslsmith_dot_vec3_u32(~var_0.a.d.yyx, firstLeadingBit(vec3<u32>(1u, u_input.d.x, var_0.a.d.x)))), var_0.a.d), u_input.e.x);
    return vec4<u32>(abs(_wgslsmith_add_u32(var_1.a, ~43819u)), ~(~var_0.a.d.x), 75897u, 4294967295u);
}

fn func_2() -> f32 {
    let var_0 = Struct_5(Struct_2(2148u, vec2<bool>(true, true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, 1835f, 886f), vec3<f32>(354f, 1468f, -1011f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 324f, -1269f) + vec3<f32>(772f, -948f, -700f)) + vec3<f32>(2319f, -497f, 1000f))), func_3(false, 0u, Struct_1(-649f, u_input.e.x)), -(~(-6480i))));
    let var_1 = max(-(_wgslsmith_mod_vec2_i32(u_input.c.zy, u_input.a.zy >> (vec2<u32>(var_0.a.a, 0u) % vec2<u32>(32u))) & u_input.c.xz), abs(-vec2<i32>(_wgslsmith_sub_i32(u_input.a.x, 2147483647i), ~u_input.c.x)));
    var var_2 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.a.c.x)), 157f));
    var var_3 = firstTrailingBit(~(u_input.c.x >> (_wgslsmith_dot_vec3_u32(var_0.a.d.zxy, var_0.a.d.xyw) % 32u)) & 2147483647i);
    global0 = array<Struct_4, 6>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-863f + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.a.c.x, -657f), _wgslsmith_f_op_f32(trunc(477f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x * var_0.a.c.x)))), 1043f);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<u32>) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2896f, -1566f, 743f, 723f)))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1032f, 1216f))), _wgslsmith_f_op_f32(round(1f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(2580f, 447f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2141f, 1000f))))));
    global0 = array<Struct_4, 6>();
    var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, 1877f, var_0.x, var_0.x))), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(1019f, var_0.x, var_0.x, var_0.x)), true))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -976f), var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -403f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1150f, -1583f, false)) + _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(575f, -168f) * -1500f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), 423f))));
    var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(363f * 190f), 596f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2()), -2237f, -937f, var_0.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1366f, var_0.x, var_0.x, var_0.x))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -258f, var_0.x, var_0.x))))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(529f, 1233f)), var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -569f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1238f, var_0.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(232f - 1485f), _wgslsmith_f_op_f32(f32(-1f) * -536f)))))));
    var var_1 = ~vec3<u32>(~_wgslsmith_clamp_u32(36635u, arg_1.x, 38528u) & _wgslsmith_dot_vec3_u32(max(arg_0, vec3<u32>(1u, 4294967295u, 1u)), arg_0), 4294967295u, arg_0.x);
    return Struct_5(Struct_2(4294967295u, !select(vec2<bool>(true, true), vec2<bool>(true, false), true), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -577f, var_0.x)), _wgslsmith_f_op_vec3_f32(var_0.zxy + vec3<f32>(-1000f, var_0.x, var_0.x))), vec3<f32>(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(-var_0.x), -499f)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.x, _wgslsmith_sub_u32(arg_1.x, arg_1.x), 21510u, u_input.d.x), firstTrailingBit(~vec4<u32>(52006u, 0u, arg_1.x, 4294967295u))), 1i));
}

fn func_4(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_5) -> StorageBuffer {
    var var_0 = false;
    let var_1 = vec3<bool>(arg_2.b.x, true, 29402u <= ~(~(~u_input.d.x)));
    global1 = array<Struct_4, 31>();
    var var_2 = arg_0;
    var var_3 = 49236i;
    return StorageBuffer(vec2<f32>(_wgslsmith_div_f32(arg_2.c.x, -284f), -1600f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1746f, -1921f, arg_2.c.x) * vec3<f32>(798f, arg_2.c.x, arg_2.c.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.a.c.x, arg_3.a.c.x, -258f) * vec3<f32>(1909f, arg_2.c.x, 487f)))) * _wgslsmith_f_op_vec3_f32(select(arg_3.a.c, _wgslsmith_div_vec3_f32(arg_3.a.c, vec3<f32>(arg_2.c.x, 1623f, arg_3.a.c.x)), true)))), countOneBits(arg_2.e));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(~(max(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b.x, u_input.a.x), u_input.e.zxz), -2147483647i) ^ u_input.c.x), !vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false)), false), Struct_2(_wgslsmith_add_u32(u_input.d.x, _wgslsmith_sub_u32(u_input.d.x, u_input.d.x)) | firstLeadingBit(~u_input.d.x), !select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), true)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2471f, -1000f, -229f) - vec3<f32>(665f, -764f, 611f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(2499f, -376f, 537f))))), max(countOneBits(vec4<u32>(0u, u_input.d.x, u_input.d.x, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 28439u, 4294967295u, u_input.d.x), _wgslsmith_sub_vec4_u32(vec4<u32>(99839u, u_input.d.x, 4294967295u, 0u), vec4<u32>(3966u, 14348u, u_input.d.x, u_input.d.x)))), select(u_input.e.x, u_input.e.x, true) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d.x, u_input.d.x, 7380u, 26086u), ~vec4<u32>(2741u, 0u, u_input.d.x, 0u)) % 32u)), func_1(~vec3<u32>(_wgslsmith_mod_u32(1u, u_input.d.x), ~27567u, ~u_input.d.x), _wgslsmith_mod_vec2_u32(~reverseBits(u_input.d), (vec2<u32>(u_input.d.x, u_input.d.x) & vec2<u32>(0u, u_input.d.x)) << (firstTrailingBit(vec2<u32>(1u, u_input.d.x)) % vec2<u32>(32u)))));
}

