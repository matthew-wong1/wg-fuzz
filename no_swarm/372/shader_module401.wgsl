struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec2<u32>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<f32>, arg_1: u32) -> vec2<u32> {
    global1 = firstTrailingBit(~vec2<u32>(arg_1, _wgslsmith_dot_vec2_u32(vec2<u32>(17600u, 19814u), vec2<u32>(global1.x, 4294967295u))));
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-627f - arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) + -1000f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * -646f) * arg_0.x))));
    let var_1 = firstLeadingBit(_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(-2147483647i, _wgslsmith_add_i32(-36774i, u_input.b), ~u_input.a, 1i >> (global1.x % 32u))), vec4<i32>(u_input.b, ~u_input.a, 85816i, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(max(-38429i, 1i), u_input.a, -25186i, _wgslsmith_mod_i32(u_input.b, u_input.a)), -(~vec4<i32>(u_input.a, 1i, u_input.b, 26703i)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0.wy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.yx) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) + arg_0.zy))))));
    var_2 = _wgslsmith_f_op_vec2_f32(-arg_0.ww);
    return vec2<u32>(_wgslsmith_add_u32(0u, global1.x), 4294967295u);
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    global1 = select(vec2<u32>(0u, 1u), ~abs(vec2<u32>(global1.x, 1u) << (vec2<u32>(global1.x, global1.x) % vec2<u32>(32u))) & (abs(vec2<u32>(global1.x, global1.x)) ^ firstTrailingBit(func_3(vec4<f32>(-1623f, arg_0.b.x, arg_0.b.x, -1249f), 1u))), true);
    global1 = vec2<u32>(~global1.x, ~4294967295u);
    let var_0 = !(!(!(!(!vec2<bool>(arg_0.a.b.x, true)))));
    var var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-407f, -1000f), 1241f, true)), arg_0.b.x, arg_0.b.x, arg_0.a.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(896f, arg_0.b.x, _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(-arg_0.b.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(108f, arg_0.a.a, 1905f, arg_0.b.x))))))));
    return Struct_2(_wgslsmith_clamp_i32(min(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.b, u_input.a, 1i) ^ vec4<i32>(1i, -15964i, u_input.a, u_input.b), -vec4<i32>(u_input.a, -29460i, 15200i, 83508i)), u_input.a), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.b, ~u_input.a), u_input.a, 1i), _wgslsmith_mod_i32(countOneBits(17937i), ~u_input.a)), _wgslsmith_div_u32(global1.x, global1.x), arg_0.a.b);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec3<bool>) -> u32 {
    var var_0 = ~(~(~(~vec4<u32>(0u, arg_1.b, 4294967295u, global1.x))));
    var var_1 = ~reverseBits(firstTrailingBit((var_0.xx ^ var_0.zx) << (_wgslsmith_clamp_vec2_u32(var_0.yz, var_0.yx, var_0.zy) % vec2<u32>(32u))));
    let var_2 = !arg_2.yz;
    var_0 = abs(~vec4<u32>(reverseBits(global1.x), 1u >> ((1u & global1.x) % 32u), arg_1.b, ~global1.x << (global1.x % 32u)));
    global0 = true;
    return func_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(871f, 382f, 546f, -408f) + vec4<f32>(-358f, 943f, -299f, 151f)))))))), _wgslsmith_clamp_u32(arg_1.b, ~abs(~4294967295u), firstLeadingBit(1u))).x;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: bool, arg_3: f32) -> vec2<u32> {
    var var_0 = Struct_2(-63995i, _wgslsmith_add_u32(func_4(35795u, func_2(Struct_3(Struct_1(1000f, vec4<bool>(false, true, arg_2, arg_2)), vec3<f32>(-786f, 1000f, 1055f))), func_2(Struct_3(Struct_1(arg_3, vec4<bool>(arg_2, true, true, true)), vec3<f32>(-432f, arg_1.x, 198f))).c.ywz) ^ global1.x, 48066u), !(!(!select(vec4<bool>(false, arg_2, false, arg_2), vec4<bool>(true, false, arg_2, false), arg_2))));
    var var_1 = var_0.c;
    var var_2 = global1.x;
    let var_3 = vec3<u32>(~37531u, _wgslsmith_sub_u32(1u, ~_wgslsmith_add_u32(global1.x, 49866u)), global1.x) >> (firstTrailingBit(~(vec3<u32>(13437u, 56907u, var_0.b) & vec3<u32>(19436u, 38840u, var_0.b)) >> (vec3<u32>(var_0.b << (0u % 32u), var_0.b, global1.x) % vec3<u32>(32u))) % vec3<u32>(32u));
    global0 = func_2(Struct_3(Struct_1(_wgslsmith_f_op_f32(select(arg_3, _wgslsmith_f_op_f32(floor(arg_3)), true)), !vec4<bool>(true, var_0.c.x, var_1.x, true)), _wgslsmith_f_op_vec3_f32(abs(arg_1)))).c.x;
    return ~((var_3.yz << (vec2<u32>(_wgslsmith_mult_u32(1u, 1u), _wgslsmith_mod_u32(global1.x, var_0.b)) % vec2<u32>(32u))) >> (vec2<u32>(~countOneBits(4294967295u), 1u) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~select(countOneBits(select(_wgslsmith_div_vec2_u32(vec2<u32>(global1.x, 30082u), vec2<u32>(global1.x, global1.x)), func_1(vec4<i32>(0i, -17041i, u_input.a, -8910i), vec3<f32>(-863f, 1000f, 1293f), false, 666f), vec2<bool>(false, true))), ~vec2<u32>(global1.x << (1u % 32u), _wgslsmith_add_u32(global1.x, global1.x)), false);
    global0 = true;
    var var_0 = ~u_input.b;
    global0 = all(vec3<bool>(true, true, true));
    let var_1 = ~vec3<u32>(1u, _wgslsmith_dot_vec2_u32(~(vec2<u32>(global1.x, global1.x) | vec2<u32>(25133u, global1.x)), ~abs(vec2<u32>(4294967295u, global1.x))), func_2(Struct_3(Struct_1(108f, vec4<bool>(false, false, true, true)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1300f, 350f, 705f), vec3<f32>(-613f, 1000f, 1907f), false)))).b);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -465f))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1227f, 1f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1398f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -814f) - _wgslsmith_f_op_f32(f32(-1f) * -1105f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-611f - -148f))))));
    var_0 = select(_wgslsmith_sub_i32(_wgslsmith_mod_i32(2563i << (var_1.x % 32u), _wgslsmith_mod_i32(-14314i, -17818i)), 0i) >> (~global1.x % 32u), 0i, true == select(any(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, false, false, false)), !any(vec2<bool>(false, true))));
    global0 = all(func_2(Struct_3(Struct_1(_wgslsmith_div_f32(196f, -423f), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(376f, -591f, 2145f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(429f, 584f, 742f))))).c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(min(vec4<u32>(0u, 4294967295u, global1.x, 4294967295u), firstTrailingBit(vec4<u32>(584u, global1.x, var_1.x, global1.x))) >> ((select(vec4<u32>(global1.x, 4294967295u, 0u, global1.x), vec4<u32>(20622u, 144955u, var_1.x, var_1.x), vec4<bool>(true, false, false, false)) << (_wgslsmith_div_vec4_u32(vec4<u32>(global1.x, 1u, global1.x, var_1.x), vec4<u32>(28416u, global1.x, 6999u, 5668u)) % vec4<u32>(32u))) % vec4<u32>(32u)), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, var_1.x, 0u, var_1.x), vec4<u32>(1u, 1u, 0u, 49611u)))), _wgslsmith_f_op_f32(552f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-208f))) + 368f)), vec4<f32>(-1167f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1486f - -467f)) - -363f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(847f, -407f)) + _wgslsmith_f_op_f32(364f * 467f)))), global1.x);
}

