struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 0u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> f32 {
    global0 = vec2<u32>(~_wgslsmith_clamp_u32(global0.x, 1u, abs(reverseBits(69526u))), 0u);
    var var_0 = arg_2.a.x;
    var var_1 = (u_input.a << (~global0.x % 32u)) >> (global0.x % 32u);
    var var_2 = arg_2;
    var_0 = 1252f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.a.x))))) - 444f));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = -vec4<i32>(1i, -2147483647i, u_input.a, i32(-1i) * -12554i);
    var var_1 = vec2<i32>(u_input.b, i32(-1i) * -firstLeadingBit(firstTrailingBit(-2147483647i)));
    global0 = vec2<u32>(_wgslsmith_mod_u32(~max(global0.x, _wgslsmith_mod_u32(global0.x, 33794u)), _wgslsmith_mod_u32(max(global0.x, 0u), 22384u)), ~global0.x);
    var_1 = ~(~var_0.xz);
    global0 = _wgslsmith_clamp_vec2_u32(countOneBits(min(vec2<u32>(global0.x, 12161u), ~vec2<u32>(global0.x, 1u)) << (max(vec2<u32>(global0.x, global0.x), vec2<u32>(31413u, global0.x)) % vec2<u32>(32u))), min(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(24645u, 46931u), vec2<u32>(1u, global0.x) << (vec2<u32>(17932u, global0.x) % vec2<u32>(32u))), ~vec2<u32>(4294967295u, 48875u), vec2<u32>(1u, 0u) & vec2<u32>(0u, global0.x)), vec2<u32>(global0.x, global0.x)), vec2<u32>(0u, ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(25847u, global0.x), vec2<u32>(1u, global0.x)), ~vec2<u32>(43122u, global0.x))));
    return _wgslsmith_clamp_vec4_u32(~vec4<u32>(~(~39735u), ~global0.x, 4294967295u, _wgslsmith_div_u32(global0.x, ~4294967295u)), abs(vec4<u32>(global0.x, countOneBits(firstTrailingBit(global0.x)), firstLeadingBit(4294967295u), _wgslsmith_add_u32(global0.x, 0u))), vec4<u32>((0u >> (~global0.x % 32u)) & ~reverseBits(60784u), countOneBits(abs(global0.x)) >> (~(~52557u) % 32u), ~firstLeadingBit(max(global0.x, global0.x)), global0.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> vec2<u32> {
    return arg_3.yx;
}

fn func_2(arg_0: i32) -> Struct_1 {
    global0 = reverseBits(vec2<u32>(global0.x, ~reverseBits(8001u) << ((~42864u >> (~global0.x % 32u)) % 32u)));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(275f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -830f))));
    global0 = func_4(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-192f, -230f, -2134f, var_0))))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0, var_0, 1035f, var_0))))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 568f, var_0, var_0) * vec4<f32>(1070f, 602f, var_0, var_0)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -1048f, -1080f, 1000f) + vec4<f32>(-107f, 1250f, -498f, var_0))))), _wgslsmith_sub_vec4_u32(max(~(~vec4<u32>(global0.x, global0.x, global0.x, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(10941u, 54096u, global0.x, global0.x), vec4<u32>(0u, 4294967295u, global0.x, global0.x), vec4<u32>(55366u, global0.x, 0u, 1u)) & ~vec4<u32>(global0.x, global0.x, 0u, global0.x)), func_3(Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, -1378f, -485f, -1167f)))))));
    global0 = ~(~countOneBits(vec2<u32>(global0.x, 29711u) & vec2<u32>(49576u, 4294967295u)) ^ ~_wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(global0.x, 14950u)), vec2<u32>(global0.x, 0u), vec2<u32>(52751u, 1u)));
    global0 = _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(~(~abs(vec2<u32>(global0.x, global0.x))), _wgslsmith_sub_vec2_u32(func_4(Struct_1(vec4<f32>(-1000f, -484f, 157f, 221f)), Struct_1(vec4<f32>(-896f, 1000f, var_0, 489f)), Struct_1(vec4<f32>(-188f, var_0, -664f, var_0)), _wgslsmith_clamp_vec4_u32(vec4<u32>(11936u, 26332u, global0.x, global0.x), vec4<u32>(global0.x, global0.x, global0.x, 0u), vec4<u32>(global0.x, global0.x, 1u, 0u))), vec2<u32>(_wgslsmith_mult_u32(global0.x, 4294967295u), 1u)), ~select(select(vec2<u32>(1u, global0.x), vec2<u32>(global0.x, global0.x), false), ~vec2<u32>(global0.x, 1u), vec2<bool>(false, false))), ~reverseBits(vec2<u32>(max(10671u, 4294967295u), global0.x)));
    return Struct_1(vec4<f32>(var_0, _wgslsmith_f_op_f32(-var_0), 1000f, -854f));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> bool {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1327f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.a.x)))))));
    var var_1 = vec3<bool>(all(!vec2<bool>(arg_3, !arg_3)), arg_3, -_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b, u_input.a), -vec2<i32>(-1i, 6468i)) == _wgslsmith_add_i32(~abs(u_input.b), countOneBits(min(u_input.b, u_input.b))));
    var var_2 = ~global0.x;
    let var_3 = arg_2;
    return true;
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: bool) -> vec2<u32> {
    var var_0 = arg_1;
    return max(min(vec2<u32>(30498u, ~(~global0.x)), ~select(vec2<u32>(arg_0.x, global0.x) << (vec2<u32>(17436u, arg_0.x) % vec2<u32>(32u)), ~arg_0, true)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(3416u, global0.x), 3355u, select(0u, global0.x, arg_2), 1u), vec4<u32>(func_3(arg_1).x, global0.x, 59312u, global0.x)), global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec2_u32(vec2<u32>(~(global0.x & 4294967295u) & _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 34405u, 3915u, global0.x), ~vec4<u32>(global0.x, 56022u, global0.x, 75117u)), ~4294967295u), func_6(reverseBits(countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(global0.x, global0.x)))), Struct_1(vec4<f32>(-623f, _wgslsmith_f_op_f32(680f + -759f), _wgslsmith_f_op_f32(func_1(8714i, Struct_1(vec4<f32>(-776f, -1000f, -825f, 985f)), Struct_1(vec4<f32>(1215f, 194f, -453f, -831f)), true)), _wgslsmith_f_op_f32(-1379f * -619f))), func_5(func_2(_wgslsmith_sub_i32(u_input.a, u_input.b)), func_2(2147483647i), func_2(-100316i >> (global0.x % 32u)), true)));
    global0 = func_3(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-743f)), _wgslsmith_div_f32(803f, 224f), _wgslsmith_f_op_f32(f32(-1f) * -2311f), -1000f)))).wy;
    global0 = abs(~vec2<u32>(abs(~78178u), global0.x));
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1742f + 557f)), _wgslsmith_f_op_f32(1f - -281f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -909f), _wgslsmith_f_op_f32(sign(517f))))) * vec4<f32>(-1162f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1952f)) + _wgslsmith_f_op_f32(max(335f, 1031f))), _wgslsmith_f_op_f32(f32(-1f) * -357f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-323f))))));
    let var_1 = var_0.a.x;
    var var_2 = abs(global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32((16832u ^ func_6(vec2<u32>(0u, global0.x), Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -165f)), false).x) ^ global0.x, ~_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(614u, global0.x, global0.x, global0.x), vec4<u32>(global0.x, 1u, 47548u, 37706u)))), -vec2<i32>(abs(30091i >> (global0.x % 32u)), abs(u_input.b)), ~(~1u), var_0.a.xz);
}

