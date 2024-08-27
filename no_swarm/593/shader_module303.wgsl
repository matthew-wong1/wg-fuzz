struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<i32>,
    c: vec3<f32>,
    d: Struct_4,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4) -> vec2<bool> {
    var var_0 = u_input.c.xyx;
    var var_1 = arg_0.a;
    var_0 = firstTrailingBit(_wgslsmith_add_vec3_i32(u_input.c.wxz, ~(~max(u_input.c.zww, vec3<i32>(47676i, u_input.c.x, var_0.x)))));
    var_0 = countOneBits(u_input.c.xww);
    var var_2 = ~u_input.b;
    return !(!select(vec2<bool>(all(vec2<bool>(true, false)), arg_0.a.b < arg_0.a.b), vec2<bool>(any(vec3<bool>(true, true, true)), true), select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, false), true), true)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> bool {
    let var_0 = any(vec2<bool>(true, arg_1.x)) & true;
    let var_1 = !(!select(vec2<bool>(false, all(vec3<bool>(true, var_0, var_0))), !arg_1, select(!arg_1, !vec2<bool>(var_0, arg_1.x), arg_1.x)));
    var var_2 = var_1.x;
    var_2 = any(vec4<bool>(!(!(!arg_1.x)), any(!select(vec4<bool>(var_0, var_1.x, arg_1.x, arg_1.x), vec4<bool>(true, var_0, false, false), var_0)), false, !var_0));
    var var_3 = Struct_3(u_input.c.ww, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-865f)), _wgslsmith_f_op_f32(f32(-1f) * -425f))), -491f))));
    return false;
}

fn func_2() -> bool {
    var var_0 = Struct_2(_wgslsmith_div_i32(u_input.c.x, 9669i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -828f)) * _wgslsmith_f_op_f32(select(1026f, 924f, !all(vec3<bool>(true, true, true))))), -(~(_wgslsmith_add_vec4_i32(vec4<i32>(-70890i, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(-2147483647i, -2147483647i, u_input.c.x, -63012i)) | vec4<i32>(u_input.c.x, u_input.c.x, 8408i, 2147483647i))), vec3<u32>(u_input.a, ~(~1u), 69611u));
    var var_1 = Struct_3(abs(_wgslsmith_add_vec2_i32(-(~var_0.c.zw), u_input.c.yz)), _wgslsmith_f_op_f32(-var_0.b));
    var_1 = Struct_3(~vec2<i32>(countOneBits(select(u_input.c.x, var_1.a.x, false)), _wgslsmith_clamp_i32(i32(-1i) * -5317i, 2147483647i, 0i)), _wgslsmith_f_op_f32(sign(var_1.b)));
    let var_2 = select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true), !vec4<bool>(true, true, any(vec3<bool>(true, true, false)), true), vec4<bool>(true, false, func_4(Struct_1(var_0.c.x), func_3(Struct_4(Struct_3(u_input.c.ww, var_0.b)))), true)), vec4<bool>(true, func_3(Struct_4(Struct_3(vec2<i32>(0i, var_0.c.x), var_1.b))).x, false, all(vec2<bool>(true, true))), select(select(select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false)), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), 1258f <= var_1.b), vec4<bool>(false, false, true, func_4(Struct_1(-17644i), vec2<bool>(false, false))), true), select(_wgslsmith_div_u32(u_input.e.x, u_input.a), u_input.b, any(vec2<bool>(true, false))) < 1u));
    var var_3 = vec4<bool>(func_3(Struct_4(Struct_3(min(vec2<i32>(u_input.c.x, var_0.a), vec2<i32>(var_1.a.x, -3739i)), -287f))).x, !func_4(Struct_1(u_input.c.x), select(var_2.zy, !vec2<bool>(var_2.x, var_2.x), func_3(Struct_4(Struct_3(vec2<i32>(-11194i, var_0.c.x), 1097f))))), any(var_2), var_2.x);
    return var_3.x;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: i32, arg_3: vec4<bool>) -> bool {
    let var_0 = arg_3.x;
    var var_1 = -vec4<i32>(select(max(-arg_0.a, u_input.c.x), _wgslsmith_clamp_i32(78522i, u_input.c.x, -1i ^ u_input.c.x), !var_0), _wgslsmith_add_i32((arg_2 >> (15232u % 32u)) & -29431i, 9296i), (_wgslsmith_div_i32(u_input.c.x, arg_0.a) ^ -5969i) ^ ~u_input.c.x, -1i & ~arg_0.a);
    var var_2 = Struct_5(Struct_4(Struct_3(_wgslsmith_mult_vec2_i32(select(var_1.wx, vec2<i32>(2147483647i, var_1.x), false), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, -20528i), u_input.c.yw)), -623f)), u_input.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(827f, -1737f, 1867f)), vec3<f32>(-879f, -999f, -582f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(311f, 124f, 657f) + vec3<f32>(-285f, 307f, -568f)))))), Struct_4(Struct_3(u_input.c.wz, -900f)), 1u);
    var_1 = _wgslsmith_clamp_vec4_i32(reverseBits(min(firstTrailingBit(var_2.b) ^ firstTrailingBit(var_2.b), firstLeadingBit(-vec4<i32>(u_input.c.x, -20326i, u_input.c.x, 1i)))), -var_2.b, -firstLeadingBit(var_2.b));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(var_2.c.x + var_2.d.a.b)))))));
    return !(!(!(!all(vec4<bool>(false, var_0, var_0, false)))));
}

fn func_1(arg_0: Struct_4, arg_1: u32) -> i32 {
    let var_0 = func_5(Struct_1(_wgslsmith_sub_i32(firstTrailingBit(-arg_0.a.a.x), ~arg_0.a.a.x)), select(vec4<bool>(true, true || (arg_0.a.a.x < arg_0.a.a.x), true, func_2()), select(vec4<bool>(func_4(Struct_1(u_input.c.x), vec2<bool>(false, true)), true, true, any(vec4<bool>(true, true, true, true))), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, false, true, select(false, false, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true))), 2147483647i, vec4<bool>(false, true, false != (arg_1 > 1u), -(arg_0.a.a.x ^ 1i) >= _wgslsmith_mod_i32(u_input.c.x, 0i)));
    let var_1 = _wgslsmith_div_vec3_i32(~(~(~(u_input.c.wzw | vec3<i32>(u_input.c.x, u_input.c.x, -2147483647i)))), -(~vec3<i32>(countOneBits(2847i), arg_0.a.a.x, _wgslsmith_div_i32(-41526i, 69543i))));
    var var_2 = arg_0.a;
    var var_3 = var_2.a.x;
    let var_4 = Struct_5(Struct_4(Struct_3(~arg_0.a.a, _wgslsmith_f_op_f32(-593f * var_2.b))), countOneBits(u_input.c), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1514f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -704f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a.b), _wgslsmith_f_op_f32(floor(-828f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, var_2.b, arg_0.a.b), vec3<f32>(var_2.b, var_2.b, arg_0.a.b))))), arg_0, 22486u);
    return 0i;
}

fn func_6(arg_0: Struct_1, arg_1: vec2<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(64533u, ~min(19519u, u_input.d)), ~vec2<u32>(firstTrailingBit(71680u), 0u)), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(u_input.d ^ u_input.d, ~0u, 1u), 25088u), min(_wgslsmith_add_vec2_u32(~vec2<u32>(28579u, u_input.e.x), vec2<u32>(u_input.e.x, u_input.d)), u_input.e.xx)));
    var_0 = reverseBits(~(firstTrailingBit(firstTrailingBit(u_input.e.yy)) & vec2<u32>(var_0.x >> (u_input.e.x % 32u), _wgslsmith_sub_u32(u_input.b, var_0.x))));
    let var_1 = firstLeadingBit(vec4<i32>(min(~u_input.c.x, 1i), -36959i, _wgslsmith_add_i32(abs(arg_0.a), _wgslsmith_mult_i32(1i, -2147483647i)), -(i32(-1i) * -2147483647i))) | vec4<i32>(u_input.c.x, firstTrailingBit(_wgslsmith_mod_i32(arg_1.x ^ arg_0.a, 1i)), arg_1.x | ~arg_1.x, _wgslsmith_mult_i32(min(arg_0.a, _wgslsmith_div_i32(1i, 2147483647i)), -(i32(-1i) * -2147483647i)));
    let var_2 = 0u;
    let var_3 = -abs(vec3<i32>(26251i, abs(31564i) | max(u_input.c.x, u_input.c.x), -51276i));
    return Struct_3(vec2<i32>(_wgslsmith_clamp_i32(reverseBits(~arg_1.x), var_3.x, func_1(Struct_4(Struct_3(vec2<i32>(2147483647i, 7224i), -721f)), var_2)), _wgslsmith_mod_i32(var_3.x, var_1.x)), _wgslsmith_f_op_f32(-1f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_1(-12382i), _wgslsmith_clamp_vec2_i32(reverseBits(-u_input.c.yw) << (vec2<u32>(u_input.a, _wgslsmith_sub_u32(u_input.a, u_input.d)) % vec2<u32>(32u)), vec2<i32>(45582i | u_input.c.x, func_1(Struct_4(Struct_3(u_input.c.zy, 371f)), 0u)) ^ u_input.c.wy, u_input.c.wx));
    var var_1 = var_0;
    var_1 = func_6(Struct_1(30922i), _wgslsmith_mod_vec2_i32(abs(abs(-vec2<i32>(u_input.c.x, u_input.c.x))), vec2<i32>(reverseBits(~2147483647i), select(-u_input.c.x, var_0.a.x, true))));
    var_1 = func_6(Struct_1(var_1.a.x), vec2<i32>(u_input.c.x, -2147483647i));
    var var_2 = ~(-u_input.c.x);
    let var_3 = !((!all(vec2<bool>(true, false)) & !(u_input.a != u_input.a)) && (_wgslsmith_mod_u32(~u_input.b, _wgslsmith_add_u32(u_input.d, u_input.e.x)) != ~(~u_input.d)));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.c, select(select(firstTrailingBit(~vec2<u32>(16001u, u_input.a)), (vec2<u32>(u_input.a, 35995u) ^ vec2<u32>(u_input.b, u_input.a)) << (min(vec2<u32>(u_input.d, u_input.a), u_input.e.yx) % vec2<u32>(32u)), true), u_input.e.zy, func_3(Struct_4(Struct_3(u_input.c.yw, var_0.b))).x), reverseBits(u_input.a));
}

