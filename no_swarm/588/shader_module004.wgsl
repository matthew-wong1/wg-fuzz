struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
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

var<private> global0: vec4<u32>;

var<private> global1: u32 = 0u;

var<private> global2: array<Struct_2, 27>;

var<private> global3: array<bool, 5>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_2) -> vec2<i32> {
    var var_0 = arg_2;
    let var_1 = !global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(~(~u_input.b), ~u_input.b), 6350u), 5u)];
    let var_2 = global2[_wgslsmith_index_u32(~(u_input.a >> (~1u % 32u)), 27u)];
    var var_3 = vec2<bool>(any(select(!(!vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 5u)], global3[_wgslsmith_index_u32(global0.x, 5u)], true)), select(vec3<bool>(var_1, true, true), vec3<bool>(global3[_wgslsmith_index_u32(4184u, 5u)], true, var_1), all(vec3<bool>(var_1, false, global3[_wgslsmith_index_u32(68975u, 5u)]))), select(!vec3<bool>(true, var_1, true), select(vec3<bool>(var_1, false, true), vec3<bool>(var_1, var_1, global3[_wgslsmith_index_u32(u_input.a, 5u)]), vec3<bool>(true, global3[_wgslsmith_index_u32(0u, 5u)], var_1)), all(vec4<bool>(true, var_1, false, var_1))))), any(!vec3<bool>(all(vec4<bool>(false, false, global3[_wgslsmith_index_u32(13571u, 5u)], false)), any(vec4<bool>(var_1, false, var_1, true)), any(vec2<bool>(var_1, global3[_wgslsmith_index_u32(0u, 5u)])))));
    let var_4 = Struct_3(arg_1, arg_1.a.x);
    return vec2<i32>(6779i ^ (-arg_2.a.d & ((arg_1.b.x | arg_2.a.d) >> (~u_input.a % 32u))), _wgslsmith_dot_vec3_i32(-firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-6567i, arg_2.a.d, -1i), var_4.a.b, vec3<i32>(-1i, u_input.e, arg_2.a.d))), ~(-vec3<i32>(arg_1.c.x, var_0.a.b.x, arg_1.c.x))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: u32) -> Struct_3 {
    let var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-1165f * _wgslsmith_f_op_f32(280f + _wgslsmith_f_op_f32(step(1000f, -1000f)))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1000f, 325f, arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1008f)))), -(~(~(-vec3<i32>(u_input.d, u_input.d, 2147483647i)))), abs(_wgslsmith_clamp_vec2_i32(-vec2<i32>(16297i, u_input.e), func_3(vec3<f32>(694f, 412f, 1552f), Struct_1(vec3<f32>(-759f, 370f, 459f), vec3<i32>(u_input.e, -1i, -2147483647i), vec2<i32>(u_input.d, u_input.d), 6892i), global2[_wgslsmith_index_u32(global0.x, 27u)]), vec2<i32>(u_input.c, u_input.c)) | vec2<i32>(max(-1i, u_input.d), func_3(vec3<f32>(-1556f, 208f, 700f), Struct_1(vec3<f32>(-869f, 366f, 290f), vec3<i32>(1i, -31224i, u_input.c), vec2<i32>(u_input.e, 2147483647i), u_input.c), Struct_2(Struct_1(vec3<f32>(1483f, 310f, 578f), vec3<i32>(-1i, -1i, 0i), vec2<i32>(-4341i, 0i), -1i))).x)), _wgslsmith_mult_i32(~min(i32(-1i) * -33078i, -1i), 17525i));
    var var_1 = Struct_3(var_0, var_0.a.x);
    let var_2 = arg_0;
    let var_3 = ~u_input.b < arg_2;
    var var_4 = !arg_1.zw;
    return Struct_3(var_1.a, -680f);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32) -> u32 {
    let var_0 = Struct_3(Struct_1(vec3<f32>(252f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_div_f32(-1594f, _wgslsmith_f_op_f32(arg_1.a.a.x * arg_0.a.a.x))), vec3<i32>(-2147483647i, select(-2147483647i, select(-13626i, u_input.e, true), all(vec2<bool>(true, true))), arg_0.a.b.x), select(vec2<i32>(1i, _wgslsmith_dot_vec2_i32(arg_0.a.c, arg_1.a.c)), vec2<i32>(~(-1i), _wgslsmith_add_i32(u_input.c, -9351i)), vec2<bool>(global3[_wgslsmith_index_u32(~u_input.a, 5u)], 1u < global0.x)), _wgslsmith_sub_i32(2147483647i, ~_wgslsmith_add_i32(arg_0.a.b.x, arg_0.a.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-954f + arg_0.b)))))));
    let var_1 = firstLeadingBit(-min(arg_1.a.c, arg_1.a.c));
    let var_2 = (arg_0.a.b.xx | -_wgslsmith_add_vec2_i32(-arg_0.a.c, arg_0.a.c | vec2<i32>(0i, 1i))) & arg_1.a.b.yz;
    return _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(global0.ww, reverseBits(global0.zz)), 120638u);
}

fn func_1(arg_0: vec3<u32>, arg_1: i32) -> u32 {
    global2 = array<Struct_2, 27>();
    global2 = array<Struct_2, 27>();
    let var_0 = global3[_wgslsmith_index_u32(arg_0.x, 5u)];
    let var_1 = global2[_wgslsmith_index_u32(min(57269u, ~(~arg_0.x)), 27u)];
    global1 = ~func_4(func_2(select(select(vec3<bool>(global3[_wgslsmith_index_u32(global0.x, 5u)], true, global3[_wgslsmith_index_u32(73125u, 5u)]), vec3<bool>(false, global3[_wgslsmith_index_u32(19547u, 5u)], global3[_wgslsmith_index_u32(0u, 5u)]), true), vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 5u)], false, true), false), vec4<bool>(any(vec2<bool>(global3[_wgslsmith_index_u32(1u, 5u)], global3[_wgslsmith_index_u32(arg_0.x, 5u)])), all(vec4<bool>(true, global3[_wgslsmith_index_u32(1u, 5u)], global3[_wgslsmith_index_u32(global0.x, 5u)], true)), !global3[_wgslsmith_index_u32(arg_0.x, 5u)], global3[_wgslsmith_index_u32(53657u, 5u)] & global3[_wgslsmith_index_u32(26330u, 5u)]), max(~arg_0.x, countOneBits(1u))), Struct_3(var_1.a, -1277f), arg_0.x);
    return max(~arg_0.x, u_input.a << (u_input.b % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_sub_u32(global0.x, _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(~4294967295u, global0.x >> (0u % 32u)), max(firstLeadingBit(0u), u_input.a)), ~(_wgslsmith_dot_vec4_u32(vec4<u32>(760u, u_input.b, 49440u, u_input.b), vec4<u32>(48759u, global0.x, 1u, u_input.a)) ^ ~0u)));
    global0 = _wgslsmith_add_vec4_u32(vec4<u32>(func_1(global0.wxx, ~u_input.c), 4294967295u, ~16142u, 4294967295u), ~vec4<u32>(6326u, global0.x, 0u, 1u) >> (~(~vec4<u32>(0u, u_input.b, 0u, global0.x)) % vec4<u32>(32u))) ^ vec4<u32>(~_wgslsmith_mult_u32(u_input.b, 4294967295u) & ~(~u_input.a), _wgslsmith_div_u32(u_input.b, _wgslsmith_mult_u32(u_input.a, _wgslsmith_add_u32(global0.x, u_input.b))), _wgslsmith_div_u32(global0.x, ~_wgslsmith_clamp_u32(0u, global0.x, 4294967295u)), ~(~u_input.b));
    var var_0 = ~u_input.a;
    global1 = 1u;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1382f + _wgslsmith_f_op_f32(702f - -2705f)) + _wgslsmith_f_op_f32(f32(-1f) * -875f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-403f)) + -311f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(abs(-1182f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -644f)))));
    global3 = array<bool, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(global0.zy, 36731u, firstTrailingBit(-_wgslsmith_sub_vec3_i32(vec3<i32>(-48875i, -62293i, u_input.d), vec3<i32>(u_input.e, u_input.e, u_input.e) ^ vec3<i32>(-1i, -2147483647i, 11605i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1248f - 566f)))), u_input.e);
}

