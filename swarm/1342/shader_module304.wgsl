struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: i32;

var<private> global2: array<bool, 20>;

var<private> global3: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(-556f), Struct_1(411f), Struct_1(1324f), Struct_1(-958f), Struct_1(1000f), Struct_1(1373f), Struct_1(-632f), Struct_1(1713f), Struct_1(-2075f), Struct_1(648f), Struct_1(-1013f));

var<private> global4: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(541f), Struct_1(-133f), Struct_1(1236f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: f32) -> vec2<u32> {
    let var_0 = u_input.c == u_input.c;
    let var_1 = Struct_1(-165f);
    let var_2 = var_1;
    var var_3 = u_input.a;
    global3 = array<Struct_1, 11>();
    return ~vec2<u32>(1u, 5850u);
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> i32 {
    global3 = array<Struct_1, 11>();
    let var_0 = global2[_wgslsmith_index_u32(u_input.c, 20u)];
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~(~(~vec2<u32>(0u, u_input.c))), vec2<u32>(~(~u_input.c), 4294967295u)), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, u_input.c), firstTrailingBit(vec2<u32>(4294967295u, u_input.c))), vec2<u32>(~u_input.c, _wgslsmith_clamp_u32(29656u, 72849u, 53236u))), _wgslsmith_div_vec2_u32(~vec2<u32>(0u, 8116u) | func_2(false, vec2<f32>(-1183f, -1099f), arg_3.a), ~countOneBits(vec2<u32>(u_input.c, u_input.c))))), 11u)];
    global2 = array<bool, 20>();
    let var_2 = vec3<u32>(~50977u, _wgslsmith_mod_u32(28246u, u_input.c), 65221u);
    return 1i;
}

fn func_3(arg_0: Struct_1) -> bool {
    return all(vec3<bool>(global2[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(62899u, u_input.c) | u_input.c), 20u)], true, global2[_wgslsmith_index_u32(~u_input.c, 20u)]));
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: bool) -> Struct_1 {
    var var_0 = global4[_wgslsmith_index_u32(firstTrailingBit(2615u) >> (_wgslsmith_sub_u32(~u_input.c, u_input.c) % 32u), 3u)];
    let var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(firstTrailingBit(-(arg_2.x >> (u_input.c % 32u))), _wgslsmith_sub_i32(0i, arg_0), _wgslsmith_dot_vec4_i32(vec4<i32>(~(-1i), -12269i, -arg_2.x, func_1(vec3<i32>(70005i, arg_0, 33811i), 0i, -32413i, Struct_1(-765f))), vec4<i32>(select(-2147483647i, 25239i, true), select(-45743i, arg_0, global2[_wgslsmith_index_u32(u_input.c, 20u)]), u_input.a.x, func_1(arg_1, arg_1.x, arg_2.x, global3[_wgslsmith_index_u32(1u, 11u)])))), _wgslsmith_add_vec3_i32(select(firstLeadingBit(arg_2 & vec3<i32>(arg_0, 31889i, arg_0)), -arg_1 << (vec3<u32>(u_input.c, u_input.c, 30916u) % vec3<u32>(32u)), true), arg_1));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a, 2059f, global2[_wgslsmith_index_u32(0u, 20u)])))), 136f, -309f));
    var var_3 = select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 20u)], (u_input.c | u_input.c) > u_input.c, false), vec3<bool>(func_3(Struct_1(_wgslsmith_f_op_f32(exp2(var_2.x)))), any(vec4<bool>(!global2[_wgslsmith_index_u32(u_input.c, 20u)], true, !global2[_wgslsmith_index_u32(u_input.c, 20u)], true)), (-arg_1.x < firstLeadingBit(arg_2.x)) && true), !vec3<bool>(any(select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 20u)], true, arg_3), vec3<bool>(false, arg_3, arg_3), vec3<bool>(false, arg_3, false))), true, true));
    var var_4 = Struct_1(var_0.a);
    return global3[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(func_2(var_3.x, var_2.xy, 1003f).x, 23630u)), 11u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1759f;
    var var_0 = func_4(abs(u_input.b), max(max(vec3<i32>(-2147483647i, firstLeadingBit(u_input.b), func_1(vec3<i32>(u_input.a.x, 1712i, 13611i), -2147483647i, 2147483647i, Struct_1(-298f))), select(vec3<i32>(u_input.a.x, -1i, u_input.b), vec3<i32>(u_input.b, 2147483647i, u_input.a.x), true) << (~vec3<u32>(u_input.c, 1u, 1u) % vec3<u32>(32u))), ~vec3<i32>(-6849i, abs(u_input.b), u_input.b)), countOneBits(~(~countOneBits(vec3<i32>(u_input.a.x, 20686i, -1370i)))), true | func_3(Struct_1(-722f)));
    var var_1 = ~_wgslsmith_sub_i32(_wgslsmith_mult_i32(-(~8621i), 11136i), 11654i);
    let var_2 = select(~reverseBits(select(vec4<u32>(1u, u_input.c, 20572u, 0u), vec4<u32>(u_input.c, 0u, u_input.c, u_input.c), true)), select((vec4<u32>(u_input.c, u_input.c, 4294967295u, 0u) & vec4<u32>(u_input.c, 73703u, 60452u, u_input.c)) << (vec4<u32>(1u, u_input.c, u_input.c, 0u) % vec4<u32>(32u)), vec4<u32>(u_input.c, min(u_input.c, u_input.c), u_input.c, func_2(global2[_wgslsmith_index_u32(u_input.c, 20u)], vec2<f32>(var_0.a, 613f), var_0.a).x), false), vec4<bool>(!global2[_wgslsmith_index_u32(23434u, 20u)] | global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(12904u, 718u, u_input.c), 20u)], true, all(select(vec3<bool>(false, false, true), vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 20u)], global2[_wgslsmith_index_u32(u_input.c, 20u)], global2[_wgslsmith_index_u32(0u, 20u)]), true)), !any(vec4<bool>(global2[_wgslsmith_index_u32(7368u, 20u)], global2[_wgslsmith_index_u32(108193u, 20u)], global2[_wgslsmith_index_u32(4294967295u, 20u)], true)))) | ~abs(vec4<u32>(u_input.c | u_input.c, 1u, u_input.c, ~u_input.c));
    global4 = array<Struct_1, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(var_2.x, _wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, u_input.c), _wgslsmith_add_u32(u_input.c, u_input.c))), vec4<f32>(_wgslsmith_div_f32(1792f, _wgslsmith_f_op_f32(select(1629f, 136f, any(vec3<bool>(false, false, global2[_wgslsmith_index_u32(0u, 20u)]))))), _wgslsmith_f_op_f32(-1f), -777f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2166f - _wgslsmith_f_op_f32(var_0.a - 253f)), _wgslsmith_f_op_f32(-var_0.a))), 360f);
}

