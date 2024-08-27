struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
    d: f32,
    e: i32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<f32> = vec2<f32>(-161f, -1059f);

var<private> global2: array<vec2<bool>, 14> = array<vec2<bool>, 14>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: vec2<u32>) -> u32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.d))));
    let var_0 = -countOneBits(vec3<i32>(_wgslsmith_clamp_i32(0i << (u_input.a.x % 32u), -1i, 34381i), _wgslsmith_dot_vec3_i32(arg_0.b.zzy, arg_0.b.wyw | vec3<i32>(11011i, 0i, arg_0.b.x)), abs(19922i)));
    var var_1 = ~_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(arg_1.x, 1u, 64417u)), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(select(vec3<u32>(1u, 0u, 1u), vec3<u32>(16873u, 10235u, u_input.a.x), vec3<bool>(arg_0.c.b, arg_0.c.b, true)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, arg_0.c.a, 1u), vec3<u32>(arg_1.x, 21412u, arg_0.a))), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.x, u_input.a.x, 26181u), vec3<u32>(arg_0.c.a, 30891u, u_input.a.x)))));
    let var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(-arg_0.b, -vec4<i32>(arg_0.b.x, -12535i, 36745i, 0i) | vec4<i32>(-2147483647i, -2147483647i, _wgslsmith_dot_vec2_i32(var_0.yx, vec2<i32>(-2147483647i, u_input.b)), 19963i)), _wgslsmith_mult_i32(_wgslsmith_sub_i32(abs(reverseBits(-1i)), var_0.x), max(1i << (countOneBits(u_input.a.x) % 32u), ~u_input.b)), (-2147483647i ^ (-arg_0.e << (arg_1.x % 32u))) << (abs(_wgslsmith_div_u32(arg_1.x, arg_1.x)) % 32u), 62972i);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1541f), _wgslsmith_f_op_f32(select(arg_0.d, arg_0.d, arg_0.c.b)))))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global1.x)))), -435f, _wgslsmith_f_op_f32(abs(-755f)));
    return _wgslsmith_dot_vec2_u32(~arg_1, u_input.a);
}

fn func_2(arg_0: Struct_3) -> u32 {
    var var_0 = !select(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, arg_0.a.b), arg_0.a.b), select(vec4<bool>(arg_0.a.b, false, arg_0.a.b, arg_0.a.b), vec4<bool>(arg_0.a.b, arg_0.a.b, arg_0.a.b, arg_0.a.b), vec4<bool>(arg_0.a.b, true, true, arg_0.a.b)), true), vec4<bool>(false, false, all(global2[_wgslsmith_index_u32(29756u, 14u)]), true), false), !(!select(vec4<bool>(false, false, arg_0.a.b, false), vec4<bool>(true, true, true, false), vec4<bool>(arg_0.a.b, true, false, false))), !(global1.x == _wgslsmith_f_op_f32(step(502f, global1.x))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1484f, global1.x, global1.x) + vec3<f32>(arg_0.b, arg_0.b, 1199f)) + _wgslsmith_div_vec3_f32(vec3<f32>(475f, arg_0.b, 797f), vec3<f32>(arg_0.b, arg_0.b, -163f))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-985f, global1.x, arg_0.b) * vec3<f32>(-1133f, 631f, arg_0.b))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 1707f, arg_0.b)))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -301f)), _wgslsmith_f_op_f32(arg_0.b + -277f), _wgslsmith_f_op_f32(-arg_0.b)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.b - -588f), arg_0.b, 1000f))));
    var var_2 = reverseBits(~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 1u) ^ u_input.a, select(vec2<u32>(u_input.a.x, arg_0.a.a), u_input.a, false)), select(vec2<u32>(u_input.a.x, arg_0.a.a), vec2<u32>(94410u, arg_0.a.a) | vec2<u32>(70066u, arg_0.a.a), select(vec2<bool>(var_0.x, false), global2[_wgslsmith_index_u32(32828u, 14u)], global2[_wgslsmith_index_u32(69550u, 14u)]))));
    global2 = array<vec2<bool>, 14>();
    let var_3 = arg_0.a;
    return firstLeadingBit(u_input.a.x ^ _wgslsmith_dot_vec2_u32((vec2<u32>(var_3.a, arg_0.a.a) & vec2<u32>(13126u, 1u)) << (u_input.a % vec2<u32>(32u)), vec2<u32>(~0u, func_3(Struct_4(1u, vec4<i32>(-15186i, -64365i, 7639i, 22595i), Struct_1(arg_0.a.a, var_0.x), arg_0.b, u_input.b), u_input.a))));
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> Struct_4 {
    var var_0 = reverseBits(~vec3<u32>(arg_0, ~4940u, ~36647u));
    var var_1 = 1000f;
    var var_2 = countOneBits(~_wgslsmith_mult_u32(var_0.x & 4294967295u, 42235u)) | func_2(Struct_3(Struct_1(~var_0.x, arg_1.a.b), _wgslsmith_f_op_f32(-2077f + arg_1.b)));
    var var_3 = ~0u;
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-634f, arg_1.b, global1.x))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.x, arg_1.b, global1.x), vec3<f32>(arg_1.b, arg_1.b, arg_1.b)))), vec3<f32>(_wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(min(-903f, 618f)), arg_1.b))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, _wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(133f + global1.x)) - vec3<f32>(296f, global1.x, _wgslsmith_f_op_f32(-global1.x))));
    return Struct_4(u_input.a.x, _wgslsmith_mult_vec4_i32(~(-firstLeadingBit(vec4<i32>(2147483647i, u_input.b, 2147483647i, u_input.b))), max(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 2147483647i, 2147483647i, -63208i), vec4<i32>(u_input.b, -21991i, 2147483647i, 0i)), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 1i, u_input.b, -2147483647i), countOneBits(vec4<i32>(0i, u_input.b, 43218i, u_input.b))))), arg_1.a, -752f, -countOneBits((u_input.b & -23883i) ^ firstTrailingBit(u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.a.x, Struct_3(Struct_1(~u_input.a.x, true), _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(exp2(global1.x)))));
    let var_1 = Struct_3(var_0.c, -3535f);
    var var_2 = _wgslsmith_add_vec3_i32(var_0.b.wzy, max(_wgslsmith_add_vec3_i32(max(vec3<i32>(-1i, -74997i, u_input.b), var_0.b.zzx), var_0.b.wyw) >> (vec3<u32>(~1u, 30188u, var_0.c.a) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_clamp_i32(u_input.b, _wgslsmith_mult_i32(19615i, 1i), var_0.e), _wgslsmith_sub_i32(u_input.b << (var_1.a.a % 32u), _wgslsmith_dot_vec2_i32(var_0.b.zw, vec2<i32>(2147483647i, -1i))), -2147483647i)));
    var_2 = ~var_0.b.xzx;
    var var_3 = Struct_5(var_0);
    var_3 = Struct_5(Struct_4(~var_3.a.a, var_3.a.b, func_1(1u, Struct_3(Struct_1(74942u, false), var_0.d)).c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1484f)) - _wgslsmith_f_op_f32(abs(global1.x))), -1336f), ~52678i));
    var var_4 = select(select(~abs(var_3.a.b.wz), vec2<i32>(-1i) * -abs(vec2<i32>(var_0.b.x, -27394i)), var_1.a.b), -(var_3.a.b.zy ^ var_3.a.b.yw), vec2<bool>(select(~u_input.b, min(-18714i, var_0.b.x), true) >= -var_2.x, false));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-218f, 281f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.d, _wgslsmith_f_op_f32(max(global1.x, var_3.a.d))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), u_input.a) >> (4294967295u % 32u), 4294967295u, var_1.a.a, ~37957u));
}

