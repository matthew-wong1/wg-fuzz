struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: array<bool, 2> = array<bool, 2>(true, false);

var<private> global2: vec4<u32>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec2<f32>) -> vec4<i32> {
    var var_0 = _wgslsmith_div_u32(arg_1.a, 1u);
    var var_1 = abs(vec2<i32>(u_input.c.x, 16214i));
    let var_2 = vec2<bool>(!(!global1[_wgslsmith_index_u32(0u, 2u)]), true == any(vec2<bool>(!global1[_wgslsmith_index_u32(arg_1.a, 2u)], true)));
    var var_3 = !vec2<bool>(arg_1.b <= (u_input.c.x | -2147483647i), any(!var_2));
    let var_4 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-583f, arg_2.x, -2899f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-948f, arg_2.x, arg_2.x))), vec3<f32>(-859f, arg_2.x, 1087f)))))));
    return -u_input.c;
}

fn func_2(arg_0: bool) -> Struct_2 {
    global1 = array<bool, 2>();
    var var_0 = Struct_1(_wgslsmith_add_vec4_i32(-vec4<i32>(_wgslsmith_add_i32(1i, -2147483647i), 0i, u_input.c.x, u_input.c.x), _wgslsmith_mult_vec4_i32(func_3(min(u_input.b.x, global2.x), Struct_2(58018u, -15321i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(432f, 172f))), vec4<i32>(abs(u_input.c.x), -36518i, u_input.c.x, max(u_input.c.x, 23401i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-325f))), all(vec3<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(arg_0, true, arg_0), global1[_wgslsmith_index_u32(u_input.b.x, 2u)])), global1[_wgslsmith_index_u32(global2.x, 2u)], !global1[_wgslsmith_index_u32(~0u, 2u)])), vec2<bool>(u_input.c.x > reverseBits(1i), global1[_wgslsmith_index_u32(firstTrailingBit(global2.x), 2u)]));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(907f)), 447f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(919f)) - _wgslsmith_f_op_f32(f32(-1f) * -280f)))))));
    var var_2 = any(vec3<bool>(var_0.c, true, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, reverseBits(_wgslsmith_clamp_u32(1u, global2.x, global2.x))), 2u)]));
    var_2 = true;
    return Struct_2(~global2.x, (_wgslsmith_sub_i32(-2147483647i, -u_input.c.x) | (~(-1i) | ~var_0.a.x)) | (-firstTrailingBit(48995i) | -1i));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    let var_0 = 198f;
    var var_1 = Struct_2(~abs(0u), ~arg_1.b);
    var var_2 = arg_0;
    let var_3 = arg_0;
    let var_4 = any(vec3<bool>(any(select(var_3.d, select(arg_0.d, vec2<bool>(arg_0.c, true), var_2.d), all(arg_0.d))), var_2.d.x, any(vec2<bool>(true, !var_3.c))));
    return _wgslsmith_f_op_f32(-var_0);
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-490f * _wgslsmith_f_op_f32(trunc(979f))) - _wgslsmith_f_op_f32(func_4(Struct_1(vec4<i32>(arg_2, arg_2, arg_2, u_input.c.x), -267f, false, vec2<bool>(arg_1, false)), func_2(arg_1)))), 579f));
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    let var_1 = Struct_1(select(abs(vec4<i32>(-u_input.c.x, ~(-2147483647i), 2147483647i, u_input.c.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.b ^ u_input.c.x, ~1i, _wgslsmith_sub_i32(arg_0.b, -7054i), ~arg_0.b), abs(vec4<i32>(2147483647i, 54016i, u_input.c.x, 2147483647i)), u_input.c), vec4<bool>(true || global1[_wgslsmith_index_u32(max(30109u, arg_0.a), 2u)], 20373i > min(u_input.c.x, 51717i), !(!global1[_wgslsmith_index_u32(0u, 2u)]), true)), _wgslsmith_f_op_f32(f32(-1f) * -564f), arg_1, select(select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 2u)], arg_1), select(select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 2u)], true), vec2<bool>(global1[_wgslsmith_index_u32(45135u, 2u)], false), global1[_wgslsmith_index_u32(4294967295u, 2u)]), !vec2<bool>(global1[_wgslsmith_index_u32(arg_0.a, 2u)], global1[_wgslsmith_index_u32(global2.x, 2u)]), any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 2u)], false))), arg_1), select(vec2<bool>(arg_2 > u_input.c.x, true), vec2<bool>(false || arg_1, true), !vec2<bool>(false, arg_1)), vec2<bool>(false, global1[_wgslsmith_index_u32(global2.x, 2u)] | false)));
    global0 = array<Struct_1, 2>();
    return 34023u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    var var_1 = ~20433u | _wgslsmith_clamp_u32(global2.x, _wgslsmith_clamp_u32(~u_input.a.x, reverseBits(_wgslsmith_dot_vec2_u32(global2.ww, global2.ww)), 37482u), min(u_input.b.x, u_input.a.x & func_1(Struct_2(58150u, u_input.c.x), global1[_wgslsmith_index_u32(global2.x, 2u)], 0i)));
    let var_2 = vec3<i32>(i32(-1i) * -(~firstLeadingBit(u_input.c.x)), select(var_0, ~func_2(false).b, global1[_wgslsmith_index_u32(global2.x, 2u)]) ^ _wgslsmith_clamp_i32(u_input.c.x, min(firstTrailingBit(u_input.c.x), u_input.c.x & 87785i), abs(var_0)), _wgslsmith_add_i32(_wgslsmith_sub_i32(reverseBits(2147483647i), u_input.c.x) & ~_wgslsmith_div_i32(u_input.c.x, 15760i), ~(abs(var_0) >> (global2.x % 32u))));
    var var_3 = func_2(true);
    var_1 = var_3.a;
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(314f, 121f, 115f, 344f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(154f, 109f, 1521f, -1148f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(527f, 589f, 868f, -230f) + vec4<f32>(1262f, 1000f, 290f, 393f)), global1[_wgslsmith_index_u32(var_3.a ^ var_3.a, 2u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(1i, ~((vec3<u32>(global2.x, 4294967295u, 1u) ^ abs(u_input.b)) ^ select(vec3<u32>(var_3.a, 22373u, global2.x), vec3<u32>(u_input.b.x, 49288u, 4294967295u), global1[_wgslsmith_index_u32(0u, 2u)])));
}

