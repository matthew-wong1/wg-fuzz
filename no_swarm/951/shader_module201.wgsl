struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct Struct_5 {
    a: bool,
    b: vec3<f32>,
    c: Struct_1,
    d: bool,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> vec4<i32> {
    var var_0 = Struct_5(arg_0.d, vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.c.x), -2389f, 296f), Struct_1(_wgslsmith_mult_u32(82000u, u_input.a), -_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(arg_0.a.b, arg_0.c.b), min(arg_0.c.b, arg_0.c.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-158f, 803f, -421f, arg_0.a.c.x) * arg_0.c.c) + vec4<f32>(arg_0.a.c.x, arg_0.a.c.x, -151f, -419f)) + _wgslsmith_f_op_vec4_f32(floor(arg_0.c.c)))), true, select(!(!(!vec4<bool>(true, true, true, arg_0.d))), !select(select(vec4<bool>(true, arg_0.d, arg_0.d, arg_0.d), vec4<bool>(false, arg_0.d, arg_0.d, false), vec4<bool>(arg_0.d, false, arg_0.d, arg_0.d)), select(vec4<bool>(arg_0.d, arg_0.d, arg_0.d, arg_0.d), vec4<bool>(arg_0.d, false, true, arg_0.d), true), vec4<bool>(false, true, false, arg_0.d)), !(!vec4<bool>(true, arg_0.d, false, arg_0.d))));
    var var_1 = var_0.b.x;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.c.x) * arg_0.c.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.c.x) + _wgslsmith_f_op_f32(var_0.b.x + 1000f)))), 134f, -756f, arg_0.a.c.x);
    let var_3 = true;
    var_1 = var_0.c.c.x;
    return -(~arg_0.a.b);
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = Struct_5(false, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-800f, -1000f, -1000f), _wgslsmith_div_vec3_f32(vec3<f32>(3067f, -1041f, -1302f), vec3<f32>(-486f, -1171f, 1000f))))))), Struct_1(1u, -(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -31353i, -10007i, -1i), vec4<i32>(-17207i, -28861i, 2147483647i, 12882i)) ^ func_3(global0[_wgslsmith_index_u32(0u, 1u)])), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(669f, 375f, 255f, 310f) - vec4<f32>(1915f, 1683f, 1506f, -1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(660f, -853f, -635f, 1000f) - vec4<f32>(-765f, -1506f, 346f, 917f)) - vec4<f32>(-191f, -1179f, 454f, 789f))))), !(~max(arg_0, 1u) > arg_0), vec4<bool>(true & any(vec3<bool>(true, false, true)), select(arg_0, _wgslsmith_clamp_u32(1u, 0u, 42582u), true) <= _wgslsmith_sub_u32(~79823u, 1u), false, !(true != all(vec3<bool>(false, true, false)))));
    var var_1 = ~func_3(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(55306u, ~19304u), 1u)]).xw;
    var var_2 = select(vec3<bool>((var_0.c.b.x << (~4294967295u % 32u)) != _wgslsmith_mult_i32(func_3(global0[_wgslsmith_index_u32(u_input.a, 1u)]).x, ~var_0.c.b.x), var_0.e.x, !var_0.e.x), vec3<bool>(all(var_0.e), true, any(select(select(var_0.e, var_0.e, var_0.a), !vec4<bool>(true, true, var_0.a, var_0.d), var_0.e))), var_0.e.yzx);
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0, 40236u), 1u)];
    var_0 = Struct_5(!any(vec2<bool>(true, all(vec2<bool>(var_0.a, false)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -156f), 1f), 2125f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_3.a.c.x)) - -1000f)))), var_0.c, !((true && var_2.x) && var_0.e.x), select(select(vec4<bool>(true, !var_2.x, var_0.a, var_2.x), vec4<bool>(var_0.a, true, any(var_0.e.zwy), true), select(var_0.e, var_0.e, select(vec4<bool>(true, var_0.d, var_3.d, var_2.x), vec4<bool>(false, var_3.d, true, var_0.e.x), var_0.e.x))), vec4<bool>(false, any(var_0.e.wwz), !(var_1.x == 1i), any(var_0.e.yzy) && var_3.d), vec4<bool>(all(var_0.e.wyx), true, var_2.x, !all(vec3<bool>(var_0.a, var_3.d, false)))));
    return arg_0;
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> bool {
    global0 = array<Struct_2, 1>();
    var var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, countOneBits(_wgslsmith_clamp_u32(u_input.a, arg_0, u_input.a)), firstTrailingBit(u_input.a >> (arg_0 % 32u)), arg_0), vec4<u32>(16980u, _wgslsmith_clamp_u32(13351u, func_2(0u), 0u), reverseBits(92226u), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, 1u), vec2<u32>(10925u, 1u))))), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(abs(u_input.a), _wgslsmith_add_u32(~arg_0, ~u_input.a), ~(~16949u)), 1u));
    var var_1 = select(vec2<bool>(false, any(vec3<bool>(!arg_1.x, any(vec3<bool>(arg_1.x, arg_1.x, true)), arg_1.x))), arg_1, false);
    var_1 = select(arg_1, select(arg_1, !vec2<bool>(all(vec2<bool>(arg_1.x, false)), all(vec4<bool>(false, var_1.x, false, arg_1.x))), !select(vec2<bool>(arg_1.x, var_1.x), !vec2<bool>(var_1.x, true), any(vec3<bool>(false, false, arg_1.x)))), !vec2<bool>(arg_1.x, true));
    var_0 = reverseBits(reverseBits(vec2<u32>(func_2(arg_0), arg_0)));
    return all(!vec4<bool>(all(!vec2<bool>(true, arg_1.x)), false, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(!any(vec2<bool>(true, true)), func_1(26440u, vec2<bool>(true, true)), true, true), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), vec4<bool>(false, all(vec4<bool>(false, true, false, true)), u_input.a <= u_input.a, true), false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), false), func_1(u_input.a, select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))))), !(!vec4<bool>(true, any(vec2<bool>(false, false)), true, select(false, true, false))));
    var_0 = vec4<bool>((_wgslsmith_clamp_i32(abs(15636i), reverseBits(2147483647i), 0i << (u_input.a % 32u)) >= abs(firstLeadingBit(-21867i))) != !(firstTrailingBit(0i) <= _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 15147i), vec2<i32>(-12245i, 1i))), false, !func_1(_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(10837u, u_input.a), vec2<bool>(false, var_0.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(18438u, u_input.a), vec2<u32>(13319u, 4294967295u))), !vec2<bool>(var_0.x, true)), u_input.a >= min(_wgslsmith_mult_u32(u_input.a, ~1u), abs(1u)));
    let var_1 = Struct_5(!any(!vec4<bool>(var_0.x, var_0.x, true, true)), vec3<f32>(_wgslsmith_f_op_f32(-229f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(113f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1652f * -1281f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -243f))), all(!var_0.wxy))), 371f), Struct_1(1u, -vec4<i32>(0i, ~(-56919i), i32(-1i) * -2147483647i, select(0i, -1i, false)), vec4<f32>(_wgslsmith_f_op_f32(-703f * _wgslsmith_f_op_f32(f32(-1f) * -830f)), _wgslsmith_f_op_f32(f32(-1f) * -513f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(785f - 170f) + -689f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-508f - 1402f), _wgslsmith_f_op_f32(f32(-1f) * -738f)))), var_0.x, select(select(vec4<bool>(all(var_0.yx), var_0.x, true, true), vec4<bool>(!var_0.x, !var_0.x, var_0.x, true), select(!vec4<bool>(var_0.x, var_0.x, false, false), select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x)), select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, false, false, true), var_0.x))), select(select(!vec4<bool>(false, true, var_0.x, var_0.x), !vec4<bool>(var_0.x, var_0.x, false, false), all(vec4<bool>(true, var_0.x, false, true))), vec4<bool>(var_0.x, var_0.x, !var_0.x, true), var_0.x), select(!vec4<bool>(var_0.x, false, false, false), vec4<bool>(false, any(vec3<bool>(false, var_0.x, var_0.x)), var_0.x & true, false), vec4<bool>(!var_0.x, any(var_0.yz), var_0.x, any(var_0.yzx)))));
    var var_2 = -((max(1i, -32058i) ^ firstTrailingBit(~1i)) >> (_wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_sub_u32(u_input.a, u_input.a)), ~1u) % 32u));
    var_0 = vec4<bool>(false, _wgslsmith_f_op_f32(-var_1.c.c.x) <= 335f, any(var_0.xzy), var_0.x);
    global0 = array<Struct_2, 1>();
    var_0 = select(vec4<bool>(true, any(select(var_1.e.ww, vec2<bool>(false, var_1.a), select(var_1.e.wx, var_1.e.zy, var_1.a))), ~38759u >= var_1.c.a, any(select(!vec3<bool>(var_0.x, true, true), !var_0.zxw, var_1.a))), vec4<bool>(select(!var_0.x, false, var_0.x), var_1.d, var_1.d, select(true, select(var_1.a, var_0.x, false) | var_0.x, !all(vec4<bool>(var_0.x, var_1.d, var_1.d, var_0.x)))), !var_1.e);
    var_0 = vec4<bool>(false, all(vec3<bool>(true, var_0.x, var_1.a)), all(select(!var_1.e.xw, vec2<bool>(any(var_0.wy), var_0.x), var_1.a)), true);
    var var_3 = Struct_5(any(vec3<bool>(var_0.x, true, var_0.x)), vec3<f32>(var_1.c.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-210f, -419f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.c.x))), _wgslsmith_f_op_f32(-var_1.b.x)), Struct_1(firstTrailingBit(var_1.c.a), _wgslsmith_div_vec4_i32(var_1.c.b, func_3(global0[_wgslsmith_index_u32(4294967295u, 1u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.c.x, -198f, var_1.b.x, -1455f))))), var_0.x, select(vec4<bool>(var_1.e.x, false, all(select(vec3<bool>(var_1.d, true, true), var_0.yzx, var_0.x)), any(var_0.xy)), select(select(!vec4<bool>(false, var_1.d, var_1.d, false), vec4<bool>(false, true, false, true), select(vec4<bool>(var_0.x, var_1.d, var_1.e.x, var_1.d), var_1.e, vec4<bool>(var_0.x, var_1.d, var_1.e.x, true))), vec4<bool>(func_1(var_1.c.a, var_0.xz), true, !var_1.d, false), select(!var_1.e, select(vec4<bool>(var_1.a, var_0.x, false, true), var_1.e, false), true)), !vec4<bool>(true, var_0.x, var_1.c.b.x < var_1.c.b.x, var_1.d && false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1738f, var_1.b.x, -1000f, var_1.b.x), vec4<f32>(-490f, _wgslsmith_f_op_f32(select(var_1.c.c.x, var_1.b.x, false)), -523f, _wgslsmith_f_op_f32(-var_3.c.c.x)), var_1.e.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-719f, var_1.b.x, var_1.b.x, 904f) - var_3.c.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3.c.c))), vec4<bool>(true, var_1.c.b.x <= reverseBits(1i), true, select(all(vec2<bool>(var_3.e.x, false)), func_1(u_input.a, var_3.e.ww), var_1.e.x)))));
}

