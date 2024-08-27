struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: vec4<i32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: u32) -> u32 {
    let var_0 = -493f;
    let var_1 = Struct_2(Struct_1(all(vec4<bool>(true, true, 0i > u_input.a.x, true)), vec3<i32>(-33423i, _wgslsmith_sub_i32(~(-1i), 2147483647i), firstLeadingBit(u_input.c.x) >> (~62888u % 32u)), _wgslsmith_f_op_vec2_f32(sign(arg_0)), _wgslsmith_f_op_f32(-var_0)), reverseBits(countOneBits(arg_2)), ~max(u_input.a.x, _wgslsmith_sub_i32(reverseBits(0i), u_input.a.x)));
    let var_2 = vec2<u32>(~(arg_2 ^ 4294967295u), 56620u) << (_wgslsmith_mult_vec2_u32(vec2<u32>(arg_2, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_2, 75564u, var_1.b), arg_2)), vec2<u32>(0u, countOneBits(min(arg_2, arg_2)))) % vec2<u32>(32u));
    var var_3 = arg_1;
    var_3 = any(select(!select(vec3<bool>(true, var_1.a.a, var_1.a.a), !vec3<bool>(var_1.a.a, arg_1, var_1.a.a), true), vec3<bool>(!any(vec4<bool>(var_1.a.a, false, var_1.a.a, arg_1)), true, any(vec4<bool>(var_1.a.a, false, var_1.a.a, false))), vec3<bool>(any(vec3<bool>(false, arg_1, var_1.a.a)) || var_1.a.a, false, false)));
    return ~abs(max(97459u, firstLeadingBit(_wgslsmith_mult_u32(18491u, arg_2))));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: i32) -> i32 {
    var var_0 = arg_0;
    let var_1 = vec2<u32>(11712u, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b));
    return ~arg_2.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(102222u, func_3(_wgslsmith_div_vec2_f32(vec2<f32>(-276f, 992f), vec2<f32>(543f, -312f)), true, 0u), 4294967295u), ~vec3<u32>(_wgslsmith_sub_u32(0u, 0u), ~0u, _wgslsmith_mod_u32(0u, 65312u))) % 32u);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = select(~reverseBits(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), 91829u)), _wgslsmith_div_u32(32131u, _wgslsmith_div_u32(1u, u_input.b.x)), select(false, false, u_input.c.x < countOneBits(-76662i)));
    var var_1 = min(-2147483647i ^ -arg_2.x, -24670i);
    var_1 = arg_2.x;
    return Struct_1(false, u_input.a.xxz, vec2<f32>(_wgslsmith_f_op_f32(-1037f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.x)) * _wgslsmith_f_op_f32(224f - arg_1.x))), _wgslsmith_f_op_f32(-arg_1.x)), arg_1.x);
}

fn func_1(arg_0: vec4<bool>) -> bool {
    var var_0 = func_4(select(arg_0.xxx, select(vec3<bool>(arg_0.x | false, any(arg_0), any(arg_0)), arg_0.wyy, !arg_0.zxx), 1727i < func_2(4294967295u, arg_0, vec4<i32>(u_input.a.x, u_input.c.x, u_input.c.x, 40898i), u_input.a.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -355f)), 682f, 132f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_div_f32(-1000f, 1615f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1653f))))), abs(~(~u_input.c)), ~_wgslsmith_div_vec4_i32(firstLeadingBit(select(vec4<i32>(u_input.c.x, 2147483647i, 18589i, 1i), vec4<i32>(35533i, 808i, u_input.c.x, u_input.a.x), false)), reverseBits(vec4<i32>(u_input.c.x, u_input.c.x, 0i, -32102i) & u_input.a)));
    var var_1 = u_input.a.xxy >> (_wgslsmith_mult_vec3_u32(u_input.b.wxx, abs(select(u_input.b.zyx | vec3<u32>(u_input.b.x, 37939u, 24694u), max(vec3<u32>(0u, u_input.b.x, 4294967295u), u_input.b.zwy), !arg_0.x))) % vec3<u32>(32u));
    var var_2 = Struct_5((15238i | reverseBits(u_input.a.x)) == 2147483647i, ~(-u_input.a), Struct_4(u_input.b.xxx, reverseBits(u_input.b), vec4<bool>(var_0.a, (u_input.c.x ^ var_1.x) != -61416i, arg_0.x, arg_0.x), Struct_3(_wgslsmith_mult_vec3_i32(var_0.b, var_0.b), ~_wgslsmith_div_vec3_i32(vec3<i32>(-40055i, var_0.b.x, u_input.c.x), vec3<i32>(31289i, 1i, 9299i)), 459f, func_4(arg_0.xyx, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.d, 1348f, var_0.c.x, 433f), vec4<f32>(-1443f, var_0.c.x, var_0.d, -1246f))), -var_0.b.xy, abs(vec4<i32>(u_input.c.x, u_input.a.x, var_0.b.x, u_input.a.x))), u_input.a.ywx << ((u_input.b.ywy ^ u_input.b.wwx) % vec3<u32>(32u)))));
    let var_3 = Struct_3(var_0.b, u_input.a.xzw, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-630f)))))), func_4(!(!(!arg_0.zzz)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-298f, var_0.d, var_0.d, -1899f))))), select(_wgslsmith_mult_vec2_i32(func_4(var_2.c.c.wxy, vec4<f32>(var_0.d, var_2.c.d.d.c.x, var_0.c.x, 379f), vec2<i32>(29288i, var_0.b.x), vec4<i32>(840i, var_2.b.x, var_1.x, var_1.x)).b.xy, firstLeadingBit(vec2<i32>(u_input.c.x, var_2.c.d.b.x))), u_input.a.xy, _wgslsmith_f_op_f32(-var_0.c.x) > 1f), var_2.b), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(select(vec3<i32>(var_2.b.x, -1i, -1i) & var_2.b.wxz, var_2.b.xxx, select(var_0.a, var_2.a, true)), vec3<i32>(var_2.b.x, 24740i >> (u_input.b.x % 32u), var_1.x)), ~(-var_0.b) ^ vec3<i32>(1i, 1i, 1i)));
    var_0 = func_4(vec3<bool>(false & var_2.a, any(select(vec3<bool>(arg_0.x, false, false), var_2.c.c.yyy, vec3<bool>(true, var_0.a, false))), !var_3.d.a | any(arg_0.zw)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -701f), var_3.d.d, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(158f, _wgslsmith_f_op_f32(1000f - 533f))), -1000f, false)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -821f), _wgslsmith_f_op_f32(-var_2.c.d.d.d)))), ~u_input.c, -var_2.b);
    return var_2.c.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(firstLeadingBit(~(-16082i)), -2147483647i);
    var var_1 = Struct_2(Struct_1(select(_wgslsmith_add_i32(48225i, -99697i) < _wgslsmith_sub_i32(u_input.c.x, u_input.a.x), (6796i != var_0.x) | true, func_1(vec4<bool>(false, false, true, true))), abs(vec3<i32>(u_input.c.x, 0i, reverseBits(var_0.x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1701f, -407f)))))), -426f), 13290u, _wgslsmith_sub_i32(-13401i, firstLeadingBit(reverseBits(var_0.x))));
    var var_2 = Struct_5(true, firstTrailingBit(min(_wgslsmith_sub_vec4_i32(-vec4<i32>(-2147483647i, var_1.c, var_1.a.b.x, -2147483647i), vec4<i32>(var_1.c, var_1.a.b.x, u_input.a.x, -17079i) >> (vec4<u32>(u_input.b.x, var_1.b, 0u, 0u) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(u_input.a, countOneBits(vec4<i32>(u_input.a.x, var_0.x, var_0.x, var_1.a.b.x))))), Struct_4(max(u_input.b.zwy, u_input.b.zwy & (u_input.b.wzw >> (u_input.b.ywy % vec3<u32>(32u)))), abs(u_input.b), vec4<bool>(true, any(!vec2<bool>(var_1.a.a, var_1.a.a)), var_1.a.a, var_1.a.a), Struct_3(~_wgslsmith_div_vec3_i32(var_1.a.b, vec3<i32>(7157i, 1i, -14322i)), vec3<i32>(var_1.a.b.x, 2147483647i, -2147483647i) >> (select(vec3<u32>(105230u, 0u, u_input.b.x), u_input.b.xxy, vec3<bool>(false, var_1.a.a, false)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.c.x + 1438f)), var_1.a, _wgslsmith_mult_vec3_i32(firstLeadingBit(u_input.a.yzz), var_1.a.b))));
    var_0 = abs(var_2.b.yx);
    var var_3 = var_2.c.d;
    var_1 = Struct_2(func_4(var_2.c.c.xwx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.d, -1000f, 1271f, var_3.d.c.x)), vec4<f32>(var_1.a.c.x, var_2.c.d.c, var_1.a.d, 347f)))), select(u_input.a.wy, -vec2<i32>(u_input.a.x, u_input.a.x), vec2<bool>(false, var_3.a.x >= var_1.a.b.x)), var_2.b), ~11285u, var_1.a.b.x);
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-691f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.c)), _wgslsmith_f_op_f32(f32(-1f) * -255f)));
    let var_5 = Struct_5(true, u_input.a, var_2.c);
    var_3 = Struct_3(countOneBits(_wgslsmith_add_vec3_i32(firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, var_2.c.d.a.x, 2147483647i), vec3<i32>(20428i, 35900i, 24736i), var_1.a.b)), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.a.x, var_1.c), var_1.a.b, _wgslsmith_mult_vec3_i32(var_3.b, vec3<i32>(0i, u_input.a.x, -6746i))))), var_1.a.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1648f))), func_4(select(select(!var_5.c.c.ywy, vec3<bool>(false, var_3.d.a, true), vec3<bool>(true, true, true)), var_5.c.c.zwy, vec3<bool>(true, any(var_5.c.c), !var_1.a.a)), vec4<f32>(-1064f, -503f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 709f), _wgslsmith_f_op_f32(trunc(1309f))), reverseBits(var_5.b.wx), _wgslsmith_sub_vec4_i32(vec4<i32>(var_5.c.d.a.x, -17997i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), u_input.c), reverseBits(-483i)), u_input.a)), vec3<i32>(var_0.x, var_0.x, var_5.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~min(vec3<i32>(-16865i, u_input.a.x, var_3.a.x), vec3<i32>(var_0.x, u_input.a.x, -15234i)))), var_3.d.c, abs(vec2<u32>(14383u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(var_1.b, 13455u), min(u_input.b.x, 3465u)))));
}

