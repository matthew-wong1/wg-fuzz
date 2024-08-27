struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 13>;

var<private> global1: Struct_2 = Struct_2(2524i, Struct_1(vec3<i32>(0i, 22702i, 2147483647i), 4294967295u, vec2<i32>(2147483647i, 0i), vec4<i32>(-1i, -1i, -5860i, -1i), vec4<f32>(385f, 973f, 936f, 1000f)), vec4<i32>(-35940i, -81166i, 16067i, 10357i));

var<private> global2: array<vec3<bool>, 4>;

var<private> global3: vec2<i32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: bool, arg_3: vec2<i32>) -> u32 {
    global1 = Struct_2(-24791i, global1.b, max(u_input.b, global1.b.d));
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, ~1u, ~1u, firstLeadingBit(1u))), select(_wgslsmith_div_vec4_u32(vec4<u32>(~1u, reverseBits(0u), u_input.a, ~52011u), ~max(vec4<u32>(0u, 1u, global1.b.b, global1.b.b), vec4<u32>(global1.b.b, global1.b.b, 26027u, global1.b.b))), _wgslsmith_mult_vec4_u32(select(~vec4<u32>(global1.b.b, u_input.a, 15298u, 25864u), ~vec4<u32>(2637u, 4294967295u, 61940u, global1.b.b), arg_2 != true), ~(~vec4<u32>(34234u, 10912u, 33101u, 4294967295u))), arg_2 | (max(2147483647i, global1.c.x) >= _wgslsmith_clamp_i32(arg_1, -1i, u_input.b.x)))), 13u)];
    let var_1 = Struct_2(~arg_0, global1.b, vec4<i32>(abs(_wgslsmith_clamp_i32(arg_1, ~(-47005i), _wgslsmith_div_i32(1i, 1536i))), max(_wgslsmith_dot_vec2_i32(~vec2<i32>(-34517i, 11381i), u_input.b.zz), -_wgslsmith_add_i32(arg_3.x, 2147483647i)), -max(arg_0 >> (1u % 32u), firstLeadingBit(13034i)), _wgslsmith_dot_vec2_i32(~vec2<i32>(13674i, arg_1), _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0, global3.x), global1.c.xx))));
    let var_2 = var_1.b;
    let var_3 = arg_2;
    return var_2.b;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = arg_3.e.xz;
    var var_1 = _wgslsmith_f_op_f32(trunc(global1.b.e.x));
    global0 = array<vec4<i32>, 13>();
    let var_2 = vec4<u32>(1u, 0u, 19283u, func_3(39176i, i32(-1i) * -(i32(-1i) * -55157i), any(select(!vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1), !vec4<bool>(arg_1, false, arg_1, true))), vec2<i32>(~1i, _wgslsmith_add_i32(abs(-1i), _wgslsmith_mult_i32(0i, 22786i)))));
    var var_3 = _wgslsmith_div_i32(-(~_wgslsmith_dot_vec4_i32(global1.b.d, vec4<i32>(91220i, global3.x, -1i, 34394i))), ~global1.b.c.x);
    return select(select(select(select(select(vec2<bool>(false, false), vec2<bool>(arg_1, true), vec2<bool>(false, arg_1)), !vec2<bool>(arg_1, arg_1), any(vec4<bool>(false, arg_1, true, false))), vec2<bool>(!arg_1, arg_1), false), vec2<bool>(!(arg_3.e.x < global1.b.e.x), true | !arg_1), (all(vec2<bool>(arg_1, true)) || (false || arg_1)) || arg_1), vec2<bool>(arg_1, !(!(!arg_1))), !vec2<bool>(any(select(global2[_wgslsmith_index_u32(arg_2, 4u)], vec3<bool>(false, arg_1, false), vec3<bool>(true, arg_1, arg_1))), false));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(abs(global3.x), global3.x, _wgslsmith_mult_i32(-global3.x, _wgslsmith_mult_i32(-5093i, global3.x))), firstLeadingBit(vec3<i32>(~u_input.b.x, abs(41695i), u_input.b.x))), ~_wgslsmith_mod_u32(~u_input.a >> (u_input.a % 32u), ~_wgslsmith_div_u32(u_input.a, u_input.a)), abs(vec2<i32>(-_wgslsmith_sub_i32(global1.c.x, 248i), -54715i)), ~(vec4<i32>(0i, 1i, global1.b.d.x, -1i) | -u_input.b) & -(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 38029i, u_input.b.x, global1.a), vec4<i32>(u_input.b.x, 14200i, global1.c.x, u_input.b.x)) ^ -global0[_wgslsmith_index_u32(u_input.a, 13u)]), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.b.e.x), _wgslsmith_f_op_f32(-global1.b.e.x), _wgslsmith_f_op_f32(-106f - 1000f), _wgslsmith_f_op_f32(max(138f, global1.b.e.x))) - global1.b.e))));
    global3 = select(var_0.d.wx, vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.b.wxx, select(global1.c.zxz, -vec3<i32>(45973i, var_0.a.x, u_input.b.x), vec3<bool>(true, true, true))), -1i), all(!(!func_2(global1.b.e.x, true, u_input.a, Struct_1(u_input.b.wzx, 39837u, vec2<i32>(global3.x, global1.b.c.x), u_input.b, vec4<f32>(var_0.e.x, var_0.e.x, 1145f, var_0.e.x))))));
    var var_1 = vec2<i32>(26296i, select(-34662i, var_0.a.x, (true != all(global2[_wgslsmith_index_u32(42858u, 4u)])) != all(vec2<bool>(false, true))));
    let var_2 = vec3<f32>(var_0.e.x, global1.b.e.x, _wgslsmith_f_op_f32(round(-2062f)));
    var var_3 = i32(-1i) * -2147483647i;
    return Struct_2(countOneBits(_wgslsmith_mod_i32(firstTrailingBit(firstTrailingBit(-77610i)), -49235i)), Struct_1(u_input.b.zyy, select(global1.b.b, var_0.b ^ func_3(global3.x, u_input.b.x, false, global1.b.a.yy), any(vec4<bool>(true, false, false, true))), ~vec2<i32>(~(-2147483647i), select(-2147483647i, 15846i, false)), ~vec4<i32>(global1.b.d.x, _wgslsmith_dot_vec3_i32(u_input.b.xxz, vec3<i32>(-1i, u_input.b.x, global3.x)), u_input.b.x, var_0.a.x), vec4<f32>(var_2.x, -2428f, 272f, -1120f)), _wgslsmith_mult_vec4_i32(-(-vec4<i32>(global3.x, 0i, global3.x, -5952i) ^ abs(global0[_wgslsmith_index_u32(26028u, 13u)])), _wgslsmith_add_vec4_i32(select(vec4<i32>(-2147483647i, var_1.x, 33578i, 15087i), vec4<i32>(var_0.a.x, global1.b.d.x, global1.a, -1i), vec4<bool>(true, true, true, true)), vec4<i32>(var_1.x, global1.c.x, 1i, -38332i)) ^ vec4<i32>(u_input.b.x, 1i, global3.x | 39686i, abs(-31070i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_sub_vec2_u32(select(~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, var_0.b.b), vec2<u32>(var_0.b.b, u_input.a)), ~min(vec2<u32>(u_input.a, 0u), vec2<u32>(17172u, 43636u)), true) | _wgslsmith_div_vec2_u32(vec2<u32>(global1.b.b, var_0.b.b), ~vec2<u32>(61527u, 1u) ^ ~vec2<u32>(var_0.b.b, 0u)), select(_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(1u, 1u)) >> (abs(vec2<u32>(48881u, 1u)) % vec2<u32>(32u)), vec2<u32>(global1.b.b, 11829u) << (_wgslsmith_div_vec2_u32(vec2<u32>(global1.b.b, global1.b.b), vec2<u32>(41082u, 9542u)) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.b.b, abs(var_0.b.b)), vec2<u32>(1u, 1u) << (_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, global1.b.b), vec2<u32>(62678u, u_input.a)) % vec2<u32>(32u))), vec2<bool>(false, true)));
    global1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(global1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1527f, _wgslsmith_f_op_f32(1732f + 1000f), 1f, global1.b.e.x) + vec4<f32>(-1137f, global1.b.e.x, 346f, _wgslsmith_f_op_f32(min(var_0.b.e.x, 866f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.b.e * global1.b.e) * _wgslsmith_f_op_vec4_f32(max(var_0.b.e, vec4<f32>(124f, global1.b.e.x, var_0.b.e.x, -2459f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.b.e) * var_0.b.e))), ~(~_wgslsmith_dot_vec3_i32(min(vec3<i32>(0i, global3.x, -9097i), vec3<i32>(global3.x, -38477i, global3.x)), func_1().b.d.ywy)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1567f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -875f), -1996f), -882f, _wgslsmith_f_op_f32(global1.b.e.x * global1.b.e.x)) + _wgslsmith_f_op_vec4_f32(floor(global1.b.e))));
}

