struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<bool>) -> u32 {
    var var_0 = u_input.b;
    var_0 = arg_0.x;
    var var_1 = vec2<bool>(arg_1.x, select(arg_1.x, true, any(select(arg_1, vec2<bool>(true, false), true))));
    var_0 = _wgslsmith_div_i32(arg_0.x, _wgslsmith_mod_i32(-firstTrailingBit(~arg_0.x), max(arg_0.x << (~u_input.c % 32u), arg_0.x)));
    var var_2 = ~(~firstLeadingBit(_wgslsmith_add_i32(arg_0.x, -54762i)));
    return 10707u;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)) & (u_input.d == u_input.b), u_input.e, u_input.a.x);
    var var_1 = (u_input.b | ~u_input.d) <= u_input.d;
    var_1 = var_0.a;
    var var_2 = Struct_3(Struct_2(Struct_1(select(var_0.a | var_0.a, true, true & var_0.a), func_3(vec2<i32>(2147483647i, 1i) | vec2<i32>(2147483647i, u_input.d), select(vec2<bool>(true, var_0.a), vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, var_0.a))), _wgslsmith_sub_u32(abs(0u), _wgslsmith_clamp_u32(u_input.c, 59301u, u_input.e))), Struct_1(all(!vec2<bool>(false, var_0.a)), var_0.b, 37387u), 1615f, Struct_1(var_0.a, abs(min(u_input.a.x, var_0.b)), var_0.c << (~42581u % 32u))), abs(firstLeadingBit(var_0.c >> (~0u % 32u))));
    let var_3 = Struct_3(Struct_2(Struct_1(_wgslsmith_mod_i32(u_input.d, 2147483647i) >= 1i, var_2.b, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.e), u_input.a.wzw), u_input.a.wwz)), var_2.a.b, var_2.a.c, var_0), ~(~(var_0.c ^ ~1u)));
    return var_2.a;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_3) -> u32 {
    let var_0 = arg_0.yz;
    var var_1 = arg_1;
    var var_2 = Struct_3(Struct_2(Struct_1(!arg_2.a.d.a, arg_2.a.d.b, _wgslsmith_div_u32(27749u, 39024u)), var_1.a.d, 879f, arg_2.a.a), 33834u);
    let var_3 = Struct_3(Struct_2(Struct_1(true, ~(~arg_2.b), arg_1.a.d.b), func_2().d, _wgslsmith_f_op_f32(abs(var_2.a.c)), var_1.a.a), max(arg_2.b, 17490u));
    var_2 = var_3;
    return _wgslsmith_sub_u32(abs(19078u), u_input.c);
}

fn func_1(arg_0: bool, arg_1: bool) -> u32 {
    var var_0 = Struct_1(true, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(max(vec4<u32>(u_input.a.x, 1580u, u_input.c, 0u), u_input.a), ~u_input.a), _wgslsmith_clamp_vec4_u32(u_input.a << (u_input.a % vec4<u32>(32u)), u_input.a, ~vec4<u32>(27608u, u_input.a.x, 4294967295u, 1u))) >> (reverseBits(~firstTrailingBit(u_input.e)) % 32u), u_input.c);
    var_0 = Struct_1(!(!var_0.a), 0u, ~func_4(vec3<i32>(-2147483647i, _wgslsmith_sub_i32(0i, u_input.b), u_input.b), Struct_3(func_2(), ~1u), Struct_3(Struct_2(Struct_1(arg_1, 1u, 4294967295u), Struct_1(true, 1u, 1u), -2459f, Struct_1(true, u_input.e, 13997u)), var_0.b >> (69973u % 32u))));
    var_0 = Struct_1(true, var_0.b, ~_wgslsmith_div_u32(~(~1u), ~max(1u, var_0.c)));
    let var_1 = func_4(~vec3<i32>(~firstTrailingBit(u_input.d), u_input.b, -16136i), Struct_3(Struct_2(Struct_1(arg_0, _wgslsmith_clamp_u32(14812u, 27733u, var_0.c), ~4294967295u), Struct_1(arg_1, ~u_input.e, var_0.b), 1000f, func_2().b), 1u), Struct_3(func_2(), _wgslsmith_add_u32(var_0.c ^ _wgslsmith_mod_u32(var_0.b, u_input.c), abs(var_0.c) << (var_0.c % 32u))));
    var var_2 = Struct_3(func_2(), ~u_input.a.x & firstTrailingBit(~select(var_0.b, u_input.a.x, true)));
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(abs(~45173u), 1u) ^ (vec2<u32>(func_1(false, false), _wgslsmith_mult_u32(u_input.a.x, u_input.e)) >> (reverseBits(max(u_input.a.xw, vec2<u32>(u_input.e, u_input.c))) % vec2<u32>(32u))), abs(~(_wgslsmith_mod_vec2_u32(vec2<u32>(18751u, u_input.c), u_input.a.yy) | vec2<u32>(u_input.a.x, u_input.c))));
    var var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(856f, -864f, false)) - _wgslsmith_f_op_f32(-124f - -351f)) + 1f), -1830f, 222f)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + _wgslsmith_div_f32(-969f, 1406f)));
    var var_3 = 14376i;
    var var_4 = -(vec4<i32>(_wgslsmith_div_i32(14668i, -u_input.b), countOneBits(max(u_input.d, 25610i)), min(26902i, u_input.d) ^ ~(-1i), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-20872i, -2147483647i, 91974i), vec3<i32>(u_input.d, u_input.d, u_input.b), vec3<i32>(u_input.b, u_input.d, 11762i)), select(vec3<i32>(u_input.b, -23999i, u_input.d), vec3<i32>(u_input.b, 1197i, u_input.b), vec3<bool>(true, true, false)))) >> (~vec4<u32>(~u_input.a.x, 99011u >> (1u % 32u), ~var_0, var_0 >> (2255u % 32u)) % vec4<u32>(32u)));
    let var_5 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(-var_1.x)))), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2)))), 763f, var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(vec2<u32>(~u_input.e, firstLeadingBit(45544u)), u_input.a.ww & _wgslsmith_add_vec2_u32(vec2<u32>(38760u, var_0), u_input.a.zz)) ^ vec2<u32>(reverseBits(_wgslsmith_clamp_u32(1u, 1u, 41488u)), ~u_input.e), u_input.b, var_5, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -1000f)))));
}

