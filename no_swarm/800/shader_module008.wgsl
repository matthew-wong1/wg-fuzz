struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<bool>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: vec4<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(arg_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(arg_2.x - 389f), _wgslsmith_f_op_f32(min(-1000f, -589f)), arg_2.x, _wgslsmith_div_f32(1227f, arg_2.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2) + _wgslsmith_f_op_vec4_f32(-arg_2)), all(select(vec3<bool>(arg_1.x, true, arg_1.x), vec3<bool>(false, false, true), vec3<bool>(arg_1.x, arg_1.x, arg_1.x))))))));
    let var_1 = Struct_1(arg_0 ^ ~(~vec4<u32>(arg_0.x, arg_0.x, u_input.a, arg_0.x)), 1u ^ (~(~29800u) ^ _wgslsmith_div_u32(750u, u_input.a << (u_input.a % 32u))), vec2<bool>(arg_1.x, arg_1.x & ((i32(-1i) * -2147483647i) >= firstTrailingBit(20246i))), select(vec4<bool>(true, true, true, true), !(!select(vec4<bool>(false, arg_1.x, false, arg_1.x), vec4<bool>(arg_1.x, true, false, arg_1.x), false)), select(true, true, !any(arg_1))), arg_0.x);
    let var_2 = Struct_2(max(1i, countOneBits(_wgslsmith_div_i32(31800i, -25091i))), firstTrailingBit(~(~vec4<u32>(30117u, 47613u, 2389u, arg_0.x))), abs(min(abs(vec4<i32>(1i, 1i, 1i, 1i)), -min(vec4<i32>(15747i, 12556i, -2147483647i, 1i), vec4<i32>(2147483647i, 55666i, 0i, -2147483647i)))));
    var var_3 = var_2;
    var var_4 = Struct_1(vec4<u32>(u_input.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), ~vec2<u32>(arg_0.x, 28136u)), 41056u, 54055u >> (~(~var_2.b.x) % 32u)), ~_wgslsmith_dot_vec2_u32((vec2<u32>(4294967295u, u_input.a) << (arg_0.yy % vec2<u32>(32u))) ^ var_2.b.xz, ~var_1.a.xx), select(!select(select(arg_1, var_1.c, var_1.c), select(arg_1, vec2<bool>(true, arg_1.x), var_1.d.zy), arg_1.x), select(select(select(vec2<bool>(true, true), var_1.d.zy, false), !var_1.d.yz, !var_1.d.yw), vec2<bool>(true, true & arg_1.x), arg_1.x), !select(select(vec2<bool>(false, true), arg_1, var_1.c.x), !var_1.d.wy, !var_1.c.x)), var_1.d, arg_0.x);
    return ~(-_wgslsmith_mult_i32(-var_2.a, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -33082i), var_2.c.xz)) | var_2.a);
}

fn func_2() -> bool {
    let var_0 = firstTrailingBit(firstLeadingBit(_wgslsmith_add_u32(abs(~47925u), abs(u_input.a))));
    var var_1 = Struct_2(1i, ~_wgslsmith_sub_vec4_u32(countOneBits(~vec4<u32>(var_0, 1u, 81217u, u_input.a)), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(94999u, 0u, 44217u, u_input.a), vec4<u32>(4294967295u, u_input.a, 4294967295u, 4294967295u)))), _wgslsmith_sub_vec4_i32(~_wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(-1i, -19644i, 2147483647i, -25052i)), vec4<i32>(1i, 1i, 1i, 1i)), abs(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 67i, -1i), vec3<i32>(0i, -5271i, 26608i)), func_3(vec4<u32>(var_0, 66446u, 4294967295u, var_0), vec2<bool>(false, false), vec4<f32>(209f, 904f, -903f, 159f)), ~2147483647i, ~2147483647i))));
    var var_2 = Struct_1(abs(vec4<u32>(1u, abs(0u), ~13874u, u_input.a)), 26393u, vec2<bool>(!(!(1u != u_input.a)), true), vec4<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true))), true | any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false)), 0i > var_1.a, true), u_input.a << (var_1.b.x % 32u));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1051f + 439f) * _wgslsmith_f_op_f32(1f + -966f)), 276f));
    var_3 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.x))))), var_3.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1044f)))));
    return all(select(!(!(!vec3<bool>(var_2.d.x, true, var_2.d.x))), var_2.d.wwx, var_2.d.xwx));
}

fn func_1() -> f32 {
    var var_0 = !vec4<bool>(!(!all(vec4<bool>(true, false, false, false))), func_2(), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(29149i, -16065i)), ~vec2<i32>(2147483647i, -2147483647i)) == -abs(31865i), true);
    let var_1 = Struct_2(1i, firstTrailingBit(select(_wgslsmith_add_vec4_u32(vec4<u32>(20441u, u_input.a, 1u, 28720u), ~vec4<u32>(46630u, u_input.a, u_input.a, 1u)), reverseBits(firstLeadingBit(vec4<u32>(12983u, 21547u, u_input.a, u_input.a))), vec4<bool>(all(vec4<bool>(true, var_0.x, true, false)), all(vec2<bool>(false, true)), false, !var_0.x))), select(~vec4<i32>(~(-1i), -13557i, firstTrailingBit(-1i), -30133i), reverseBits(-countOneBits(vec4<i32>(-27674i, -25200i, -1i, 41667i))), !select(!vec4<bool>(var_0.x, var_0.x, var_0.x, false), !vec4<bool>(var_0.x, false, false, false), select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(false, true, false, false)))));
    let var_2 = any(vec2<bool>(all(select(vec4<bool>(var_0.x, true, false, false), vec4<bool>(false, var_0.x, false, var_0.x), -1i >= var_1.c.x)), false || var_0.x));
    let var_3 = -1234f;
    var_0 = vec4<bool>(var_2, any(vec3<bool>(var_0.x, true, var_2)), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3, 330f))) + 622f) != var_3);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: vec3<bool>, arg_3: u32) -> bool {
    var var_0 = vec2<u32>(countOneBits(~(25563u >> (0u % 32u))), arg_3);
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(!all(vec2<bool>(true, true)), func_4(24225i, _wgslsmith_f_op_f32(430f + _wgslsmith_f_op_f32(func_1())), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), _wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.a, 0u, 40959u), vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(u_input.a, u_input.a, 7018u))) | all(vec2<bool>(true, true)), true);
    var var_1 = Struct_2(func_3(firstLeadingBit(vec4<u32>(~u_input.a, firstLeadingBit(7630u), 885u, u_input.a)), var_0.xx, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1083f))), _wgslsmith_f_op_f32(-1524f * _wgslsmith_f_op_f32(trunc(163f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(493f)), _wgslsmith_f_op_f32(f32(-1f) * -337f))), _wgslsmith_f_op_f32(func_1()))), vec4<u32>(u_input.a | 7505u, 243u, 4294967295u << ((u_input.a >> (35807u % 32u)) % 32u), 4294967295u) << (vec4<u32>(u_input.a, 4294967295u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(8129u, 4294967295u, 37339u, 0u), vec4<u32>(u_input.a, u_input.a, 11941u, u_input.a)), _wgslsmith_sub_u32(u_input.a, 30774u)), ~_wgslsmith_clamp_u32(u_input.a, 1u, 30627u)) % vec4<u32>(32u)), vec4<i32>(~1i, -43673i, 1i, select(~(~(-11438i)), 0i, var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec2<u32>(var_1.b.x, 21630u)), var_1.b.x, -9911i, vec2<u32>(var_1.b.x, ~(u_input.a << (u_input.a % 32u)) >> (_wgslsmith_dot_vec3_u32(~var_1.b.xxw, ~var_1.b.wxy) % 32u)));
}

