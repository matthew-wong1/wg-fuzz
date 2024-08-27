struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<bool>,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9> = array<bool, 9>(false, false, false, true, false, true, false, false, true);

var<private> global1: array<vec2<i32>, 2> = array<vec2<i32>, 2>(vec2<i32>(i32(-2147483648), 9657i), vec2<i32>(1i, 1i));

var<private> global2: vec4<i32>;

var<private> global3: i32 = -1i;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_3) -> vec4<i32> {
    var var_0 = Struct_4(~(~u_input.b), Struct_1(vec3<f32>(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_1.x)), -2001f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(arg_2.e.x, 1238f))))), vec2<bool>(any(select(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 9u)], arg_2.a.b.x, arg_2.a.b.x, true), vec4<bool>(false, global0[_wgslsmith_index_u32(arg_2.d.x, 9u)], global0[_wgslsmith_index_u32(arg_2.d.x, 9u)], arg_2.b.c.b.x), false)), true)), arg_2.b, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -320f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.a.a.x, arg_2.a.a.x, false))))));
    var var_1 = u_input.c.yz;
    var var_2 = ~arg_2.d;
    let var_3 = arg_2.b.c;
    var var_4 = Struct_2(var_0.b, var_3, var_0.c.a, 703f);
    return abs(~_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(-14824i, global2.x, global2.x, global2.x)), ~vec4<i32>(global2.x, global2.x, 36773i, global2.x)), vec4<i32>(-1i) * -vec4<i32>(51632i, 0i, global2.x, 1857i)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3) -> bool {
    global3 = _wgslsmith_dot_vec4_i32(-(countOneBits(-vec4<i32>(arg_0.x, -1i, arg_0.x, arg_0.x)) | func_3(~88343u, arg_1.a.a, arg_1)), ~(vec4<i32>(-global2.x, 55858i >> (u_input.b % 32u), reverseBits(arg_0.x), i32(-1i) * -1i) >> ((vec4<u32>(u_input.c.x, arg_1.d.x, 18751u, 0u) & vec4<u32>(6141u, arg_1.d.x, 0u, 1843u)) % vec4<u32>(32u))));
    let var_0 = vec4<u32>(~firstTrailingBit(_wgslsmith_add_u32(3608u, 0u)), 53835u >> (_wgslsmith_clamp_u32(~u_input.b, _wgslsmith_div_u32(0u, 35739u), _wgslsmith_add_u32(u_input.b, 27519u)) % 32u), u_input.a, u_input.a) | ~_wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.c.x, 0u, 13534u, u_input.b) | vec4<u32>(arg_1.d.x, 16516u, 32635u, u_input.b)), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(23977u, arg_1.d.x, 33975u, 12072u)), vec4<u32>(4363u, 13382u, 35248u, 4294967295u)));
    let var_1 = true;
    global0 = array<bool, 9>();
    var var_2 = arg_1;
    return !all(vec3<bool>(select(all(vec3<bool>(true, var_2.b.b.b.x, var_2.c.x)), true, false), true, !(486f > var_2.b.a.a.x)));
}

fn func_1() -> i32 {
    global3 = -31437i;
    global0 = array<bool, 9>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(2052f)), 1237f, 1f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(514f, -1399f, -1570f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(783f, -1026f, 1102f) + vec3<f32>(317f, -2031f, 522f))))), vec2<bool>(!global0[_wgslsmith_index_u32(1u, 9u)] & select(func_2(vec3<i32>(-1i, -2147483647i, global2.x), Struct_3(Struct_1(vec3<f32>(-309f, 110f, 984f), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 9u)])), Struct_2(Struct_1(vec3<f32>(856f, 640f, -360f), vec2<bool>(global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(u_input.c.x, 9u)])), Struct_1(vec3<f32>(-1000f, 543f, -1000f), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 9u)])), Struct_1(vec3<f32>(1547f, -1255f, 1074f), vec2<bool>(global0[_wgslsmith_index_u32(1u, 9u)], true)), -2154f), vec2<bool>(true, true), vec2<u32>(3946u, 4294967295u), vec4<f32>(649f, -493f, -688f, 1122f))), false, any(vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 9u)]))), true));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-319f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_0.a.x)), _wgslsmith_f_op_f32(max(-1014f, 748f)), var_0.b.x))))), _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a.x))), -908f, false)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, -1214f, 1236f)) + _wgslsmith_f_op_vec3_f32(round(var_0.a)))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-190f, _wgslsmith_f_op_f32(f32(-1f) * -315f), _wgslsmith_f_op_f32(-var_0.a.x)), var_0.a, false))), vec2<bool>(!var_0.b.x, true));
    return _wgslsmith_mult_i32(_wgslsmith_add_i32(-54i, 0i), global2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = (~(vec4<i32>(-1i, global2.x, -37709i, global2.x) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.c.x, u_input.c.x, 78492u), vec4<u32>(6345u, u_input.c.x, 0u, u_input.c.x), vec4<u32>(u_input.b, u_input.a, 1u, u_input.c.x)) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_sub_u32(~u_input.b, ~u_input.c.x), ~u_input.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.b, u_input.b), u_input.c), 39756u) % vec4<u32>(32u))) & vec4<i32>(max(func_1(), global2.x), _wgslsmith_mult_i32(_wgslsmith_sub_i32(reverseBits(2147483647i), -global2.x), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-14096i, -1i), -global2.x)), 1i, global2.x);
    var var_0 = Struct_4(~65964u, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1172f, -1461f, -1000f) - vec3<f32>(-1523f, -479f, 527f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-246f, -1183f, 417f) + vec3<f32>(1697f, 252f, -1000f))) + vec3<f32>(1f, _wgslsmith_f_op_f32(318f + -576f), 275f)), select(vec2<bool>(true, true), select(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 9u)], true), vec2<bool>(false, false), false), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 9u)], true), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 9u)])), select(vec2<bool>(false, true), !vec2<bool>(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(u_input.b, 9u)]), true))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1395f, 1053f, -1919f)), select(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 9u)], global0[_wgslsmith_index_u32(1u, 9u)]), select(vec2<bool>(false, false), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 9u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 9u)], true)), !vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 9u)]))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(505f, 1552f, -477f) + vec3<f32>(-573f, -1550f, -1145f)) * vec3<f32>(-1000f, 1205f, -2015f)), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 9u)], global0[_wgslsmith_index_u32(u_input.c.x, 9u)])), Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, 1077f, -1147f))), select(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 9u)], global0[_wgslsmith_index_u32(0u, 9u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 9u)]), true), vec2<bool>(global0[_wgslsmith_index_u32(33685u, 9u)], false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 9u)], global0[_wgslsmith_index_u32(1u, 9u)])))), 613f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-538f, 1152f, 1000f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1568f, 1000f, -765f) * vec3<f32>(-1063f, -176f, -1150f))))));
    let var_1 = true;
    global2 = -_wgslsmith_clamp_vec4_i32(-vec4<i32>(abs(0i), ~39868i, _wgslsmith_mod_i32(-11916i, global2.x), 2147483647i), abs(select(-vec4<i32>(20746i, -2656i, -2147483647i, 34605i), firstLeadingBit(vec4<i32>(global2.x, global2.x, 2147483647i, -370i)), global0[_wgslsmith_index_u32(countOneBits(var_0.a), 9u)])), -(vec4<i32>(-1i, 30590i, 17905i, 1i) ^ vec4<i32>(global2.x, -12522i, global2.x, global2.x)) << (abs(vec4<u32>(4294967295u, 45740u, 6904u, u_input.a)) % vec4<u32>(32u)));
    let var_2 = u_input.a;
    let var_3 = ((_wgslsmith_dot_vec4_u32(vec4<u32>(8802u, var_0.a, 0u, 94991u), _wgslsmith_sub_vec4_u32(vec4<u32>(var_2, 4294967295u, var_2, 1u), vec4<u32>(u_input.b, 0u, 1u, 10601u))) << (~abs(u_input.b) % 32u)) << (var_2 % 32u)) >> (u_input.b % 32u);
    global1 = array<vec2<i32>, 2>();
    global3 = global2.x;
    let x = u_input.a;
    s_output = StorageBuffer(~25795u, vec2<u32>(~22011u, _wgslsmith_add_u32(countOneBits(var_0.a), var_2 ^ firstTrailingBit(45944u))), vec2<i32>(global2.x | -global2.x, ~(~(-31195i) & global2.x)), u_input.b, countOneBits(firstLeadingBit(~vec4<i32>(-32286i, 75i, 2147483647i, global2.x))) | (vec4<i32>(select(1i, 6366i, global0[_wgslsmith_index_u32(var_2, 9u)]), -global2.x, 31529i, 2147483647i) ^ _wgslsmith_mod_vec4_i32(-vec4<i32>(2147483647i, global2.x, global2.x, global2.x), select(vec4<i32>(global2.x, 55131i, global2.x, global2.x), vec4<i32>(1i, global2.x, -41169i, -7062i), vec4<bool>(global0[_wgslsmith_index_u32(70574u, 9u)], var_0.c.c.b.x, var_1, var_0.b.b.x)))));
}

