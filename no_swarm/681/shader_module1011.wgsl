struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> f32 {
    var var_0 = Struct_2(arg_1.a.a);
    var var_1 = select(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), all(vec3<bool>(false, true, false)))), !select(vec2<bool>(any(vec2<bool>(false, true)), true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), vec2<bool>(true, true)), any(vec3<bool>(true, true, true))), vec2<bool>(true, true));
    var_1 = !(!(!select(!vec2<bool>(var_1.x, true), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x), var_1.x), var_1.x && true)));
    var var_2 = 4294967295u;
    var_2 = (_wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(52693u, u_input.a.x, 4294967295u), _wgslsmith_dot_vec3_u32(var_0.a.c, var_0.a.c), reverseBits(1u)), 35098u) & _wgslsmith_add_u32(_wgslsmith_mult_u32(firstLeadingBit(4294967295u), _wgslsmith_sub_u32(var_0.a.c.x, 21963u)), min(arg_1.a.a.c.x | arg_1.a.a.c.x, ~1u))) << (u_input.a.x % 32u);
    return -1765f;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.e.x, -1i, _wgslsmith_mod_i32(i32(-1i) * -29439i, arg_2.x)), -_wgslsmith_sub_vec3_i32(u_input.b.yzz, _wgslsmith_mult_vec3_i32(u_input.b.yyx, u_input.b.xww) | _wgslsmith_div_vec3_i32(vec3<i32>(-60878i, -53444i, -20447i), arg_0.e.www)));
    let var_1 = 4294967295u;
    let var_2 = arg_0;
    return 178f;
}

fn func_2() -> i32 {
    var var_0 = 1806f;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_f32(func_3(692f, Struct_3(Struct_2(Struct_1(118f, vec2<i32>(u_input.b.x, 1i), vec3<u32>(35053u, 0u, 47742u), 2507f, vec4<i32>(-25262i, 0i, u_input.b.x, u_input.b.x)))))), vec2<i32>(0i, u_input.b.x) ^ vec2<i32>(1i, u_input.b.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(abs(1475f)), abs(u_input.b)), vec3<bool>(true, true, true), firstTrailingBit(firstTrailingBit(u_input.b.zy))))), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-29158i, 2147483647i), reverseBits(min(vec2<i32>(u_input.b.x, 1i), u_input.b.yy)), _wgslsmith_mod_vec2_i32(u_input.b.zx, u_input.b.zx)), abs(u_input.b.ww >> (~vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)))), ~reverseBits(vec3<u32>(0u, u_input.a.x, min(72204u, u_input.a.x))), -925f, -(u_input.b & ~_wgslsmith_sub_vec4_i32(u_input.b, u_input.b)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(246f, _wgslsmith_f_op_f32(var_1.d - -185f))), _wgslsmith_f_op_f32(var_1.d + var_1.a)) - 1856f));
    var_0 = _wgslsmith_f_op_f32(var_1.d + _wgslsmith_f_op_f32(-var_1.d));
    var var_2 = vec3<bool>(true, false, true);
    return u_input.b.x;
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: Struct_2) -> Struct_3 {
    var var_0 = 1347f;
    let var_1 = u_input.b.wwz;
    let var_2 = vec4<i32>(~(~(~(-1i))), _wgslsmith_div_i32(u_input.b.x, _wgslsmith_add_i32(_wgslsmith_add_i32(countOneBits(arg_0), 32225i), var_1.x)), arg_2.a.e.x, -arg_2.a.e.x);
    var_0 = -105f;
    var var_3 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_2.a.d, arg_2.a.d), -213f)), -u_input.b.zw << (u_input.a % vec2<u32>(32u)), vec3<u32>(u_input.a.x, abs(u_input.a.x), u_input.a.x), -1511f, _wgslsmith_sub_vec4_i32(-vec4<i32>(-12941i, var_2.x, arg_0, arg_0), ~var_2))));
    return Struct_3(Struct_2(arg_2.a));
}

fn func_1(arg_0: Struct_3, arg_1: f32) -> Struct_3 {
    return func_5(func_2() & ((arg_0.a.a.b.x >> (_wgslsmith_mod_u32(arg_0.a.a.c.x, 19248u) % 32u)) | countOneBits(-arg_0.a.a.b.x)), true, Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(arg_1)), arg_0.a.a.e.xx, arg_0.a.a.c, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_0.a.a.d)))), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.a.a.e.x, arg_0.a.a.e.x, u_input.b.x, arg_0.a.a.b.x), vec4<i32>(arg_0.a.a.b.x, arg_0.a.a.e.x, 27275i, arg_0.a.a.e.x)), u_input.b))));
}

fn func_6(arg_0: Struct_3) -> Struct_1 {
    let var_0 = ~u_input.b.wwx;
    let var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(227f + -142f), arg_0.a.a.a, _wgslsmith_f_op_f32(round(-1947f)), _wgslsmith_f_op_f32(trunc(arg_0.a.a.d))))))));
    let var_2 = !vec2<bool>(!select(true, true, true), (-1i | _wgslsmith_mult_i32(-1i, var_0.x)) <= func_2());
    let var_3 = _wgslsmith_mod_i32(var_0.x, -var_0.x);
    var var_4 = u_input.b.x;
    return func_1(arg_0, -990f).a.a;
}

fn func_7(arg_0: Struct_2, arg_1: u32, arg_2: bool) -> Struct_1 {
    let var_0 = select(select(vec2<bool>(any(vec3<bool>(true, true, true)), any(!vec4<bool>(false, false, arg_2, true))), vec2<bool>(true, true), !select(!vec2<bool>(arg_2, true), !vec2<bool>(true, arg_2), select(vec2<bool>(arg_2, arg_2), vec2<bool>(false, true), arg_2))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), arg_2), vec2<bool>(false, arg_1 < u_input.a.x)), !(!(!vec2<bool>(arg_2, true))), arg_2), select(select(!select(vec2<bool>(arg_2, true), vec2<bool>(arg_2, false), false), select(select(vec2<bool>(arg_2, true), vec2<bool>(false, true), vec2<bool>(arg_2, arg_2)), !vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, true)), select(!vec2<bool>(arg_2, false), vec2<bool>(arg_2, false), !vec2<bool>(false, arg_2))), !select(select(vec2<bool>(arg_2, arg_2), vec2<bool>(false, false), true), select(vec2<bool>(true, arg_2), vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, true)), select(true, arg_2, arg_2)), (u_input.b.x <= 1i) && (false != (arg_1 > u_input.a.x))));
    var var_1 = !(false && (1u >= _wgslsmith_dot_vec4_u32(abs(vec4<u32>(74114u, arg_0.a.c.x, 10683u, u_input.a.x)), vec4<u32>(4294967295u, 32633u, arg_0.a.c.x, arg_1) ^ vec4<u32>(u_input.a.x, 23887u, arg_0.a.c.x, arg_0.a.c.x))));
    var_1 = any(select(select(vec4<bool>(true, true, var_0.x, var_0.x), select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, true, arg_2, true), vec4<bool>(true, arg_2, true, true)), select(vec4<bool>(var_0.x, arg_2, false, var_0.x), vec4<bool>(false, var_0.x, var_0.x, false), false)), !vec4<bool>(true, arg_2, true, true), true)) && !var_0.x;
    var_1 = true && (-firstLeadingBit(~5328i) >= arg_0.a.e.x);
    var var_2 = var_0.x;
    return Struct_1(-955f, reverseBits(u_input.b.zy) | func_5(_wgslsmith_div_i32(_wgslsmith_mult_i32(25665i, u_input.b.x), -2147483647i), true, func_5(-1835i, arg_2, Struct_2(Struct_1(989f, vec2<i32>(33751i, arg_0.a.e.x), vec3<u32>(24154u, 4294967295u, 7889u), 925f, vec4<i32>(2147483647i, u_input.b.x, 2147483647i, arg_0.a.e.x)))).a).a.a.e.ww, arg_0.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(725f, _wgslsmith_f_op_f32(f32(-1f) * -449f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(447f))))), vec4<i32>(-arg_0.a.b.x, -(firstTrailingBit(arg_0.a.b.x) | 1i), 2147483647i, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_7(Struct_2(func_6(func_1(Struct_3(Struct_2(Struct_1(1336f, vec2<i32>(0i, -2147483647i), vec3<u32>(4294967295u, 13778u, u_input.a.x), -736f, vec4<i32>(-2147483647i, u_input.b.x, -58092i, u_input.b.x)))), 718f))), ~(~34850u), all(select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), true))));
    let var_1 = func_5(_wgslsmith_mod_i32(func_7(var_0, 16893u, true).b.x, u_input.b.x), !any(vec4<bool>(true, true, true, true)) && all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true)))), var_0).a.a.c;
    var var_2 = Struct_3(Struct_2(func_6(func_1(Struct_3(Struct_2(var_0.a)), _wgslsmith_f_op_f32(-var_0.a.a)))));
    let var_3 = _wgslsmith_sub_u32(u_input.a.x, abs(var_0.a.c.x)) >> (abs(var_0.a.c.x) % 32u);
    var_2 = func_5(-2460i, true, func_5(-44737i, false, var_0).a);
    let var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-693f, _wgslsmith_f_op_f32(var_0.a.a + var_2.a.a.d), _wgslsmith_f_op_f32(func_7(var_2.a, var_2.a.a.c.x, false).d + var_0.a.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.d), _wgslsmith_f_op_f32(f32(-1f) * -1942f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-469f, 1000f, var_0.a.d, var_2.a.a.d), vec4<f32>(-432f, var_0.a.d, var_2.a.a.d, var_0.a.d), true)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1319f, var_2.a.a.a, -1090f, 910f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.d, 338f, var_0.a.d, 599f) * vec4<f32>(var_0.a.d, -207f, var_0.a.a, -554f))))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.a.a.d))), _wgslsmith_f_op_f32(func_4(func_6(Struct_3(var_0)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), ~vec2<i32>(-6471i, u_input.b.x) >> (var_2.a.a.c.yy % vec2<u32>(32u)))), _wgslsmith_f_op_f32(func_4(var_0.a, vec3<bool>(true, true, true), ~u_input.b.wx ^ u_input.b.xy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_7(Struct_2(Struct_1(-1142f, var_2.a.a.b, vec3<u32>(62908u, 1158u, 27212u), var_0.a.d, vec4<i32>(var_0.a.e.x, 0i, var_0.a.e.x, u_input.b.x))), var_0.a.c.x, true).d))), true));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.www, select(-var_2.a.a.b.x, -func_6(func_1(Struct_3(Struct_2(var_2.a.a)), var_0.a.a)).b.x, !all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))), var_4.zzx, -49611i);
}

