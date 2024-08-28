struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct Struct_5 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4>;

var<private> global1: vec2<u32> = vec2<u32>(110549u, 1u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = vec2<u32>(_wgslsmith_add_u32(5347u, 37369u), ~max(global1.x, global1.x));
    var var_1 = vec4<u32>(global1.x | _wgslsmith_dot_vec2_u32(~vec2<u32>(8671u, arg_1.d.x), var_0 << (vec2<u32>(0u, 1u) % vec2<u32>(32u))), reverseBits(_wgslsmith_mult_u32(1u, ~4294967295u)), arg_1.d.x, _wgslsmith_mod_u32(~(~0u), ~_wgslsmith_add_u32(0u, 1u))) << (reverseBits(min(vec4<u32>(~4294967295u, global1.x, arg_1.d.x, ~49918u), arg_1.d)) % vec4<u32>(32u));
    var var_2 = Struct_5(countOneBits(reverseBits(max(arg_0 | 7150i, -2147483647i))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -311f), -538f)), _wgslsmith_f_op_f32(620f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -681f) - -357f)))));
    let var_3 = Struct_1(!arg_3.a, min(reverseBits(~select(u_input.b.yw, vec2<i32>(-29917i, var_2.a), arg_3.c.xy)), _wgslsmith_div_vec2_i32(~firstLeadingBit(arg_1.e), firstLeadingBit(countOneBits(vec2<i32>(-52980i, 23365i))))), arg_3.c);
    var var_4 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(var_2.b * -2089f)))), vec2<f32>(-2198f, _wgslsmith_f_op_f32(795f * _wgslsmith_f_op_f32(abs(var_2.b)))), var_3, var_1.x, var_2.a);
    return firstTrailingBit(~countOneBits(arg_1.c) | _wgslsmith_mod_vec4_i32((vec4<i32>(var_2.a, u_input.e.x, arg_0, -2147483647i) ^ u_input.b) & u_input.b, _wgslsmith_add_vec4_i32(arg_1.c, u_input.b)));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<u32>, arg_2: Struct_4) -> i32 {
    global1 = ~_wgslsmith_mod_vec2_u32(arg_2.d.zy, _wgslsmith_clamp_vec2_u32(min(vec2<u32>(74301u, 0u), abs(vec2<u32>(321u, 1u))), arg_2.d.ww, vec2<u32>(~arg_1.x, arg_1.x)));
    var var_0 = !vec4<bool>(arg_2.b, all(!(!vec4<bool>(true, arg_2.b, true, true))), arg_2.a, false);
    global1 = _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(arg_1.yz, vec2<u32>(arg_2.d.x, 0u) << (arg_2.d.zy % vec2<u32>(32u))), arg_1.yz, vec2<u32>(_wgslsmith_mult_u32(4294967295u, arg_1.x), arg_2.d.x << (4294967295u % 32u))), vec2<u32>(arg_2.d.x, global1.x)), vec2<u32>(global1.x, 1u), abs(vec2<u32>(arg_1.x, global1.x) >> (arg_2.d.xz % vec2<u32>(32u))));
    var var_1 = true;
    global1 = firstTrailingBit(arg_2.d.wx);
    return _wgslsmith_dot_vec2_i32(arg_2.c.zz, vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -3407i), u_input.b.zz), ~arg_0.a), -2147483647i, arg_0.a), -1i));
}

fn func_2(arg_0: vec4<bool>, arg_1: f32) -> Struct_5 {
    let var_0 = arg_1;
    var var_1 = Struct_5(global0[_wgslsmith_index_u32(global1.x, 4u)], 1000f);
    var_1 = Struct_5(func_4(Struct_5(var_1.a, var_0), max(vec3<u32>(global1.x, global1.x, global1.x) << (vec3<u32>(global1.x, 0u, global1.x) % vec3<u32>(32u)), ~vec3<u32>(global1.x, global1.x, 36845u)), Struct_4(arg_0.x, all(vec4<bool>(arg_0.x, false, false, arg_0.x)), func_3(u_input.a, Struct_4(arg_0.x, arg_0.x, vec4<i32>(35977i, 12410i, 4893i, global0[_wgslsmith_index_u32(global1.x, 4u)]), vec4<u32>(0u, 15386u, global1.x, global1.x), u_input.e.xz), arg_0.wy, Struct_1(arg_0.x, u_input.b.wx, vec4<bool>(false, false, false, false))), abs(vec4<u32>(4294967295u, 4294967295u, 12697u, 1u)), reverseBits(vec2<i32>(global0[_wgslsmith_index_u32(43182u, 4u)], -37269i)))) & (i32(-1i) * -51053i), _wgslsmith_f_op_f32(-arg_1));
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(1i), abs(44594i)), vec2<i32>(firstLeadingBit(_wgslsmith_mod_i32(-1i, -16098i)) << (global1.x % 32u), ~func_3(u_input.e.x, Struct_4(true, false, vec4<i32>(-12158i, -37i, -26619i, 2147483647i), vec4<u32>(56836u, global1.x, global1.x, 4294967295u), vec2<i32>(-2147483647i, var_1.a)), arg_0.zw, Struct_1(arg_0.x, u_input.e.xz, arg_0)).x));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(901f, arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(595f, 943f, arg_0.x))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -398f)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 1600f) - vec2<f32>(1000f, 385f))), vec2<f32>(_wgslsmith_f_op_f32(-var_0), arg_1), select(vec2<bool>(arg_0.x, arg_0.x), !arg_0.xx, vec2<bool>(true, arg_0.x))))), Struct_1(1u < select(global1.x, global1.x, arg_1 == arg_1), ~vec2<i32>(4682i, -36170i), select(arg_0, vec4<bool>(arg_0.x, var_0 < var_1.b, false, !arg_0.x), select(any(vec2<bool>(arg_0.x, arg_0.x)), true, true))), abs(global1.x), 2147483647i);
    return Struct_5(firstLeadingBit(1i), var_1.b);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> i32 {
    var var_0 = 0u;
    var var_1 = func_2(!(!arg_1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1862f + -1739f), -1645f))) * _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(select(-105f, -512f, arg_2))))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.b * 326f))));
    let var_3 = _wgslsmith_add_u32(firstTrailingBit(global1.x), ~_wgslsmith_div_u32(global1.x ^ firstLeadingBit(1u), 75335u));
    var var_4 = arg_0;
    return _wgslsmith_dot_vec3_i32(u_input.b.xxy, u_input.b.ywy) | arg_1.b.x;
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_4) -> Struct_2 {
    global1 = firstLeadingBit(vec2<u32>(arg_2.d.x, _wgslsmith_dot_vec2_u32(countOneBits(max(vec2<u32>(global1.x, arg_2.d.x), arg_2.d.ww)), max(_wgslsmith_mod_vec2_u32(arg_2.d.zy, vec2<u32>(22711u, 0u)), arg_2.d.wz ^ vec2<u32>(global1.x, arg_2.d.x)))));
    let var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(1u, _wgslsmith_div_u32(_wgslsmith_mult_u32(global1.x, ~4294967295u), ~(~9458u)), 0u), vec3<u32>(43355u, firstTrailingBit(32324u), 40758u));
    global1 = var_0.zx;
    global1 = ~(~reverseBits(vec2<u32>(arg_2.d.x, 39536u))) & (var_0.xz << (vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(87954u, var_0.x, 1u, 58104u), arg_2.d), abs(64817u)), ~(~var_0.x)) % vec2<u32>(32u)));
    var var_1 = arg_2;
    return Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1583f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(454f, 173f)) + vec2<f32>(-1163f, 1030f)) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1257f, 1126f))))))), Struct_1(false, var_1.e, vec4<bool>(true, false, !arg_2.b && all(vec2<bool>(true, true)), var_1.a)), ~(_wgslsmith_mult_u32(var_1.d.x, 4294967295u) >> (4294967295u % 32u)) ^ var_1.d.x, func_3(55970i, Struct_4(var_1.b, any(select(vec3<bool>(var_1.b, var_1.b, arg_2.b), vec3<bool>(var_1.b, var_1.a, arg_2.b), vec3<bool>(var_1.b, var_1.b, var_1.b))), u_input.b, ~(~var_1.d), arg_2.e), !select(vec2<bool>(false, var_1.a), !vec2<bool>(arg_2.b, false), true), Struct_1(!var_1.b, firstTrailingBit(vec2<i32>(global0[_wgslsmith_index_u32(arg_2.d.x, 4u)], u_input.d)), !vec4<bool>(var_1.a, false, true, var_1.a))).x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_5(_wgslsmith_div_i32(-func_1(u_input.c, Struct_1(true, vec2<i32>(-34317i, 5624i), vec4<bool>(false, true, false, true)), false), 1i), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.e.zy, _wgslsmith_add_vec2_i32(u_input.e.xz, vec2<i32>(global0[_wgslsmith_index_u32(global1.x, 4u)], 2147483647i))), u_input.b.zz), Struct_4(all(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true)), vec4<i32>(-16202i, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(21849u, 4u)], global0[_wgslsmith_index_u32(global1.x, 4u)]), ~u_input.c, global0[_wgslsmith_index_u32(global1.x, 4u)]), firstTrailingBit(vec4<u32>(0u, 4294967295u, global1.x, 40215u)) & ~vec4<u32>(0u, 37881u, global1.x, 31902u), vec2<i32>(-1i, global0[_wgslsmith_index_u32(global1.x, 4u)] << (0u % 32u)))));
    let var_1 = select(select(select(!var_0.a.c.c.wx, !vec2<bool>(true, var_0.a.c.a), all(!var_0.a.c.c.zxx)), !var_0.a.c.c.yz, reverseBits(u_input.b.x) <= ~40055i), var_0.a.c.c.zy, var_0.a.c.a);
    let var_2 = _wgslsmith_dot_vec3_i32(u_input.b.wyz, ~vec3<i32>(-1i, u_input.e.x, _wgslsmith_div_i32(-1i, firstTrailingBit(u_input.c))));
    var var_3 = vec2<bool>(select(_wgslsmith_mult_u32(5970u, 1u) <= countOneBits(_wgslsmith_mod_u32(global1.x, 0u)), var_0.a.c.c.x, !any(vec4<bool>(true, false, false, true))), false);
    let var_4 = vec2<u32>(_wgslsmith_sub_u32(~(~var_0.a.d), 1u) << (61230u % 32u), ~8245u);
    let var_5 = ~(_wgslsmith_sub_vec2_u32(reverseBits(var_4), vec2<u32>(var_4.x, global1.x)) ^ ~vec2<u32>(0u, var_0.a.d)) | var_4;
    var var_6 = var_0.a.c.a;
    global1 = var_5;
    var_3 = !select(select(vec2<bool>(false, !var_0.a.c.a), vec2<bool>(var_1.x, false), var_0.a.c.c.xx), select(var_0.a.c.c.wy, var_1, var_0.a.c.c.zx), select(var_1, select(var_0.a.c.c.wz, !vec2<bool>(var_0.a.c.c.x, var_0.a.c.a), var_0.a.a <= -1130f), var_1));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(select(vec4<u32>(var_5.x, global1.x, 5954u, var_4.x), vec4<u32>(103281u, var_0.a.d, var_0.a.d, var_4.x), var_0.a.c.c), vec4<u32>(var_5.x, global1.x, var_5.x, var_5.x)), abs(~vec4<u32>(var_4.x, var_5.x, var_0.a.d, var_4.x)))), func_2(var_0.a.c.c, var_0.a.a).b, -698f, -_wgslsmith_clamp_i32(~var_0.a.c.b.x, _wgslsmith_mult_i32(-1i, -48487i) >> (reverseBits(var_5.x) % 32u), ~var_0.a.e | (global0[_wgslsmith_index_u32(global1.x, 4u)] << (0u % 32u))), vec4<u32>(countOneBits(~countOneBits(4294967295u)), ~(~reverseBits(78003u)), var_4.x, 32505u));
}

