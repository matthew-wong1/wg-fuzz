struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: u32;

var<private> global2: array<u32, 9> = array<u32, 9>(27625u, 5671u, 67924u, 389u, 0u, 4294967295u, 30035u, 4294967295u, 47441u);

var<private> global3: Struct_2 = Struct_2(Struct_1(vec4<u32>(49486u, 43407u, 9264u, 1u)), vec4<u32>(4294967295u, 0u, 57817u, 4294967295u), Struct_1(vec4<u32>(74809u, 0u, 0u, 30504u)));

var<private> global4: vec3<u32> = vec3<u32>(0u, 48309u, 45108u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = vec3<bool>(true, 606i >= u_input.e, _wgslsmith_f_op_f32(step(1080f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(arg_0, arg_0)), _wgslsmith_f_op_f32(-arg_0), false)))) <= arg_0);
    var var_1 = Struct_2(global3.a, global3.c.a, global0[_wgslsmith_index_u32(global4.x, 31u)]);
    var var_2 = max(-vec3<i32>(u_input.e, reverseBits(32330i), firstTrailingBit(_wgslsmith_sub_i32(-2147483647i, -5666i))), _wgslsmith_div_vec3_i32(max(-_wgslsmith_sub_vec3_i32(vec3<i32>(58237i, 2147483647i, u_input.e), vec3<i32>(u_input.e, 17142i, -18694i)), max(vec3<i32>(u_input.e, u_input.e, u_input.e), vec3<i32>(7717i, u_input.e, 37773i))), -vec3<i32>(u_input.e, -33611i, u_input.e ^ u_input.e)));
    var var_3 = Struct_2(Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(global4.x, u_input.d, 39749u, var_1.b.x) << (vec4<u32>(86204u, u_input.b.x, u_input.c, 0u) % vec4<u32>(32u)), arg_1.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 48247u, ~(~1u), 4294967295u), _wgslsmith_mod_vec4_u32(global3.a.a, ~vec4<u32>(global3.a.a.x, arg_1.a.x, var_1.c.a.x, arg_1.a.x)) << (vec4<u32>(4294967295u, arg_1.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(global3.c.a.x, 9u)]), arg_1.a.wy), var_1.b.x) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(min(arg_1.a, var_1.a.a), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(70748u, global4.x, arg_1.a.x, 3972u), var_1.b, global3.c.a), vec4<u32>(36251u, ~global2[_wgslsmith_index_u32(1u, 9u)], abs(4294967295u), _wgslsmith_add_u32(0u, 4294967295u)))), Struct_1(global3.b));
    let var_4 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, _wgslsmith_f_op_f32(f32(-1f) * -501f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2166f - arg_0)))), 2436f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, arg_0, 230f, arg_0)))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(-1518f - -975f), arg_0, _wgslsmith_f_op_f32(-917f * arg_0)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1447f, arg_0, 367f, -1000f), vec4<f32>(arg_0, 234f, arg_0, arg_0))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(649f, arg_0, arg_0, arg_0), vec4<f32>(arg_0, 505f, arg_0, arg_0), vec4<bool>(true, var_0.x, false, var_0.x)))))), vec4<bool>(_wgslsmith_f_op_f32(-arg_0) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * -957f)), all(!var_0), all(vec4<bool>(all(vec4<bool>(true, false, var_0.x, true)), var_0.x, true, var_0.x & var_0.x)), var_0.x && var_0.x)));
    return global3.b;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(global3.c, global3.a.a, Struct_1(global3.c.a));
    global2 = array<u32, 9>();
    return Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)], 9u)]), global3.a.a.wx), ~(~1u), _wgslsmith_mod_u32(u_input.c, firstLeadingBit(1u)), 46736u), _wgslsmith_mod_vec4_u32(func_3(733f, Struct_1(vec4<u32>(global3.c.a.x, u_input.c, 74056u, 4294967295u))), ~vec4<u32>(global2[_wgslsmith_index_u32(u_input.a, 9u)], u_input.a, global2[_wgslsmith_index_u32(9442u, 9u)], global4.x)) | global3.b));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> StorageBuffer {
    var var_0 = func_2();
    var var_1 = func_2();
    let var_2 = vec4<u32>(_wgslsmith_add_u32(~1u, u_input.d), 0u, 1u, firstLeadingBit(_wgslsmith_dot_vec4_u32(arg_1.a, ~arg_1.a) & global2[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(10471u), max(arg_1.a.x, arg_3)), 9u)]));
    var var_3 = arg_3;
    var var_4 = _wgslsmith_div_vec2_i32(vec2<i32>(~(-1i), ~arg_2), vec2<i32>(max(u_input.e, -2147483647i), -22082i));
    return StorageBuffer(abs(select(-(~vec3<i32>(-59057i, -53192i, var_4.x)), select(vec3<i32>(-31185i, -2997i, arg_2) ^ vec3<i32>(2147483647i, 18283i, arg_2), vec3<i32>(arg_2, var_4.x, -2147483647i), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), false)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_2(global3.c, ~min(firstLeadingBit(~global3.a.a), max(abs(vec4<u32>(global3.b.x, global2[_wgslsmith_index_u32(53837u, 9u)], global3.b.x, u_input.a)), vec4<u32>(1u, 1u, 11696u, global4.x) & global3.b)), Struct_1(global3.b));
    global0 = array<Struct_1, 31>();
    var var_0 = 1u;
    global2 = array<u32, 9>();
    var var_1 = _wgslsmith_add_u32(u_input.d, global4.x);
    let x = u_input.a;
    s_output = func_1(1u, global3.c, -(~(-2147483647i)), select(~_wgslsmith_sub_u32(global3.b.x, ~global2[_wgslsmith_index_u32(global4.x, 9u)]), ~global2[_wgslsmith_index_u32(countOneBits(~global4.x), 9u)], false));
}

