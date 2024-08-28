struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(vec2<bool>(true, true), -753f, vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false), 1178f, vec2<bool>(false, true))), Struct_2(Struct_1(vec2<bool>(false, true), -801f, vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true), -2159f, vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(false, false), -525f, vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true), 878f, vec2<bool>(false, true))), Struct_2(Struct_1(vec2<bool>(false, false), -153f, vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true), 978f, vec2<bool>(true, true))), Struct_2(Struct_1(vec2<bool>(false, false), -892f, vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true), 892f, vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(false, false), -647f, vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true), 844f, vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(true, true), 1789f, vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true), -559f, vec2<bool>(false, true))), Struct_2(Struct_1(vec2<bool>(false, true), 266f, vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false), 288f, vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(false, false), -487f, vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true), 467f, vec2<bool>(true, true))), Struct_2(Struct_1(vec2<bool>(true, false), -1886f, vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false), -470f, vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(false, false), -2077f, vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false), 178f, vec2<bool>(false, true))), Struct_2(Struct_1(vec2<bool>(false, true), 154f, vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true), 152f, vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(true, true), 1041f, vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true), 1830f, vec2<bool>(true, true))), Struct_2(Struct_1(vec2<bool>(true, true), 713f, vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false), 1254f, vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(true, false), -135f, vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true), 132f, vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(true, false), 1128f, vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false), 182f, vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(true, true), 1651f, vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false), -1624f, vec2<bool>(true, false))), Struct_2(Struct_1(vec2<bool>(true, false), 622f, vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true), -1304f, vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(false, false), 1932f, vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false), 1213f, vec2<bool>(false, true))), Struct_2(Struct_1(vec2<bool>(true, false), 270f, vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true), -120f, vec2<bool>(true, true))), Struct_2(Struct_1(vec2<bool>(true, true), -409f, vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true), -105f, vec2<bool>(false, false))), Struct_2(Struct_1(vec2<bool>(false, false), -775f, vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false), -1034f, vec2<bool>(true, true))));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: vec4<f32>) -> f32 {
    global0 = array<Struct_2, 22>();
    global0 = array<Struct_2, 22>();
    var var_0 = -273f;
    let var_1 = 11778i;
    var var_2 = firstLeadingBit(81416u);
    return _wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.b - arg_2.x))))))));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: bool) -> Struct_2 {
    global0 = array<Struct_2, 22>();
    global0 = array<Struct_2, 22>();
    var var_0 = Struct_2(Struct_1(!(!select(arg_0.zz, vec2<bool>(false, true), arg_2)), arg_1, !vec2<bool>(arg_2, any(vec4<bool>(false, true, false, arg_0.x)))), Struct_1(!vec2<bool>(false == arg_0.x, true), arg_1, select(select(!arg_0.yw, arg_0.yy, arg_2 || arg_2), vec2<bool>(true, false), u_input.a.x > ~u_input.a.x)));
    let var_1 = abs(abs(max(reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, 1u)), firstLeadingBit(abs(vec3<u32>(4294967295u, u_input.a.x, u_input.a.x))))));
    var var_2 = vec3<u32>(_wgslsmith_dot_vec2_u32(min(~vec2<u32>(32077u, 1u) | ~vec2<u32>(10071u, u_input.a.x), vec2<u32>(~1u, 1u)), vec2<u32>(81069u, 1u)), 4294967295u, ~_wgslsmith_sub_u32(abs(~73728u), u_input.a.x));
    return global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(firstTrailingBit(var_1), select(vec3<u32>(var_2.x, var_1.x, 4294967295u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), false) | vec3<u32>(var_1.x, var_1.x, u_input.a.x)), u_input.a.x, 18556u), 22u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(~u_input.a.x, 22u)];
    var var_1 = _wgslsmith_f_op_f32(-1799f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(reverseBits(u_input.b.x) >> (~u_input.a.x % 32u), func_3(vec4<bool>(arg_0.a.a.x, arg_1.c.x, false, false), 736f, true), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(155f, arg_1.b, 696f, 791f)))))))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.b, 335f, false)) - _wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(f32(-1f) * -1959f))), -714f);
    var var_3 = u_input.b >> (((~firstTrailingBit(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) << (~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.a.x, 27451u), vec3<u32>(4294967295u, u_input.a.x, 4591u)) % vec3<u32>(32u))) & vec3<u32>(u_input.a.x, ~(u_input.a.x << (900u % 32u)), _wgslsmith_dot_vec2_u32(~u_input.a, firstTrailingBit(vec2<u32>(u_input.a.x, u_input.a.x))))) % vec3<u32>(32u));
    let var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-465f)), 1f, arg_0.a.b, var_0.b.b)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(arg_1.b)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(arg_1.b)))), -1658f, -1000f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, var_0.b.b, var_2.x, var_0.a.b)) * vec4<f32>(var_2.x, var_2.x, var_2.x, -1000f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b, -774f, -716f, 944f)) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.b, arg_0.a.b, arg_0.a.b, var_2.x)))))), !select(!vec4<bool>(arg_0.a.c.x, var_0.b.a.x, arg_0.a.a.x, arg_1.a.x), vec4<bool>(true || arg_1.a.x, false, false, any(vec4<bool>(true, arg_0.a.a.x, false, arg_0.a.a.x))), true)));
    return arg_1;
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global0 = array<Struct_2, 22>();
    global0 = array<Struct_2, 22>();
    let var_0 = Struct_2(func_4(func_3(select(select(vec4<bool>(true, true, arg_0.a.a.x, true), vec4<bool>(true, true, false, true), true), select(vec4<bool>(arg_0.b.c.x, arg_0.a.a.x, true, true), vec4<bool>(true, true, arg_0.a.a.x, arg_0.a.c.x), vec4<bool>(false, true, true, arg_0.b.c.x)), true), _wgslsmith_f_op_f32(func_2(-4259i >> (u_input.a.x % 32u), Struct_2(arg_0.b, Struct_1(arg_0.a.c, arg_0.b.b, arg_0.b.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1274f, arg_0.b.b, 498f, -1000f)))), arg_0.a.c.x), func_3(select(vec4<bool>(false, arg_0.a.c.x, arg_0.a.a.x, arg_0.a.a.x), select(vec4<bool>(true, false, arg_0.a.a.x, arg_0.a.a.x), vec4<bool>(false, arg_0.a.a.x, arg_0.b.c.x, false), arg_0.a.c.x), false), arg_0.b.b, true).a), func_4(func_3(!vec4<bool>(arg_0.a.a.x, arg_0.b.c.x, arg_0.b.a.x, arg_0.b.c.x), arg_0.b.b, true), arg_0.b));
    var var_1 = func_4(arg_0, arg_0.a);
    var var_2 = arg_0;
    return func_3(!vec4<bool>(var_0.b.a.x, any(select(vec4<bool>(false, var_0.a.a.x, var_1.c.x, true), vec4<bool>(var_1.c.x, var_1.c.x, var_2.b.c.x, var_1.a.x), var_2.b.c.x)), all(vec2<bool>(false, var_2.b.c.x)), all(vec3<bool>(true, var_1.c.x, false))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.b))))))), var_2.b.a.x).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i | u_input.b.x;
    var_0 = u_input.b.x;
    var var_1 = Struct_2(Struct_1(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))), _wgslsmith_f_op_f32(f32(-1f) * -521f), select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), u_input.b.x <= -1i), vec2<bool>(true, true))), Struct_1(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), true), vec2<bool>(true, true), true), _wgslsmith_f_op_f32(abs(1000f)), vec2<bool>(true, min(u_input.b.x, -2147483647i) <= _wgslsmith_div_i32(0i, u_input.b.x))));
    var_1 = Struct_2(Struct_1(!var_1.b.c, var_1.b.b, vec2<bool>(true, select(true, var_1.a.b != var_1.b.b, false))), func_1(Struct_2(Struct_1(select(var_1.b.c, vec2<bool>(false, true), true), _wgslsmith_f_op_f32(select(438f, 836f, true)), !var_1.b.c), Struct_1(select(var_1.a.a, var_1.a.a, true), _wgslsmith_f_op_f32(floor(-247f)), vec2<bool>(var_1.a.c.x, false)))));
    let var_2 = Struct_1(!var_1.a.a, _wgslsmith_f_op_f32(282f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.a.b))))), var_1.b.c);
    global0 = array<Struct_2, 22>();
    var var_3 = firstTrailingBit((~_wgslsmith_sub_u32(47779u, 0u) << (~(u_input.a.x ^ 31067u) % 32u)) | (~(~u_input.a.x) >> (u_input.a.x % 32u)));
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(-296f, var_2.b), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-497f, 130f)))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) * _wgslsmith_f_op_f32(-var_2.b)), _wgslsmith_f_op_f32(select(var_2.b, _wgslsmith_f_op_f32(abs(-1109f)), all(vec4<bool>(true, false, true, false)))))))), ~firstTrailingBit(_wgslsmith_mult_vec2_u32(abs(u_input.a), _wgslsmith_div_vec2_u32(u_input.a, u_input.a))), _wgslsmith_mod_vec4_i32(-(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, u_input.b.x, -2147483647i, u_input.b.x)), ~firstTrailingBit(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.b.x) ^ vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, u_input.b.x))), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(60179u, 32878u, u_input.a.x, u_input.a.x)), ~vec4<u32>(u_input.a.x, 0u, 4294967295u, u_input.a.x)), u_input.a.x, ~u_input.a.x >> (72124u % 32u)), max(_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(u_input.a.x, 22298u, u_input.a.x)), ~vec3<u32>(u_input.a.x, 0u, u_input.a.x)), (vec3<u32>(4294967295u, u_input.a.x, 4294967295u) & vec3<u32>(u_input.a.x, 4294967295u, 4294967295u)) | vec3<u32>(u_input.a.x, 0u, u_input.a.x))));
}

