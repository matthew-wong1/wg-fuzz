struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: vec4<i32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 6> = array<vec4<u32>, 6>(vec4<u32>(0u, 59304u, 70918u, 39558u), vec4<u32>(46894u, 51049u, 1u, 4294967295u), vec4<u32>(4294967295u, 30334u, 0u, 11325u), vec4<u32>(0u, 4294967295u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 51484u), vec4<u32>(32313u, 0u, 584u, 11466u));

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = array<vec4<u32>, 6>();
    global1 = vec3<bool>(any(global1.zx), global1.x, false);
    let var_0 = u_input.a;
    var var_1 = ~vec2<u32>(0u, (arg_0.c >> (1u % 32u)) << (arg_0.c % 32u));
    global0 = array<vec4<u32>, 6>();
    return arg_0;
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = ~(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c, arg_0.c), vec2<u32>(1u, 51751u)), firstTrailingBit(arg_0.c)) & arg_0.c);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.b.x, _wgslsmith_div_f32(459f, 192f))));
    global0 = array<vec4<u32>, 6>();
    global0 = array<vec4<u32>, 6>();
    var var_2 = !(!vec4<bool>(!(u_input.a < 6993i), true, (120106u ^ arg_0.c) > countOneBits(69144u), func_2(arg_0).c >= max(arg_0.c, 22486u)));
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> vec3<bool> {
    global0 = array<vec4<u32>, 6>();
    var var_0 = Struct_1(_wgslsmith_mult_vec2_i32(arg_0.a, countOneBits(arg_1.c.zx)), arg_0.b, firstLeadingBit(0u), (any(!vec4<bool>(false, false, arg_2, arg_1.d)) & (arg_2 || arg_0.d)) || any(arg_1.a));
    let var_1 = arg_1;
    var var_2 = arg_1;
    let var_3 = arg_0;
    return select(arg_1.a, var_1.a, arg_1.a);
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec3<u32>) -> u32 {
    let var_0 = func_4(func_2(Struct_1(min(_wgslsmith_mult_vec2_i32(vec2<i32>(-28378i, u_input.a), vec2<i32>(u_input.a, -1i)), vec2<i32>(u_input.a, u_input.a)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1930f, 619f))))), arg_1, true)), Struct_2(vec3<bool>(func_3(Struct_1(vec2<i32>(u_input.a, u_input.a), vec2<f32>(150f, -1664f), 0u, false)), true, select(all(vec4<bool>(false, global1.x, global1.x, true)), all(vec3<bool>(false, true, false)), true)), _wgslsmith_div_u32(68585u, _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(~arg_2.x, 6u)], ~global0[_wgslsmith_index_u32(arg_2.x, 6u)])), -firstLeadingBit(-vec4<i32>(-2822i, u_input.a, u_input.a, u_input.a)), true), true);
    let var_1 = Struct_1(_wgslsmith_mod_vec2_i32(firstTrailingBit(reverseBits(-vec2<i32>(-2147483647i, -2147483647i))), vec2<i32>(min(2147483647i, u_input.a >> (0u % 32u)), 0i)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(352f * -433f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-611f))))), arg_2.x, max(0u, 10083u) >= (select(_wgslsmith_dot_vec2_u32(vec2<u32>(40405u, arg_0), vec2<u32>(34722u, 54212u)), min(arg_0, arg_0), var_0.x) ^ arg_2.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.b.x, var_1.b.x, -3282f))))))));
    var var_3 = Struct_2(!(!vec3<bool>(all(vec2<bool>(var_0.x, global1.x)), func_3(Struct_1(var_1.a, var_1.b, 16825u, false)), false)), firstLeadingBit(arg_0), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a.x, i32(-1i) * -1717i, _wgslsmith_div_i32(var_1.a.x, u_input.a), i32(-1i) * -1i) << (vec4<u32>(~arg_0, _wgslsmith_sub_u32(var_1.c, arg_1), arg_1 >> (arg_1 % 32u), ~arg_0) % vec4<u32>(32u)), vec4<i32>(-1i, var_1.a.x, 51893i, ~var_1.a.x)), var_1.d);
    var var_4 = var_2.x;
    return ~arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (1u << (~_wgslsmith_clamp_u32(~1u, abs(4294967295u), 0u << (1u % 32u)) % 32u)) != 1u;
    var var_1 = select(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, ~0u, 1583u), vec4<u32>(func_1(3440u, 29537u, vec3<u32>(4294967295u, 13043u, 119716u)), 1u, _wgslsmith_mod_u32(1u, 1u), 1u)), 4294967295u, false);
    let var_2 = Struct_2(!func_4(func_2(func_2(Struct_1(vec2<i32>(26518i, -11839i), vec2<f32>(-1106f, 296f), 0u, var_0))), Struct_2(vec3<bool>(true, true, true), _wgslsmith_div_u32(47352u, 17083u), max(vec4<i32>(u_input.a, -17955i, 2147483647i, -29741i), vec4<i32>(-1i, u_input.a, -58617i, -54899i)), global1.x), func_4(func_2(Struct_1(vec2<i32>(u_input.a, 64978i), vec2<f32>(-282f, -1069f), 1u, false)), Struct_2(vec3<bool>(var_0, false, false), 47697u, vec4<i32>(-52927i, u_input.a, -23465i, u_input.a), var_0), func_2(Struct_1(vec2<i32>(u_input.a, -9058i), vec2<f32>(669f, -793f), 55102u, var_0)).d).x), max(~(~reverseBits(80584u)), 1u), vec4<i32>(max(23515i, ~func_2(Struct_1(vec2<i32>(u_input.a, u_input.a), vec2<f32>(601f, 770f), 43605u, true)).a.x), _wgslsmith_mult_i32(1i, u_input.a), u_input.a, 6589i), false);
    var var_3 = var_2.c.wxz;
    var var_4 = func_2(func_2(func_2(func_2(Struct_1(vec2<i32>(var_3.x, u_input.a), vec2<f32>(-972f, 834f), var_2.b, var_0)))));
    var_1 = 0u;
    let var_5 = Struct_2(!select(var_2.a, vec3<bool>(true, true, var_2.d), global1.x), var_4.c, -vec4<i32>(abs(~var_4.a.x), _wgslsmith_mod_i32(~u_input.a, -18058i), firstLeadingBit(-6648i), select(u_input.a, -2147483647i, false) << (var_2.b % 32u)), !var_0);
    let var_6 = Struct_2(!vec3<bool>(!var_0, var_2.a.x, _wgslsmith_f_op_f32(sign(-763f)) >= func_2(Struct_1(vec2<i32>(2147483647i, var_3.x), var_4.b, 1u, var_4.d)).b.x), ~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(10448u, 5028u, 52701u, var_5.b), vec4<u32>(7598u, var_2.b, 46181u, var_5.b) & global0[_wgslsmith_index_u32(20169u, 6u)]), select(~global0[_wgslsmith_index_u32(var_4.c, 6u)], ~global0[_wgslsmith_index_u32(var_5.b, 6u)], !vec4<bool>(false, var_2.d, true, var_4.d))), var_2.c, !all(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(var_2.a.x, global1.x, var_2.a.x, var_0)), !vec4<bool>(true, true, false, var_2.d), func_3(Struct_1(vec2<i32>(24670i, -2147483647i), vec2<f32>(var_4.b.x, 1114f), var_5.b, true)))));
    var var_7 = ~1i;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_4.b.x, -1362f, var_4.b.x), vec3<f32>(103f, var_4.b.x, -1000f), var_2.a))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -183f), var_4.b.x, _wgslsmith_f_op_f32(abs(var_4.b.x))))), var_4.b.x, _wgslsmith_add_vec2_u32(min(countOneBits(~vec2<u32>(var_2.b, var_4.c)), ~vec2<u32>(var_2.b, 61054u) >> (~vec2<u32>(1u, var_4.c) % vec2<u32>(32u))), firstTrailingBit(vec2<u32>(_wgslsmith_mod_u32(var_4.c, var_4.c), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(var_5.b, var_2.b))))));
}

