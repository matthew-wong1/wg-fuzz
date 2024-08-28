struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: Struct_2 = Struct_2(36060i, Struct_1(238f));

var<private> global1: array<bool, 28>;

var<private> global2: f32;

var<private> global3: vec4<i32>;

var<private> global4: array<f32, 12>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, u_input.a, u_input.a), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(12943u, 17582u, u_input.a)), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, 1u, u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(53064u, 5294u, u_input.a), vec3<u32>(u_input.a, 4294967295u, u_input.a)))), (select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(56172u, u_input.a, 50770u)), vec3<u32>(4294967295u, u_input.a, u_input.a), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 28u)], global1[_wgslsmith_index_u32(u_input.a, 28u)], global1[_wgslsmith_index_u32(0u, 28u)])) & abs(vec3<u32>(56858u, 29976u, u_input.a) & vec3<u32>(1u, u_input.a, 92093u))) ^ min(~abs(vec3<u32>(4294967295u, u_input.a, u_input.a)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(19284u, 32123u, 40103u), vec3<u32>(u_input.a, u_input.a, u_input.a))));
    let var_1 = Struct_3(global0.b, global4[_wgslsmith_index_u32(75923u, 12u)], Struct_1(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, var_0.x, u_input.a), 12u)]), Struct_2(-7150i, global0.b), global0.b);
    global0 = Struct_2(countOneBits(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(global0.a, -92832i, 9632i, 5969i), -vec4<i32>(u_input.b, 6207i, -12483i, u_input.b), vec4<i32>(global0.a, -2147483647i, global0.a, 1i)), vec4<i32>(15739i, _wgslsmith_mod_i32(u_input.b, global3.x), var_1.d.a, i32(-1i) * -2147483647i))), Struct_1(_wgslsmith_f_op_f32(var_1.d.b.a - 2085f)));
    var var_2 = var_1;
    var_0 = vec3<u32>(u_input.a | u_input.a, ~35859u, u_input.a) ^ vec3<u32>(66070u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 23467u, 141968u), vec3<u32>(var_0.x, 66248u, 47646u)) & 1u, ~(~4294967295u | _wgslsmith_mod_u32(var_0.x, 11480u)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1122f - global0.b.a) + _wgslsmith_f_op_f32(f32(-1f) * -674f));
}

fn func_2() -> vec3<u32> {
    global0 = Struct_2(0i, Struct_1(_wgslsmith_f_op_f32(func_3())));
    global4 = array<f32, 12>();
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1033f));
    let var_0 = Struct_2(22074i, Struct_1(_wgslsmith_f_op_f32(global0.b.a - _wgslsmith_f_op_f32(-1138f + -300f))));
    var var_1 = !vec2<bool>(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 0u, 1u), vec3<u32>(78551u, u_input.a, u_input.a)), 28u)], countOneBits(0i) >= _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, u_input.b, global3.x, 0i), vec4<i32>(global3.x, 13510i, var_0.a, -2147483647i)), ~1372i));
    return ~(~(~_wgslsmith_add_vec3_u32(vec3<u32>(5993u, 0u, u_input.a) ^ vec3<u32>(0u, 0u, u_input.a), vec3<u32>(1u, 4294967295u, u_input.a) << (vec3<u32>(u_input.a, 4294967295u, 48311u) % vec3<u32>(32u)))));
}

fn func_1() -> i32 {
    var var_0 = ~func_2();
    let var_1 = ~(-vec2<i32>(_wgslsmith_mod_i32(~(-16792i), u_input.b), ~1i));
    var var_2 = _wgslsmith_dot_vec4_i32(firstLeadingBit(abs(vec4<i32>(global3.x >> (u_input.a % 32u), _wgslsmith_add_i32(global3.x, 2147483647i), -global3.x, reverseBits(u_input.b)))), _wgslsmith_clamp_vec4_i32(vec4<i32>(select(u_input.b, global0.a, false), _wgslsmith_add_i32(34745i, -2147483647i), -49649i, -16973i), vec4<i32>(-global3.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 0i, -1i), vec3<i32>(-6790i, global3.x, 1i)), reverseBits(global3.x), _wgslsmith_mult_i32(global0.a, global0.a)), ~(vec4<i32>(global3.x, global0.a, -22026i, -1i) | vec4<i32>(global0.a, -7679i, u_input.b, -1i))) ^ -select(vec4<i32>(-6574i, global3.x, -18278i, 10877i), vec4<i32>(var_1.x, 1i, 23684i, global0.a), select(vec4<bool>(true, false, true, true), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 28u)], false, global1[_wgslsmith_index_u32(4294967295u, 28u)]), vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 28u)], true, true, true))));
    global4 = array<f32, 12>();
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1350f, 314f, 1000f, global4[_wgslsmith_index_u32(7514u, 12u)])))))));
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1007f);
    let var_1 = all(!(!(!select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 28u)], true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 28u)], false), false))));
    global1 = array<bool, 28>();
    global3 = ~_wgslsmith_mult_vec4_i32(~firstTrailingBit(-vec4<i32>(u_input.b, global3.x, u_input.b, 0i)), vec4<i32>(-29288i >> (1u % 32u), 2147483647i, countOneBits(func_1()), -68040i));
    global0 = Struct_2(40998i, global0.b);
    var var_2 = vec2<f32>(global4[_wgslsmith_index_u32(~0u, 12u)], global4[_wgslsmith_index_u32(13015u, 12u)]);
    var var_3 = global3.yx;
    global1 = array<bool, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-454f, _wgslsmith_f_op_f32(-var_2.x)))) * 1165f));
}

