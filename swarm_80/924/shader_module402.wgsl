struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17> = array<i32, 17>(2147483647i, 17537i, 2568i, -14927i, -1i, 0i, -8441i, -45511i, 1i, i32(-2147483648), -38482i, 948i, 7323i, 0i, 17079i, 3290i, 2147483647i);

var<private> global1: vec3<i32>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2) -> i32 {
    global0 = array<i32, 17>();
    var var_0 = -reverseBits(max(vec4<i32>(global1.x & global1.x, 26871i >> (arg_0.a.x % 32u), 1i, -24411i), -vec4<i32>(global0[_wgslsmith_index_u32(1u, 17u)], 29354i, global0[_wgslsmith_index_u32(arg_0.c.x, 17u)], global1.x) & ~vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(93292u, 17u)], 0i, -2147483647i)));
    global0 = array<i32, 17>();
    var_0 = (firstTrailingBit(vec4<i32>(-69115i, global1.x, 0i ^ arg_0.b, 1i)) | firstTrailingBit(vec4<i32>(-1i) * -vec4<i32>(2147483647i, -1i, 38056i, global1.x))) ^ abs(-vec4<i32>(max(-45689i, -1i), _wgslsmith_dot_vec2_i32(global1.zz, global1.zz), _wgslsmith_div_i32(-1i, -13964i), min(arg_0.b, var_0.x)));
    let var_1 = Struct_1(~4294967295u, vec4<bool>(true, true, true, true));
    return var_0.x;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_1) -> vec3<i32> {
    global1 = ~((vec3<i32>(min(2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 17u)]), min(global1.x, -1i), _wgslsmith_mult_i32(arg_0.b, -1i)) | _wgslsmith_mult_vec3_i32(-vec3<i32>(41914i, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], global1.x), -vec3<i32>(global0[_wgslsmith_index_u32(arg_3.a, 17u)], -14029i, global0[_wgslsmith_index_u32(9107u, 17u)]))) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)));
    let var_0 = vec4<bool>(all(arg_3.b.ywy), !arg_3.b.x, true, true);
    global0 = array<i32, 17>();
    let var_1 = arg_0.a.x | _wgslsmith_add_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(~arg_1.yzy, ~vec3<u32>(4294967295u, arg_0.c.x, 21692u))), _wgslsmith_mult_u32(_wgslsmith_mult_u32(arg_1.x, 4294967295u), _wgslsmith_add_u32(arg_1.x, 4187u)) & ~u_input.a.x);
    let var_2 = u_input.a;
    return vec3<i32>(-1i) * -(~countOneBits(vec3<i32>(1i, 1i, 1i)));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec4<bool>) -> vec3<bool> {
    var var_0 = firstTrailingBit(vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, -30498i), vec2<i32>(global1.x, global0[_wgslsmith_index_u32(10812u, 17u)]) ^ vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 17u)], -1i)), 1i, -1i));
    var_0 = vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(global1.x, 0i) << (~vec2<u32>(u_input.a.x, u_input.b.x) % vec2<u32>(32u)), global1.yx), abs(1i), var_0.x);
    global1 = func_4(Struct_2(vec3<u32>(4294967295u, countOneBits(arg_1.x) & u_input.a.x, arg_1.x), ~func_3(Struct_2(u_input.a.zww, var_0.x, u_input.b, global0[_wgslsmith_index_u32(33407u, 17u)])), u_input.b, 32947i), vec4<u32>(4294967295u, countOneBits(4294967295u), ~arg_1.x, _wgslsmith_dot_vec3_u32(~u_input.b, select(~arg_1.yyz, arg_1.zwz, arg_2.zzy))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.a, arg_0.a))), Struct_1(~firstLeadingBit(arg_1.x) << (~abs(arg_1.x) % 32u), vec4<bool>(!arg_2.x && true, any(!vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x)), select(all(vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x)), true, 0u < u_input.b.x), (arg_0.a > arg_0.a) && true)));
    let var_1 = _wgslsmith_sub_u32(1u, u_input.a.x);
    var var_2 = Struct_2(u_input.b, global0[_wgslsmith_index_u32(38381u, 17u)], _wgslsmith_clamp_vec3_u32(~(u_input.a.yyz ^ min(arg_1.yxy, vec3<u32>(1u, 1u, var_1))), vec3<u32>(~4294967295u ^ select(63387u, arg_1.x, true), 1u, _wgslsmith_div_u32(~u_input.a.x, u_input.b.x)), vec3<u32>(768u, 1u, firstTrailingBit(u_input.b.x))), var_0.x);
    return select(arg_2.yzy, arg_2.xwx, arg_2.xxz);
}

fn func_5(arg_0: vec3<bool>) -> Struct_3 {
    let var_0 = Struct_1(u_input.a.x, vec4<bool>(true, true, !(arg_0.x || (55515i > global0[_wgslsmith_index_u32(72278u, 17u)])), true));
    global0 = array<i32, 17>();
    global1 = _wgslsmith_mult_vec3_i32((vec3<i32>(-1i) * -abs(vec3<i32>(global1.x, global0[_wgslsmith_index_u32(u_input.a.x, 17u)], 0i))) >> (~(~(vec3<u32>(var_0.a, 19225u, var_0.a) >> (u_input.a.yyx % vec3<u32>(32u)))) % vec3<u32>(32u)), vec3<i32>(33736i, global1.x, -(global1.x ^ global0[_wgslsmith_index_u32(0u, 17u)])));
    var var_1 = var_0;
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - -2149f) + _wgslsmith_f_op_f32(-1f)));
}

fn func_1(arg_0: u32) -> bool {
    global0 = array<i32, 17>();
    global0 = array<i32, 17>();
    global0 = array<i32, 17>();
    let var_0 = func_5(select(!func_2(Struct_3(-2482f), ~vec4<u32>(arg_0, 4294967295u, arg_0, 63979u), vec4<bool>(true, true, true, true)), vec3<bool>(1i >= global0[_wgslsmith_index_u32(reverseBits(arg_0), 17u)], true, func_2(Struct_3(-826f), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.b.x, arg_0, 0u), u_input.a, u_input.a), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), true)).x), _wgslsmith_mult_i32(global1.x, ~global0[_wgslsmith_index_u32(38578u, 17u)]) != ~0i));
    let var_1 = -1871f;
    return all(vec3<bool>(true, true, true));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_3) -> Struct_2 {
    let var_0 = vec3<i32>(global1.x, max(i32(-1i) * -1i, ~(-1i)) ^ abs(global1.x), ~global1.x);
    let var_1 = arg_0.b;
    let var_2 = !vec3<bool>(true, arg_0.a > _wgslsmith_mod_u32(u_input.b.x & u_input.b.x, ~u_input.b.x), !(!(global0[_wgslsmith_index_u32(35241u, 17u)] == global0[_wgslsmith_index_u32(37583u, 17u)])));
    let var_3 = min(vec4<i32>(-global0[_wgslsmith_index_u32(arg_0.a, 17u)] & _wgslsmith_add_i32(var_0.x, 19064i), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_0.x, global1.x, global1.x)), var_0), 1i ^ min(var_0.x, 2147483647i), ~(-2147483647i)), vec4<i32>(var_0.x, i32(-1i) * -2147483647i, min(global1.x, global1.x), 15463i) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(-50751i, var_0.x, 2147483647i, var_0.x), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, global0[_wgslsmith_index_u32(21203u, 17u)], global1.x, global1.x), vec4<i32>(global1.x, -15363i, global0[_wgslsmith_index_u32(arg_0.a, 17u)], -1i)))) << (firstTrailingBit(~(~u_input.a)) % vec4<u32>(32u));
    let var_4 = 0u;
    return Struct_2(~_wgslsmith_mult_vec3_u32(vec3<u32>(select(var_4, 42127u, var_1.x), ~53484u, reverseBits(1u)), ~(~u_input.a.ywx)), 16546i, ~(~u_input.a.ywy), _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(4294967295u, arg_0.a), 30604u, _wgslsmith_sub_u32(u_input.a.x, var_4)), 17u)], global1.x), -global1.yy));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_1(firstTrailingBit(abs(~161u)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(func_1(u_input.b.x), true, all(vec3<bool>(false, false, false))))), func_5(func_2(Struct_3(_wgslsmith_f_op_f32(ceil(-611f))), _wgslsmith_div_vec4_u32(u_input.a >> (vec4<u32>(15889u, 33912u, u_input.a.x, 43768u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 28875u, u_input.a.x, 4407u), vec4<u32>(64138u, 19910u, u_input.b.x, 19543u))), vec4<bool>(true, true, true, true))));
    global1 = firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec4_i32((vec4<i32>(-72848i, 2147483647i, 11978i, -2147483647i) >> (vec4<u32>(u_input.b.x, 1u, 0u, 0u) % vec4<u32>(32u))) | _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 0i, -24015i, global1.x), vec4<i32>(22005i, var_0.b, global1.x, -1i)), vec4<i32>(global1.x, -45606i, 0i >> (var_0.a.x % 32u), -2147483647i ^ var_0.d)), ~abs(22927i | global1.x), firstTrailingBit(~(i32(-1i) * -14560i))));
    let var_1 = countOneBits(vec3<i32>(global0[_wgslsmith_index_u32(~(706u | var_0.c.x), 17u)] >> (var_0.c.x % 32u), 2147483647i, reverseBits(-2147483647i | global0[_wgslsmith_index_u32(1u, 17u)]) & -_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(0u, 17u)], var_0.d)));
    global1 = firstLeadingBit(vec3<i32>(global1.x, -2147483647i, 2147483647i));
    global0 = array<i32, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, vec3<u32>(1u, u_input.b.x, ~firstTrailingBit(~1u)), vec4<i32>(_wgslsmith_mult_i32(-26777i, countOneBits(func_3(Struct_2(u_input.b, var_1.x, u_input.b, -8287i)))), 1i, -((i32(-1i) * -18518i) << (u_input.b.x % 32u)), func_6(Struct_1(select(1u, 0u, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), false)), func_5(vec3<bool>(true, false, true))).b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1249f)) + func_5(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true)).a));
}

