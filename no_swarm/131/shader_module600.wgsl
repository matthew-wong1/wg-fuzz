struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 7>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> vec3<f32> {
    global0 = array<Struct_4, 7>();
    global0 = array<Struct_4, 7>();
    global0 = array<Struct_4, 7>();
    let var_0 = !select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true));
    global0 = array<Struct_4, 7>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(505f, 462f, -821f) * vec3<f32>(281f, 1072f, -838f)), vec3<f32>(549f, 1000f, -983f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-780f, 333f, -1216f))), var_0.x)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(969f, 504f), _wgslsmith_f_op_f32(-585f - -768f), _wgslsmith_f_op_f32(358f + -1000f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-338f, 1000f, -761f) - _wgslsmith_div_vec3_f32(vec3<f32>(-731f, 1277f, 222f), vec3<f32>(1000f, 961f, -1690f))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1104f), -181f, -1228f))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4) -> vec2<bool> {
    let var_0 = true;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.c.x, 374f, _wgslsmith_f_op_f32(select(arg_1.c.c.x, -149f, var_0)) >= 658f))), ~arg_1.b);
    let var_2 = Struct_2(false, arg_0, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -173f)), var_1.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(883f, -1216f))))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1189f * -821f), arg_0.b.x)), arg_0.d.x, var_1.a)), arg_1.c);
    let var_3 = !(!vec4<bool>(any(vec3<bool>(false, true, false)), any(!vec2<bool>(var_2.a, true)), var_2.a, var_2.a));
    let var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(133f + _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a)))))));
    return vec2<bool>(var_1.a > -1362f, var_2.a);
}

fn func_2(arg_0: vec3<f32>, arg_1: i32) -> Struct_4 {
    var var_0 = Struct_3(arg_0.x, _wgslsmith_mod_u32(u_input.b.x, 0u));
    var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))) - 1643f), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, var_0.b, 4294967295u) & ~u_input.b, ~max(u_input.b, vec4<u32>(var_0.b, var_0.b, var_0.b, 12726u))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 17113u) << (vec2<u32>(var_0.b, u_input.b.x) % vec2<u32>(32u)), vec2<u32>(1u, u_input.b.x) << (u_input.b.wz % vec2<u32>(32u))), firstTrailingBit(1u), u_input.b.x, ~_wgslsmith_add_u32(u_input.b.x, 69261u))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1501f));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(func_1()).x, _wgslsmith_sub_u32(~_wgslsmith_sub_u32(58562u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, 1u, u_input.b.x, u_input.b.x), vec4<u32>(var_0.b, u_input.b.x, 73878u, 0u))), ~u_input.b.x));
    let var_3 = !select(!func_3(Struct_1(vec4<i32>(u_input.a, -6498i, 16581i, -31453i), arg_0.yy, vec2<f32>(1000f, arg_0.x), vec3<f32>(-1384f, arg_0.x, var_1), 2394u), Struct_4(vec3<i32>(-2147483647i, -2205i, -2147483647i), 4294967295u, Struct_1(vec4<i32>(0i, 0i, arg_1, arg_1), arg_0.xz, arg_0.yy, arg_0, 8113u))), !(!func_3(Struct_1(vec4<i32>(-4209i, 1i, -1i, 2147483647i), arg_0.zx, vec2<f32>(arg_0.x, var_2.a), vec3<f32>(1187f, var_1, 1000f), 41977u), global0[_wgslsmith_index_u32(4294967295u, 7u)])), vec2<bool>(true, all(vec4<bool>(true, true, false, false))));
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(firstTrailingBit(var_0.b), _wgslsmith_div_u32(8552u, 1u), ~var_0.b, u_input.b.x & var_2.b), select(select(u_input.b, vec4<u32>(31238u, 1u, var_0.b, var_0.b), vec4<bool>(var_3.x, var_3.x, var_3.x, true)), u_input.b, !vec4<bool>(false, var_3.x, false, var_3.x)))), vec4<u32>(13464u, var_2.b, select(countOneBits(countOneBits(var_0.b)), _wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(var_2.b, var_0.b, 40561u)), false), var_0.b)), 7u)];
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = func_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.c.c.x, arg_1.c.c.x))) - arg_1.c.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_1()).x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(686f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-569f, 437f) - -281f)), (i32(-1i) * -u_input.a) << (arg_0.x % 32u));
    let var_1 = !(func_3(arg_1.c, func_2(_wgslsmith_f_op_vec3_f32(arg_1.c.d * vec3<f32>(arg_1.c.d.x, -154f, var_0.c.b.x)), reverseBits(arg_1.c.a.x))).x | func_3(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.b.x, 109f, var_0.c.d.x) * arg_1.c.d), ~0i).c, Struct_4(vec3<i32>(u_input.c, -13759i, -26850i), var_0.b, arg_1.c)).x);
    global0 = array<Struct_4, 7>();
    global0 = array<Struct_4, 7>();
    global0 = array<Struct_4, 7>();
    return func_2(vec3<f32>(-256f, _wgslsmith_f_op_f32(exp2(var_0.c.c.x)), _wgslsmith_f_op_f32(-var_0.c.b.x)), abs(-17918i)).c;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3) -> vec3<bool> {
    global0 = array<Struct_4, 7>();
    global0 = array<Struct_4, 7>();
    global0 = array<Struct_4, 7>();
    return !(!vec3<bool>(false, any(vec4<bool>(true, true, true, true)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mod_vec4_i32(~vec4<i32>(0i, u_input.a, -21033i, u_input.a), firstTrailingBit(vec4<i32>(1i, 2147483647i, u_input.a, u_input.a) << (u_input.b % vec4<u32>(32u)))) ^ ~_wgslsmith_add_vec4_i32(~vec4<i32>(2147483647i, u_input.c, u_input.c, u_input.a), ~vec4<i32>(60516i, u_input.c, 2147483647i, u_input.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(946f, 548f)), _wgslsmith_f_op_f32(364f * 607f))) * vec2<f32>(1f, 1f)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1018f * 760f) + -779f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1655f, 1000f, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1090f, 1000f, true)), _wgslsmith_div_f32(1826f, -947f), all(vec4<bool>(true, false, false, false)))), _wgslsmith_f_op_f32(floor(-870f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(186f, -281f, -397f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-477f, -997f, 268f) + vec3<f32>(-535f, 1124f, 314f))))), _wgslsmith_f_op_vec3_f32(func_1()))), 6842u);
    global0 = array<Struct_4, 7>();
    let var_1 = func_5(Struct_4(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a.x, var_0.a.x, var_0.a.x), var_0.a.zyx << (u_input.b.xzz % vec3<u32>(32u))) ^ var_0.a.xyy, 49406u, func_4(select(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.e, 1u), vec2<u32>(u_input.b.x, u_input.b.x)), ~u_input.b.xw, false), func_2(_wgslsmith_f_op_vec3_f32(trunc(var_0.d)), i32(-1i) * -1i), !select(vec2<bool>(false, true), vec2<bool>(false, false), false))), Struct_3(var_0.c.x, _wgslsmith_sub_u32(_wgslsmith_mod_u32(83003u, abs(u_input.b.x)), max(~4294967295u, var_0.e))));
    var var_2 = Struct_2(all(vec2<bool>(func_5(global0[_wgslsmith_index_u32(~1u, 7u)], Struct_3(270f, 1u)).x, all(select(vec4<bool>(true, var_1.x, var_1.x, var_1.x), vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(true, false, var_1.x, true))))), func_4(u_input.b.xw, func_2(var_0.d, -2147483647i), !vec2<bool>(!var_1.x, var_1.x)), _wgslsmith_f_op_vec3_f32(var_0.d - _wgslsmith_div_vec3_f32(vec3<f32>(var_0.d.x, _wgslsmith_f_op_f32(var_0.b.x + var_0.d.x), var_0.b.x), var_0.d)), Struct_1(reverseBits(_wgslsmith_mod_vec4_i32(-var_0.a, abs(vec4<i32>(var_0.a.x, -1i, -34750i, u_input.a)))), var_0.b, vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(-382f * _wgslsmith_div_f32(var_0.d.x, var_0.d.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_0.d))))), ~((1u & var_0.e) >> (~u_input.b.x % 32u))));
    var_2 = Struct_2(~countOneBits(u_input.b.x) > _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.e, 1u, 1u, u_input.b.x), _wgslsmith_div_vec4_u32(firstTrailingBit(u_input.b), firstTrailingBit(vec4<u32>(var_2.d.e, 19352u, u_input.b.x, 8769u)))), Struct_1(var_2.d.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.b.x, -811f)), _wgslsmith_f_op_vec2_f32(trunc(var_0.b)), vec2<bool>(var_1.x, false))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(var_0.c - vec2<f32>(var_0.b.x, var_2.c.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.d.c)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(var_0.b.x + -202f), var_0.b.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.d.d), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.c.x, var_2.b.c.x, var_0.d.x), vec3<f32>(var_0.d.x, var_0.c.x, var_2.c.x)))))), u_input.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d.b.x) + _wgslsmith_f_op_f32(round(-260f))), var_2.d.d.x, _wgslsmith_f_op_f32(-var_0.b.x))), func_2(vec3<f32>(412f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(497f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1738f)))), -2469i).c);
    var_2 = Struct_2(false, func_4(vec2<u32>(63736u, func_4(vec2<u32>(16009u, u_input.b.x), func_2(vec3<f32>(1066f, var_0.c.x, var_2.b.b.x), -2147483647i), !var_1.zx).e), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_0.c.x, -506f) + vec3<f32>(981f, -280f, var_2.b.b.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-175f, -1000f, var_0.d.x))), func_4(u_input.b.xz, func_2(vec3<f32>(611f, var_0.d.x, var_0.d.x), 27827i), var_1.zx).a.x), !vec2<bool>(false, var_1.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(184f, var_2.d.c.x, var_2.c.x))))) * var_0.d), Struct_1(vec4<i32>(func_4(countOneBits(u_input.b.yy), global0[_wgslsmith_index_u32(1u | var_2.b.e, 7u)], !var_1.xz).a.x, func_2(var_0.d, u_input.a).c.a.x | abs(-19871i), -var_2.d.a.x, ~var_0.a.x), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.c.x, var_2.d.c.x), var_0.b, true))))), vec2<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.d.x, var_0.d.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_0.d))), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(var_0.e, u_input.b.x, u_input.b.x, 13549u)), u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_0.a.yzz), 44214i);
}

