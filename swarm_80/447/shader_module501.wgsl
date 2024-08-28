struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<bool, 3> = array<bool, 3>(true, true, true);

var<private> global2: u32 = 31000u;

var<private> global3: bool;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    return !(!(arg_0.a.x > arg_1.a.x));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2731f, global0.x, global0.x)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -1954f, global0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(946f, global0.x, global0.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 1169f, -268f) * vec3<f32>(399f, 256f, -861f))))))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, 553f, 1906f))))))))));
    var var_0 = arg_1.b;
    let var_1 = max(~min(arg_2.b, -4676i), 2147483647i);
    let var_2 = arg_2;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(1f + -106f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-141f)) - _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1119f, global0.x))))));
    return var_2.a.x;
}

fn func_2(arg_0: u32, arg_1: vec4<u32>) -> u32 {
    global2 = ~min(arg_1.x, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(14420u, arg_1.x, u_input.c), vec3<u32>(4294967295u, 0u, arg_0))));
    global1 = array<bool, 3>();
    global3 = false;
    global2 = u_input.b;
    var var_0 = Struct_1(_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.x, 32155u), vec2<u32>(func_3(Struct_1(vec2<u32>(arg_0, arg_0), u_input.a, global1[_wgslsmith_index_u32(23821u, 3u)]), Struct_1(vec2<u32>(24753u, arg_1.x), 1475i, global1[_wgslsmith_index_u32(arg_0, 3u)]), Struct_1(arg_1.yy, u_input.a, global1[_wgslsmith_index_u32(arg_1.x, 3u)])), ~u_input.c)), firstLeadingBit(u_input.a), !select(false, all(!vec2<bool>(global1[_wgslsmith_index_u32(42931u, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)])), u_input.a <= firstLeadingBit(-2147483647i)));
    return 0u;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: i32) -> Struct_1 {
    global3 = true;
    var var_0 = arg_0;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(countOneBits(~select(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, 79102u), vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 3u)], global1[_wgslsmith_index_u32(u_input.c, 3u)]))), -u_input.a, select(true, false, func_1(Struct_1(vec2<u32>(u_input.c, u_input.b), u_input.a, true), Struct_1(vec2<u32>(u_input.c, u_input.b), 0i, false))) || true), vec2<u32>(652u, (countOneBits(0u) >> (func_2(u_input.c, vec4<u32>(u_input.b, 3734u, u_input.c, u_input.c)) % 32u)) ^ 0u), vec4<bool>(global1[_wgslsmith_index_u32(41012u, 3u)], false, !select(all(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 3u)], global1[_wgslsmith_index_u32(2627u, 3u)], true)), true, any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 3u)], false))), false), u_input.a | u_input.a);
    var var_1 = -1i;
    let var_2 = func_4(Struct_1(max(vec2<u32>(53170u, 4294967295u), vec2<u32>(reverseBits(var_0.a.x), _wgslsmith_sub_u32(var_0.a.x, 1u))), ~u_input.a, !var_0.c), firstLeadingBit(~_wgslsmith_div_vec2_u32(vec2<u32>(var_0.a.x, var_0.a.x), var_0.a)), vec4<bool>(true, true, true, true), 57768i);
    var var_3 = _wgslsmith_mod_vec2_i32(~vec2<i32>(min(18324i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.b, -1i), vec2<i32>(-25377i, 1i))), _wgslsmith_sub_i32(-38906i, var_2.b) >> (var_0.a.x % 32u)), vec2<i32>(-2147483647i ^ _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.b, 2147483647i, 35037i), vec3<i32>(u_input.a, u_input.a, 0i)), vec3<i32>(-1i, var_2.b, var_0.b)), -1i));
    let var_4 = func_4(func_4(Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(var_2.a.x, 23766u) << (var_0.a % vec2<u32>(32u)), var_2.a), _wgslsmith_div_i32(0i, _wgslsmith_clamp_i32(u_input.a, 54326i, var_3.x)), true), vec2<u32>(_wgslsmith_clamp_u32(u_input.b, var_2.a.x, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, var_2.a.x, 1u), vec3<u32>(var_2.a.x, 19182u, u_input.c))) >> ((vec2<u32>(4294967295u, u_input.c) & vec2<u32>(var_2.a.x, 0u)) % vec2<u32>(32u)), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.c ^ 33985u, 3u)], func_1(var_2, Struct_1(var_2.a, var_0.b, true)), !global1[_wgslsmith_index_u32(4294967295u, 3u)], all(vec4<bool>(true, true, var_2.c, global1[_wgslsmith_index_u32(19096u, 3u)]))), var_0.b), abs(min(var_0.a, countOneBits(vec2<u32>(var_0.a.x, var_2.a.x)))), select(select(!select(vec4<bool>(true, global1[_wgslsmith_index_u32(146851u, 3u)], global1[_wgslsmith_index_u32(var_0.a.x, 3u)], true), vec4<bool>(true, false, var_2.c, true), vec4<bool>(true, var_0.c, var_2.c, global1[_wgslsmith_index_u32(26804u, 3u)])), !vec4<bool>(var_0.c, var_0.c, true, var_0.c), global1[_wgslsmith_index_u32(0u, 3u)]), !select(select(vec4<bool>(var_2.c, var_0.c, global1[_wgslsmith_index_u32(8614u, 3u)], global1[_wgslsmith_index_u32(u_input.c, 3u)]), vec4<bool>(false, true, true, false), vec4<bool>(true, var_2.c, global1[_wgslsmith_index_u32(48346u, 3u)], false)), !vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 3u)], var_0.c, var_0.c, true), var_2.c), select(vec4<bool>(true, any(vec3<bool>(var_0.c, true, global1[_wgslsmith_index_u32(var_0.a.x, 3u)])), var_2.c, false), !(!vec4<bool>(false, var_0.c, global1[_wgslsmith_index_u32(1u, 3u)], var_2.c)), vec4<bool>(!global1[_wgslsmith_index_u32(6833u, 3u)], true, var_0.c, var_0.c))), firstTrailingBit(-_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 36243i, var_2.b), vec3<i32>(-8452i, 17765i, u_input.a)), u_input.a)));
    var_3 = -vec2<i32>(var_2.b, u_input.a);
    global2 = _wgslsmith_div_u32(~_wgslsmith_mult_u32(firstLeadingBit(var_4.a.x), var_2.a.x), ~(~44118u));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x);
}

