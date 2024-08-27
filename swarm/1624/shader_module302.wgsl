struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 32>;

var<private> global2: array<Struct_1, 30>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<u32>) -> bool {
    global0 = !(!any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), !vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x))));
    let var_0 = !select(!vec3<bool>(true, !arg_1.x, false), !vec3<bool>(any(arg_1.xz), true, arg_1.x), arg_1.x);
    global0 = 0i >= (arg_0.a | ~(~(-9663i)));
    var var_1 = arg_2;
    global0 = true;
    return any(select(vec2<bool>(all(var_0.yx), any(select(var_0, vec3<bool>(arg_1.x, arg_1.x, false), var_0.x))), var_0.xz, true));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: bool) -> vec3<f32> {
    global2 = array<Struct_1, 30>();
    let var_0 = ~(-vec2<i32>(select(19850i, -30784i, arg_3), arg_2.a.a));
    let var_1 = _wgslsmith_mult_vec3_i32(~vec3<i32>(select(-1i, arg_2.a.a, true), var_0.x, ~(-var_0.x)), abs(vec3<i32>(var_0.x << (59039u % 32u), 1i, -1i)) & abs(~(vec3<i32>(-50971i, var_0.x, arg_2.a.a) >> (arg_1 % vec3<u32>(32u)))));
    let var_2 = 0u;
    let var_3 = arg_2.a;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0, arg_0, -2148f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-405f, 1228f, -1820f)))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, arg_0, -502f), vec3<f32>(1074f, arg_0, 628f), vec3<bool>(arg_3, arg_3, false))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, var_3.b.x, arg_0))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(arg_2.a.b.x * arg_0), _wgslsmith_f_op_f32(f32(-1f) * -867f)))));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<i32>) -> i32 {
    var var_0 = Struct_2(Struct_1(firstLeadingBit(~arg_1.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(29172u, 4579u), u_input.c) % 32u)), vec2<f32>(-2251f, arg_0.x)));
    let var_1 = global2[_wgslsmith_index_u32(max(_wgslsmith_clamp_u32(73706u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u) ^ vec2<u32>(u_input.a.x, u_input.c.x), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a.xz)), u_input.c), u_input.c.x), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a) & 78122u), 30u)];
    let var_2 = 1i ^ var_1.a;
    global2 = array<Struct_1, 30>();
    var var_3 = Struct_1(var_0.a.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1785f, arg_0.x)));
    return var_1.a;
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> u32 {
    let var_0 = _wgslsmith_mult_i32(func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(trunc(arg_0.a.b.x)), vec3<u32>(u_input.a.x, 4294967295u, 20486u), Struct_2(arg_0.a), func_3(Struct_1(arg_0.a.a, arg_0.a.b), vec3<bool>(true, false, true), u_input.a))) + vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0.a.b.x)), _wgslsmith_f_op_f32(-arg_0.a.b.x), arg_0.a.b.x)), vec4<i32>(1i, ~(-22844i), ~arg_0.a.a, ~arg_0.a.a)), -_wgslsmith_mod_i32(min(~1i, 41237i), _wgslsmith_mult_i32(-1i, arg_0.a.a) & arg_0.a.a));
    let var_1 = firstLeadingBit(vec3<i32>(28118i, -arg_0.a.a, select(2147483647i, _wgslsmith_sub_i32(0i, var_0), any(vec4<bool>(true, true, true, false))))) ^ (min(vec3<i32>(-1i, -var_0, func_5(vec3<f32>(arg_0.a.b.x, -417f, arg_0.a.b.x), vec4<i32>(-2147483647i, arg_0.a.a, arg_0.a.a, -14342i))), select(~vec3<i32>(1i, 2147483647i, -26682i), abs(vec3<i32>(arg_0.a.a, -50470i, var_0)), vec3<bool>(true, true, true))) << (u_input.a.xyz % vec3<u32>(32u)));
    let var_2 = var_1.x;
    global1 = array<Struct_1, 32>();
    var var_3 = arg_0;
    return 0u;
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    var var_0 = vec4<i32>(1i, firstTrailingBit(max(0i, -1i)), ~abs(~(-2147483647i) << (func_2(Struct_2(global2[_wgslsmith_index_u32(92309u, 30u)]), 6133u) % 32u)), -44457i);
    var var_1 = ~1i;
    var var_2 = -_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, ~var_0.x, abs(-36442i), _wgslsmith_dot_vec4_i32(vec4<i32>(-17373i, -2147483647i, 24090i, var_0.x), vec4<i32>(var_0.x, -41423i, var_0.x, var_0.x))) | vec4<i32>(var_0.x, 27870i, -var_0.x, 0i), firstLeadingBit(vec4<i32>(-var_0.x, var_0.x, 1i, var_0.x)));
    var_0 = ~select(~((vec4<i32>(var_0.x, 60111i, var_0.x, -2147483647i) >> (u_input.a % vec4<u32>(32u))) & ~vec4<i32>(-7306i, 2147483647i, 0i, var_0.x)), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(-11143i, -9712i, -1i, -1i), vec4<i32>(44780i, -41017i, 12703i, -1i)), -abs(vec4<i32>(var_0.x, -2147483647i, -61958i, -24766i))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, true, true))));
    var var_3 = Struct_1(-2147483647i, arg_0.xz);
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec4_u32(~u_input.a, ~vec4<u32>(u_input.b, 37120u, reverseBits(_wgslsmith_sub_u32(25350u, u_input.b)), _wgslsmith_mult_u32(countOneBits(u_input.a.x), u_input.b)));
    let var_1 = true == any(vec3<bool>(true, true, true));
    var var_2 = 1i;
    var_2 = _wgslsmith_add_i32(2147483647i, _wgslsmith_div_i32(_wgslsmith_mult_i32(-1i, 1i), select(1i, func_1(vec3<f32>(-904f, -1505f, 303f)) << (u_input.c.x % 32u), !any(vec2<bool>(var_1, false)))));
    global2 = array<Struct_1, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_4(1000f, vec3<u32>(59648u, 0u, u_input.b), Struct_2(Struct_1(-1i, vec2<f32>(-755f, 1000f))), false)).x + -701f))));
}

