struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<bool>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: i32,
}

struct Struct_5 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: bool, arg_3: u32) -> vec4<u32> {
    return u_input.a;
}

fn func_3() -> bool {
    var var_0 = Struct_5(firstTrailingBit(vec3<i32>(_wgslsmith_sub_i32(~25443i, _wgslsmith_dot_vec4_i32(vec4<i32>(13485i, 2147483647i, 28726i, 2147483647i), vec4<i32>(-1i, -1i, -26382i, -1i))), _wgslsmith_div_i32(29961i, firstTrailingBit(-22568i)), ~(-2147483647i))));
    let var_1 = true;
    var var_2 = vec3<u32>(~(~(~u_input.a.x >> (u_input.a.x % 32u))), 4294967295u, firstTrailingBit(4294967295u));
    var var_3 = vec2<bool>(!(!all(vec4<bool>(var_1, false, false, var_1))), all(!vec4<bool>(!var_1, any(vec3<bool>(true, var_1, true)), false, var_2.x == var_2.x)));
    var_0 = Struct_5(~firstLeadingBit(select(firstLeadingBit(vec3<i32>(1i, 18533i, 2147483647i)), var_0.a, true)));
    return select(true, !any(select(vec3<bool>(var_1, true, false), vec3<bool>(true, true, true), false)), false);
}

fn func_2(arg_0: Struct_4, arg_1: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f));
    let var_1 = all(vec3<bool>(true, true, func_3()));
    var var_2 = select(!(!(!select(vec2<bool>(var_1, false), vec2<bool>(true, var_1), vec2<bool>(var_1, false)))), !vec2<bool>(arg_0.a > _wgslsmith_clamp_i32(arg_1, -2147483647i, 10829i), any(vec3<bool>(var_1, var_1, var_1))), vec2<bool>(true, var_0.x > 1f));
    var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, 1000f, var_0.x))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(438f, var_0.x, var_0.x) + vec3<f32>(1167f, var_0.x, -140f))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, 287f, var_0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(820f, var_0.x, var_0.x))))))));
    var var_3 = _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, 1007f, -534f)))), vec2<bool>(var_1, !var_1), min(1i, arg_1) == abs(arg_0.c), 1788u).yzx, vec3<u32>(arg_0.b, countOneBits(0u), ~_wgslsmith_mult_u32(u_input.b, 40947u)), ~u_input.a.yzw), u_input.a.xxy);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1431f, var_0.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) - _wgslsmith_f_op_f32(select(var_0.x, var_0.x, false))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~2742u & u_input.b);
    var var_1 = ~(~(~firstTrailingBit(-1i))) ^ (i32(-1i) * -26639i);
    let var_2 = Struct_2(true, Struct_1(func_1(vec3<f32>(_wgslsmith_f_op_f32(354f + -157f), 1031f, -909f), select(vec2<bool>(true, true), vec2<bool>(false, true), 0u > u_input.a.x), true, u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(Struct_4(-46855i, 8020u, 1i), 8755i))))), vec4<bool>(all(vec4<bool>(true, false, false, true)), any(vec2<bool>(false, true)), false, select(true, any(vec2<bool>(false, true)), true))), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.b), vec2<u32>(1u, 1u)), select(~vec2<u32>(u_input.b, 34072u), ~u_input.a.yw, select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))), 95731u), _wgslsmith_dot_vec2_u32(u_input.a.zz, u_input.a.wz));
    let var_3 = 62387u;
    let var_4 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-332f, -233f), 429f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.b.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.b))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.b.b, 1459f, var_2.b.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.b) + _wgslsmith_f_op_f32(-var_2.b.b)), -1324f, _wgslsmith_div_f32(-1000f, var_2.b.b))), var_2.b, select(vec2<bool>(true, false && !var_2.b.c.x), var_2.b.c.wy, !all(vec2<bool>(true, true))), var_2.b.c.x, _wgslsmith_add_vec2_i32(-_wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(3239i, 46244i)), vec2<i32>(-1i, -20203i)), firstTrailingBit(-vec2<i32>(1i, 1i))));
    var_0 = ~(~(var_3 << (1u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(22761i, ~(var_4.e.x & _wgslsmith_sub_i32(var_4.e.x, var_4.e.x))));
}

