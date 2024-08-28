struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: bool,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(61776u, Struct_3(vec2<f32>(-462f, -789f), Struct_2(Struct_1(vec2<bool>(false, false), 35448i, false, -1000f, 0i), Struct_1(vec2<bool>(false, true), 23206i, false, -676f, i32(-2147483648)), false, vec4<bool>(false, false, false, true), Struct_1(vec2<bool>(true, true), 2147483647i, true, 1389f, -1i)), vec2<u32>(4294967295u, 11176u)), Struct_3(vec2<f32>(512f, 1000f), Struct_2(Struct_1(vec2<bool>(true, false), 1i, true, 1964f, 2147483647i), Struct_1(vec2<bool>(false, false), -17924i, true, 436f, -7720i), true, vec4<bool>(false, true, true, false), Struct_1(vec2<bool>(false, true), 1291i, true, 338f, 107125i)), vec2<u32>(1u, 0u)));

var<private> global1: Struct_1 = Struct_1(vec2<bool>(false, true), i32(-2147483648), false, -1388f, -35i);

var<private> global2: vec4<bool>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_2) -> u32 {
    var var_0 = Struct_4(_wgslsmith_dot_vec4_u32(vec4<u32>(59906u, ~1u, _wgslsmith_add_u32(21204u, u_input.a), global0.b.c.x), ~(~vec4<u32>(global0.b.c.x, arg_2, 1u, arg_2))) << (1u % 32u), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(2531f + _wgslsmith_f_op_f32(floor(arg_0))), -1713f), arg_3, vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 85630u), vec3<u32>(global0.c.c.x, 0u, 91414u)), abs(vec3<u32>(41956u, arg_2, 1u))), global0.a)), Struct_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(955f, -1169f)) + _wgslsmith_f_op_f32(global0.c.a.x + 211f)), 1656f), Struct_2(arg_3.a, arg_3.e, any(vec4<bool>(arg_3.c, true, arg_3.d.x, false)), !(!arg_3.d), Struct_1(select(global0.b.b.d.zz, global2.ww, vec2<bool>(true, true)), 2147483647i, global1.a.x, _wgslsmith_f_op_f32(-arg_3.b.d), 44558i | arg_1.x)), countOneBits(vec2<u32>(arg_2, ~1u))));
    let var_1 = _wgslsmith_clamp_u32(u_input.a, abs(7882u), global0.a);
    var var_2 = Struct_1(!select(select(select(vec2<bool>(arg_3.b.a.x, false), vec2<bool>(true, false), true), vec2<bool>(global2.x, false), var_0.b.b.c), arg_3.d.xy, global2.x && false), max(26259i, abs(0i)), global0.c.b.c, _wgslsmith_f_op_f32(trunc(global1.d)), ~(-3963i));
    global0 = Struct_4(31204u, Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-367f, 521f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.b.a * global0.c.a))), Struct_2(global0.b.b.e, global0.c.b.a, var_2.c, !var_0.b.b.d, var_0.b.b.a), vec2<u32>(~arg_2, ~4294967295u >> (0u % 32u))), Struct_3(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.c.a.x, arg_0), global0.c.a)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1351f) - var_0.c.a)))), global0.b.b, var_0.c.c));
    var var_3 = (~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(arg_2, 57576u), ~var_1, 4294967295u) == abs(u_input.a)) || global2.x;
    return _wgslsmith_sub_u32(16615u, _wgslsmith_dot_vec2_u32(reverseBits(~global0.b.c), global0.c.c));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: vec3<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.b.e.d)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.b.e.d)), _wgslsmith_div_f32(191f, 600f)) - _wgslsmith_f_op_f32(f32(-1f) * -979f))) + arg_2.a.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.c.a));
    let var_2 = vec3<bool>(_wgslsmith_mod_i32(global0.c.b.e.e, -abs(-21236i)) >= reverseBits(u_input.b), (func_3(_wgslsmith_f_op_f32(var_0 * 930f), vec4<i32>(arg_2.b.a.e, u_input.b, arg_0.b.a.b, arg_0.b.b.b), 4294967295u, Struct_2(arg_2.b.a, Struct_1(vec2<bool>(true, false), 26878i, false, 106f, arg_0.b.b.e), false, vec4<bool>(false, false, global2.x, false), Struct_1(vec2<bool>(true, global2.x), -2147483647i, global2.x, -814f, global1.e))) < ~_wgslsmith_mult_u32(42409u, u_input.a)) & any(global2.zww), arg_0.b.e.c);
    var var_3 = vec2<i32>(firstLeadingBit(-47655i), -1i);
    var var_4 = vec4<i32>(_wgslsmith_div_i32(-2147483647i, ~global0.c.b.b.e), var_3.x, i32(-1i) * -1i, arg_2.b.b.e);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(305f, arg_2.a.x)) * 800f);
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: u32, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = global0.b.b.b;
    var var_1 = Struct_2(Struct_1(!select(!var_0.a, vec2<bool>(global0.c.b.a.a.x, false), !global0.c.b.a.a), -1i, !global0.b.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_3(global0.c.a, global0.b.b, global0.c.c), vec3<u32>(global0.b.c.x, arg_2, arg_2), global0.c, vec3<u32>(arg_2, u_input.a, global0.a)))) - global0.c.a.x), i32(-1i) * -1i), global0.c.b.b, global1.c, global0.b.b.d, Struct_1(vec2<bool>(!any(global0.b.b.d), global2.x), -2147483647i, global2.x, _wgslsmith_f_op_f32(-global1.d), _wgslsmith_mult_i32(arg_3.x, min(~1i, ~(-1i)))));
    global0 = Struct_4(_wgslsmith_div_u32(1u, min(_wgslsmith_mod_u32(u_input.a, 4294967295u) ^ 7456u, ~0u >> (firstLeadingBit(u_input.a) % 32u))), Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.c.a), global0.c.a), global0.c.b, select(vec2<u32>(4294967295u, 4294967295u), min(vec2<u32>(global0.a, 10486u), vec2<u32>(global0.c.c.x, 0u)), global1.a) ^ vec2<u32>(arg_2, global0.b.c.x << (u_input.a % 32u))), global0.c);
    var_1 = global0.c.b;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.e.d))));
    return Struct_1(select(vec2<bool>(global2.x, var_0.c), select(vec2<bool>(true, arg_1.x), !global0.c.b.e.a, true), !global1.a), 2147483647i, any(!global1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-510f, arg_0))), global0.c.b.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(201f, vec3<bool>(all(vec3<bool>(true, global0.c.b.b.b >= global0.c.b.a.e, !global0.c.b.b.c)), true, select(global1.c, all(global0.c.b.d), !(!global2.x))), global0.b.c.x, _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global1.e, 1i, 1i, u_input.b), vec4<i32>(40069i, -1205i, global0.b.b.b.b, 0i) | vec4<i32>(global1.b, global1.b, 1i, -2147483647i)), select(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.c.b.e.b, -35777i, global1.e, -2147483647i), vec4<i32>(1i, -2147483647i, global0.b.b.a.e, 1i)), vec4<i32>(3068i, global1.e, -186i, 0i), global2.x == true)), vec4<i32>(global1.b, 0i, u_input.b, _wgslsmith_mod_i32(-1i, global0.c.b.a.e))));
    global0 = Struct_4(_wgslsmith_mult_u32(u_input.a, ~global0.b.c.x), global0.c, global0.b);
    global0 = Struct_4(23063u, Struct_3(global0.b.a, Struct_2(global0.b.b.a, func_1(_wgslsmith_f_op_f32(max(-1000f, global1.d)), global2.zxw, ~46730u, _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 1i, 2147483647i, global1.b), vec4<i32>(u_input.b, u_input.b, u_input.b, global1.b))), global2.x, global0.c.b.d, func_1(global1.d, select(global2.ywy, global0.c.b.d.xwy, vec3<bool>(false, true, global0.b.b.c)), global0.b.c.x | global0.b.c.x, vec4<i32>(1i, global0.b.b.a.b, global1.b, global1.e) & vec4<i32>(global0.b.b.e.e, -30508i, -15712i, -1i))), ~(~(global0.b.c ^ vec2<u32>(u_input.a, u_input.a)))), global0.b);
    let var_0 = _wgslsmith_mult_vec3_i32(-countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(-7128i, u_input.b, global0.c.b.e.e) & vec3<i32>(u_input.b, global1.e, global1.b), abs(vec3<i32>(global0.c.b.b.b, u_input.b, global1.b)))), reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.c.b.b.e, 3318i, -23246i), _wgslsmith_mod_vec3_i32(vec3<i32>(-35367i, -2147483647i, u_input.b), vec3<i32>(global1.e, global1.b, 1i))) ^ vec3<i32>(global1.b, ~u_input.b, 1i)));
    global2 = global0.b.b.d;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, u_input.a);
}

