struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

var<private> global1: array<i32, 24> = array<i32, 24>(87186i, -25381i, 2147483647i, 18349i, -23638i, 2147483647i, -4965i, -1i, 3086i, 2147483647i, 8728i, -54186i, 40193i, 0i, i32(-2147483648), i32(-2147483648), -50272i, -21779i, 0i, 1i, 31706i, -5266i, 0i, -1i);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool) -> i32 {
    global1 = array<i32, 24>();
    global0 = array<u32, 26>();
    let var_0 = _wgslsmith_clamp_u32(37750u, ~arg_0.x, ~arg_0.x);
    let var_1 = Struct_3(vec2<u32>(4294967295u, firstTrailingBit(arg_0.x)));
    let var_2 = Struct_4(2260f, var_1);
    return _wgslsmith_sub_i32(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.a.x, ~60814u, abs(50992u), ~var_1.a.x), vec4<u32>(~4294967295u, ~1u, 1u, reverseBits(1u))), 24u)], u_input.a.x);
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: Struct_4) -> Struct_3 {
    global0 = array<u32, 26>();
    global0 = array<u32, 26>();
    let var_0 = ~func_3(arg_2.b.a << ((~vec2<u32>(arg_2.b.a.x, arg_2.b.a.x) << ((arg_2.b.a & vec2<u32>(28165u, u_input.b)) % vec2<u32>(32u))) % vec2<u32>(32u)), arg_0.a);
    var var_1 = 45780u;
    global0 = array<u32, 26>();
    return Struct_3(firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.b.a.x, reverseBits(1u)), ~vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], arg_2.b.a.x))));
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    let var_0 = Struct_2(!(arg_0.x >= _wgslsmith_div_u32(global0[_wgslsmith_index_u32(0u, 26u)], ~u_input.e)));
    global0 = array<u32, 26>();
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) + 1008f)))), func_2(Struct_2(var_0.a), global1[_wgslsmith_index_u32(4294967295u, 24u)], Struct_4(_wgslsmith_f_op_f32(floor(216f)), Struct_3(firstTrailingBit(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)]))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1476f - _wgslsmith_f_op_f32(floor(var_1.a))), var_1.a, 1f) + vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.a), 820f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a, 1641f)) * var_1.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_1.a)), 582f)))));
    var var_3 = _wgslsmith_f_op_f32(min(-502f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-987f)))));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), !(174f < _wgslsmith_f_op_f32(step(-786f, -191f)))), vec2<bool>(true, true), select(vec2<bool>(1i == _wgslsmith_div_i32(global1[_wgslsmith_index_u32(u_input.e, 24u)], global1[_wgslsmith_index_u32(0u, 24u)]), all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true))), !vec2<bool>(true, global1[_wgslsmith_index_u32(3688u, 24u)] >= -74724i), true));
    global0 = array<u32, 26>();
    let var_1 = vec4<i32>(_wgslsmith_add_i32(~(-global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(83479u, u_input.e), 24u)]), _wgslsmith_mult_i32(_wgslsmith_mod_i32(-u_input.a.x, -global1[_wgslsmith_index_u32(1379u, 24u)]), abs(global1[_wgslsmith_index_u32(u_input.e, 24u)]))), _wgslsmith_add_i32(~2855i, _wgslsmith_add_i32(~u_input.a.x, -2147483647i)), 0i ^ u_input.a.x, min(func_1(vec4<u32>(~1647u, u_input.e | u_input.b, u_input.e, u_input.d)), (1i << (_wgslsmith_mod_u32(u_input.b, global0[_wgslsmith_index_u32(45376u, 26u)]) % 32u)) << (~(~4294967295u) % 32u)));
    global0 = array<u32, 26>();
    let var_2 = true;
    let var_3 = Struct_1(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-528f, _wgslsmith_div_f32(-1000f, -1267f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(893f)), -2618f))), vec3<bool>(false, !(-u_input.a.x < -global1[_wgslsmith_index_u32(1u, 24u)]), (!var_0.x & var_2) == var_2));
    var_0 = !vec2<bool>(any(!(!vec2<bool>(var_2, var_3.b.x))), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a.x, 12021i, 0i, -1i), abs(vec4<i32>(global1[_wgslsmith_index_u32(u_input.c, 24u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 26u)], 24u)], 11112i, -37251i))) == -39097i);
    let x = u_input.a;
    s_output = StorageBuffer(~global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(~0u, 26u)], 26u)], 24u)], 12801u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(562f, -453f, var_3.a, var_3.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a, 821f, -470f, var_3.a) + vec4<f32>(var_3.a, -1339f, -275f, 1360f)))))), firstTrailingBit(-vec2<i32>(1i, global1[_wgslsmith_index_u32(u_input.e, 24u)])));
}

