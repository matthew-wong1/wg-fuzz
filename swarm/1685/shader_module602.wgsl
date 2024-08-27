struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: i32,
    d: vec3<f32>,
    e: i32,
}

struct Struct_4 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(407f, 973f, -2168f, -1163f, -120f, -1949f, 832f, 432f, -1000f, 1131f, -1085f, 740f, -166f, -826f, 667f, 775f, -134f, -209f, 225f, 912f, -106f, 1000f, 1100f);

var<private> global1: array<Struct_1, 13>;

var<private> global2: u32 = 39580u;

var<private> global3: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    global2 = u_input.c.x & abs(u_input.d);
    var var_0 = -38328i;
    global0 = array<f32, 23>();
    let var_1 = ~0u;
    var var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(7455u, var_1, ~29209u << (var_1 % 32u), ~u_input.c.x ^ (15229u | ~u_input.d)), _wgslsmith_div_vec4_u32(~(~vec4<u32>(var_1, var_1, 69152u, 1u)), vec4<u32>(~0u << (_wgslsmith_mod_u32(u_input.d, u_input.c.x) % 32u), 27583u, 59437u, var_1)));
    return global3.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: u32, arg_3: vec3<i32>) -> Struct_3 {
    let var_0 = Struct_2(-5558i, Struct_1(!(!func_3())), -42735i, global1[_wgslsmith_index_u32(u_input.d, 13u)]);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.d, 23u)] * _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(23358u), 23u)])))), 446f, 431f, -313f);
    let var_2 = arg_1;
    var var_3 = !select(vec3<bool>(true, false && (var_1.x != global0[_wgslsmith_index_u32(arg_1, 23u)]), true), !select(vec3<bool>(global3.x, false, global3.x), !vec3<bool>(false, global3.x, false), 671f >= var_1.x), vec3<bool>(var_0.b.a, true, !all(vec2<bool>(false, var_0.d.a))));
    return Struct_3(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_3, arg_3, min(vec3<i32>(-2147483647i, 2147483647i, u_input.b), vec3<i32>(-2147483647i, -1i, 0i))), reverseBits(_wgslsmith_mult_vec3_i32(arg_3, vec3<i32>(arg_3.x, 2147483647i, -2147483647i)))), min(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(20355i, u_input.e, -3655i), arg_3), ~vec3<i32>(-1i, 25187i, -2147483647i)), _wgslsmith_mod_i32(48213i, arg_3.x)), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(u_input.a | -1i, -1i, var_0.c), 2147483647i, -4590i)), Struct_2(_wgslsmith_clamp_i32(26847i, var_0.a, 21287i), var_0.b, u_input.a, global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 13u)]), i32(-1i) * -8819i, var_1.zxy, firstTrailingBit(~min(-24568i, arg_3.x) | reverseBits(select(1i, 2147483647i, var_0.b.a))));
}

fn func_1() -> Struct_3 {
    return func_2(vec3<u32>(1u, countOneBits(countOneBits(u_input.c.x)), 4294967295u), u_input.d, ~0u, _wgslsmith_mult_vec3_i32(vec3<i32>(3829i, u_input.e, u_input.e) & vec3<i32>(22278i, -1i, ~u_input.e), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, 21033i, u_input.e), vec3<i32>(u_input.a, u_input.b, -475i)) << (abs(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)) % vec3<u32>(32u)), -vec3<i32>(u_input.a, 57713i, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(34746u, ~u_input.c.x);
    let var_1 = func_1();
    global0 = array<f32, 23>();
    var var_2 = vec2<bool>(func_1().b.d.a, 4294967295u > var_0.a);
    var var_3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(trunc(1f)), -521f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.d.x, 1151f), var_1.d.yz))), !(!vec2<bool>(true, any(vec4<bool>(var_1.b.d.a, global3.x, global3.x, var_2.x))))));
    var var_4 = -18637i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(firstLeadingBit(40055u), var_0.a, firstLeadingBit(countOneBits(_wgslsmith_clamp_u32(1u, 16722u, var_0.b)))), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.d.x, -1465f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.x, -265f, global3.x))))));
}

