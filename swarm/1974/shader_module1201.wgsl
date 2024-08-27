struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
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

var<private> global0: array<u32, 24>;

var<private> global1: vec3<u32>;

var<private> global2: i32 = 10844i;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec3<f32>, arg_3: vec2<bool>) -> vec3<f32> {
    global0 = array<u32, 24>();
    var var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(~global1.x, ~global1.x >> (u_input.d.x % 32u)) | _wgslsmith_mod_vec2_u32(abs(_wgslsmith_mod_vec2_u32(global1.xx, u_input.d.xz)), global1.zz), u_input.b.zw);
    global1 = vec3<u32>(~min(4294967295u, global1.x), u_input.a, ~(~63496u) & u_input.d.x) & firstLeadingBit(reverseBits(~(~u_input.b.xyw)));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(arg_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1279f, _wgslsmith_f_op_f32(f32(-1f) * -1145f), arg_2.x))), select(select(vec3<bool>(true, arg_3.x, arg_3.x), !vec3<bool>(true, false, arg_3.x), vec3<bool>(true, true, true)), vec3<bool>(true, false, arg_3.x), vec3<bool>(all(vec2<bool>(arg_3.x, arg_3.x)) && true, true, true))));
    var var_2 = Struct_1(!arg_3.x, true, _wgslsmith_dot_vec4_i32(vec4<i32>(select(arg_0, _wgslsmith_clamp_i32(arg_0, -1i, arg_0), any(vec3<bool>(arg_3.x, arg_3.x, arg_3.x))), 1i, 0i, i32(-1i) * -u_input.c), vec4<i32>(9017i, u_input.c >> (91685u % 32u), _wgslsmith_clamp_i32(-8269i, u_input.c, -arg_0), _wgslsmith_dot_vec2_i32(-vec2<i32>(arg_0, arg_0), vec2<i32>(-32678i, arg_0) >> (u_input.d.zz % vec2<u32>(32u))))), u_input.c, _wgslsmith_add_vec4_i32(~abs(vec4<i32>(u_input.c, arg_0, -30758i, -6250i) & vec4<i32>(-2678i, u_input.c, arg_0, -1i)), ~max(vec4<i32>(arg_0, u_input.c, arg_0, 11733i), vec4<i32>(-2147483647i, u_input.c, 1i, u_input.c))));
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(161f - 333f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 795f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(ceil(var_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-146f * -2040f), _wgslsmith_div_f32(-2225f, arg_2.x))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1551f)))))));
}

fn func_4(arg_0: vec3<f32>) -> i32 {
    var var_0 = vec2<u32>(_wgslsmith_dot_vec3_u32(select(~u_input.d, u_input.b.yzw, any(vec4<bool>(true, true, false, true))), vec3<u32>(~_wgslsmith_mult_u32(global1.x, 0u), ~min(27764u, 4294967295u), u_input.d.x)), _wgslsmith_dot_vec3_u32(~(~select(u_input.d, vec3<u32>(0u, global0[_wgslsmith_index_u32(28793u, 24u)], 25950u), vec3<bool>(true, false, false))), u_input.d));
    let var_1 = vec3<u32>(~(_wgslsmith_mult_u32(1u, ~17213u) & _wgslsmith_div_u32(u_input.b.x, u_input.b.x)), var_0.x, global1.x);
    let var_2 = any(vec2<bool>(false, false));
    var var_3 = Struct_1(any(select(vec4<bool>(false, var_2, false, false), !select(vec4<bool>(var_2, false, var_2, false), vec4<bool>(false, var_2, true, true), true), any(vec4<bool>(true, true, false, var_2)) | all(vec2<bool>(true, true)))), select(true, true, false), reverseBits(_wgslsmith_mult_i32(_wgslsmith_sub_i32(-12212i, u_input.c) ^ -6160i, abs(-2147483647i) ^ ~u_input.c)), 2871i, ~firstLeadingBit(vec4<i32>(-u_input.c, 0i, ~8544i, ~5132i)));
    let var_4 = Struct_1(false, select(any(!vec2<bool>(var_2, var_2)), true || (var_3.a & false), var_2) && all(select(vec4<bool>(var_3.a, var_3.a, var_3.a, var_3.b), select(vec4<bool>(true, var_2, true, var_2), vec4<bool>(var_3.a, var_2, true, false), var_2), false)), ~firstTrailingBit(-38363i) << (var_0.x % 32u), abs(firstLeadingBit(i32(-1i) * -u_input.c)), ~(~select(var_3.e ^ vec4<i32>(u_input.c, 2147483647i, u_input.c, u_input.c), var_3.e, !vec4<bool>(var_2, false, true, true))));
    return firstTrailingBit(_wgslsmith_add_i32(var_3.d, -(i32(-1i) * -1i)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    global0 = array<u32, 24>();
    let var_0 = arg_0;
    let var_1 = -2147483647i;
    let var_2 = arg_1.x;
    global2 = reverseBits(func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(1i, global0[_wgslsmith_index_u32(0u, 24u)], vec3<f32>(var_2, arg_1.x, 2726f), vec2<bool>(false, var_0.a))) - vec3<f32>(1649f, 1000f, -378f)))));
    return Struct_1(true | (true & !var_0.a), 317f <= _wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)), arg_0.c, firstTrailingBit(1i), vec4<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(var_0.e.xz, min(-var_0.e.xy, _wgslsmith_clamp_vec2_i32(arg_0.e.xx, arg_0.e.yx, vec2<i32>(u_input.c, -1i)))), -21472i & -_wgslsmith_clamp_i32(-12569i, u_input.c, 18153i), abs(0i)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec3<u32> {
    let var_0 = vec3<i32>(u_input.c >> (4294967295u % 32u), i32(-1i) * -2147483647i, 1i);
    var var_1 = firstLeadingBit(vec3<u32>(u_input.a, u_input.a, _wgslsmith_add_u32(~(global0[_wgslsmith_index_u32(4294967295u, 24u)] ^ u_input.b.x), ~(~global1.x))));
    var_1 = u_input.d;
    var var_2 = _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, ~(~1u), firstLeadingBit(var_1.x), global0[_wgslsmith_index_u32(33033u, 24u)]), u_input.b);
    global1 = ~(min(u_input.d, _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 79874u, 4294967295u), reverseBits(vec3<u32>(global1.x, 0u, arg_2)))) << (~select(~u_input.d, select(vec3<u32>(global1.x, 44426u, var_1.x), vec3<u32>(1u, global1.x, 0u), false), all(vec3<bool>(arg_0.b, arg_1.a, arg_0.a))) % vec3<u32>(32u)));
    return min(_wgslsmith_div_vec3_u32(u_input.b.zzy, u_input.b.zzx), ~vec3<u32>(45813u, 61993u, 33059u));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = array<u32, 24>();
    var var_0 = ~4294967295u;
    global1 = ~(~func_5(func_2(Struct_1(true, false, -37719i, -16596i, vec4<i32>(u_input.c, 5376i, u_input.c, -2147483647i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-176f, 366f))), Struct_1(arg_0, true && arg_0, u_input.c, u_input.c, vec4<i32>(1i, u_input.c, u_input.c, -2793i)), u_input.b.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -102f), vec2<f32>(-241f, -1082f), arg_0))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-2280f - -1707f), 106f))));
    var var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1565f - 137f), _wgslsmith_f_op_vec3_f32(func_3(u_input.c, 65760u, vec3<f32>(var_1.x, 278f, var_1.x), vec2<bool>(false, arg_0))).x) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(938f, -469f)))))))));
    return Struct_1(u_input.c <= (-1i << (max(firstLeadingBit(global1.x), reverseBits(0u)) % 32u)), arg_0, func_2(Struct_1(all(vec2<bool>(false, arg_0)), arg_0, _wgslsmith_div_i32(-u_input.c, ~1i), u_input.c, select(vec4<i32>(u_input.c, -2147483647i, 2147483647i, u_input.c) >> (u_input.b % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(u_input.c, u_input.c, -35240i, u_input.c)), vec4<bool>(true, true, true, true))), var_1).e.x, u_input.c, ~_wgslsmith_sub_vec4_i32(vec4<i32>(-u_input.c, _wgslsmith_add_i32(u_input.c, u_input.c), u_input.c, _wgslsmith_mod_i32(u_input.c, 0i)), _wgslsmith_div_vec4_i32(abs(vec4<i32>(-1i, 1i, u_input.c, 1i)), ~vec4<i32>(-49390i, 20986i, u_input.c, 1i))));
}

fn func_6(arg_0: f32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global1 = select(firstTrailingBit(~(~firstTrailingBit(vec3<u32>(42057u, global0[_wgslsmith_index_u32(global1.x, 24u)], u_input.d.x)))), countOneBits(u_input.b.xxy) << (u_input.d % vec3<u32>(32u)), any(select(!(!vec3<bool>(arg_2.a, false, true)), vec3<bool>(27280u <= u_input.d.x, func_1(false).a, true), arg_2.b)));
    let var_0 = abs(~abs(global1.yz));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-323f + 289f), _wgslsmith_f_op_f32(270f * arg_0)))))));
    var var_2 = Struct_1(true, arg_3.b & (1u < _wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, global1.x, global0[_wgslsmith_index_u32(42278u, 24u)], 4294967295u), u_input.b, vec4<bool>(false, true, false, false)), select(u_input.b, vec4<u32>(1u, global0[_wgslsmith_index_u32(32872u, 24u)], 4294967295u, arg_1), vec4<bool>(arg_3.b, arg_3.a, arg_3.b, false)))), 2147483647i << (arg_1 % 32u), ~(0i ^ arg_3.d), ~(vec4<i32>(arg_2.c, u_input.c, _wgslsmith_div_i32(0i, -28753i), func_1(false).d) | arg_3.e));
    var var_3 = arg_2;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -530f);
    let var_1 = func_6(-751f, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(select(u_input.b.x ^ u_input.b.x, global0[_wgslsmith_index_u32(max(1u, 73039u), 24u)], true), 24u)] | global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(u_input.d.x, 24u)], ~41713u), 24u)], 0u), func_1(true), Struct_1(_wgslsmith_sub_u32(select(12046u, 44712u, true), global0[_wgslsmith_index_u32(global1.x, 24u)] << (global0[_wgslsmith_index_u32(u_input.a, 24u)] % 32u)) > _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1u, u_input.b.x, global0[_wgslsmith_index_u32(18598u, 24u)]) | vec4<u32>(4294967295u, global1.x, global0[_wgslsmith_index_u32(global1.x, 24u)], global1.x), ~u_input.b), true & all(vec2<bool>(true, true)), select(~_wgslsmith_add_i32(39520i, u_input.c), u_input.c, false), u_input.c, abs(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.c, 0i, -1i), vec4<i32>(32596i, u_input.c, u_input.c, 2147483647i))))));
    global1 = u_input.d ^ u_input.d;
    global0 = array<u32, 24>();
    global1 = vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~u_input.b, u_input.b), u_input.b) | 1u, global0[_wgslsmith_index_u32(4957u, 24u)], ~(0u ^ (firstTrailingBit(3221u) ^ 1u)));
    global0 = array<u32, 24>();
    global2 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(-(i32(-1i) * -var_1.c));
}

