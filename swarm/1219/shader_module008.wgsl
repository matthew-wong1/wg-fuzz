struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-414f, -727f, 1516f, 459f);

var<private> global1: array<vec3<u32>, 11> = array<vec3<u32>, 11>(vec3<u32>(17809u, 1u, 2527u), vec3<u32>(4294967295u, 27483u, 19515u), vec3<u32>(36268u, 28846u, 9041u), vec3<u32>(20614u, 0u, 89912u), vec3<u32>(102009u, 1u, 37980u), vec3<u32>(1u, 24210u, 4294967295u), vec3<u32>(6752u, 67196u, 0u), vec3<u32>(0u, 4294967295u, 1715u), vec3<u32>(53628u, 32986u, 1547u), vec3<u32>(1u, 60039u, 4294967295u), vec3<u32>(4294967295u, 15946u, 13274u));

var<private> global2: bool;

var<private> global3: array<Struct_4, 22> = array<Struct_4, 22>(Struct_4(1i, 0u, Struct_1(-42974i, 1191f, 2147483647i, 42488u)), Struct_4(-3102i, 26310u, Struct_1(-16678i, -1000f, -20609i, 0u)), Struct_4(71125i, 1u, Struct_1(26327i, -1335f, 46884i, 14660u)), Struct_4(2147483647i, 62289u, Struct_1(2147483647i, -1805f, -1i, 4294967295u)), Struct_4(i32(-2147483648), 4294967295u, Struct_1(-4059i, 604f, 14929i, 1u)), Struct_4(-23224i, 19461u, Struct_1(2281i, 593f, -14757i, 0u)), Struct_4(2147483647i, 53805u, Struct_1(-1i, -324f, -24506i, 0u)), Struct_4(1i, 12671u, Struct_1(-41740i, -1134f, -1i, 4294967295u)), Struct_4(2147483647i, 4294967295u, Struct_1(21004i, 250f, -1i, 4294967295u)), Struct_4(0i, 4294967295u, Struct_1(-1i, 605f, -43290i, 1u)), Struct_4(2147483647i, 6971u, Struct_1(-13359i, 810f, 2147483647i, 1843u)), Struct_4(0i, 1u, Struct_1(8444i, 862f, -38290i, 4294967295u)), Struct_4(2147483647i, 4294967295u, Struct_1(2147483647i, 779f, -3081i, 1u)), Struct_4(2147483647i, 575u, Struct_1(4316i, 2650f, -59675i, 41430u)), Struct_4(13453i, 0u, Struct_1(23104i, 544f, 1i, 4294967295u)), Struct_4(-12570i, 0u, Struct_1(2147483647i, -3209f, -20000i, 0u)), Struct_4(1i, 29251u, Struct_1(-45737i, -2010f, 0i, 18341u)), Struct_4(-1i, 4294967295u, Struct_1(1i, 454f, 0i, 11515u)), Struct_4(2147483647i, 31038u, Struct_1(-12596i, -489f, 7677i, 0u)), Struct_4(15977i, 13219u, Struct_1(-18471i, -616f, 26506i, 4294967295u)), Struct_4(2147483647i, 0u, Struct_1(-36139i, -1210f, -15537i, 4294967295u)), Struct_4(1717i, 0u, Struct_1(65799i, -479f, -20687i, 43339u)));

var<private> global4: u32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-global0.wz);
    var var_1 = select(vec4<bool>(any(vec3<bool>(true, true, true)) || !all(vec3<bool>(false, true, true)), reverseBits(_wgslsmith_add_u32(0u, u_input.e.x)) < ~firstTrailingBit(2114u), ~select(u_input.e.x, u_input.d.x, false) == firstTrailingBit(4294967295u >> (u_input.e.x % 32u)), (-829f <= global0.x) || (-1511f != _wgslsmith_f_op_f32(var_0.x - global0.x))), vec4<bool>(select(true, _wgslsmith_mod_u32(1u, 1u) < (u_input.e.x | 0u), true), !all(vec2<bool>(false, false)), false, true), true);
    var var_2 = u_input.b.xxz;
    global1 = array<vec3<u32>, 11>();
    let var_3 = Struct_2(any(!vec3<bool>(any(vec4<bool>(var_1.x, var_1.x, false, true)), true, true)), Struct_1(-_wgslsmith_dot_vec3_i32(vec3<i32>(-27776i, var_2.x, u_input.b.x), _wgslsmith_mult_vec3_i32(vec3<i32>(11883i, u_input.c.x, 80787i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))), 138f, 64471i, abs(_wgslsmith_mult_u32(~u_input.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<u32>(u_input.d.x, u_input.e.x, u_input.d.x))))), Struct_1(_wgslsmith_dot_vec3_i32(u_input.b.yxy, -_wgslsmith_div_vec3_i32(u_input.c.zwx, u_input.c.zzy)), global0.x, -1i, firstTrailingBit(_wgslsmith_mult_u32(u_input.d.x, ~u_input.e.x))));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 35829u), ~(~u_input.d.yz)) ^ _wgslsmith_div_u32(firstTrailingBit(min(min(68946u, u_input.e.x), abs(1u))), ~u_input.e.x);
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> vec4<f32> {
    var var_0 = global0.xw;
    let var_1 = arg_0;
    global3 = array<Struct_4, 22>();
    global4 = 31992u;
    global4 = _wgslsmith_clamp_u32(u_input.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 53325u, func_3(), 0u | var_1.e.x) ^ ~vec4<u32>(23526u, arg_0.b, 0u, 4294967295u), vec4<u32>(~reverseBits(35237u), 11712u << (_wgslsmith_div_u32(21509u, u_input.e.x) % 32u), 4294967295u, ~4294967295u)), _wgslsmith_clamp_u32(~(~arg_0.b), max(1u, arg_1 << (36387u % 32u)), ~(~arg_0.e.x)) << (~abs(u_input.e.x) % 32u));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1029f, global0.x, -436f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(global0.x)), global0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-global0.x))), !vec4<bool>(true, true, var_1.a.x, arg_0.a.x))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_3(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), 1u, _wgslsmith_add_u32(32173u, arg_0) | 31668u, _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -1i, 23258i) << (vec3<u32>(arg_0, 18479u, 4294967295u) % vec3<u32>(32u)), -vec3<i32>(u_input.a, u_input.b.x, -22645i)), ~(~u_input.e)), 35867u << (func_3() % 32u))));
    var var_0 = all(!select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, false), arg_0 >= 0u), vec4<bool>(arg_0 >= u_input.e.x, true, true, select(false, false, true)), -521f != _wgslsmith_f_op_f32(global0.x * global0.x)));
    let var_1 = _wgslsmith_f_op_f32(ceil(-1000f));
    let var_2 = reverseBits(-min(~_wgslsmith_add_vec3_i32(vec3<i32>(46623i, u_input.c.x, u_input.a), vec3<i32>(-2147483647i, -2147483647i, u_input.b.x)), u_input.c.wzy | u_input.b.wzw));
    var_0 = true || !(!(-u_input.a >= _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(u_input.a, 2147483647i, 0i, u_input.a))));
    return Struct_1(~u_input.b.x, _wgslsmith_f_op_f32(max(1283f, -951f)), _wgslsmith_dot_vec2_i32(vec2<i32>(abs(abs(u_input.c.x)), ~(-u_input.c.x)), -u_input.c.xz), arg_0);
}

fn func_1() -> vec2<bool> {
    var var_0 = Struct_2((~11398u | _wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, 28566u, u_input.e.x), 1u)) <= u_input.d.x, func_2(1u), func_2(12665u));
    global1 = array<vec3<u32>, 11>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.www)))) * _wgslsmith_f_op_vec3_f32(global0.yxz - _wgslsmith_f_op_vec3_f32(step(global0.xzw, vec3<f32>(-1762f, global0.x, var_0.b.b))))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec4_f32(func_4(Struct_3(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), u_input.e.x << (u_input.e.x % 32u), var_0.b.d ^ 0u, firstTrailingBit(vec3<i32>(u_input.c.x, 0i, u_input.b.x)), u_input.e), var_0.c.d & var_0.c.d)).wzx, global0.yzw)));
    global1 = array<vec3<u32>, 11>();
    var_0 = Struct_2(var_0.a, Struct_1(u_input.c.x, 849f, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(u_input.b >> (vec4<u32>(0u, u_input.e.x, 15190u, u_input.d.x) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.c.x, u_input.c.x, u_input.a), u_input.c)), -var_0.c.c), _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(4294967295u, ~u_input.d.x, var_0.b.d))), var_0.c);
    return vec2<bool>(true, var_0.a);
}

fn func_5(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<bool>, arg_3: Struct_2) -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global0.x)))), global0.x)), global0.x, _wgslsmith_f_op_f32(-global0.x));
    let var_1 = u_input.c.zzw;
    let var_2 = ~_wgslsmith_sub_vec2_u32(~vec2<u32>(arg_3.c.d, 1u) ^ vec2<u32>(min(arg_1, 4294967295u), min(arg_1, arg_0.x)), ~(vec2<u32>(u_input.d.x, 4294967295u) << ((vec2<u32>(44652u, arg_3.c.d) & arg_0.xy) % vec2<u32>(32u))));
    let var_3 = arg_3.a;
    global1 = array<vec3<u32>, 11>();
    return ~arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec4<u32>(countOneBits(~u_input.e.x), u_input.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 1u, 61030u), vec3<u32>(u_input.d.x, 4294967295u, 0u) | u_input.d), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 37582u), vec2<u32>(u_input.d.x, u_input.d.x))));
    global1 = array<vec3<u32>, 11>();
    var var_1 = ~func_5(vec3<u32>(~1u, reverseBits(~12078u), ~(~u_input.d.x)), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u, ~17187u), ~_wgslsmith_add_u32(u_input.d.x, var_0.x), var_0.x), select(vec2<bool>(true, true), vec2<bool>(true, true), any(func_1())), Struct_2(true, func_2(_wgslsmith_mod_u32(var_0.x, var_0.x)), Struct_1(-54170i, _wgslsmith_f_op_f32(-898f * -1284f), 14368i, var_0.x)));
    var var_2 = global0.x;
    var var_3 = Struct_2(true, Struct_1(u_input.a | u_input.c.x, -1963f, 15847i, ~0u), func_2(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.d, vec3<u32>(u_input.d.x, var_0.x, var_0.x) ^ global1[_wgslsmith_index_u32(0u, 11u)], vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x)), global1[_wgslsmith_index_u32(86889u, 11u)])));
    let var_4 = ~vec2<u32>(~(~1u), 4294967295u) | vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.x, var_3.b.d), firstTrailingBit(vec3<u32>(var_3.c.d, 13727u, 0u))), 1u);
    let var_5 = u_input.c.wwy;
    var var_6 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

