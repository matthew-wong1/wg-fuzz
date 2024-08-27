struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: Struct_1,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(26617i, vec4<bool>(false, true, true, true)), Struct_1(2147483647i, vec4<bool>(true, false, true, false)), Struct_1(-7641i, vec4<bool>(true, true, true, true)), Struct_1(0i, vec4<bool>(false, true, true, false)));

var<private> global2: array<Struct_2, 26>;

var<private> global3: Struct_1;

var<private> global4: array<f32, 16>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_2) -> vec4<i32> {
    var var_0 = arg_2;
    global4 = array<f32, 16>();
    let var_1 = Struct_2(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(var_0.a, arg_2.a), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a.x, 0u, var_0.a.x, u_input.c), firstTrailingBit(vec4<u32>(65703u, 0u, arg_3.a.x, 0u)))), vec4<u32>(_wgslsmith_add_u32(1u, var_0.a.x), _wgslsmith_dot_vec4_u32(var_0.a, _wgslsmith_clamp_vec4_u32(arg_3.a, arg_2.a, vec4<u32>(4294967295u, 11515u, arg_3.a.x, arg_2.a.x))), ~(~4294967295u), var_0.a.x)), select(false, !(!(!var_0.c.b.x)), 1i >= (i32(-1i) * -global3.a)), Struct_1(global3.a, vec4<bool>(arg_2.b != select(true, false, false), any(vec4<bool>(global3.b.x, false, var_0.c.b.x, global3.b.x)), true == any(vec2<bool>(false, arg_0.b.x)), true)), _wgslsmith_f_op_vec3_f32(trunc(arg_3.d)), -1000f);
    let var_2 = arg_2.d.x < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2197f)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(291f, var_1.d.x, var_1.e, arg_2.e)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(153f, -969f, -1000f, global4[_wgslsmith_index_u32(16102u, 16u)])) * _wgslsmith_f_op_vec4_f32(vec4<f32>(2368f, -698f, global4[_wgslsmith_index_u32(u_input.c, 16u)], -1003f) + vec4<f32>(-119f, 948f, global4[_wgslsmith_index_u32(0u, 16u)], 2969f)))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(var_1.e - var_0.d.x), global4[_wgslsmith_index_u32(51257u, 16u)], _wgslsmith_f_op_f32(sign(arg_2.e)), _wgslsmith_f_op_f32(arg_2.d.x + 672f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.e, 158f, global4[_wgslsmith_index_u32(arg_2.a.x, 16u)], global4[_wgslsmith_index_u32(u_input.c, 16u)]))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_3.d.x), _wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(0u, 16u)])), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(arg_2.a.x, 16u)]), _wgslsmith_f_op_f32(min(513f, 2310f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(132f, arg_2.e, global4[_wgslsmith_index_u32(1u, 16u)], -941f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1428f, 857f, 1598f, arg_3.e))))), all(vec2<bool>(!select(false, true, var_1.b), any(!vec4<bool>(true, var_1.b, var_2, var_0.b))))));
    return -vec4<i32>(-31296i, -(~846i), _wgslsmith_clamp_i32(firstLeadingBit(0i), arg_0.a, ~57511i), _wgslsmith_dot_vec3_i32(~arg_1, vec3<i32>(u_input.b, -14192i, arg_2.c.a))) & vec4<i32>(~(-arg_2.c.a), -15003i, reverseBits(_wgslsmith_div_i32(arg_1.x, arg_1.x)), reverseBits(_wgslsmith_clamp_i32(13216i, -var_0.c.a, -2147483647i)));
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = ~(~(vec4<i32>(-1i) * -vec4<i32>(-20119i, 1i, u_input.a, 2147483647i)));
    global3 = Struct_1(i32(-1i) * -(firstTrailingBit(global3.a) | (u_input.b | 37127i)), global3.b);
    let var_1 = ~firstLeadingBit(-2147483647i);
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1205f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -497f) + global4[_wgslsmith_index_u32(4294967295u, 16u)])))));
    let var_3 = ~func_3(global1[_wgslsmith_index_u32(u_input.c, 4u)], vec3<i32>(-(var_0.x ^ -42367i), ~_wgslsmith_clamp_i32(var_1, -7128i, 2147483647i), countOneBits(global3.a)), Struct_2(~(~vec4<u32>(4294967295u, 0u, 0u, 4294967295u)), any(vec2<bool>(false, global3.b.x)) & global3.b.x, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c, ~u_input.c), 4u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2078f, 265f, -1495f))), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(abs(745u), 16u)] * 633f)), global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.c, u_input.c), 4294967295u, 4294967295u), 26u)]);
    return Struct_2(~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c, u_input.c, 0u, u_input.c), vec4<u32>(114908u, u_input.c, u_input.c, 69832u) >> (vec4<u32>(4294967295u, 0u, u_input.c, 8171u) % vec4<u32>(32u))) << (~(vec4<u32>(82795u, u_input.c, u_input.c, 4294967295u) ^ ~vec4<u32>(1u, u_input.c, 46681u, 0u)) % vec4<u32>(32u)), arg_0, Struct_1(-17401i, global3.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-525f, 1151f, -380f), vec3<f32>(var_2.x, -963f, global4[_wgslsmith_index_u32(13760u, 16u)]), vec3<bool>(arg_0, global3.b.x, arg_0))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(356f)), _wgslsmith_f_op_f32(trunc(894f)), global4[_wgslsmith_index_u32(~u_input.c, 16u)]) * vec3<f32>(_wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(u_input.c, 16u)], 802f)), _wgslsmith_f_op_f32(floor(var_2.x)), 1471f))), 958f);
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = ~u_input.c;
    return Struct_2((arg_2.a & (firstTrailingBit(arg_2.a) & vec4<u32>(4294967295u, 1u, 0u, arg_2.a.x))) & (arg_2.a ^ _wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0, 42708u, 0u, arg_0), vec4<u32>(0u, 0u, 0u, 4294967295u))), global3.b.x, func_2(all(vec2<bool>(true, global3.b.x))).c, _wgslsmith_f_op_vec3_f32(step(arg_2.d, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.e, -1648f, -797f), _wgslsmith_f_op_vec3_f32(arg_2.d + vec3<f32>(-2537f, -1037f, -470f))))))), _wgslsmith_div_f32(270f, arg_2.e));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: i32) -> u32 {
    global1 = array<Struct_1, 4>();
    var var_0 = func_4(arg_0, _wgslsmith_div_vec3_u32(vec3<u32>(~1u, arg_1, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0), vec2<u32>(23230u, arg_1))), ~reverseBits(vec3<u32>(arg_1, arg_0, arg_0))) & vec3<u32>(u_input.c, _wgslsmith_div_u32(arg_0, 0u) >> (_wgslsmith_sub_u32(u_input.c, 50371u) % 32u), _wgslsmith_sub_u32(firstTrailingBit(arg_0), u_input.c)), func_2(!global3.b.x));
    let var_1 = Struct_2(~func_4(arg_0, select(_wgslsmith_mod_vec3_u32(var_0.a.wxx, vec3<u32>(71482u, arg_1, 4294967295u)), var_0.a.wwz, vec3<bool>(global3.b.x, global3.b.x, var_0.b)), global2[_wgslsmith_index_u32(4294967295u, 26u)]).a, global3.b.x, global1[_wgslsmith_index_u32(~func_2(all(!vec3<bool>(global3.b.x, global3.b.x, var_0.c.b.x))).a.x, 4u)], _wgslsmith_f_op_vec3_f32(sign(var_0.d)), -409f);
    var var_2 = -14823i;
    var var_3 = !var_0.c.b.xz;
    return 0u;
}

fn func_5(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1) -> i32 {
    var var_0 = (min(~_wgslsmith_clamp_vec2_u32(arg_0.yx, arg_0.wx, vec2<u32>(u_input.c, 4294967295u)), ~arg_0.yz) >> (~countOneBits(arg_0.zw ^ arg_0.zx) % vec2<u32>(32u))) & ((func_2(global3.b.x).a.zz | ~vec2<u32>(arg_1, arg_1)) >> (~(~func_4(u_input.c, vec3<u32>(u_input.c, 1u, 28796u), global2[_wgslsmith_index_u32(53767u, 26u)]).a.xx) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1774f * global4[_wgslsmith_index_u32(u_input.c, 16u)]), -669f, _wgslsmith_f_op_f32(f32(-1f) * -786f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global4[_wgslsmith_index_u32(var_0.x, 16u)], global4[_wgslsmith_index_u32(arg_0.x, 16u)], -290f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1796f, global4[_wgslsmith_index_u32(36739u, 16u)], global4[_wgslsmith_index_u32(4294967295u, 16u)]), vec3<f32>(-673f, -185f, 209f), arg_2.b.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global4[_wgslsmith_index_u32(0u, 16u)], 1765f, -885f), vec3<f32>(-1152f, 510f, 1000f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(176f, global4[_wgslsmith_index_u32(arg_0.x, 16u)], -266f), vec3<f32>(global4[_wgslsmith_index_u32(4294967295u, 16u)], global4[_wgslsmith_index_u32(var_0.x, 16u)], global4[_wgslsmith_index_u32(var_0.x, 16u)]), global3.b.x)), !vec3<bool>(true, true, global3.b.x)))))));
    var var_2 = global2[_wgslsmith_index_u32(~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, u_input.c, 4294967295u, 15014u), ~arg_0)) | 79524u, 26u)];
    global4 = array<f32, 16>();
    let var_3 = arg_2;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 16>();
    var var_0 = global3.b.zx;
    let var_1 = global2[_wgslsmith_index_u32(~(~abs(_wgslsmith_add_u32(60116u, u_input.c | 2639u))), 26u)];
    var var_2 = Struct_1(func_5(select(vec4<u32>(func_1(4254u, u_input.c, 0i), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 49030u), vec2<u32>(8285u, 1u)), 1u, _wgslsmith_clamp_u32(u_input.c, 19996u, var_1.a.x)), ~var_1.a | ~vec4<u32>(u_input.c, var_1.a.x, 27633u, var_1.a.x), !var_0.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, 0u, 17431u, 77463u), vec4<u32>(var_1.a.x, u_input.c, u_input.c, 0u)), global1[_wgslsmith_index_u32(max(u_input.c, ~4294967295u), 4u)]), vec4<bool>(true, !(!any(var_1.c.b.xy)), false, false));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(countOneBits(func_1(_wgslsmith_mult_u32(func_1(u_input.c, 91947u, u_input.b), var_1.a.x), abs(var_1.a.x), -20509i & -var_1.c.a)), _wgslsmith_sub_u32(4294967295u, var_1.a.x)), 4u)];
    var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, _wgslsmith_div_u32(~1u, _wgslsmith_add_u32(~(u_input.c | 4294967295u), var_1.a.x))), 4u)];
    var var_4 = global2[_wgslsmith_index_u32(4294967295u, 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-var_4.e), _wgslsmith_f_op_f32(-595f * _wgslsmith_f_op_f32(-var_4.e)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.e), 1057f))))));
}

