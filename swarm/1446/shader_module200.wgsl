struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 5> = array<vec4<i32>, 5>(vec4<i32>(13669i, -15969i, -1i, i32(-2147483648)), vec4<i32>(-1i, 0i, -1i, 0i), vec4<i32>(27821i, 10921i, -1i, 30059i), vec4<i32>(-1i, 43022i, -24810i, i32(-2147483648)), vec4<i32>(-16786i, 2147483647i, 1i, 33990i));

var<private> global1: array<u32, 30>;

var<private> global2: array<i32, 20> = array<i32, 20>(1i, 0i, 81990i, 18548i, 2147483647i, 54536i, i32(-2147483648), 0i, -50561i, 59538i, 9723i, -59453i, 2147483647i, 71016i, -8346i, 2147483647i, i32(-2147483648), 0i, 38042i, 0i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global0 = array<vec4<i32>, 5>();
    let var_0 = arg_0;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1245f, -132f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))), true, var_0.d);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) * -1524f))) - var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -848f) + 1737f)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec4<i32>, arg_3: bool) -> bool {
    var var_0 = arg_0;
    global1 = array<u32, 30>();
    let var_1 = arg_1;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(func_3(Struct_1(var_0.a, var_0.b, false, var_0.d))))))), !(_wgslsmith_div_i32(arg_2.x, arg_2.x ^ var_0.d.x) > 1i), firstTrailingBit(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.d.x, var_0.d.x), vec2<i32>(u_input.c, -2147483647i)), firstLeadingBit(vec2<i32>(arg_0.d.x, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 30u)], 20u)])))) ^ arg_2.yz);
    var var_3 = _wgslsmith_f_op_f32(-313f + -643f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1600f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1428f * var_0.b))) * _wgslsmith_f_op_f32(-1376f * 1f));
    return var_1;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> i32 {
    var var_0 = reverseBits(35657u >> (0u % 32u));
    var var_1 = vec3<bool>(-768f <= _wgslsmith_f_op_f32(-748f * _wgslsmith_f_op_f32(-arg_1.x)), true, false);
    global0 = array<vec4<i32>, 5>();
    var_1 = select(select(select(!vec3<bool>(arg_0.c, false, true), vec3<bool>(all(vec3<bool>(true, false, false)), func_2(Struct_1(-1540f, arg_0.b, false, arg_0.d), true, vec4<i32>(17324i, -2147483647i, 1i, 39569i), true), false), select(select(vec3<bool>(var_1.x, false, false), vec3<bool>(false, false, false), vec3<bool>(arg_0.c, false, true)), vec3<bool>(var_1.x, true, arg_0.c), !vec3<bool>(true, arg_0.c, true))), !(!vec3<bool>(arg_0.c, arg_0.c, arg_0.c)), !(!(!vec3<bool>(false, arg_0.c, true)))), select(select(select(vec3<bool>(true, true, true), !vec3<bool>(true, arg_0.c, true), all(var_1.zz)), !(!vec3<bool>(arg_0.c, false, arg_0.c)), vec3<bool>(var_1.x, true, all(vec3<bool>(arg_0.c, false, false)))), vec3<bool>(select(arg_0.c, true, true), var_1.x, false), select(vec3<bool>(var_1.x, !var_1.x, true), select(select(vec3<bool>(arg_0.c, var_1.x, true), vec3<bool>(var_1.x, false, false), false), vec3<bool>(var_1.x, arg_0.c, true), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, var_1.x, true), vec3<bool>(true, var_1.x, true))), !vec3<bool>(var_1.x, arg_0.c, var_1.x))), vec3<bool>(!arg_0.c, all(var_1.yy), false));
    var var_2 = Struct_1(-2319f, arg_0.a, !any(vec3<bool>(arg_0.c, any(vec4<bool>(var_1.x, var_1.x, var_1.x, true)), all(var_1.zx))), ~(-arg_0.d << (abs(vec2<u32>(u_input.a, 0u)) % vec2<u32>(32u))) << (~vec2<u32>(firstLeadingBit(0u), _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(4294967295u, 30u)], 1u)) % vec2<u32>(32u)));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = firstLeadingBit(var_0);
    var var_2 = ~_wgslsmith_mult_vec2_u32(~(vec2<u32>(var_0, 15207u) ^ vec2<u32>(1u, 1u)), _wgslsmith_add_vec2_u32(~vec2<u32>(56469u, 1u), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, global1[_wgslsmith_index_u32(0u, 30u)]), vec2<u32>(4294967295u, 1u)), _wgslsmith_add_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(var_0, 30u)], global1[_wgslsmith_index_u32(var_0, 30u)]), vec2<u32>(4294967295u, 4294967295u)))));
    global2 = array<i32, 20>();
    let var_3 = vec3<i32>(_wgslsmith_div_i32(0i, 2147483647i), firstLeadingBit(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(4294967295u, 20u)], u_input.b, u_input.b) ^ func_1(Struct_1(-439f, -903f, true, vec2<i32>(u_input.b, global2[_wgslsmith_index_u32(28916u, 20u)])), vec3<f32>(521f, 737f, -141f)), ~global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 30u)], 20u)])), -_wgslsmith_mod_i32(max(0i, -48132i), u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-(~var_3.x), global2[_wgslsmith_index_u32((4294967295u & ~global1[_wgslsmith_index_u32(var_0, 30u)]) & var_0, 20u)], var_3.x), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1558u, global1[_wgslsmith_index_u32(var_2.x, 30u)], 0u, 71541u)), select(vec4<u32>(1u, var_2.x, 11235u, u_input.a), vec4<u32>(var_2.x, 4294967295u, global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(var_2.x, 30u)]), false)), u_input.a), ~_wgslsmith_mod_u32(u_input.a, reverseBits(11599u))), abs(~_wgslsmith_sub_vec3_u32(vec3<u32>(38867u, 43446u, 7574u), ~vec3<u32>(1u, 2174u, global1[_wgslsmith_index_u32(0u, 30u)]))));
}

