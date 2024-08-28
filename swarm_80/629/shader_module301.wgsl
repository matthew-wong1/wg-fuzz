struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: i32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 29>;

var<private> global1: vec4<f32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> bool {
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1444f)), global1.x, -635f, _wgslsmith_f_op_f32(min(-376f, _wgslsmith_f_op_f32(exp2(global1.x)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 283f, -1066f, -925f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, 306f, -186f)), vec4<f32>(global1.x, 2147f, 290f, 909f))))));
    let var_0 = max(_wgslsmith_mod_vec2_i32(-(vec2<i32>(u_input.a.x, -23284i) << (~vec2<u32>(0u, 0u) % vec2<u32>(32u))), ~u_input.a), _wgslsmith_add_vec2_i32(u_input.a, _wgslsmith_add_vec2_i32(vec2<i32>(~(-32762i), _wgslsmith_mod_i32(u_input.a.x, -2147483647i)), -min(vec2<i32>(37830i, -1i), u_input.a))));
    global1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(global1.x, global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -662f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + -407f) - _wgslsmith_f_op_f32(f32(-1f) * -196f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.x), 1000f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), -1857f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - 610f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * global1.x) * 1f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 994f, global1.x, global1.x) + vec4<f32>(311f, -1697f, global1.x, 1000f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-287f, global1.x, global1.x, global1.x))))), vec4<bool>(any(vec3<bool>(true, true, true)), true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), any(vec2<bool>(true, true)))));
    let var_1 = !(!select(vec4<bool>(any(vec3<bool>(true, false, true)), false, false, any(vec3<bool>(false, true, true))), select(vec4<bool>(true, false, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), true), select(true, true, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-526f, -879f, _wgslsmith_f_op_f32(floor(545f)), _wgslsmith_f_op_f32(-1045f - -191f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, -485f, -1658f)))))), min(abs(~vec3<u32>(45290u, 1119u, 71702u)), select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), false)) | _wgslsmith_div_vec3_u32(~(~vec3<u32>(0u, 15429u, 4294967295u)), ~vec3<u32>(1u, 1u, 1u)), vec4<i32>(select(u_input.a.x, firstTrailingBit(u_input.a.x), true), 2147483647i, max(var_0.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(-13029i, u_input.a.x, 0i), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -33584i, -30540i), vec3<i32>(u_input.a.x, var_0.x, -1i), vec3<i32>(var_0.x, var_0.x, u_input.a.x)))), u_input.a.x));
    return !(!var_1.x);
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(func_3(), !(!select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true))), u_input.a.x, select(abs(vec2<i32>(u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(2147483647i, u_input.a.x), u_input.a.x >> (4294967295u % 32u)), u_input.a), func_3()), global0[_wgslsmith_index_u32(9935u, 29u)] << (reverseBits(select(vec4<u32>(1u, 32946u, 56506u, 1u), reverseBits(vec4<u32>(4294967295u, 4294967295u, 7063u, 4294967295u)), vec4<bool>(true, false, false, true))) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(27801i, var_0.d.x, 4628i, 2147483647i), vec4<i32>(u_input.a.x, var_0.e.x, u_input.a.x, 1i)), vec4<i32>(_wgslsmith_mod_i32(2147483647i, -43862i), 0i, min(u_input.a.x, u_input.a.x), _wgslsmith_sub_i32(var_0.e.x, 1i))), -var_0.e, firstLeadingBit(vec4<i32>(var_0.c, i32(-1i) * -1i, i32(-1i) * -29763i, abs(2147483647i)))) >> (vec4<u32>(59532u, ~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(14043u, 0u, 0u, 4294967295u), vec4<u32>(78250u, 0u, 4294967295u, 71478u))), 1u, abs(15834u << (1u % 32u))) % vec4<u32>(32u));
    var var_2 = Struct_2(global1.x);
    return Struct_3(func_3(), var_0.b, var_0.e.x, var_1.wz, vec4<i32>(var_0.c, -_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), var_0.e.wwx), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.c, -89497i, u_input.a.x), vec3<i32>(-61852i, 33915i, 36222i))), -6361i, -select(~var_1.x, ~(-1i), var_0.b.x)));
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: Struct_3, arg_3: vec2<bool>) -> Struct_3 {
    var var_0 = arg_0;
    var_0 = arg_0;
    let var_1 = arg_0.c;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(554f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.c.a)))));
    let var_3 = _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(arg_0.b.x, _wgslsmith_mod_u32(_wgslsmith_div_u32(arg_1, 1u), arg_1 << (var_0.b.x % 32u)), var_0.b.x, 2224u)), vec4<u32>(~var_0.b.x, _wgslsmith_sub_u32(abs(var_0.b.x), ~1u), _wgslsmith_mod_u32(~(~4294967295u), 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(~arg_0.b.x, 4294967295u << (arg_0.b.x % 32u)), ~(~vec2<u32>(arg_1, var_0.b.x)))));
    return arg_2;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: vec4<f32>) -> Struct_4 {
    var var_0 = arg_2;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(513f, -874f, arg_2.x, 352f), _wgslsmith_f_op_vec4_f32(-arg_2)))), vec3<u32>(arg_0.x, arg_0.x, ~8352u), vec4<i32>(u_input.a.x, -firstLeadingBit(54912i), _wgslsmith_clamp_i32(u_input.a.x, firstLeadingBit(~u_input.a.x), -_wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), _wgslsmith_div_i32(-firstTrailingBit(1i), u_input.a.x)));
    return Struct_4(func_4(Struct_4(func_2(), vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.x, var_1.b.x), arg_0.yy), arg_0.x), Struct_2(var_0.x)), select(~31523u | ~var_1.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(29101u, var_1.b.x, 7186u, var_1.b.x), select(arg_0, arg_0, vec4<bool>(arg_1.x, true, false, false))), ~26049u >= var_1.b.x), Struct_3(!all(arg_1), vec3<bool>(false, true, arg_1.x), u_input.a.x, ~func_2().e.ww, global0[_wgslsmith_index_u32(1u, 29u)]), arg_1.zx), var_1.b, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -510f)));
}

fn func_5(arg_0: vec2<i32>, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_4) -> vec3<i32> {
    let var_0 = _wgslsmith_clamp_vec4_u32(min(~vec4<u32>(arg_3.b.x, arg_3.b.x, 3168u, 4294967295u) << (~vec4<u32>(arg_3.b.x, 4294967295u, 4294967295u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(4294967295u, select(arg_3.b.x, _wgslsmith_dot_vec3_u32(arg_3.b, arg_3.b), false || arg_3.a.b.x), arg_3.b.x, ~(~2515u))), vec4<u32>(~countOneBits(reverseBits(0u)), firstTrailingBit(24853u) | arg_3.b.x, arg_3.b.x, arg_3.b.x), vec4<u32>(~4294967295u, _wgslsmith_div_u32(reverseBits(func_1(vec4<u32>(75297u, arg_3.b.x, arg_3.b.x, 77658u), vec4<bool>(arg_3.a.b.x, arg_3.a.a, false, arg_3.a.a), vec4<f32>(arg_3.c.a, -266f, global1.x, -1000f)).b.x), 38219u), 1u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, 1u << (1u % 32u)), 71849u | abs(arg_3.b.x))));
    var var_1 = arg_3.a;
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.ywx * global1.ywx))));
    var_1 = func_2();
    global0 = array<vec4<i32>, 29>();
    return vec3<i32>(39774i, _wgslsmith_dot_vec4_i32((vec4<i32>(-1i, 14844i, 0i, 1i) << (min(var_0, var_0) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_div_u32(4294967295u, arg_3.b.x), var_0.x, countOneBits(arg_3.b.x), ~0u) % vec4<u32>(32u)), ~select(min(vec4<i32>(-1i, 26407i, u_input.a.x, arg_2.x), arg_2), vec4<i32>(-2147483647i, 52058i, arg_2.x, -1i) | var_1.e, !arg_3.a.a)), -_wgslsmith_div_i32(0i ^ u_input.a.x, -1i) & arg_3.a.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~abs(abs(vec3<i32>(-1i, u_input.a.x, -43314i) >> (vec3<u32>(63649u, 9739u, 19739u) % vec3<u32>(32u))) & func_5(_wgslsmith_div_vec2_i32(u_input.a, u_input.a), _wgslsmith_add_i32(-23951i, u_input.a.x), ~global0[_wgslsmith_index_u32(1u, 29u)], func_1(vec4<u32>(30090u, 4294967295u, 4294967295u, 151234u), vec4<bool>(true, true, true, false), vec4<f32>(-113f, global1.x, -762f, global1.x))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.x))), 371f, _wgslsmith_f_op_f32(-global1.x));
    let var_2 = Struct_3(true, select(!vec3<bool>(false, true, func_4(Struct_4(Struct_3(true, vec3<bool>(false, true, false), var_0.x, u_input.a, global0[_wgslsmith_index_u32(0u, 29u)]), vec3<u32>(52899u, 36940u, 4294967295u), Struct_2(545f)), 4294967295u, Struct_3(false, vec3<bool>(true, false, false), -2147483647i, vec2<i32>(-1i, u_input.a.x), vec4<i32>(-2147483647i, u_input.a.x, -1i, -39773i)), vec2<bool>(true, false)).b.x), vec3<bool>(true, true, true), !vec3<bool>(true, false, select(true, false, true))), _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(~(min(11555u, 0u) << (0u % 32u)), 29u)], vec4<i32>(-41465i ^ _wgslsmith_mult_i32(9012i, var_0.x), -min(-17952i, u_input.a.x), -u_input.a.x, _wgslsmith_clamp_i32(-u_input.a.x, -var_0.x, 1i))), vec2<i32>(9006i, func_2().c), global0[_wgslsmith_index_u32(1u, 29u)]);
    global1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(829f, -845f, -1245f, 765f)) - _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, var_1.x), vec4<f32>(766f, var_1.x, -134f, global1.x))))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-512f, 615f, -988f, global1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-690f, -554f, -699f, -936f) * vec4<f32>(830f, global1.x, global1.x, 173f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, global1.x, global1.x, 274f), vec4<f32>(-226f, 1000f, var_1.x, var_1.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-636f, 1091f, global1.x, global1.x) * vec4<f32>(var_1.x, -599f, var_1.x, global1.x))))))));
    let var_3 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), firstTrailingBit(firstTrailingBit(~vec3<u32>(1u, 128549u, 38902u)))), 33143u);
    global1 = vec4<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x, _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(abs(global1.x))), global1.x);
    var var_4 = var_1.xz;
    let var_5 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-550f, global1.x, -2681f, -125f) * vec4<f32>(var_4.x, -603f, -816f, 1991f))) * vec4<f32>(_wgslsmith_f_op_f32(max(var_4.x, 1718f)), -1000f, global1.x, 2231f))), abs(vec3<u32>(27295u, ~4248u, 1u)), vec4<i32>(min(_wgslsmith_div_i32(_wgslsmith_sub_i32(-1i, var_0.x), _wgslsmith_dot_vec3_i32(var_0, vec3<i32>(var_0.x, u_input.a.x, var_2.d.x))), var_0.x << (_wgslsmith_div_u32(var_3, 0u) % 32u)), -2147483647i, u_input.a.x, countOneBits(1i)));
    var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-248f, var_1.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_div_f32(var_4.x, -969f)) * _wgslsmith_f_op_vec2_f32(global1.ww + _wgslsmith_f_op_vec2_f32(global1.zx - vec2<f32>(-626f, -327f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(~vec2<u32>(91167u, var_3), _wgslsmith_add_vec2_u32(~var_5.b.yx, ~var_5.b.yy)) ^ _wgslsmith_mod_vec2_u32(~(vec2<u32>(var_5.b.x, var_5.b.x) ^ var_5.b.xx), ~var_5.b.zz & abs(var_5.b.yx)), var_3);
}

