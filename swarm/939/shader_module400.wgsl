struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<f32>(959f, 118f, -1143f, -811f));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: i32) -> vec4<u32> {
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.a.x))), -1958f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1416f)))), _wgslsmith_f_op_f32(f32(-1f) * -271f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(global0.a)))));
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(global0.a.x)), _wgslsmith_f_op_f32(-global0.a.x))), _wgslsmith_f_op_f32(sign(global0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + -1000f)), 842f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(global0.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global0.a))))));
    var var_0 = global0.a.zy;
    let var_1 = vec3<bool>(true, true, true);
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-1f), Struct_2(Struct_1(vec3<bool>(any(var_1.zz), !var_1.x, var_1.x), vec4<u32>(_wgslsmith_sub_u32(u_input.b, 1u), _wgslsmith_clamp_u32(0u, 1u, 19704u), ~u_input.b, u_input.b)), Struct_1(!(!var_1), vec4<u32>(13812u, ~u_input.c.x, 16726u >> (u_input.a.x % 32u), firstTrailingBit(59458u))), Struct_1(var_1, reverseBits(abs(vec4<u32>(4294967295u, 4294967295u, 139966u, arg_0)))), Struct_1(vec3<bool>(var_1.x, true, false), ~(~vec4<u32>(u_input.a.x, arg_0, 18401u, 97872u))), arg_1), Struct_1(vec3<bool>(select(true, true, false), all(vec3<bool>(var_1.x, var_1.x, var_1.x)) & var_1.x, firstLeadingBit(arg_0) < _wgslsmith_dot_vec2_u32(u_input.a.zy, u_input.c)), ~max(_wgslsmith_mult_vec4_u32(vec4<u32>(33238u, arg_0, 0u, 46896u), vec4<u32>(arg_0, 0u, u_input.c.x, 22167u)), ~vec4<u32>(arg_0, 0u, 8700u, 23948u))), Struct_3(vec4<f32>(_wgslsmith_f_op_f32(max(var_0.x, 228f)), 1315f, _wgslsmith_f_op_f32(floor(global0.a.x)), -459f)));
    return var_2.c.b;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec4<f32>, arg_3: f32) -> vec3<bool> {
    var var_0 = Struct_1(select(!vec3<bool>(39189i >= u_input.d.x, true, true), vec3<bool>(false, all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false))), any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)))), firstTrailingBit(abs(arg_0)) <= arg_1), func_3(~4294967295u, _wgslsmith_clamp_i32(u_input.d.x, u_input.d.x, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -25305i, -456i), vec3<i32>(u_input.d.x, 8491i, 1922i)), vec3<i32>(1i, -2147483647i, u_input.d.x)))));
    return vec3<bool>(!(!(true & (var_0.a.x || var_0.a.x))), false, var_0.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(floor(global0.a.x)), global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1092f - _wgslsmith_div_f32(-222f, global0.a.x))), global0.a.x), vec4<f32>(_wgslsmith_f_op_f32(704f + _wgslsmith_f_op_f32(f32(-1f) * -565f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.a.x))))), _wgslsmith_f_op_f32(-global0.a.x), -448f)));
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1205f, _wgslsmith_f_op_f32(f32(-1f) * -213f), _wgslsmith_f_op_f32(-global0.a.x), 1000f) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0 * var_0), _wgslsmith_f_op_vec4_f32(global0.a * global0.a))))));
    global0 = Struct_3(_wgslsmith_div_vec4_f32(var_0, _wgslsmith_f_op_vec4_f32(max(var_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0 + global0.a))))));
    let var_1 = u_input.d.ww;
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_0)), vec4<f32>(1375f, global0.a.x, 562f, -1400f)))));
    return Struct_3(_wgslsmith_f_op_vec4_f32(var_0 + _wgslsmith_f_op_vec4_f32(round(var_0))));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: i32, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = arg_1.x;
    global0 = func_4(Struct_1(func_2(_wgslsmith_div_u32(1301u, u_input.b) >> (abs(u_input.b) % 32u), ~u_input.c.x, global0.a, global0.a.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 25773u, ~1u, u_input.b), ~(vec4<u32>(u_input.a.x, 4294967295u, 1u, 74501u) >> (vec4<u32>(u_input.c.x, u_input.c.x, 0u, u_input.b) % vec4<u32>(32u))))), Struct_1(vec3<bool>(true, func_2(u_input.c.x, u_input.c.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.a.x, global0.a.x, -1124f)), 257f).x, true), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(61338u, 65261u, u_input.c.x, 1u)), abs(vec4<u32>(u_input.a.x, 1u, u_input.b, 0u))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 79397u, u_input.b), vec4<u32>(u_input.c.x, 0u, u_input.b, 29474u)))));
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, global0.a.x, 1718f, global0.a.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(2259f, global0.a.x, global0.a.x, global0.a.x) * global0.a)))), global0.a)));
    global0 = func_4(Struct_1(vec3<bool>(select(true, func_2(24927u, 7096u, global0.a, 1895f).x, all(arg_1)), all(vec2<bool>(true, false)), true), vec4<u32>(65530u, u_input.b, ~(~u_input.b), ~1u)), Struct_1(select(select(select(vec3<bool>(true, false, true), arg_1, vec3<bool>(true, false, true)), vec3<bool>(var_0, var_0, var_0), u_input.b < 68565u), vec3<bool>(true, var_0, true), true), ~abs(vec4<u32>(u_input.a.x, 16626u, 4294967295u, 8226u) >> (vec4<u32>(4294967295u, 54662u, u_input.a.x, 0u) % vec4<u32>(32u)))));
    let var_1 = Struct_1(arg_1, ~vec4<u32>(_wgslsmith_clamp_u32(u_input.c.x, u_input.a.x, 1u), reverseBits(abs(u_input.a.x)), ~(~50572u), 13587u));
    return Struct_1(vec3<bool>(!var_1.a.x, true, !all(!vec2<bool>(true, arg_1.x))), ~var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a))));
    var var_0 = Struct_2(Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), max(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c.x, u_input.b, u_input.c.x, 61402u), abs(vec4<u32>(4294967295u, 25121u, u_input.a.x, u_input.a.x))), ~vec4<u32>(1u, 4294967295u, u_input.b, u_input.a.x) & ~vec4<u32>(u_input.b, u_input.b, 45571u, u_input.c.x))), Struct_1(vec3<bool>(true, true, any(vec3<bool>(true, true, false))), _wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(u_input.b, u_input.b, u_input.a.x, u_input.c.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.c.x, u_input.b, u_input.b), vec4<u32>(u_input.b, 2989u, 2137u, 4294967295u))) ^ select(vec4<u32>(55122u, 1u, u_input.c.x, 4294967295u), ~vec4<u32>(4294967295u, u_input.a.x, u_input.c.x, u_input.a.x), true)), func_1(~(~u_input.d.x) | _wgslsmith_sub_i32(u_input.d.x << (u_input.a.x % 32u), select(-4864i, u_input.d.x, true)), vec3<bool>(any(vec4<bool>(true, true, true, true)), true, _wgslsmith_f_op_f32(-global0.a.x) < _wgslsmith_f_op_f32(-global0.a.x)), u_input.d.x, firstTrailingBit(vec3<i32>(51358i, 1i, u_input.d.x) >> (vec3<u32>(u_input.b, u_input.a.x, u_input.a.x) % vec3<u32>(32u)))), func_1(_wgslsmith_mult_i32(u_input.d.x, _wgslsmith_mult_i32(min(u_input.d.x, -1i), abs(-8486i))), !select(vec3<bool>(true, true, true), func_1(u_input.d.x, vec3<bool>(true, false, false), -2147483647i, u_input.d.wyw).a, true), _wgslsmith_clamp_i32(u_input.d.x, ~(u_input.d.x | 1i), 1i), select(reverseBits(u_input.d.xzw), firstLeadingBit(vec3<i32>(u_input.d.x, u_input.d.x, -20257i)), true)), ~_wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, u_input.d.x), vec2<i32>(select(u_input.d.x, -18995i, false), ~1i)));
    var var_1 = _wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-211f))));
    let var_2 = abs(~firstTrailingBit(u_input.d.x));
    global0 = func_4(func_1(5855i, var_0.a.a, firstLeadingBit(i32(-1i) * -var_2), _wgslsmith_add_vec3_i32(vec3<i32>(reverseBits(-36967i), -41321i, u_input.d.x << (5548u % 32u)), u_input.d.ywy)), func_1(max(var_2, _wgslsmith_sub_i32(firstLeadingBit(var_2), var_0.e ^ var_0.e)), var_0.c.a, i32(-1i) * -1i, select(~_wgslsmith_clamp_vec3_i32(u_input.d.zyx, vec3<i32>(u_input.d.x, var_2, 0i), u_input.d.xyy), u_input.d.wyw, var_0.d.a)));
    let var_3 = vec4<f32>(-940f, global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), global0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.x, -297f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.a.x - global0.a.x))))));
    var var_4 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-572f, 2029f, var_3.x, -678f), _wgslsmith_f_op_vec4_f32(-global0.a), var_0.c.a.x))))), global0.a);
    let var_5 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, -483f, _wgslsmith_f_op_f32(2346f + _wgslsmith_f_op_f32(abs(555f))), _wgslsmith_f_op_f32(var_4.x * var_3.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.a.x), 1639f, _wgslsmith_f_op_f32(782f + var_4.x), _wgslsmith_f_op_f32(trunc(var_3.x))))));
    let var_6 = _wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(u_input.a.x, countOneBits(1u) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c.x, u_input.b), vec3<u32>(37331u, u_input.a.x, 16335u)))), var_0.c.b.xz);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.wz, min(var_2, -3227i) ^ max(_wgslsmith_mult_i32(u_input.d.x, 1i), _wgslsmith_div_i32(24696i, firstTrailingBit(0i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1848f))), -311f))));
}

