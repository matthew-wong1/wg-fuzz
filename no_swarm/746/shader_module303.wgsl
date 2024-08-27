struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: i32,
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

var<private> global0: array<vec2<i32>, 4>;

var<private> global1: Struct_1 = Struct_1(true);

var<private> global2: vec4<f32> = vec4<f32>(-1148f, 955f, 717f, -1768f);

var<private> global3: array<bool, 26>;

var<private> global4: vec2<u32> = vec2<u32>(4294967295u, 16904u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    var var_0 = vec2<i32>(66532i, ~0i);
    let var_1 = reverseBits(_wgslsmith_sub_vec2_i32(~_wgslsmith_mult_vec2_i32(global0[_wgslsmith_index_u32(~0u, 4u)], select(vec2<i32>(2147483647i, 1i), vec2<i32>(2147483647i, 2147483647i), global1.a)), global0[_wgslsmith_index_u32(abs(~_wgslsmith_div_u32(41528u, global4.x)), 4u)]));
    let var_2 = ~global4.x;
    var var_3 = ~_wgslsmith_mod_i32(var_1.x, -var_0.x >> (~4294967295u % 32u));
    global4 = vec2<u32>(~6342u, countOneBits(1u));
    return global3[_wgslsmith_index_u32(0u, 26u)];
}

fn func_2(arg_0: i32) -> u32 {
    global3 = array<bool, 26>();
    global1 = Struct_1(any(vec4<bool>(true, all(vec3<bool>(global1.a, global1.a, true)) || global1.a, (arg_0 <= 2147483647i) & !global1.a, !global1.a)));
    var var_0 = Struct_1(true);
    var var_1 = vec4<f32>(-434f, _wgslsmith_f_op_f32(round(-1038f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.x))), global2.x);
    var var_2 = Struct_5(Struct_2(true, select(select(!vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 26u)], global3[_wgslsmith_index_u32(23985u, 26u)]), vec2<bool>(global3[_wgslsmith_index_u32(11932u, 26u)], global3[_wgslsmith_index_u32(38729u, 26u)]), -539f < global2.x), !vec2<bool>(global3[_wgslsmith_index_u32(global4.x, 26u)], var_0.a), vec2<bool>(select(global3[_wgslsmith_index_u32(global4.x, 26u)], global3[_wgslsmith_index_u32(1u, 26u)], false), true)), ~_wgslsmith_mod_u32(~4056u, select(60602u, global4.x, global1.a))), Struct_3(global2.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(140f, -1000f, var_1.x) * global2.yxx), vec4<i32>(reverseBits(u_input.d) << (global4.x % 32u), 0i, _wgslsmith_div_i32(abs(u_input.a), 12780i), -(-2147483647i & u_input.a)), Struct_2(~arg_0 >= arg_0, !(!vec2<bool>(var_0.a, false)), ~(~global4.x))), 0u, select(!(!(!vec4<bool>(global3[_wgslsmith_index_u32(0u, 26u)], true, global3[_wgslsmith_index_u32(81833u, 26u)], global3[_wgslsmith_index_u32(u_input.c.x, 26u)]))), vec4<bool>(all(!vec3<bool>(var_0.a, false, global3[_wgslsmith_index_u32(u_input.c.x, 26u)])), global1.a, false, select(global1.a, var_0.a, true)), select(any(!vec4<bool>(true, true, global1.a, true)), !func_3(), (219f <= global2.x) != any(vec3<bool>(false, global1.a, global1.a)))));
    return abs(_wgslsmith_add_u32(u_input.c.x, var_2.a.c));
}

fn func_1(arg_0: i32, arg_1: vec2<bool>, arg_2: vec4<f32>) -> u32 {
    let var_0 = select(max(select(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 0u, u_input.c.x, 33976u), vec4<u32>(45578u, u_input.c.x, global4.x, u_input.c.x)), vec4<u32>(0u, global4.x, 1u, global4.x) & vec4<u32>(0u, u_input.c.x, 0u, 4294967295u), vec4<u32>(global4.x, 0u, 33187u, 1u) ^ vec4<u32>(0u, global4.x, u_input.c.x, 109237u)), min(_wgslsmith_mult_vec4_u32(vec4<u32>(global4.x, global4.x, u_input.c.x, global4.x), vec4<u32>(4294967295u, global4.x, 9174u, 37069u)), ~vec4<u32>(4294967295u, 17611u, u_input.c.x, 4294967295u)), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.c.x, reverseBits(50571u)), 26u)]), vec4<u32>(func_2(arg_0), 1302u, _wgslsmith_clamp_u32(reverseBits(u_input.c.x), abs(4294967295u), ~u_input.c.x), ~select(1u, global4.x, arg_1.x))), vec4<u32>(_wgslsmith_add_u32(~u_input.c.x, ~(~4294967295u)), min(select(u_input.c.x, 1u, true), 4294967295u), _wgslsmith_div_u32(~u_input.c.x, 0u), 0u), !vec4<bool>(true, !(u_input.c.x != u_input.c.x), true, true));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1040f)) * -1923f);
    global3 = array<bool, 26>();
    var var_2 = Struct_3(global2.x, _wgslsmith_f_op_vec3_f32(trunc(arg_2.xxw)), select(_wgslsmith_div_vec4_i32(select(vec4<i32>(arg_0, arg_0, u_input.b, u_input.b) >> (vec4<u32>(32210u, 51379u, u_input.c.x, global4.x) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e, 2147483647i, u_input.e, 9428i), vec4<i32>(arg_0, u_input.d, 2147483647i, u_input.a), vec4<i32>(1i, 48595i, 1i, -1i)), false), _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(34847i, u_input.b, 1i, -46048i)), vec4<i32>(arg_0, -1i, u_input.a, arg_0) | vec4<i32>(u_input.b, arg_0, -18159i, u_input.b))), reverseBits(_wgslsmith_mult_vec4_i32(select(vec4<i32>(u_input.e, -57114i, u_input.a, arg_0), vec4<i32>(13904i, 1375i, -2147483647i, 13319i), false), -vec4<i32>(-17270i, -1i, arg_0, 1i))), (-1263f != _wgslsmith_f_op_f32(global2.x * -1000f)) && true), Struct_2(global1.a, arg_1, 35468u));
    let var_3 = Struct_4(-1700f);
    return abs(max((~28799u ^ ~u_input.c.x) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(44266u, 24987u), _wgslsmith_add_vec2_u32(u_input.c.yy, vec2<u32>(59583u, var_2.d.c))) % 32u), abs(~(~global4.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(false);
    global4 = _wgslsmith_add_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(func_1(2147483647i, vec2<bool>(global1.a, true), vec4<f32>(1368f, -2675f, -216f, 728f)), _wgslsmith_div_u32(global4.x, u_input.c.x)), ~vec2<u32>(u_input.c.x, 0u)), ~(~_wgslsmith_div_vec2_u32(~u_input.c.yz, abs(vec2<u32>(18712u, 47174u)))));
    let var_0 = ~vec2<i32>(u_input.d, abs(~(u_input.e ^ u_input.a)));
    let var_1 = Struct_3(-1282f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global2.xzy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -1036f, global2.x) + global2.xyw) - _wgslsmith_f_op_vec3_f32(abs(global2.xxx))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1338f, 1677f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1023f, global2.x, -1386f), global2.ywy)))), vec4<i32>(54660i, countOneBits(-(i32(-1i) * -2147483647i)), _wgslsmith_div_i32(_wgslsmith_sub_i32(var_0.x ^ 3786i, firstTrailingBit(2593i)), _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.b, var_0.x), _wgslsmith_add_i32(u_input.b, 0i))), u_input.a), Struct_2(true, select(vec2<bool>(true, global3[_wgslsmith_index_u32(global4.x << (0u % 32u), 26u)]), select(select(vec2<bool>(false, true), vec2<bool>(false, global1.a), vec2<bool>(global1.a, global1.a)), !vec2<bool>(false, global3[_wgslsmith_index_u32(0u, 26u)]), true), !all(vec4<bool>(true, global1.a, true, global1.a))), _wgslsmith_dot_vec2_u32(reverseBits(~u_input.c.zz), ~(~u_input.c.yy))));
    let var_2 = ~(~u_input.c);
    global2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.x, -199f, _wgslsmith_f_op_f32(round(var_1.a)), _wgslsmith_f_op_f32(abs(var_1.a))))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(669f, 480f, 582f, global2.x)))))));
    global0 = array<vec2<i32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~u_input.c.x, ~(~16294u)), 8783u));
}

