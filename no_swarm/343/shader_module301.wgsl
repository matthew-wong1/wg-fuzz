struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -14975i;

var<private> global1: i32 = 0i;

var<private> global2: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(-914f, 1251f, -341f), vec3<f32>(1279f, 1249f, 418f), vec3<f32>(-586f, -725f, -553f), vec3<f32>(782f, -660f, -2239f), vec3<f32>(-488f, -397f, 1349f), vec3<f32>(323f, -463f, -1087f), vec3<f32>(833f, -1000f, -921f), vec3<f32>(-1296f, -917f, -1000f), vec3<f32>(1000f, 382f, -1881f), vec3<f32>(-592f, -298f, 2721f), vec3<f32>(1258f, -547f, 1244f), vec3<f32>(1000f, 245f, -339f), vec3<f32>(221f, -729f, -2175f), vec3<f32>(251f, -830f, -842f), vec3<f32>(-725f, 133f, -453f));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> vec2<f32> {
    global1 = -(i32(-1i) * -2147483647i);
    var var_0 = any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), true), all(vec4<bool>(false, true, false, true)))) || true;
    var var_1 = !vec4<bool>(select(!any(vec4<bool>(false, true, true, false)), false, true), any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), all(vec4<bool>(true, false, true, true)))), all(vec4<bool>(true, true, true, true)), true);
    var var_2 = var_1.x;
    var var_3 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i | ~arg_1, abs(reverseBits(19469i))), arg_0.a));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, _wgslsmith_f_op_f32(arg_2 - 358f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-964f, arg_2) - vec2<f32>(arg_2, arg_2)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2, arg_2))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<bool>) -> vec2<i32> {
    let var_0 = global2[_wgslsmith_index_u32(0u ^ select(~(~(~0u)), 1u, false), 15u)];
    global1 = 2147483647i;
    let var_1 = Struct_1(_wgslsmith_sub_vec2_i32(arg_0.a >> (_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 31280u), vec2<u32>(0u, 0u), vec2<u32>(106812u, 4294967295u)), vec2<u32>(1u, 1u), abs(vec2<u32>(1u, 4294967295u))) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(arg_0.a, vec2<i32>(_wgslsmith_mod_i32(arg_0.a.x, 1i), _wgslsmith_div_i32(arg_0.a.x, u_input.a)))));
    global1 = _wgslsmith_mult_i32(arg_0.a.x, _wgslsmith_div_i32(-65620i, 2147483647i)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(select(~4294967295u, _wgslsmith_sub_u32(1u, 1u), true), ~1u, _wgslsmith_mod_u32(1u, _wgslsmith_add_u32(1u, 34177u)), _wgslsmith_dot_vec2_u32(max(vec2<u32>(0u, 0u), vec2<u32>(0u, 0u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(8194u, 47351u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 4294967295u)))), ~vec4<u32>(abs(4294967295u), _wgslsmith_div_u32(0u, 23749u), 1u, 4294967295u)) % 32u);
    let var_2 = any(vec4<bool>(true, !all(vec2<bool>(true, true)), arg_2.x, false));
    return var_1.a;
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_0.x <= arg_0.x;
    global0 = u_input.a;
    let var_1 = arg_2.d;
    global1 = var_1.a.x;
    var var_2 = Struct_1(arg_2.d.a);
    return Struct_1(_wgslsmith_clamp_vec2_i32(arg_2.b.a, vec2<i32>(i32(-1i) * -1i, _wgslsmith_div_i32(var_2.a.x, var_1.a.x)), countOneBits(func_4(Struct_1(var_2.a), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec2<i32>(-15979i, u_input.a)), 6245i, 623f)), !vec2<bool>(true, arg_1)))));
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_2 {
    return arg_2;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>) -> i32 {
    var var_0 = func_5(_wgslsmith_f_op_f32(f32(-1f) * -2178f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(770f)))))), Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_add_u32(47427u, arg_1), ~arg_1), ~abs(vec2<u32>(arg_1, arg_1))), Struct_1(-arg_0.a), ~firstTrailingBit(2147483647i << (arg_1 % 32u)), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(313f, 270f, 377f, -244f) - vec4<f32>(-255f, -396f, -275f, 179f))), all(arg_2), Struct_2(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(9741u, arg_1)), Struct_1(vec2<i32>(arg_0.a.x, -45993i)), -2147483647i, Struct_1(vec2<i32>(arg_0.a.x, arg_0.a.x)), vec3<u32>(arg_1, 2625u, arg_1))), vec3<u32>(1u, ~abs(1u), ~arg_1)), vec4<i32>(i32(-1i) * -_wgslsmith_mult_i32(u_input.a, -1i), 2147483647i, arg_0.a.x << (arg_1 % 32u), min(countOneBits(i32(-1i) * -67941i), 0i)));
    var_0 = func_5(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(573f * 764f), _wgslsmith_f_op_f32(round(221f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1037f + -717f) * _wgslsmith_f_op_f32(f32(-1f) * -188f)))), _wgslsmith_f_op_f32(f32(-1f) * -306f), func_5(_wgslsmith_f_op_f32(sign(-952f)), 824f, Struct_2(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.e.x, 81353u), vec2<u32>(43859u, 1u)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(77657u, arg_1), vec2<u32>(1u, arg_1)) % vec2<u32>(32u)), var_0.b, ~_wgslsmith_sub_i32(var_0.b.a.x, arg_0.a.x), Struct_1(countOneBits(arg_0.a)), _wgslsmith_mod_vec3_u32(~vec3<u32>(arg_1, 0u, 0u), reverseBits(var_0.e))), vec4<i32>(_wgslsmith_add_i32(1i, 8265i), -61885i, 0i, arg_0.a.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(~5359i, -_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d.a.x, arg_0.a.x, 1i, arg_0.a.x), vec4<i32>(28859i, -36885i, var_0.d.a.x, -23055i)), abs(var_0.b.a.x) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 8931u), var_0.a) % 32u), -22618i), vec4<i32>(~2147483647i, -var_0.d.a.x, -_wgslsmith_dot_vec2_i32(arg_0.a, arg_0.a), min(var_0.c, u_input.a))));
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(-484f, 624f, -1475f, 111f))))), true, Struct_2(vec2<u32>(~var_0.e.x ^ (var_0.a.x | 4294967295u), 4294967295u), Struct_1(vec2<i32>(var_0.b.a.x, max(6560i, var_0.b.a.x))), var_0.d.a.x, func_5(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-158f - -207f)), -1383f, func_5(-2674f, _wgslsmith_f_op_f32(max(-1393f, 1282f)), func_5(613f, -667f, Struct_2(vec2<u32>(var_0.e.x, 4294967295u), Struct_1(vec2<i32>(u_input.a, var_0.d.a.x)), u_input.a, Struct_1(arg_0.a), var_0.e), vec4<i32>(-2147483647i, 0i, arg_0.a.x, u_input.a)), vec4<i32>(7998i, 1i, -2147483647i, var_0.b.a.x)), countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(-45328i, 16355i, u_input.a, var_0.c), vec4<i32>(-2147483647i, u_input.a, u_input.a, var_0.d.a.x), vec4<i32>(var_0.c, 0i, -26723i, arg_0.a.x)))).b, ~firstLeadingBit(var_0.e >> (vec3<u32>(35833u, arg_1, 4294967295u) % vec3<u32>(32u)))));
    var_1 = var_0.b;
    let var_2 = global2[_wgslsmith_index_u32(66081u, 15u)];
    return func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(ceil(619f))))) * _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(813f + _wgslsmith_f_op_f32(trunc(var_2.x))), Struct_2(select(var_0.a, _wgslsmith_add_vec2_u32(vec2<u32>(arg_1, 4654u), vec2<u32>(var_0.e.x, arg_1)), select(select(vec2<bool>(arg_2.x, true), arg_2, arg_2), arg_2, arg_2)), Struct_1(vec2<i32>(-1i, -2147483647i)), arg_0.a.x, arg_0, abs(select(firstTrailingBit(vec3<u32>(var_0.e.x, arg_1, var_0.a.x)), var_0.e, arg_2.x))), -(~reverseBits(vec4<i32>(var_0.b.a.x, -2147483647i, -1i, -13144i)) ^ abs(vec4<i32>(var_1.a.x, 24804i, arg_0.a.x, arg_0.a.x) << (vec4<u32>(39025u, var_0.a.x, var_0.a.x, 49525u) % vec4<u32>(32u))))).b.a.x;
}

fn func_6(arg_0: bool, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-593f + 1301f) + _wgslsmith_f_op_f32(802f - -1000f)), -592f, func_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-668f)))), _wgslsmith_f_op_f32(2128f * _wgslsmith_f_op_f32(trunc(244f))), Struct_2(vec2<u32>(97086u, 19337u), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-236f, -992f, -918f, 194f)), any(vec4<bool>(arg_0, arg_0, false, false)), func_5(-702f, 1251f, Struct_2(vec2<u32>(0u, 24279u), Struct_1(vec2<i32>(u_input.a, u_input.a)), 1i, Struct_1(vec2<i32>(41496i, u_input.a)), vec3<u32>(4242u, 0u, 0u)), vec4<i32>(27154i, u_input.a, -37069i, u_input.a))), _wgslsmith_dot_vec3_i32(select(vec3<i32>(2147483647i, u_input.a, 2147483647i), vec3<i32>(46674i, 2147483647i, u_input.a), vec3<bool>(arg_0, arg_1.x, arg_1.x)), firstTrailingBit(vec3<i32>(11421i, -1014i, u_input.a))), Struct_1(vec2<i32>(u_input.a, -1i)), vec3<u32>(1u, 1u, 1u)), -((vec4<i32>(26381i, -1i, u_input.a, u_input.a) << (vec4<u32>(42302u, 37494u, 1u, 58115u) % vec4<u32>(32u))) ^ (vec4<i32>(-2147483647i, u_input.a, u_input.a, 44962i) << (vec4<u32>(34568u, 76224u, 6586u, 1u) % vec4<u32>(32u))))), vec4<i32>(_wgslsmith_div_i32(86084i & u_input.a, u_input.a), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -9548i), vec2<i32>(1i, u_input.a)), reverseBits(vec2<i32>(1i, 5536i))), 2147483647i, u_input.a) & vec4<i32>(~u_input.a, 0i, u_input.a, abs(u_input.a)));
    global2 = array<vec3<f32>, 15>();
    var var_1 = func_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-422f + 133f) - _wgslsmith_f_op_f32(floor(2407f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(779f)), _wgslsmith_f_op_vec2_f32(func_3(var_0.b, u_input.a, -1608f)).x) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(874f, 1586f))))), 475f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1741f) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -203f), 1f)))), firstLeadingBit(~_wgslsmith_dot_vec3_u32(var_0.e, var_0.e)) == 4294967295u, Struct_2(var_0.a, func_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1166f, 753f, 891f, 1514f))), !all(vec3<bool>(arg_1.x, true, false)), func_5(_wgslsmith_f_op_f32(select(169f, -1265f, arg_0)), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec2<i32>(-13737i, u_input.a)), 0i, -1000f)).x, func_5(684f, -1495f, Struct_2(var_0.a, var_0.b, 30437i, var_0.d, var_0.e), vec4<i32>(-40733i, var_0.d.a.x, -1i, var_0.c)), -vec4<i32>(var_0.d.a.x, -67445i, u_input.a, u_input.a))), _wgslsmith_mod_i32(func_4(var_0.d, vec2<f32>(-569f, 1222f), vec2<bool>(arg_0, false)).x, -u_input.a) << (24894u % 32u), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-361f + 1062f)), -228f, func_5(_wgslsmith_f_op_f32(max(1103f, -410f)), 144f, var_0, _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.a, u_input.a, var_0.c), vec4<i32>(26555i, -28487i, -1i, var_0.d.a.x))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, -56478i, -2147483647i, 41215i), vec4<i32>(-1i, 37727i, var_0.b.a.x, 1i))).d, abs(vec3<u32>(0u & var_0.a.x, 1u, 1u))));
    global0 = _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 21014i, var_1.a.x), select(vec3<i32>(1i, var_0.d.a.x, 29257i), vec3<i32>(var_0.b.a.x, 29060i, 58856i), false)), ~reverseBits(vec3<i32>(var_0.d.a.x, var_0.b.a.x, 6621i)), select(reverseBits(vec3<i32>(21810i, u_input.a, var_1.a.x)), -vec3<i32>(0i, u_input.a, 4606i), false)), vec3<i32>(-2147483647i, (-1i >> (1u % 32u)) | -var_0.c, -20483i)) ^ -23860i;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-265f, -541f, 555f, -699f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-2036f, 1417f, 258f, -1557f))) + vec4<f32>(-635f, -373f, 1000f, -1000f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -985f), _wgslsmith_div_f32(400f, -802f), _wgslsmith_f_op_f32(ceil(-1106f)), -172f)))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1614f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(542f, 1183f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(148f)) + _wgslsmith_f_op_f32(756f * -807f)), _wgslsmith_f_op_f32(-639f - _wgslsmith_f_op_f32(f32(-1f) * -399f))))));
    return Struct_2(var_0.e.yz, Struct_1(var_1.a), countOneBits(min(var_1.a.x | 2147483647i, -(-1i ^ var_1.a.x))), func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-304f)), -646f), _wgslsmith_f_op_f32(-220f - _wgslsmith_f_op_f32(floor(var_2.x))), Struct_2(~vec2<u32>(var_0.e.x, var_0.a.x), var_0.d, var_0.b.a.x, var_0.b, vec3<u32>(0u, var_0.a.x, 128u) << ((vec3<u32>(47938u, var_0.e.x, var_0.a.x) << (vec3<u32>(var_0.a.x, var_0.e.x, var_0.e.x) % vec3<u32>(32u))) % vec3<u32>(32u))), vec4<i32>(-2147483647i, var_1.a.x, 23146i, u_input.a) >> ((~vec4<u32>(var_0.a.x, var_0.a.x, var_0.e.x, var_0.a.x) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_0.e.x, var_0.e.x, 70653u), vec4<u32>(var_0.a.x, var_0.e.x, var_0.a.x, 80416u))) % vec4<u32>(32u))).b, vec3<u32>(select(min(_wgslsmith_mult_u32(4294967295u, var_0.e.x), 4294967295u), 1u, any(vec3<bool>(false, arg_1.x, arg_1.x))), 49913u, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(true, !vec2<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), abs(1i) <= func_1(Struct_1(vec2<i32>(-48988i, u_input.a)), 0u, vec2<bool>(false, false))));
    let var_1 = ~vec4<u32>(var_0.a.x, 4294967295u, 4294967295u, reverseBits(var_0.a.x)) ^ _wgslsmith_mult_vec4_u32(abs(vec4<u32>(var_0.a.x, 2054u, var_0.e.x, var_0.e.x)) & ~_wgslsmith_mult_vec4_u32(vec4<u32>(26503u, 4294967295u, 0u, 6646u), vec4<u32>(var_0.a.x, 1u, 10773u, 0u)), vec4<u32>(~firstLeadingBit(1490u), ~41850u & ~var_0.e.x, var_0.e.x | (var_0.e.x << (var_0.a.x % 32u)), var_0.a.x));
    var var_2 = u_input.a;
    var_2 = -7497i;
    global0 = 1i;
    var var_3 = var_1.x;
    let var_4 = Struct_1(var_0.b.a);
    let var_5 = func_6(true, !(!vec2<bool>(true, all(vec3<bool>(false, true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(max(-671f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-723f)))))), -462f, -2631f), u_input.a, _wgslsmith_f_op_vec3_f32(exp2(global2[_wgslsmith_index_u32(39330u, 15u)])));
}

