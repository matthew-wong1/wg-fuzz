struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_mod_u32(13819u, firstTrailingBit(abs(0u))) >= (abs(_wgslsmith_div_u32(11508u, abs(var_0.x))) & max(~(var_0.x | var_0.x), ~(~4294967295u)));
    let var_2 = ~reverseBits(select(var_0, ~var_0, var_1)) >> (vec3<u32>(66183u, 4294967295u, ~23499u) % vec3<u32>(32u));
    var var_3 = var_0.xx;
    var var_4 = Struct_3(vec4<i32>(abs(u_input.c.x << (_wgslsmith_mult_u32(1u, 1u) % 32u)), 23792i, ~_wgslsmith_add_i32(-1i, -5894i) & u_input.c.x, u_input.c.x), ~u_input.c, -29577i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -582f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), -213f)))), Struct_2(Struct_1(-firstLeadingBit(u_input.c), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 35656i, 4926i), u_input.c.wzy), ~u_input.c.zxy), vec4<bool>(true, any(vec4<bool>(true, true, var_1, true)), true, false), select(!vec3<bool>(false, var_1, var_1), !vec3<bool>(var_1, true, true), var_1))));
    return var_4.d.x;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1) -> u32 {
    var var_0 = vec2<u32>(~abs(arg_1), arg_1);
    let var_1 = 1f;
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1 * var_1), 313f, _wgslsmith_f_op_f32(-var_1)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-2167f, 900f, -217f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1)) + _wgslsmith_f_op_f32(257f * -274f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(var_1 + var_1)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1)))))), vec3<f32>(var_1, _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + -1000f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-var_1))))))));
    let var_3 = vec4<bool>(arg_2.c.x, (true | (1i >= _wgslsmith_mult_i32(u_input.c.x, arg_0.a.a.x))) & true, 1f == _wgslsmith_f_op_f32(-var_1), false);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.x + 1528f)))) * -1154f));
    return ~u_input.b.x;
}

fn func_1() -> Struct_2 {
    var var_0 = vec2<bool>(all(vec4<bool>(true, any(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, true, true)), func_2(Struct_2(Struct_1(vec4<i32>(8046i, 0i, u_input.c.x, 1i), vec3<i32>(-45390i, 0i, u_input.c.x), vec4<bool>(false, false, false, true), vec3<bool>(true, true, false))), u_input.a, Struct_1(vec4<i32>(u_input.c.x, -2147483647i, -78854i, u_input.c.x), vec3<i32>(-11588i, -40257i, -1i), vec4<bool>(true, false, false, true), vec3<bool>(true, false, false))) != u_input.b.x)), false);
    let var_1 = false;
    let var_2 = _wgslsmith_mult_i32(u_input.c.x, -6221i << (~(~u_input.a) % 32u));
    var var_3 = vec2<i32>(u_input.c.x, -(var_2 | -21440i) >> (select(u_input.a, ~(u_input.a & 4294967295u), true) % 32u));
    var var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(687f, 534f), _wgslsmith_f_op_f32(min(354f, 1258f)), var_1))))))));
    return Struct_2(Struct_1(-vec4<i32>(firstLeadingBit(u_input.c.x), ~0i, var_3.x, var_3.x), -select(-u_input.c.yxw, -u_input.c.ywx, var_1), select(select(select(vec4<bool>(var_0.x, true, true, false), vec4<bool>(var_0.x, false, false, false), vec4<bool>(true, var_0.x, false, var_1)), vec4<bool>(true, true, var_1, true), select(vec4<bool>(false, var_1, var_0.x, false), vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(var_1, var_1, true, var_0.x))), vec4<bool>(any(vec4<bool>(var_1, var_1, var_1, var_1)), var_0.x, true, all(vec4<bool>(var_1, false, true, true))), !vec4<bool>(var_0.x, var_0.x, true, var_0.x)), !select(select(vec3<bool>(var_0.x, var_1, var_1), vec3<bool>(true, true, var_1), vec3<bool>(var_0.x, var_0.x, false)), vec3<bool>(true, var_0.x, var_0.x), any(vec4<bool>(var_0.x, var_1, var_0.x, var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = func_1();
    var_0 = Struct_2(Struct_1(vec4<i32>(42887i, min(_wgslsmith_div_i32(3992i, 2147483647i), -34241i), _wgslsmith_clamp_i32(var_0.a.b.x, _wgslsmith_sub_i32(var_0.a.b.x, 8886i), i32(-1i) * -9017i), 41677i), countOneBits(var_1.a.a.xww ^ u_input.c.yyz), var_1.a.c, !var_0.a.c.xyx));
    var var_2 = _wgslsmith_sub_i32(max(-var_1.a.b.x, -1i), 2147483647i);
    var_2 = ~_wgslsmith_div_i32(2792i ^ _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.c.x, 2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(-24682i, 23379i, 1i, var_1.a.b.x), vec4<i32>(var_0.a.b.x, -53840i, var_1.a.a.x, u_input.c.x))), u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(u_input.c.yw & var_0.a.a.wz, max(var_1.a.b.zz, vec2<i32>(0i, -5252i))), var_1.a.b.zx) >> (((~u_input.b.yz | vec2<u32>(u_input.b.x, 77411u)) | _wgslsmith_clamp_vec2_u32(~vec2<u32>(98674u, 57071u), ~u_input.b.xy, vec2<u32>(1u, u_input.a))) % vec2<u32>(32u)), 591f, _wgslsmith_sub_vec2_u32(u_input.b.xy, _wgslsmith_mod_vec2_u32(~u_input.b.yz | max(u_input.b.zy, vec2<u32>(13250u, u_input.a)), _wgslsmith_mod_vec2_u32(u_input.b.xy, abs(vec2<u32>(0u, 0u))))), 866f);
}

