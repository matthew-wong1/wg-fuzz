struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec3<bool>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<u32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27> = array<u32, 27>(0u, 4294967295u, 1u, 0u, 4294967295u, 4294967295u, 1u, 1899u, 1u, 41005u, 4294967295u, 4294967295u, 0u, 71742u, 4294967295u, 4294967295u, 1u, 1u, 4294967295u, 24001u, 10753u, 0u, 4294967295u, 1u, 0u, 23119u, 8751u);

var<private> global1: vec3<f32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_2(-49799i, Struct_1(~abs(_wgslsmith_mod_vec2_u32(u_input.a.zw, vec2<u32>(u_input.a.x, u_input.a.x))), 50026i < u_input.b.x, vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, false), true)), !all(vec2<bool>(true, false)), (600f < global1.x) || true), _wgslsmith_f_op_f32(-global1.x), vec4<f32>(_wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(681f - global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1565f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global1.x)))))), select(~vec3<u32>(u_input.a.x, 1u, ~0u), u_input.a.yxx, true), true, Struct_1(u_input.a.zy, true, !vec3<bool>(true, any(vec3<bool>(false, false, true)), u_input.a.x <= 28245u), -1042f, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, -1025f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 2515f, -1115f, global1.x) * vec4<f32>(-238f, 1569f, global1.x, -214f)))))));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-647f, 213f)) * var_0.b.e.x))), 1242f, -1567f));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: bool) -> u32 {
    global1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(arg_0))));
    var var_0 = Struct_2(u_input.c, Struct_1(u_input.a.xx, arg_1.x, vec3<bool>(true, !(arg_2 & false), arg_1.x), arg_0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1416f, global1.x, 1030f, 1582f))), u_input.a.ywy, any(!(!vec4<bool>(arg_2, arg_2, false, arg_1.x))), Struct_1(~vec2<u32>(_wgslsmith_mod_u32(0u, global0[_wgslsmith_index_u32(1u, 27u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a.yz), 27u)]), select(any(vec2<bool>(true, arg_1.x)), all(vec3<bool>(arg_2, false, arg_1.x)), arg_2 && (1501f <= arg_0.x)), !(!(!vec3<bool>(arg_1.x, true, arg_1.x))), arg_0.x, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -789f, global1.x))))))));
    var var_1 = Struct_3(var_0.b.a.x, vec3<u32>(54339u, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(min(0u, 1u), 27u)], 34476u), ~(~global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(37353u, 41456u, global0[_wgslsmith_index_u32(var_0.c.x, 27u)]), 27u)])), _wgslsmith_div_i32(var_0.a, var_0.a), Struct_2(u_input.c << (var_0.c.x % 32u), Struct_1(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a.x, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, var_0.e.a.x)), arg_1.x, vec3<bool>(true, false, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1087f, var_0.e.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_0.b.e, vec4<f32>(-1914f, arg_0.x, global1.x, 631f))))), select(u_input.a.zxy, u_input.a.xzx, select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(var_0.b.c.x, false, arg_2), vec3<bool>(arg_2, var_0.b.b, true))) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(1795u, global0[_wgslsmith_index_u32(4294967295u, 27u)], u_input.a.x) >> (var_0.c % vec3<u32>(32u)), vec3<u32>(var_0.e.a.x, 4294967295u, 696u) ^ vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(22121u, 27u)], var_0.b.a.x)), arg_1.x | !(!var_0.e.c.x), Struct_1(var_0.b.a, true != (arg_2 || arg_2), !vec3<bool>(arg_2, false, arg_2), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_vec3_f32(func_3()).x), vec4<f32>(_wgslsmith_f_op_f32(2438f - 1095f), _wgslsmith_f_op_f32(1149f - 898f), _wgslsmith_f_op_f32(arg_0.x * 122f), var_0.e.e.x))));
    let var_2 = firstTrailingBit(_wgslsmith_dot_vec3_i32(firstTrailingBit(-(vec3<i32>(u_input.b.x, var_0.a, 22695i) & vec3<i32>(1i, 1i, u_input.c))), _wgslsmith_clamp_vec3_i32(-(vec3<i32>(39611i, 2147483647i, 20427i) << (vec3<u32>(var_1.d.c.x, var_1.a, 51271u) % vec3<u32>(32u))), vec3<i32>(abs(var_0.a), _wgslsmith_clamp_i32(0i, -2147483647i, 30553i), ~var_0.a), vec3<i32>(var_0.a, firstTrailingBit(var_1.d.a), select(var_0.a, u_input.c, var_0.d)))));
    global1 = _wgslsmith_f_op_vec3_f32(-arg_0);
    return countOneBits(~(~(~u_input.a.x << (u_input.a.x % 32u))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<u32>) -> f32 {
    var var_0 = Struct_3(global0[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3()))), !(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))), 27u)], ~vec3<u32>(~4294967295u, ~arg_1.x, ~global0[_wgslsmith_index_u32(arg_1.x, 27u)]) << (~(~vec3<u32>(u_input.a.x, 20940u, 42843u)) % vec3<u32>(32u)), -25867i, Struct_2(u_input.c, Struct_1(~(~vec2<u32>(1u, u_input.a.x)), false, !select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), _wgslsmith_f_op_f32(trunc(493f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(867f, 268f, 2092f, 551f), vec4<f32>(573f, global1.x, 151f, arg_0.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-534f, arg_0.x, global1.x, global1.x) - vec4<f32>(-1463f, arg_0.x, -623f, 486f)))), vec3<u32>(109625u, arg_1.x, 47913u), true, Struct_1(arg_1.zy, true, vec3<bool>(true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.x)) - _wgslsmith_f_op_f32(global1.x - global1.x)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -974f), arg_0.x, _wgslsmith_f_op_f32(trunc(-1571f)), _wgslsmith_f_op_f32(abs(global1.x))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.d.e.e, vec4<f32>(-148f, 773f, -1000f, global1.x)) - vec4<f32>(165f, _wgslsmith_f_op_f32(arg_0.x * 123f), -327f, -488f)))));
    let var_2 = firstTrailingBit(u_input.b);
    var var_3 = select(var_0.d.e.c, !select(vec3<bool>(true, arg_0.x >= var_0.d.b.e.x, select(var_0.d.e.b, var_0.d.d, true)), select(var_0.d.b.c, !var_0.d.e.c, var_0.d.b.c), var_0.d.b.c), select(var_0.d.b.c, select(var_0.d.b.c, var_0.d.b.c, var_0.d.b.c), select(select(vec3<bool>(true, var_0.d.b.b, var_0.d.b.c.x), !var_0.d.e.c, vec3<bool>(var_0.d.d, true, var_0.d.e.c.x)), !select(var_0.d.b.c, var_0.d.e.c, false), true)));
    var var_4 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_0.d.b.e)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-259f, arg_0.x, var_1.x, 1000f) - var_1)))));
    return var_0.d.b.e.x;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: Struct_3) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-1770f * global1.x);
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(212f)) - -182f)));
    var var_1 = arg_2.d;
    var_1 = Struct_2(u_input.b.x, Struct_1(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], 27u)], 26494u, 1u, u_input.a.x)), firstLeadingBit(0u)), 4294967295u), arg_2.d.d, !vec3<bool>(true, arg_2.d.d, any(arg_2.d.e.c.yy)), global1.x, var_1.b.e), ~vec3<u32>(reverseBits(arg_1.x) >> (arg_2.b.x % 32u), ~arg_1.x, u_input.a.x), var_1.d, Struct_1(arg_2.b.xx, any(select(!vec4<bool>(var_1.b.b, var_1.d, arg_2.d.b.b, var_1.d), select(vec4<bool>(arg_2.d.e.b, true, var_1.b.c.x, var_1.e.b), vec4<bool>(false, true, arg_2.d.b.c.x, var_1.d), false), arg_2.d.e.b)), select(!(!vec3<bool>(false, arg_2.d.d, arg_2.d.d)), select(vec3<bool>(var_1.e.c.x, true, var_1.e.c.x), !vec3<bool>(arg_2.d.e.c.x, true, false), !vec3<bool>(false, true, var_1.d)), vec3<bool>(arg_2.d.b.c.x || false, any(vec3<bool>(arg_2.d.d, arg_2.d.e.b, arg_2.d.b.c.x)), arg_2.d.d)), var_1.b.d, _wgslsmith_div_vec4_f32(arg_2.d.e.e, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -524f), 1520f, _wgslsmith_f_op_f32(min(106f, 401f)), arg_0.x))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.d.b.d * global1.x), _wgslsmith_f_op_f32(-346f + arg_0.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2439f, _wgslsmith_f_op_f32(f32(-1f) * -417f)))));
    return (arg_0.x > _wgslsmith_f_op_f32(-var_1.e.e.x)) | !any(!vec4<bool>(var_1.e.c.x, true, arg_2.d.b.c.x, false));
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, -1633f)), u_input.a.xzy)), _wgslsmith_f_op_f32(trunc(global1.x))) + vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(570f, 861f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1596f * -1193f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f * -395f), _wgslsmith_f_op_f32(-604f - 1000f), true)))), u_input.a.yy, Struct_3(u_input.a.x, vec3<u32>(_wgslsmith_add_u32(59558u, 68430u) ^ u_input.a.x, ~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42221u, 27u)], 27u)]), _wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_mult_u32(76631u, 4032u), 7834u)), 0i, Struct_2(~(2147483647i ^ u_input.b.x), Struct_1(select(u_input.a.yy, u_input.a.xw, false), false, select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), -1000f, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, global1.x, -1248f, 1172f)))), abs(u_input.a.wzy) << (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], 27u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)], 27u)], 4294967295u) % vec3<u32>(32u)), all(vec2<bool>(true, true)), Struct_1(u_input.a.zx | u_input.a.yy, true, select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), -238f, vec4<f32>(-1077f, 928f, global1.x, -608f)))));
    return Struct_1(u_input.a.xw, var_0, vec3<bool>(all(!(!vec4<bool>(var_0, false, var_0, false))), true || all(!vec2<bool>(var_0, var_0)), !var_0), -222f, vec4<f32>(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(global1.x))))), global1.x, global1.x, 1f));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec2<bool>) -> Struct_4 {
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1514f, arg_0.e.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-933f - -603f))));
    let var_0 = ~arg_0.c.x;
    global0 = array<u32, 27>();
    var var_1 = vec3<u32>(~(u_input.a.x | ~_wgslsmith_sub_u32(arg_0.c.x, 1u)), func_1().a.x, 0u);
    var var_2 = u_input.a.x;
    return Struct_4(_wgslsmith_f_op_vec4_f32(-arg_0.e.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(Struct_2(_wgslsmith_add_i32(_wgslsmith_div_i32(1i, _wgslsmith_clamp_i32(u_input.c, u_input.b.x, u_input.c)), ~_wgslsmith_div_i32(41296i, 41358i)), func_1(), ~(~u_input.a.yyx), any(vec3<bool>(true, true, func_1().c.x)), Struct_1(~u_input.a.zy, global1.x != _wgslsmith_f_op_f32(-2428f + global1.x), func_1().c, _wgslsmith_f_op_f32(-512f - _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2322f, global1.x, global1.x, 1000f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1131f, -1192f, global1.x, global1.x))))))), Struct_4(vec4<f32>(global1.x, 1000f, global1.x, _wgslsmith_f_op_f32(f32(-1f) * -186f))), Struct_2(abs(48232i), func_1(), ~(~(u_input.a.yxw & vec3<u32>(0u, u_input.a.x, 10211u))), true, func_1()), vec2<bool>(!(func_5(vec3<f32>(-236f, global1.x, -456f), u_input.a.wz, Struct_3(9882u, u_input.a.xyz, u_input.c, Struct_2(1i, Struct_1(u_input.a.xz, false, vec3<bool>(false, false, false), -1407f, vec4<f32>(-178f, 1417f, 1079f, global1.x)), u_input.a.wzx, true, Struct_1(vec2<u32>(1u, global0[_wgslsmith_index_u32(u_input.a.x, 27u)]), false, vec3<bool>(true, true, true), 426f, vec4<f32>(global1.x, global1.x, 534f, global1.x))))) && true), true));
    let var_1 = func_1();
    let var_2 = var_0;
    var var_3 = var_0.a;
    var var_4 = !select(!vec3<bool>(true, false, var_1.c.x), vec3<bool>((var_1.c.x | false) & (u_input.a.x >= global0[_wgslsmith_index_u32(var_1.a.x, 27u)]), !select(var_1.b, var_1.b, var_1.c.x), !(574f <= var_2.a.x)), !func_1().c);
    let var_5 = false | var_4.x;
    global0 = array<u32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(~(abs(u_input.b) & u_input.b), countOneBits(abs(u_input.b)) & vec2<i32>(u_input.b.x, 0i)), vec2<u32>(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.xwx) + vec3<f32>(-1000f, -196f, global1.x)), !func_1().c.yx, true && func_5(vec3<f32>(2396f, 277f, var_2.a.x), vec2<u32>(73572u, 1u), Struct_3(1u, vec3<u32>(0u, var_1.a.x, 1u), 30394i, Struct_2(48185i, var_1, u_input.a.yzy, true, Struct_1(var_1.a, false, vec3<bool>(var_1.b, var_5, var_1.b), var_1.d, var_2.a))))), global0[_wgslsmith_index_u32(1u, 27u)]), -1638f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f))), firstTrailingBit(vec4<i32>(u_input.c, _wgslsmith_mod_i32(u_input.c, _wgslsmith_div_i32(-1i, -2147483647i)), u_input.b.x, abs(~u_input.b.x))));
}

