struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1>;

var<private> global1: array<vec3<i32>, 14>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    var var_0 = vec4<bool>(any(vec3<bool>(true, true, true & all(vec3<bool>(true, true, true)))), false, true, true);
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-678f)))))))), -1234f));
    var_0 = vec4<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(5540u, u_input.b.x), vec2<u32>(54683u >> (0u % 32u), 8107u)) <= _wgslsmith_mult_u32(0u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.a), vec2<u32>(0u, u_input.b.x))), !any(vec3<bool>(any(var_0.ywy), true, var_0.x)), true, var_0.x);
    let var_2 = true;
    global1 = array<vec3<i32>, 14>();
    return _wgslsmith_dot_vec4_u32(~countOneBits(reverseBits(abs(vec4<u32>(u_input.a, 0u, 0u, u_input.a)))), firstLeadingBit(abs(~vec4<u32>(u_input.b.x, u_input.b.x, 77599u, u_input.b.x))));
}

fn func_4(arg_0: u32) -> f32 {
    global0 = array<Struct_3, 1>();
    global0 = array<Struct_3, 1>();
    global0 = array<Struct_3, 1>();
    var var_0 = ~(vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(64198i, -99234i), reverseBits(-2147483647i)), ~(i32(-1i) * -17491i)) | select(select(vec2<i32>(-3216i, -1i), vec2<i32>(-2147483647i, 38963i), vec2<bool>(true, true)), _wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(11910i, -62559i) >> (vec2<u32>(u_input.b.x, 1u) % vec2<u32>(32u))), select(true, true, true)));
    let var_1 = Struct_1(~(~arg_0), vec3<u32>(u_input.a, 116229u ^ _wgslsmith_sub_u32(arg_0, abs(0u)), arg_0));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-700f, _wgslsmith_f_op_f32(-733f * _wgslsmith_f_op_f32(select(-1339f, 674f, false))))));
}

fn func_2() -> Struct_2 {
    global1 = array<vec3<i32>, 14>();
    global1 = array<vec3<i32>, 14>();
    var var_0 = u_input.a;
    var var_1 = Struct_4(Struct_2(_wgslsmith_f_op_f32(func_4(func_3())), Struct_1(u_input.b.x, u_input.b), Struct_1(17379u, abs(~vec3<u32>(1u, 4294967295u, u_input.b.x)))), vec2<u32>(_wgslsmith_clamp_u32(~abs(88261u), abs(58080u), ~_wgslsmith_mult_u32(1u, u_input.a)), func_3()));
    global1 = array<vec3<i32>, 14>();
    return Struct_2(var_1.a.a, var_1.a.b, Struct_1(1u, var_1.a.c.b));
}

fn func_1(arg_0: bool, arg_1: Struct_4) -> Struct_1 {
    let var_0 = vec4<bool>(!arg_0, !(135f < _wgslsmith_f_op_f32(-arg_1.a.a)), arg_0 | arg_0, all(select(vec2<bool>(arg_0 | arg_0, arg_0), vec2<bool>(arg_0, all(vec3<bool>(true, arg_0, true))), vec2<bool>(true, true))));
    let var_1 = i32(-1i) * -56241i;
    let var_2 = arg_1.a.a;
    global1 = array<vec3<i32>, 14>();
    let var_3 = func_2();
    return arg_1.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(select(1487f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(322f))))), false)), func_1(_wgslsmith_f_op_f32(trunc(605f)) != _wgslsmith_f_op_f32(f32(-1f) * -279f), Struct_4(Struct_2(_wgslsmith_div_f32(125f, -121f), Struct_1(0u, vec3<u32>(0u, u_input.a, u_input.b.x)), Struct_1(u_input.a, u_input.b)), vec2<u32>(u_input.b.x << (51920u % 32u), ~1u))), func_2().b);
    global0 = array<Struct_3, 1>();
    var var_1 = var_0.a;
    var_1 = _wgslsmith_f_op_f32(abs(-682f));
    var var_2 = 1227f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_add_i32(1i, firstTrailingBit(-17337i)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 25113i), vec2<i32>(53799i, -35495i))), vec2<i32>(-1i) * -vec2<i32>(1i, 1i)), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 4294967295u, 50036u, u_input.a), vec4<u32>(4294967295u, var_0.b.b.x, 1u, 1u)) >> ((~vec4<u32>(1u, u_input.a, u_input.b.x, var_0.b.a) << (~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, var_0.b.a) % vec4<u32>(32u))) % vec4<u32>(32u)), ~vec4<u32>(1u, ~4294967295u, ~4294967295u, u_input.a)), ~(~vec2<i32>(~41772i, reverseBits(-1i))), vec4<f32>(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * 1675f)) * -651f), _wgslsmith_f_op_f32(-var_0.a), 278f));
}

