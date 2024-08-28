struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

var<private> global1: bool;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: u32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-754f, 789f) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1821f, 1063f), vec2<f32>(640f, 120f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(244f + -1157f), -1835f) - vec2<f32>(_wgslsmith_f_op_f32(-1740f - -1490f), _wgslsmith_f_op_f32(f32(-1f) * -160f)))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1629f, -501f) * vec2<f32>(-335f, 658f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1653f, 1272f) * vec2<f32>(-182f, 989f))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1046f, -466f))))))));
    let var_1 = _wgslsmith_div_u32(~firstLeadingBit(1u | (33137u | u_input.d.x)), _wgslsmith_sub_u32(arg_1, reverseBits(~0u) ^ _wgslsmith_dot_vec2_u32(select(u_input.d, u_input.d, vec2<bool>(true, true)), vec2<u32>(arg_1, arg_1))));
    var var_2 = ~firstTrailingBit(2147483647i);
    let var_3 = Struct_1(all(!vec3<bool>(true, all(vec3<bool>(false, true, true)), all(vec4<bool>(false, true, false, true)))), ~(-vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(0u, 1u)], 1i, u_input.a | u_input.a)));
    let var_4 = !vec4<bool>(var_3.a, false, !(false | var_3.a) && var_3.a, var_3.a);
    return var_3.b;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: f32) -> u32 {
    var var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(arg_0.b, func_3(global0[_wgslsmith_index_u32(arg_1.x, 1u)], u_input.d.x), arg_0.b) & vec4<i32>(_wgslsmith_div_i32(1i, -1i), 2147483647i, func_3(~(-34995i), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_1.x), arg_1.xz)).x, func_3(_wgslsmith_dot_vec3_i32(vec3<i32>(8872i, u_input.b.x, arg_0.b.x), vec3<i32>(12309i, 38943i, global0[_wgslsmith_index_u32(u_input.e.x, 1u)])), arg_1.x).x), max(arg_0.b, ~(~(~vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.d.x, 1u)], u_input.c, 6934i)))));
    let var_1 = ~(47412u >> (arg_1.x % 32u));
    var_0 = _wgslsmith_add_vec4_i32(reverseBits(arg_0.b), arg_0.b);
    let var_2 = Struct_1(all(vec2<bool>(all(vec2<bool>(true, arg_0.a)), any(select(vec4<bool>(true, true, true, arg_0.a), vec4<bool>(arg_0.a, true, arg_0.a, arg_0.a), true)))), _wgslsmith_sub_vec4_i32(arg_0.b, vec4<i32>(~arg_0.b.x, 35506i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(var_1, 1u)], arg_0.b.x), ~0i), 1i)));
    let var_3 = var_2;
    return ~1u;
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: i32) -> Struct_1 {
    global1 = true;
    let var_0 = Struct_1(false, _wgslsmith_mod_vec4_i32(select(arg_1.b.a.b, vec4<i32>(28739i >> (u_input.e.x % 32u), 9579i, ~0i, arg_0), !arg_1.c), max(~_wgslsmith_add_vec4_i32(arg_1.b.a.b, arg_1.b.a.b), _wgslsmith_mod_vec4_i32(-arg_1.b.a.b, countOneBits(arg_1.b.a.b)))));
    let var_1 = Struct_1(true, firstTrailingBit(-firstTrailingBit(arg_1.b.a.b)) | select(~(~vec4<i32>(1i, -25070i, global0[_wgslsmith_index_u32(u_input.d.x, 1u)], arg_2)), select(vec4<i32>(arg_2, u_input.c, var_0.b.x, -29854i), vec4<i32>(-2147483647i, var_0.b.x, arg_1.b.a.b.x, 0i), arg_1.c), arg_1.b.a.a));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(min(154f, arg_1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-762f, -1530f)) * arg_1.d)) - _wgslsmith_f_op_f32(select(-1000f, arg_1.a, select(var_0.a, all(vec4<bool>(true, true, var_1.a, true)), false)))), Struct_2(var_1), vec4<bool>(!select(true, true, true), var_1.a, !(_wgslsmith_f_op_f32(round(arg_1.d)) > _wgslsmith_f_op_f32(-arg_1.d)), all(!arg_1.c)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.d))), arg_1.d)));
    let var_3 = _wgslsmith_div_u32(u_input.d.x, 11985u);
    return Struct_1(arg_1.b.a.a | (!any(arg_1.c.zxw) && !var_1.a), ~(firstLeadingBit(-var_2.b.a.b) & _wgslsmith_add_vec4_i32(var_0.b, ~var_2.b.a.b)));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: i32) -> Struct_1 {
    global1 = !select(any(vec4<bool>(true, true, true, true)), true, arg_1.x);
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2.a, 491f), vec2<f32>(-1000f, 1155f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.d, arg_2.a) - vec2<f32>(arg_2.d, arg_2.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(780f, -1000f)))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(269f, arg_2.d), vec2<f32>(-1385f, arg_2.d)))))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0 - vec2<f32>(arg_2.a, 1000f)), _wgslsmith_f_op_vec2_f32(sign(var_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, arg_2.d) + var_0)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0 * vec2<f32>(var_0.x, var_0.x)), var_0, select(vec2<bool>(arg_0.a.a, arg_0.a.a), arg_1, false))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(750f, 393f))))) + _wgslsmith_f_op_vec2_f32(-var_0)));
    var var_2 = select(!vec2<bool>(true, arg_0.a.a), arg_1, select(vec2<bool>(!any(arg_2.c.zz), arg_1.x), arg_2.c.yw, arg_1));
    let var_3 = firstLeadingBit(4671i);
    return func_4(_wgslsmith_dot_vec4_i32(arg_2.b.a.b, vec4<i32>(select(-48375i, arg_0.a.b.x, true) | arg_3, var_3, _wgslsmith_clamp_i32(-6312i, -66111i, select(-23973i, var_3, arg_2.c.x)), u_input.a)), Struct_3(var_0.x, arg_0, !vec4<bool>(any(arg_2.c.wy), false, true, true), _wgslsmith_f_op_f32(step(var_0.x, arg_2.d))), -reverseBits(74699i));
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(Struct_2(func_4(u_input.a, Struct_3(1f, Struct_2(Struct_1(false, vec4<i32>(-1i, u_input.c, 0i, 1i))), vec4<bool>(true, true, true, true), -114f), ~global0[_wgslsmith_index_u32(func_2(Struct_1(true, vec4<i32>(u_input.a, u_input.a, u_input.b.x, 2147483647i)), u_input.e, -118f), 1u)])), !vec2<bool>(false, any(vec3<bool>(true, true, true))), Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-197f - -675f))))), Struct_2(Struct_1(u_input.e.x <= u_input.d.x, vec4<i32>(5948i, u_input.a, global0[_wgslsmith_index_u32(u_input.d.x, 1u)], -29658i))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, u_input.e.x != 46692u, u_input.c > u_input.c)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(1165f))))), firstTrailingBit((u_input.a | -global0[_wgslsmith_index_u32(4294967295u, 1u)]) & _wgslsmith_clamp_i32(~(-2147483647i), global0[_wgslsmith_index_u32(min(u_input.e.x, u_input.d.x), 1u)], i32(-1i) * -2147483647i)));
    var var_1 = Struct_3(507f, Struct_2(func_4(i32(-1i) * -var_0.b.x, Struct_3(_wgslsmith_div_f32(619f, -1910f), Struct_2(Struct_1(false, vec4<i32>(-4803i, u_input.c, 2147483647i, 1i))), !vec4<bool>(false, true, var_0.a, var_0.a), -1000f), _wgslsmith_add_i32(_wgslsmith_mod_i32(var_0.b.x, 12494i), select(-2989i, -11364i, false)))), vec4<bool>(var_0.a || !var_0.a, false || var_0.a, select(var_0.a, true, var_0.a != false) || all(select(vec2<bool>(var_0.a, false), vec2<bool>(true, var_0.a), true)), ~(-global0[_wgslsmith_index_u32(u_input.e.x, 1u)]) < 8087i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1446f, -153f, true)) * -590f) - -987f) * _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(361f - 1019f))))));
    var var_2 = !var_1.b.a.a;
    return Struct_1((false || var_1.c.x) | (!var_1.c.x && true), ~select(countOneBits(var_0.b), vec4<i32>(~var_0.b.x, var_0.b.x, min(var_1.b.a.b.x, 1i), ~u_input.b.x), !vec4<bool>(var_0.a, true, false, true)));
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_3, arg_3: f32) -> Struct_2 {
    global1 = !arg_0.x | select(arg_1.a, arg_2.c.x, all(vec4<bool>(func_5(Struct_2(Struct_1(true, arg_2.b.a.b)), vec2<bool>(true, true), arg_2, u_input.a).a, arg_0.x || arg_2.c.x, arg_2.b.a.a, func_1().a)));
    let var_0 = _wgslsmith_f_op_f32(arg_2.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_3))));
    global1 = arg_0.x && true;
    var var_1 = u_input.d;
    let var_2 = select(select(arg_2.c, arg_2.c, vec4<bool>(!arg_0.x, arg_0.x, true, true)), !arg_2.c, !arg_2.c.x);
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~31196u;
    global0 = array<i32, 1>();
    var var_1 = func_6(!vec2<bool>((global0[_wgslsmith_index_u32(1u, 1u)] >> (var_0 % 32u)) > _wgslsmith_clamp_i32(-2147483647i, 29234i, 54104i), true), func_1(), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-405f - 304f)) - 1599f), Struct_2(Struct_1(any(vec2<bool>(false, false)), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, 33020i, 0i, u_input.c), vec4<i32>(60831i, 2147483647i, global0[_wgslsmith_index_u32(var_0, 1u)], 2147483647i)))), select(vec4<bool>(true, true, any(vec4<bool>(true, false, true, true)), true), vec4<bool>(true, true, true, select(true, false, false)), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1326f * 945f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-865f))))), _wgslsmith_f_op_f32(556f - 578f));
    let var_2 = func_5(Struct_2(var_1.a), vec2<bool>(true, true), Struct_3(_wgslsmith_div_f32(-250f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2031f)))), func_6(select(select(vec2<bool>(var_1.a.a, var_1.a.a), vec2<bool>(false, true), var_1.a.a), !vec2<bool>(true, var_1.a.a), !vec2<bool>(var_1.a.a, true)), var_1.a, Struct_3(_wgslsmith_f_op_f32(2615f + 303f), func_6(vec2<bool>(false, false), Struct_1(var_1.a.a, vec4<i32>(15911i, u_input.a, u_input.a, -2147483647i)), Struct_3(-939f, Struct_2(var_1.a), vec4<bool>(var_1.a.a, false, var_1.a.a, var_1.a.a), 832f), -723f), select(vec4<bool>(false, false, true, false), vec4<bool>(var_1.a.a, var_1.a.a, var_1.a.a, false), vec4<bool>(var_1.a.a, var_1.a.a, var_1.a.a, true)), -598f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-770f - -1532f)))), select(!vec4<bool>(false, var_1.a.a, var_1.a.a, var_1.a.a), vec4<bool>(all(vec4<bool>(true, var_1.a.a, false, true)), all(vec3<bool>(var_1.a.a, false, var_1.a.a)), var_1.a.a, !var_1.a.a), !(!vec4<bool>(var_1.a.a, var_1.a.a, false, var_1.a.a))), _wgslsmith_f_op_f32(round(-787f))), ~_wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, -56141i), u_input.b)), u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-382f + -1593f)))), 470f)), _wgslsmith_f_op_f32(f32(-1f) * -914f));
}

