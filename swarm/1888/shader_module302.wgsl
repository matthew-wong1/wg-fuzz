struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: Struct_2,
    d: u32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec3<u32> = vec3<u32>(64836u, 0u, 4294967295u);

var<private> global2: f32 = 1158f;

var<private> global3: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(vec2<bool>(false, false), true, Struct_2(1u, 1i, vec3<i32>(-1i, -44306i, 0i)), 7149u, vec4<u32>(57095u, 4294967295u, 0u, 0u)), Struct_3(vec2<bool>(false, false), true, Struct_2(4294967295u, -1i, vec3<i32>(-1i, 15895i, 0i)), 38912u, vec4<u32>(0u, 22298u, 7376u, 42933u)), Struct_3(vec2<bool>(true, false), false, Struct_2(10658u, -1i, vec3<i32>(-1i, -15399i, 0i)), 0u, vec4<u32>(4294967295u, 4294967295u, 35744u, 1u)), Struct_3(vec2<bool>(true, false), false, Struct_2(1u, 86665i, vec3<i32>(2147483647i, 0i, 2147483647i)), 25283u, vec4<u32>(4294967295u, 4294967295u, 31315u, 68579u)), Struct_3(vec2<bool>(false, true), false, Struct_2(70648u, -14147i, vec3<i32>(2147483647i, 1i, 11168i)), 1u, vec4<u32>(0u, 0u, 86383u, 4294967295u)), Struct_3(vec2<bool>(true, false), true, Struct_2(15847u, 18226i, vec3<i32>(-4824i, 1i, -1i)), 49686u, vec4<u32>(4294967295u, 4294967295u, 0u, 14134u)), Struct_3(vec2<bool>(true, true), false, Struct_2(1u, -22733i, vec3<i32>(1i, 2147483647i, 18861i)), 23876u, vec4<u32>(48892u, 33328u, 5686u, 0u)), Struct_3(vec2<bool>(true, true), false, Struct_2(2711u, 26543i, vec3<i32>(2832i, 0i, 0i)), 1u, vec4<u32>(13692u, 5885u, 38993u, 1u)), Struct_3(vec2<bool>(false, false), false, Struct_2(18286u, -21936i, vec3<i32>(12450i, 2147483647i, 1i)), 31631u, vec4<u32>(62044u, 4294967295u, 8910u, 1u)), Struct_3(vec2<bool>(false, true), false, Struct_2(92777u, 0i, vec3<i32>(i32(-2147483648), -29368i, 2147483647i)), 29408u, vec4<u32>(1u, 4294967295u, 1u, 21103u)), Struct_3(vec2<bool>(false, true), false, Struct_2(0u, 2147483647i, vec3<i32>(-27167i, 0i, -36009i)), 1u, vec4<u32>(44853u, 21792u, 4294967295u, 4294967295u)), Struct_3(vec2<bool>(true, true), false, Struct_2(30393u, -41990i, vec3<i32>(5351i, 2147483647i, 10721i)), 10772u, vec4<u32>(1u, 64552u, 43776u, 1u)), Struct_3(vec2<bool>(true, true), true, Struct_2(3324u, 0i, vec3<i32>(1973i, -51101i, 2147483647i)), 1u, vec4<u32>(4294967295u, 1u, 34496u, 38702u)), Struct_3(vec2<bool>(true, true), true, Struct_2(1u, 0i, vec3<i32>(1i, 1i, -1i)), 4294967295u, vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u)), Struct_3(vec2<bool>(false, true), false, Struct_2(4294967295u, -849i, vec3<i32>(2147483647i, i32(-2147483648), -1i)), 4294967295u, vec4<u32>(16693u, 11589u, 45479u, 4294967295u)), Struct_3(vec2<bool>(false, true), false, Struct_2(46596u, -17240i, vec3<i32>(2147483647i, -11935i, 45683i)), 1u, vec4<u32>(0u, 34922u, 2151u, 4294967295u)), Struct_3(vec2<bool>(true, false), false, Struct_2(4294967295u, 41916i, vec3<i32>(2147483647i, -14495i, -19265i)), 0u, vec4<u32>(15205u, 39303u, 0u, 23281u)), Struct_3(vec2<bool>(true, true), true, Struct_2(69391u, -3366i, vec3<i32>(0i, -8161i, -5277i)), 4294967295u, vec4<u32>(1u, 0u, 10221u, 80528u)), Struct_3(vec2<bool>(true, true), true, Struct_2(21238u, 0i, vec3<i32>(2147483647i, 0i, 0i)), 0u, vec4<u32>(78088u, 0u, 4025u, 1u)), Struct_3(vec2<bool>(false, true), false, Struct_2(4294967295u, 65948i, vec3<i32>(-1i, 1i, -56346i)), 1u, vec4<u32>(19096u, 21982u, 24638u, 39u)), Struct_3(vec2<bool>(true, true), true, Struct_2(46990u, 1i, vec3<i32>(0i, 2147483647i, -1i)), 27296u, vec4<u32>(0u, 0u, 1u, 129757u)), Struct_3(vec2<bool>(false, true), false, Struct_2(1u, 1i, vec3<i32>(-7523i, i32(-2147483648), 0i)), 0u, vec4<u32>(4294967295u, 0u, 18115u, 20131u)), Struct_3(vec2<bool>(true, false), false, Struct_2(1u, 2707i, vec3<i32>(-1i, i32(-2147483648), -87259i)), 1u, vec4<u32>(0u, 4294967295u, 0u, 0u)), Struct_3(vec2<bool>(true, true), true, Struct_2(12145u, -20153i, vec3<i32>(0i, 1i, 1i)), 0u, vec4<u32>(15515u, 50248u, 1u, 1u)), Struct_3(vec2<bool>(true, true), true, Struct_2(76089u, 2147483647i, vec3<i32>(-1i, 1i, 0i)), 109263u, vec4<u32>(7916u, 66298u, 35956u, 20107u)), Struct_3(vec2<bool>(true, false), false, Struct_2(1u, 2147483647i, vec3<i32>(1i, 30680i, 24438i)), 0u, vec4<u32>(12682u, 0u, 0u, 0u)));

var<private> global4: array<Struct_1, 31>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> u32 {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_add_u32(26914u, ~4294967295u), reverseBits(_wgslsmith_div_u32(~25586u, _wgslsmith_mult_u32(u_input.a.x, global1.x))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, -525f)));
    return global1.x;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: f32, arg_3: Struct_2) -> u32 {
    let var_0 = 938f;
    let var_1 = Struct_2(~u_input.a.x, 45441i, _wgslsmith_div_vec3_i32(select(-_wgslsmith_mod_vec3_i32(arg_3.c, arg_3.c), vec3<i32>(-arg_3.b, arg_3.b, ~arg_3.c.x), !select(vec3<bool>(true, false, true), vec3<bool>(true, arg_0.a, arg_0.a), arg_0.a)), arg_3.c));
    var var_2 = Struct_3(!vec2<bool>(any(!vec2<bool>(arg_0.a, false)), arg_1.x), true, arg_3, var_1.a, abs(select(~max(vec4<u32>(1u, u_input.a.x, 1u, 0u), vec4<u32>(var_1.a, 4294967295u, 1u, 4294967295u)), firstLeadingBit(vec4<u32>(var_1.a, 1u, var_1.a, 10788u)), select(select(vec4<bool>(true, arg_0.a, true, arg_1.x), vec4<bool>(false, arg_0.a, arg_1.x, arg_1.x), arg_1.x), vec4<bool>(false, false, arg_0.a, arg_0.a), !vec4<bool>(true, true, arg_0.a, true)))));
    global2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2, -881f) - global0.x);
    global3 = array<Struct_3, 26>();
    return _wgslsmith_dot_vec2_u32(abs(_wgslsmith_mod_vec2_u32(global1.yz, ~vec2<u32>(global1.x, global1.x))), ~global1.zx);
}

fn func_2() -> Struct_5 {
    let var_0 = Struct_2(~(~u_input.a.x), _wgslsmith_mult_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(13506i, -1i)) ^ -6857i) ^ 1i, countOneBits(~(~firstLeadingBit(vec3<i32>(-144i, 1i, 0i)))));
    let var_1 = global3[_wgslsmith_index_u32(0u, 26u)];
    let var_2 = -_wgslsmith_add_i32(var_0.b, -(i32(-1i) * -var_0.c.x));
    let var_3 = Struct_1(!(_wgslsmith_f_op_f32(floor(global0.x)) < _wgslsmith_f_op_f32(-689f * global0.x)) || (-26643i >= var_2));
    return Struct_5(global3[_wgslsmith_index_u32(func_3(var_3, select(select(var_1.a, select(vec2<bool>(var_1.b, var_3.a), vec2<bool>(var_1.b, var_1.b), true), var_1.a), select(select(vec2<bool>(false, false), var_1.a, var_3.a), select(var_1.a, vec2<bool>(var_3.a, var_1.b), vec2<bool>(true, false)), var_1.a), firstLeadingBit(var_1.e.x) != var_1.d), _wgslsmith_f_op_f32(-532f * _wgslsmith_f_op_f32(abs(-1363f))), var_1.c), 26u)], select(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.e.x, 0u, 1u), vec3<u32>(u_input.a.x, 90678u, global1.x))), vec3<u32>(min(4294967295u, 36860u), var_1.c.a, 4294967295u), !(!(!vec3<bool>(var_1.b, false, var_3.a)))));
}

fn func_4(arg_0: Struct_5) -> f32 {
    global2 = _wgslsmith_f_op_f32(ceil(global0.x));
    global1 = vec3<u32>(~global1.x, 57149u, max(~45497u, reverseBits(arg_0.b.x)));
    let var_0 = Struct_4(global4[_wgslsmith_index_u32(abs(max(arg_0.a.e.x, ~(90937u >> (0u % 32u)))), 31u)], Struct_1(func_2().a.b));
    var var_1 = var_0;
    global2 = 784f;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.x, global0.x), global0.x)), global0.x, func_2().a.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec4<u32>(u_input.a.x, func_1(Struct_1(false), -1000f), ~_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), u_input.a.x));
    let var_1 = var_0.x;
    global2 = _wgslsmith_div_f32(760f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(358f))), true)))));
    let var_2 = func_2().a.c;
    let var_3 = Struct_5(Struct_3(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true))), false, var_2, ~26527u, ~(~abs(vec4<u32>(var_1, u_input.a.x, var_2.a, 49879u)))), var_0.zwy);
    let var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(var_2.c.xy, var_4.a.c.c.zz), -var_4.a.c.b), firstLeadingBit(1i & var_4.a.c.c.x), var_3.a.c.c, -6045i, -1i);
}

