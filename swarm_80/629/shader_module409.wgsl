struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1578f;

var<private> global1: vec3<i32> = vec3<i32>(1i, 32551i, i32(-2147483648));

var<private> global2: Struct_4;

var<private> global3: array<bool, 27>;

var<private> global4: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(0i, 24907u, 503f), Struct_1(-1i, 1u, -616f), Struct_1(3642i, 33421u, -288f), Struct_1(-26449i, 44432u, -777f), Struct_1(60747i, 101913u, 2241f), Struct_1(-2039i, 0u, 400f), Struct_1(0i, 1859u, 1000f), Struct_1(6884i, 30546u, 1274f), Struct_1(i32(-2147483648), 15239u, 1562f), Struct_1(2147483647i, 19308u, -1000f), Struct_1(2147483647i, 70405u, -1000f), Struct_1(-42546i, 22432u, 710f), Struct_1(0i, 0u, -521f), Struct_1(2147483647i, 1u, 122f), Struct_1(23441i, 1u, 1244f), Struct_1(0i, 4202u, 708f), Struct_1(0i, 20781u, -894f), Struct_1(23115i, 4171u, 638f), Struct_1(2147483647i, 58183u, -1169f), Struct_1(2147483647i, 1u, 1352f));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_5, arg_1: bool) -> vec2<i32> {
    var var_0 = Struct_1(firstLeadingBit(arg_0.e.b.c.a), _wgslsmith_dot_vec2_u32(u_input.b.zy, u_input.b.zx), 598f);
    let var_1 = global2.c;
    let var_2 = Struct_3(arg_0.e.c.a.c, ~u_input.a, var_0.b);
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * var_0.c), -511f) + vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_0.e.c.a.c, _wgslsmith_f_op_f32(var_1.c.c - -1465f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.a.c) - _wgslsmith_f_op_f32(sign(var_2.a))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -304f)))));
    global4 = array<Struct_1, 20>();
    return vec2<i32>(~countOneBits(var_0.a), _wgslsmith_dot_vec4_i32(reverseBits(countOneBits(vec4<i32>(9004i, global1.x, 1i, 0i))), abs(vec4<i32>(max(2147483647i, 26208i), ~1i, _wgslsmith_sub_i32(-2147483647i, arg_0.a.x), abs(var_1.d.a)))));
}

fn func_2() -> f32 {
    let var_0 = Struct_4(func_3(Struct_5(_wgslsmith_mod_vec3_i32(vec3<i32>(global2.a.x, global2.a.x, global1.x), vec3<i32>(global2.b.d.a, global2.a.x, 67058i)), ~u_input.a, _wgslsmith_add_u32(9466u, global2.c.c.b), 9267u, Struct_4(vec2<i32>(global1.x, global2.c.d.a), Struct_2(Struct_1(global1.x, 4294967295u, 1398f), global2.c.c.a, global2.c.c, Struct_1(-2147483647i, 27433u, 322f)), global2.b)), 39072u >= min(global2.c.a.b, 41457u)) & global1.yy, Struct_2(Struct_1(-22322i, 15350u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-265f, -1000f))), 1i, global4[_wgslsmith_index_u32(14118u, 20u)], Struct_1(select(abs(17642i), global2.c.c.a, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 16173u), 27u)]), 4294967295u, global2.b.a.c)), global2.c);
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1307f * _wgslsmith_f_op_f32(ceil(-152f)))) + global2.b.a.c), firstTrailingBit(~(~45895u)), firstLeadingBit(_wgslsmith_mod_u32(~680u << (_wgslsmith_div_u32(global2.c.a.b, 73666u) % 32u), min(~42785u, abs(var_0.b.d.b)))));
    global4 = array<Struct_1, 20>();
    global4 = array<Struct_1, 20>();
    let var_2 = var_0.c.c;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1.a)), _wgslsmith_f_op_f32(f32(-1f) * -2618f)))), _wgslsmith_f_op_f32(round(1797f))));
}

fn func_4(arg_0: bool, arg_1: f32) -> Struct_2 {
    global3 = array<bool, 27>();
    var var_0 = Struct_1(countOneBits(global1.x), global2.b.c.b << (select(countOneBits(~global2.c.c.b), 4294967295u, ~4294967295u != _wgslsmith_add_u32(45812u, global2.b.a.b)) % 32u), _wgslsmith_f_op_f32(round(-1093f)));
    let var_1 = 0u == countOneBits(firstTrailingBit(23804u));
    global3 = array<bool, 27>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.b.d.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.c.c.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c + arg_1) - _wgslsmith_f_op_f32(-var_0.c)))))) * 678f);
    return global2.b;
}

fn func_1() -> i32 {
    var var_0 = Struct_4(~_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(global1.zx | global1.xy, _wgslsmith_mult_vec2_i32(vec2<i32>(global2.c.b, 8644i), global2.a)), global1.xx), func_4(true & !global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(4621u, global2.b.a.b), 27u)], _wgslsmith_f_op_f32(func_2())), func_4(select(any(select(vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.b.x, 27u)]), vec2<bool>(true, global3[_wgslsmith_index_u32(37769u, 27u)]), vec2<bool>(global3[_wgslsmith_index_u32(1u, 27u)], false))), true, global1.x < global1.x), global2.b.c.c));
    var_0 = Struct_4(var_0.a, global2.b, func_4(!global3[_wgslsmith_index_u32(113929u, 27u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1222f - global2.c.a.c) + _wgslsmith_f_op_f32(-global2.c.d.c))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -639f), 151f);
    var var_2 = global4[_wgslsmith_index_u32(0u, 20u)];
    var_0 = Struct_4(_wgslsmith_mult_vec2_i32(vec2<i32>(global1.x, abs(var_2.a) | _wgslsmith_dot_vec2_i32(var_0.a, global1.zy)), firstLeadingBit(vec2<i32>(global1.x, _wgslsmith_mod_i32(-44267i, -2147483647i)))), Struct_2(Struct_1(0i, var_0.c.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.c.c))), 1i, func_4(any(select(vec3<bool>(true, true, true), vec3<bool>(global3[_wgslsmith_index_u32(0u, 27u)], global3[_wgslsmith_index_u32(var_0.b.c.b, 27u)], false), vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.b.x, 27u)], true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-global2.c.d.c))).a, func_4(false, 736f).d), func_4(global3[_wgslsmith_index_u32(var_2.b, 27u)], _wgslsmith_f_op_f32(-var_0.b.a.c)));
    return global1.x | ((var_2.a ^ max(-1i, global2.a.x)) & ((~global2.b.c.a | 2147483647i) | global2.b.c.a));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(~func_1(), 4701i, _wgslsmith_f_op_f32(global2.c.c.c * global2.c.a.c), abs(48114u));
}

