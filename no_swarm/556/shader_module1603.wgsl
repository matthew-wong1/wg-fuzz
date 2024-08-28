struct Struct_1 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29> = array<i32, 29>(-15601i, 13624i, 1i, 2147483647i, -9902i, 0i, 16159i, -62920i, 2147483647i, -11369i, 49146i, -1i, -1i, -1i, i32(-2147483648), -10483i, -19034i, 0i, 2147483647i, 16908i, 23227i, -3889i, 1i, -1761i, 0i, i32(-2147483648), i32(-2147483648), -5938i, i32(-2147483648));

var<private> global1: array<vec3<bool>, 7>;

var<private> global2: array<vec3<bool>, 27> = array<vec3<bool>, 27>(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false));

var<private> global3: array<bool, 19> = array<bool, 19>(false, true, false, false, true, true, true, true, true, false, true, false, false, true, false, true, false, true, true);

var<private> global4: vec4<u32>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> vec2<f32> {
    global4 = firstTrailingBit(vec4<u32>(_wgslsmith_clamp_u32(global4.x, 11891u, reverseBits(~global4.x)), 1u, ~23262u, global4.x));
    var var_0 = false;
    global0 = array<i32, 29>();
    global4 = vec4<u32>(countOneBits(firstTrailingBit(~_wgslsmith_div_u32(u_input.a, 3001u))), select(~_wgslsmith_div_u32(reverseBits(21781u), global4.x), global4.x, true), reverseBits(~1u), u_input.c);
    let var_1 = abs(~(~(~global4.x)));
    return vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -984f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-393f)) + _wgslsmith_div_f32(-1393f, 1224f)))));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: f32) -> vec3<f32> {
    global3 = array<bool, 19>();
    global4 = _wgslsmith_mult_vec4_u32(~max(vec4<u32>(15634u, global4.x, 1u, global4.x) ^ vec4<u32>(56166u, 1u, 45272u, u_input.c), vec4<u32>(global4.x, global4.x, global4.x, u_input.b)), vec4<u32>(~global4.x, ~min(u_input.a, 1u), 52171u, u_input.b)) | ~(vec4<u32>(_wgslsmith_clamp_u32(u_input.b, global4.x, global4.x), u_input.b, reverseBits(1u), _wgslsmith_mod_u32(36794u, 1u)) ^ vec4<u32>(1u, global4.x, u_input.c, reverseBits(global4.x)));
    var var_0 = -1i;
    let var_1 = arg_3;
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(-_wgslsmith_add_i32(abs(global0[_wgslsmith_index_u32(1u, 29u)]), global0[_wgslsmith_index_u32(1u, 29u)] ^ arg_2.b), abs(-max(44663i, global0[_wgslsmith_index_u32(51071u, 29u)]))), _wgslsmith_sub_i32(-2147483647i, 2147483647i >> (~global4.x % 32u)));
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(arg_1, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(arg_1)) - vec3<f32>(-1104f, var_1, arg_3)))), global1[_wgslsmith_index_u32(4294967295u, 7u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_3, _wgslsmith_div_f32(arg_1.x, arg_1.x), _wgslsmith_f_op_f32(arg_1.x + arg_1.x)))))));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: Struct_1) -> vec4<f32> {
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -554f) * arg_1.x), -112f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -458f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_2.x, 1465f), arg_2.x, true && arg_3.a))) + arg_2.x), _wgslsmith_f_op_vec3_f32(func_3(global3[_wgslsmith_index_u32(select(global4.x, 10617u, !global3[_wgslsmith_index_u32(arg_0.x, 19u)]) >> (_wgslsmith_clamp_u32(~u_input.b, _wgslsmith_add_u32(1u, global4.x), 1u) % 32u), 19u)], _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, -461f) - arg_2)))), arg_3, 848f)).x);
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: f32) -> vec4<f32> {
    var var_0 = select(global4.zzw, ~global4.xyx, ~arg_0.x <= -63206i);
    global0 = array<i32, 29>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, 864f, 383f, arg_2)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(319f, arg_1, -2067f, 916f)), select(vec4<bool>(global3[_wgslsmith_index_u32(var_0.x, 19u)], global3[_wgslsmith_index_u32(global4.x, 19u)], global3[_wgslsmith_index_u32(u_input.a, 19u)], global3[_wgslsmith_index_u32(var_0.x, 19u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 19u)], global3[_wgslsmith_index_u32(91049u, 19u)], global3[_wgslsmith_index_u32(6104u, 19u)]), true)))) * _wgslsmith_f_op_vec4_f32(func_4(~_wgslsmith_add_vec2_u32(var_0.yx, var_0.xy), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-682f, arg_2, -1117f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3(true, vec3<f32>(arg_2, 973f, 450f), Struct_1(true, 0i), arg_2)))), Struct_1(u_input.a < 49938u, -arg_0.x)))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: vec3<u32>) -> vec4<u32> {
    var var_0 = global4.wzx;
    let var_1 = max(arg_2, reverseBits((~arg_2 | vec3<u32>(global4.x, 35681u, var_0.x)) | ~abs(arg_2)));
    var var_2 = _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(3349u, 24997u)) & ~(var_0.yx ^ ~vec2<u32>(var_1.x, 4294967295u)), vec2<u32>(1u, arg_2.x), ~(var_0.yx >> (var_0.xy % vec2<u32>(32u))));
    var var_3 = vec2<i32>(_wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(abs(vec4<i32>(global0[_wgslsmith_index_u32(arg_2.x, 29u)], -15585i, global0[_wgslsmith_index_u32(19051u, 29u)], -1i)), ~vec4<i32>(1i, -3679i, global0[_wgslsmith_index_u32(var_2.x, 29u)], -2147483647i)), firstLeadingBit(vec4<i32>(_wgslsmith_mod_i32(2147483647i, global0[_wgslsmith_index_u32(2947u, 29u)]), 17107i, -30309i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), arg_2.zz), 29u)]))), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(~(~abs(4294967295u)), 29u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(4294967295u, arg_2.x, 3676u), arg_2), abs(vec3<u32>(var_0.x, 4294967295u, 11630u))), 29u)]));
    let var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), -447f)));
    return _wgslsmith_mult_vec4_u32(vec4<u32>(~_wgslsmith_clamp_u32(abs(arg_2.x), global4.x, ~1u), ~var_2.x, _wgslsmith_div_u32(~_wgslsmith_dot_vec2_u32(var_1.xz, vec2<u32>(arg_2.x, 42611u)), ~(~31416u)), ~u_input.c), ~firstTrailingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(var_2.x, 32490u, 4294967295u, var_1.x), vec4<u32>(global4.x, var_0.x, 1u, 41414u))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 27>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-627f, -318f), _wgslsmith_f_op_vec2_f32(func_1())), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -1234f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1514f, -640f) + vec2<f32>(1564f, -1546f))))), global3[_wgslsmith_index_u32(4294967295u, 19u)])));
    global4 = func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, 211f, -656f), vec4<f32>(-1544f, var_0.x, var_0.x, 3108f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(1u, 29u)], 49358i, 1i), var_0.x, 350f)), vec4<f32>(var_0.x, 391f, var_0.x, 1235f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1019f), -1018f, _wgslsmith_f_op_f32(f32(-1f) * -337f), _wgslsmith_f_op_vec3_f32(func_3(true, vec3<f32>(var_0.x, var_0.x, var_0.x), Struct_1(global3[_wgslsmith_index_u32(0u, 19u)], global0[_wgslsmith_index_u32(11370u, 29u)]), -1209f)).x)))), vec3<u32>(0u, global4.x, _wgslsmith_dot_vec3_u32(~(~global4.wyw), vec3<u32>(global4.x & global4.x, u_input.a, 0u))));
    var var_1 = ~global4.x;
    let var_2 = Struct_1(any(vec4<bool>(global3[_wgslsmith_index_u32(1u, 19u)] && any(vec2<bool>(global3[_wgslsmith_index_u32(u_input.c, 19u)], global3[_wgslsmith_index_u32(u_input.b, 19u)])), global3[_wgslsmith_index_u32(min(u_input.b, _wgslsmith_sub_u32(global4.x, 1u)), 19u)], true, all(select(vec3<bool>(false, false, global3[_wgslsmith_index_u32(4294967295u, 19u)]), vec3<bool>(false, false, global3[_wgslsmith_index_u32(1u, 19u)]), false)))), firstTrailingBit(-23032i));
    var_1 = _wgslsmith_sub_u32(firstTrailingBit(u_input.c), 38055u);
    var var_3 = _wgslsmith_f_op_f32(-1191f - var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(u_input.a, 29u)], _wgslsmith_add_i32(9920i, -106857i));
}

