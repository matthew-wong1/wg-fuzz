struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-629f, -1864f, 409f, -528f);

var<private> global1: array<vec2<f32>, 10>;

var<private> global2: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false));

var<private> global3: Struct_3;

var<private> global4: array<f32, 6>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(reverseBits(u_input.c.x), 6u)]))), -757f)));
    let var_1 = global4[_wgslsmith_index_u32(~0u, 6u)];
    global1 = array<vec2<f32>, 10>();
    global2 = array<vec4<bool>, 9>();
    global4 = array<f32, 6>();
    return _wgslsmith_f_op_f32(-var_0);
}

fn func_3() -> u32 {
    var var_0 = select(~(~(~vec4<u32>(u_input.c.x, u_input.e, u_input.c.x, u_input.c.x))) & abs(vec4<u32>(~54442u, u_input.e, u_input.c.x, ~u_input.e)), ~_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(1u, global3.a, u_input.c.x, 1u), select(vec4<u32>(global3.a, 7165u, global3.b.b, u_input.c.x), vec4<u32>(u_input.c.x, 10879u, 4294967295u, u_input.e), false)), ~firstTrailingBit(vec4<u32>(u_input.c.x, global3.b.b, 17467u, u_input.e))), true);
    let var_1 = vec3<f32>(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.c.x, u_input.e) ^ global3.b.b, 6u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(56390u, 6u)] + 1000f) - _wgslsmith_div_f32(1000f, 521f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 6u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.d)))));
    var var_2 = true;
    let var_3 = Struct_4(global3.c);
    var_2 = !(263f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1674f + var_1.x) - global4[_wgslsmith_index_u32(4294967295u, 6u)]));
    return u_input.c.x;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: Struct_2) -> u32 {
    var var_0 = ~abs(min(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e, arg_0.b.b, arg_2.b, arg_2.b), vec4<u32>(1u, u_input.c.x, 43512u, u_input.e) & vec4<u32>(9632u, global3.a, 49312u, arg_2.b)), ~vec4<u32>(4294967295u, arg_2.b, arg_0.b.b, u_input.e)));
    let var_1 = -1i;
    global3 = arg_0;
    global3 = Struct_3(5763u, arg_0.b, Struct_1(firstLeadingBit(_wgslsmith_mult_vec4_i32(~global3.c.a, vec4<i32>(-53731i, arg_0.c.a.x, u_input.d, u_input.d)))), -1615f);
    let var_2 = arg_0.b;
    return u_input.c.x;
}

fn func_2() -> bool {
    let var_0 = vec3<u32>(_wgslsmith_add_u32(~u_input.e << (4294967295u % 32u), _wgslsmith_add_u32(max(global3.a, u_input.c.x), _wgslsmith_sub_u32(12825u, 0u)) << (_wgslsmith_dot_vec3_u32(max(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(4294967295u, u_input.c.x, global3.b.b)), vec3<u32>(u_input.e, 18276u, global3.b.b)) % 32u)), u_input.c.x << (global3.a % 32u), func_4(Struct_3(func_3(), Struct_2(global3.b.a, 0u), Struct_1(global3.c.a), -476f), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), Struct_2(global3.b.a, u_input.e)) & (((global3.b.b >> (4294967295u % 32u)) >> ((0u & u_input.c.x) % 32u)) >> (63330u % 32u)));
    let var_1 = Struct_3(abs(~1u), Struct_2(global3.b.a, 34547u | _wgslsmith_mod_u32(65426u << (0u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(9150u, u_input.c.x, 0u), vec3<u32>(global3.b.b, 99672u, 0u)))), Struct_1(-(vec4<i32>(global3.c.a.x, global3.b.a.a.x, global3.c.a.x, 30571i) & vec4<i32>(9574i, global3.b.a.a.x, global3.c.a.x, global3.b.a.a.x))), _wgslsmith_f_op_f32(global3.d + _wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.x, u_input.c.x), var_0.yz << (vec2<u32>(41240u, 0u) % vec2<u32>(32u))), 6u)]))));
    let var_2 = var_1.b;
    return any(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), vec3<bool>(true, all(vec4<bool>(false, true, true, true)), false), vec3<bool>(var_2.a.a.x < var_1.b.a.a.x, var_1.d >= global4[_wgslsmith_index_u32(var_2.b, 6u)], all(vec3<bool>(false, false, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 10>();
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global3.b, global3.c, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-779f, global0.x, global3.d, 515f), vec4<f32>(global3.d, -347f, global4[_wgslsmith_index_u32(45623u, 6u)], global0.x)))))) + global4[_wgslsmith_index_u32(global3.a, 6u)])));
    var var_1 = select(global3.c.a.xyz, global3.b.a.a.xwx, func_2());
    var_1 = vec3<i32>(-36609i, -9820i, firstLeadingBit(0i));
    var var_2 = Struct_3((1u & select(~global3.b.b, firstLeadingBit(global3.b.b), select(true, false, false))) << (u_input.c.x % 32u), Struct_2(global3.c, 89531u & global3.a), Struct_1(select(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.x, var_1.x, -1i, var_1.x), vec4<i32>(global3.b.a.a.x, -60908i, 0i, -42609i)), u_input.a, vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(f32(-1f) * -599f));
    var var_3 = Struct_1(vec4<i32>(-global3.c.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(var_2.b.a.a.x, var_2.b.a.a.x, -67081i), 50288i), firstTrailingBit(~u_input.a.xy)), ~var_2.b.a.a.x, 2147483647i));
    var var_4 = true;
    var var_5 = _wgslsmith_sub_vec2_u32(~(~(~u_input.c)), abs(u_input.c) & vec2<u32>(~0u, 4294967295u));
    var var_6 = Struct_3(80839u, global3.b, Struct_1(~(-var_3.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-340f + _wgslsmith_f_op_f32(max(var_2.d, 828f)))) - 1009f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.d, 1046f, global3.d, global4[_wgslsmith_index_u32(var_2.a, 6u)]))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1687f, var_6.d, global3.d, 1187f)))))), var_2.d, _wgslsmith_f_op_f32(global3.d * global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1659f)), -779f)), _wgslsmith_f_op_f32(func_1(global3.b, Struct_1(vec4<i32>(-1i, var_2.b.a.a.x, var_2.c.a.x, 0i)), vec4<f32>(var_6.d, -921f, 1460f, 524f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d - var_0) + _wgslsmith_f_op_f32(select(global3.d, var_2.d, true))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(sign(-121f))))));
}

