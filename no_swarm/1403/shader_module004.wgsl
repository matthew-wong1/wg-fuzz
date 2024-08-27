struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13>;

var<private> global1: array<Struct_2, 3>;

var<private> global2: array<bool, 24> = array<bool, 24>(true, true, false, false, false, false, true, false, false, false, true, true, true, true, false, true, false, true, true, false, true, false, true, true);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: vec2<i32>, arg_3: f32) -> i32 {
    global0 = array<bool, 13>();
    let var_0 = Struct_2(0u, firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.b, arg_0.b, 4294967295u), vec3<u32>(arg_0.b, arg_0.b, arg_0.b)), abs(vec3<u32>(arg_0.b, 1u, arg_0.b))), _wgslsmith_sub_u32(0u, arg_0.b) ^ arg_0.b)), vec4<i32>(u_input.b, -44538i, arg_0.c.b.x, i32(-1i) * -(~34138i)), arg_0.c.b.x, -610f);
    var var_1 = true;
    var var_2 = Struct_3(arg_0.a, var_0.a, arg_0.c);
    var var_3 = Struct_2(~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 0u, 93817u, 1u), _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 0u, var_0.b.x, 31453u), vec4<u32>(0u, 4294967295u, var_0.a, 0u) & vec4<u32>(var_2.b, var_2.b, 4294967295u, 27007u))), reverseBits(_wgslsmith_clamp_vec2_u32(var_0.b, var_0.b, vec2<u32>(_wgslsmith_mult_u32(2416u, var_0.a), 1u))), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, arg_2.x, i32(-1i) * -13756i, ~arg_2.x), abs(max(vec4<i32>(arg_0.c.b.x, -2147483647i, 27216i, -2147483647i), vec4<i32>(-19821i, -2147483647i, arg_2.x, 4687i))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-41774i, -1i, u_input.b, arg_2.x), var_0.c), vec4<i32>(var_2.c.b.x, var_0.c.x, -1i, arg_2.x), var_0.c)) & var_0.c, -var_0.d, _wgslsmith_f_op_f32(step(arg_3, _wgslsmith_f_op_f32(-arg_3))));
    return var_2.c.b.x;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec2<bool>) -> Struct_1 {
    return arg_1.c;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>) -> vec2<u32> {
    global0 = array<bool, 13>();
    var var_0 = arg_0.c.yxy;
    var var_1 = func_3(vec4<i32>(var_0.x, var_0.x, _wgslsmith_sub_i32(0i, (u_input.a.x & u_input.a.x) & func_2(Struct_3(1861f, arg_0.b.x, Struct_1(vec3<bool>(arg_1.x, arg_1.x, false), vec2<i32>(1i, -2147483647i))), true, vec2<i32>(32329i, 37661i), -878f)), ~_wgslsmith_mult_i32(_wgslsmith_sub_i32(var_0.x, arg_0.c.x), select(42982i, arg_0.c.x, true))), Struct_3(_wgslsmith_f_op_f32(arg_0.e + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-927f)), -1937f, any(vec2<bool>(true, global0[_wgslsmith_index_u32(arg_0.b.x, 13u)]))))), 20769u, Struct_1(select(select(arg_1, arg_1, true), select(arg_1, vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0.b.x, 13u)], true), vec3<bool>(false, false, global2[_wgslsmith_index_u32(4294967295u, 24u)])), true), select(_wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(var_0.x, arg_0.c.x)), vec2<i32>(2147483647i, -63413i), true))), vec2<bool>(true, true));
    var_0 = firstLeadingBit(-((-arg_0.c.yxx ^ (vec3<i32>(u_input.a.x, var_0.x, 6980i) & vec3<i32>(31721i, var_0.x, 1i))) ^ _wgslsmith_mod_vec3_i32(~arg_0.c.xzz, firstTrailingBit(vec3<i32>(-26073i, 4818i, 0i)))));
    var var_2 = Struct_2(_wgslsmith_clamp_u32(~arg_0.a, 0u, _wgslsmith_sub_u32(firstLeadingBit(arg_0.b.x), ~_wgslsmith_clamp_u32(arg_0.a, 0u, 4294967295u))), arg_0.b, select(_wgslsmith_div_vec4_i32(-vec4<i32>(28565i, 8902i, 7266i, -2147483647i), arg_0.c), vec4<i32>(~(-43386i), arg_0.d ^ ~var_1.b.x, -var_1.b.x ^ -25238i, ~_wgslsmith_sub_i32(u_input.b, -2147483647i)), all(vec3<bool>(var_1.a.x && global0[_wgslsmith_index_u32(arg_0.a, 13u)], !arg_1.x, arg_1.x))), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.b.x, arg_0.d, ~u_input.a.x), _wgslsmith_mult_vec3_i32(arg_0.c.xxz, -vec3<i32>(arg_0.d, -39863i, 0i))), arg_0.c.wyz ^ select(vec3<i32>(arg_0.d, var_0.x, 20837i) | vec3<i32>(-20595i, -1i, -2147483647i), ~arg_0.c.ywy, any(var_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(846f, arg_0.e)));
    return var_2.b >> (var_2.b % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(func_1(global1[_wgslsmith_index_u32(1u, 3u)], select(!select(vec3<bool>(false, global0[_wgslsmith_index_u32(18998u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)]), vec3<bool>(global0[_wgslsmith_index_u32(23475u, 13u)], global0[_wgslsmith_index_u32(104861u, 13u)], true), vec3<bool>(true, true, true)), vec3<bool>(true, false && global0[_wgslsmith_index_u32(0u, 13u)], !global2[_wgslsmith_index_u32(1u, 24u)]), all(vec3<bool>(false, false, global0[_wgslsmith_index_u32(40229u, 13u)])))), vec3<u32>(min(~5269u, _wgslsmith_clamp_u32(0u, 68132u, 4294967295u)), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(13080u, 4294967295u), 1u, 1u), 153u) << (vec3<u32>(0u >> (_wgslsmith_div_u32(72510u, 4294967295u) % 32u), ~4294967295u, ~firstLeadingBit(39695u)) % vec3<u32>(32u)), ~abs(u_input.a.x));
}

