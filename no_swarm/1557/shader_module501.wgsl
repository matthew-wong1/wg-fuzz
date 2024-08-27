struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: f32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
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

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(false, vec2<i32>(1i, 0i), 1i, -2700i), Struct_1(true, vec2<i32>(9105i, i32(-2147483648)), i32(-2147483648), 2147483647i), Struct_1(false, vec2<i32>(1i, i32(-2147483648)), 1i, 1i), Struct_1(false, vec2<i32>(27366i, 9052i), 22269i, 1i), Struct_1(false, vec2<i32>(2147483647i, 2147483647i), -1i, -31812i), Struct_1(false, vec2<i32>(-49912i, -1i), -1i, 1i), Struct_1(false, vec2<i32>(i32(-2147483648), -20492i), 16787i, 40295i), Struct_1(true, vec2<i32>(0i, 5544i), 1i, 0i), Struct_1(false, vec2<i32>(1i, 2147483647i), 38519i, 1i), Struct_1(false, vec2<i32>(48169i, i32(-2147483648)), 0i, -21085i), Struct_1(false, vec2<i32>(8439i, 6815i), i32(-2147483648), i32(-2147483648)), Struct_1(true, vec2<i32>(-1i, -10350i), 22561i, 1i));

var<private> global2: array<Struct_3, 13>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: bool, arg_3: vec4<f32>) -> u32 {
    let var_0 = _wgslsmith_div_vec2_u32(~(~_wgslsmith_sub_vec2_u32(~global0.zy, global0.xx)), ~(global0.xx >> (max(_wgslsmith_clamp_vec2_u32(u_input.b, vec2<u32>(global0.x, 22430u), vec2<u32>(u_input.b.x, global0.x)), _wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(4294967295u, 7222u))) % vec2<u32>(32u))));
    global0 = ~select(vec3<u32>(21035u, 25257u, 0u), ~(vec3<u32>(12430u, 1u, u_input.b.x) >> (firstLeadingBit(vec3<u32>(var_0.x, u_input.b.x, 1u)) % vec3<u32>(32u))), select(select(!vec3<bool>(arg_1, true, false), vec3<bool>(true, arg_2, true), vec3<bool>(false, true, true)), vec3<bool>(!arg_2, u_input.c.x < u_input.c.x, !arg_2), select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(false, true, arg_1), select(vec3<bool>(arg_2, arg_1, arg_2), vec3<bool>(true, true, true), arg_1))));
    global2 = array<Struct_3, 13>();
    global2 = array<Struct_3, 13>();
    var var_1 = !(!select(!vec4<bool>(arg_1, true, arg_1, true), select(!vec4<bool>(false, arg_2, arg_2, arg_2), !vec4<bool>(arg_1, arg_1, arg_2, true), true), arg_2 | (1u < global0.x)));
    return 4294967295u;
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: vec2<bool>) -> vec3<u32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-arg_1.d), 1592f);
    global0 = vec3<u32>(func_3(~vec2<i32>(_wgslsmith_clamp_i32(arg_1.c.d, 39088i, u_input.c.x), arg_1.c.d), arg_0, true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(151f, 597f, arg_1.d, var_0.x))))), max(u_input.b.x, ~arg_1.e), reverseBits(_wgslsmith_dot_vec2_u32(abs(u_input.b), vec2<u32>(33948u, 33494u))) ^ max(_wgslsmith_clamp_u32(u_input.b.x, global0.x, 1u) & arg_1.e, _wgslsmith_dot_vec2_u32(u_input.b, ~u_input.b)));
    var var_1 = false;
    global2 = array<Struct_3, 13>();
    global0 = select(min(max(~(~vec3<u32>(89439u, 77265u, global0.x)), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(arg_1.e, arg_1.e, global0.x), vec3<u32>(50098u, 52048u, u_input.b.x), arg_1.b), firstTrailingBit(vec3<u32>(1764u, 48501u, 4180u)), vec3<u32>(u_input.b.x, arg_1.e, arg_1.e))), abs(vec3<u32>(4044u, arg_1.e, 2606u)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 0u, global0.x), firstTrailingBit(vec3<u32>(global0.x, arg_1.e, 50325u))) % vec3<u32>(32u))), vec3<u32>(~(~func_3(vec2<i32>(-34423i, 48784i), arg_2.x, arg_1.b.x, vec4<f32>(-1000f, var_0.x, 2643f, -184f))), max(~0u, _wgslsmith_mod_u32(51665u, 22842u)), 0u), arg_1.b);
    return vec3<u32>(arg_1.e, u_input.b.x, 4294967295u) >> ((~(~firstTrailingBit(vec3<u32>(arg_1.e, 0u, 1u))) >> (vec3<u32>(global0.x, arg_1.e, firstLeadingBit(4294967295u)) % vec3<u32>(32u))) % vec3<u32>(32u));
}

fn func_1() -> f32 {
    global1 = array<Struct_1, 12>();
    global0 = vec3<u32>(_wgslsmith_div_u32(~global0.x, u_input.b.x), ~global0.x, firstTrailingBit(~(~u_input.b.x))) ^ (_wgslsmith_div_vec3_u32(vec3<u32>(~global0.x, 58841u >> (u_input.b.x % 32u), global0.x), _wgslsmith_div_vec3_u32(~vec3<u32>(72651u, 4294967295u, global0.x), countOneBits(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)))) | ~firstLeadingBit(func_2(false, Struct_2(global1[_wgslsmith_index_u32(43050u, 12u)], vec3<bool>(true, false, true), global1[_wgslsmith_index_u32(global0.x, 12u)], 161f, u_input.b.x), vec2<bool>(false, true))));
    global2 = array<Struct_3, 13>();
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1166f, 1003f) * vec2<f32>(-672f, 127f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(2331f, 1533f) * vec2<f32>(272f, -1242f))))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1596f, 278f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -866f) + vec2<f32>(406f, 827f)))), vec2<f32>(-1474f, _wgslsmith_f_op_f32(sign(1000f))), select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true), select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(false, false))))), true));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) * -666f);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.x)), -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(574f - _wgslsmith_f_op_f32(round(1f)))));
    var var_1 = 1i;
    let var_2 = Struct_3(abs(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, -2147483647i, 14491i, -32122i), vec4<i32>(u_input.a.x, u_input.d, 30377i, u_input.d)) & (i32(-1i) * -88862i), -2147483647i, -abs(u_input.c.x), u_input.c.x)), Struct_2(global1[_wgslsmith_index_u32(~global0.x, 12u)], vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, var_0), var_0)), false, false), Struct_1(true, vec2<i32>(u_input.d, ~0i), _wgslsmith_add_i32(9526i, u_input.a.x) >> (u_input.b.x % 32u), 0i), _wgslsmith_f_op_f32(-1f), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(global0.yy, vec2<u32>(global0.x, global0.x)) >> (~global0.xx % vec2<u32>(32u)), func_2(var_0, Struct_2(global1[_wgslsmith_index_u32(48435u, 12u)], vec3<bool>(var_0, true, true), Struct_1(var_0, u_input.c, -57700i, u_input.d), 950f, 1u), vec2<bool>(true, true)).yz)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(194f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-106f)), -1753f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-995f)))))), select(!(!select(vec2<bool>(var_0, var_0), vec2<bool>(false, false), var_0)), !(!(!vec2<bool>(true, var_0))), var_0));
    var_1 = var_2.a.x;
    let var_3 = all(select(select(vec2<bool>(!var_2.d.x, true), vec2<bool>(var_2.b.e > 4294967295u, any(vec4<bool>(var_0, var_0, true, var_0))), any(!vec3<bool>(false, var_2.b.a.a, var_0))), !vec2<bool>(false, var_2.d.x), vec2<bool>(!(global0.x >= 0u), false)));
    let var_4 = var_2.b.b.x;
    global1 = array<Struct_1, 12>();
    var var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -2338f, -1313f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(392f, 1278f, var_2.c) * vec3<f32>(var_2.b.d, -1140f, -317f))))));
    var var_6 = var_2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(var_2.a.x, 1i, select(var_2.b.a.c, -4889i, false) ^ select(u_input.a.x, var_2.b.a.d, true)) >> (abs(4294967295u) % 32u));
}

