struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: u32 = 31371u;

var<private> global2: array<vec3<bool>, 22> = array<vec3<bool>, 22>(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true));

var<private> global3: array<f32, 19>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> u32 {
    let var_0 = select(select(vec2<bool>(arg_1.a, !(!arg_1.a)), !(!select(vec2<bool>(arg_1.a, false), vec2<bool>(false, arg_1.a), vec2<bool>(false, arg_1.a))), false), select(vec2<bool>(true, 33837u >= u_input.b.x), vec2<bool>(firstTrailingBit(41531i) >= arg_0, 0i >= _wgslsmith_clamp_i32(-15006i, 1i, 2147483647i)), true), arg_1.a);
    var var_1 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, _wgslsmith_dot_vec3_i32(vec3<i32>(-57680i, arg_0, arg_0) >> (vec3<u32>(u_input.a, u_input.b.x, 0u) % vec3<u32>(32u)), abs(vec3<i32>(0i, arg_0, arg_0))), -abs(1i), _wgslsmith_mult_i32(arg_0 << (1u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, arg_0), vec3<i32>(-1i, -70132i, -15291i)))), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(1417i, arg_0, arg_0, arg_0), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, -6149i), vec4<i32>(-618i, arg_0, arg_0, arg_0), vec4<i32>(49052i, arg_0, 2147483647i, 0i))), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(19366i, -27142i, arg_0, 12787i), vec4<i32>(-2542i, -2147483647i, 78755i, 2147483647i))))), 1i);
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(~(~firstLeadingBit(~u_input.a)), 3u)], global0[_wgslsmith_index_u32(1u, 3u)], arg_1);
    global2 = array<vec3<bool>, 22>();
    var_1 = select(vec2<i32>(arg_0 << (u_input.a % 32u), var_1.x), vec2<i32>(-(~(~arg_0)), 1i), !vec2<bool>(any(var_0), 0i < ~arg_0));
    return _wgslsmith_div_u32(select(_wgslsmith_mod_u32(~u_input.a, 0u), ~u_input.b.x, (_wgslsmith_mod_u32(u_input.a, 4294967295u) ^ abs(u_input.a)) > u_input.a), u_input.b.x);
}

fn func_2(arg_0: vec4<f32>) -> vec2<bool> {
    global1 = _wgslsmith_mult_u32(4294967295u, ~u_input.b.x ^ u_input.a) & 0u;
    let var_0 = !(!vec4<bool>(false, select(true, true, any(global2[_wgslsmith_index_u32(u_input.a, 22u)])), true, true));
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(select(u_input.a, func_3(-1i, global0[_wgslsmith_index_u32(u_input.b.x, 3u)]), var_0.x), 3u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(84202u & (firstTrailingBit(1u) >> (u_input.a % 32u)), reverseBits(~1u)), 3u)], global0[_wgslsmith_index_u32(u_input.a, 3u)]);
    global2 = array<vec3<bool>, 22>();
    var var_2 = global0[_wgslsmith_index_u32(1u << (~_wgslsmith_div_u32(4294967295u, select(33052u, max(u_input.a, u_input.a), select(var_0.x, var_0.x, var_1.a.a))) % 32u), 3u)];
    return select(vec2<bool>(false, false), vec2<bool>(false, _wgslsmith_mult_u32(0u, 16544u) < func_3(-25909i, Struct_1(false))), !var_1.a.a);
}

fn func_4(arg_0: f32, arg_1: vec2<bool>) -> Struct_1 {
    global0 = array<Struct_1, 3>();
    var var_0 = Struct_1(true);
    var_0 = global0[_wgslsmith_index_u32(~u_input.b.x, 3u)];
    let var_1 = select(firstLeadingBit(~_wgslsmith_add_i32(i32(-1i) * -2147483647i, -16778i)), ~1157i, var_0.a);
    global0 = array<Struct_1, 3>();
    return Struct_1(all(select(vec3<bool>(var_0.a | true, !var_0.a, !arg_1.x), global2[_wgslsmith_index_u32(~countOneBits(u_input.b.x), 22u)], select(vec3<bool>(true, false, true), select(vec3<bool>(true, var_0.a, arg_1.x), global2[_wgslsmith_index_u32(17624u, 22u)], vec3<bool>(false, true, true)), select(global2[_wgslsmith_index_u32(4294967295u, 22u)], vec3<bool>(arg_1.x, false, arg_1.x), global2[_wgslsmith_index_u32(u_input.b.x, 22u)])))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: i32) -> vec4<u32> {
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    global0 = array<Struct_1, 3>();
    let var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(40488u, 19u)])))) * _wgslsmith_f_op_f32(469f - 420f)), !(!func_2(vec4<f32>(-230f, global3[_wgslsmith_index_u32(107101u, 19u)], global3[_wgslsmith_index_u32(arg_2.x, 19u)], global3[_wgslsmith_index_u32(arg_1.x, 19u)]))));
    let var_1 = !var_0.a;
    return reverseBits(arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 3>();
    let var_0 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(82959u, max(_wgslsmith_mod_u32(18436u | u_input.a, _wgslsmith_div_u32(27468u, u_input.a)), u_input.a)), ~u_input.b.x, u_input.b.x);
    global1 = 1u;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1919f, 821f)) * global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(var_0, u_input.a, 4294967295u) | ~(~var_0), 19u)]) - -492f);
    var var_2 = func_1(_wgslsmith_add_vec2_u32(max(~vec2<u32>(12522u, var_0), ~vec2<u32>(var_0, u_input.a)), u_input.b.xx), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, 1u), vec3<u32>(var_0, 59563u, abs(u_input.a))), ~vec3<u32>(~37608u, 4294967295u, ~u_input.a)), countOneBits(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0, 19934u, u_input.b.x, u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(21535u, var_0, 32064u, 4294967295u), vec4<u32>(var_0, var_0, var_0, u_input.b.x))))), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(1i, vec2<u32>(abs(u_input.a), 19859u), reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 36433i) << (vec2<u32>(var_2.x, 0u) % vec2<u32>(32u)), vec2<i32>(-1i, -23974i))) << (vec2<u32>(36288u, 0u) % vec2<u32>(32u)), -1i);
}

