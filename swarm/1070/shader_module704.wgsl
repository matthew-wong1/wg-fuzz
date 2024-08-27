struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: i32,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10>;

var<private> global1: array<Struct_2, 23>;

var<private> global2: Struct_1 = Struct_1(vec3<f32>(-406f, -299f, 2555f), vec2<u32>(0u, 71208u), i32(-2147483648), true);

var<private> global3: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> Struct_2 {
    global1 = array<Struct_2, 23>();
    global2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -934f))), global2.a.x, global2.a.x), select((vec2<u32>(u_input.a, global2.b.x) ^ global2.b) << (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.b.x, 1u, u_input.a, 4294967295u), vec4<u32>(global2.b.x, 1u, u_input.a, 60956u)), 0u) % vec2<u32>(32u)), ~global2.b, true), 1i, !all(!(!vec4<bool>(false, global2.d, true, true))));
    global1 = array<Struct_2, 23>();
    var var_0 = _wgslsmith_f_op_f32(step(global2.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -564f) + -391f) * global2.a.x)))));
    global1 = array<Struct_2, 23>();
    return global0[_wgslsmith_index_u32(4294967295u, 10u)];
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: Struct_3) -> i32 {
    let var_0 = _wgslsmith_div_vec2_i32(min(vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, u_input.b), vec3<i32>(global2.c, global2.c, arg_2.c))), ~(-17754i)), select(abs(vec2<i32>(u_input.b, global2.c) >> (arg_1.zz % vec2<u32>(32u))), vec2<i32>(_wgslsmith_mult_i32(-5708i, global2.c), abs(arg_2.c)), vec2<bool>(global2.d, !global2.d))), ~_wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.b) | vec2<i32>(86969i, 1i), vec2<i32>(arg_2.c, u_input.b)) & -(vec2<i32>(-58666i, arg_2.b) ^ ~vec2<i32>(35681i, global2.c)));
    global1 = array<Struct_2, 23>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1159f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(129f - arg_0.x), global2.a.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x))))));
    global0 = array<Struct_2, 10>();
    return -2147483647i;
}

fn func_1(arg_0: i32, arg_1: Struct_4, arg_2: vec3<u32>) -> Struct_4 {
    global0 = array<Struct_2, 10>();
    global3 = ~_wgslsmith_clamp_i32(-(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.c, -27956i, -38052i), vec3<i32>(u_input.b, 1i, -34939i)) | abs(global2.c)), ~arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(~(-31980i), -2147483647i, arg_1.b.c ^ arg_0, 2147483647i), max(max(vec4<i32>(0i, arg_1.a, u_input.b, global2.c), vec4<i32>(arg_1.a, -5297i, u_input.b, 16667i)), max(vec4<i32>(u_input.b, arg_1.a, 2147483647i, u_input.b), vec4<i32>(-20331i, arg_0, arg_1.b.c, arg_0)))));
    global3 = -func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.a.x, -2088f, arg_1.b.a.x, global2.a.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.a.x, -1485f, 772f, -814f))) + vec4<f32>(arg_1.b.a.x, global2.a.x, -331f, _wgslsmith_f_op_f32(min(global2.a.x, 1105f)))), _wgslsmith_mult_vec3_u32(arg_2, ~(arg_2 >> (vec3<u32>(8971u, 22930u, arg_1.b.b.x) % vec3<u32>(32u)))), Struct_3(Struct_2(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.x, arg_1.b.b.x), arg_2.yy)), u_input.b, u_input.b, arg_1.b.a.x, func_2()));
    var var_0 = !vec2<bool>(global2.d, global2.d);
    var var_1 = firstTrailingBit(~_wgslsmith_div_i32(func_3(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.b.a.x, -1432f, global2.a.x, arg_1.b.a.x))), _wgslsmith_mod_vec3_u32(arg_2, arg_2), Struct_3(Struct_2(vec2<u32>(27663u, u_input.a)), 11139i, -2147483647i, -186f, global0[_wgslsmith_index_u32(arg_2.x, 10u)])), ~0i));
    return arg_1;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: bool) -> u32 {
    global3 = -_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(-21810i, global2.c)), u_input.b, -1i << (u_input.a % 32u), arg_2.a)), vec4<i32>(~(-26158i), _wgslsmith_sub_i32(_wgslsmith_add_i32(2147483647i, 0i), arg_2.a), ~u_input.b, arg_2.b.c));
    global3 = (_wgslsmith_mod_i32(~(~arg_2.b.c), global2.c) >> (firstLeadingBit(abs(arg_2.b.b.x)) % 32u)) ^ arg_2.b.c;
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)) - arg_2.b.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * arg_2.b.a.x) * 449f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.x * arg_2.b.a.x)))), _wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(1u, global2.b.x)), arg_2.b.b & global2.b), global2.c << (_wgslsmith_mod_u32(firstTrailingBit(29106u ^ global2.b.x), _wgslsmith_mult_u32(reverseBits(arg_2.b.b.x), reverseBits(arg_2.b.b.x))) % 32u), !(true || all(select(arg_0.wwy, arg_0.yzx, arg_2.b.d))));
    global3 = 1220i;
    var var_1 = func_2();
    return var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 23>();
    let var_0 = i32(-1i) * -u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer((~61270u >> (func_4(!vec4<bool>(false, global2.d, true, false), _wgslsmith_f_op_vec3_f32(-global2.a), func_1(global2.c, Struct_4(-601i, Struct_1(global2.a, vec2<u32>(1u, global2.b.x), u_input.b, false)), vec3<u32>(0u, 0u, 83993u)), select(global2.d, true, global2.d)) % 32u)) | 1u, u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(688f, 426f, global2.a.x, global2.a.x) - vec4<f32>(global2.a.x, 1770f, 520f, 374f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1732f, global2.a.x, 1733f, global2.a.x) + vec4<f32>(270f, global2.a.x, global2.a.x, -2080f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-887f, global2.a.x, global2.a.x, -448f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(847f - 1220f))), global2.a.x)));
}

