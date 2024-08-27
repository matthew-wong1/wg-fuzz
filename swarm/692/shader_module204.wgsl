struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(-1i, -20869i, Struct_1(vec2<u32>(4294967295u, 4294967295u), false, 1i)), Struct_2(6057i, -3425i, Struct_1(vec2<u32>(1u, 15788u), false, i32(-2147483648))), Struct_2(24541i, 1i, Struct_1(vec2<u32>(0u, 12298u), true, 2147483647i)), Struct_2(2147483647i, 1i, Struct_1(vec2<u32>(53500u, 31108u), false, -32181i)), Struct_2(37317i, 56065i, Struct_1(vec2<u32>(104620u, 1u), false, 2147483647i)), Struct_2(1i, 22608i, Struct_1(vec2<u32>(1u, 30824u), false, -1i)), Struct_2(1i, 45778i, Struct_1(vec2<u32>(36544u, 18357u), false, 2147483647i)), Struct_2(i32(-2147483648), -16110i, Struct_1(vec2<u32>(16683u, 15539u), false, 45923i)), Struct_2(i32(-2147483648), -1760i, Struct_1(vec2<u32>(0u, 48668u), true, -33674i)), Struct_2(-15952i, i32(-2147483648), Struct_1(vec2<u32>(0u, 28678u), false, 0i)), Struct_2(-15880i, -41012i, Struct_1(vec2<u32>(32866u, 32880u), false, 68812i)), Struct_2(i32(-2147483648), -10003i, Struct_1(vec2<u32>(8018u, 4294967295u), true, 7183i)), Struct_2(29211i, -1i, Struct_1(vec2<u32>(91917u, 54048u), true, 60522i)), Struct_2(44905i, i32(-2147483648), Struct_1(vec2<u32>(44604u, 4294967295u), true, -17366i)), Struct_2(-49288i, 9731i, Struct_1(vec2<u32>(1u, 205u), false, 2147483647i)), Struct_2(0i, 0i, Struct_1(vec2<u32>(113220u, 1u), false, -1i)), Struct_2(2147483647i, -34012i, Struct_1(vec2<u32>(0u, 59183u), true, -1i)), Struct_2(2147483647i, 2147483647i, Struct_1(vec2<u32>(4294967295u, 312u), true, 2147483647i)), Struct_2(2147483647i, 2147483647i, Struct_1(vec2<u32>(0u, 39897u), false, 0i)), Struct_2(-22685i, 2147483647i, Struct_1(vec2<u32>(4294967295u, 42813u), false, 52031i)));

var<private> global1: Struct_1 = Struct_1(vec2<u32>(16183u, 4294967295u), false, 4374i);

var<private> global2: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> u32 {
    let var_0 = global1.a.x;
    return arg_0.c.a.x;
}

fn func_2(arg_0: Struct_3) -> i32 {
    global2 = global1.c;
    var var_0 = vec3<u32>(abs(abs(~0u)), arg_0.c.c.a.x, 1u) & ~(vec3<u32>(42997u, 18201u, _wgslsmith_div_u32(arg_0.c.c.a.x, arg_0.c.c.a.x)) & vec3<u32>(global1.a.x, min(4115u, 45227u), ~0u));
    let var_1 = arg_0.c.c;
    var_0 = ~min(~vec3<u32>(var_0.x, 0u, 44460u), ~vec3<u32>(var_1.a.x, func_3(global0[_wgslsmith_index_u32(var_1.a.x, 20u)], global1.b), global1.a.x >> (39100u % 32u)));
    var var_2 = Struct_3(_wgslsmith_clamp_vec2_i32(arg_0.a, u_input.a.zy, _wgslsmith_clamp_vec2_i32(-vec2<i32>(var_1.c, u_input.a.x), ~u_input.a.xx, reverseBits(arg_0.a))), any(vec3<bool>(all(vec4<bool>(false, false, false, true)), true, true)) && var_1.b, global0[_wgslsmith_index_u32(var_1.a.x, 20u)]);
    return -(u_input.a.x ^ ~_wgslsmith_div_i32(20921i, var_1.c));
}

fn func_1(arg_0: vec3<i32>) -> vec3<i32> {
    global0 = array<Struct_2, 20>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(446f + 1444f), -364f, _wgslsmith_f_op_f32(f32(-1f) * -596f))))));
    return firstLeadingBit(vec3<i32>(select(global1.c, abs(37808i), true), _wgslsmith_mod_i32(~func_2(Struct_3(vec2<i32>(global1.c, arg_0.x), false, Struct_2(global1.c, u_input.a.x, Struct_1(global1.a, true, -12368i)))), ~arg_0.x), _wgslsmith_dot_vec2_i32(-u_input.a.zy, u_input.a.yz)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-1i) * -u_input.a;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-472f, 862f, -1000f, -793f) - vec4<f32>(342f, 813f, -2122f, 688f)))))));
    global2 = -u_input.a.x;
    let var_2 = var_0.x ^ -(~(min(0i, -2147483647i) >> (0u % 32u)));
    let var_3 = var_1.zxw;
    global1 = Struct_1(~(~(~(~vec2<u32>(global1.a.x, 66103u)))), all(vec2<bool>(any(select(vec2<bool>(global1.b, false), vec2<bool>(false, false), global1.b)), false)), _wgslsmith_div_i32(min(-u_input.a.x, _wgslsmith_mult_i32(0i, -20370i)) & _wgslsmith_dot_vec3_i32(func_1(vec3<i32>(33770i, -2147483647i, var_0.x)), _wgslsmith_add_vec3_i32(vec3<i32>(-54434i, var_0.x, var_0.x), vec3<i32>(u_input.a.x, var_2, global1.c))), var_0.x));
    global1 = Struct_1(abs(~abs(global1.a ^ global1.a)), any(vec3<bool>(global1.b, global1.b, _wgslsmith_f_op_f32(773f + -449f) < _wgslsmith_div_f32(-246f, var_3.x))), ~(~(1i >> (global1.a.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(~(~6748u), global1.a.x | _wgslsmith_mod_u32(82392u, global1.a.x)), ~88835u, _wgslsmith_dot_vec2_i32(~(~var_0.xy), -max(var_0.xx, vec2<i32>(var_0.x, u_input.a.x))) >> (global1.a.x % 32u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.x))));
}

