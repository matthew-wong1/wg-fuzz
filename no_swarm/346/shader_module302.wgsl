struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_4,
    c: vec3<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10>;

var<private> global1: vec3<u32>;

var<private> global2: array<bool, 8>;

var<private> global3: vec3<i32> = vec3<i32>(40561i, -1i, -9869i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: u32, arg_3: u32) -> vec3<u32> {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(~4294967295u, 28104u, arg_3 << (818u % 32u)), _wgslsmith_add_vec3_u32(select(arg_0.a, ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, global1.x, 0u), vec3<u32>(39080u, u_input.b, global1.x)), all(arg_0.c)), select(~(~vec3<u32>(arg_0.a.x, arg_3, 7378u)), ~arg_0.a, arg_1.x))), 10u)];
    var var_1 = global1.x;
    global1 = vec3<u32>(arg_0.b.b.x, _wgslsmith_mod_u32(~u_input.a.x, ~select(arg_0.b.b.x, arg_2, true)) >> (73081u % 32u), reverseBits(arg_0.b.b.x));
    var_1 = firstLeadingBit(4294967295u);
    var var_2 = select(select(vec4<bool>(true & arg_0.c.x, true, arg_1.x, false), vec4<bool>(all(select(arg_1, arg_0.c, false)), arg_1.x, any(!arg_0.c.xz), !(global2[_wgslsmith_index_u32(1u, 8u)] && true)), select(select(vec4<bool>(global2[_wgslsmith_index_u32(139u, 8u)], false, false, false), select(vec4<bool>(true, arg_1.x, false, arg_1.x), vec4<bool>(global2[_wgslsmith_index_u32(arg_2, 8u)], false, false, global2[_wgslsmith_index_u32(1u, 8u)]), true), select(vec4<bool>(false, arg_1.x, arg_0.c.x, false), vec4<bool>(false, arg_1.x, arg_0.c.x, arg_1.x), vec4<bool>(true, arg_0.c.x, false, arg_0.c.x))), select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_0.c.x, global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(u_input.a.x, 8u)], false), arg_0.c.x), true || all(vec3<bool>(true, true, false)))), vec4<bool>(false == (_wgslsmith_f_op_f32(min(arg_0.d, arg_0.d)) <= 793f), !(!arg_0.c.x), abs(global3.x) > ~reverseBits(1i), any(!select(arg_0.c, vec3<bool>(arg_1.x, global2[_wgslsmith_index_u32(arg_0.a.x, 8u)], true), arg_1))), !(!(!vec4<bool>(true, arg_0.c.x, true, arg_0.c.x))));
    return _wgslsmith_mod_vec3_u32(reverseBits(arg_0.b.b | arg_0.b.b), vec3<u32>(_wgslsmith_clamp_u32(34858u, global1.x | global1.x, 4294967295u), abs(global1.x), 16454u));
}

fn func_2() -> Struct_4 {
    return Struct_4(-global3.x, ~func_3(Struct_5(~vec3<u32>(99350u, 25436u, 4294967295u), Struct_4(global3.x, vec3<u32>(480u, 4294967295u, u_input.a.x)), vec3<bool>(false, global2[_wgslsmith_index_u32(global1.x, 8u)], global2[_wgslsmith_index_u32(u_input.b, 8u)]), 123f), !(!vec3<bool>(true, false, global2[_wgslsmith_index_u32(30388u, 8u)])), global1.x, 2443u));
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-339f, -658f, 692f) + vec3<f32>(1148f, 365f, 1479f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1200f, -124f, -1944f))), vec3<bool>(global2[_wgslsmith_index_u32(arg_0.b.x, 8u)], global2[_wgslsmith_index_u32(arg_0.b.x, 8u)], global2[_wgslsmith_index_u32(u_input.b, 8u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(648f, -1049f, -977f) + vec3<f32>(-1010f, -1674f, -1000f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2449f, -513f, -258f)))));
    var var_1 = ~(global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(global1.x, u_input.b), 10u)] >> (_wgslsmith_sub_u32(1u, firstTrailingBit(1u)) % 32u)) ^ global3.x;
    var var_2 = ~(abs(_wgslsmith_add_vec4_u32(select(vec4<u32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, 0u), vec4<u32>(arg_0.b.x, 95718u, 0u, 28099u), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)], false)), ~vec4<u32>(53404u, global1.x, 34967u, global1.x))) >> (vec4<u32>(~60319u, ~(~0u), 4294967295u, ~u_input.a.x) % vec4<u32>(32u)));
    let var_3 = Struct_3(countOneBits(-2147483647i), Struct_2(global1.x << (var_2.x % 32u)));
    var_1 = 2147483647i;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.xz), _wgslsmith_div_i32(reverseBits(21260i), _wgslsmith_clamp_i32(var_3.a, arg_0.a, -11476i ^ global3.x) >> (~4294967295u % 32u)));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_5, arg_3: i32) -> vec4<i32> {
    global0 = array<i32, 10>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1107f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.a.x - 944f), arg_1)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + arg_1);
    var var_1 = Struct_3(select(_wgslsmith_sub_i32(~(arg_2.b.a ^ arg_3), -10978i), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(global3.x, arg_2.b.a), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(74590u, 40852u), 10u)]), -40237i, global3.x), arg_2.c.x), Struct_2(569u));
    let var_2 = arg_2;
    global2 = array<bool, 8>();
    return ~(~abs(~vec4<i32>(arg_3, -60252i, 1i, var_2.b.a) & vec4<i32>(arg_0.b, arg_0.b, arg_2.b.a, 2147483647i)));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> f32 {
    var var_0 = vec3<i32>(9043i, 0i | global3.x, _wgslsmith_dot_vec4_i32(-min(vec4<i32>(global0[_wgslsmith_index_u32(5016u, 10u)], global0[_wgslsmith_index_u32(global1.x, 10u)], global3.x, global0[_wgslsmith_index_u32(arg_0.x, 10u)]), select(vec4<i32>(-32423i, -7397i, -2147483647i, -1i), vec4<i32>(-2147483647i, global3.x, -20194i, global3.x), vec4<bool>(global2[_wgslsmith_index_u32(29614u, 8u)], arg_1, false, global2[_wgslsmith_index_u32(4294967295u, 8u)]))), func_5(func_4(func_2()), 1416f, Struct_5(arg_0.yww, Struct_4(global3.x, arg_0.ywz), select(vec3<bool>(true, global2[_wgslsmith_index_u32(global1.x, 8u)], true), vec3<bool>(arg_1, false, false), true), _wgslsmith_f_op_f32(-1285f - 1128f)), global3.x)));
    var var_1 = ~(-10500i);
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(983f, -1529f)) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, 2769f)))))), 41435i);
    var var_3 = vec3<i32>(var_0.x, global3.x, var_2.b);
    let var_4 = 1227f;
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 8>();
    var var_0 = vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.x, 1u, global1.x), vec4<u32>(u_input.a.x, 30833u, 82118u, global1.x)), 12813u) << (select(select(39859u, global1.x, false), _wgslsmith_div_u32(1u, global1.x), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 8u)]) % 32u), u_input.a.x), 1u);
    global2 = array<bool, 8>();
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -517f), _wgslsmith_f_op_f32(f32(-1f) * -1279f)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(589f, 651f), 810f)), _wgslsmith_f_op_f32(f32(-1f) * -268f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1241f, 693f, 455f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_1(vec4<u32>(77156u, 58755u, 30163u, u_input.a.x), true)), 761f, _wgslsmith_f_op_f32(f32(-1f) * -211f))))));
    let var_2 = Struct_3(_wgslsmith_add_i32(-global3.x, 1i), Struct_2(~var_0.x));
    var_0 = vec2<u32>(~(func_2().b.x | var_0.x), 1943u);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, select(_wgslsmith_mult_vec3_i32(reverseBits(select(vec3<i32>(1i, 2147483647i, 58003i), vec3<i32>(1i, -1i, var_2.a), vec3<bool>(false, true, global2[_wgslsmith_index_u32(var_0.x, 8u)]))), vec3<i32>(func_4(Struct_4(global3.x, vec3<u32>(1u, global1.x, u_input.b))).b, -3829i, -2147483647i)), abs(reverseBits(-vec3<i32>(-27050i, global0[_wgslsmith_index_u32(var_2.b.a, 10u)], -27558i))), select(!select(vec3<bool>(true, global2[_wgslsmith_index_u32(var_2.b.a, 8u)], global2[_wgslsmith_index_u32(var_0.x, 8u)]), vec3<bool>(global2[_wgslsmith_index_u32(99629u, 8u)], true, false), vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 8u)], global2[_wgslsmith_index_u32(var_0.x, 8u)], false)), select(!vec3<bool>(global2[_wgslsmith_index_u32(64107u, 8u)], global2[_wgslsmith_index_u32(37118u, 8u)], true), select(vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 8u)], true), vec3<bool>(global2[_wgslsmith_index_u32(1u, 8u)], false, false), vec3<bool>(false, global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(8326u, 8u)])), select(vec3<bool>(false, false, global2[_wgslsmith_index_u32(4294967295u, 8u)]), vec3<bool>(global2[_wgslsmith_index_u32(1u, 8u)], true, global2[_wgslsmith_index_u32(4294967295u, 8u)]), vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 8u)], false, global2[_wgslsmith_index_u32(global1.x, 8u)]))), select(vec3<bool>(false, false, global2[_wgslsmith_index_u32(global1.x, 8u)]), vec3<bool>(global2[_wgslsmith_index_u32(global1.x, 8u)], global2[_wgslsmith_index_u32(global1.x, 8u)], global2[_wgslsmith_index_u32(global1.x, 8u)]), global2[_wgslsmith_index_u32(global1.x, 8u)]))), _wgslsmith_add_vec3_i32(abs(-_wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.a, global3.x, var_2.a), vec3<i32>(-1i, var_2.a, global3.x), vec3<i32>(global3.x, global0[_wgslsmith_index_u32(global1.x, 10u)], global3.x))), vec3<i32>(-19824i, ~(0i | var_2.a), 1i << (~var_2.b.a % 32u))), select(~(~vec3<i32>(global0[_wgslsmith_index_u32(3159u, 10u)], global3.x, global0[_wgslsmith_index_u32(u_input.b, 10u)])), ~vec3<i32>(36940i, var_2.a, select(-2147483647i, 6706i, false)), select(!(!vec3<bool>(global2[_wgslsmith_index_u32(4086u, 8u)], global2[_wgslsmith_index_u32(global1.x, 8u)], global2[_wgslsmith_index_u32(var_0.x, 8u)])), !(!vec3<bool>(global2[_wgslsmith_index_u32(51743u, 8u)], true, false)), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(max(1u, 1u), ~u_input.a.x), 8u)])));
}

