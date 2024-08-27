struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<i32, 12> = array<i32, 12>(16959i, -1i, 14026i, 12810i, i32(-2147483648), 0i, i32(-2147483648), i32(-2147483648), 1i, 2147483647i, -1i, -1i);

var<private> global2: Struct_4;

var<private> global3: i32 = -1i;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_4) -> f32 {
    var var_0 = min(u_input.e, vec4<u32>(_wgslsmith_mod_u32(global2.a.a.b, 0u & _wgslsmith_dot_vec4_u32(u_input.e, u_input.e)), (1u & (arg_0.a.a.b & u_input.b.x)) & 21879u, global2.a.a.b, ~global2.a.a.b));
    let var_1 = var_0.xzz & min(select(vec3<u32>(arg_0.a.a.b >> (u_input.b.x % 32u), 1u, _wgslsmith_add_u32(global2.a.a.b, 4294967295u)), ~u_input.e.ywx, any(!vec4<bool>(arg_0.a.a.a, global2.a.a.a, global2.c.x, false))), u_input.e.wxy);
    global1 = array<i32, 12>();
    global3 = global1[_wgslsmith_index_u32(0u, 12u)];
    var var_2 = select(vec2<bool>(!global2.c.x, true), select(global0.zy, global0.xx, global2.a.a.c.x != _wgslsmith_mult_i32(~global1[_wgslsmith_index_u32(var_0.x, 12u)], abs(9742i))), true);
    return 253f;
}

fn func_2(arg_0: u32, arg_1: Struct_3) -> vec4<f32> {
    let var_0 = false;
    global0 = global2.c;
    global0 = select(global2.c, select(vec3<bool>(!all(vec4<bool>(arg_1.a.a, arg_1.a.a, arg_1.a.a, arg_1.a.a)), all(global2.c), global2.a.b != -921f), global2.c, true), true);
    var var_1 = Struct_1(global2.c.x, ~arg_0, vec4<i32>(~_wgslsmith_mod_i32(-u_input.d, global1[_wgslsmith_index_u32(5341u, 12u)]), global2.b, global1[_wgslsmith_index_u32(arg_1.a.b << (firstTrailingBit(4294967295u) % 32u), 12u)], (i32(-1i) * -2147483647i) ^ ~(~u_input.d)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_4(Struct_3(Struct_1(false, 1u, global2.a.a.c), 1000f), -47054i, vec3<bool>(var_0, global0.x, false)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global2.a.b, -1658f, false))))))));
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(abs(-280f)), 2260f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(870f * global2.a.b), global2.a.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-563f + 1357f))))))));
}

fn func_1() -> vec3<bool> {
    var var_0 = -global2.a.a.c;
    var var_1 = Struct_4(Struct_3(global2.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.b))), global2.a.a.c.x, !(!global2.c));
    var var_2 = _wgslsmith_f_op_vec4_f32(func_2(global2.a.a.b, var_1.a));
    var_0 = _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(min(var_1.a.a.c ^ global2.a.a.c, global2.a.a.c), -global2.a.a.c), -firstLeadingBit(abs(vec4<i32>(u_input.d, -17750i, var_0.x, 0i))), (-vec4<i32>(global1[_wgslsmith_index_u32(var_1.a.a.b, 12u)], -5672i, 29224i, var_0.x) ^ global2.a.a.c) >> (vec4<u32>(~4294967295u, 97514u, 1u, 0u) % vec4<u32>(32u))), -_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(global2.a.a.c, firstLeadingBit(vec4<i32>(-1i, 0i, var_1.a.a.c.x, var_0.x))), vec4<i32>(reverseBits(-2232i), firstLeadingBit(-11657i), -global1[_wgslsmith_index_u32(4294967295u, 12u)], 1i), global2.a.a.c), max(firstTrailingBit(vec4<i32>(53829i, global1[_wgslsmith_index_u32(~19737u, 12u)], var_0.x, abs(68662i))), ~abs(vec4<i32>(var_1.a.a.c.x, -2147483647i, global2.a.a.c.x, global2.b)) << (~countOneBits(u_input.e) % vec4<u32>(32u))));
    var var_3 = min(firstLeadingBit(~var_1.a.a.b), firstTrailingBit(0u) | ~var_1.a.a.b);
    return !select(select(select(!var_1.c, global2.c, global2.c), !vec3<bool>(false, false, global0.x), select(!global2.c, select(vec3<bool>(true, false, false), vec3<bool>(true, global2.a.a.a, false), global0.x), true)), global2.c, select(vec3<bool>(true, any(vec4<bool>(var_1.a.a.a, global2.a.a.a, false, var_1.a.a.a)), global0.x), select(select(global2.c, global2.c, var_1.c), global2.c, any(vec3<bool>(var_1.a.a.a, global2.a.a.a, global0.x))), var_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 12>();
    global0 = func_1();
    var var_0 = Struct_3(global2.a.a, 918f);
    var var_1 = _wgslsmith_dot_vec4_u32(~(_wgslsmith_sub_vec4_u32(vec4<u32>(global2.a.a.b, u_input.b.x, var_0.a.b, 0u), vec4<u32>(u_input.a.x, global2.a.a.b, 1u, 0u)) & _wgslsmith_sub_vec4_u32(vec4<u32>(21176u, 94986u, 44652u, 47580u), vec4<u32>(4294967295u, u_input.a.x, 10723u, var_0.a.b))), vec4<u32>(u_input.b.x, reverseBits(global2.a.a.b), u_input.c, ~52055u)) ^ ((var_0.a.b ^ ~(~0u)) ^ 1u);
    var_1 = _wgslsmith_div_u32(50595u, _wgslsmith_div_u32(1u, _wgslsmith_add_u32(34623u & global2.a.a.b, var_0.a.b)));
    let var_2 = _wgslsmith_sub_i32(~global1[_wgslsmith_index_u32(~(~1u), 12u)], -21552i << (_wgslsmith_dot_vec2_u32(abs(u_input.a), ~vec2<u32>(global2.a.a.b, 36007u)) % 32u)) == _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global2.a.a.c.x, _wgslsmith_div_i32(global1[_wgslsmith_index_u32(62963u, 12u)], -51734i), 1i >> (var_0.a.b % 32u), global1[_wgslsmith_index_u32(u_input.b.x, 12u)] << (u_input.e.x % 32u)), select(abs(global2.a.a.c), vec4<i32>(-46754i, var_0.a.c.x, 57878i, var_0.a.c.x), true)), global2.a.a.c);
    global2 = Struct_4(global2.a, 1i, global2.c);
    var_1 = ~var_0.a.b;
    global1 = array<i32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-144f - _wgslsmith_f_op_f32(-var_0.b))));
}

