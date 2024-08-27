struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<f32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(4294967295u, Struct_1(vec4<f32>(846f, 449f, 592f, -821f)), false, true);

var<private> global1: bool = false;

var<private> global2: i32 = -1i;

var<private> global3: array<Struct_3, 7>;

var<private> global4: vec2<f32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> vec2<f32> {
    global0 = Struct_2(10158u, global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.a.x + 1228f) * global0.b.a.x)) <= global4.x, true);
    global0 = Struct_2(1u, Struct_1(global0.b.a), global0.d, -u_input.a <= (i32(-1i) * -_wgslsmith_clamp_i32(u_input.a, -39400i, u_input.a)));
    var var_0 = Struct_2(reverseBits(0u ^ u_input.b.x), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-399f, _wgslsmith_f_op_f32(-global0.b.a.x), _wgslsmith_f_op_f32(sign(global4.x)), _wgslsmith_f_op_f32(global0.b.a.x * global4.x)))), global0.d, global0.c);
    global0 = Struct_2(_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b.wyy, vec3<u32>(47412u, 1u, 4294967295u)), u_input.b.xyx & u_input.b.wxz), 16402u), ~(~var_0.a ^ 34103u)), var_0.b, true, true);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-383f + _wgslsmith_f_op_f32(-global4.x)), var_0.b.a.x, -2038f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(453f - 1000f) * _wgslsmith_f_op_f32(var_0.b.a.x - 702f)))));
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-569f)), _wgslsmith_f_op_f32(-var_1.x))), var_1.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.b.a.x, -2028f)) - _wgslsmith_f_op_f32(f32(-1f) * -501f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.b.a.x - 831f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global0.b.a.zy)), var_1.xz)));
}

fn func_3() -> vec2<f32> {
    let var_0 = u_input.b.x;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-379f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.a.x - global4.x) - 186f), 397f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -115f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(549f, global0.b.a.x, 502f, global0.b.a.x)))));
    global3 = array<Struct_3, 7>();
    var var_2 = global3[_wgslsmith_index_u32(16502u, 7u)];
    var var_3 = var_2.a.d;
    return _wgslsmith_f_op_vec2_f32(-var_2.a.b.a.xw);
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: bool) -> Struct_3 {
    global1 = arg_2;
    let var_0 = vec3<u32>(~((1u & u_input.b.x) >> (max(arg_0.a.a, 53496u) % 32u)) >> (u_input.b.x % 32u), ~arg_0.a.a, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_0.a.a, global0.a, arg_1), abs(vec4<u32>(0u, global0.a, 1u, 0u))) & ~arg_0.a.a, _wgslsmith_mult_u32(4294967295u, global0.a)));
    global4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_0.a.b.a.zx + _wgslsmith_f_op_vec2_f32(func_2())), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_3()))), arg_2))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global4.x)))), 1f));
    let var_1 = Struct_3(arg_0.a);
    var var_2 = Struct_3(Struct_2(741u, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-363f, -1446f, 549f, global0.b.a.x) - global0.b.a) + _wgslsmith_f_op_vec4_f32(max(var_1.a.b.a, arg_0.a.b.a)))), any(select(!vec2<bool>(false, arg_0.a.d), vec2<bool>(global0.c, var_1.a.d), !global0.d)), arg_2));
    return Struct_3(Struct_2(arg_0.a.a, Struct_1(vec4<f32>(1039f, 308f, arg_0.a.b.a.x, _wgslsmith_div_f32(-504f, global4.x))), !all(select(vec3<bool>(var_1.a.d, arg_2, var_2.a.c), vec3<bool>(var_1.a.c, false, true), vec3<bool>(var_1.a.d, arg_0.a.d, global0.c))), global0.d));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_4, arg_3: vec4<bool>) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-func_1(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(arg_1.a.a, 0u, 4294967295u, arg_0.x)), 7u)], _wgslsmith_div_u32(1u, global0.a & 18665u), _wgslsmith_f_op_f32(round(1000f)) > 375f).a.b.a.xy) + arg_1.a.b.a.ww);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global4.x, global4.x), vec2<f32>(global0.b.a.x, 426f))), _wgslsmith_f_op_vec2_f32(round(global0.b.a.yx)))) - _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, global0.a, global0.a, u_input.b.x), _wgslsmith_add_vec4_u32(vec4<u32>(global0.a, u_input.b.x, 0u, u_input.b.x), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x)), ~vec4<u32>(u_input.b.x, 0u, u_input.b.x, global0.a)), func_1(global3[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 7u)], ~1u, true), Struct_4(-vec4<i32>(0i, 0i, 12009i, u_input.a), min(u_input.a, 0i), abs(vec4<i32>(-1i, -1i, u_input.a, 2241i)), vec2<f32>(global4.x, -766f), countOneBits(u_input.a)), !(!vec4<bool>(global0.d, false, true, false))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global0.b.a.wz)) - _wgslsmith_f_op_vec2_f32(-global0.b.a.wz))));
    let var_0 = Struct_4(vec4<i32>(countOneBits(abs(u_input.a)) ^ -16019i, -2147483647i, countOneBits(_wgslsmith_dot_vec3_i32(~vec3<i32>(13512i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, 1i) | vec3<i32>(-2147483647i, u_input.a, u_input.a))), u_input.a), ~u_input.a, _wgslsmith_sub_vec4_i32(vec4<i32>(~26456i, max(u_input.a, 28745i), abs(u_input.a), _wgslsmith_mult_i32(u_input.a, u_input.a)) >> (~min(vec4<u32>(16120u, global0.a, 4294967295u, u_input.b.x), u_input.b) % vec4<u32>(32u)), select(abs(~vec4<i32>(u_input.a, -1i, -2147483647i, u_input.a)), vec4<i32>(countOneBits(u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 64667i, -39981i), vec4<i32>(u_input.a, u_input.a, -3848i, u_input.a)), ~(-2147483647i), _wgslsmith_clamp_i32(u_input.a, u_input.a, 1i)), (u_input.a == u_input.a) | true)), _wgslsmith_f_op_vec2_f32(max(global0.b.a.xz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.a.x, -1000f))))), -_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, u_input.a, 38449i)), max(abs(vec3<i32>(u_input.a, u_input.a, 2147483647i)), ~vec3<i32>(u_input.a, u_input.a, u_input.a))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3()).x));
    let var_2 = func_1(Struct_3(func_1(global3[_wgslsmith_index_u32(select(u_input.b.x, u_input.b.x, true) >> (~1u % 32u), 7u)], global0.a, !(!global0.d)).a), _wgslsmith_add_u32(~(u_input.b.x | 0u) & global0.a, abs(~(~global0.a))), true).a;
    var var_3 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(min(countOneBits(u_input.a), ~(-37941i)), _wgslsmith_mult_i32(i32(-1i) * -10387i, countOneBits(-2147483647i))), i32(-1i) * -(2147483647i | u_input.a)), u_input.a);
    global0 = func_1(global3[_wgslsmith_index_u32(49971u, 7u)], firstLeadingBit(global0.a), select(-_wgslsmith_dot_vec4_i32(var_0.c, var_0.a) == ~u_input.a, false, true | var_2.d)).a;
    global0 = func_1(func_1(func_1(global3[_wgslsmith_index_u32(~countOneBits(18893u), 7u)], ~1u, true), global0.a, all(select(select(vec2<bool>(false, global0.c), vec2<bool>(var_2.c, global0.d), vec2<bool>(var_2.c, true)), select(vec2<bool>(var_2.d, false), vec2<bool>(false, false), vec2<bool>(true, true)), any(vec4<bool>(global0.c, true, false, var_2.c))))), select(1u, 36499u, _wgslsmith_dot_vec2_u32(~u_input.b.xz, ~vec2<u32>(u_input.b.x, 18200u)) != abs(var_2.a)), false).a;
    let var_4 = Struct_3(func_1(func_1(global3[_wgslsmith_index_u32(52313u, 7u)], global0.a, true), _wgslsmith_sub_u32(u_input.b.x, global0.a), any(!select(vec4<bool>(global0.c, var_2.c, global0.c, var_2.d), vec4<bool>(true, global0.d, true, global0.d), vec4<bool>(var_2.c, true, true, false)))).a);
    let var_5 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global0.b.a.xxx)), var_4.a.b.a.yyw), var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), global4.x);
}

