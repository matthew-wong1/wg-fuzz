struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    let var_0 = vec2<i32>(~u_input.a.x, 32431i);
    let var_1 = u_input.a.xw;
    var var_2 = Struct_1(vec2<u32>(_wgslsmith_mult_u32(~u_input.c.x, arg_0.x) & ~abs(arg_0.x), ~12988u), vec2<f32>(-1591f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1150f * -1294f) - -1122f))), select(select(vec3<bool>(all(vec2<bool>(true, false)), -1i > var_1.x, u_input.c.x <= u_input.b), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(false, true, false)), select(true, false, false) && all(vec2<bool>(true, true))), !vec3<bool>(any(vec3<bool>(true, false, true)), true, all(vec3<bool>(false, false, true))), false));
    let var_3 = Struct_1(vec2<u32>(60393u, abs(u_input.d)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1488f, var_2.b.x) * var_2.b)))) + vec2<f32>(var_2.b.x, var_2.b.x)), vec3<bool>(var_2.c.x, true, all(!var_2.c)));
    var_2 = var_3;
    return -920f;
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: vec3<bool>, arg_3: u32) -> f32 {
    let var_0 = arg_3;
    return _wgslsmith_f_op_f32(-arg_1);
}

fn func_2(arg_0: i32, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(249f, -1434f));
    var var_1 = _wgslsmith_clamp_vec2_i32(u_input.a.ww, vec2<i32>(_wgslsmith_sub_i32(-u_input.a.x, -1i), 2147483647i), u_input.a.zz);
    let var_2 = u_input.a.yy;
    let var_3 = abs(firstTrailingBit(1u));
    let var_4 = Struct_1(u_input.c, vec2<f32>(_wgslsmith_f_op_f32(func_4(u_input.a.yzy, _wgslsmith_f_op_f32(func_3(~vec4<u32>(var_3, 1u, u_input.c.x, 28073u))), vec3<bool>(true, true, true), var_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-2688f, var_0.x)))) * _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(func_3(vec4<u32>(u_input.c.x, u_input.b, 0u, 1u)))))), select(vec3<bool>(any(vec2<bool>(false, true)), any(vec4<bool>(true, true, true, true)), true), vec3<bool>(_wgslsmith_div_i32(arg_0, arg_1.x) <= firstLeadingBit(12028i), false | (1193f <= var_0.x), true), false));
    return var_4;
}

fn func_1() -> Struct_1 {
    let var_0 = countOneBits(u_input.d);
    var var_1 = func_2(u_input.a.x, abs(_wgslsmith_sub_vec2_i32(~(-u_input.a.zy), ~vec2<i32>(-17160i, 0i) & _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), u_input.a.ww))));
    var_1 = Struct_1(countOneBits(vec2<u32>(firstLeadingBit(u_input.b), ~38109u)), _wgslsmith_f_op_vec2_f32(-var_1.b), vec3<bool>(true, true, true));
    var_1 = func_2(_wgslsmith_mod_i32(_wgslsmith_div_i32(~(~(-1i)), 15025i), -1i), firstTrailingBit(-u_input.a.yx));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.b.x, -703f), _wgslsmith_f_op_f32(step(1000f, 268f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-646f)))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.x, -260f) + var_1.b.x)), var_1.b.x) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), 1976f, _wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1430f * 962f))), vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.x), var_1.b.x), var_1.b.x, var_1.b.x))));
    return Struct_1(select(u_input.c, firstTrailingBit(~var_1.a), vec2<bool>(true && (var_0 < 17818u), any(var_1.c))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -361f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_2.x, var_2.x), var_1.b.x))), var_1.c);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec2<i32>, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = !(!vec2<bool>(arg_0.c.x, any(select(vec4<bool>(arg_0.c.x, true, true, arg_0.c.x), vec4<bool>(false, arg_0.c.x, true, arg_0.c.x), false))));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_0.b.x))));
    let var_3 = arg_0;
    return Struct_1(vec2<u32>(~11920u, countOneBits(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(3642u, 1u, var_1.a.x)), vec3<u32>(1u, u_input.b, 0u)))), var_1.b, vec3<bool>(-1410f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3.b.x))), true, var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(), -4088i, vec2<i32>(31227i ^ min(_wgslsmith_clamp_i32(-59961i, u_input.a.x, 2147483647i), min(2147483647i, u_input.a.x)), -select(u_input.a.x, u_input.a.x, true)), ~(~vec4<i32>(1i, -1i, ~15610i, u_input.a.x >> (44634u % 32u))));
    var_0 = func_1();
    var_0 = Struct_1(vec2<u32>(select(31942u, func_5(Struct_1(var_0.a, var_0.b, var_0.c), -43939i, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, 0i), vec2<i32>(1i, -37706i)), abs(u_input.a)).a.x, var_0.b.x > _wgslsmith_f_op_f32(2294f + var_0.b.x)), ~(var_0.a.x << (var_0.a.x % 32u)) << ((u_input.c.x ^ 51035u) % 32u)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(func_2(0i, vec2<i32>(-39263i, -2147483647i)).b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-686f, var_0.b.x)))))), _wgslsmith_f_op_vec2_f32(var_0.b - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, var_0.b.x)) - var_0.b)))), func_1().c);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -132f);
    var_0 = func_5(Struct_1(select(select(vec2<u32>(19947u, 7322u) ^ vec2<u32>(8340u, var_0.a.x), u_input.c, func_5(Struct_1(vec2<u32>(64813u, 94733u), var_0.b, var_0.c), 0i, vec2<i32>(5663i, 1i), vec4<i32>(39124i, -1i, u_input.a.x, -52264i)).c.x), u_input.c, select(true, true, true)), vec2<f32>(_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(var_0.b.x + 1000f)), 939f), var_0.c), _wgslsmith_mod_i32(i32(-1i) * -(-52017i & u_input.a.x), u_input.a.x), u_input.a.yz, _wgslsmith_mod_vec4_i32(abs(u_input.a), u_input.a & reverseBits(select(u_input.a, vec4<i32>(u_input.a.x, -10252i, u_input.a.x, 0i), vec4<bool>(true, true, var_0.c.x, var_0.c.x)))));
    var_0 = func_1();
    var var_2 = -309f;
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1629f);
    var var_3 = Struct_1(u_input.c << (min(_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a.x, 27394u), firstTrailingBit(vec2<u32>(var_0.a.x, u_input.c.x))), ~(var_0.a ^ vec2<u32>(85374u, u_input.c.x))) % vec2<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(func_4((u_input.a.yxz << (vec3<u32>(110312u, 4294967295u, 22381u) % vec3<u32>(32u))) | (vec3<i32>(u_input.a.x, -43185i, u_input.a.x) ^ u_input.a.xwz), -400f, func_5(Struct_1(vec2<u32>(var_0.a.x, 4294967295u), vec2<f32>(var_1, var_1), var_0.c), u_input.a.x, vec2<i32>(-1i, u_input.a.x), firstTrailingBit(u_input.a)).c, ~1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * -1046f))), var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(-2022f);
}

