struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<f32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_1.b) != arg_2, 2003f, arg_0.c, _wgslsmith_sub_vec2_i32(-arg_0.d, -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, 23081i), -vec2<i32>(0i, 0i))));
    var var_1 = select(!select(!(!vec2<bool>(arg_0.a, false)), vec2<bool>(var_0.a || arg_1.a, all(vec4<bool>(arg_1.a, true, var_0.a, true))), !(!arg_1.a)), select(vec2<bool>(_wgslsmith_add_i32(arg_0.d.x, 0i) == arg_0.d.x, true), !select(select(vec2<bool>(arg_0.a, var_0.a), vec2<bool>(false, false), false), !vec2<bool>(true, var_0.a), vec2<bool>(true, true)), vec2<bool>(true, var_0.a)), true);
    let var_2 = !select(select(vec2<bool>(true, all(vec3<bool>(false, true, true))), select(select(vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(arg_0.a, true), var_0.a), vec2<bool>(true, true), true), all(vec3<bool>(arg_0.a, true, true))), select(!(!vec2<bool>(arg_0.a, false)), select(!vec2<bool>(false, arg_1.a), select(vec2<bool>(false, arg_1.a), vec2<bool>(false, false), var_1.x), select(vec2<bool>(false, false), vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, true))), vec2<bool>(arg_0.a && var_0.a, select(var_0.a, false, true))), !arg_0.a);
    var var_3 = _wgslsmith_add_vec3_u32(countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(1u, 4294967295u, 36198u)), min(vec3<u32>(0u, 49541u, 0u), vec3<u32>(114053u, 0u, 12152u))))), firstLeadingBit(~abs(vec3<u32>(1u, 1u, 36321u))));
    var var_4 = _wgslsmith_mult_vec3_i32(-(~reverseBits(vec3<i32>(arg_0.d.x, u_input.b, var_0.d.x))), max(~countOneBits(-vec3<i32>(0i, arg_1.d.x, arg_1.d.x)), select(_wgslsmith_add_vec3_i32(~vec3<i32>(var_0.d.x, 0i, 22180i), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.d.x, -5391i, 1i), vec3<i32>(14148i, 2147483647i, arg_1.d.x))), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.d.x, -1i, arg_0.d.x), -vec3<i32>(-6691i, 0i, 39071i)), !(!vec3<bool>(arg_0.a, arg_1.a, var_0.a)))));
    return vec3<i32>(var_0.d.x, ~(-91667i), arg_0.d.x | 2147483647i);
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = Struct_1(true, -304f, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.b, arg_0.c.x, arg_2.a)) - _wgslsmith_f_op_f32(trunc(692f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(arg_2.b))))))), max(~(-vec2<i32>(arg_3.d.x, -48197i)), arg_0.d));
    var var_1 = Struct_1(false, _wgslsmith_f_op_f32(arg_2.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1228f, arg_3.c.x)) * -1000f))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1507f, -706f, arg_0.c.x), arg_3.c))))), vec2<i32>(-37861i, arg_3.d.x));
    var var_2 = -select(~func_3(arg_2, arg_0, 1147f), select(vec3<i32>(var_1.d.x, arg_1, -1i), abs(vec3<i32>(31020i, arg_1, var_1.d.x)), !arg_2.a), true) ^ select(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-1i, -1i, -2147483647i), vec3<i32>(0i, -1i, -2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.d.x, var_0.d.x, 0i), vec3<i32>(15843i, arg_2.d.x, var_1.d.x))) ^ firstTrailingBit(vec3<i32>(arg_2.d.x, 50323i, 0i)), min(firstTrailingBit(vec3<i32>(arg_0.d.x, 0i, var_1.d.x)), vec3<i32>(arg_0.d.x, 2147483647i, 2147483647i) | vec3<i32>(1i, 16284i, 11666i)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(71168u, 4294967295u, 1u), vec3<u32>(1u, 1u, 11194u), vec3<u32>(1u, 0u, 1u))) % vec3<u32>(32u)), select(vec3<bool>(!arg_2.a, arg_0.a | var_1.a, arg_2.a), vec3<bool>(!arg_3.a, var_1.a && true, true), select(arg_0.a, true, var_1.b <= 1000f)));
    var_0 = arg_2;
    let var_3 = !(!(firstLeadingBit(_wgslsmith_mod_i32(81560i, 26005i)) >= arg_3.d.x));
    return select(firstTrailingBit(select(vec4<i32>(-1i) * -vec4<i32>(var_2.x, 31658i, var_2.x, u_input.a), -vec4<i32>(arg_1, -25859i, arg_0.d.x, arg_0.d.x), !(!vec4<bool>(arg_2.a, true, false, true)))), abs(vec4<i32>(arg_2.d.x >> (max(0u, 1u) % 32u), 8300i, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(var_1.d.x, -1i, arg_1, arg_0.d.x)), vec4<i32>(-2147483647i, 0i, u_input.b, 39705i) & vec4<i32>(-14358i, var_1.d.x, arg_0.d.x, arg_3.d.x)), 4553i)), !var_1.a);
}

fn func_1() -> vec2<f32> {
    let var_0 = -reverseBits(abs(func_2(Struct_1(false, 2278f, vec3<f32>(-567f, -398f, 1150f), vec2<i32>(16539i, -11417i)), ~u_input.b, Struct_1(false, -762f, vec3<f32>(588f, 849f, 707f), vec2<i32>(-4666i, u_input.a)), Struct_1(false, -760f, vec3<f32>(-1339f, -1000f, -741f), vec2<i32>(u_input.a, 0i)))));
    var var_1 = ~(-(u_input.b & ~(-var_0.x)));
    let var_2 = Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-679f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2460f, 683f, 558f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1871f, 508f, -1246f) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(698f, 642f, 1000f), vec3<f32>(-382f, -1817f, -962f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-267f, 977f, 773f)))))), vec2<i32>(-_wgslsmith_clamp_i32(abs(-28086i), u_input.a, -1i), -33226i));
    var_1 = func_2(Struct_1(true, var_2.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_2.c), _wgslsmith_div_vec3_f32(var_2.c, var_2.c))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.c) + var_2.c)), ~(~var_0.yz)), i32(-1i) * -var_2.d.x, Struct_1(true, _wgslsmith_f_op_f32(1522f + -970f), _wgslsmith_f_op_vec3_f32(trunc(var_2.c)), vec2<i32>(var_2.d.x, ~(~(-28972i)))), var_2).x;
    let var_3 = vec3<bool>(all(!select(vec3<bool>(var_2.a, var_2.a, false), !vec3<bool>(true, var_2.a, true), true)), false, _wgslsmith_mult_i32(1i, ~select(var_0.x, u_input.b, false)) == -_wgslsmith_clamp_i32(-26198i, firstLeadingBit(var_0.x), -var_2.d.x));
    return var_2.c.yy;
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: vec3<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_2.x, -882f)), _wgslsmith_f_op_f32(ceil(583f))));
    var var_1 = Struct_1(true, 593f, arg_3.c, ~_wgslsmith_mult_vec2_i32(arg_3.d, arg_3.d));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b * 370f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2085f)));
    var_1 = arg_3;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -752f);
    return Struct_1(arg_3.a, _wgslsmith_div_f32(arg_0.x, arg_0.x), arg_3.c, vec2<i32>(reverseBits(-(u_input.b ^ u_input.b)), 24689i));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>) -> StorageBuffer {
    let var_0 = firstTrailingBit(arg_0.d.x);
    return StorageBuffer(~(~_wgslsmith_clamp_u32(57653u, arg_1.x, arg_1.x)) << (0u % 32u), 41822u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_4(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_1()))), false, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-744f, -1067f, -763f)))))), Struct_1(any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(max(245f, _wgslsmith_f_op_f32(f32(-1f) * -585f))), vec3<f32>(-582f, _wgslsmith_f_op_f32(252f - -377f), _wgslsmith_f_op_f32(round(1027f))), vec2<i32>(_wgslsmith_add_i32(u_input.a, 62998i), -2147483647i))), vec2<u32>(countOneBits(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(7350u, 4294967295u, 28526u, 0u), vec4<u32>(37634u, 0u, 1u, 4294967295u)), 5033u >> (0u % 32u), ~0u)), ~(select(4294967295u, 32428u, false) | ~0u)));
}

