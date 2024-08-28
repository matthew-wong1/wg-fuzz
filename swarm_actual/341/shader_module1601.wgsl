struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28>;

var<private> global1: array<i32, 16>;

var<private> global2: Struct_2 = Struct_2(vec2<u32>(0u, 4294967295u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_3, arg_3: vec3<bool>) -> vec2<f32> {
    global0 = array<f32, 28>();
    var var_0 = ~u_input.c;
    let var_1 = arg_2.c;
    let var_2 = Struct_1(vec2<f32>(1f, 1f), arg_0 || any(select(arg_3, select(arg_3, arg_3, vec3<bool>(arg_3.x, false, true)), arg_0)));
    var var_3 = var_2;
    return arg_2.b.xx;
}

fn func_2(arg_0: i32, arg_1: vec2<bool>) -> Struct_3 {
    global1 = array<i32, 16>();
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_3(~40297u < _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, global2.a.x)), -1i, Struct_3(false, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-613f, global0[_wgslsmith_index_u32(13770u, 28u)], 522f))), Struct_2(u_input.c), false), !(!vec3<bool>(arg_1.x, true, arg_1.x))))))));
    global0 = array<f32, 28>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 698f) * var_0) + _wgslsmith_f_op_vec2_f32(-var_0)) * vec2<f32>(_wgslsmith_f_op_f32(min(var_0.x, 997f)), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(22059u, 28u)], var_0.x)))), (u_input.c.x > 4294967295u) | true);
    global0 = array<f32, 28>();
    return Struct_3(true, vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global2.a.x, 28u)] * -1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2522f, 994f, true))), -2242f))), Struct_2(vec2<u32>(4294967295u, firstLeadingBit(~96555u))), arg_1.x);
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_3 {
    var var_0 = u_input.c.x;
    var var_1 = ~global2.a;
    var_0 = 1u;
    var var_2 = Struct_1(vec2<f32>(1585f, _wgslsmith_f_op_f32(-arg_1.a.x)), !(~arg_0 > _wgslsmith_sub_u32(arg_0, u_input.c.x)) != any(vec4<bool>(arg_1.b, arg_1.b || true, arg_1.b & false, true)));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.a) + vec2<f32>(-738f, var_2.a.x));
    return func_2(min(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0, arg_0) & _wgslsmith_dot_vec2_u32(vec2<u32>(18098u, var_1.x), global2.a), 16u)] << (u_input.c.x % 32u), u_input.b.x), select(select(vec2<bool>(var_2.b, 70452i < global1[_wgslsmith_index_u32(45068u, 16u)]), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(var_2.b, true), vec2<bool>(arg_1.b, true)), select(vec2<bool>(true, var_2.b), vec2<bool>(true, arg_1.b), true)), !select(vec2<bool>(true, arg_1.b), vec2<bool>(var_2.b, false), var_2.b)), vec2<bool>(true, true), true || (u_input.b.x >= -1i)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3) -> Struct_3 {
    let var_0 = vec4<bool>(!(!arg_1.a), arg_1.d, all(vec2<bool>(arg_1.d, all(select(vec4<bool>(arg_1.a, arg_1.d, arg_1.d, arg_1.a), vec4<bool>(arg_1.a, true, false, arg_1.a), true)))), any(select(select(vec4<bool>(arg_1.a, true, arg_1.d, arg_1.a), vec4<bool>(true, true, arg_1.a, false), true != arg_1.d), vec4<bool>(false, arg_1.d, !arg_1.a, true), !all(vec4<bool>(arg_1.d, arg_1.a, true, false)))));
    global1 = array<i32, 16>();
    var var_1 = func_1(u_input.c.x, Struct_1(_wgslsmith_f_op_vec2_f32(-arg_1.b.yy), func_2(global1[_wgslsmith_index_u32(~4294967295u, 16u)], !select(vec2<bool>(true, var_0.x), var_0.yy, vec2<bool>(true, arg_1.d))).d)).c;
    let var_2 = arg_1.b.yx;
    global2 = arg_1.c;
    return func_2(arg_0.x, var_0.wx);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: f32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-func_4(_wgslsmith_mod_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(63548u, 16u)], global1[_wgslsmith_index_u32(1u, 16u)], u_input.b.x, -20895i), vec4<i32>(0i, -1i, global1[_wgslsmith_index_u32(4294967295u, 16u)], -1i)), arg_1).b.x))));
    let var_1 = vec4<f32>(_wgslsmith_div_f32(-1000f, -841f), arg_2, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(abs(firstLeadingBit(arg_1.c.a.x))), 28u)] - 603f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(0u, 28u)]) + _wgslsmith_f_op_f32(round(arg_1.b.x))) * _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(8711u, 28u)] + arg_2), func_4(vec4<i32>(0i, u_input.a, u_input.a, u_input.a), Struct_3(arg_1.a, arg_1.b, arg_1.c, arg_1.a)).d))) + _wgslsmith_f_op_f32(arg_1.b.x + global0[_wgslsmith_index_u32(4294967295u, 28u)])));
    var var_2 = Struct_2(u_input.c);
    global0 = array<f32, 28>();
    var var_3 = func_1(_wgslsmith_dot_vec2_u32(global2.a, abs(~_wgslsmith_div_vec2_u32(vec2<u32>(1u, var_2.a.x), vec2<u32>(arg_0.x, arg_1.c.a.x)))), Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_1.yx)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 178f) - arg_1.b.xy)))), (min(global1[_wgslsmith_index_u32(4294967295u, 16u)], -19573i) == ~6265i) && true));
    return select(!vec2<bool>(all(!vec3<bool>(true, arg_1.a, false)), arg_1.a || (var_2.a.x >= 75032u)), !(!select(!vec2<bool>(false, arg_1.d), select(vec2<bool>(var_3.d, true), vec2<bool>(var_3.a, true), var_3.d), select(vec2<bool>(false, false), vec2<bool>(var_3.d, false), vec2<bool>(false, var_3.a)))), select(any(!vec4<bool>(true, false, arg_1.a, false)), true, func_4(_wgslsmith_mod_vec4_i32(select(vec4<i32>(global1[_wgslsmith_index_u32(arg_1.c.a.x, 16u)], global1[_wgslsmith_index_u32(global2.a.x, 16u)], -2147483647i, global1[_wgslsmith_index_u32(27323u, 16u)]), vec4<i32>(2147483647i, u_input.a, global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(var_3.c.a.x, 16u)]), true), vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, 2147483647i)), func_2(u_input.b.x, vec2<bool>(true, true))).a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(392f, -1511f), vec2<f32>(global0[_wgslsmith_index_u32(global2.a.x, 28u)], global0[_wgslsmith_index_u32(u_input.c.x, 28u)]), vec2<bool>(true, true))) * vec2<f32>(-977f, 875f)), vec2<f32>(global0[_wgslsmith_index_u32(global2.a.x, 28u)], -350f)))));
    let var_1 = any(select(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, false), any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), false))), vec2<bool>(-353f < var_0.x, !all(vec3<bool>(false, true, false))), func_5(~(~vec2<u32>(27640u, 21573u)), func_4(firstTrailingBit(vec4<i32>(u_input.b.x, -30084i, -2147483647i, 2147483647i)), func_1(53292u, Struct_1(vec2<f32>(var_0.x, 181f), true))), -580f)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(func_2(-2147483647i, select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, true), vec2<bool>(var_1, false))).b.zy))), !var_1);
    var var_3 = u_input.b;
    let var_4 = var_2;
    let var_5 = Struct_3(true || any(!(!vec3<bool>(true, var_2.b, false))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-320f, var_2.a.x, _wgslsmith_div_f32(var_0.x, var_0.x)) * vec3<f32>(349f, -664f, _wgslsmith_f_op_f32(-var_2.a.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1089f, 1592f, var_0.x), vec3<f32>(1000f, -687f, -159f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.a.x, var_4.a.x, var_4.a.x) * vec3<f32>(var_0.x, 322f, -1000f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(947f, 1380f, var_0.x)))))))), func_1(_wgslsmith_mult_u32(u_input.c.x, 21437u), Struct_1(var_4.a, 12731i < _wgslsmith_mult_i32(6450i, global1[_wgslsmith_index_u32(1u, 16u)]))).c, func_2(firstLeadingBit(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(var_3.x, var_3.x, 8369i)), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(global2.a.x, 16u)], global1[_wgslsmith_index_u32(1u, 16u)]), vec3<i32>(var_3.x, -1i, 31421i)))), select(select(vec2<bool>(true, true), vec2<bool>(false, var_2.b), vec2<bool>(true, true)), vec2<bool>(var_0.x != 197f, func_5(u_input.c, Struct_3(var_2.b, vec3<f32>(485f, 623f, var_4.a.x), Struct_2(u_input.c), var_2.b), 144f).x), !all(vec2<bool>(var_2.b, false)))).a);
    let var_6 = u_input.b;
    var var_7 = vec3<u32>(58889u, var_5.c.a.x, var_5.c.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(-vec4<i32>(0i, var_3.x, u_input.a, 1i) << ((vec4<u32>(4294967295u, 4294967295u, 1u, u_input.c.x) | vec4<u32>(0u, 1u, u_input.c.x, 67953u)) % vec4<u32>(32u)), var_5).c.a & ~vec2<u32>(var_5.c.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, var_5.c.a.x, var_7.x), vec3<u32>(var_5.c.a.x, 4294967295u, global2.a.x))), var_6.x, 4294967295u, min(16556u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.c.x, u_input.c.x, 4097u, var_7.x), select(vec4<u32>(11636u, var_5.c.a.x, u_input.c.x, 4294967295u), vec4<u32>(85863u, global2.a.x, 13930u, 1u), vec4<bool>(var_4.b, false, var_5.a, var_4.b)), vec4<u32>(var_7.x, global2.a.x, 0u, u_input.c.x) << (vec4<u32>(4294967295u, 1u, 0u, 1u) % vec4<u32>(32u))), countOneBits(abs(vec4<u32>(var_7.x, 0u, u_input.c.x, global2.a.x))))));
}

