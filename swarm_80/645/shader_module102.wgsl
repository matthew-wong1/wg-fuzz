struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: f32;

var<private> global2: i32 = 1i;

var<private> global3: f32;

var<private> global4: array<u32, 19>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: u32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(654f, _wgslsmith_f_op_f32(ceil(-1524f)), _wgslsmith_f_op_f32(-470f - -2020f), -1899f))));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) * var_0.x)), var_0.x, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, 546f))))));
    var var_1 = ~vec3<u32>(~(~37200u), 4294967295u, 1u >> (min(firstTrailingBit(arg_2), arg_2 ^ 0u) % 32u));
    let var_2 = Struct_1(vec4<i32>(arg_0.x | 30511i, -16586i, _wgslsmith_add_i32(_wgslsmith_mult_i32(countOneBits(arg_1.a.x), arg_1.a.x), 34975i), arg_1.a.x));
    var var_3 = arg_1;
    return _wgslsmith_sub_vec4_i32(abs(-abs(vec4<i32>(var_3.a.x, 1i, arg_1.a.x, var_3.a.x) << (vec4<u32>(40847u, arg_2, 34275u, 77099u) % vec4<u32>(32u)))), vec4<i32>(-1i) * -min(vec4<i32>(14039i, var_3.a.x, arg_1.a.x, -14413i) << (vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 19u)], 19u)], 19315u, 1u, 4294967295u) % vec4<u32>(32u)), abs(vec4<i32>(-15740i, var_2.a.x, 35656i, 1i))));
}

fn func_2(arg_0: vec2<f32>) -> vec2<i32> {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, -677f))));
    var var_0 = Struct_1(firstLeadingBit(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-911i, -1i, -11315i, 30391i) << ((vec4<u32>(0u, 54043u, 0u, global4[_wgslsmith_index_u32(13156u, 19u)]) & vec4<u32>(0u, global4[_wgslsmith_index_u32(u_input.c, 19u)], u_input.a, 2048u)) % vec4<u32>(32u)), ~func_3(vec4<i32>(-34383i, -20748i, 1i, -21586i), Struct_1(vec4<i32>(-2147483647i, -2147483647i, -1i, 1i)), u_input.a), ~(-vec4<i32>(2147483647i, -2568i, -2147483647i, -2147483647i)))));
    global0 = select(vec4<bool>(any(vec4<bool>(false, !global0.x, true, global0.x)), all(!global0.yw), 1135f != arg_0.x, select(global0.x, any(select(global0.wz, vec2<bool>(false, true), global0.zw)), global0.x)), !vec4<bool>(true, any(global0.zwx), u_input.c != 1u, global0.x), global0.x);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))))) + -679f);
    let var_1 = Struct_1(~vec4<i32>(-44090i, _wgslsmith_dot_vec2_i32(max(vec2<i32>(var_0.a.x, 0i), var_0.a.wx), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a.x, var_0.a.x), var_0.a.zx)), _wgslsmith_dot_vec4_i32(~var_0.a, max(var_0.a, vec4<i32>(var_0.a.x, var_0.a.x, -6360i, -27920i))), func_3(-var_0.a, Struct_1(var_0.a), global4[_wgslsmith_index_u32(18016u, 19u)] | u_input.c).x));
    return vec2<i32>(-2147483647i, var_1.a.x & (2147483647i | (min(var_0.a.x, var_1.a.x) ^ -14899i)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<f32>) -> f32 {
    global2 = firstTrailingBit(62186i) & (abs(_wgslsmith_dot_vec2_i32(func_2(arg_0.zx), ~vec2<i32>(48436i, -1i))) ^ _wgslsmith_dot_vec2_i32(~max(vec2<i32>(-10676i, 51974i), vec2<i32>(13144i, 1i)), func_3(-vec4<i32>(-2147483647i, 0i, 1i, -2147483647i), Struct_1(vec4<i32>(2147483647i, -1i, 1i, -13137i)), ~0u).wz));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x + arg_1.x), _wgslsmith_f_op_f32(arg_0.x - 1771f))))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -593f), 1872f)));
    var var_0 = Struct_1(~_wgslsmith_clamp_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(1i, -1i, -2147483647i, 1i), vec4<i32>(2912i, 1i, 13594i, 2147483647i)), max(vec4<i32>(0i, 65583i, -17941i, 59693i), vec4<i32>(1i, -2147483647i, 2147483647i, 2147483647i)), !vec4<bool>(false, global0.x, global0.x, global0.x)), _wgslsmith_div_vec4_i32(select(vec4<i32>(-1580i, -2147483647i, -13167i, 18081i), vec4<i32>(0i, -44650i, -15703i, 1206i), true), countOneBits(vec4<i32>(-2147483647i, 7424i, 1i, 2147483647i))), vec4<i32>(_wgslsmith_clamp_i32(1i, -2147483647i, 2147483647i), -2147483647i, 1i, countOneBits(-56042i))));
    let var_1 = Struct_1(vec4<i32>(-((var_0.a.x << (2173u % 32u)) >> (~0u % 32u)), 2147483647i, countOneBits(func_3(var_0.a, Struct_1(var_0.a), 60756u).x & countOneBits(var_0.a.x)), 54962i));
    let var_2 = ~vec3<u32>(_wgslsmith_mult_u32(u_input.b >> (reverseBits(1u) % 32u), 1u), global4[_wgslsmith_index_u32(u_input.c, 19u)], 1u);
    return arg_0.x;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: f32) -> StorageBuffer {
    var var_0 = Struct_1(vec4<i32>(arg_1.a.x, arg_1.a.x, -37835i, arg_1.a.x));
    var var_1 = arg_1;
    let var_2 = arg_1;
    var var_3 = select(_wgslsmith_sub_vec2_i32(vec2<i32>(~(var_0.a.x >> (4294967295u % 32u)), ~(var_2.a.x >> (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 19u)], 19u)] % 32u))), ~vec2<i32>(13030i, ~arg_1.a.x)), -func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.zy + arg_2.xw))), (-(i32(-1i) * -4370i) >> (u_input.b % 32u)) > arg_1.a.x);
    var var_4 = ~arg_1.a.x;
    return StorageBuffer(arg_3, arg_0, abs(var_1.a.xz), var_2.a.ww, min(vec3<u32>(40592u, 31245u, u_input.a), vec3<u32>(~28901u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(39986u, 19u)], 19u)], firstTrailingBit(1u)) & min(vec3<u32>(u_input.b, 45311u, u_input.c), ~vec3<u32>(1u, u_input.a, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -1i;
    let x = u_input.a;
    s_output = func_4(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(781f, -314f))))), -625f, _wgslsmith_f_op_f32(f32(-1f) * -260f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<f32>(1198f, -105f, -363f, 1901f), vec4<f32>(-1148f, -144f, -1842f, -2586f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -582f), -1173f))), Struct_1(_wgslsmith_mult_vec4_i32(reverseBits(~vec4<i32>(0i, -2147483647i, var_0, var_0)), ~(~vec4<i32>(-41401i, 1i, -22947i, var_0)))), vec4<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1109f, -1081f, 1000f, 418f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1322f, 1078f, 1135f) + vec4<f32>(868f, 1306f, -393f, -897f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1136f)), _wgslsmith_f_op_f32(select(-1176f, _wgslsmith_f_op_f32(892f + -1067f), true)))), -964f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-757f))))), 466f);
}

