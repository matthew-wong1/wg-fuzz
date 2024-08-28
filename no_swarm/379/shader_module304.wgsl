struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_1 = Struct_1(-1679f, vec4<bool>(false, true, true, true), i32(-2147483648));

var<private> global2: array<i32, 6>;

var<private> global3: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> bool {
    global1 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a, -1046f)) * _wgslsmith_f_op_f32(abs(-120f))))), vec4<bool>(select(global3.b.x, global3.b.x, false), true, !(true && global3.b.x), true), max(global1.c, -(~select(0i, 1i, global1.b.x))));
    let var_0 = Struct_1(1773f, global1.b, -(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a.x, 2147483647i), vec2<i32>(global1.c, global1.c) | vec2<i32>(global3.c, 1i)) & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, global0.x), vec4<i32>(2147483647i, 2147483647i, global0.x, global1.c))));
    return true;
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_div_u32(~(select(1u << (0u % 32u), 4294967295u, func_3(-381f)) | min(~35336u, 4294967295u)), max(_wgslsmith_clamp_u32(~(~0u), ~_wgslsmith_mod_u32(29330u, 4294967295u), ~0u), 14318u));
    let var_1 = global1.a;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-220f - -1898f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.a, 865f))) + _wgslsmith_f_op_f32(1625f - _wgslsmith_f_op_f32(-global3.a)));
    var_0 = select(select(_wgslsmith_div_u32(_wgslsmith_mod_u32(0u, 1u), ~64090u), 1u | select(~0u, _wgslsmith_div_u32(100927u, 4294967295u), global3.b.x), false), ~_wgslsmith_div_u32(0u, ~31366u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(min(1259f, -124f)))) > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.a))), _wgslsmith_f_op_f32(f32(-1f) * -854f))));
    global0 = countOneBits(vec3<i32>(0i, _wgslsmith_mod_i32(global3.c, ~(~global3.c)), ~(~max(7187i, global0.x))));
    return Struct_1(_wgslsmith_f_op_f32(-1392f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.a))))), global1.b, global0.x);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: i32, arg_3: i32) -> Struct_1 {
    var var_0 = 91478u;
    var var_1 = func_2(!global3.b.x | !(!arg_0.x));
    let var_2 = 522f;
    var var_3 = true;
    global0 = firstTrailingBit(u_input.a.yxy & max(~(~vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 6u)], 0i, var_1.c)), u_input.a.xyw ^ (u_input.a.yww ^ u_input.a.xzw)));
    return Struct_1(var_1.a, !global1.b, global2[_wgslsmith_index_u32(select(0u << (1u % 32u), abs(52246u), true) << (~min(27659u, 1u) % 32u), 6u)] & -34311i);
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1) -> f32 {
    let var_0 = -abs(_wgslsmith_dot_vec4_i32(u_input.a & _wgslsmith_add_vec4_i32(u_input.a, u_input.a), ~(-u_input.a)));
    let var_1 = vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(countOneBits(~vec3<u32>(71296u, 4294967295u, 1u)), reverseBits(vec3<u32>(6521u, 0u, 1u)), vec3<u32>(12181u, 1u, 1u)), (~vec3<u32>(39067u, 26478u, 0u) ^ firstTrailingBit(vec3<u32>(1u, 1u, 18125u))) >> (max(firstTrailingBit(vec3<u32>(4294967295u, 1u, 0u)), vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u))), ~(~_wgslsmith_mult_u32(min(27319u, 8022u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 65496u, 0u, 48605u), vec4<u32>(23181u, 4294967295u, 1u, 5911u)))));
    let var_2 = abs(reverseBits(~2147483647i << (var_1.x % 32u)));
    let var_3 = arg_2;
    let var_4 = arg_2;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(func_2(arg_2.b.x).a, arg_1.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_i32(max(u_input.a, abs(firstLeadingBit(u_input.a) ^ u_input.a)), -u_input.a);
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(u_input.a.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-313f, global3.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(170f, global3.a))), func_1(global3.b.wz, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.a, -1586f, -838f), vec3<f32>(-1000f, 1416f, global1.a))), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(global1.c, -2147483647i, -2147483647i, 49548i)), firstLeadingBit(2147483647i)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.a, _wgslsmith_f_op_f32(-global1.a)))), global3.b, -(global1.c & _wgslsmith_clamp_i32(-11479i, ~global2[_wgslsmith_index_u32(1u, 6u)], 23183i)));
    global3 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a - global1.a), _wgslsmith_div_f32(1028f, global1.a)))), _wgslsmith_f_op_f32(floor(global3.a)), global3.b.x)), select(global1.b, select(global3.b, func_1(!global3.b.zy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, global3.a, global3.a)), _wgslsmith_add_i32(7106i, global0.x), firstLeadingBit(0i)).b, func_2(global1.b.x).b), global1.b), -_wgslsmith_div_i32(func_1(global1.b.yz, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.a, global3.a, global3.a))), abs(global1.c), _wgslsmith_dot_vec3_i32(u_input.a.wyz, vec3<i32>(2147483647i, 623i, u_input.a.x))).c, i32(-1i) * -var_0.x));
    global3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -484f) - global3.a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a)))), select(global3.b, select(vec4<bool>(true, true, false, true), vec4<bool>(global3.b.x, global1.c < -26452i, !global3.b.x, !global1.b.x), func_3(_wgslsmith_f_op_f32(f32(-1f) * -146f))), !(!vec4<bool>(true, true, global3.b.x, false))), countOneBits(_wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a.x, func_1(global1.b.yx, vec3<f32>(585f, 414f, 1102f), -2147483647i, global0.x).c), -17607i)));
    var var_1 = _wgslsmith_mod_i32(0i, ~1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3.a, 155f, global1.a), vec3<f32>(global3.a, global1.a, global3.a))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-618f)) - global1.a));
}

