struct Struct_1 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    var var_0 = vec2<bool>(true, all(vec2<bool>(all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false))), true)));
    let var_1 = _wgslsmith_f_op_f32(min(1124f, _wgslsmith_div_f32(1556f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1000f))))))));
    var var_2 = _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i), ~(-vec3<i32>(-54972i, -9991i, 31558i)) << (countOneBits(vec3<u32>(47938u, 1653u, 12819u) | vec3<u32>(u_input.a, arg_0.x, arg_0.x)) % vec3<u32>(32u))) << (firstLeadingBit(~_wgslsmith_mult_vec3_u32(arg_0, arg_0)) % vec3<u32>(32u));
    var var_3 = Struct_1(vec2<i32>(countOneBits(_wgslsmith_div_i32(2147483647i, min(var_2.x, var_2.x))), i32(-1i) * -2147483647i), !vec2<bool>(any(!vec4<bool>(var_0.x, var_0.x, var_0.x, true)), _wgslsmith_f_op_f32(round(-112f)) < _wgslsmith_f_op_f32(-722f + 2143f)), abs(vec4<i32>(-48115i, 2147483647i, -_wgslsmith_sub_i32(var_2.x, 1i), max(_wgslsmith_sub_i32(var_2.x, -45354i), i32(-1i) * -33042i))), select(vec3<bool>(any(select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, false), true)), false, true), !(!(!vec3<bool>(var_0.x, var_0.x, true))), true));
    var_2 = var_3.c.wyw;
    return 86323u;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec3<i32>) -> u32 {
    var var_0 = abs(~arg_0) >> (~func_3(~(vec3<u32>(4294967295u, 1u, u_input.a) << (vec3<u32>(24114u, arg_0, u_input.a) % vec3<u32>(32u)))) % 32u);
    var_0 = 1u;
    let var_1 = vec3<bool>(all(arg_1.b), false, true);
    var var_2 = arg_1;
    let var_3 = _wgslsmith_div_u32(~_wgslsmith_sub_u32(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(7427u, 72905u))) | ~(u_input.a ^ _wgslsmith_mult_u32(u_input.a, 19141u)), ~(~_wgslsmith_add_u32(u_input.a, 1u)));
    return reverseBits(firstTrailingBit(~arg_0));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = ~vec2<u32>((4294967295u << (u_input.a % 32u)) & func_2(u_input.a, arg_1, arg_1.c.wxy), 0u) << ((vec2<u32>(4294967295u, _wgslsmith_add_u32(_wgslsmith_sub_u32(17913u, u_input.a), u_input.a)) ^ vec2<u32>(u_input.a, _wgslsmith_div_u32(u_input.a << (5602u % 32u), 0u))) % vec2<u32>(32u));
    let var_1 = Struct_1(arg_1.a, select(select(arg_1.d.yy, vec2<bool>(false, arg_1.b.x), !select(arg_1.b, vec2<bool>(true, true), false)), select(!select(arg_1.d.zz, vec2<bool>(arg_1.d.x, true), arg_1.b), arg_1.d.zz, true), vec2<bool>(true, select(arg_1.d.x, true, !arg_1.b.x))), -((arg_1.c & vec4<i32>(-10738i, arg_1.a.x, arg_0, arg_1.c.x)) << (~vec4<u32>(4294967295u, var_0.x, 16129u, u_input.a) % vec4<u32>(32u))) | vec4<i32>(_wgslsmith_div_i32(arg_1.c.x | arg_0, 2147483647i), _wgslsmith_dot_vec2_i32(-vec2<i32>(arg_1.a.x, -22550i), _wgslsmith_mult_vec2_i32(arg_1.c.yy, vec2<i32>(1i, arg_0))), arg_0 | firstLeadingBit(-7499i), 0i), vec3<bool>(arg_1.d.x, !arg_1.b.x, arg_1.d.x));
    let var_2 = var_1;
    var var_3 = !var_2.d.x;
    var var_4 = select(reverseBits(~(~vec3<u32>(var_0.x, 78262u, 1u))) | (~reverseBits(vec3<u32>(36250u, var_0.x, 4294967295u)) >> (~(~vec3<u32>(24849u, 14205u, u_input.a)) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(min(_wgslsmith_add_vec3_u32(~vec3<u32>(var_0.x, u_input.a, var_0.x), _wgslsmith_mult_vec3_u32(vec3<u32>(117702u, var_0.x, var_0.x), vec3<u32>(52244u, var_0.x, 4294967295u))), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.a), vec3<u32>(u_input.a, 0u, u_input.a)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, 48792u), vec3<u32>(var_0.x, var_0.x, 1u)) % vec3<u32>(32u))), ~select(~vec3<u32>(u_input.a, 25368u, u_input.a), firstLeadingBit(vec3<u32>(u_input.a, u_input.a, var_0.x)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, var_1.b.x), arg_1.d.x))), !vec3<bool>(var_1.d.x, true, true));
    return vec2<bool>(all(vec4<bool>(var_2.d.x, var_1.d.x, true, !any(arg_1.b))), _wgslsmith_div_u32(~func_2(19383u, var_2, var_1.c.yyy), 27399u) <= u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(true || any(vec3<bool>(true, true, true))));
    var_0 = select(true, false, (select(u_input.a <= u_input.a, true, true) && false) & ((~(-1i) != _wgslsmith_dot_vec2_i32(vec2<i32>(-27967i, 2147483647i), vec2<i32>(0i, -2147483647i))) || any(vec3<bool>(true, true, true))));
    var var_1 = abs(~(~(~vec3<u32>(1u, 1u, 0u))));
    var_0 = select(true, true, select(any(func_1(49053i << (u_input.a % 32u), Struct_1(vec2<i32>(64511i, 2147483647i), vec2<bool>(true, false), vec4<i32>(7374i, -14651i, 1i, -1i), vec3<bool>(false, false, true)))), select(true, ~31429u <= u_input.a, any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false))), true));
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec2<i32>(1i, _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, 35927i, -1i, 0i), vec4<i32>(26120i, 6681i, 0i, -1i)))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-478f, 194f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1813f))), -303f, _wgslsmith_f_op_f32(floor(764f))));
}

