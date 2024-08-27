struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<f32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8>;

var<private> global1: array<f32, 1> = array<f32, 1>(-375f);

var<private> global2: array<Struct_3, 7>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec4<u32> {
    global2 = array<Struct_3, 7>();
    let var_0 = 6450i;
    let var_1 = u_input.b.x;
    let var_2 = Struct_2(max(~vec4<u32>(abs(u_input.b.x), 10138u, u_input.b.x, _wgslsmith_clamp_u32(var_1, 4294967295u, var_1)), _wgslsmith_div_vec4_u32(~vec4<u32>(0u, var_1, var_1, u_input.b.x) << (firstLeadingBit(vec4<u32>(1u, 48374u, u_input.b.x, var_1)) % vec4<u32>(32u)), vec4<u32>(u_input.b.x, var_1, _wgslsmith_div_u32(var_1, var_1), min(34724u, 0u)))));
    var var_3 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(abs(var_2.a.x), 1u)] * _wgslsmith_f_op_f32(-287f * -1000f));
    return _wgslsmith_add_vec4_u32(~reverseBits(~vec4<u32>(u_input.b.x, var_2.a.x, var_2.a.x, u_input.b.x)), vec4<u32>(abs(var_2.a.x), u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.b.x, var_2.a.x | var_2.a.x, 0u), _wgslsmith_add_u32(16785u, 1u) & var_1), u_input.b.x));
}

fn func_2() -> Struct_2 {
    let var_0 = ~max(vec3<i32>(~u_input.c.x, _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(u_input.a, 2147483647i)) | 2147483647i, -43037i), vec3<i32>(-27890i, 2147483647i, min(11687i, u_input.c.x)));
    global1 = array<f32, 1>();
    var var_1 = Struct_2(~(~func_3(Struct_1(30466i, var_0), true)));
    var var_2 = u_input.b.xx;
    global0 = array<Struct_3, 8>();
    return Struct_2(vec4<u32>(var_2.x, ~u_input.b.x & _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b.x, var_1.a.x), _wgslsmith_clamp_u32(var_2.x, 1u, 0u)), firstTrailingBit(4294967295u), ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, var_2.x, var_2.x), var_1.a), ~10690u)));
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> vec4<u32> {
    global2 = array<Struct_3, 7>();
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-758f, -1209f, global1[_wgslsmith_index_u32(~u_input.b.x | (1u << (var_0.a.x % 32u)), 1u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 1u)], global1[_wgslsmith_index_u32(u_input.b.x, 1u)], global1[_wgslsmith_index_u32(1456u, 1u)])), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, 2821f, -1297f))), select(vec3<bool>(arg_1, true, false), vec3<bool>(false, arg_1, arg_1), vec3<bool>(false, true, arg_1)))))))));
    var var_2 = Struct_3(arg_0.b, Struct_2(arg_0.a.a));
    let var_3 = -244f;
    return var_2.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.c.x, u_input.a) | -1680i, 10865i), vec3<i32>(_wgslsmith_mod_i32(20432i, u_input.c.x) << (64440u % 32u), u_input.c.x >> (~(u_input.b.x ^ u_input.b.x) % 32u), abs(firstLeadingBit(-2147483647i))));
    global2 = array<Struct_3, 7>();
    let var_1 = true & (_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(35923u >> (u_input.b.x % 32u), 1u)])), -952f)) != global1[_wgslsmith_index_u32(~22765u, 1u)]);
    let var_2 = var_0;
    var var_3 = u_input.b.x;
    let var_4 = Struct_2(~(vec4<u32>(_wgslsmith_add_u32(16109u, 7378u), ~u_input.b.x, 4294967295u, 1u) >> (min(func_1(Struct_3(Struct_2(vec4<u32>(1u, 0u, 1u, 48409u)), Struct_2(vec4<u32>(7230u, 4294967295u, 26236u, 0u))), var_1), vec4<u32>(1u, 0u, 1u, 1u)) % vec4<u32>(32u))));
    var var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_2.a, var_2.b.x), max(1i, -_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(var_5.b.yy, vec2<i32>(11816i, var_5.b.x)), -u_input.c.x)), vec2<f32>(1678f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1568u, var_4.a.x), var_4.a.zy), 1u)] * _wgslsmith_div_f32(-183f, 1000f)))), ~_wgslsmith_sub_vec4_u32(reverseBits(_wgslsmith_mult_vec4_u32(var_4.a, vec4<u32>(1u, var_4.a.x, u_input.b.x, 4294967295u))), ~(~vec4<u32>(3783u, var_4.a.x, 20539u, 82520u))), vec4<u32>(~var_4.a.x, max(_wgslsmith_div_u32(var_4.a.x, var_4.a.x), u_input.b.x), 29487u, ~1u));
}

