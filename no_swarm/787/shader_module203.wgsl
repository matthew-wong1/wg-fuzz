struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(-1i, -20713i, 2147483647i), false, 37530u, vec2<f32>(555f, 1894f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: f32, arg_3: vec3<f32>) -> vec4<u32> {
    global0 = Struct_1(vec3<i32>(global0.a.x, u_input.a, -2147483647i), !global0.b, _wgslsmith_sub_u32(_wgslsmith_mod_u32(global0.c, 49645u), _wgslsmith_clamp_u32(4294967295u, ~4294967295u, (global0.c >> (global0.c % 32u)) ^ firstTrailingBit(global0.c))), vec2<f32>(-2196f, _wgslsmith_f_op_f32(step(arg_3.x, _wgslsmith_f_op_f32(1050f + _wgslsmith_f_op_f32(-global0.d.x))))));
    global0 = Struct_1(global0.a, !any(select(vec2<bool>(global0.b, true), select(arg_0.wx, arg_0.zz, vec2<bool>(false, global0.b)), false)), global0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_3.yz), vec2<f32>(_wgslsmith_div_f32(arg_3.x, 1234f), arg_3.x)))));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(197f, arg_2)), arg_3.zz)) + vec2<f32>(-1479f, -310f)));
    global0 = Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_div_i32(0i, u_input.a), -1i, abs(u_input.a)), vec3<i32>(_wgslsmith_mult_i32(global0.a.x, -2147483647i), _wgslsmith_div_i32(global0.a.x, countOneBits(global0.a.x)), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), global0.a.zx)))), true, 1u, global0.d);
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -324f), arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -214f))), arg_3);
    return _wgslsmith_div_vec4_u32(vec4<u32>(firstTrailingBit(32719u), 1u, 4294967295u, _wgslsmith_dot_vec4_u32(min(firstTrailingBit(vec4<u32>(4294967295u, 0u, 37946u, global0.c)), ~vec4<u32>(global0.c, global0.c, 4294967295u, global0.c)), vec4<u32>(global0.c, _wgslsmith_clamp_u32(global0.c, global0.c, global0.c), ~global0.c, global0.c))), vec4<u32>(abs(global0.c), 1u, 1u, 0u));
}

fn func_3(arg_0: vec4<u32>) -> Struct_2 {
    global0 = Struct_1(reverseBits(_wgslsmith_clamp_vec3_i32(global0.a, reverseBits(global0.a), vec3<i32>(-40033i, global0.a.x, global0.a.x))) & vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(global0.a.zz, global0.a.zz)), u_input.a, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a.x, global0.a.x, global0.a.x, -2147483647i), vec4<i32>(-23556i, -15575i, -16039i, 22871i)), u_input.a ^ -9479i)), ~max(_wgslsmith_sub_u32(global0.c, 0u), arg_0.x ^ global0.c) >= reverseBits(~_wgslsmith_mult_u32(15249u, 36499u)), ~(~(~86984u)) << ((global0.c & _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 103854u), vec2<u32>(global0.c, 1u))) % 32u), vec2<f32>(global0.d.x, -1789f));
    var var_0 = Struct_1(vec3<i32>(1i, _wgslsmith_dot_vec2_i32(~vec2<i32>(global0.a.x, 2147483647i), global0.a.yx) ^ -abs(-1i), ~(~9373i)), !all(select(!vec2<bool>(global0.b, global0.b), select(vec2<bool>(global0.b, true), vec2<bool>(false, global0.b), vec2<bool>(global0.b, false)), select(vec2<bool>(true, false), vec2<bool>(global0.b, global0.b), vec2<bool>(false, true)))), (countOneBits(~global0.c) | arg_0.x) & ~1u, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1143f), _wgslsmith_f_op_f32(-1974f + -714f))))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(147f)))), global0.d.x))));
    var var_2 = var_1;
    var_0 = Struct_1(~var_0.a, false, arg_0.x, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.a, var_1.a))))))));
    return var_1;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> f32 {
    global0 = Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -40857i, -(~global0.a.x)), ~global0.a), false, countOneBits(~global0.c), _wgslsmith_f_op_vec2_f32(exp2(global0.d)));
    var var_0 = max(-(vec3<i32>(~global0.a.x, _wgslsmith_clamp_i32(global0.a.x, -1i, arg_3), u_input.a) << (~vec3<u32>(0u, global0.c, global0.c) % vec3<u32>(32u))), max(-vec3<i32>(arg_3, -1i, global0.a.x) >> (vec3<u32>(15667u, _wgslsmith_add_u32(global0.c, global0.c), global0.c << (global0.c % 32u)) % vec3<u32>(32u)), select(abs(global0.a), vec3<i32>(_wgslsmith_add_i32(arg_3, 21121i), -global0.a.x, countOneBits(15730i)), !vec3<bool>(global0.b, true, arg_2))));
    global0 = Struct_1(vec3<i32>(9281i, -((i32(-1i) * -1i) ^ _wgslsmith_sub_i32(arg_3, -10704i)), -1i), true, 4294967295u, _wgslsmith_f_op_vec2_f32(-global0.d));
    var_0 = _wgslsmith_add_vec3_i32(global0.a, reverseBits(vec3<i32>(arg_3, abs(~(-68233i)), 20933i)));
    var var_1 = !select(select(global0.c < global0.c, global0.b, arg_2) && !select(true, true, arg_2), all(!vec4<bool>(arg_2, arg_2, arg_2, arg_2)) || all(select(vec4<bool>(global0.b, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, arg_2, global0.b))), arg_0.x > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.d.x))));
    return _wgslsmith_f_op_f32(step(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.a)) * 1591f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - global0.d.x))))));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(global0.d, func_3(func_2(vec4<bool>(global0.b, global0.b, arg_0, arg_0), Struct_2(global0.d.x), global0.d.x, vec3<f32>(1000f, -1146f, arg_2.x))), true, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, 0i, 1i), vec4<i32>(arg_1, arg_1, u_input.a, -42725i)), 1i))))));
    var var_1 = Struct_1(vec3<i32>(_wgslsmith_mult_i32(~(~u_input.a), 51566i), -(_wgslsmith_dot_vec4_i32(vec4<i32>(20639i, global0.a.x, u_input.a, -1i), vec4<i32>(arg_1, -9330i, 6690i, 0i)) | ~(-2147483647i)), -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.x))) != global0.d.x, _wgslsmith_div_u32(global0.c, 0u), vec2<f32>(_wgslsmith_f_op_f32(abs(-328f)), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1607f)))))));
    var var_2 = func_3(abs(firstTrailingBit(select(vec4<u32>(var_1.c, 0u, var_1.c, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.c, 26558u, var_1.c, 9459u), vec4<u32>(0u, var_1.c, 29215u, global0.c)), select(vec4<bool>(true, true, false, true), vec4<bool>(var_1.b, true, true, true), global0.b)))));
    var_2 = Struct_2(_wgslsmith_f_op_f32(min(-289f, global0.d.x)));
    var_2 = func_3(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.c, countOneBits(var_1.c), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c, global0.c, 109399u, global0.c), vec4<u32>(4294967295u, global0.c, global0.c, 1006u)), 1u), func_2(!vec4<bool>(var_1.b, var_1.b, true, false), Struct_2(265f), global0.d.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a, global0.d.x, 262f) + vec3<f32>(1000f, global0.d.x, -811f)))) ^ vec4<u32>(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.c, 9103u), vec2<u32>(1u, global0.c))), ~(~global0.c), _wgslsmith_mult_u32(_wgslsmith_mult_u32(var_1.c, var_1.c), 0u), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(41197u, global0.c), vec2<u32>(77249u, global0.c)))));
    return Struct_1(-vec3<i32>(u_input.a, ~(-var_1.a.x), -2147483647i), !any(!vec3<bool>(arg_0, true, arg_0)) & !(!select(true, arg_0, false)), global0.c, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(390f, var_2.a)) + _wgslsmith_f_op_vec2_f32(var_1.d + arg_2)), global0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(any(!select(vec2<bool>(true, true), select(vec2<bool>(false, global0.b), vec2<bool>(false, true), false), !vec2<bool>(global0.b, global0.b))), 0i & reverseBits(_wgslsmith_add_i32(1565i >> (0u % 32u), _wgslsmith_clamp_i32(10729i, 0i, global0.a.x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1097f, _wgslsmith_f_op_f32(-global0.d.x))))));
    let var_0 = vec2<u32>(min(global0.c, ~firstTrailingBit(reverseBits(16829u))), 42582u);
    var var_1 = func_1(!(-1240f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.d.x, -1482f)) - _wgslsmith_f_op_f32(step(global0.d.x, -407f)))), ~(-_wgslsmith_mult_i32(-46202i, 46144i) << (~_wgslsmith_clamp_u32(var_0.x, 24257u, 4294967295u) % 32u)), global0.d);
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1611f)), -987f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, 919f, -981f))))))));
    let var_3 = _wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(~vec4<u32>(var_0.x, 32512u, 14858u, global0.c), reverseBits(min(vec4<u32>(var_0.x, 13442u, 0u, var_0.x), vec4<u32>(var_1.c, global0.c, 7485u, 1781u)))), abs(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_1.c, var_0.x, 4294967295u) >> (vec4<u32>(4294967295u, 16390u, 1u, 14416u) % vec4<u32>(32u)), ~vec4<u32>(var_0.x, global0.c, 0u, global0.c)) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.c, var_1.c, 31693u, var_1.c), _wgslsmith_mult_vec4_u32(vec4<u32>(48374u, 55606u, 1u, 12692u), vec4<u32>(10195u, global0.c, 1u, 95869u)), ~vec4<u32>(global0.c, var_1.c, 7886u, var_1.c))));
    let x = u_input.a;
    s_output = StorageBuffer(max(47235i, abs(0i) & _wgslsmith_add_i32(-u_input.a, var_1.a.x)), var_3 ^ 1u, abs(_wgslsmith_mod_u32(min(var_1.c ^ 62170u, ~20861u), 38832u)), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, max(5747u, var_0.x), var_0.x << (903u % 32u), ~var_0.x), countOneBits(abs(vec4<u32>(1u, var_3, 28838u, global0.c))), ~vec4<u32>(var_0.x, 0u, 1u, 34510u) << (select(vec4<u32>(global0.c, 11153u, 4294967295u, var_3), vec4<u32>(var_1.c, 36008u, global0.c, 10191u), vec4<bool>(var_1.b, global0.b, global0.b, var_1.b)) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.x, global0.c, var_0.x, var_3), select(vec4<u32>(4294967295u, 90126u, var_1.c, global0.c), vec4<u32>(1u, var_0.x, 26579u, 4294967295u), var_1.b) >> (vec4<u32>(var_0.x, global0.c, 0u, var_3) % vec4<u32>(32u)))));
}

