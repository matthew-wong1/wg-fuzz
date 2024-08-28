struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool = false;

var<private> global2: Struct_1 = Struct_1(vec3<i32>(-1i, -43756i, 57229i));

var<private> global3: vec3<i32> = vec3<i32>(-12435i, 2147483647i, 0i);

var<private> global4: Struct_1 = Struct_1(vec3<i32>(-1i, 2147483647i, 1i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> bool {
    global0 = u_input.c;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1059f));
    let var_1 = Struct_1(abs(min(~(global2.a | vec3<i32>(global3.x, global2.a.x, 12746i)), _wgslsmith_clamp_vec3_i32(u_input.b, u_input.b << (vec3<u32>(u_input.c, u_input.a, u_input.c) % vec3<u32>(32u)), -vec3<i32>(2147483647i, global2.a.x, 0i)))));
    let var_2 = Struct_1(global4.a);
    var var_3 = ~firstTrailingBit(vec4<u32>(38760u, u_input.d.x, u_input.a, ~_wgslsmith_mod_u32(4294967295u, 73184u)));
    return true;
}

fn func_2() -> vec4<i32> {
    global0 = u_input.d.x;
    var var_0 = select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, all(vec2<bool>(false, false)), true, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, u_input.b.x >= 2147483647i), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))), select(!vec4<bool>(func_3(), false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), false);
    global0 = _wgslsmith_mod_u32(~(~max(u_input.c, ~56490u)), countOneBits(1u));
    global3 = select(vec3<i32>(~41266i, 24523i, _wgslsmith_sub_i32(global3.x, 0i) ^ ~0i) & global4.a, select(reverseBits(u_input.b), firstTrailingBit(-vec3<i32>(-22358i, global3.x, u_input.b.x)), !select(var_0.xwy, var_0.xzx, var_0.xzw)), vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-929f, 1000f)), _wgslsmith_f_op_f32(trunc(1414f))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1124f)) * _wgslsmith_div_f32(291f, -483f)), true, true));
    var var_1 = ~select(countOneBits(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 4294967295u, 0u), ~vec3<u32>(u_input.c, 4294967295u, 22322u), vec3<u32>(18777u, 0u, 43180u))), ~(min(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)) | vec3<u32>(u_input.a, u_input.d.x, 6048u)), var_0.x);
    return vec4<i32>(global3.x, global2.a.x, u_input.b.x, global4.a.x);
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = vec4<i32>(_wgslsmith_add_i32(u_input.b.x, -1i), abs(global3.x), 0i, u_input.b.x) & countOneBits(~(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, global2.a.x, 2147483647i, 0i), vec4<i32>(-2147483647i, 0i, global3.x, 14398i)) >> ((vec4<u32>(1u, 4294967295u, u_input.a, u_input.d.x) & vec4<u32>(u_input.c, 1u, 36166u, 20848u)) % vec4<u32>(32u))));
    global1 = arg_0.x;
    var var_1 = !arg_0.zxw;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -653f), -2556f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -430f))), vec3<f32>(_wgslsmith_f_op_f32(abs(-692f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(645f)), _wgslsmith_div_f32(834f, 405f))), -1281f), arg_0.wxy)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-387f, -908f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(393f * -1089f) * _wgslsmith_f_op_f32(floor(-529f))), 1f)));
    let var_3 = _wgslsmith_div_vec4_i32(func_2(), vec4<i32>(~global3.x, global3.x, abs(~u_input.b.x | -33527i), _wgslsmith_sub_i32(~global4.a.x, -1i)));
    return Struct_1(vec3<i32>(global4.a.x, 42529i, (2147483647i >> (u_input.c % 32u)) | -19530i));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>) -> bool {
    let var_0 = false;
    var var_1 = vec2<bool>(any(!select(select(vec2<bool>(var_0, true), vec2<bool>(true, false), var_0), vec2<bool>(var_0, false), any(vec2<bool>(false, var_0)))), select(var_0, var_0, true));
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-656f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(458f * arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(ceil(-1000f)))), _wgslsmith_f_op_f32(-645f * _wgslsmith_f_op_f32(floor(arg_1.x))))));
    global2 = Struct_1(~global4.a);
    let var_3 = _wgslsmith_add_i32(reverseBits(-15275i), -_wgslsmith_sub_i32(-_wgslsmith_add_i32(global3.x, -13780i), _wgslsmith_mult_i32(_wgslsmith_div_i32(0i, global3.x), _wgslsmith_sub_i32(arg_0.a.x, arg_0.a.x))));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(true, true, !func_4(func_1(vec4<bool>(false, true, false, true)), vec4<f32>(-665f, -963f, 272f, 1000f)) | !all(vec2<bool>(true, true)));
    global0 = 61085u;
    global3 = global4.a;
    let var_1 = _wgslsmith_f_op_f32(-1856f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * 560f) - 525f), func_3())));
    let var_2 = 1u;
    var var_3 = func_1(vec4<bool>(true, true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(2147483647i | (~var_3.a.x >> (_wgslsmith_sub_u32(u_input.c, u_input.c) % 32u)), 28497i, func_1(vec4<bool>(true, true, true, false)).a.x, _wgslsmith_clamp_i32(func_2().x, u_input.b.x, 1i)), u_input.a ^ 2430u, vec3<i32>(-global4.a.x, func_2().x, abs(var_3.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) + var_1)), -_wgslsmith_mult_i32(-firstTrailingBit(2147483647i), max(-global4.a.x, ~global4.a.x)));
}

