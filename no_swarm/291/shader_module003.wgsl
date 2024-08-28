struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_3 = Struct_3(vec3<u32>(10631u, 4297u, 80084u), vec4<u32>(2480u, 40761u, 360u, 0u), Struct_1(false), Struct_2(1453u, Struct_1(false), vec4<f32>(687f, 590f, -958f, 514f), Struct_1(false)));

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = global1.a.zy;
    global1 = Struct_3(firstLeadingBit(~vec3<u32>(reverseBits(global1.a.x), reverseBits(1u), var_0.x)), global1.b, global1.d.d, global1.d);
    let var_1 = global1.d.c.zzx;
    global1 = Struct_3(vec3<u32>(select(min(1u, global1.d.a) ^ select(35127u, 10484u, false), 1u, true), abs(_wgslsmith_clamp_u32(reverseBits(u_input.b), reverseBits(15251u), 0u ^ global1.d.a)), var_0.x), global1.b, Struct_1(true && global1.d.d.a), global1.d);
    let var_2 = Struct_4(Struct_2(u_input.b, global1.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(-353f, -342f, global1.c.a)), _wgslsmith_f_op_f32(floor(global1.d.c.x)), global1.d.c.x, global1.d.c.x)), Struct_1(true)));
    return ~((~27829u ^ (global1.b.x >> (6329u % 32u))) >> (global1.a.x % 32u));
}

fn func_2() -> Struct_3 {
    global1 = Struct_3(max(vec3<u32>(firstTrailingBit(u_input.b | u_input.b), 1u, max(~u_input.b, select(global1.b.x, global1.a.x, false))), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(select(global1.a, global1.a, global1.d.b.a), select(vec3<u32>(global1.b.x, 1u, 0u), vec3<u32>(u_input.b, 0u, u_input.b), vec3<bool>(true, global1.c.a, false)), reverseBits(vec3<u32>(u_input.b, global1.b.x, global1.d.a))), global1.b.zxw)), vec4<u32>(0u << (_wgslsmith_div_u32(_wgslsmith_sub_u32(46595u, 33450u), max(18820u, u_input.b)) % 32u), 0u, func_3(~u_input.a), 31364u), global1.d.b, Struct_2(4294967295u, Struct_1(4294967295u >= ~u_input.b), global1.d.c, global1.c));
    global1 = Struct_3(vec3<u32>(_wgslsmith_mult_u32(u_input.b, 4294967295u), u_input.b ^ 1u, ~global1.b.x) | global1.b.ywy, select(~global1.b, select(vec4<u32>(~global1.b.x, abs(u_input.b), reverseBits(1u), 15266u), vec4<u32>(global1.d.a, ~global1.a.x, global1.a.x, ~global1.a.x), select(u_input.b != global1.b.x, !global1.c.a, u_input.b >= 45550u)), all(select(vec2<bool>(false, false), select(vec2<bool>(global1.d.b.a, global1.d.b.a), vec2<bool>(global1.c.a, true), vec2<bool>(false, false)), any(vec2<bool>(global1.c.a, true))))), global1.c, global1.d);
    let var_0 = global1.d.b.a;
    global1 = Struct_3(~global1.a, global1.b, Struct_1(global1.c.a), Struct_2(_wgslsmith_mult_u32(u_input.b, 1u) << (_wgslsmith_div_u32(abs(global1.d.a), u_input.b) % 32u), global1.d.d, _wgslsmith_f_op_vec4_f32(global1.d.c * vec4<f32>(_wgslsmith_f_op_f32(min(global1.d.c.x, global1.d.c.x)), global1.d.c.x, _wgslsmith_div_f32(-1379f, -1186f), _wgslsmith_f_op_f32(f32(-1f) * -1242f))), global1.d.b));
    var var_1 = global1.c;
    return Struct_3(global1.b.zww << (~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 45057u, global1.d.a) << (vec3<u32>(u_input.b, 29261u, global1.d.a) % vec3<u32>(32u)), firstLeadingBit(global1.a)) % vec3<u32>(32u)), reverseBits(global1.b | ~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 10994u, u_input.b, global1.d.a), vec4<u32>(11862u, global1.b.x, global1.b.x, u_input.b))), global1.c, global1.d);
}

fn func_1(arg_0: vec4<i32>) -> Struct_3 {
    global0 = min(~(1u >> (~global1.a.x % 32u)), _wgslsmith_clamp_u32(0u, global1.d.a, ~u_input.b)) > 22013u;
    var var_0 = vec3<u32>(global1.b.x, ~4294967295u, global1.a.x);
    var_0 = ~(~global1.a);
    let var_1 = Struct_1(!(all(!vec4<bool>(global1.c.a, global1.c.a, true, global1.d.d.a)) & true));
    global1 = func_2();
    return Struct_3(abs(select(_wgslsmith_mod_vec3_u32(global1.b.ywx, vec3<u32>(23127u, var_0.x, 4294967295u)) & countOneBits(global1.b.ywx), vec3<u32>(u_input.b | 1u, ~u_input.b, ~var_0.x), false)), global1.b, Struct_1(global1.c.a), Struct_2(_wgslsmith_mod_u32(reverseBits(firstTrailingBit(global1.d.a)), 8209u), Struct_1(!any(vec4<bool>(false, false, global1.c.a, false))), global1.d.c, global1.d.d));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(vec4<i32>(47342i, u_input.a, 1i, 51333i));
    var var_0 = Struct_4(global1.d);
    global1 = Struct_3(global1.b.xxy, abs(~(~max(vec4<u32>(8650u, 6890u, global1.a.x, global1.d.a), vec4<u32>(0u, 1u, 4294967295u, 0u)))), func_1(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, -143i, -2147483647i), vec4<i32>(-15852i, u_input.a, -7183i, 13878i)))).c, Struct_2(_wgslsmith_sub_u32(u_input.b, 146513u), func_1(_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, 0i, u_input.a, u_input.a)), vec4<i32>(-1i, 2147483647i, -46305i, 35188i))).d.d, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.d.c.x, global1.d.c.x, var_0.a.c.x, var_0.a.c.x))))), Struct_1(true)));
    let var_1 = _wgslsmith_f_op_f32(-global1.d.c.x);
    var var_2 = vec2<bool>(all(vec4<bool>(true, any(select(vec4<bool>(true, false, var_0.a.b.a, true), vec4<bool>(true, false, true, true), var_0.a.b.a)), false, !global1.d.d.a)), true);
    let var_3 = Struct_4(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(-(~countOneBits(vec2<i32>(2147483647i, -5505i)))), select(_wgslsmith_mult_vec4_u32(vec4<u32>(func_1(vec4<i32>(u_input.a, u_input.a, 0i, u_input.a)).d.a, min(44440u, global1.d.a), ~var_3.a.a, _wgslsmith_sub_u32(40532u, u_input.b)), reverseBits(vec4<u32>(u_input.b, 28994u, var_3.a.a, u_input.b))), firstTrailingBit(vec4<u32>(18828u, global1.d.a, 21642u, 8430u) << (~global1.b % vec4<u32>(32u))), !var_3.a.b.a), -u_input.a, u_input.a, -1i << ((~(~u_input.b) & ~_wgslsmith_dot_vec3_u32(global1.b.zyy, global1.b.xwz)) % 32u));
}

