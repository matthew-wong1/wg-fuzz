struct Struct_1 {
    a: f32,
    b: u32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(-811f, 66966u, 44121u, 35827u), Struct_1(497f, 0u, 47449u, 26833u), Struct_1(906f, 71706u, 0u, 5036u), Struct_1(658f, 17528u, 1u, 1u), Struct_1(-266f, 50749u, 1u, 6438u), Struct_1(-897f, 4294967295u, 0u, 0u), Struct_1(1443f, 31813u, 0u, 13730u), Struct_1(-1878f, 38978u, 13179u, 69322u), Struct_1(-429f, 1u, 4294967295u, 24727u), Struct_1(-245f, 8215u, 40236u, 47403u), Struct_1(1069f, 2895u, 4294967295u, 39589u), Struct_1(-481f, 0u, 1u, 0u), Struct_1(1312f, 4294967295u, 4294967295u, 106346u), Struct_1(-1521f, 1u, 76261u, 4294967295u), Struct_1(-738f, 3413u, 4294967295u, 11050u), Struct_1(443f, 31324u, 1u, 4294967295u), Struct_1(-722f, 4294967295u, 1u, 12185u), Struct_1(1000f, 0u, 60304u, 4294967295u));

var<private> global1: array<vec4<i32>, 31>;

var<private> global2: array<vec3<bool>, 23> = array<vec3<bool>, 23>(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2() -> vec2<bool> {
    global2 = array<vec3<bool>, 23>();
    let var_0 = -35568i;
    let var_1 = !(~firstTrailingBit(select(50810u, 1u, true)) == 42989u);
    global2 = array<vec3<bool>, 23>();
    global1 = array<vec4<i32>, 31>();
    return vec2<bool>(var_1, false);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_4(global2[_wgslsmith_index_u32(0u, 23u)], Struct_3(arg_1.a, Struct_2(arg_1.a, 19620u), arg_1.a, !arg_0.x, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1.b << ((4294967295u | u_input.a) % 32u), min(16383u, arg_2.x) | _wgslsmith_mult_u32(arg_2.x, 77299u)), 18u)]), ~vec2<i32>(2147483647i, _wgslsmith_sub_i32(-1i, ~(-1i))));
    var var_1 = var_0.b.b;
    global2 = array<vec3<bool>, 23>();
    var var_2 = Struct_4(select(select(var_0.a, !select(var_0.a, vec3<bool>(var_0.b.d, true, var_0.a.x), global2[_wgslsmith_index_u32(0u, 23u)]), (var_0.a.x != var_0.a.x) | any(vec3<bool>(false, arg_0.x, var_0.b.d))), var_0.a, !(!(!vec3<bool>(var_0.a.x, false, arg_0.x)))), var_0.b, _wgslsmith_mult_vec2_i32(-(vec2<i32>(1i, var_0.c.x) >> (arg_2.ww % vec2<u32>(32u))) << (arg_2.wz % vec2<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec2_i32(-var_0.c, vec2<i32>(-1i, u_input.c)), var_0.c.x)));
    var_0 = Struct_4(vec3<bool>(any(vec2<bool>(true, true)), true, var_0.c.x != var_2.c.x), Struct_3(Struct_1(-100f, _wgslsmith_dot_vec4_u32(arg_2, vec4<u32>(var_2.b.b.a.c, 10158u, var_0.b.a.b, 0u)), ~var_2.b.a.d | (4294967295u << (arg_1.a.b % 32u)), _wgslsmith_mult_u32(_wgslsmith_add_u32(1u, 0u), var_2.b.b.b)), Struct_2(Struct_1(_wgslsmith_f_op_f32(var_1.a.a - arg_1.a.a), arg_2.x, _wgslsmith_mod_u32(var_2.b.a.d, 6287u), ~var_2.b.e.b), var_0.b.a.d), Struct_1(var_2.b.e.a, 14092u, 1u << (_wgslsmith_add_u32(44219u, arg_2.x) % 32u), 0u), !(!all(var_2.a.zz)), var_1.a), vec2<i32>(var_0.c.x, -_wgslsmith_add_i32(-var_2.c.x, -1i)));
    return Struct_2(Struct_1(var_2.b.c.a, 48053u, u_input.a, abs(arg_1.a.c)), 4294967295u);
}

fn func_1() -> StorageBuffer {
    var var_0 = func_3(select(func_2(), vec2<bool>(false, select(0u, 23683u, true) <= ~41237u), vec2<bool>(true, true)), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-377f, 183f)), 41743u ^ u_input.a, max(u_input.d & u_input.d, 7002u), ~(~63143u)), 4294967295u), _wgslsmith_mod_vec4_u32(max(abs(~vec4<u32>(4829u, u_input.a, 1u, 1u)), ~vec4<u32>(u_input.d, 21613u, 21017u, 1u)), firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.a, u_input.b), vec4<u32>(u_input.a, 53180u, u_input.a, 42201u))) | vec4<u32>(1u, countOneBits(u_input.a), ~u_input.d, u_input.a & u_input.b)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a.a)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-409f)) + var_0.a.a)))), 4294967295u, _wgslsmith_sub_u32(~u_input.b, _wgslsmith_div_u32(_wgslsmith_mod_u32(var_0.a.b >> (u_input.d % 32u), reverseBits(1u)), max(1u, u_input.a) & ~u_input.b)), _wgslsmith_mult_u32(4294967295u, 1u));
    global2 = array<vec3<bool>, 23>();
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, -329f))), _wgslsmith_div_f32(var_1.a, 849f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.a, _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-1621f * -617f))), _wgslsmith_f_op_f32(exp2(var_0.a.a))))));
    var var_3 = all(select(vec4<bool>(func_2().x, true, all(!global2[_wgslsmith_index_u32(var_0.a.d, 23u)]), true), vec4<bool>((u_input.d <= var_0.b) || any(global2[_wgslsmith_index_u32(50459u, 23u)]), false, !(u_input.c > -1i), true), vec4<bool>(u_input.b <= var_1.d, true, true, all(vec4<bool>(true, true, true, false)))));
    return StorageBuffer(-32624i, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b, 6939u, 1u, 50556u), vec4<u32>(var_1.b, var_0.b, u_input.a, var_1.b) << (vec4<u32>(var_0.b, var_0.a.d, 1u, 0u) % vec4<u32>(32u)), ~vec4<u32>(15417u, 1u, 0u, var_0.a.b)) | vec4<u32>(30756u, ~0u << (~u_input.b % 32u), ~var_1.d, max(17473u, 0u) & ~var_0.b), _wgslsmith_sub_u32(4294967295u, ~min(12543u, 0u) << (~(var_0.a.c & u_input.b) % 32u)), var_1.a, global1[_wgslsmith_index_u32(4294967295u, 31u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 18>();
    var var_0 = vec3<u32>(u_input.a, u_input.d, 22300u);
    var var_1 = vec4<u32>(~1u, ~0u, 9651u, firstTrailingBit(var_0.x));
    let x = u_input.a;
    s_output = func_1();
}

