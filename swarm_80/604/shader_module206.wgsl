struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<bool>) -> vec3<bool> {
    return arg_1.wxz;
}

fn func_2(arg_0: f32, arg_1: vec3<f32>) -> bool {
    global0 = vec3<u32>(1u, 36655u, 0u);
    let var_0 = select(select(!vec3<bool>(true, true, u_input.a <= 1u), !vec3<bool>(select(true, true, false), true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), !func_3(vec4<f32>(arg_1.x, -1346f, 805f, 741f), vec4<bool>(true, true, true, false)), true)), !select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true))));
    var var_1 = Struct_2(1716f, -(-9430i & select(-28355i, countOneBits(u_input.c), false)));
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~global0.yx, global0.xy & ~global0.xz) & u_input.a, ~4294967295u ^ u_input.b);
    let var_3 = arg_1.x;
    return any(vec3<bool>(any(vec2<bool>(var_0.x, !var_0.x)), !(!var_0.x), !select(true, true, true)));
}

fn func_4(arg_0: u32) -> Struct_4 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(365f, 1745f, 158f, 876f) + vec4<f32>(-308f, 1000f, -181f, -248f)) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(168f, -1353f, 849f, -554f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1182f, 194f, 1826f, -907f) - vec4<f32>(-230f, -862f, 1045f, 237f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f))) - vec4<f32>(_wgslsmith_f_op_f32(897f * 921f), -909f, _wgslsmith_f_op_f32(min(801f, 129f)), _wgslsmith_f_op_f32(f32(-1f) * -1061f))))), Struct_1(reverseBits(select(vec4<u32>(arg_0, u_input.a, u_input.b, u_input.a), vec4<u32>(arg_0, global0.x, 25425u, 1u), vec4<bool>(true, true, false, true))) | ~vec4<u32>(global0.x, 4294967295u, 1u, arg_0), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1212f, -435f, -1001f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1864f, -379f, -3329f))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1312f, -724f, 373f)))), func_3(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-935f, -248f, -1610f, 799f), vec4<f32>(181f, 536f, -916f, 893f))), vec4<bool>(true, true, true, true)).x)), 2147483647i), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1248f - 224f)), _wgslsmith_f_op_f32(f32(-1f) * -434f)), -u_input.c));
    var var_1 = Struct_3(Struct_1(~vec4<u32>(~0u, ~280u, abs(arg_0), 24339u), var_0.a.yxw, -2718i), var_0.c);
    var var_2 = func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_0.a, var_0.a, false))) - var_0.a) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(var_0.a)), var_0.a))), !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false))), vec4<bool>(select(true, true, true), all(vec3<bool>(true, false, false)), true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), true)));
    let var_3 = select(vec3<bool>(any(!select(vec2<bool>(var_2.x, var_2.x), var_2.zx, true)), false, false), vec3<bool>(!(!(var_2.x || var_2.x)), var_2.x, true), func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1042f, var_0.a.x, _wgslsmith_f_op_f32(-var_0.c.a), _wgslsmith_f_op_f32(-var_1.a.b.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-773f, var_1.b.a, -419f, var_1.a.b.x))), !(!vec4<bool>(var_2.x, false, var_2.x, false))));
    var var_4 = var_2.xx;
    return Struct_4(vec4<f32>(var_1.a.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.b.a))))), _wgslsmith_f_op_f32(-862f - _wgslsmith_f_op_f32(var_1.b.a - var_1.a.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -381f) * _wgslsmith_f_op_f32(ceil(672f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.a - var_1.b.a) - 1f))), Struct_1(min(~var_1.a.a, var_0.b.a), var_0.b.b, _wgslsmith_dot_vec3_i32(abs(~vec3<i32>(2147483647i, u_input.c, u_input.c)), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, 38095i, var_1.a.c), ~vec3<i32>(10661i, var_1.b.b, u_input.c)))), Struct_2(var_0.a.x, var_0.b.c));
}

fn func_1(arg_0: f32) -> Struct_4 {
    var var_0 = func_4(_wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(23629u, 22498u, global0.x))), select(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 40064u, global0.x) ^ vec3<u32>(16445u, global0.x, 1u), vec3<u32>(28405u, global0.x, u_input.b)), vec3<u32>(_wgslsmith_mod_u32(44715u, u_input.b), _wgslsmith_clamp_u32(u_input.a, 1u, 1u), _wgslsmith_div_u32(global0.x, 3292u)), vec3<bool>(true, true, func_2(arg_0, vec3<f32>(-1204f, arg_0, arg_0))))));
    let var_1 = vec4<bool>(true, true, true, true);
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.b.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-284f, var_0.a.x) + -1000f)))) != _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-var_0.c.a))));
    let var_3 = vec4<i32>(-1i) * -(~select(vec4<i32>(u_input.c, -39749i, 0i, 64457i), ~vec4<i32>(var_0.b.c, u_input.c, var_0.c.b, -1i), vec4<bool>(var_1.x, false, var_1.x, false)));
    var var_4 = false;
    return func_4(0u);
}

fn func_5(arg_0: i32, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec2<i32>) -> u32 {
    var var_0 = abs(abs((35413u >> (global0.x % 32u)) | global0.x) << (37043u % 32u));
    var_0 = _wgslsmith_mod_u32(u_input.b, _wgslsmith_dot_vec3_u32(~select(vec3<u32>(arg_1.b.a.x, 70338u, u_input.a), arg_1.b.a.xxz, all(vec3<bool>(true, false, true))), _wgslsmith_add_vec3_u32(abs(vec3<u32>(global0.x, arg_1.b.a.x, 4294967295u)), reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, u_input.a), arg_1.b.a.wxy)))));
    var var_1 = ~arg_1.b.a.x;
    var var_2 = Struct_4(arg_1.a, func_1(arg_1.a.x).b, func_4(u_input.b).c);
    var_2 = func_1(_wgslsmith_f_op_f32(-1f));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(53491u, 17068u);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(813f))))), firstLeadingBit(~(-15925i)));
    let var_2 = vec4<u32>(var_0.x, ~(1u ^ (~global0.x ^ _wgslsmith_mult_u32(44941u, 26679u))), func_5(max(~u_input.c, -4264i), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))), func_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f)).c, ~((vec2<i32>(var_1.b, 22612i) & vec2<i32>(-14468i, 1i)) | ~vec2<i32>(0i, 2147483647i))), ~global0.x);
    global0 = _wgslsmith_sub_vec3_u32(abs(_wgslsmith_add_vec3_u32(min(var_2.zww, vec3<u32>(var_2.x, 16464u, 1u)), ~var_2.wzw)) | _wgslsmith_mult_vec3_u32(~func_1(-451f).b.a.ywy, var_2.wwy & (var_2.xzz >> (var_2.xyz % vec3<u32>(32u)))), var_2.wxx);
    var var_3 = Struct_1(~vec4<u32>(firstTrailingBit(0u), ~1u, global0.x, ~_wgslsmith_mod_u32(7887u, u_input.a)), _wgslsmith_f_op_vec3_f32(-func_4(~(~34989u)).a.xyz), _wgslsmith_add_i32(1i, _wgslsmith_dot_vec2_i32(select(firstLeadingBit(vec2<i32>(2147483647i, u_input.c)), vec2<i32>(var_1.b, 1i), false), _wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(24563i, 1i)), _wgslsmith_mult_vec2_i32(vec2<i32>(-7464i, 4512i), vec2<i32>(var_1.b, 0i))))));
    var_3 = func_1(var_3.b.x).b;
    let var_4 = select(vec3<bool>(false, false, false), select(vec3<bool>(false, any(vec3<bool>(true, true, true)), !(4294967295u < global0.x)), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false)), !(var_1.a > -111f) != false), !any(!func_3(vec4<f32>(1078f, var_3.b.x, var_3.b.x, -1507f), vec4<bool>(false, false, true, false)).xz));
    var var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~u_input.c, -1i, countOneBits(func_4(_wgslsmith_div_u32(1u, 1u)).b.c), 1i), select(vec3<i32>(1i ^ (0i >> (var_0.x % 32u)), u_input.c, var_3.c), ~vec3<i32>(var_3.c, -8133i, -1i) | ~_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 2147483647i, u_input.c), vec3<i32>(2147483647i, 1i, var_1.b)), !select(!var_4, var_4, func_3(vec4<f32>(-162f, -780f, -372f, -860f), vec4<bool>(true, false, false, true)))), select(select(vec2<u32>(var_0.x, 4294967295u) << (var_3.a.xz % vec2<u32>(32u)), vec2<u32>(0u, ~1u), !var_4.yz), vec2<u32>(~3257u, var_2.x), var_3.b.x < var_1.a));
}

