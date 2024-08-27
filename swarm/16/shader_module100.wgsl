struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_5, 16>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec3<f32> {
    var var_0 = abs(vec4<u32>(~29719u, ~_wgslsmith_sub_u32(0u, ~4294967295u), _wgslsmith_mult_u32(min(min(4294967295u, 4294967295u), 1u), 1u), reverseBits(1u)));
    global0 = true;
    var var_1 = -firstLeadingBit(u_input.a ^ abs(u_input.a)) ^ -select(_wgslsmith_sub_vec2_i32(vec2<i32>(14327i, 0i), firstLeadingBit(u_input.a)), vec2<i32>(_wgslsmith_add_i32(u_input.a.x, u_input.a.x), ~17869i), vec2<bool>(true, true));
    return vec3<f32>(_wgslsmith_f_op_f32(1505f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1423f + -837f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(491f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-662f * -2030f))), _wgslsmith_f_op_f32(-440f + _wgslsmith_f_op_f32(f32(-1f) * -411f)))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -292f), 136f))))), 1199f);
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-634f, 844f, -1161f))) * _wgslsmith_div_vec3_f32(vec3<f32>(1395f, 1848f, -645f), vec3<f32>(1000f, -1273f, -1922f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(715f, -504f, -630f)))) - _wgslsmith_f_op_vec3_f32(func_3()))));
    return Struct_2(Struct_1(_wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(1i, 1i)), ~(vec2<i32>(0i, u_input.a.x) | vec2<i32>(u_input.a.x, 26918i))), 7691u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(45238u, 0u, 57724u) | select(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(1u, 0u, 4294967295u), false)), 1i), Struct_1((_wgslsmith_div_vec2_i32(u_input.a, u_input.a) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))) << (countOneBits(vec2<u32>(0u, 0u)) % vec2<u32>(32u)), 56943u, ~(~firstTrailingBit(1u)), max(firstTrailingBit(u_input.a.x), 7939i) & 29622i), Struct_1(~select(reverseBits(vec2<i32>(u_input.a.x, 0i)), ~u_input.a, true), select(1u, 1u, all(vec3<bool>(true, true, true))), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))), -_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a, u_input.a), vec2<i32>(u_input.a.x, 45419i) << (vec2<u32>(45717u, 1u) % vec2<u32>(32u)))), Struct_1(~(-(u_input.a | vec2<i32>(-62867i, u_input.a.x))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(19872u, 1u, 133836u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), ~(~4294967295u | firstTrailingBit(25761u)), u_input.a.x));
}

fn func_1(arg_0: Struct_3, arg_1: u32) -> u32 {
    global0 = false;
    var var_0 = vec4<f32>(-1584f, -544f, -209f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1405f)))))));
    var_0 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1708f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -2315f)), _wgslsmith_f_op_f32(f32(-1f) * -426f));
    var var_1 = func_2();
    var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-var_0.x), -479f, -1210f), vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), -2013f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)) - var_0.x), 824f), (~(~var_1.b.a.x) ^ (_wgslsmith_mod_i32(var_1.c.d, u_input.a.x) ^ _wgslsmith_div_i32(arg_0.a.d, -1i))) != _wgslsmith_clamp_i32(2147483647i, _wgslsmith_mod_i32(-2317i, -5094i) >> (arg_0.a.b % 32u), 0i)));
    return 10159u;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<i32>) -> StorageBuffer {
    var var_0 = func_2().c;
    global1 = array<Struct_5, 16>();
    var var_1 = -1745f;
    var_1 = _wgslsmith_f_op_f32(step(-935f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-410f * 2596f), 196f)))));
    var_0 = func_2().a;
    return StorageBuffer(arg_0.wxy, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -763f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1122f)) + _wgslsmith_f_op_f32(f32(-1f) * -1052f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1362f, 1000f), vec2<f32>(1465f, 798f)) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(550f, -906f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-560f, -1804f))))))), _wgslsmith_mod_vec4_u32(min(~arg_0, vec4<u32>(4294967295u, var_0.c, 1u, _wgslsmith_div_u32(0u, var_0.c))), min(_wgslsmith_div_vec4_u32(firstTrailingBit(arg_0), arg_0), arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    let var_0 = 1013f;
    let x = u_input.a;
    s_output = func_4(vec4<u32>(_wgslsmith_mult_u32(~0u, ~_wgslsmith_clamp_u32(1u, 0u, 4294967295u)), ~4294967295u >> (max(46011u, func_1(Struct_3(Struct_1(u_input.a, 156444u, 11200u, 24960i), vec4<i32>(640i, u_input.a.x, -2147483647i, u_input.a.x)), 37676u)) % 32u), max(~firstTrailingBit(4294967295u), func_2().c.c), 1u), firstLeadingBit(_wgslsmith_clamp_vec2_i32(u_input.a | _wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(-12530i, u_input.a.x)), u_input.a, vec2<i32>(1i, ~92884i))));
}

