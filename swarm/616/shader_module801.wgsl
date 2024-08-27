struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = Struct_3(_wgslsmith_mult_u32(7336u, countOneBits(u_input.c.x)), select(vec4<bool>(true, !select(false, false, true), true, select(true, true, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(any(vec4<bool>(true, true, true, true)), true, -40348i != u_input.a, true), select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), true), true)), !vec4<bool>(true, u_input.c.x == u_input.c.x, u_input.b == u_input.b, true)), arg_0, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-302f * 689f), _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(arg_0.a + 238f), _wgslsmith_f_op_f32(738f - arg_0.a))))), Struct_2(arg_0, arg_0));
    let var_1 = Struct_4(var_0.e, _wgslsmith_f_op_vec4_f32(var_0.d + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(var_0.e.a.a, 847f), _wgslsmith_f_op_f32(step(arg_0.a, -211f)), var_0.c.a, _wgslsmith_f_op_f32(select(arg_0.a, 707f, var_0.b.x))), _wgslsmith_f_op_vec4_f32(trunc(var_0.d))))));
    var var_2 = Struct_2(Struct_1(-845f, ~((vec2<u32>(61133u, 42911u) << (vec2<u32>(84798u, u_input.c.x) % vec2<u32>(32u))) >> (vec2<u32>(var_0.a, 0u) % vec2<u32>(32u))), 1i, _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(arg_0.d, vec2<i32>(18048i, arg_0.d.x)) >> (vec2<u32>(var_0.e.b.e, 1u) % vec2<u32>(32u)), vec2<i32>(u_input.a, -2147483647i), -_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(2147483647i, arg_0.d.x))), 67663u), var_1.a.b);
    var var_3 = ~(-29728i << (_wgslsmith_mult_u32(abs(var_1.a.a.b.x), ~(~var_0.c.b.x)) % 32u));
    var_0 = Struct_3(arg_0.e, select(!(!select(vec4<bool>(false, var_0.b.x, false, var_0.b.x), vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), var_0.b.x)), var_0.b, select(select(var_0.b, !vec4<bool>(false, var_0.b.x, true, false), var_0.b), !(!var_0.b), !(!var_0.b.x))), var_2.b, _wgslsmith_f_op_vec4_f32(-var_0.d), Struct_2(Struct_1(var_1.a.b.a, max(vec2<u32>(11494u, 4294967295u), vec2<u32>(var_0.a, 6918u)), -3327i, var_1.a.b.d, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.b.e, var_0.a), vec2<u32>(1u, arg_0.b.x) ^ var_0.e.b.b)), Struct_1(arg_0.a, vec2<u32>(~4294967295u, ~u_input.c.x), -(~var_1.a.b.d.x), ~vec2<i32>(arg_0.d.x, arg_0.d.x), reverseBits(0u))));
    return any(var_0.b);
}

fn func_2() -> f32 {
    let var_0 = select(select(select(vec4<bool>(true, all(vec4<bool>(false, false, false, false)), true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(func_3(Struct_1(-2078f, vec2<u32>(u_input.c.x, 16579u), u_input.b, vec2<i32>(1i, u_input.a), u_input.c.x)), true, func_3(Struct_1(-1000f, u_input.c.yy, -2147483647i, vec2<i32>(u_input.a, 2147483647i), u_input.c.x)), true), vec4<bool>(true, true, true, all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true))))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec4<bool>(false, true, true, false)), true, u_input.b >= -14097i), true), !any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)))), any(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    var var_1 = u_input.c.x;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(sign(2100f)), _wgslsmith_div_vec2_u32(~_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.c.zz, u_input.c.yz), min(u_input.c.zy, vec2<u32>(u_input.c.x, 1u))), ~_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.c.xx, u_input.c.yz), select(u_input.c.zy, u_input.c.zx, var_0.zy))), 1i, _wgslsmith_div_vec2_i32(vec2<i32>(~3554i, u_input.a) & select(select(vec2<i32>(56267i, 0i), vec2<i32>(-1i, u_input.b), var_0.x), -vec2<i32>(u_input.b, -2147483647i), vec2<bool>(true, var_0.x)), firstTrailingBit(reverseBits(vec2<i32>(u_input.a, 25151i)) >> (min(vec2<u32>(1u, 4294967295u), u_input.c.xx) % vec2<u32>(32u)))), min(~_wgslsmith_mult_u32(~u_input.c.x, 109941u), countOneBits(~31682u)));
    let var_3 = select(!select(var_0, !var_0, true), !var_0, false);
    let var_4 = var_2.d.x ^ var_2.c;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1108f)))) + _wgslsmith_f_op_f32(f32(-1f) * -1121f));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = arg_2;
    var var_1 = Struct_3(48304u, vec4<bool>(false, arg_1.x > (4294967295u ^ abs(u_input.c.x)), false, arg_0.x), Struct_1(_wgslsmith_f_op_f32(func_2()), _wgslsmith_div_vec2_u32(u_input.c.yz, vec2<u32>(_wgslsmith_clamp_u32(70466u, 0u, 4294967295u), u_input.c.x)), u_input.a, _wgslsmith_div_vec2_i32(min(_wgslsmith_mult_vec2_i32(vec2<i32>(37692i, u_input.a), vec2<i32>(3570i, 21604i)), vec2<i32>(u_input.b, u_input.a)), _wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(29068i, -2147483647i)), ~vec2<i32>(u_input.a, 9775i))), 1u), arg_2, Struct_2(Struct_1(_wgslsmith_f_op_f32(func_2()), vec2<u32>(_wgslsmith_add_u32(86336u, arg_1.x), 33188u << (arg_1.x % 32u)), u_input.b, ~(vec2<i32>(-10269i, 0i) >> (arg_1.ww % vec2<u32>(32u))), abs(_wgslsmith_mult_u32(27049u, arg_1.x))), Struct_1(-398f, (vec2<u32>(27314u, 92530u) & arg_1.zy) | vec2<u32>(37124u, u_input.c.x), 12416i, firstTrailingBit(vec2<i32>(-2147483647i, -45114i) & vec2<i32>(u_input.b, -99651i)), u_input.c.x)));
    var var_2 = vec4<u32>(arg_1.x, ~arg_1.x, 0u, arg_1.x);
    var var_3 = Struct_4(Struct_2(Struct_1(-332f, firstTrailingBit(select(vec2<u32>(arg_1.x, 0u), vec2<u32>(22410u, var_2.x), false)), -16100i, var_1.c.d, ~arg_1.x), Struct_1(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_sub_vec2_u32(~u_input.c.yy, _wgslsmith_add_vec2_u32(vec2<u32>(var_2.x, 59595u), arg_1.zy)), max(1i, 29918i << (var_2.x % 32u)), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, var_1.e.a.d.x), -var_1.e.a.d), u_input.c.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - var_0.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x * -198f), _wgslsmith_f_op_f32(var_0.x - 560f), _wgslsmith_add_i32(1i, 69070i) > _wgslsmith_add_i32(2147483647i, var_1.e.b.d.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.d.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_1.e.a.a))));
    return var_3.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.a, arg_1.b.a, arg_1.a.a) * vec3<f32>(-232f, 785f, arg_1.a.a))))));
    let var_1 = func_1(select(vec3<bool>(false, select(true, arg_1.b.a <= 2356f, true), any(vec4<bool>(true, true, true, true))), vec3<bool>(false, true, all(vec4<bool>(true, false, false, false))), any(vec4<bool>(true, true, true, true))), reverseBits(~vec4<u32>(~u_input.c.x, ~4294967295u, ~u_input.c.x, select(arg_0.b.e, arg_0.a.b.x, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.b.a, var_0.x, arg_1.a.a, 423f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, 599f, arg_1.b.a, -275f))))))).a;
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(413f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), var_0.x));
    let var_3 = true;
    var var_4 = ~abs(var_1.d);
    return all(!vec4<bool>(false, select(!var_3, var_3, true), !func_3(Struct_1(var_0.x, vec2<u32>(1u, u_input.c.x), 41491i, arg_0.b.d, 4294967295u)), any(vec2<bool>(var_3, var_3))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_4(Struct_2(Struct_1(1034f, ~vec2<u32>(22904u, 73990u), _wgslsmith_mod_i32(u_input.b, u_input.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, -1i), vec2<i32>(1i, 0i), vec2<i32>(u_input.b, u_input.a)), ~u_input.c.x), Struct_1(_wgslsmith_f_op_f32(1000f - 610f), u_input.c.yy, min(u_input.b, -853i), vec2<i32>(u_input.b, u_input.b) << (vec2<u32>(0u, u_input.c.x) % vec2<u32>(32u)), u_input.c.x)), func_1(vec3<bool>(u_input.b <= u_input.b, any(vec2<bool>(false, true)), true), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c.x, 13980u, 1u, 4294967295u), vec4<u32>(u_input.c.x, 44054u, u_input.c.x, 0u) << (vec4<u32>(u_input.c.x, 1013u, u_input.c.x, u_input.c.x) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-246f, -297f, -567f, 1353f)) + vec4<f32>(-464f, -1155f, 1000f, 1791f))));
    var var_1 = ~20742u;
    var var_2 = _wgslsmith_div_u32(~(1u | select(~4294967295u, ~u_input.c.x, var_0)), _wgslsmith_div_u32(u_input.c.x, 0u));
    let var_3 = select(select(select(vec3<bool>(true, any(vec2<bool>(false, true)), all(vec4<bool>(var_0, true, var_0, var_0))), !select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, false, false), var_0), true), select(select(select(vec3<bool>(true, var_0, false), vec3<bool>(var_0, var_0, false), var_0), vec3<bool>(var_0, false, var_0), var_0 | true), select(vec3<bool>(false, true, var_0), vec3<bool>(false, true, false), !var_0), vec3<bool>(func_4(Struct_2(Struct_1(-276f, u_input.c.zz, u_input.b, vec2<i32>(1i, u_input.a), 4294967295u), Struct_1(-436f, u_input.c.xx, u_input.a, vec2<i32>(u_input.b, u_input.a), 0u)), Struct_2(Struct_1(807f, u_input.c.yy, u_input.a, vec2<i32>(u_input.b, 2128i), u_input.c.x), Struct_1(598f, u_input.c.yz, -60129i, vec2<i32>(u_input.a, u_input.b), 53163u))), any(vec4<bool>(false, false, var_0, var_0)), !var_0)), var_0), select(vec3<bool>(_wgslsmith_mult_i32(u_input.b, u_input.b) < u_input.b, true, u_input.c.x > ~u_input.c.x), vec3<bool>(true, false, !var_0), !vec3<bool>(func_4(Struct_2(Struct_1(-586f, u_input.c.xy, u_input.a, vec2<i32>(24896i, u_input.a), 4294967295u), Struct_1(-647f, u_input.c.yz, u_input.b, vec2<i32>(u_input.a, u_input.a), u_input.c.x)), Struct_2(Struct_1(-1024f, vec2<u32>(20018u, u_input.c.x), u_input.b, vec2<i32>(u_input.b, -31154i), 4294967295u), Struct_1(314f, u_input.c.xy, 20388i, vec2<i32>(u_input.a, u_input.a), 81718u))), true, all(vec4<bool>(var_0, var_0, true, var_0)))), select(select(select(!vec3<bool>(var_0, var_0, var_0), select(vec3<bool>(false, true, true), vec3<bool>(false, true, var_0), vec3<bool>(var_0, false, true)), true), !(!vec3<bool>(var_0, false, true)), vec3<bool>(true, true, any(vec3<bool>(false, var_0, var_0)))), !select(select(vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, var_0, var_0), var_0), true), select(vec3<bool>(true, true, true), vec3<bool>(u_input.c.x == u_input.c.x, var_0, false), select(vec3<bool>(var_0, false, var_0), !vec3<bool>(false, var_0, var_0), vec3<bool>(true, true, var_0)))));
    var_2 = _wgslsmith_add_u32(func_1(!vec3<bool>(var_0, var_0 || false, var_3.x), select(~select(vec4<u32>(u_input.c.x, u_input.c.x, 73687u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<bool>(false, var_3.x, var_0, false)), ~vec4<u32>(33255u, u_input.c.x, 1u, u_input.c.x) & min(vec4<u32>(1u, 23757u, 50460u, u_input.c.x), vec4<u32>(11555u, 0u, 52066u, u_input.c.x)), !select(vec4<bool>(false, var_3.x, true, true), vec4<bool>(false, true, var_3.x, var_0), vec4<bool>(true, false, var_3.x, var_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(207f, -1432f, 1000f, -904f), vec4<f32>(-1122f, -603f, -350f, -591f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(918f, -396f, -1058f, -1000f))), true)))).a.e, 26227u);
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(1f + 780f), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), vec2<u32>(60435u, 14720u)), max(43100u, 54084u)), vec2<u32>(u_input.c.x, min(52783u, u_input.c.x)), u_input.c.yz), -2147483647i >> (~(~u_input.c.x) % 32u), _wgslsmith_div_vec2_i32(-vec2<i32>(u_input.a, u_input.a) & (vec2<i32>(-2147483647i, u_input.a) & vec2<i32>(0i, 2147483647i)), vec2<i32>(-2147483647i ^ u_input.b, u_input.b << (21343u % 32u))), u_input.c.x), func_1(vec3<bool>(false & var_3.x, true, any(vec4<bool>(var_3.x, true, var_0, false))), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 0u, 28752u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 1u)) ^ vec4<u32>(64232u, u_input.c.x, 0u, u_input.c.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1334f, -623f, 1767f, 864f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-578f, -274f, 782f, 1053f)), vec4<f32>(-276f, -274f, -447f, 1000f))))).a);
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -16300i), var_4.b.d), firstTrailingBit(firstTrailingBit(2147483647i)), max(1i, u_input.b ^ var_4.a.c)), firstLeadingBit(-select(vec3<i32>(-46423i, 6149i, 0i), vec3<i32>(27949i, var_4.b.d.x, 0i), var_0))), -var_4.b.d);
}

