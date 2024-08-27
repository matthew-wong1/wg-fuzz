struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec3<i32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(false, vec3<u32>(1u, 4294967295u, 53648u), vec3<bool>(true, true, false), vec3<i32>(-32392i, -5515i, -21880i), true), Struct_3(true, vec3<u32>(77103u, 1u, 13574u), vec3<bool>(true, true, true), vec3<i32>(1i, -10307i, -1i), true));

var<private> global1: vec4<i32> = vec4<i32>(43991i, 1i, -25068i, i32(-2147483648));

var<private> global2: array<vec3<u32>, 19>;

var<private> global3: array<u32, 17>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec4<f32>) -> i32 {
    let var_0 = true;
    global0 = array<Struct_3, 2>();
    let var_1 = arg_0.x;
    global2 = array<vec3<u32>, 19>();
    global2 = array<vec3<u32>, 19>();
    return 89921i;
}

fn func_2(arg_0: Struct_3) -> vec2<i32> {
    global3 = array<u32, 17>();
    let var_0 = reverseBits(arg_0.b.x);
    global3 = array<u32, 17>();
    global1 = vec4<i32>(reverseBits(-1i), _wgslsmith_sub_i32(arg_0.d.x, -_wgslsmith_dot_vec3_i32(arg_0.d, vec3<i32>(1i, 40990i, u_input.d.x))), func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 353f, 158f, -760f)))), -(i32(-1i) * -32695i)) ^ (~vec4<i32>(firstTrailingBit(19565i), -global1.x, abs(-2037i), -arg_0.d.x) | _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(-293i, -2147483647i, arg_0.d.x, 0i)), vec4<i32>(max(arg_0.d.x, -2147483647i), -24999i, 21174i, u_input.d.x)));
    global3 = array<u32, 17>();
    return -select(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, ~u_input.c), u_input.d.zz), ~(~(global1.zz | vec2<i32>(-2435i, u_input.a.x))), vec2<bool>(true, arg_0.a));
}

fn func_1(arg_0: vec2<u32>, arg_1: i32, arg_2: f32, arg_3: Struct_3) -> bool {
    var var_0 = _wgslsmith_clamp_vec2_i32(arg_3.d.xx, ~(func_2(Struct_3(true, arg_3.b, vec3<bool>(false, arg_3.e, false), vec3<i32>(1i, 71608i, global1.x), arg_3.e)) | vec2<i32>(global1.x, -29565i)), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_3.d.x, _wgslsmith_sub_i32(arg_3.d.x, arg_3.d.x)), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.zx, vec2<i32>(0i, 0i)), vec2<i32>(1i, -67512i)))) ^ select(global1.xx, -(~vec2<i32>(1i, -18569i)) & (-vec2<i32>(-2147483647i, global1.x) << (abs(vec2<u32>(arg_3.b.x, global3[_wgslsmith_index_u32(arg_0.x, 17u)])) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-441f * arg_2) >= -1000f);
    let var_1 = Struct_3(select(true, arg_3.a, arg_3.c.x || any(arg_3.c.yx)), ~global2[_wgslsmith_index_u32(_wgslsmith_div_u32(40233u, min(~u_input.b.x, 36216u)), 19u)], vec3<bool>(arg_3.e, false, arg_3.c.x), -_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global1.x, -52487i, global1.x), _wgslsmith_mult_vec3_i32(global1.xzx, arg_3.d)), -max(u_input.a, arg_3.d), vec3<i32>(var_0.x, abs(34644i), var_0.x)), false);
    var var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(min(abs(var_1.d), select(vec3<i32>(arg_3.d.x, var_0.x, -14162i), vec3<i32>(-9064i, -42196i, 42213i), !var_1.c)), min(~(-vec3<i32>(global1.x, u_input.a.x, -1i)), arg_3.d)), u_input.d);
    var var_3 = countOneBits(_wgslsmith_mult_vec4_u32(firstLeadingBit(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(77972u, var_1.b.x, 13307u, 4294967295u)), vec4<u32>(u_input.b.x, var_1.b.x, global3[_wgslsmith_index_u32(arg_0.x, 17u)], var_1.b.x) >> (vec4<u32>(arg_3.b.x, 1u, 4294967295u, u_input.b.x) % vec4<u32>(32u)))), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, 71360u, arg_0.x, arg_3.b.x), firstLeadingBit(vec4<u32>(arg_0.x, arg_3.b.x, arg_0.x, 1u)) | vec4<u32>(global3[_wgslsmith_index_u32(1u, 17u)], var_1.b.x, arg_3.b.x, var_1.b.x))));
    var var_4 = -13716i;
    return false;
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_3, arg_3: Struct_2) -> vec4<i32> {
    global3 = array<u32, 17>();
    global3 = array<u32, 17>();
    global1 = countOneBits(~(-max(vec4<i32>(44207i, -2147483647i, arg_1, -8991i), select(vec4<i32>(5953i, u_input.c, 50868i, arg_2.d.x), vec4<i32>(arg_1, 34320i, -1i, 0i), vec4<bool>(arg_2.c.x, false, true, arg_3.a.b.x)))));
    global1 = vec4<i32>(-_wgslsmith_dot_vec3_i32(arg_2.d, vec3<i32>(global1.x, ~global1.x, ~u_input.d.x)), -41019i, reverseBits(~(-1i)), (reverseBits(arg_1 >> (arg_0.x % 32u)) & -_wgslsmith_add_i32(arg_1, 2147483647i)) & global1.x);
    var var_0 = 1u;
    return ~(~(~(~vec4<i32>(0i, -26601i, arg_3.a.c.x, u_input.a.x))) >> (reverseBits(firstTrailingBit(vec4<u32>(arg_0.x, arg_3.a.d.x, arg_0.x, arg_2.b.x))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(global1.x, global1.x, -47974i, global1.x), -vec4<i32>(u_input.a.x, u_input.a.x, global1.x, 1i)) | vec4<i32>(min(9683i, -67191i), -2147483647i, -1i, u_input.d.x), abs(firstLeadingBit(-vec4<i32>(global1.x, -2147483647i, 21755i, 61877i)))), select(-firstTrailingBit(vec4<i32>(6422i, u_input.d.x, u_input.a.x, u_input.a.x)), func_4(_wgslsmith_sub_vec2_u32(max(vec2<u32>(global3[_wgslsmith_index_u32(7283u, 17u)], global3[_wgslsmith_index_u32(11594u, 17u)]), vec2<u32>(0u, global3[_wgslsmith_index_u32(39360u, 17u)])), vec2<u32>(36355u, 75011u)), ~(-1i) & min(u_input.c, global1.x), Struct_3(func_1(vec2<u32>(33975u, global3[_wgslsmith_index_u32(4294967295u, 17u)]), -2147483647i, -395f, Struct_3(true, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(51111u, 17u)], 19u)], vec3<bool>(true, false, true), u_input.d, true)), abs(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 0u, u_input.b.x)), vec3<bool>(true, false, true), countOneBits(global1.zxx), false), Struct_2(Struct_1(global1.x, vec4<bool>(false, true, true, true), global1.wzz, vec3<u32>(u_input.b.x, global3[_wgslsmith_index_u32(20489u, 17u)], 41411u), 603f), vec4<f32>(1239f, 4189f, -1996f, 1278f), Struct_1(-1i, vec4<bool>(true, true, true, false), vec3<i32>(-21328i, global1.x, 1i), vec3<u32>(0u, 0u, global3[_wgslsmith_index_u32(u_input.b.x, 17u)]), -650f))), true), true);
    var var_1 = !vec3<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), any(vec3<bool>(true, false, false)))), any(vec2<bool>(u_input.c > 23152i, true)), true);
    var_0 = abs(vec4<i32>(var_0.x, func_3(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -334f), _wgslsmith_f_op_f32(848f * -412f), _wgslsmith_f_op_f32(ceil(-650f)), _wgslsmith_f_op_f32(145f + -474f))), -(i32(-1i) * -global1.x), u_input.d.x));
    let var_2 = Struct_3(all(vec2<bool>(all(select(vec3<bool>(var_1.x, false, false), vec3<bool>(false, false, false), vec3<bool>(var_1.x, false, false))), true)), ~(~(~(~vec3<u32>(4294967295u, 21996u, 2042u)))), select(!(!(!vec3<bool>(var_1.x, false, true))), select(vec3<bool>(true, false || var_1.x, var_1.x), !vec3<bool>(var_1.x, false, true), var_1.x && !var_1.x), select(!vec3<bool>(false, true, var_1.x), vec3<bool>(true, var_1.x, true), (var_1.x || true) && !var_1.x)), vec3<i32>(~1i, ~countOneBits(reverseBits(global1.x)), -(~firstTrailingBit(var_0.x))), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-927f, _wgslsmith_f_op_f32(-281f * 3119f))))), _wgslsmith_f_op_f32(f32(-1f) * -892f), var_0.x, _wgslsmith_div_vec3_i32(global1.xyz >> (~select(var_2.b, vec3<u32>(global3[_wgslsmith_index_u32(61908u, 17u)], u_input.b.x, global3[_wgslsmith_index_u32(0u, 17u)]), var_2.c.x) % vec3<u32>(32u)), -select(vec3<i32>(var_2.d.x, -38752i, var_0.x), var_2.d, true)));
}

