struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec4<i32>,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2 = Struct_2(i32(-2147483648));

var<private> global2: array<vec4<i32>, 19> = array<vec4<i32>, 19>(vec4<i32>(26954i, 0i, 0i, -24100i), vec4<i32>(66994i, 14036i, -3304i, -14048i), vec4<i32>(0i, 1i, 24759i, -1i), vec4<i32>(73459i, i32(-2147483648), -46672i, -4328i), vec4<i32>(1i, 0i, -1i, -1i), vec4<i32>(38845i, -55615i, -33629i, 19955i), vec4<i32>(1i, 2147483647i, i32(-2147483648), 16114i), vec4<i32>(2147483647i, -35694i, -1481i, i32(-2147483648)), vec4<i32>(50484i, 12673i, -65863i, 1i), vec4<i32>(-24489i, i32(-2147483648), 2147483647i, -47854i), vec4<i32>(-27726i, 0i, 2147483647i, -10337i), vec4<i32>(2147483647i, -24190i, i32(-2147483648), -11709i), vec4<i32>(11949i, 21324i, -5924i, -2031i), vec4<i32>(-22807i, 52737i, 1i, 23276i), vec4<i32>(1i, i32(-2147483648), 5871i, 0i), vec4<i32>(-18571i, -30937i, -1i, 0i), vec4<i32>(28877i, 2147483647i, 1i, 1i), vec4<i32>(0i, i32(-2147483648), -19119i, -4335i), vec4<i32>(i32(-2147483648), 1i, 17648i, -27259i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = !vec4<bool>(true, true, true, !all(vec2<bool>(true, true)));
    let var_1 = Struct_2(_wgslsmith_dot_vec3_i32(firstTrailingBit(-vec3<i32>(-30792i, 96526i, global1.a)), ~vec3<i32>(-2147483647i, -26813i >> (u_input.a % 32u), -global1.a)));
    global0 = Struct_1(global0.a);
    var var_2 = _wgslsmith_f_op_f32(abs(1f));
    global0 = Struct_1(_wgslsmith_div_vec2_i32(global0.a, ~abs(~vec2<i32>(-26598i, 0i))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -522f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(802f + 817f), _wgslsmith_f_op_f32(-2054f - -125f), 12788i > global0.a.x)) * 1f))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: bool) -> vec2<i32> {
    var var_0 = Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.x, ~2147483647i >> (u_input.a % 32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(~2147483647i, -1i), arg_0.a)));
    let var_1 = ~(vec2<i32>(-2147483647i, arg_1.a.a) | global0.a);
    global0 = Struct_1(arg_1.c.yy);
    let var_2 = !select(select(vec3<bool>(false, arg_3, !arg_3), select(vec3<bool>(arg_3, true, arg_3), vec3<bool>(arg_3, false, true), select(vec3<bool>(arg_3, arg_3, true), vec3<bool>(false, arg_3, arg_3), false)), vec3<bool>(arg_3 && true, arg_3, true)), select(select(vec3<bool>(false, true, arg_3), vec3<bool>(arg_3, true, false), !vec3<bool>(true, arg_3, arg_3)), vec3<bool>(arg_3 || arg_3, true, true), !arg_3), !select(vec3<bool>(arg_3, arg_3, false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), arg_3), select(vec3<bool>(true, arg_3, true), vec3<bool>(true, arg_3, arg_3), true)));
    let var_3 = select(!select(!vec3<bool>(var_2.x, true, var_2.x), vec3<bool>(any(var_2.yz), true, arg_3), vec3<bool>(all(vec4<bool>(true, false, false, arg_3)), true, var_2.x)), vec3<bool>(select(true, true, var_2.x), true, !(!arg_3)), true);
    return vec2<i32>(firstTrailingBit(-1i), max(~(-4362i), var_0.a));
}

fn func_2(arg_0: i32, arg_1: u32) -> bool {
    global0 = Struct_1(func_4(Struct_1(_wgslsmith_mult_vec2_i32(max(global0.a, global0.a), _wgslsmith_mod_vec2_i32(global0.a, vec2<i32>(arg_0, 20878i)))), Struct_3(Struct_2(global0.a.x), _wgslsmith_f_op_f32(func_3(15189u)), vec4<i32>(global0.a.x, ~(-2147483647i), global0.a.x, ~arg_0), Struct_2(firstLeadingBit(global1.a)), arg_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), global1.a <= global0.a.x));
    var var_0 = Struct_1(_wgslsmith_clamp_vec2_i32(global0.a, ~(vec2<i32>(global1.a, 0i) ^ countOneBits(global0.a)), global0.a));
    global2 = array<vec4<i32>, 19>();
    var var_1 = Struct_2(~_wgslsmith_sub_i32(var_0.a.x, -2147483647i));
    let var_2 = false;
    return any(!select(select(!vec2<bool>(true, var_2), !vec2<bool>(var_2, false), select(vec2<bool>(var_2, var_2), vec2<bool>(var_2, false), vec2<bool>(var_2, false))), vec2<bool>(var_2 == false, true), select(select(vec2<bool>(var_2, var_2), vec2<bool>(var_2, var_2), vec2<bool>(false, var_2)), select(vec2<bool>(false, false), vec2<bool>(false, true), var_2), true)));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1853f - 1231f), -2071f, select(func_2(arg_0.a, arg_3), true, false))), _wgslsmith_f_op_f32(f32(-1f) * -788f)));
    global0 = arg_2;
    var var_1 = 1087f;
    global2 = array<vec4<i32>, 19>();
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(4294967295u)) - _wgslsmith_f_op_f32(1609f * 1493f));
    return ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~countOneBits(~(~u_input.a)));
    global2 = array<vec4<i32>, 19>();
    let var_1 = all(vec2<bool>(any(vec4<bool>(false, true, true, false)) && all(vec3<bool>(false, true, true)), true)) & (false != all(vec4<bool>(any(vec4<bool>(false, false, false, false)), false, true, true)));
    let var_2 = Struct_1(global0.a);
    var var_3 = global2[_wgslsmith_index_u32(~(~func_1(Struct_2(var_2.a.x), _wgslsmith_clamp_vec2_i32(-vec2<i32>(1i, global0.a.x), vec2<i32>(-2147483647i, 33674i), var_2.a), Struct_1(abs(global0.a)), u_input.a)), 19u)];
    var var_4 = select(max(~(~vec4<u32>(8206u, u_input.a, 25058u, u_input.a)), ~select(vec4<u32>(u_input.a, u_input.a, 0u, u_input.a), vec4<u32>(1u, u_input.a, u_input.a, 14535u), false)), _wgslsmith_add_vec4_u32(max(vec4<u32>(66799u, u_input.a, u_input.a, 4294967295u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(24852u, u_input.a, 16468u, 0u))), ~(vec4<u32>(u_input.a, u_input.a, u_input.a, 38254u) & vec4<u32>(1u, 0u, 74345u, 14567u))), !all(vec2<bool>(var_1, false))) >> (~(abs(~vec4<u32>(60210u, 1u, 39017u, u_input.a)) >> (_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(u_input.a, 11126u, 1u, u_input.a)), vec4<u32>(26181u, 0u, 4294967295u, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(vec2<i32>(~0i, var_3.x), -(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -19378i), global0.a) & firstLeadingBit(var_3.yx)), firstTrailingBit(var_2.a)), ~0u);
}

