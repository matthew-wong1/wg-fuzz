struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -340f;

var<private> global1: array<f32, 5> = array<f32, 5>(1371f, -1581f, 114f, 799f, 389f);

var<private> global2: array<Struct_1, 32>;

var<private> global3: array<vec4<u32>, 11>;

var<private> global4: vec4<bool> = vec4<bool>(false, true, false, false);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> i32 {
    return 2147483647i;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global4 = vec4<bool>(false, !(!arg_0.a), !global4.x, arg_0.a);
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1395f)))))), -648f);
    var var_0 = select(vec3<bool>(all(global4.ywz), arg_0.a, global4.x), !vec3<bool>(global4.x, true, arg_0.a), -_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -13794i, 12150i), vec3<i32>(41082i, -2147483647i, -1i)), 1i) < ~(~1i));
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(-_wgslsmith_mod_i32(2147483647i, select(0i, -43166i, arg_1.a)), (_wgslsmith_dot_vec3_i32(vec3<i32>(-42142i, -1i, 43148i), vec3<i32>(31138i, 16498i, 62313i)) ^ func_3()) ^ (_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 2147483647i), vec2<i32>(2147483647i, 17717i)) | min(19722i, 1i)), -14037i, 1i), _wgslsmith_clamp_vec4_i32(~reverseBits(max(vec4<i32>(-2147483647i, -65468i, 1i, -2147483647i), vec4<i32>(0i, -2147483647i, 0i, 34939i))), vec4<i32>(0i, -30176i, select(_wgslsmith_dot_vec4_i32(vec4<i32>(-28985i, 0i, 0i, -35411i), vec4<i32>(0i, 2147483647i, 20032i, 0i)), -12651i, true), -38860i), ~firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -2147483647i, 25174i, 651i), vec4<i32>(2147483647i, -592i, 1i, -27829i)))));
    global4 = select(select(vec4<bool>(!(false && arg_1.a), true, !any(global4.xwx), any(!vec4<bool>(arg_1.a, arg_0.a, global4.x, true))), select(vec4<bool>(any(var_0.yx), arg_0.a, arg_0.b.x <= 1000f, !global4.x), vec4<bool>(!arg_0.a, true, false, arg_1.a), arg_1.a), !select(vec4<bool>(global4.x, global4.x, global4.x, true), vec4<bool>(global4.x, arg_0.a, var_0.x, false), !vec4<bool>(true, global4.x, var_0.x, true))), select(!vec4<bool>(true, arg_0.b.x <= -1957f, true, var_0.x), vec4<bool>(true, all(vec4<bool>(global4.x, var_0.x, var_0.x, global4.x)) && any(vec4<bool>(true, var_0.x, arg_1.a, arg_1.a)), _wgslsmith_f_op_f32(exp2(arg_1.b.x)) == -1218f, false), !all(!var_0.yx)), false);
    return Struct_1(arg_1.a, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.c.x, 5u)], -584f), -550f, _wgslsmith_f_op_f32(-arg_0.b.x), arg_1.b.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_1.b, arg_1.b)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 5u)], global1[_wgslsmith_index_u32(30514u, 5u)], arg_0.b.x, arg_1.b.x)))))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32) -> vec2<u32> {
    global2 = array<Struct_1, 32>();
    let var_0 = func_2(arg_1, Struct_1(true, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(-526f, global1[_wgslsmith_index_u32(u_input.b.x, 5u)])), 1f, 670f, -1000f) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(arg_1.b * arg_1.b))))));
    global4 = vec4<bool>((1237f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.b.x)) * -2350f)) | (max(~u_input.a, ~u_input.b.x) == ~_wgslsmith_mod_u32(35925u, 35157u)), var_0.a && false, any(select(select(vec4<bool>(true, false, global4.x, var_0.a), select(vec4<bool>(arg_1.a, true, var_0.a, var_0.a), vec4<bool>(var_0.a, arg_1.a, global4.x, arg_1.a), vec4<bool>(false, false, global4.x, arg_1.a)), var_0.a), vec4<bool>(global1[_wgslsmith_index_u32(28677u, 5u)] != -531f, true, true, var_0.a), !vec4<bool>(false, true, global4.x, arg_1.a))), true);
    global1 = array<f32, 5>();
    global1 = array<f32, 5>();
    return u_input.c.zx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(0u, _wgslsmith_mult_u32(u_input.c.x, u_input.b.x) ^ u_input.b.x), countOneBits(func_1(vec4<i32>(2147483647i, -3352i, 1i, -1i), Struct_1(global4.x, vec4<f32>(-405f, global1[_wgslsmith_index_u32(u_input.c.x, 5u)], 1611f, global1[_wgslsmith_index_u32(u_input.a, 5u)])), -39720i)) ^ ~vec2<u32>(u_input.b.x, 4294967295u)) | u_input.b.x;
    let var_1 = global2[_wgslsmith_index_u32(~(_wgslsmith_div_u32(reverseBits(u_input.b.x) | u_input.b.x, var_0) ^ ~22384u), 32u)];
    global1 = array<f32, 5>();
    global0 = global1[_wgslsmith_index_u32(~0u, 5u)];
    var var_2 = vec3<i32>(-20402i, 39794i, -8788i & (_wgslsmith_dot_vec3_i32(vec3<i32>(9178i, 1i, -2147483647i), abs(vec3<i32>(-2147483647i, -2147483647i, 2147483647i))) & _wgslsmith_mult_i32(countOneBits(36531i), 1i)));
    let var_3 = Struct_2(Struct_1(all(vec3<bool>(all(vec4<bool>(var_1.a, false, var_1.a, false)), var_1.a, all(vec3<bool>(var_1.a, true, var_1.a)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-418f, 1416f)), -1087f, _wgslsmith_f_op_f32(var_1.b.x * _wgslsmith_f_op_f32(-526f * 528f)), _wgslsmith_f_op_f32(abs(-1613f)))), false, Struct_1(global4.x, var_1.b));
    global1 = array<f32, 5>();
    let var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(~0u, u_input.c.x, firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.b.zy, vec2<u32>(var_0, u_input.c.x))), max(~45933u, ~u_input.c.x)), max(u_input.b, ~global3[_wgslsmith_index_u32(u_input.a, 11u)])), select(vec4<u32>(_wgslsmith_mult_u32(~78765u, var_0), 0u, var_0, _wgslsmith_mult_u32(u_input.a, 48030u) ^ (var_0 ^ 4294967295u)), vec4<u32>(1181u, var_0 | 1u, ~(var_0 ^ 1u), _wgslsmith_add_u32(u_input.c.x, ~var_0)), var_3.c.a), reverseBits(min(_wgslsmith_dot_vec2_i32(~var_2.xx, var_2.yz), i32(-1i) * -2147483647i)), _wgslsmith_sub_vec3_u32(abs(u_input.c), firstLeadingBit(vec3<u32>(abs(1u), firstLeadingBit(var_0), ~var_0))));
}

