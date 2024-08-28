struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: array<vec2<u32>, 9>;

var<private> global1: array<vec4<i32>, 28> = array<vec4<i32>, 28>(vec4<i32>(-1257i, -1i, i32(-2147483648), 21461i), vec4<i32>(23028i, 2048i, 1i, 1i), vec4<i32>(i32(-2147483648), 7805i, -1i, 0i), vec4<i32>(-16351i, 1i, 1i, -1i), vec4<i32>(1i, -10096i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-1958i, 14183i, 2147483647i, 14020i), vec4<i32>(-15415i, -35585i, 17446i, 2374i), vec4<i32>(-37620i, -1i, i32(-2147483648), 22626i), vec4<i32>(-7844i, 16589i, 1i, 18409i), vec4<i32>(31526i, -822i, -1i, -1i), vec4<i32>(-3622i, -19661i, i32(-2147483648), -12650i), vec4<i32>(1i, 50993i, -1i, 34363i), vec4<i32>(-19775i, 1i, 31396i, i32(-2147483648)), vec4<i32>(27113i, 1i, 1i, -1i), vec4<i32>(-8225i, -27442i, 1i, 1602i), vec4<i32>(12921i, 2147483647i, 8549i, 1i), vec4<i32>(-1i, 26044i, 5125i, 2147483647i), vec4<i32>(1i, 0i, 5477i, -10477i), vec4<i32>(-1i, -1i, -4973i, 10128i), vec4<i32>(2147483647i, -58582i, -1i, 2147483647i), vec4<i32>(i32(-2147483648), 13785i, 1442i, 44595i), vec4<i32>(-1i, -6715i, i32(-2147483648), -1066i), vec4<i32>(-4368i, -15390i, 2147483647i, i32(-2147483648)), vec4<i32>(125i, i32(-2147483648), 1i, 0i), vec4<i32>(-5002i, i32(-2147483648), 30902i, 57031i), vec4<i32>(9731i, 0i, 35376i, -54687i), vec4<i32>(-11312i, i32(-2147483648), -1i, 31112i), vec4<i32>(-52291i, 0i, -72343i, -11134i));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    global0 = array<vec2<u32>, 9>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(506f, -1000f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-176f - 206f), _wgslsmith_f_op_f32(-335f + 940f), true)), 168f) * vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(217f + -652f))), -586f)));
    return 24173u;
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: vec2<u32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0));
    global0 = array<vec2<u32>, 9>();
    var var_1 = u_input.a.x;
    global0 = array<vec2<u32>, 9>();
    let var_2 = Struct_2(Struct_1(~(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i) << (~vec4<u32>(0u, 34290u, arg_2.x, arg_2.x) % vec4<u32>(32u))), _wgslsmith_mod_u32(func_3(), arg_2.x), 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), Struct_1(vec4<i32>(1i, _wgslsmith_sub_i32(countOneBits(u_input.a.x), u_input.a.x), reverseBits(-71827i), -11471i), _wgslsmith_mod_u32(17887u, 102683u), arg_2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1000f))))), vec2<u32>(arg_2.x, arg_2.x), vec2<u32>(arg_2.x, countOneBits(0u)), Struct_1(_wgslsmith_clamp_vec4_i32(~(vec4<i32>(35510i, 8163i, u_input.a.x, 2147483647i) ^ global1[_wgslsmith_index_u32(arg_2.x, 28u)]), _wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(-10355i, u_input.a.x, 0i, -1i)), vec4<i32>(-1i) * -u_input.a), reverseBits(countOneBits(firstTrailingBit(4294967295u))), 17250u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-391f + var_0), -444f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_0)))))));
    return arg_1;
}

fn func_4(arg_0: f32, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = !arg_1.x;
    var var_1 = Struct_2(Struct_1(-u_input.a, 6901u | func_3(), 1u, arg_0), Struct_1(~global1[_wgslsmith_index_u32(1u, 28u)], firstTrailingBit(abs(reverseBits(0u))), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 46369u, 4294967295u), vec4<u32>(25516u, 4294967295u, 0u, 0u)), ~(~50966u)), _wgslsmith_f_op_f32(-arg_0)), ~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(20668u, 4294967295u, 0u), ~vec3<u32>(41119u, 15478u, 0u)), countOneBits(6939u)), 9u)], _wgslsmith_mult_vec2_u32(global0[_wgslsmith_index_u32(~22229u, 9u)], ~vec2<u32>(1u, 1u) | _wgslsmith_add_vec2_u32(abs(vec2<u32>(29396u, 13347u)), _wgslsmith_sub_vec2_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], vec2<u32>(0u, 4294967295u)))), Struct_1(firstTrailingBit(-countOneBits(vec4<i32>(u_input.a.x, 40599i, -16687i, 32002i))), 1u, countOneBits(1u), arg_0));
    global1 = array<vec4<i32>, 28>();
    var_1 = Struct_2(var_1.b, var_1.b, vec2<u32>(6597u, abs(_wgslsmith_sub_u32(select(100374u, var_1.b.b, true), 20474u))), var_1.c, Struct_1(vec4<i32>(35853i, 0i, _wgslsmith_mult_i32(u_input.a.x, countOneBits(var_1.b.a.x)), _wgslsmith_clamp_i32(firstLeadingBit(-2147483647i), var_1.e.a.x, var_1.e.a.x)), 4294967295u, reverseBits(var_1.e.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(310f)) - -175f)));
    let var_2 = min(vec3<u32>(_wgslsmith_div_u32(countOneBits(4294967295u), var_1.a.c), 0u, 8034u), ~vec3<u32>(var_1.d.x, 1u, 4294967295u) << (~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_1.a.b, var_1.d.x), vec3<u32>(4294967295u, var_1.c.x, var_1.e.c)) % vec3<u32>(32u))) >> (~_wgslsmith_clamp_vec3_u32(select(firstLeadingBit(vec3<u32>(84196u, 0u, var_1.b.c)), ~vec3<u32>(31201u, 0u, 0u), arg_1.x), vec3<u32>(~var_1.e.c, var_1.b.c, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.c, 4294967295u, 0u), vec3<u32>(25143u, 4294967295u, 1u))), vec3<u32>(77008u, 1u, 23882u)) % vec3<u32>(32u));
    return Struct_1(firstTrailingBit(_wgslsmith_add_vec4_i32(countOneBits(select(u_input.a, var_1.b.a, arg_1.x)), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(var_1.e.a, var_1.a.a), global1[_wgslsmith_index_u32(1u, 28u)]))), abs(21830u) ^ (func_3() >> (4294967295u % 32u)), 532u, 1009f);
}

fn func_1(arg_0: vec2<f32>) -> Struct_2 {
    let var_0 = Struct_2(func_4(arg_0.x, !func_2(_wgslsmith_f_op_f32(-arg_0.x), vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(firstLeadingBit(0u), 9u)])), func_4(arg_0.x, !vec4<bool>(true, true, all(vec2<bool>(true, false)), all(vec4<bool>(true, false, true, true)))), min(global0[_wgslsmith_index_u32(~(~(~34992u)), 9u)], global0[_wgslsmith_index_u32(23925u, 9u)]), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(global0[_wgslsmith_index_u32(~0u, 9u)] >> (min(global0[_wgslsmith_index_u32(53030u, 9u)], global0[_wgslsmith_index_u32(29805u, 9u)]) % vec2<u32>(32u)), ~(~global0[_wgslsmith_index_u32(20725u, 9u)])), global0[_wgslsmith_index_u32(~(~(~0u)), 9u)], ~vec2<u32>(52278u, 1u) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(81400u, 7919u) | global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(reverseBits(1u), 9u)])), Struct_1(vec4<i32>(36154i ^ abs(u_input.a.x), _wgslsmith_mod_i32(_wgslsmith_mod_i32(358i, u_input.a.x), ~u_input.a.x), u_input.a.x, max(_wgslsmith_dot_vec2_i32(vec2<i32>(2778i, -4380i), vec2<i32>(u_input.a.x, u_input.a.x)), -u_input.a.x)), ~reverseBits(~0u), ~func_3(), arg_0.x));
    global0 = array<vec2<u32>, 9>();
    var var_1 = select(var_0.b.b, var_0.d.x, any(!select(func_2(var_0.e.d, vec4<bool>(false, true, false, true), var_0.d).wyy, select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), true)));
    var_1 = _wgslsmith_sub_u32(~_wgslsmith_mod_u32(~4294967295u, var_0.b.c ^ var_0.a.c), var_0.a.b);
    let var_2 = var_0;
    return Struct_2(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1455f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-305f - arg_0.x))), select(vec4<bool>(true, true, true, func_2(-653f, vec4<bool>(true, false, true, false), vec2<u32>(4294967295u, 39522u)).x), vec4<bool>(all(vec2<bool>(true, true)), 3172i > var_2.b.a.x, true, true), vec4<bool>(true, true, true, true))), var_0.b, vec2<u32>(max(func_3(), var_0.e.c), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, 6335u)), vec2<u32>(abs(0u), ~var_0.a.c))), ~vec2<u32>(min(func_3(), 0u), 35424u), Struct_1(-vec4<i32>(firstTrailingBit(-2147483647i), _wgslsmith_add_i32(-16988i, var_2.b.a.x), _wgslsmith_div_i32(var_0.e.a.x, var_0.b.a.x), u_input.a.x >> (1u % 32u)), firstLeadingBit(_wgslsmith_clamp_u32(func_3(), _wgslsmith_dot_vec2_u32(var_2.c, global0[_wgslsmith_index_u32(60283u, 9u)]), var_2.c.x)), 77674u, var_0.b.d));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> vec3<u32> {
    global1 = array<vec4<i32>, 28>();
    global1 = array<vec4<i32>, 28>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.e.d))) - arg_1.a.d)));
    global1 = array<vec4<i32>, 28>();
    let var_1 = Struct_2(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d, -399f))).a, arg_0, ~_wgslsmith_mult_vec2_u32(global0[_wgslsmith_index_u32(arg_1.e.b, 9u)] & vec2<u32>(arg_1.a.c, arg_1.c.x), firstLeadingBit(vec2<u32>(1505u, arg_0.c))) ^ arg_1.d, ~func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-808f, var_0))) * vec2<f32>(-548f, 730f))).c, arg_0);
    return vec3<u32>(min(6902u, ~1u), arg_1.c.x >> (~max(1u, ~85955u) % 32u), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 28>();
    let var_0 = Struct_1(vec4<i32>(37487i, ~u_input.a.x >> (min(4294967295u, 38391u) % 32u), -u_input.a.x, -_wgslsmith_sub_i32(u_input.a.x, u_input.a.x)) | u_input.a, ~(~28348u), 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1423f))));
    let var_1 = (_wgslsmith_add_u32(var_0.b, ~countOneBits(42959u)) << (0u % 32u)) > _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(func_5(Struct_1(vec4<i32>(-13305i, -7985i, 1i, var_0.a.x), 1u, 76418u, var_0.d), func_1(vec2<f32>(-1419f, -225f)), false), select(~vec3<u32>(var_0.b, 5191u, var_0.b), ~vec3<u32>(55254u, var_0.c, var_0.b), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), false))), _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(~41492u, 9u)]));
    let var_2 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(636f, -273f), vec2<f32>(382f, -753f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, var_0.d)), var_1)) - vec2<f32>(_wgslsmith_f_op_f32(round(var_0.d)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(var_0.d * var_0.d))))));
    global0 = array<vec2<u32>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(21865i, _wgslsmith_mod_u32(var_0.b, var_2.d.x) | (4294967295u >> (var_2.d.x % 32u)));
}

