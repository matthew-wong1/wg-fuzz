struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_3(Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(abs(-2147483647i), 0i), ~vec2<i32>(9478i, 0i), abs(vec2<i32>(-2147483647i, 37089i))), true, vec3<u32>(4294967295u, 20703u, ~1u), -(~(-vec4<i32>(0i, u_input.a, 1i, u_input.a))), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true)), vec2<bool>(true, true));
    var var_1 = vec4<u32>(~_wgslsmith_mult_u32(27770u, var_0.a.c.x), 42924u, 1u, firstLeadingBit(var_0.a.c.x));
    let var_2 = var_0.a.d.yww;
    var var_3 = Struct_4(Struct_2(Struct_1(_wgslsmith_mod_vec2_i32(var_0.a.a, var_0.a.a), false, select(vec3<u32>(0u, var_0.a.c.x, 4294967295u), var_1.zwy, var_0.a.b) & ~var_0.a.c, vec4<i32>(var_0.a.a.x, u_input.a, 2147483647i, -1i) & _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a.d.x, u_input.a, -2147483647i, var_0.a.d.x), var_0.a.d, vec4<i32>(u_input.a, u_input.a, var_2.x, var_0.a.d.x)), var_0.a.e), !vec4<bool>(var_0.b.x, true, var_0.a.b, !var_0.a.e.x), !(!var_0.b.x)));
    var var_4 = 0i;
    return var_3.a.a.c;
}

fn func_2() -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-915f, -1000f, 1000f), vec3<f32>(689f, -644f, 3122f))) - vec3<f32>(1f, 1f, 1f)))));
    let var_1 = true || (false && (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * var_0.x) >= var_0.x));
    var var_2 = Struct_2(Struct_1(~(vec2<i32>(13449i, u_input.a) << (vec2<u32>(4294967295u, 125345u) % vec2<u32>(32u))), true, _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), func_3()), ~(~vec3<u32>(1u, 4774u, 0u))), vec4<i32>(u_input.a, countOneBits(u_input.a), _wgslsmith_clamp_i32(u_input.a, u_input.a, 2147483647i), -38743i) & (min(vec4<i32>(u_input.a, 8637i, -2147483647i, -1i), vec4<i32>(2147483647i, u_input.a, 1i, u_input.a)) | vec4<i32>(-15297i, 1i, u_input.a, u_input.a)), !select(vec3<bool>(false, false, var_1), select(vec3<bool>(false, false, var_1), vec3<bool>(true, false, false), vec3<bool>(true, var_1, var_1)), !vec3<bool>(false, true, var_1))), vec4<bool>(false, true, all(!vec2<bool>(var_1, false)) || select(all(vec4<bool>(var_1, var_1, false, var_1)), var_1, false), all(!(!vec2<bool>(var_1, var_1)))), !(!all(vec2<bool>(var_1, var_1))));
    var_2 = Struct_2(var_2.a, !(!var_2.b), !any(!(!vec3<bool>(true, var_2.b.x, var_1))));
    var_0 = vec3<f32>(266f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -494f), _wgslsmith_f_op_f32(ceil(var_0.x)))), var_0.x))), var_0.x);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x * -1607f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.yx))))));
}

fn func_1(arg_0: vec3<bool>, arg_1: i32) -> Struct_2 {
    var var_0 = vec2<bool>(false, arg_0.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(func_2());
    let var_2 = firstTrailingBit(~vec3<u32>(0u, 35432u, ~1u) | max(vec3<u32>(~81468u, _wgslsmith_clamp_u32(58989u, 0u, 1554u), 1u), ~vec3<u32>(4294967295u, 71810u, 0u)));
    let var_3 = true;
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(511f, var_1.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-1000f + 605f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(830f, var_1.x, var_1.x, var_1.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(473f, var_1.x, var_1.x, 339f) + vec4<f32>(var_1.x, 541f, var_1.x, -680f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1000f, -419f, _wgslsmith_f_op_f32(floor(var_1.x))))));
    return Struct_2(Struct_1(select(abs(select(vec2<i32>(1i, 87310i), vec2<i32>(26231i, arg_1), vec2<bool>(true, false))), _wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(26832i, arg_1)), min(vec2<i32>(-31512i, u_input.a), vec2<i32>(u_input.a, arg_1))), !var_3), false, var_2, min(vec4<i32>(u_input.a, ~u_input.a, -arg_1, 3831i), countOneBits(~vec4<i32>(arg_1, arg_1, u_input.a, 5868i))), arg_0), vec4<bool>(!(all(arg_0) & any(arg_0.yz)), false, false != !select(arg_0.x, true, false), !any(arg_0.zy) && var_3), _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_4.x)))) <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(var_4.x - 274f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(345f - 949f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-309f))))))))));
    var var_1 = Struct_4(func_1(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(select(false, true, true), true, true), true & all(vec3<bool>(true, false, false))), -u_input.a));
    let var_2 = ~reverseBits(_wgslsmith_mod_i32(abs(countOneBits(13150i)), -_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.a.d.x, u_input.a, u_input.a), var_1.a.a.d.yzw)));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_2()).x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-722f)), _wgslsmith_div_f32(-1992f, 1002f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(461f, -149f)))), !(!var_1.a.a.b || true))));
    var var_4 = true;
    var var_5 = var_1.a.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~15463u, _wgslsmith_mod_u32(var_1.a.a.c.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(var_1.a.a.c.x, 0u), _wgslsmith_div_u32(var_1.a.a.c.x, var_1.a.a.c.x))), abs(1u)));
}

