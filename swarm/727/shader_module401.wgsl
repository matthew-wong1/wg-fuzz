struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<bool>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

var<private> global1: vec2<u32> = vec2<u32>(1u, 4294967295u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(arg_1, 318f), _wgslsmith_f_op_f32(arg_1 - 802f), -121f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-731f, arg_1, true)), _wgslsmith_f_op_f32(423f + arg_1), _wgslsmith_f_op_f32(abs(arg_1)))))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> vec3<i32> {
    let var_0 = ~((vec3<u32>(~39309u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, global1.x), u_input.a), countOneBits(global1.x)) & reverseBits(countOneBits(vec3<u32>(u_input.a.x, u_input.a.x, 1u)))) ^ vec3<u32>(~reverseBits(1u), ~(global1.x << (u_input.a.x % 32u)), u_input.a.x));
    let var_1 = Struct_1(-1117f, -178f, select(arg_1, select(!(!arg_1), !select(arg_1, arg_1, vec4<bool>(false, true, false, false)), firstTrailingBit(var_0.x) <= _wgslsmith_mod_u32(u_input.a.x, var_0.x)), true), -firstLeadingBit(-1i), vec4<i32>(arg_0.a, -1i, _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, 28115i, firstLeadingBit(-10566i)) | min(arg_0.b.x, _wgslsmith_mod_i32(2147483647i, arg_0.b.x)), arg_0.a));
    global1 = u_input.a;
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.x ^ var_0.x, reverseBits(0u)), 28u)];
    global1 = ~vec2<u32>(var_0.x, countOneBits(44081u)) & min(var_0.xy, vec2<u32>(_wgslsmith_div_u32(global1.x & u_input.a.x, _wgslsmith_dot_vec3_u32(var_0, vec3<u32>(0u, var_0.x, 43001u))), u_input.a.x));
    return ~firstLeadingBit(~firstLeadingBit(_wgslsmith_mult_vec3_i32(var_2.b, var_1.e.wyw)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    global0 = array<Struct_2, 28>();
    global0 = array<Struct_2, 28>();
    global0 = array<Struct_2, 28>();
    let var_0 = vec3<u32>(19280u, 1u, u_input.a.x >> (0u % 32u));
    var var_1 = ~select(firstTrailingBit(vec4<u32>(14527u, global1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, 13072u), vec4<u32>(34430u, 63126u, 4294967295u, global1.x)), u_input.a.x)), vec4<u32>(global1.x ^ firstTrailingBit(var_0.x), u_input.a.x & 4294967295u, ~select(u_input.a.x, 0u, true), ~(11947u & u_input.a.x)), select(!arg_3.c, !arg_3.c, abs(global1.x) == ~49768u));
    return var_0.x;
}

fn func_2() -> f32 {
    let var_0 = 1u;
    let var_1 = true;
    global0 = array<Struct_2, 28>();
    let var_2 = vec4<u32>(global1.x, func_4(Struct_2(select(1i, _wgslsmith_sub_i32(1i, -44332i), false), vec3<i32>(1i, ~(-2147483647i), i32(-1i) * -51505i)), global0[_wgslsmith_index_u32(4294967295u, 28u)], Struct_2(_wgslsmith_div_i32(1i, -2147483647i), func_3(Struct_2(-32793i, vec3<i32>(-3672i, -7380i, 0i)), vec4<bool>(true, true, true, true))), Struct_1(1499f, _wgslsmith_f_op_f32(trunc(-1664f)), vec4<bool>(!var_1, !var_1, any(vec4<bool>(var_1, false, false, var_1)), var_1 || true), -28985i << (_wgslsmith_add_u32(var_0, 36166u) % 32u), vec4<i32>(-1i, 36959i, _wgslsmith_clamp_i32(31060i, -76524i, -20506i), select(0i, -2147483647i, true)))), min(_wgslsmith_clamp_u32(4625u, 0u, ~_wgslsmith_add_u32(74096u, var_0)), ~1u | var_0), ~func_4(Struct_2(abs(-777i), ~vec3<i32>(-6648i, 0i, 8966i)), global0[_wgslsmith_index_u32(31447u, 28u)], Struct_2(max(-23571i, -1i), vec3<i32>(12575i, 2147483647i, 1i)), Struct_1(_wgslsmith_f_op_f32(floor(-1529f)), -1000f, !vec4<bool>(false, var_1, var_1, false), -15504i, ~vec4<i32>(6747i, 2147483647i, 31850i, -1i))));
    var var_3 = var_1 | any(vec3<bool>(true, true, !(!var_1)));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-678f - 1584f)))), -1000f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-938f - 1176f) + _wgslsmith_f_op_f32(max(-134f, -1828f)))) - _wgslsmith_f_op_f32(max(571f, 631f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_add_u32(u_input.a.x, 28420u), _wgslsmith_add_u32(u_input.a.x, 4294967295u)), abs(u_input.a) ^ ~vec2<u32>(u_input.a.x, 1u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(2338f, _wgslsmith_f_op_f32(-1430f - 643f)) * 742f))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(step(392f, _wgslsmith_f_op_f32(round(693f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1165f, 267f, false)) - -1679f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2())))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-399f, 468f))))));
    global1 = u_input.a;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-162f + var_0.x), 789f, !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), (~(-47884i) >> (_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) % 32u)) >> (1u % 32u), select(vec4<i32>(~abs(-1i), i32(-1i) * -25779i, -firstTrailingBit(2147483647i), 23488i), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(0i, -68155i), -62079i, ~0i, -17971i), vec4<i32>(1i, 1i, 1i, 1i)), true));
    var var_2 = max(0u, ~_wgslsmith_sub_u32(u_input.a.x >> (global1.x % 32u), global1.x)) << (abs(_wgslsmith_dot_vec4_u32(min(max(vec4<u32>(global1.x, 1u, 60981u, u_input.a.x), vec4<u32>(1u, 1u, u_input.a.x, 1u)), ~vec4<u32>(u_input.a.x, u_input.a.x, global1.x, u_input.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 67593u, 30168u, global1.x) & vec4<u32>(27781u, 28461u, 1u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(53807u, 0u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 26297u, u_input.a.x))))) % 32u);
    let var_3 = _wgslsmith_f_op_vec3_f32(func_1(~(~vec2<u32>(~global1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(49908u, global1.x), vec2<u32>(0u, 52429u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, var_0.x))) - _wgslsmith_f_op_f32(var_0.x + var_1.a)), _wgslsmith_f_op_f32(abs(2715f))))).x;
    var var_4 = ~select(~max(_wgslsmith_sub_vec4_u32(vec4<u32>(31300u, 1u, global1.x, 0u), vec4<u32>(1u, 0u, global1.x, global1.x)), ~vec4<u32>(global1.x, 0u, 1u, 0u)), abs(vec4<u32>(_wgslsmith_mult_u32(33337u, 25u), u_input.a.x, 0u, 34950u)), var_1.c.x);
    var_4 = _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(~(~vec4<u32>(39329u, global1.x, var_4.x, 4294967295u))), ~vec4<u32>(_wgslsmith_mod_u32(1u, var_4.x), global1.x, ~4294967295u, 10600u), abs(~vec4<u32>(4294967295u, var_4.x, u_input.a.x, 1u))), vec4<u32>(~(~(~u_input.a.x)), u_input.a.x, u_input.a.x, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_1.e.ww), ~abs(-29653i), -2147483647i);
}

