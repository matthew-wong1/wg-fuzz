struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(-184f, 1273f, -674f), 4294967295u, Struct_1(vec3<u32>(0u, 0u, 4294967295u), true, vec2<bool>(true, true)), Struct_1(vec3<u32>(4294967295u, 0u, 45326u), true, vec2<bool>(true, false)), -1i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<i32>) -> u32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(global0.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.zyy) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.xxw + vec3<f32>(711f, global0.a.x, global0.a.x)))))), _wgslsmith_dot_vec2_u32(reverseBits(u_input.b.ww) << (firstTrailingBit(u_input.b.yw & global0.d.a.yy) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(~global0.d.a.yz >> (vec2<u32>(global0.c.a.x, global0.b) % vec2<u32>(32u)), vec2<u32>(4294967295u, abs(global0.c.a.x)))), Struct_1(u_input.b.xyz | abs(~global0.d.a), all(!vec4<bool>(global0.c.c.x, global0.c.b, global0.d.b, global0.c.c.x)), select(vec2<bool>(select(global0.d.b, false, false), true), vec2<bool>(false, global0.d.b), global0.d.c)), global0.d, _wgslsmith_mult_i32(i32(-1i) * -(-20791i << (global0.c.a.x % 32u)), -18926i));
    let var_1 = Struct_1(~(~(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.c.a.x, 4294967295u, var_0.c.a.x), vec3<u32>(1493u, 37118u, global0.d.a.x)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 63917u, global0.c.a.x), vec3<u32>(32369u, u_input.b.x, u_input.b.x)) % vec3<u32>(32u)))), true, vec2<bool>(true, _wgslsmith_f_op_f32(select(1067f, _wgslsmith_f_op_f32(f32(-1f) * -1236f), all(global0.d.c))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.a.x, -1521f)), _wgslsmith_f_op_f32(var_0.a.x - 163f))));
    var var_2 = global0.a.zy;
    var_0 = Struct_2(var_0.a, var_1.a.x, var_0.d, Struct_1(~var_1.a, arg_0.x < _wgslsmith_div_f32(-963f, _wgslsmith_f_op_f32(max(658f, var_2.x))), !(!vec2<bool>(true, var_0.d.b))), select(_wgslsmith_clamp_i32(-25601i, u_input.a, -1i) | arg_1.x, arg_1.x, !global0.c.c.x) << (var_0.d.a.x % 32u));
    var_2 = _wgslsmith_f_op_vec2_f32(round(arg_0.wy));
    return min(~firstTrailingBit(u_input.b.x), _wgslsmith_mod_u32(var_1.a.x, 1u));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = max(firstTrailingBit(vec2<u32>(arg_1.b, global0.d.a.x)) | countOneBits(~u_input.b.yx), vec2<u32>(~func_3(vec4<f32>(-1889f, 1452f, arg_2.x, arg_1.a.x), vec3<i32>(-1i, u_input.a, arg_1.e)), 1u)) & _wgslsmith_div_vec2_u32(~vec2<u32>(~arg_1.d.a.x, func_3(vec4<f32>(115f, global0.a.x, -1821f, 3134f), vec3<i32>(-17713i, 6041i, arg_1.e))), firstTrailingBit((global0.c.a.zz & vec2<u32>(9334u, arg_1.b)) ^ u_input.b.yx));
    let var_1 = Struct_1(~((global0.c.a << (vec3<u32>(0u, global0.b, var_0.x) % vec3<u32>(32u))) >> (arg_1.d.a % vec3<u32>(32u))), any(vec3<bool>(true, !all(vec3<bool>(false, global0.d.b, false)), arg_1.d.c.x)), global0.d.c);
    var var_2 = _wgslsmith_sub_i32(countOneBits(_wgslsmith_div_i32(_wgslsmith_sub_i32(1i, global0.e), -40761i)), ~(_wgslsmith_clamp_i32(-2147483647i, u_input.a, global0.e) & u_input.a)) > ~(i32(-1i) * -10079i);
    var var_3 = max(-vec3<i32>(_wgslsmith_mult_i32(countOneBits(u_input.a), arg_1.e), abs(u_input.a), 8831i), _wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(~16851i, ~(-48498i), reverseBits(global0.e))), _wgslsmith_sub_vec3_i32(-vec3<i32>(-10823i, global0.e, u_input.a) ^ ~vec3<i32>(u_input.a, u_input.a, arg_1.e), ~countOneBits(vec3<i32>(-88905i, 22876i, -2147483647i)))));
    let var_4 = _wgslsmith_add_vec4_u32(u_input.b, ~reverseBits(abs(vec4<u32>(0u, 115365u, 30495u, 4294967295u))));
    return Struct_2(_wgslsmith_f_op_vec3_f32(trunc(arg_1.a)), 55216u, arg_1.d, Struct_1(_wgslsmith_mod_vec3_u32(var_1.a, ~vec3<u32>(global0.c.a.x, u_input.b.x, var_4.x)), var_1.c.x, vec2<bool>(global0.d.c.x, true)), _wgslsmith_sub_i32(-4764i, ~select(34292i, ~(-1i), arg_1.c.b)));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(837f, arg_0.a.x, arg_2.b)));
    var var_1 = ~(~vec4<u32>(~global0.b, _wgslsmith_mult_u32(firstLeadingBit(27997u), 4694u), arg_2.a.x, 0u));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x))), global0.a.x);
    var_1 = ~firstLeadingBit(u_input.b);
    let var_2 = func_2(global0.a.x, arg_0, vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.a.x - -146f), 1000f)))), -121f, -1867f));
    return vec2<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.a.x))) == _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.a.x - arg_0.a.x))))), select(~func_3(vec4<f32>(2357f, var_2.a.x, var_2.a.x, global0.a.x), arg_1.yzx) >= _wgslsmith_mod_u32(15598u, select(arg_0.b, 38828u, var_2.c.b)), global0.c.b, arg_2.b));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = vec2<i32>(_wgslsmith_mult_i32(u_input.a, -37726i), ~(u_input.a & (global0.e ^ 5474i)));
    var var_1 = select(vec4<i32>(reverseBits(-(i32(-1i) * -674i)), -59372i, i32(-1i) * -var_0.x, -_wgslsmith_mod_i32(abs(2147483647i), -3968i)), firstTrailingBit(~(-vec4<i32>(u_input.a, -1i, var_0.x, u_input.a))), true);
    let var_2 = 1549f;
    global0 = func_2(-1423f, Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1010f, 1000f, var_2) * global0.a) * _wgslsmith_f_op_vec3_f32(trunc(global0.a)))), 1u, global0.d, Struct_1(_wgslsmith_mult_vec3_u32(global0.d.a ^ u_input.b.zyw, min(vec3<u32>(global0.b, 32643u, global0.c.a.x), global0.d.a)), arg_0.x, !(!vec2<bool>(true, global0.c.c.x))), -2147483647i), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(507f, global0.a.x, global0.a.x, 698f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_2, -286f, -1601f, arg_1.x), vec4<f32>(-355f, arg_1.x, global0.a.x, arg_1.x))) * vec4<f32>(_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(select(global0.a.x, arg_1.x, false)), _wgslsmith_f_op_f32(-var_2), -1235f)))));
    var_1 = select(((vec4<i32>(-2147483647i, u_input.a, 2147483647i, global0.e) | abs(vec4<i32>(var_1.x, -1678i, -12455i, 0i))) & max(-vec4<i32>(1i, u_input.a, -12500i, var_0.x), vec4<i32>(u_input.a, u_input.a, 38449i, var_0.x))) & -(vec4<i32>(-1i) * -vec4<i32>(global0.e, 1i, u_input.a, -34817i)), vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_1.x) >> (vec2<u32>(global0.d.a.x, global0.d.a.x) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(var_0, vec2<i32>(-2147483647i, 2147483647i))), firstLeadingBit(u_input.a), var_0.x, global0.e), vec4<bool>(false == arg_0.x, arg_0.x, any(vec2<bool>(arg_0.x | true, true)), func_1(func_2(var_2, Struct_2(arg_1, u_input.b.x, global0.c, Struct_1(vec3<u32>(0u, 18009u, global0.c.a.x), true, vec2<bool>(false, false)), global0.e), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.x, var_2, global0.a.x, 457f)))), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 11318i, 2860i, global0.e), vec4<i32>(2147483647i, var_1.x, 10722i, 2147483647i)), abs(vec4<i32>(-14665i, global0.e, u_input.a, -22579i))), Struct_1(global0.c.a & vec3<u32>(u_input.b.x, global0.b, 0u), false | arg_0.x, !vec2<bool>(arg_0.x, true))).x));
    return global0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a;
    let var_1 = func_4(!(!select(global0.d.c, func_1(Struct_2(global0.a, u_input.b.x, Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, 26959u), global0.d.c.x, vec2<bool>(false, false)), global0.d, u_input.a), vec4<i32>(u_input.a, global0.e, u_input.a, 2147483647i), Struct_1(global0.c.a, false, global0.c.c)), global0.c.b | false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.a, vec3<f32>(_wgslsmith_f_op_f32(-487f - global0.a.x), 591f, _wgslsmith_f_op_f32(-global0.a.x))) - vec3<f32>(_wgslsmith_f_op_f32(exp2(func_2(-642f, Struct_2(vec3<f32>(147f, global0.a.x, -1000f), global0.d.a.x, Struct_1(vec3<u32>(u_input.b.x, 26675u, 42493u), false, global0.c.c), global0.c, 1i), vec4<f32>(511f, 2078f, -1067f, 984f)).a.x)), _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(max(global0.a.x, _wgslsmith_f_op_f32(abs(-1000f)))))));
    let var_2 = global0.c.c.x;
    var_0 = -global0.e;
    let var_3 = global0.d;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, global0.e, global0.a.zy);
}

