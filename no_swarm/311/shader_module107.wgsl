struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
    c: u32,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a.x, -132f))), _wgslsmith_f_op_f32(select(arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x + 433f)), arg_1.b.b))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1285f, arg_1.a.x, 2501f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-858f, arg_1.a.x, 208f) * vec3<f32>(-1000f, 856f, arg_1.a.x))), vec3<f32>(_wgslsmith_div_f32(arg_1.a.x, arg_1.a.x), _wgslsmith_f_op_f32(-arg_1.a.x), arg_1.a.x))));
    var var_1 = ~abs(~max(vec2<u32>(0u, 84509u), ~vec2<u32>(arg_1.b.a.x, 4294967295u)));
    var var_2 = Struct_1(arg_1.b.a | vec2<u32>(var_1.x, ~4294967295u), true);
    let var_3 = Struct_3(var_0.xz, arg_1.b);
    let var_4 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1175f, 690f) * vec2<f32>(var_0.x, -753f))) + vec2<f32>(_wgslsmith_f_op_f32(-1060f * -628f), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_0.zy - vec2<f32>(-500f, arg_1.a.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(499f, -1000f) - arg_1.a))))), var_3.b);
    return select(arg_1.b.b, !(_wgslsmith_f_op_f32(max(-642f, var_0.x)) != var_3.a.x), !(!(arg_1.a.x <= -1251f))) | var_2.b;
}

fn func_2(arg_0: vec3<u32>) -> vec2<f32> {
    var var_0 = Struct_1(min(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.x, 10710u), arg_0.zz)), arg_0.xx), true | (!func_3(false, Struct_3(vec2<f32>(-139f, 542f), Struct_1(arg_0.xx, true))) & false));
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_sub_i32(~1i, firstLeadingBit(2147483647i)) << (arg_0.x % 32u), _wgslsmith_add_i32(u_input.b.x, ~1i), 46041i), select(_wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.b.x, 8854i, 25720i, 5280i) ^ vec4<i32>(1i, u_input.a, u_input.a, u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(-37292i, u_input.b.x, u_input.b.x, -1i), vec4<i32>(u_input.b.x, u_input.a, -2147483647i, -2147483647i)), true), max(firstTrailingBit(vec4<i32>(-4178i, 0i, 1i, u_input.a)), ~vec4<i32>(u_input.b.x, 29121i, u_input.a, u_input.a))), -_wgslsmith_add_vec4_i32(~vec4<i32>(3934i, u_input.b.x, u_input.a, u_input.a), vec4<i32>(25486i, -1i, u_input.a, -38234i) & vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.b.x)), true));
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-956f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(523f)))))), Struct_1(arg_0.yx, false));
    var_0 = Struct_1(vec2<u32>(0u, ~43841u), var_0.b);
    var var_3 = var_2;
    return vec2<f32>(623f, _wgslsmith_div_f32(-1043f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(979f)) * _wgslsmith_f_op_f32(sign(-568f)))));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: u32) -> vec2<u32> {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(366f, arg_0))))), _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_div_vec3_u32(~vec3<u32>(arg_2, 1u, arg_2), vec3<u32>(arg_2, 22797u, 11782u))))))));
    return vec2<u32>(45438u, min(arg_2 ^ arg_2, _wgslsmith_sub_u32(4294967295u, 1u)) & (~9624u >> (abs(arg_2) % 32u))) >> (~(~select(vec2<u32>(31059u, 1u), firstTrailingBit(vec2<u32>(arg_2, 0u)), vec2<bool>(true, false))) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(486f, vec3<i32>(17677i, _wgslsmith_add_i32(9057i, -min(17166i, u_input.b.x)), 1i), reverseBits(0u));
    var_0 = vec2<u32>(_wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(0u, 1u, var_0.x))), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 53583u, var_0.x, var_0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, 0u)), ~92381u, 28457u)), var_0.x >> (_wgslsmith_sub_u32(4294967295u, ~(~51180u)) % 32u));
    var_0 = select(min(_wgslsmith_add_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(var_0.x << (var_0.x % 32u), var_0.x)), vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(17867u, var_0.x, 4294967295u, 24501u), vec4<u32>(var_0.x, var_0.x, 0u, var_0.x)), select(0u, 4294967295u, false))), select(~(vec2<u32>(var_0.x, 1u) << (vec2<u32>(var_0.x, 4294967295u) % vec2<u32>(32u))) >> (select(firstTrailingBit(vec2<u32>(4294967295u, var_0.x)), vec2<u32>(0u, 4294967295u), false) % vec2<u32>(32u)), vec2<u32>(~var_0.x, _wgslsmith_add_u32(var_0.x, 60339u)) ^ min(vec2<u32>(48493u, var_0.x) | vec2<u32>(4294967295u, var_0.x), vec2<u32>(6931u, 0u)), select(!select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(false, false), any(vec4<bool>(true, true, false, true))), true)), select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), u_input.b.x >= u_input.b.x), vec2<bool>(all(vec4<bool>(true, true, true, true)), true), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), vec2<bool>(!all(vec2<bool>(true, true)), true), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), true))));
    var var_1 = Struct_1(~(~select(vec2<u32>(var_0.x, 28631u), vec2<u32>(var_0.x, 21131u), false) >> (~vec2<u32>(var_0.x, var_0.x) % vec2<u32>(32u))), !(_wgslsmith_dot_vec2_i32(vec2<i32>(-30591i, u_input.b.x), u_input.b.xy & u_input.b.yz) >= ~_wgslsmith_div_i32(46053i, u_input.a)));
    let var_2 = Struct_2(Struct_1(var_1.a, var_1.b), Struct_1(~vec2<u32>(var_1.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 50366u), vec3<u32>(var_1.a.x, var_1.a.x, 38564u))), true), vec2<u32>(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -137f)), _wgslsmith_div_vec3_i32(-u_input.b, _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.b.x), vec3<i32>(-9620i, u_input.a, u_input.b.x))), ~var_0.x).x, _wgslsmith_clamp_u32(~(~0u), ~4475u, reverseBits(74136u | var_0.x))), Struct_1(vec2<u32>(74892u, var_0.x), any(select(vec4<bool>(var_1.b, var_1.b, true, var_1.b), vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.b), select(vec4<bool>(true, var_1.b, var_1.b, true), vec4<bool>(false, var_1.b, var_1.b, false), false)))));
    var_1 = Struct_1(var_2.c, all(vec4<bool>(var_2.d.b, var_1.b, var_2.b.b | true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(u_input.b, countOneBits(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.b.x, u_input.a, 1i), vec4<i32>(-8965i, u_input.b.x, u_input.b.x, 0i)), 1i & u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.a), u_input.b.xx)))));
}

