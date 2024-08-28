struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
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

var<private> global0: Struct_4 = Struct_4(vec4<f32>(-105f, 325f, -205f, -137f));

var<private> global1: array<vec3<bool>, 15> = array<vec3<bool>, 15>(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false));

var<private> global2: vec2<u32>;

var<private> global3: Struct_4 = Struct_4(vec4<f32>(550f, -176f, 2750f, 544f));

var<private> global4: array<bool, 3> = array<bool, 3>(true, true, false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: Struct_2) -> u32 {
    var var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1372f * _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.x + global3.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global3.a.x)) - _wgslsmith_f_op_f32(abs(global0.a.x))))), _wgslsmith_div_f32(-1000f, -1551f), arg_1.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x));
    var var_2 = Struct_2(!vec3<bool>(any(arg_2.a.xy), arg_2.a.x, false));
    let var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a))));
    global4 = array<bool, 3>();
    return _wgslsmith_div_u32(global2.x, 94144u);
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> vec3<f32> {
    global2 = ~_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.c.xz, u_input.c.zx), ~vec2<u32>(u_input.a, 0u), ~vec2<u32>(u_input.b, 4294967295u)), vec2<u32>(func_3(vec4<i32>(arg_0, -2147483647i, 1i, arg_0), vec2<f32>(arg_1.x, -107f), Struct_2(global1[_wgslsmith_index_u32(35527u, 15u)])), ~global2.x), countOneBits(u_input.c.yz)), _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(u_input.b, u_input.c.x)), select(vec2<u32>(global2.x, global2.x), vec2<u32>(u_input.b, global2.x), true) | firstLeadingBit(vec2<u32>(global2.x, u_input.b))), ~u_input.c.zx);
    global0 = Struct_4(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -402f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-440f, global3.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-503f)) + 281f), arg_1.x))));
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f + global0.a.x), 1105f, false)), _wgslsmith_f_op_f32(floor(global0.a.x)), global3.a.x), vec3<f32>(-1419f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x))), global3.a.x)))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_2 {
    global3 = Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(ceil(1156f)), _wgslsmith_f_op_f32(sign(global0.a.x))) + vec4<f32>(_wgslsmith_f_op_f32(-1338f + global0.a.x), -1159f, global3.a.x, 584f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.x + 1546f), _wgslsmith_f_op_f32(f32(-1f) * -1567f), _wgslsmith_f_op_f32(-global3.a.x), arg_0.x))));
    global3 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-127f + -1083f))), -1029f, _wgslsmith_f_op_f32(global0.a.x + -788f), arg_0.x));
    var var_0 = Struct_2(vec3<bool>(all(select(vec3<bool>(true, global4[_wgslsmith_index_u32(global2.x, 3u)], global4[_wgslsmith_index_u32(0u, 3u)]), vec3<bool>(false, global4[_wgslsmith_index_u32(arg_1.b.x, 3u)], global4[_wgslsmith_index_u32(global2.x, 3u)]), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, global2.x), 3u)])), any(!vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 3u)], global4[_wgslsmith_index_u32(0u, 3u)])), 16433i != arg_1.a.x));
    var var_1 = arg_0.x;
    global2 = abs(vec2<u32>(68466u, ~arg_1.b.x ^ 56220u));
    return Struct_2(select(select(global1[_wgslsmith_index_u32(0u, 15u)], !var_0.a, !(!var_0.a)), global1[_wgslsmith_index_u32(1u, 15u)], vec3<bool>(var_0.a.x, ~(-39285i) == ~arg_1.a.x, true)));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    global1 = array<vec3<bool>, 15>();
    var var_0 = Struct_1(-vec4<i32>(1i >> (global2.x % 32u), _wgslsmith_add_i32(-66037i, 30112i), _wgslsmith_dot_vec4_i32(~vec4<i32>(1i, -5337i, -7996i, -1i), max(vec4<i32>(1i, -4234i, 74302i, 53775i), vec4<i32>(-33102i, -18036i, -1i, 11448i))), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(0i, 15621i))), ~select(~min(vec3<u32>(17908u, 125u, u_input.a), u_input.c), u_input.c, (0u == u_input.b) == global4[_wgslsmith_index_u32(u_input.b, 3u)]));
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(global0.a.yy));
    let var_2 = u_input.c.x;
    global0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(global3.a))));
    return Struct_2(func_4(vec3<f32>(-2055f, _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_add_i32(var_0.a.x, -9563i), global3.a.xwz)).x, _wgslsmith_f_op_f32(-global0.a.x)), Struct_1(var_0.a, vec3<u32>(var_0.b.x, var_2, ~u_input.a))).a);
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: bool, arg_3: bool) -> Struct_3 {
    var var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(max(47617u, 1u), 43656u, 0u, ~71637u)), abs(vec4<u32>(1u, u_input.c.x & global2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 0u)), u_input.b))), reverseBits(vec4<u32>(global2.x, 4294967295u, global2.x, ~global2.x)));
    var_0 = ~max(vec4<u32>(~u_input.c.x, ~(~global2.x), abs(u_input.b), ~4294967295u << (u_input.b % 32u)), ~(~(~vec4<u32>(54434u, var_0.x, 21819u, u_input.c.x))));
    global4 = array<bool, 3>();
    let var_1 = 4294967295u;
    var var_2 = func_5(func_4(_wgslsmith_f_op_vec3_f32(func_2(0i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-418f, global3.a.x, 541f))))), Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1, 2147483647i, arg_1, -2396i), vec4<i32>(-8669i, arg_1, arg_1, arg_1)) & ~vec4<i32>(arg_1, 1i, -2147483647i, arg_1), min(vec3<u32>(1u, var_0.x, u_input.c.x), u_input.c) | select(u_input.c, var_0.yzw, vec3<bool>(true, arg_3, true)))));
    return Struct_3(_wgslsmith_add_vec4_i32(max(~(-vec4<i32>(arg_1, -324i, 48822i, arg_1)), abs(-vec4<i32>(-43150i, -2147483647i, arg_1, -5797i))), -vec4<i32>(_wgslsmith_mult_i32(arg_1, arg_1), arg_1, -1i, abs(-59161i))), Struct_1(abs(vec4<i32>(_wgslsmith_div_i32(arg_1, arg_1), -56430i, arg_1 << (global2.x % 32u), ~arg_1)), min(~(u_input.c << (vec3<u32>(12997u, var_0.x, global2.x) % vec3<u32>(32u))), select(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, var_1, 49373u), vec3<u32>(var_1, var_0.x, u_input.a)), u_input.c & var_0.yzw, arg_2))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(!select(!(!vec4<bool>(global4[_wgslsmith_index_u32(1u, 3u)], global4[_wgslsmith_index_u32(1u, 3u)], global4[_wgslsmith_index_u32(u_input.b, 3u)], global4[_wgslsmith_index_u32(global2.x, 3u)])), vec4<bool>(true, true, global4[_wgslsmith_index_u32(74907u, 3u)], global4[_wgslsmith_index_u32(u_input.a, 3u)]), false), 0i, true, global4[_wgslsmith_index_u32(~u_input.a, 3u)]);
    var var_1 = Struct_3(select(firstTrailingBit(~var_0.b.a), ~(_wgslsmith_add_vec4_i32(var_0.a, vec4<i32>(var_0.a.x, var_0.a.x, var_0.b.a.x, -2959i)) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(12603i, var_0.a.x, var_0.b.a.x, var_0.b.a.x), var_0.a)), true), var_0.b);
    global0 = Struct_4(global0.a);
    global0 = Struct_4(global3.a);
    let var_2 = global0.a.yy;
    var var_3 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -1313f, global0.a.x) * vec3<f32>(global3.a.x, var_2.x, global0.a.x))))) * vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-584f, 505f), _wgslsmith_f_op_f32(select(832f, global3.a.x, false)))), -102f, global3.a.x)), var_1.b).a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

