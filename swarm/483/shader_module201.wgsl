struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26> = array<i32, 26>(-1i, 2147483647i, i32(-2147483648), -17638i, -7318i, 1i, 1i, 1i, -58427i, i32(-2147483648), 2147483647i, 2147483647i, 21733i, -1i, 1i, -22823i, -35443i, -20843i, -37714i, -41331i, -56667i, 2147483647i, 22415i, 1i, 2147483647i, 28945i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: f32, arg_3: vec3<i32>) -> u32 {
    return u_input.a.x;
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = u_input.a.x;
    var_0 = 1u;
    let var_1 = 1u;
    let var_2 = ~(countOneBits(reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(var_1, var_1, 63755u, var_1), vec4<u32>(u_input.b.x, u_input.a.x, var_1, u_input.a.x)))) & _wgslsmith_mult_vec4_u32(select(~vec4<u32>(u_input.b.x, var_1, 9052u, var_1), vec4<u32>(1u, u_input.b.x, u_input.b.x, 53578u), arg_0.b), vec4<u32>(68826u, 1u, ~var_1, 1u & u_input.a.x)));
    var var_3 = u_input.b.x;
    return min(_wgslsmith_sub_i32(~arg_0.d.x, -37422i), arg_0.d.x) & abs(i32(-1i) * -_wgslsmith_mod_i32(arg_0.d.x, global0[_wgslsmith_index_u32(var_2.x, 26u)]));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: f32) -> bool {
    global0 = array<i32, 26>();
    var var_0 = arg_0;
    var var_1 = abs(_wgslsmith_sub_vec4_u32(vec4<u32>(firstLeadingBit(_wgslsmith_mult_u32(u_input.b.x, 4294967295u)), _wgslsmith_div_u32(3809u, 54145u), ~(u_input.a.x >> (u_input.b.x % 32u)), ~(~u_input.b.x)), ~(~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u)))));
    let var_2 = Struct_1(arg_0.d.x, !all(vec2<bool>(false, var_0.c)) == var_0.c, true, vec4<i32>(_wgslsmith_mult_i32(func_3(Struct_1(arg_1, var_0.b, true, vec4<i32>(var_0.a, 2147483647i, 1i, -2147483647i))), -(i32(-1i) * -1i)), firstLeadingBit(arg_0.a), _wgslsmith_div_i32(arg_0.a, 1i), -276i));
    var var_3 = _wgslsmith_f_op_f32(trunc(arg_3));
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1((~global0[_wgslsmith_index_u32(1u, 26u)] & global0[_wgslsmith_index_u32(~39743u, 26u)]) & _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(u_input.b.x, 26u)]), _wgslsmith_sub_vec3_i32(vec3<i32>(42605i, 1i, 1i), vec3<i32>(global0[_wgslsmith_index_u32(976u, 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 26u)], -4486i))), global0[_wgslsmith_index_u32(40883u, 26u)], ~_wgslsmith_add_i32(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 29156i)), any(vec2<bool>(true, true)), !(u_input.b.x <= 1u), vec4<i32>(global0[_wgslsmith_index_u32(74801u, 26u)], global0[_wgslsmith_index_u32(func_1(vec4<bool>(true, true, true, true), vec3<i32>(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], global0[_wgslsmith_index_u32(u_input.b.x, 26u)]), global0[_wgslsmith_index_u32(0u << (u_input.a.x % 32u), 26u)], global0[_wgslsmith_index_u32(60674u, 26u)] >> (0u % 32u)), -1073f, _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(44295i, -2147483647i, 1894i), vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], global0[_wgslsmith_index_u32(u_input.b.x, 26u)], global0[_wgslsmith_index_u32(u_input.b.x, 26u)])), vec3<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], global0[_wgslsmith_index_u32(24607u, 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 26u)]))), 26u)], -(~(global0[_wgslsmith_index_u32(u_input.a.x, 26u)] >> (31391u % 32u))), ~_wgslsmith_mult_i32(-1i, 2147483647i)));
    let var_1 = Struct_1((i32(-1i) * -86634i) | _wgslsmith_mod_i32((-19252i >> (u_input.b.x % 32u)) | ~(-2147483647i), 2147483647i), true, all(vec3<bool>(true, _wgslsmith_sub_i32(-2147483647i, var_0.d.x) >= -20889i, false | func_2(var_0, -36174i, true, 1283f))), -vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 26u)], var_0.d.x, global0[_wgslsmith_index_u32(4294967295u, 26u)]), vec4<i32>(36683i, var_0.d.x, 27398i, 2147483647i)) | abs(0i), _wgslsmith_add_i32(select(-25766i, var_0.d.x, true), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], var_0.a)), -_wgslsmith_mult_i32(var_0.d.x, -73746i), max(~17951i, 2147483647i << (0u % 32u))));
    global0 = array<i32, 26>();
    global0 = array<i32, 26>();
    var var_2 = Struct_1(-2147483647i, !(!(true | any(vec4<bool>(false, var_0.b, var_1.c, false)))), any(!(!select(vec3<bool>(var_0.b, var_1.c, var_0.c), vec3<bool>(var_1.b, true, var_1.c), var_0.c))), var_0.d);
    let var_3 = vec4<bool>(true, var_0.c, true, var_0.b);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-979f + 1456f));
    var_2 = Struct_1(firstTrailingBit(_wgslsmith_mod_i32(-11703i, _wgslsmith_add_i32(40246i, -53453i))), var_1.b, var_0.c, (vec4<i32>(~var_1.a, 2147483647i, ~0i, countOneBits(-30453i)) & var_0.d) << ((~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x), vec4<u32>(0u, u_input.a.x, u_input.b.x, u_input.a.x), vec4<u32>(14946u, u_input.a.x, 2249u, u_input.a.x)) ^ vec4<u32>(firstLeadingBit(1u), min(3362u, 4294967295u), u_input.a.x, u_input.a.x)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(1i), select(u_input.b.yz & u_input.b.yy, vec2<u32>(~_wgslsmith_div_u32(u_input.b.x, 1u), ~29168u), -37841i == -_wgslsmith_sub_i32(2147483647i, var_1.a)), -var_0.d, i32(-1i) * -(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(4294967295u, 26u)], -9169i) ^ (-1i >> (0u % 32u))));
}

