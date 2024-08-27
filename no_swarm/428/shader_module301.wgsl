struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(4294967295u, vec3<u32>(0u, 4294967295u, 4294967295u), true, Struct_1(-56345i)), Struct_4(41193u, vec3<u32>(28391u, 32053u, 4294967295u), true, Struct_1(i32(-2147483648))), Struct_4(21303u, vec3<u32>(0u, 4294967295u, 0u), true, Struct_1(2147483647i)), Struct_4(59390u, vec3<u32>(0u, 26425u, 21995u), false, Struct_1(8230i)), Struct_4(59480u, vec3<u32>(21553u, 4294967295u, 0u), true, Struct_1(-55589i)), Struct_4(1u, vec3<u32>(4294967295u, 4294967295u, 36339u), true, Struct_1(-36880i)), Struct_4(1u, vec3<u32>(0u, 1u, 0u), true, Struct_1(-998i)), Struct_4(127090u, vec3<u32>(1u, 0u, 30128u), true, Struct_1(2147483647i)), Struct_4(1u, vec3<u32>(4294967295u, 4294967295u, 423u), true, Struct_1(0i)), Struct_4(0u, vec3<u32>(4294967295u, 4294967295u, 16966u), true, Struct_1(0i)), Struct_4(63788u, vec3<u32>(21276u, 13696u, 1u), true, Struct_1(-34628i)), Struct_4(22545u, vec3<u32>(4294967295u, 39374u, 60326u), true, Struct_1(0i)), Struct_4(1u, vec3<u32>(4294967295u, 4294967295u, 25686u), false, Struct_1(-1i)), Struct_4(1u, vec3<u32>(0u, 0u, 27362u), true, Struct_1(0i)), Struct_4(26434u, vec3<u32>(0u, 89996u, 0u), false, Struct_1(1i)), Struct_4(4294967295u, vec3<u32>(1u, 1u, 51557u), false, Struct_1(-33354i)), Struct_4(92133u, vec3<u32>(83055u, 34717u, 54035u), false, Struct_1(1i)), Struct_4(31549u, vec3<u32>(28198u, 0u, 4294967295u), true, Struct_1(-1i)), Struct_4(26449u, vec3<u32>(64426u, 1u, 0u), false, Struct_1(-53679i)), Struct_4(1u, vec3<u32>(64101u, 64017u, 0u), true, Struct_1(20416i)), Struct_4(0u, vec3<u32>(100284u, 4294967295u, 0u), true, Struct_1(-19417i)), Struct_4(32304u, vec3<u32>(21418u, 8669u, 3589u), true, Struct_1(2147483647i)), Struct_4(0u, vec3<u32>(4294967295u, 73111u, 33421u), false, Struct_1(-4609i)), Struct_4(21371u, vec3<u32>(32892u, 45115u, 0u), true, Struct_1(-20411i)));

var<private> global2: array<u32, 15>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32, arg_3: Struct_4) -> bool {
    var var_0 = _wgslsmith_add_i32(-2147483647i, -_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(21797i, 1i), u_input.c.wx, u_input.c.yx) >> (~u_input.d.yx % vec2<u32>(32u)), u_input.c.zz));
    var_0 = ~_wgslsmith_div_i32(arg_0.a, u_input.b) & _wgslsmith_clamp_i32(arg_2, arg_0.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-23950i, -1i), ~vec2<i32>(u_input.b, -2147483647i)) ^ arg_0.a);
    let var_1 = vec3<u32>(_wgslsmith_mult_u32(global0.x, reverseBits(arg_3.a)), 25897u, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.x, 15u)], 15u)]);
    let var_2 = Struct_4(~global2[_wgslsmith_index_u32(2910u, 15u)], vec3<u32>(49902u, 21136u, 36718u), true, Struct_1(0i));
    let var_3 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(floor(arg_1.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -433f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x))))), Struct_1(-1i), arg_1.c);
    return true;
}

fn func_3() -> bool {
    let var_0 = vec3<bool>(!(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.b, u_input.c.x), u_input.c), u_input.c.x) <= (17392i << ((31987u >> (global2[_wgslsmith_index_u32(33101u, 15u)] % 32u)) % 32u))), true, all(vec2<bool>(true, true)));
    let var_1 = -1i;
    var var_2 = vec4<u32>(abs(~global2[_wgslsmith_index_u32(global0.x, 15u)] >> (44761u % 32u)) >> (reverseBits(abs(~45454u)) % 32u), 88667u, abs(min(abs(global0.x & global2[_wgslsmith_index_u32(1u, 15u)]), 62007u)), ~(~_wgslsmith_div_u32(0u, 19927u)));
    global2 = array<u32, 15>();
    let var_3 = !(!((var_0.x != any(vec3<bool>(false, var_0.x, var_0.x))) && !all(vec4<bool>(false, false, var_0.x, true))));
    return any(var_0.xy);
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = -566f;
    var var_1 = 1u;
    let var_2 = all(!(!vec2<bool>(func_2(Struct_2(-2680i), Struct_3(vec2<f32>(var_0, 890f), Struct_1(u_input.c.x), Struct_1(1i)), u_input.c.x, global1[_wgslsmith_index_u32(55611u, 24u)]), any(vec4<bool>(true, true, true, true)))));
    let var_3 = vec4<bool>(!(!any(vec2<bool>(true, true))), func_3(), true, u_input.b <= u_input.c.x);
    var var_4 = Struct_3(vec2<f32>(var_0, _wgslsmith_f_op_f32(var_0 - _wgslsmith_div_f32(_wgslsmith_f_op_f32(1692f * var_0), _wgslsmith_f_op_f32(-var_0)))), Struct_1(-1i), Struct_1(-1i ^ _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(-1i, u_input.b, u_input.c.x, u_input.b)), firstTrailingBit(u_input.c.x), u_input.b)));
    return Struct_3(var_4.a, Struct_1(~abs(~(-1i))), var_4.c);
}

fn func_4(arg_0: Struct_3) -> StorageBuffer {
    let var_0 = u_input.d;
    global2 = array<u32, 15>();
    var var_1 = Struct_4(_wgslsmith_dot_vec3_u32(~(max(vec3<u32>(var_0.x, u_input.d.x, 4294967295u), vec3<u32>(13801u, 0u, 0u)) | select(u_input.d, vec3<u32>(4294967295u, global0.x, 0u), true)), select(u_input.d, vec3<u32>(global0.x, _wgslsmith_add_u32(var_0.x, global2[_wgslsmith_index_u32(var_0.x, 15u)]), ~var_0.x), !(u_input.c.x != u_input.b))), ~u_input.d, !(all(select(vec2<bool>(false, true), vec2<bool>(false, false), false)) & func_2(Struct_2(27598i), func_1(10289u), 39300i ^ arg_0.b.a, Struct_4(global2[_wgslsmith_index_u32(4294967295u, 15u)], vec3<u32>(2882u, 1u, var_0.x), true, Struct_1(31326i)))), arg_0.c);
    var_1 = Struct_4(_wgslsmith_add_u32(abs(var_1.b.x), _wgslsmith_mod_u32(_wgslsmith_mult_u32(6925u, var_0.x), 46023u)), var_1.b, false, arg_0.c);
    var var_2 = var_1.c;
    return StorageBuffer(vec2<u32>(~(~firstLeadingBit(global0.x)), min(1u, u_input.d.x)), ~countOneBits(u_input.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, -1288f, 1053f) - vec3<f32>(317f, arg_0.a.x, 2319f))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.a.x, 730f, arg_0.a.x), vec3<f32>(-1080f, arg_0.a.x, 550f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x) * vec3<f32>(arg_0.a.x, arg_0.a.x, -503f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1064f, 309f, 165f)))) * vec3<f32>(arg_0.a.x, -347f, _wgslsmith_f_op_f32(694f + 460f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -10866i;
    let var_1 = -22425i;
    let x = u_input.a;
    s_output = func_4(func_1(~(27159u & ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.x, 15u)], 15u)])));
}

