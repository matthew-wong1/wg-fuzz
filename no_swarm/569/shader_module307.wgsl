struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(true, vec2<i32>(-51996i, -7195i), vec4<u32>(13402u, 21486u, 1u, 0u), 30529i), Struct_1(true, vec2<i32>(0i, -26444i), vec4<u32>(0u, 4294967295u, 47412u, 45942u), 1i));

var<private> global1: array<Struct_1, 30>;

var<private> global2: u32 = 30762u;

var<private> global3: array<Struct_1, 6>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_dot_vec2_i32(u_input.b, u_input.b ^ vec2<i32>(-14116i, u_input.c.x));
    var_0 = 1i;
    let var_1 = vec3<i32>(abs(-16833i), -abs(-2147483647i), -19847i);
    global1 = array<Struct_1, 30>();
    global3 = array<Struct_1, 6>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1082f + -462f));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> vec2<bool> {
    global1 = array<Struct_1, 30>();
    global2 = ~arg_1.c.x;
    return !vec2<bool>(false, arg_0.a);
}

fn func_3(arg_0: i32) -> u32 {
    global3 = array<Struct_1, 6>();
    var var_0 = Struct_1(true, firstTrailingBit(vec2<i32>(~(~(-8598i)), ~_wgslsmith_sub_i32(1i, 2147483647i))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(31237u, ~u_input.d, u_input.d, u_input.d), _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.d, u_input.e, 0u), ~vec4<u32>(u_input.d, 0u, u_input.d, 76752u)), (vec4<u32>(u_input.e, u_input.e, 4294967295u, u_input.d) & vec4<u32>(u_input.d, u_input.d, 0u, u_input.e)) | vec4<u32>(u_input.e, 0u, 19989u, 1243u)), -min(abs(arg_0) ^ u_input.c.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.c.x, arg_0), u_input.c.yyx)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1882f + -468f), 374f) + 1160f);
    let var_2 = var_0.c.yz;
    let var_3 = global0[_wgslsmith_index_u32(var_0.c.x, 2u)];
    return 36742u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 30>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_1()), 939f, 1000f);
    let var_1 = vec4<bool>(all(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false))), any(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(false, false)), select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), select(false, true, false)), true)), min(_wgslsmith_clamp_i32(-u_input.c.x, ~2147483647i, ~(-1i)), ~2236i) != 26668i, any(!select(func_2(global0[_wgslsmith_index_u32(u_input.e, 2u)], Struct_1(true, u_input.c.yy, vec4<u32>(u_input.e, 21637u, 56193u, 41272u), 1i), u_input.c), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), true))));
    global2 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(~func_3(u_input.c.x), abs(reverseBits(u_input.d) >> (u_input.d % 32u))), 4294967295u);
    global2 = ~u_input.d >> (u_input.e % 32u);
    let var_2 = !select(any(select(var_1.xx, func_2(global0[_wgslsmith_index_u32(u_input.e, 2u)], Struct_1(false, vec2<i32>(-15828i, 26332i), vec4<u32>(u_input.d, 1u, u_input.d, u_input.e), u_input.a), u_input.c), select(vec2<bool>(true, false), vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, true)))), var_1.x, any(var_1.yz));
    global0 = array<Struct_1, 2>();
    global2 = ~_wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_div_u32(18514u, u_input.d)), 1u, _wgslsmith_add_u32(~1u, u_input.d)) ^ select(~(u_input.d ^ u_input.e), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(15785u, u_input.d, 1u, 14866u), min(vec4<u32>(1u, u_input.d, 1u, u_input.e), vec4<u32>(u_input.e, 1u, 80668u, 50744u))), firstTrailingBit(vec4<u32>(u_input.e, 26871u, u_input.d, u_input.d))), false);
    var var_3 = Struct_1(2594i <= _wgslsmith_add_i32(max(u_input.c.x, -37871i), ~26764i), firstTrailingBit(vec2<i32>(_wgslsmith_clamp_i32(1i, -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, -29306i, u_input.b.x), u_input.c)), u_input.a >> (1u % 32u))), ~(~min(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e, u_input.e, u_input.e, 37632u), vec4<u32>(49020u, u_input.e, u_input.e, u_input.d)), vec4<u32>(1u, u_input.e, u_input.e, u_input.e) << (vec4<u32>(4294967295u, 4294967295u, u_input.e, 0u) % vec4<u32>(32u)))), _wgslsmith_clamp_i32(11389i, 1i, 0i));
    let x = u_input.a;
    s_output = StorageBuffer(1i, u_input.a, vec3<u32>(~(~1u), u_input.d, _wgslsmith_mult_u32(var_3.c.x, u_input.d)));
}

