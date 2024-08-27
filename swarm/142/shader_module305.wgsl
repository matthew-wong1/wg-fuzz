struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: vec3<u32>,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6> = array<f32, 6>(135f, 120f, 1000f, -994f, 387f, 200f);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: bool, arg_3: vec2<u32>) -> u32 {
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -970f)), ~vec4<u32>(u_input.a, arg_3.x, arg_3.x, 4294967295u), ~(i32(-1i) * -1i), 31613i), Struct_1(1994f, vec4<u32>(max(39541u, u_input.a), ~arg_3.x, ~arg_3.x, _wgslsmith_sub_u32(4294967295u, 9050u)), ~(~u_input.b.x), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(14671i, -53683i), vec2<i32>(-53343i, u_input.b.x)), vec2<i32>(u_input.b.x, arg_0))), true, !arg_1.zy, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1069f)) * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 6u)])), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u) ^ vec4<u32>(u_input.a, arg_3.x, arg_3.x, u_input.a), 9718i, u_input.b.x)), Struct_1(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(arg_3.x << (4294967295u % 32u), 6u)])), vec4<u32>(min(_wgslsmith_mod_u32(581u, 85490u), ~58610u), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(21226u, arg_3.x), vec2<u32>(52313u, 58544u), arg_3), arg_3), ~(~34043u), 0u), 0i, ((arg_0 >> (u_input.a % 32u)) >> (arg_3.x % 32u)) | arg_0), u_input.b.yz, _wgslsmith_add_vec4_u32(~(~vec4<u32>(4294967295u, arg_3.x, u_input.a, u_input.a)), firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(64592u, u_input.a, 1u, arg_3.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 56749u, arg_3.x, 14147u), vec4<u32>(arg_3.x, 4294967295u, arg_3.x, 0u))))), -4374i);
    var var_1 = vec3<bool>(false, !var_0.a.d.x, !(u_input.a != u_input.a));
    var var_2 = var_0.a;
    global0 = array<f32, 6>();
    let var_3 = select(true, true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(401f - var_2.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1708f))))) < var_2.a.a);
    return 1u;
}

fn func_2(arg_0: Struct_4) -> u32 {
    global0 = array<f32, 6>();
    var var_0 = Struct_2(Struct_1(-301f, ~abs(vec4<u32>(20997u, u_input.a, 0u, u_input.a) ^ vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)), u_input.b.x, _wgslsmith_mod_i32(2147483647i, (u_input.b.x ^ u_input.b.x) | -2147483647i)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(13577u, 6u)])), ~vec4<u32>(~u_input.a, u_input.a, 1u, _wgslsmith_sub_u32(u_input.a, u_input.a)), -14498i, countOneBits(max(-arg_0.b.x, 34516i))), all(vec2<bool>(all(vec3<bool>(false, true, arg_0.a)) || true, all(vec4<bool>(false, true, arg_0.a, arg_0.a)))), select(select(vec2<bool>(!arg_0.a, true), !(!vec2<bool>(arg_0.a, true)), _wgslsmith_f_op_f32(ceil(-2299f)) >= _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a, 6u)], -479f)), vec2<bool>(true, true && arg_0.a), arg_0.a), Struct_1(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(func_3(~3901i, !vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a), arg_0.a, abs(vec2<u32>(u_input.a, 2721u))), 6u)], 1000f)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, 47001u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 1u), vec4<u32>(16979u, u_input.a, 25808u, u_input.a))), u_input.a, u_input.a, u_input.a), u_input.b.x, -firstTrailingBit(arg_0.b.x)));
    global0 = array<f32, 6>();
    let var_1 = Struct_2(var_0.a, Struct_1(var_0.e.a, countOneBits(select(vec4<u32>(var_0.a.b.x, 2915u, var_0.a.b.x, u_input.a), var_0.a.b << (var_0.a.b % vec4<u32>(32u)), arg_0.a)), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -var_0.e.d, firstLeadingBit(37930i)), vec3<i32>(var_0.a.d, -2147483647i, ~(-2147483647i))), _wgslsmith_sub_i32(countOneBits(-2147483647i), u_input.b.x)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(0u) << ((var_0.a.b.x >> (50315u % 32u)) % 32u), 6u)]) >= -2131f, var_0.d, var_0.b);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-562f, _wgslsmith_f_op_f32(-933f * _wgslsmith_f_op_f32(round(var_1.e.a)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -321f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-201f, var_1.e.a)), global0[_wgslsmith_index_u32(var_1.a.b.x, 6u)])))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1714f, global0[_wgslsmith_index_u32(1u, 6u)]))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-436f, var_1.b.a), vec2<f32>(1214f, var_1.a.a), vec2<bool>(false, var_1.c))))))));
    return u_input.a;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: i32) -> bool {
    var var_0 = !(func_2(Struct_4(true, vec3<i32>(-22251i, u_input.b.x, -15985i))) != (4294967295u ^ u_input.a));
    var var_1 = Struct_5(false | !any(vec3<bool>(true, true, true)), Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 6u)]), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1295u, arg_1.x, 1u), arg_1), _wgslsmith_mult_i32(-25422i, arg_2), arg_2 | arg_2), Struct_1(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_1.x, 6u)] - -1621f), arg_1, -47790i << (u_input.a % 32u), -2147483647i), any(select(vec2<bool>(true, false), vec2<bool>(false, false), false)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(true, true)), Struct_1(_wgslsmith_div_f32(-1000f, global0[_wgslsmith_index_u32(arg_1.x, 6u)]), arg_1, firstTrailingBit(u_input.b.x), countOneBits(u_input.b.x))), Struct_1(-802f, _wgslsmith_mult_vec4_u32(vec4<u32>(14652u, u_input.a, 0u, arg_1.x), ~arg_1), u_input.b.x, ~(-17126i)), (vec2<i32>(-1i) * -u_input.b.zz) & _wgslsmith_add_vec2_i32(u_input.b.zz, u_input.b.zx), ~(~vec4<u32>(u_input.a, arg_1.x, arg_1.x, 4294967295u) ^ arg_1), -_wgslsmith_clamp_i32(_wgslsmith_mult_i32(arg_2, -30701i), arg_2, ~u_input.b.x)), arg_1.wyy, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~1u), 6u)], _wgslsmith_f_op_f32(975f * _wgslsmith_f_op_f32(round(arg_0.x))), arg_0.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(arg_0.zyx)), arg_0.xxx)))), ~(func_2(Struct_4(true, u_input.b)) & arg_1.x));
    var_1 = Struct_5(any(select(select(select(vec3<bool>(var_1.a, var_1.b.a.d.x, true), vec3<bool>(var_1.b.a.d.x, false, true), vec3<bool>(var_1.b.a.d.x, var_1.a, true)), select(vec3<bool>(var_1.b.a.d.x, true, false), vec3<bool>(var_1.a, true, false), vec3<bool>(var_1.a, false, false)), vec3<bool>(true, var_1.a, true)), !vec3<bool>(var_1.b.a.d.x, var_1.a, false), select(vec3<bool>(var_1.b.a.d.x, true, var_1.b.a.c), !vec3<bool>(true, false, var_1.b.a.c), false))), Struct_3(var_1.b.a, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(4294967295u, 6u)])), arg_0.x), firstTrailingBit(vec4<u32>(u_input.a, u_input.a, 20533u, u_input.a) << (var_1.b.a.b.b % vec4<u32>(32u))), var_1.b.b.d, abs(17094i)), vec2<i32>((i32(-1i) * -3460i) & -arg_2, var_1.b.a.e.d), vec4<u32>(var_1.b.b.b.x, u_input.a, arg_1.x, u_input.a), arg_2), max(select(_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, u_input.a, arg_1.x), ~vec3<u32>(4215u, 0u, arg_1.x)), ~(var_1.b.b.b.wzx << (arg_1.yxx % vec3<u32>(32u))), true), arg_1.zyy), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 6u)] + -537f), var_1.d.x, arg_0.x) - vec3<f32>(_wgslsmith_f_op_f32(751f * 280f), 1066f, var_1.b.b.a))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(1u, 0u), u_input.a, var_1.c.x, _wgslsmith_div_u32(u_input.a, 46209u)), firstLeadingBit(firstTrailingBit(var_1.b.d))));
    var_1 = Struct_5(true, var_1.b, firstTrailingBit(~var_1.b.b.b.zyx), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(arg_0.yzz, _wgslsmith_f_op_vec3_f32(-var_1.d), select(select(vec3<bool>(true, true, var_1.b.a.d.x), vec3<bool>(false, false, true), vec3<bool>(var_1.a, var_1.a, var_1.b.a.c)), vec3<bool>(var_1.a, false, true), select(vec3<bool>(false, var_1.a, true), vec3<bool>(var_1.b.a.c, false, var_1.b.a.c), vec3<bool>(true, true, true))))), _wgslsmith_div_vec3_f32(var_1.d, _wgslsmith_f_op_vec3_f32(select(var_1.d, arg_0.wxx, any(vec2<bool>(var_1.a, var_1.b.a.c))))))), _wgslsmith_mult_u32(34328u, ~_wgslsmith_clamp_u32(countOneBits(4294967295u), 1u, ~1u)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1042f + -1038f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(-933f, var_1.d.x), _wgslsmith_f_op_f32(-289f * var_1.d.x)), 873f, false))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 6>();
    var var_0 = vec2<u32>(~1u, select(~(~u_input.a), u_input.a, select(func_1(vec4<f32>(-1274f, global0[_wgslsmith_index_u32(7898u, 6u)], 1000f, 1184f), vec4<u32>(12805u, u_input.a, 32819u, 30833u), u_input.b.x), true, false)));
    let var_1 = -firstTrailingBit(u_input.b.x & _wgslsmith_sub_i32(abs(u_input.b.x), ~(-1i)));
    let var_2 = _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(0u, 6u)]));
    var var_3 = Struct_2(Struct_1(461f, min(vec4<u32>(5967u, 27299u, _wgslsmith_sub_u32(var_0.x, var_0.x), countOneBits(55136u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, 1u, 19388u, u_input.a), ~vec4<u32>(var_0.x, u_input.a, u_input.a, 4294967295u))), countOneBits(36284i), -(~(~u_input.b.x))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-957f - var_2))), global0[_wgslsmith_index_u32(u_input.a, 6u)]), vec4<u32>(var_0.x, _wgslsmith_clamp_u32(u_input.a, 40799u, reverseBits(0u)), 4294967295u, 41035u), -2147483647i, var_1), false, select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), select(false, true, true))), vec2<bool>(false, true), true), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -1112f) * _wgslsmith_f_op_f32(var_2 + global0[_wgslsmith_index_u32(u_input.a, 6u)])) * 1028f), ~(~vec4<u32>(var_0.x, 56051u, 4294967295u, 27650u)), u_input.b.x, _wgslsmith_dot_vec3_i32(-u_input.b, u_input.b)));
    var var_4 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(var_0.x, 6u)], -1411f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.e.a, global0[_wgslsmith_index_u32(72339u, 6u)]))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.a, var_3.e.a) * vec2<f32>(744f, 302f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-950f, var_3.e.a), vec2<f32>(var_3.e.a, var_2))), true))))));
    var var_5 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 6u)]) - _wgslsmith_f_op_f32(trunc(var_4.x)))))), 639f, true));
    let x = u_input.a;
    s_output = StorageBuffer(max(-(~vec4<i32>(var_3.e.c, var_1, -1i, var_3.a.c)), ~_wgslsmith_mult_vec4_i32(-vec4<i32>(-6065i, 30528i, u_input.b.x, -24893i), abs(vec4<i32>(2147483647i, u_input.b.x, 1i, u_input.b.x)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(913f, -1000f) - vec2<f32>(-2108f, var_2)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], 389f) - vec2<f32>(-889f, var_4.x))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(424f, 599f)), vec2<f32>(-312f, -169f)))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2, _wgslsmith_div_f32(1367f, 396f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-495f, 1706f), vec2<f32>(-1609f, 3190f), var_3.c))))))), ~firstTrailingBit(select(max(var_3.b.b, vec4<u32>(var_0.x, var_0.x, var_0.x, var_3.b.b.x)), reverseBits(var_3.a.b), true)), -1i, min(vec2<u32>(26113u, ~684u), _wgslsmith_sub_vec2_u32(vec2<u32>(var_3.a.b.x, ~var_3.b.b.x), min(var_3.a.b.yx, abs(vec2<u32>(0u, u_input.a))))));
}

