struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1;

var<private> global2: f32;

var<private> global3: array<f32, 17>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    global2 = global3[_wgslsmith_index_u32((1u << (u_input.c.x % 32u)) & _wgslsmith_dot_vec3_u32(min(abs(_wgslsmith_div_vec3_u32(u_input.c.wyx, vec3<u32>(6424u, global1.a, 14398u))), ~u_input.c.wzy), select(_wgslsmith_div_vec3_u32(u_input.c.yxz & u_input.c.yxx, u_input.c.wwz), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, global1.a), vec2<u32>(4294967295u, global1.c)), abs(global1.c), global1.a), all(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false))))), 17u)];
    global2 = _wgslsmith_f_op_f32(max(902f, global3[_wgslsmith_index_u32(8554u, 17u)]));
    var var_0 = Struct_2(vec3<u32>(~125154u, reverseBits(~(~0u)), ~reverseBits(global1.a)), -_wgslsmith_div_i32(global1.b, 1i), Struct_1(4294967295u, _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.b, global1.b), u_input.b), 1u), u_input.c.yxy, Struct_1(countOneBits(min(countOneBits(u_input.c.x), 4294967295u)), -select(10783i, 1i, all(vec2<bool>(false, true))), u_input.c.x));
    var_0 = Struct_2(~vec3<u32>(~0u, ~(~102647u), ~(~u_input.c.x)), global1.b, var_0.c, vec3<u32>(0u, _wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.c.zzy, vec3<u32>(26382u, 1u, u_input.d)), ~0u), u_input.c.x), ~10814u), Struct_1(max(var_0.e.a, 0u) | 1u, var_0.b, 3688u));
    global1 = var_0.e;
    return firstLeadingBit(global1.a & u_input.d);
}

fn func_2() -> f32 {
    global3 = array<f32, 17>();
    var var_0 = 1i;
    var var_1 = vec4<u32>(1u, 19679u, 20550u, func_3()) | _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 42072u, ~min(0u, 1u), firstTrailingBit(global1.a)), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.d, global1.a), 66603u), _wgslsmith_dot_vec3_u32(u_input.c.xxw ^ vec3<u32>(4431u, 0u, 1u), ~vec3<u32>(51829u, u_input.d, u_input.d)), 50988u, 4294967295u << (max(u_input.d, 37090u) % 32u)));
    global1 = Struct_1(u_input.c.x, -reverseBits(u_input.b & global1.b), countOneBits(~global1.a));
    var var_2 = !(!vec4<bool>(!any(vec4<bool>(false, false, false, true)), false, !(51666u == u_input.c.x), true));
    return 916f;
}

fn func_1(arg_0: Struct_4) -> u32 {
    var var_0 = !(!select(vec3<bool>(arg_0.d.x == true, arg_0.d.x & true, !arg_0.d.x), vec3<bool>(any(vec2<bool>(arg_0.d.x, arg_0.d.x)), true, 0i <= global1.b), any(vec4<bool>(arg_0.d.x, false, false, true))));
    let var_1 = arg_0.d.x;
    let var_2 = false;
    var_0 = arg_0.d;
    global0 = _wgslsmith_f_op_f32(func_2());
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(global1.a, -global1.b, _wgslsmith_mult_u32(1u, 61621u));
    global0 = _wgslsmith_div_f32(-535f, 1035f);
    var var_0 = countOneBits(u_input.b);
    global2 = 703f;
    var var_1 = Struct_4(-(~_wgslsmith_dot_vec2_i32(u_input.a.xx, vec2<i32>(global1.b, 38419i))) & -select(abs(u_input.a.x), -20446i, true), 4294967295u, func_1(Struct_4(~u_input.b, select(global1.c, _wgslsmith_dot_vec3_u32(u_input.c.wxw, u_input.c.zzz), true), 0u, vec3<bool>(false, true, all(vec4<bool>(true, false, false, false))), vec2<i32>(2147483647i, ~u_input.b))), vec3<bool>(false, true, any(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), false))), u_input.a.yx);
    var_1 = Struct_4(u_input.a.x, ~(54230u >> (_wgslsmith_div_u32(var_1.b, 1u) % 32u)) >> (48738u % 32u), _wgslsmith_div_u32(countOneBits(12682u), _wgslsmith_sub_u32(u_input.d, reverseBits(global1.a))), select(vec3<bool>(any(vec3<bool>(false, var_1.d.x, var_1.d.x)), false, var_1.d.x), vec3<bool>(!var_1.d.x, true, var_1.d.x || true), var_1.d.x == var_1.d.x), min(u_input.a.xx, _wgslsmith_mult_vec2_i32(~max(vec2<i32>(0i, var_1.a), vec2<i32>(-67581i, var_1.a)), u_input.a.yx)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(select(countOneBits(u_input.c), u_input.c, all(vec2<bool>(true, var_1.d.x))), ~(~firstTrailingBit(vec4<u32>(4294967295u, global1.c, 39212u, var_1.c)))), reverseBits(55079u), ~global1.c, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32((u_input.a | vec3<i32>(var_1.a, global1.b, u_input.a.x)) | vec3<i32>(-1i, -18661i, -29378i), u_input.a), vec3<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_1.e.x, var_1.e.x), u_input.a) >> (reverseBits(4294967295u) % 32u), ~(-u_input.b))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1446f)), _wgslsmith_f_op_f32(floor(-1960f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, global3[_wgslsmith_index_u32(global1.a, 17u)])) + -1000f), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~var_1.b, global1.a), 17u)])));
}

