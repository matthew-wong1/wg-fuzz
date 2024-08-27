struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: Struct_2,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> i32 {
    let var_0 = u_input.c.x;
    var var_1 = ~countOneBits(-15086i);
    var_1 = _wgslsmith_add_i32(u_input.b, _wgslsmith_mod_i32(58507i, u_input.a));
    var var_2 = -u_input.e;
    let var_3 = Struct_4(Struct_1(abs(firstTrailingBit(u_input.d)) | abs(0u), ~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(5337i, u_input.a, u_input.e, 0i), vec4<i32>(3151i, -10566i, u_input.e, -25373i), vec4<i32>(-59552i, -1i, -5477i, 1218i)))), select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), any(vec4<bool>(true, any(vec3<bool>(true, false, false)), true, all(vec4<bool>(true, false, true, false))))));
    return 20089i;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = firstTrailingBit(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, func_3()), -_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1.b.x, u_input.a), vec2<i32>(arg_1.b.x, -1i))), -arg_1.b.xx << (~(~vec2<u32>(3558u, 14950u)) % vec2<u32>(32u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(235f)) + _wgslsmith_f_op_f32(round(293f))), _wgslsmith_f_op_f32(sign(397f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1000f + 414f), 1f) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-981f, 1977f)))))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-812f, -139f), _wgslsmith_div_vec2_f32(vec2<f32>(382f, 641f), vec2<f32>(-1000f, 1000f))))))));
    var var_2 = Struct_2(firstLeadingBit(vec2<u32>(u_input.c.x & arg_1.a, 1u)));
    var var_3 = vec2<u32>(~(~44998u), max(~(~(~1u)), 1u << (abs(0u) % 32u)));
    var_3 = u_input.c.zy;
    return ~reverseBits(~_wgslsmith_sub_vec3_u32(~u_input.c, ~vec3<u32>(arg_1.a, var_3.x, 4294967295u)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: i32) -> vec3<f32> {
    let var_0 = Struct_4(arg_1, select(vec3<bool>(true, any(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), any(select(vec2<bool>(false, true), vec2<bool>(false, true), true))), select(select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), vec3<bool>(true, false, false)), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false))), vec3<bool>(true, true, true)));
    var var_1 = ~_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.a, var_0.a.b.x), vec2<i32>(i32(-1i) * -7209i, 29227i)) >> (u_input.c.yx % vec2<u32>(32u));
    var var_2 = select(vec3<bool>(false, 4294967295u >= (arg_1.a << (1u % 32u)), false), vec3<bool>(true, all(!vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x)) != true, true), select(select(select(vec3<bool>(true, false, var_0.b.x), select(var_0.b, var_0.b, var_0.b.x), true), !select(vec3<bool>(var_0.b.x, false, false), vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), vec3<bool>(false, true, var_0.b.x)), !var_0.b.x), select(!(!vec3<bool>(var_0.b.x, var_0.b.x, true)), !select(var_0.b, var_0.b, var_0.b.x), (u_input.c.x <= 0u) & true), !(_wgslsmith_f_op_f32(floor(-324f)) >= _wgslsmith_div_f32(-109f, 400f))));
    var var_3 = func_2(select(var_2.zy, !(!(!var_2.xz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-518f, 880f, false))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1190f, -448f)))), Struct_1(arg_1.a, abs(vec4<i32>(i32(-1i) * -9838i, u_input.e | -24560i, 37318i, var_0.a.b.x)))).x;
    var var_4 = _wgslsmith_f_op_f32(ceil(-276f));
    return _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-2293f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-800f, 438f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -156f))), _wgslsmith_f_op_f32(sign(-1002f)))));
}

fn func_1() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_4(u_input.c << (~func_2(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), Struct_1(9542u, vec4<i32>(u_input.a, -8990i, u_input.a, -1i))) % vec3<u32>(32u)), Struct_1(u_input.c.x, vec4<i32>(-7359i, countOneBits(~u_input.b), ~(~u_input.e), u_input.b)), select(-8823i, ~(~(~1i)), ~1u < (u_input.d ^ min(67714u, 0u)))));
    var_0 = vec3<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -193f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) + var_0.x), 2183f)));
    let var_1 = Struct_1(u_input.d, _wgslsmith_mod_vec4_i32(~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.a, u_input.b), vec3<i32>(u_input.a, u_input.b, 36542i)), -u_input.e, u_input.e, 10775i ^ u_input.b), _wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(u_input.e, u_input.b, u_input.b, -23303i), vec4<i32>(u_input.e, 0i, u_input.e, 24786i), true), vec4<i32>(-1i, 0i, u_input.a, 2147483647i)), (vec4<i32>(-1i, -2147483647i, 0i, 37848i) ^ vec4<i32>(u_input.b, 8271i, 81975i, 2147483647i)) & vec4<i32>(-18930i, -20001i, -58643i, u_input.b), ~countOneBits(vec4<i32>(39091i, u_input.b, u_input.e, u_input.a)))));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1197f, var_0.x, var_0.x) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -406f, 1126f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1610f, var_0.x))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-346f, var_0.x, -1958f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1039f)))))));
    var var_2 = vec4<bool>(_wgslsmith_div_u32(abs(105603u), u_input.d) == ~(~(~21638u)), true, true, !all(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, false, false))));
    return abs(countOneBits(var_1.b.zwy) & -_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(var_1.b.x, -2147483647i, 2147483647i)), _wgslsmith_add_vec3_i32(var_1.b.zzx, var_1.b.zyx)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec3_i32(firstTrailingBit(countOneBits(_wgslsmith_div_vec3_i32(select(vec3<i32>(u_input.b, u_input.b, u_input.a), vec3<i32>(-39361i, u_input.a, u_input.b), vec3<bool>(false, true, true)), vec3<i32>(u_input.a, -32653i, u_input.e)))), ~func_1());
    let var_1 = _wgslsmith_mod_vec2_u32(~(~vec2<u32>(_wgslsmith_div_u32(u_input.d, u_input.c.x), u_input.d | 52112u)), u_input.c.yy);
    let var_2 = vec2<bool>(!all(vec3<bool>(true, true, true)), (countOneBits(_wgslsmith_mult_u32(u_input.c.x, 1u)) == ~(~u_input.c.x)) && true);
    var var_3 = ~(~(reverseBits(~vec4<u32>(0u, var_1.x, u_input.c.x, u_input.d)) & select(~vec4<u32>(3906u, var_1.x, var_1.x, var_1.x), select(vec4<u32>(37671u, 37404u, u_input.c.x, 4575u), vec4<u32>(var_1.x, 1u, 37046u, 4294967295u), true), all(vec4<bool>(true, var_2.x, false, var_2.x)))));
    let var_4 = Struct_4(Struct_1(select(~_wgslsmith_div_u32(var_1.x, 0u), 1u, select(true, false, true)), vec4<i32>(var_0.x, 22326i, var_0.x, 16156i)), select(!(!(!vec3<bool>(false, var_2.x, true))), !select(!vec3<bool>(var_2.x, var_2.x, false), !vec3<bool>(var_2.x, false, false), select(vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(var_2.x, false, var_2.x), var_2.x)), !select(!vec3<bool>(var_2.x, true, var_2.x), !vec3<bool>(false, true, var_2.x), select(vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(var_2.x, var_2.x, false), true))));
    var var_5 = 27107u;
    var var_6 = vec2<i32>(_wgslsmith_add_i32(func_1().x, func_1().x) | 0i, min(1i, u_input.a));
    let var_7 = var_4.a.b.yzx;
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(vec3<i32>(-1i) * -var_7), var_3.x);
}

