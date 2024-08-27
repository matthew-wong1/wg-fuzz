struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> vec3<u32> {
    var var_0 = (4294967295u >> (max(u_input.a, 97263u) % 32u)) <= u_input.a;
    let var_1 = i32(-1i) * -2147483647i;
    var_0 = (true | any(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true))) && true;
    let var_2 = vec3<u32>(1u, ~(~select(firstTrailingBit(65863u), u_input.b & u_input.a, u_input.c.x == u_input.c.x)), ~(_wgslsmith_dot_vec3_u32(~vec3<u32>(28624u, 4294967295u, u_input.a), vec3<u32>(1u, 38293u, 4294967295u)) >> (max(_wgslsmith_dot_vec4_u32(vec4<u32>(13488u, u_input.b, u_input.b, 32417u), vec4<u32>(71168u, u_input.b, u_input.a, 29439u)), _wgslsmith_mod_u32(1u, 4294967295u)) % 32u)));
    var var_3 = countOneBits(countOneBits(u_input.b) >> (_wgslsmith_mod_u32(~min(var_2.x, 58884u), u_input.b) % 32u));
    return var_2;
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1753f);
    var var_0 = Struct_4(_wgslsmith_f_op_f32(abs(1282f)), Struct_1(true, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1596f, 1205f)))))), all(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), -2376f), Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1919f, -1000f, 1573f, 815f)) + vec4<f32>(-711f, 809f, -995f, 1050f)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 4294967295u, 34775u), vec4<u32>(u_input.b, u_input.a, 15212u, 0u), vec4<u32>(68992u, 0u, 1u, u_input.a))), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(10494u, u_input.b, u_input.b)), func_3(u_input.c.x)), max(select(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(u_input.a, u_input.b, 3978u), false), ~vec3<u32>(2190u, u_input.b, 4294967295u)))));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-721f - _wgslsmith_f_op_f32(-var_0.c.a.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 1f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1939f, var_0.b.d, var_0.b.c)), var_0.b.d, -813f > var_0.b.b.x)))))));
    var var_2 = false;
    var_0 = Struct_4(-189f, var_0.b, var_0.c);
    return var_0.b;
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-455f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1982f), _wgslsmith_f_op_f32(max(314f, 102f))), 1099f)))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(374f)), -576f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1869f, 1031f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -739f) * _wgslsmith_f_op_f32(round(-409f))))));
    var var_0 = Struct_4(-1234f, func_2(), Struct_3(Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1399f, 1000f, 102f, -550f), vec4<f32>(196f, -694f, 2928f, -1449f), true)), vec4<f32>(-1000f, -234f, -849f, -952f)), vec4<u32>(1u, 21865u, 45280u, u_input.a) >> (~vec4<u32>(36596u, u_input.a, u_input.b, 55233u) % vec4<u32>(32u))), _wgslsmith_div_vec3_u32(reverseBits(abs(vec3<u32>(u_input.b, 13134u, u_input.b))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.b), vec3<u32>(u_input.a, 1u, u_input.a)), u_input.a >> (u_input.a % 32u), ~19251u))));
    global0 = var_0.a;
    var var_1 = var_0.b.c;
    return Struct_1(var_0.b.c, var_0.c.a.a.xz, any(select(vec2<bool>(true, true), select(vec2<bool>(true, var_0.b.c), vec2<bool>(true, true), all(vec3<bool>(var_0.b.a, true, false))), vec2<bool>(-29555i != u_input.c.x, var_0.a <= var_0.c.a.a.x))), 560f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(round(1f)), func_1(), Struct_3(Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(-1562f, -829f, 1000f, 2334f), vec4<f32>(-592f, 891f, -866f, -489f)), reverseBits(~vec4<u32>(1u, 4294967295u, 84146u, 42795u))), _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(1u, u_input.b, u_input.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a, 9878u), vec3<u32>(4294967295u, u_input.a, 4294967295u)), ~vec3<u32>(74796u, u_input.a, u_input.a)) >> (countOneBits(vec3<u32>(u_input.a, 1u, 1u)) % vec3<u32>(32u))));
    let var_1 = -((-vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x) & abs(max(vec4<i32>(54279i, -17562i, 7276i, 2147483647i), vec4<i32>(-2147483647i, 2147483647i, 0i, -2147483647i)))) << (vec4<u32>(var_0.c.b.x, u_input.b, 11265u, ~14081u) % vec4<u32>(32u)));
    var var_2 = _wgslsmith_f_op_f32(-372f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.c.a.a.x - var_0.b.d)))), _wgslsmith_f_op_f32(-func_2().b.x))));
    let var_3 = -1i;
    var var_4 = (vec2<i32>(-1i) * -(vec2<i32>(-1i) * -vec2<i32>(-47614i, -1i))) >> (func_3(-firstLeadingBit(~2147483647i)).zz % vec2<u32>(32u));
    var var_5 = ~var_0.c.b.yy;
    let var_6 = Struct_2(_wgslsmith_f_op_vec4_f32(var_0.c.a.a * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, 1000f, var_0.a, var_0.c.a.a.x) * vec4<f32>(var_0.a, var_0.b.d, -264f, -1889f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(134f, -743f, var_0.a, var_0.a), vec4<f32>(var_0.b.d, -663f, var_0.b.b.x, -843f), false)), _wgslsmith_f_op_vec4_f32(max(var_0.c.a.a, vec4<f32>(1000f, var_0.a, var_0.b.d, var_0.c.a.a.x)))))), ~vec4<u32>(~var_5.x, 1u | var_0.c.a.b.x, ~abs(0u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, var_0.c.a.b.x, 27555u), var_0.c.a.b.xzw))));
    var var_7 = Struct_3(var_6, ~vec3<u32>(_wgslsmith_mult_u32(var_6.b.x, ~47059u), var_0.c.b.x, var_0.c.a.b.x));
    var_5 = firstLeadingBit(select(vec2<u32>(firstTrailingBit(var_5.x) << (_wgslsmith_dot_vec4_u32(var_0.c.a.b, var_7.a.b) % 32u), _wgslsmith_add_u32(firstLeadingBit(u_input.a), 1u)), select(select(_wgslsmith_mod_vec2_u32(var_7.a.b.zz, var_7.b.yz), var_6.b.zz, var_0.b.c | true), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(42546u, 0u), var_7.a.b.ww), var_0.c.b.xz), !vec2<bool>(true, var_0.b.a)), var_0.b.a));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.zxy);
}

