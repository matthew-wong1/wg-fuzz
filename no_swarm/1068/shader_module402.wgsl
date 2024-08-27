struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: u32,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<i32>, 24>;

var<private> global2: f32 = 1133f;

var<private> global3: i32 = 31596i;

var<private> global4: array<f32, 17>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    var var_0 = Struct_2(485f, !select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), any(vec3<bool>(true, false, false))), true), _wgslsmith_mod_u32(0u, 41942u), _wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(10181u, u_input.c, 14969u, u_input.e), vec4<u32>(75441u, arg_0.x, u_input.e, u_input.e))), 17u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1171f) - _wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(u_input.e, 17u)], global4[_wgslsmith_index_u32(arg_0.x, 17u)]))))))), Struct_1(min(0u, ~_wgslsmith_sub_u32(u_input.c, arg_0.x)), vec2<bool>(true, true)));
    let var_1 = Struct_2(1215f, select(vec3<bool>(var_0.b.x != any(vec2<bool>(false, false)), true, var_0.b.x), var_0.b, !vec3<bool>(var_0.e.b.x, var_0.b.x, true || var_0.e.b.x)), _wgslsmith_dot_vec4_u32(~(~(vec4<u32>(62306u, var_0.c, 18660u, var_0.c) & vec4<u32>(1u, arg_0.x, 1u, var_0.c))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, 4294967295u, 47220u, arg_0.x), vec4<u32>(var_0.e.a, u_input.c, 91347u, arg_0.x)) & vec4<u32>(var_0.e.a, 12293u, 4294967295u, select(0u, 1u, var_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)), Struct_1(~var_0.e.a, vec2<bool>(false, var_0.b.x)));
    var_0 = var_1;
    let var_2 = var_0.e;
    global3 = min(u_input.b, select(u_input.b, _wgslsmith_mult_i32(_wgslsmith_div_i32(19797i, u_input.d.x), -38083i) ^ abs(_wgslsmith_clamp_i32(u_input.d.x, -3142i, u_input.a)), var_0.b.x));
    return _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.c, 17u)] - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(~var_0.c, 17u)] * global4[_wgslsmith_index_u32(abs(40989u), 17u)]) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d * -313f), var_0.d) * 979f)));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    global1 = array<vec2<i32>, 24>();
    let var_0 = Struct_1(1u, arg_0.yy);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-576f * _wgslsmith_f_op_f32(func_3(vec3<u32>(u_input.c, 4294967295u, arg_2.e.a))))))), !vec3<bool>(true, max(0u, 53299u) <= arg_2.c, !arg_0.x && true), firstTrailingBit(select(arg_2.c, 4294967295u, false)), arg_1, var_0);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1604f), !select(select(select(vec3<bool>(var_1.e.b.x, arg_3, var_1.b.x), vec3<bool>(var_0.b.x, false, arg_2.b.x), arg_2.b), arg_2.b, select(arg_2.b, arg_0, false)), select(var_1.b, var_1.b, var_1.b), (u_input.a >= u_input.d.x) && arg_2.e.b.x), ~_wgslsmith_mult_u32(var_0.a, var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), var_0);
    global3 = -16727i;
    return Struct_1(max(var_2.c, ~_wgslsmith_clamp_u32(var_2.c, u_input.c, u_input.c) << (arg_2.e.a % 32u)), vec2<bool>(select(true, u_input.b == u_input.b, 13275i != u_input.d.x) & (any(arg_2.b) == var_2.b.x), true));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_2) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(abs(u_input.e), 17u)], -1000f))));
    global3 = u_input.a;
    var var_1 = func_2(!arg_3.b, _wgslsmith_f_op_f32(-arg_1.x), arg_3, true);
    return vec2<bool>(any(select(vec3<bool>(false, !arg_3.b.x, true), !(!arg_3.b), arg_0.b.x)), arg_0.b.x);
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 37523u), 17u)], _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.e, 17u)]))), -1000f) <= 630f;
    let var_1 = vec3<u32>(~59243u, ~arg_0.x, 0u << (_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(max(arg_0.zxw, vec3<u32>(arg_0.x, u_input.c, 15520u)), vec3<u32>(u_input.e, u_input.e, u_input.c)), arg_0.yzw) % 32u));
    let var_2 = u_input.d.x;
    global1 = array<vec2<i32>, 24>();
    var var_3 = 1u;
    return Struct_1(var_1.x, !func_4(func_2(!vec3<bool>(var_0, var_0, var_0), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(3159u, 17u)]), Struct_2(-448f, vec3<bool>(false, var_0, var_0), var_1.x, 360f, Struct_1(u_input.c, vec2<bool>(true, var_0))), global4[_wgslsmith_index_u32(4570u, 17u)] <= global4[_wgslsmith_index_u32(1u, 17u)]), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1000f, global4[_wgslsmith_index_u32(61130u, 17u)]))), func_2(vec3<bool>(var_0, var_0, true), _wgslsmith_f_op_f32(f32(-1f) * -292f), Struct_2(global4[_wgslsmith_index_u32(u_input.c, 17u)], vec3<bool>(var_0, false, true), var_1.x, 872f, Struct_1(4294967295u, vec2<bool>(var_0, false))), var_0), Struct_2(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(4294967295u, 17u)], 1750f), select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, var_0, false)), 70314u, _wgslsmith_f_op_f32(f32(-1f) * -922f), func_2(vec3<bool>(false, false, false), 1223f, Struct_2(global4[_wgslsmith_index_u32(4294967295u, 17u)], vec3<bool>(var_0, var_0, var_0), var_1.x, global4[_wgslsmith_index_u32(arg_0.x, 17u)], Struct_1(1u, vec2<bool>(var_0, false))), var_0))));
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> Struct_1 {
    let var_0 = reverseBits(~(~countOneBits(vec4<u32>(38277u, arg_0.a, 13631u, 32214u))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 17u)] - 565f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(0u, 17u)])))), vec3<bool>(false, arg_0.b.x, true), arg_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_mod_vec3_u32(vec3<u32>(30633u, u_input.e, 32489u), vec3<u32>(u_input.e, arg_0.a, 0u)) & firstTrailingBit(var_0.wwx))), -1070f), Struct_1(max(arg_1, _wgslsmith_mult_u32(~23058u, 1u)), func_2(!vec3<bool>(arg_2, true, arg_0.b.x), -134f, Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -764f), vec3<bool>(false, arg_0.b.x, arg_0.b.x), ~0u, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(arg_0.a, 17u)]), func_1(vec4<u32>(u_input.e, 1u, 2772u, arg_1))), arg_0.b.x & arg_2).b));
    return func_1(_wgslsmith_mult_vec4_u32(vec4<u32>(func_1(var_0).a, arg_1, _wgslsmith_mult_u32(select(var_0.x, var_1.e.a, arg_0.b.x), 1u), 6886u), vec4<u32>(_wgslsmith_dot_vec2_u32(~var_0.yy, firstTrailingBit(var_0.xw)), reverseBits(4294967295u), _wgslsmith_dot_vec3_u32(select(vec3<u32>(790u, u_input.e, 1u), var_0.wxz, vec3<bool>(arg_0.b.x, var_1.e.b.x, var_1.b.x)), vec3<u32>(87822u, 4294967295u, 0u)), 1u)));
}

fn func_6(arg_0: Struct_2) -> Struct_2 {
    let var_0 = 57243u;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-arg_0.a), arg_0.b, var_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(12835u, 17u)] + 424f) + _wgslsmith_f_op_f32(select(arg_0.a, arg_0.a, arg_0.b.x)))))), arg_0.e);
    let var_2 = var_0;
    let var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.a, u_input.d.x >> (firstLeadingBit(arg_0.c ^ 37072u) % 32u)), u_input.d ^ (_wgslsmith_div_vec2_i32(select(vec2<i32>(31231i, u_input.a), vec2<i32>(u_input.b, -55651i), vec2<bool>(true, false)), ~vec2<i32>(-2147483647i, 34420i)) >> ((vec2<u32>(36139u, u_input.e) ^ firstTrailingBit(vec2<u32>(21053u, 38465u))) % vec2<u32>(32u))));
    global0 = ~var_1.c;
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -368f)), select(arg_0.b, !vec3<bool>(!arg_0.e.b.x, any(vec3<bool>(true, false, var_1.b.x)), arg_0.b.x), true), ~func_1(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(79106u, 4294967295u, 1u, 93938u), vec4<u32>(1u, var_1.e.a, var_1.c, var_2)), ~6569u, ~var_1.c, firstTrailingBit(var_2))).a, _wgslsmith_f_op_f32(max(-1574f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)))), Struct_1(~1u, arg_0.e.b));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec3<i32>(u_input.a, select(~45166i, u_input.b, arg_2.b.x), abs(u_input.d.x));
    let var_1 = arg_1;
    global0 = max(min(10025u, ~(~arg_1.e.a & 1u)), func_5(var_1.e, 4294967295u, !(func_5(var_1.e, 15465u, arg_1.b.x).b.x || true)).a);
    var var_2 = !arg_1.e.b.x;
    var var_3 = 52455i;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(false, _wgslsmith_sub_u32(~(~1760u), _wgslsmith_add_u32(0u, u_input.c) | ~u_input.c) <= _wgslsmith_dot_vec3_u32(~(~vec3<u32>(2961u, u_input.c, 1u)), vec3<u32>(u_input.e, u_input.e, 1u)), true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, 82293u > u_input.c, -2147483647i != u_input.d.x), vec4<bool>(false, all(vec4<bool>(false, false, false, false)), false, all(vec4<bool>(false, false, true, true))))));
    var var_1 = func_7(Struct_1(firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(530u, u_input.e, u_input.e), vec3<u32>(u_input.c, 54548u, 45389u)), abs(vec3<u32>(u_input.e, 1u, u_input.e)))), select(var_0.xw, vec2<bool>(any(vec3<bool>(false, false, false)), all(vec2<bool>(var_0.x, var_0.x))), select(vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(false, false), var_0.wy, var_0.x), var_0.xx))), func_6(Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.c, 17u)]))), var_0.zyx, 19940u, -434f, func_5(func_1(vec4<u32>(u_input.e, 4294967295u, u_input.e, u_input.e)), 1u, var_0.x))), Struct_1(~u_input.c, var_0.zx));
    global1 = array<vec2<i32>, 24>();
    var_1 = Struct_1(max(func_6(Struct_2(639f, vec3<bool>(var_0.x, true, var_0.x), var_1.a, global4[_wgslsmith_index_u32(~29207u, 17u)], func_6(Struct_2(-1559f, var_0.xzy, 30733u, global4[_wgslsmith_index_u32(var_1.a, 17u)], Struct_1(7214u, vec2<bool>(false, var_1.b.x)))).e)).c, select(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 13793u, 1u), vec3<u32>(19174u, var_1.a, 0u)), u_input.e & 49147u), _wgslsmith_add_u32(u_input.c, var_1.a ^ u_input.e), var_0.x)), func_2(vec3<bool>(var_1.b.x, false, -u_input.d.x != 2147483647i), -352f, func_6(func_6(func_6(Struct_2(1000f, var_0.wyx, u_input.c, 347f, Struct_1(75761u, var_1.b))))), var_1.b.x).b);
    var var_2 = reverseBits(-11507i);
    global3 = abs(u_input.d.x);
    global3 = -((1i ^ ~u_input.d.x) & select(-(u_input.d.x >> (17625u % 32u)), 1i, true & (u_input.a <= -114i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1381f, -1000f, global4[_wgslsmith_index_u32(27317u, 17u)])))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f))), !vec3<bool>(true, 1651i > u_input.d.x, all(vec4<bool>(true, var_0.x, true, true))))), vec4<i32>(select(-(i32(-1i) * -2147483647i), 65417i, !func_4(Struct_1(u_input.c, vec2<bool>(false, false)), vec2<f32>(global4[_wgslsmith_index_u32(11803u, 17u)], global4[_wgslsmith_index_u32(u_input.c, 17u)]), Struct_1(1u, var_1.b), Struct_2(-1847f, vec3<bool>(var_0.x, var_0.x, var_0.x), var_1.a, 121f, Struct_1(u_input.c, vec2<bool>(false, true)))).x), _wgslsmith_mult_i32(~2147483647i, abs(u_input.b)), ~(i32(-1i) * -1i), 1i));
}

