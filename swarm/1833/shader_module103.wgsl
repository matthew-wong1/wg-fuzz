struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 25>;

var<private> global1: vec3<bool>;

var<private> global2: Struct_2;

var<private> global3: Struct_1 = Struct_1(vec2<f32>(1007f, -863f), i32(-2147483648));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> bool {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a.x, u_input.d, u_input.a.x, countOneBits(~u_input.b)), select(min(~vec4<u32>(u_input.a.x, 58086u, 1u, 15053u), vec4<u32>(u_input.a.x, 1u, u_input.b, u_input.d)) << ((reverseBits(vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, u_input.d)) << (abs(vec4<u32>(4294967295u, u_input.b, 4294967295u, 11152u)) % vec4<u32>(32u))) % vec4<u32>(32u)), abs(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(96077u, 4294967295u, 4294967295u, u_input.b)), vec4<u32>(32667u, 73634u, 78559u, 40092u), ~vec4<u32>(1277u, 90246u, u_input.a.x, 1u))), any(!vec4<bool>(global1.x, false, global1.x, true))));
    var_0 = u_input.b;
    var var_1 = max(vec3<u32>(u_input.b, 1u, ~5761u ^ _wgslsmith_sub_u32(u_input.b, ~u_input.b)), abs(~max(~vec3<u32>(4294967295u, u_input.d, 1313u), reverseBits(vec3<u32>(u_input.a.x, 78416u, u_input.a.x)))));
    let var_2 = global1.x;
    global0 = array<vec3<i32>, 25>();
    return any(vec2<bool>(true && select(false, select(global1.x, true, true), true), false));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec3<f32>) -> vec3<f32> {
    global0 = array<vec3<i32>, 25>();
    var var_0 = -(~vec3<i32>(min(-arg_0.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, arg_0.b, -1i), global2.a)), arg_0.b, ~1i));
    global0 = array<vec3<i32>, 25>();
    let var_1 = Struct_2(global2.a, arg_1, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-751f, global3.a.x)), _wgslsmith_f_op_f32(arg_3.x + arg_0.a.x), true)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -941f)))), -(max(var_0.x, -2198i) << (0u % 32u))), _wgslsmith_f_op_vec3_f32(trunc(global2.d)), global3.a.x);
    var var_2 = select(!(!select(vec4<bool>(false, global1.x, arg_2.x, global1.x), !vec4<bool>(global1.x, false, global1.x, false), false)), select(!(!(!vec4<bool>(arg_2.x, global1.x, true, true))), vec4<bool>(false, true, all(!arg_2), !(!global1.x)), (u_input.b < ~u_input.b) || global1.x), arg_2.x);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(122f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.a.x, arg_0.a.x, true))))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -581f), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.a.x - arg_1.a.x)), true))));
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: bool) -> Struct_1 {
    var var_0 = ~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a.x, ~(~0u)), u_input.a.x), 25u)];
    var_0 = -_wgslsmith_sub_vec3_i32(max(vec3<i32>(_wgslsmith_dot_vec2_i32(global2.a.zx, vec2<i32>(u_input.c.x, u_input.c.x)), global3.b, _wgslsmith_mod_i32(26529i, global2.b.b)), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.c, vec3<i32>(1i, -1i, -1i)), select(u_input.c, global2.a.wwx, vec3<bool>(arg_2, arg_1.x, false)))), u_input.c);
    var var_1 = global2.b;
    global2 = Struct_2(global2.a, Struct_1(global3.a, 8629i), Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.a), global2.b.b), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_4(Struct_1(global3.a, 1i), global2.c, vec3<bool>(select(false, false, arg_2), func_3(Struct_2(global2.a, global2.c, global2.c, vec3<f32>(-1490f, 797f, 1000f), 961f), -30130i), true), global2.d)))), 1000f);
    global2 = Struct_2(~select(_wgslsmith_mult_vec4_i32(-global2.a, max(global2.a, vec4<i32>(6667i, global3.b, var_0.x, var_0.x))), _wgslsmith_mod_vec4_i32(-global2.a, global2.a >> (vec4<u32>(u_input.d, 17850u, 17226u, 1u) % vec4<u32>(32u))), select(select(vec4<bool>(true, arg_2, false, true), arg_1, arg_1), !vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false), vec4<bool>(arg_1.x, true, true, true))), global2.c, Struct_1(global3.a, -firstTrailingBit(~(-28597i))), vec3<f32>(_wgslsmith_f_op_f32(-global2.d.x), _wgslsmith_f_op_f32(trunc(-236f)), _wgslsmith_f_op_f32(-global3.a.x)), global3.a.x);
    return Struct_1(vec2<f32>(132f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(336f + global2.b.a.x) * _wgslsmith_f_op_f32(-var_1.a.x))))), var_0.x);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec3<u32> {
    global2 = Struct_2(global2.a, func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) * global3.a.x))), !select(!vec4<bool>(global1.x, true, global1.x, true), !vec4<bool>(global1.x, true, global1.x, true), true), true), func_2(arg_1.a.x, !vec4<bool>(true, global1.x, !global1.x, any(global1.yy)), global1.x), _wgslsmith_f_op_vec3_f32(func_4(Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(arg_1.a + vec2<f32>(arg_1.a.x, arg_1.a.x)))), i32(-1i) * -35749i), func_2(_wgslsmith_f_op_f32(exp2(arg_0.a.x)), vec4<bool>(any(vec2<bool>(true, false)), global1.x, true, false), false), select(select(vec3<bool>(true, global1.x, global1.x), select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(false, global1.x, global1.x), global1.x), all(global1.zy)), select(vec3<bool>(true, true, true), select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, false, global1.x), vec3<bool>(true, false, false)), select(vec3<bool>(true, global1.x, false), vec3<bool>(true, true, global1.x), global1.x)), true), global2.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x * -1930f) + _wgslsmith_div_f32(arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) - 929f))));
    let var_0 = arg_1.b;
    var var_1 = _wgslsmith_mult_u32(~(~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, u_input.b), 1u, _wgslsmith_div_u32(87047u, u_input.b))), ~min(firstLeadingBit(_wgslsmith_sub_u32(77893u, 1u)), _wgslsmith_mod_u32(u_input.b, min(4294967295u, 572u))));
    global1 = select(select(!select(vec3<bool>(false, false, global1.x), select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, true, true), false), !vec3<bool>(false, global1.x, true)), vec3<bool>(true, true, true), select(select(!vec3<bool>(true, false, global1.x), select(vec3<bool>(true, false, true), vec3<bool>(global1.x, global1.x, global1.x), global1.x), select(vec3<bool>(global1.x, false, true), vec3<bool>(true, global1.x, true), vec3<bool>(false, true, false))), vec3<bool>(global1.x, false, arg_0.b != arg_0.b), select(select(vec3<bool>(false, global1.x, false), vec3<bool>(global1.x, global1.x, false), false), select(vec3<bool>(true, true, false), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global1.x)), vec3<bool>(global1.x, true, true)))), select(vec3<bool>(global1.x, true && any(vec3<bool>(true, false, global1.x)), func_3(Struct_2(global2.a, arg_0, arg_0, global2.d, 556f), abs(var_0))), !select(select(vec3<bool>(false, true, true), vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, true, false)), select(vec3<bool>(global1.x, true, true), vec3<bool>(global1.x, global1.x, global1.x), global1.x), all(vec4<bool>(true, false, true, false))), false), !any(!vec4<bool>(false, global1.x, global1.x, global1.x)));
    global1 = select(select(select(vec3<bool>(global1.x == global1.x, global1.x, false), select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(false, global1.x, global1.x), vec3<bool>(false, true, true)), !select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(true, false, global1.x), vec3<bool>(false, true, global1.x))), vec3<bool>(true, global1.x && true, !(global1.x != false)), vec3<bool>(any(!vec3<bool>(true, true, global1.x)), true, all(select(vec4<bool>(global1.x, false, false, false), vec4<bool>(global1.x, true, false, true), vec4<bool>(global1.x, global1.x, false, true))))), !vec3<bool>(reverseBits(arg_1.b) > var_0, !global1.x, true), select(!(!(!vec3<bool>(false, global1.x, true))), vec3<bool>(global1.x, global1.x, !global1.x), false));
    return _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 1u, ~u_input.b), vec3<u32>(select(u_input.d, 1u, global1.x), _wgslsmith_add_u32(u_input.a.x, 4294967295u), 4294967295u)), vec3<u32>(u_input.a.x, u_input.a.x, ~1u)) << (vec3<u32>(u_input.d, 4294967295u, 79117u) % vec3<u32>(32u));
}

fn func_1(arg_0: bool) -> vec4<f32> {
    global0 = array<vec3<i32>, 25>();
    let var_0 = ~(~(~(~vec3<u32>(u_input.b, 70124u, 12424u))) ^ ~func_5(func_2(1000f, vec4<bool>(global1.x, global1.x, arg_0, arg_0), global1.x), func_2(global3.a.x, vec4<bool>(true, false, arg_0, global1.x), true)));
    let var_1 = func_2(global2.d.x, vec4<bool>(arg_0, min(_wgslsmith_clamp_i32(-2147483647i, u_input.c.x, -2147483647i), ~u_input.c.x) < 1i, var_0.x > _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 4294967295u, 4294967295u) | var_0, select(vec3<u32>(39776u, u_input.d, var_0.x), vec3<u32>(6544u, var_0.x, var_0.x), false)), arg_0), true);
    var var_2 = _wgslsmith_f_op_vec2_f32(min(var_1.a, var_1.a));
    var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2.c.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) - _wgslsmith_f_op_f32(686f + _wgslsmith_f_op_f32(exp2(global2.c.a.x))))) + var_1.a);
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 785f, var_1.a.x, 1125f) + vec4<f32>(global2.b.a.x, -765f, -769f, var_2.x)) * vec4<f32>(1350f, 1000f, global3.a.x, -1327f)) - vec4<f32>(_wgslsmith_f_op_f32(-global2.c.a.x), _wgslsmith_f_op_f32(f32(-1f) * -239f), -752f, 518f)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.c.a.x, var_1.a.x, global3.a.x, -407f), vec4<f32>(1217f, var_1.a.x, -674f, -252f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 847f, 175f, -376f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1055f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * -482f) * global2.e), var_2.x, var_1.a.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-121f, 636f, -582f, _wgslsmith_f_op_f32(-178f - global2.d.x)))), select(select(!select(vec4<bool>(true, global1.x, true, false), vec4<bool>(true, true, true, global1.x), vec4<bool>(true, arg_0, arg_0, false)), vec4<bool>(any(vec4<bool>(arg_0, global1.x, false, arg_0)), true, false, !arg_0), select(true, all(vec3<bool>(true, true, arg_0)), false)), select(select(select(vec4<bool>(global1.x, true, global1.x, arg_0), vec4<bool>(global1.x, arg_0, true, arg_0), global1.x), vec4<bool>(true, global1.x, true, false), select(vec4<bool>(global1.x, arg_0, arg_0, true), vec4<bool>(false, global1.x, global1.x, true), vec4<bool>(global1.x, false, true, false))), !select(vec4<bool>(global1.x, false, true, global1.x), vec4<bool>(false, global1.x, true, global1.x), vec4<bool>(false, true, false, global1.x)), vec4<bool>(true, true, arg_0 | true, all(vec3<bool>(arg_0, false, true)))), vec4<bool>(all(select(vec4<bool>(global1.x, arg_0, false, false), vec4<bool>(true, false, false, global1.x), global1.x)), true, true, (14972u << (u_input.b % 32u)) != _wgslsmith_div_u32(u_input.d, var_0.x)))));
}

fn func_6(arg_0: vec4<f32>, arg_1: bool, arg_2: u32) -> i32 {
    global2 = Struct_2(select(global2.a, vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(18836i, -13450i, -6367i), global2.a.zzz), global2.c.b, _wgslsmith_div_i32(global2.c.b, global2.a.x), -global3.b), select(!vec4<bool>(arg_1, global1.x, false, false), !vec4<bool>(true, arg_1, false, arg_1), global1.x || arg_1)) & min(vec4<i32>(u_input.c.x & 65102i, 27618i, _wgslsmith_div_i32(-2147483647i, global3.b), global3.b), -reverseBits(global2.a)), global2.b, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)), !vec4<bool>(any(vec4<bool>(true, true, false, global1.x)), all(vec4<bool>(arg_1, global1.x, global1.x, arg_1)), true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.e)) > _wgslsmith_f_op_f32(f32(-1f) * -1818f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.x, arg_0.x, -1047f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.d)), true)), vec3<f32>(global3.a.x, _wgslsmith_f_op_f32(f32(-1f) * -559f), -787f)), _wgslsmith_f_op_f32(-global3.a.x));
    var var_0 = firstLeadingBit(4294967295u);
    var var_1 = _wgslsmith_f_op_f32(global2.b.a.x * 622f);
    global0 = array<vec3<i32>, 25>();
    return 31707i;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(843f, global3.a.x)))))), ~(~vec4<u32>(u_input.a.x, 49664u, 1u, u_input.d) | abs(vec4<u32>(u_input.b, 0u, u_input.b, 0u))) << (_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(1u, 22156u, 6133u, u_input.a.x)), firstLeadingBit(vec4<u32>(4294967295u, 14270u, u_input.b, 1u))) % vec4<u32>(32u)), func_6(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_1(global1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 2044f, global3.a.x, 153f) - vec4<f32>(1000f, global2.e, -883f, 430f)))), select(!global1.x, false, false || global1.x), _wgslsmith_dot_vec2_u32(u_input.a, ~u_input.a)) ^ global2.c.b, 18427u);
}

