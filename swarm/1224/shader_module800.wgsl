struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 23>;

var<private> global1: array<vec2<f32>, 5> = array<vec2<f32>, 5>(vec2<f32>(-512f, 310f), vec2<f32>(1379f, 715f), vec2<f32>(-762f, 787f), vec2<f32>(503f, 978f), vec2<f32>(-986f, -370f));

var<private> global2: array<f32, 20>;

var<private> global3: array<u32, 26> = array<u32, 26>(1u, 1u, 7u, 4294967295u, 22494u, 1u, 1u, 4294967295u, 49322u, 22484u, 8435u, 1u, 1u, 0u, 2813u, 83279u, 8740u, 75863u, 54818u, 52695u, 4294967295u, 0u, 27966u, 4294967295u, 0u, 38747u);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    let var_0 = 98782u;
    global3 = array<u32, 26>();
    global1 = array<vec2<f32>, 5>();
    global3 = array<u32, 26>();
    var var_1 = Struct_1(u_input.d);
    return ~max(-_wgslsmith_dot_vec4_i32(firstTrailingBit(u_input.c), ~vec4<i32>(u_input.c.x, -49511i, u_input.b, -2147483647i)), 13370i);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> bool {
    var var_0 = arg_0;
    let var_1 = ~vec3<u32>(arg_2, abs(arg_0.a.x), ~arg_0.a.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(0u, 5u)] * global1[_wgslsmith_index_u32(~(24860u & arg_2), 5u)])));
    let var_3 = 11663u;
    var var_4 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(trunc(340f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.d.x, 20u)]) * 1f))));
    return (~arg_2 >> (var_1.x % 32u)) == 31029u;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = all(!vec3<bool>(any(vec2<bool>(false, false)), global2[_wgslsmith_index_u32(u_input.d.x, 20u)] >= global2[_wgslsmith_index_u32(u_input.d.x, 20u)], false)) | func_4(Struct_1(u_input.d), func_3(), firstLeadingBit(select(reverseBits(4294967295u), ~global3[_wgslsmith_index_u32(u_input.d.x, 26u)], true)));
    var var_1 = select(!(!select(!vec4<bool>(false, true, var_0, var_0), vec4<bool>(var_0, true, var_0, true), true)), vec4<bool>(var_0, -2147483647i <= u_input.c.x, !var_0, var_0), false);
    let var_2 = -abs(~vec3<i32>(u_input.a.x, 1i, u_input.b) | vec3<i32>(-16169i, arg_0, abs(u_input.a.x)));
    global3 = array<u32, 26>();
    var var_3 = max(~(firstLeadingBit(~vec4<u32>(46509u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(24959u, 26u)], 26u)], 26u)], 26u)], 26u)], u_input.d.x, global3[_wgslsmith_index_u32(u_input.d.x, 26u)])) >> (select(vec4<u32>(global3[_wgslsmith_index_u32(77349u, 26u)], u_input.d.x, u_input.d.x, u_input.d.x) & vec4<u32>(4294967295u, 3621u, 10254u, u_input.d.x), ~vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, global3[_wgslsmith_index_u32(87632u, 26u)]), !vec4<bool>(var_0, var_1.x, true, true)) % vec4<u32>(32u))), abs(vec4<u32>(firstTrailingBit(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d.x, 1u), 26u)]), max(1u, 5762u), u_input.d.x, global3[_wgslsmith_index_u32(0u, 26u)])));
    return Struct_1(_wgslsmith_div_vec2_u32(~(u_input.d | _wgslsmith_div_vec2_u32(vec2<u32>(58078u, 4294967295u), u_input.d)), vec2<u32>(~select(0u, var_3.x, true), ~firstTrailingBit(10322u))));
}

fn func_1() -> u32 {
    var var_0 = func_2(abs(u_input.b));
    let var_1 = -u_input.c.x;
    let var_2 = Struct_1(vec2<u32>(global3[_wgslsmith_index_u32(var_0.a.x, 26u)], _wgslsmith_div_u32(_wgslsmith_add_u32(33427u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, var_0.a.x, 55028u, global3[_wgslsmith_index_u32(69674u, 26u)]), vec4<u32>(u_input.d.x, 31023u, global3[_wgslsmith_index_u32(83663u, 26u)], 50594u))), 4294967295u)));
    let var_3 = Struct_1(var_2.a);
    global3 = array<u32, 26>();
    return firstTrailingBit(~(~(~_wgslsmith_mod_u32(21795u, 7281u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_i32(u_input.c.wwy, vec3<i32>(~_wgslsmith_clamp_i32(abs(u_input.c.x), ~26192i, -51009i), _wgslsmith_mod_i32(25178i, -12483i), u_input.c.x ^ -2147483647i));
    global3 = array<u32, 26>();
    var_0 = _wgslsmith_mult_i32(2147483647i >> ((func_1() ^ ~73835u) % 32u), select(firstLeadingBit(-31302i), 20784i, true) | ~firstLeadingBit(_wgslsmith_mod_i32(-2147483647i, -2147483647i)));
    var var_1 = ~global3[_wgslsmith_index_u32(1u, 26u)];
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.d.x >> (4294967295u % 32u)), 20u)];
    var_0 = u_input.c.x;
    global2 = array<f32, 20>();
    let var_3 = func_2(~_wgslsmith_mod_i32(_wgslsmith_mod_i32(select(2147483647i, 1i, true), ~u_input.c.x), select(-30553i | u_input.a.x, abs(2147483647i), true)));
    var_1 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(197f, -1023f), vec2<u32>(~_wgslsmith_add_u32(global3[_wgslsmith_index_u32(u_input.d.x, 26u)], 0u), reverseBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(26175u, 26u)], 26u)]) >> (~26526u % 32u)) & firstLeadingBit(abs(var_3.a)), u_input.a.x, -(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.a.x, u_input.c.x), global0[_wgslsmith_index_u32(19806u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)]) >> (vec3<u32>(17517u, u_input.d.x, var_3.a.x) % vec3<u32>(32u))) | ~(-vec3<i32>(u_input.a.x, -71826i, -2147483647i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(211f, global2[_wgslsmith_index_u32(var_3.a.x, 20u)], global2[_wgslsmith_index_u32(1u, 20u)]) + vec3<f32>(3013f, global2[_wgslsmith_index_u32(45701u, 20u)], 1463f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1582f, global2[_wgslsmith_index_u32(8619u, 20u)], global2[_wgslsmith_index_u32(1u, 20u)]) - vec3<f32>(526f, global2[_wgslsmith_index_u32(87046u, 20u)], 733f)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1203f, 1908f, global2[_wgslsmith_index_u32(var_3.a.x, 20u)]))) * vec3<f32>(global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(4294967295u, 20u)], 326f)), vec3<f32>(_wgslsmith_f_op_f32(1098f * global2[_wgslsmith_index_u32(var_3.a.x, 20u)]), global2[_wgslsmith_index_u32(u_input.d.x, 20u)], _wgslsmith_f_op_f32(step(-829f, 493f))))));
}

