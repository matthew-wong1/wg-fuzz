struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, true, true)));

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 32>;

var<private> global3: Struct_1;

var<private> global4: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> u32 {
    global3 = arg_2;
    let var_0 = (_wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(global1.a, global1.a, 1016i, -13101i), vec4<i32>(u_input.b.x, global1.a, 0i, -53246i)), firstTrailingBit(~vec4<i32>(11117i, -1i, 4830i, 1i))) << (reverseBits(~select(21833u, 24738u, false)) % 32u)) | (~global1.a & -u_input.b.x);
    global1 = global2[_wgslsmith_index_u32(firstTrailingBit(57790u), 32u)];
    let var_1 = Struct_1(arg_2.a);
    var var_2 = vec4<i32>(-5647i & global1.a, ~(~1i), _wgslsmith_dot_vec3_i32(-vec3<i32>(0i, global1.a, u_input.b.x), vec3<i32>(_wgslsmith_mult_i32(var_0, var_0), arg_0.a, u_input.b.x)), 1i) << (vec4<u32>(arg_0.c, global1.c, global1.c, 53353u << (_wgslsmith_mod_u32(min(77925u, arg_0.c), 6610u << (global1.c % 32u)) % 32u)) % vec4<u32>(32u));
    return 4294967295u;
}

fn func_2() -> vec3<u32> {
    let var_0 = vec3<u32>(abs(_wgslsmith_sub_u32(~(~12051u), _wgslsmith_div_u32(u_input.a.x, func_3(global2[_wgslsmith_index_u32(global1.c, 32u)], global4.a.x, Struct_1(vec3<bool>(true, true, true)))))), select(u_input.a.x, 47310u, true), global1.c);
    var var_1 = global0[_wgslsmith_index_u32(24915u, 29u)];
    var_1 = Struct_1(vec3<bool>(any(global3.a), true, var_1.a.x));
    global0 = array<Struct_1, 29>();
    let var_2 = Struct_2(-_wgslsmith_mult_i32(0i, ~_wgslsmith_mod_i32(global1.a, u_input.b.x)), 339f, countOneBits(~global1.c));
    return abs(firstTrailingBit(_wgslsmith_mod_vec3_u32(min(_wgslsmith_div_vec3_u32(var_0, var_0), abs(vec3<u32>(var_0.x, 9923u, 14365u))), u_input.a ^ _wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, var_0.x, 4294967295u), var_0))));
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: vec3<u32>, arg_3: i32) -> vec3<f32> {
    let var_0 = u_input.b.x;
    global3 = Struct_1(select(select(vec3<bool>(any(global4.a), global4.a.x, false), select(select(global3.a, vec3<bool>(false, arg_0, arg_0), vec3<bool>(false, false, false)), !global4.a, !vec3<bool>(false, global3.a.x, true)), global4.a), global4.a, true));
    var var_1 = Struct_2(-72759i, 857f, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.c, global1.c, 1u, u_input.a.x), ~vec4<u32>(u_input.a.x, 0u, 1u, 26827u)) << (~select(arg_1.x, 20842u, arg_0) % 32u), ~(~u_input.a.x | ~1u)));
    var var_2 = _wgslsmith_f_op_f32(abs(325f));
    let var_3 = global2[_wgslsmith_index_u32(arg_2.x, 32u)];
    return vec3<f32>(_wgslsmith_div_f32(241f, _wgslsmith_f_op_f32(405f - _wgslsmith_f_op_f32(-375f - -685f))), var_1.b, -817f);
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> vec3<f32> {
    var var_0 = global4.a.x;
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.b, global1.b, -1066f), vec3<f32>(1640f, 152f, global1.b))) + vec3<f32>(global1.b, global1.b, global1.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global1.b, global1.b) + vec3<f32>(896f, global1.b, -1000f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(any(vec4<bool>(true, false, global3.a.x, global4.a.x)), countOneBits(arg_1), func_2(), global1.a)))));
    var var_2 = vec2<u32>(47377u, 4294967295u);
    var var_3 = Struct_2(i32(-1i) * -_wgslsmith_add_i32(reverseBits(u_input.b.x), global1.a | global1.a), global1.b, arg_1.x);
    let var_4 = min(u_input.b, u_input.b);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, global1.b, global1.b), vec3<f32>(-496f, 423f, -1717f), global3.a.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 29>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_clamp_u32(13955u >> (global1.c % 32u), ~global1.c, 1u), countOneBits(vec4<u32>(31521u, u_input.a.x, 51795u, 89419u)) << (select(vec4<u32>(3674u, global1.c, 9726u, u_input.a.x), vec4<u32>(4294967295u, 20860u, 1u, global1.c), global4.a.x) % vec4<u32>(32u)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, global1.b, global1.b)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-823f, 575f, global1.b), vec3<f32>(437f, 734f, 388f), vec3<bool>(global4.a.x, false, global4.a.x)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(~u_input.a.x, vec4<u32>(75812u, 28678u, 15777u, u_input.a.x)))));
    var var_1 = Struct_2(u_input.b.x, global1.b, global1.c);
    let var_2 = select(true, true, global4.a.x);
    let var_3 = global0[_wgslsmith_index_u32(~var_1.c, 29u)];
    var_1 = Struct_2(_wgslsmith_sub_i32(2147483647i, 52313i), global1.b, firstLeadingBit(firstTrailingBit(_wgslsmith_add_u32(global1.c, global1.c)) ^ 55797u));
    global3 = Struct_1(var_3.a);
    global1 = Struct_2(-2147483647i, var_0.x, firstLeadingBit(var_1.c));
    global2 = array<Struct_2, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(-62906i, _wgslsmith_add_i32(_wgslsmith_div_i32(global1.a, global1.a ^ (i32(-1i) * -32367i)), ~49774i), func_2().yz, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(378f * var_1.b)), -575f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-420f * var_0.x)))))));
}

