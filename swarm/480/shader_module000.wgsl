struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: Struct_3,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 24>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = select(vec2<bool>(!(u_input.c.x >= 2147483647i), !(60557i < select(arg_2.c.x, arg_2.a, false))), vec2<bool>(true && !any(vec3<bool>(false, false, true)), true || all(vec2<bool>(true, true))), !(!select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, false), vec2<bool>(false, true))));
    var var_1 = arg_1.a;
    var var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(~arg_1.d.x, _wgslsmith_mod_u32(1u, u_input.d.x)), vec2<u32>(arg_0, 1u) | abs(_wgslsmith_clamp_vec2_u32(u_input.d.yz, vec2<u32>(arg_1.d.x, u_input.d.x), arg_2.d.xx))), ~(select(vec2<u32>(arg_1.d.x, u_input.d.x), vec2<u32>(u_input.d.x, arg_1.d.x), var_0) & abs(vec2<u32>(4294967295u, 59328u))) & ~vec2<u32>(abs(u_input.d.x), 7537u & arg_0));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.x, 1501f, 741f) + vec3<f32>(arg_2.b.x, 393f, -1963f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-199f, arg_2.b.x, -174f) + vec3<f32>(1000f, arg_1.b.x, 420f))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2.b.x, 287f, arg_1.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1643f, 390f, 1241f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1030f, -523f, arg_1.b.x)), vec3<f32>(arg_2.b.x, -2367f, -974f), arg_0 >= 42980u)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, arg_2.b.x, -1499f))), !(!(!vec3<bool>(var_0.x, var_0.x, var_0.x))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.x * arg_1.b.x)), _wgslsmith_div_f32(-2088f, _wgslsmith_f_op_f32(f32(-1f) * -890f)), _wgslsmith_f_op_f32(-arg_2.b.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, 229f, _wgslsmith_f_op_f32(arg_2.b.x + -1013f)))));
    global0 = array<vec2<i32>, 24>();
    return _wgslsmith_f_op_f32(f32(-1f) * -817f);
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: bool, arg_3: vec3<bool>) -> i32 {
    var var_0 = arg_3.yx;
    var_0 = arg_3.yz;
    var var_1 = Struct_4(_wgslsmith_clamp_vec2_i32((vec2<i32>(-1i) * -vec2<i32>(arg_0, -48790i)) << (u_input.d.yx % vec2<u32>(32u)), firstTrailingBit(_wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.b.x, u_input.c.x), vec2<i32>(1i, u_input.c.x))), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(max(vec2<i32>(arg_0, -2186i), u_input.b.xx), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, 1i), u_input.b.yz)), -vec2<i32>(-1i, u_input.a) << ((vec2<u32>(arg_1.x, u_input.d.x) >> (vec2<u32>(u_input.d.x, 0u) % vec2<u32>(32u))) % vec2<u32>(32u)))), Struct_1(arg_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(u_input.d.x, Struct_1(55752i, vec2<f32>(-917f, 1147f), vec4<i32>(arg_0, 24953i, arg_0, 1i), vec3<u32>(17291u, u_input.d.x, 23404u)), Struct_1(arg_0, vec2<f32>(-747f, 772f), vec4<i32>(arg_0, u_input.c.x, 1i, -28272i), arg_1.www))), 396f)), vec4<i32>(-17996i, -14386i, arg_0, 2750i) | vec4<i32>(~(-2147483647i), 1i, arg_0 >> (1u % 32u), 0i >> (arg_1.x % 32u)), vec3<u32>(u_input.d.x & min(u_input.d.x, 4294967295u), u_input.d.x, 1u)));
    let var_2 = vec4<bool>(true, var_0.x, all(vec2<bool>(!arg_2, arg_3.x)), all(select(arg_3, vec3<bool>(any(arg_3.yy), all(arg_3.yx), false), !(!arg_3))));
    var var_3 = var_1.b.b.x;
    return ~0i;
}

fn func_1(arg_0: Struct_1) -> Struct_4 {
    var var_0 = Struct_2(Struct_1(~func_2(1i, vec4<u32>(arg_0.d.x, arg_0.d.x, 30254u, 58995u), true, vec3<bool>(true, true, true)), vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(func_3(firstLeadingBit(u_input.d.x), arg_0, Struct_1(-2147483647i, arg_0.b, vec4<i32>(u_input.b.x, -2147483647i, 0i, arg_0.c.x), vec3<u32>(u_input.d.x, u_input.d.x, 20412u))))), arg_0.c, ~(~(~arg_0.d))), arg_0, Struct_1(~_wgslsmith_mult_i32(u_input.a, 1i) >> (arg_0.d.x % 32u), arg_0.b, -min(arg_0.c & vec4<i32>(-1i, -1i, u_input.a, -1i), vec4<i32>(arg_0.a, arg_0.a, 2147483647i, 1i)), abs(min(abs(vec3<u32>(1u, arg_0.d.x, 45704u)), _wgslsmith_mult_vec3_u32(arg_0.d, arg_0.d)))), min(_wgslsmith_clamp_i32(max(u_input.c.x, arg_0.a), -2147483647i, -1i), func_2(_wgslsmith_mod_i32(select(u_input.b.x, 0i, false), -35202i), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 0u, 7834u, 21558u), vec4<u32>(4294967295u, 0u, u_input.d.x, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.d.x, 28097u, 4294967295u, 0u), vec4<u32>(arg_0.d.x, 168u, u_input.d.x, 0u))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), vec3<bool>(true, true, true))), arg_0);
    var var_1 = Struct_5(select(var_0.a.c.xwx, -(~_wgslsmith_mod_vec3_i32(var_0.b.c.zzz, arg_0.c.wxx)), false), vec2<bool>(true, false), Struct_3(Struct_2(Struct_1(u_input.a, _wgslsmith_f_op_vec2_f32(arg_0.b - vec2<f32>(arg_0.b.x, -996f)), vec4<i32>(1i, u_input.c.x, u_input.a, u_input.b.x), var_0.a.d ^ var_0.e.d), Struct_1(-30410i, arg_0.b, var_0.a.c, ~vec3<u32>(var_0.c.d.x, 0u, arg_0.d.x)), var_0.a, ~abs(-1i), arg_0)), Struct_4(~(_wgslsmith_mod_vec2_i32(u_input.b.xy, u_input.c.zz) << (vec2<u32>(1u, 37455u) % vec2<u32>(32u))), Struct_1(-(var_0.a.c.x & arg_0.c.x), vec2<f32>(var_0.c.b.x, _wgslsmith_f_op_f32(exp2(var_0.c.b.x))), ~abs(var_0.a.c), ~(~vec3<u32>(arg_0.d.x, 20982u, var_0.b.d.x)))));
    let var_2 = vec2<u32>(~(~58689u), 93101u);
    let var_3 = var_1.c.a;
    var var_4 = all(select(vec3<bool>(!(var_2.x >= arg_0.d.x), false, true), vec3<bool>(!(var_1.b.x || var_1.b.x), ~6142u <= u_input.d.x, var_1.b.x), vec3<bool>(false, var_1.b.x, var_1.b.x)));
    return Struct_4(global0[_wgslsmith_index_u32(min(0u, firstLeadingBit(arg_0.d.x)), 24u)], Struct_1(var_1.a.x, var_0.e.b, -_wgslsmith_div_vec4_i32(var_0.c.c, -vec4<i32>(6583i, u_input.b.x, -38876i, arg_0.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(~0u, 1u, 39459u), ~var_3.a.d)));
}

fn func_4(arg_0: Struct_4, arg_1: bool) -> Struct_3 {
    let var_0 = select(!vec3<bool>(any(!vec2<bool>(arg_1, true)), select(u_input.c.x, 50419i, arg_1) >= -30976i, _wgslsmith_sub_i32(-52230i, arg_0.b.c.x) <= -26031i), vec3<bool>(any(!vec4<bool>(arg_1, true, false, arg_1)), all(vec2<bool>(any(vec3<bool>(true, arg_1, arg_1)), any(vec2<bool>(true, true)))), all(select(vec4<bool>(arg_1, arg_1, arg_1, false), select(vec4<bool>(true, false, false, arg_1), vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(false, arg_1, false, false)), arg_1))), select(select(select(select(vec3<bool>(false, false, arg_1), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, true, arg_1)), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, arg_1, false)), -771f >= arg_0.b.b.x), !vec3<bool>(arg_1, arg_1, true), select(arg_1, false, false) == (false || arg_1)), !vec3<bool>(arg_1, true, false), vec3<bool>(arg_1, any(vec4<bool>(true, true, true, arg_1)) && (false || arg_1), all(vec3<bool>(arg_1, true, false)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.b.x, 1045f) - vec2<f32>(arg_0.b.b.x, arg_0.b.b.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 853f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0.b.b, arg_0.b.b, arg_1))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0.b.b, arg_0.b.b)))))));
    var var_2 = arg_0.b.d.x;
    var var_3 = min((~(~vec3<u32>(arg_0.b.d.x, 58154u, arg_0.b.d.x)) | _wgslsmith_mod_vec3_u32(u_input.d, u_input.d ^ arg_0.b.d)) ^ arg_0.b.d, ~countOneBits(~vec3<u32>(arg_0.b.d.x, 0u, 0u)) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.b.d.x, 129324u, 43748u), vec3<u32>(u_input.d.x, 8225u, u_input.d.x)), ~firstTrailingBit(vec3<u32>(6394u, 1u, 28744u))) % vec3<u32>(32u)));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0.b.b.x, arg_0.b.b.x)), _wgslsmith_f_op_f32(-arg_0.b.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(82688u, arg_0.b, Struct_1(-2147483647i, vec2<f32>(var_1.x, 261f), arg_0.b.c, arg_0.b.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -141f) - _wgslsmith_f_op_f32(ceil(-1196f)))))));
    return Struct_3(Struct_2(func_1(arg_0.b).b, func_1(arg_0.b).b, func_1(func_1(func_1(arg_0.b).b).b).b, arg_0.b.c.x, Struct_1(~u_input.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(413f, var_1.x))), -(~vec4<i32>(arg_0.a.x, u_input.c.x, -10384i, 0i)), ~abs(vec3<u32>(u_input.d.x, arg_0.b.d.x, var_3.x)))));
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = ~(_wgslsmith_mod_vec3_u32(arg_2.b.d, ~select(u_input.d, arg_2.a.d, vec3<bool>(false, true, true))) | ~func_1(arg_1.a.a).b.d);
    var var_1 = Struct_5(abs(vec3<i32>(arg_2.d, max(_wgslsmith_div_i32(-32891i, arg_0), -2147483647i), _wgslsmith_div_i32(-1i, ~27893i))), select(!vec2<bool>(true, any(vec2<bool>(false, false))), !select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true))), any(vec4<bool>(false, false, false, false)) | true), Struct_3(func_4(func_1(func_4(Struct_4(vec2<i32>(-10459i, -2147483647i), arg_1.a.b), true).a.c), any(vec4<bool>(true, true, true, true))).a), func_1(Struct_1(_wgslsmith_mod_i32(arg_0, countOneBits(-2147483647i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.c.b.x, arg_1.a.e.b.x)), arg_2.c.c, _wgslsmith_clamp_vec3_u32(~vec3<u32>(29617u, arg_2.b.d.x, var_0.x), select(u_input.d, vec3<u32>(arg_1.a.a.d.x, arg_2.e.d.x, 9853u), true), _wgslsmith_mult_vec3_u32(arg_1.a.e.d, vec3<u32>(arg_1.a.a.d.x, arg_1.a.b.d.x, 27421u))))));
    var var_2 = arg_1.a.b.d;
    let var_3 = _wgslsmith_mult_vec2_u32(~_wgslsmith_div_vec2_u32(var_2.zz, arg_1.a.b.d.xz), ~((~vec2<u32>(var_1.d.b.d.x, var_0.x) << (~vec2<u32>(80276u, 4294967295u) % vec2<u32>(32u))) | (countOneBits(var_2.yy) << (_wgslsmith_div_vec2_u32(u_input.d.zy, arg_2.e.d.xy) % vec2<u32>(32u)))));
    global0 = array<vec2<i32>, 24>();
    return !vec4<bool>(var_1.b.x, _wgslsmith_f_op_f32(max(1311f, _wgslsmith_f_op_f32(arg_1.a.a.b.x + var_1.d.b.b.x))) <= -431f, true, var_1.d.b.b.x <= arg_1.a.c.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 24>();
    var var_0 = !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), any(vec2<bool>(true, true)));
    var_0 = !select(func_5(u_input.c.x, func_4(func_1(Struct_1(-32664i, vec2<f32>(368f, -337f), vec4<i32>(-280i, u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.d.x, 3217u, u_input.d.x))), any(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), func_4(func_1(Struct_1(-9086i, vec2<f32>(1000f, -299f), vec4<i32>(u_input.a, -2147483647i, u_input.b.x, u_input.a), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x))), false || var_0.x).a), func_5(func_4(Struct_4(vec2<i32>(u_input.b.x, -19051i), Struct_1(-2147483647i, vec2<f32>(1225f, -1000f), vec4<i32>(0i, u_input.c.x, u_input.b.x, 23082i), u_input.d)), true).a.e.a, Struct_3(func_4(Struct_4(global0[_wgslsmith_index_u32(u_input.d.x, 24u)], Struct_1(38825i, vec2<f32>(-1000f, 197f), vec4<i32>(u_input.b.x, -1i, u_input.c.x, u_input.b.x), vec3<u32>(u_input.d.x, 1u, u_input.d.x))), false).a), func_4(func_1(Struct_1(u_input.a, vec2<f32>(1000f, 1000f), vec4<i32>(u_input.c.x, -5036i, 1i, -49066i), u_input.d)), var_0.x).a), !select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, false, var_0.x, true), any(vec2<bool>(var_0.x, var_0.x))));
    let var_1 = -64086i;
    global0 = array<vec2<i32>, 24>();
    var var_2 = func_4(func_1(func_1(func_4(func_1(Struct_1(var_1, vec2<f32>(2065f, 1269f), vec4<i32>(var_1, 1620i, var_1, u_input.c.x), u_input.d)), all(vec4<bool>(true, true, var_0.x, var_0.x))).a.b).b), true).a.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -106f))), 37829i, ~u_input.b.yx, -512f);
}

