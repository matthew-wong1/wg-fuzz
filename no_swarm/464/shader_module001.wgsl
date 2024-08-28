struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_4,
    c: vec4<i32>,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_4) -> f32 {
    let var_0 = 0u;
    var var_1 = i32(-1i) * -44354i;
    let var_2 = arg_0;
    var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.a, 1i), vec3<i32>(2147483647i, u_input.a, u_input.a)), ~(~vec3<i32>(u_input.b, u_input.a, 5297i))), abs(~vec3<i32>(22593i, u_input.a, -2360i))), firstTrailingBit(max(-vec3<i32>(-11959i, 0i, -32928i), ~firstLeadingBit(vec3<i32>(u_input.b, 1i, u_input.a)))));
    let var_3 = Struct_1(_wgslsmith_add_i32(_wgslsmith_add_i32(~0i | select(u_input.a, u_input.a, true), _wgslsmith_div_i32(u_input.a, _wgslsmith_clamp_i32(-3915i, -4420i, u_input.b))), u_input.a));
    return -1656f;
}

fn func_2(arg_0: Struct_4) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(func_3(Struct_4(countOneBits(~8015u), Struct_2(arg_0.b.a))));
    var_0 = arg_0.b.a;
    var_0 = arg_0.b.a;
    var var_1 = abs(countOneBits(-6528i));
    let var_2 = _wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.a, _wgslsmith_sub_i32(u_input.b, firstTrailingBit(0i))), vec2<i32>(1i, u_input.a));
    return Struct_4(~max(16497u, ~(~6086u)), arg_0.b);
}

fn func_1(arg_0: Struct_4) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(abs(arg_0.b.a));
    let var_1 = func_2(Struct_4(_wgslsmith_add_u32(~(~2838u), arg_0.a), arg_0.b));
    var_0 = var_1.b.a;
    var var_2 = var_1.b;
    var_2 = func_2(func_2(Struct_4(0u, arg_0.b))).b;
    return Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1637f), Struct_1(-1i), arg_0.b, select(vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, true), false)), all(vec4<bool>(false, true, false, false)), true), select(select(vec3<bool>(false, false, false), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), vec3<bool>(all(vec2<bool>(true, true)), true, true)));
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> Struct_5 {
    let var_0 = !vec2<bool>(select(arg_0.d.x, all(vec4<bool>(true, true, true, true)), true), !arg_0.d.x);
    let var_1 = select(select(vec2<bool>(!arg_0.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, 2147483647i, -2147483647i, 11486i), vec4<i32>(0i, 1i, -1i, arg_0.b.a)) >= abs(2147483647i)), !select(func_1(Struct_4(28190u, arg_0.c)).d.yx, !arg_0.d.zy, var_0), var_0.x & false), arg_0.d.zx, any(!(!vec4<bool>(var_0.x, true, true, true))));
    var var_2 = Struct_1(~(-7146i));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(floor(arg_0.a)));
    var_2 = arg_0.b;
    return Struct_5(vec3<f32>(366f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1330f) - arg_0.a)), _wgslsmith_f_op_f32(-2293f - var_3.a)), Struct_4(1u | _wgslsmith_dot_vec4_u32(~vec4<u32>(19959u, 29936u, 34968u, 52742u), ~vec4<u32>(2007u, 51391u, 81148u, 1u)), func_2(Struct_4(~4294967295u, arg_0.c)).b), (min(~vec4<i32>(var_2.a, 37324i, var_2.a, -2684i), ~vec4<i32>(2147483647i, arg_1, -1i, -8241i)) & vec4<i32>(_wgslsmith_div_i32(2147483647i, var_2.a), abs(1i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a, arg_1), vec2<i32>(0i, u_input.a)), -u_input.b)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -1i, -arg_1, ~(-1i), arg_0.b.a), vec4<i32>(firstTrailingBit(arg_1), arg_0.b.a, abs(-2147483647i), 1i)), -_wgslsmith_mod_vec2_i32(max(firstLeadingBit(vec2<i32>(3987i, u_input.a)), _wgslsmith_add_vec2_i32(vec2<i32>(15019i, 0i), vec2<i32>(var_2.a, -54239i))), reverseBits(vec2<i32>(-1i, arg_0.b.a)) >> (vec2<u32>(44690u, 83482u) % vec2<u32>(32u))), !(var_0.x & all(vec4<bool>(true, var_0.x, true, false))));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_1, arg_2: vec2<u32>) -> bool {
    let var_0 = arg_1;
    let var_1 = 51878u;
    var var_2 = arg_1.a;
    var_2 = _wgslsmith_clamp_i32(0i, var_0.a, ~_wgslsmith_mult_i32(1i & -u_input.a, u_input.a));
    var_2 = _wgslsmith_clamp_i32(-abs(_wgslsmith_mod_i32(-u_input.b, ~arg_1.a)), -2147483647i, _wgslsmith_mod_i32(arg_1.a, -5706i));
    return !(!all(select(vec4<bool>(true, arg_0.e, arg_0.e, arg_0.e), vec4<bool>(true, true, true, true), arg_0.e)));
}

fn func_6(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: Struct_4) -> Struct_2 {
    let var_0 = func_1(Struct_4(arg_1, Struct_2(func_2(func_4(Struct_3(-562f, Struct_1(u_input.a), Struct_2(arg_3.b.a), vec3<bool>(false, true, true)), arg_2).b).b.a))).d;
    var var_1 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_clamp_u32(9951u, 4294967295u, 29146u), arg_3.a << (36638u % 32u), _wgslsmith_sub_u32(arg_1, 6700u)), ~(~firstLeadingBit(vec3<u32>(12292u, 24837u, 1u)))), 72515u);
    return Struct_2(-217f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1297f)) * _wgslsmith_f_op_f32(f32(-1f) * -441f)), 1f, func_5(func_4(func_1(Struct_4(6828u, Struct_2(2246f))), _wgslsmith_clamp_i32(u_input.a, 35910i, 0i)), func_1(Struct_4(1u, Struct_2(797f))).b, ~vec2<u32>(1u, 1u)))), ~func_2(func_4(func_1(Struct_4(0u, Struct_2(348f))), u_input.b).b).a, u_input.a, Struct_4(1u, func_4(Struct_3(_wgslsmith_f_op_f32(1930f * -2132f), Struct_1(u_input.b), func_1(Struct_4(8111u, Struct_2(387f))).c, select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), -1i).b.b));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), var_0.a)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1333f + 374f))));
    var_1 = -772f;
    let var_2 = func_4(Struct_3(-1000f, Struct_1(~53474i), var_0, vec3<bool>(func_1(Struct_4(26517u, Struct_2(1656f))).d.x, any(vec2<bool>(true, true)), false)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, u_input.a), vec2<i32>(46245i, 1i)), 8529i, u_input.b), ~firstLeadingBit(~vec3<i32>(u_input.a, -7020i, 36196i)))).b;
    var_1 = _wgslsmith_div_f32(var_2.b.a, _wgslsmith_div_f32(-1000f, var_2.b.a));
    var_1 = 166f;
    let var_3 = func_2(Struct_4(~(~1u) << ((_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a, var_2.a, var_2.a, var_2.a), vec4<u32>(14130u, 1u, 0u, var_2.a)) ^ var_2.a) % 32u), Struct_2(_wgslsmith_f_op_f32(step(596f, -1246f)))));
    var var_4 = all(vec4<bool>(true, false, any(vec3<bool>(all(vec3<bool>(true, true, false)), false, true)), !(!all(vec3<bool>(true, false, false)))));
    var var_5 = vec3<u32>(1093u, firstLeadingBit(abs(~42842u)), firstTrailingBit(_wgslsmith_clamp_u32(func_2(var_3).a, var_2.a, ~var_2.a))) >> (~_wgslsmith_add_vec3_u32(countOneBits(max(vec3<u32>(var_3.a, 90156u, var_2.a), vec3<u32>(var_2.a, 40100u, 4294967295u))), min(min(vec3<u32>(0u, var_3.a, var_3.a), vec3<u32>(var_2.a, var_2.a, 4294967295u)), vec3<u32>(0u, 0u, 23214u) >> (vec3<u32>(9369u, 43580u, var_3.a) % vec3<u32>(32u)))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_4(4294967295u, var_2.b))) + var_3.b.a));
}

