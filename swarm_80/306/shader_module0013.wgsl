struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(4294967295u, 17049u, 31878u), vec3<u32>(10075u, 49623u, 4294967295u), vec3<u32>(7836u, 61316u, 0u), vec3<u32>(0u, 0u, 47292u), vec3<u32>(0u, 26690u, 11020u), vec3<u32>(23716u, 1u, 0u), vec3<u32>(2477u, 1u, 0u), vec3<u32>(4294967295u, 30271u, 4294967295u), vec3<u32>(25443u, 44102u, 4294967295u), vec3<u32>(2240u, 0u, 1u), vec3<u32>(38479u, 21257u, 4294967295u), vec3<u32>(40692u, 6382u, 4294967295u), vec3<u32>(1u, 0u, 21936u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(65719u, 5410u, 60632u), vec3<u32>(0u, 29063u, 70975u), vec3<u32>(3209u, 0u, 26866u), vec3<u32>(0u, 4294967295u, 4137u), vec3<u32>(4294967295u, 51396u, 1u), vec3<u32>(28924u, 64920u, 4294967295u), vec3<u32>(42095u, 37939u, 2473u), vec3<u32>(1u, 24369u, 64751u), vec3<u32>(4294967295u, 12686u, 54187u), vec3<u32>(4294967295u, 1u, 10942u), vec3<u32>(4294967295u, 4294967295u, 56685u), vec3<u32>(4294967295u, 1u, 6831u), vec3<u32>(22382u, 1u, 862u), vec3<u32>(121342u, 4294967295u, 11094u), vec3<u32>(1u, 29799u, 4294967295u));

var<private> global1: vec3<bool>;

var<private> global2: vec2<f32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<bool>) -> vec2<f32> {
    var var_0 = 4294967295u;
    var var_1 = ~1u;
    var var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(-82057i, -_wgslsmith_add_i32(_wgslsmith_mult_i32(-2147483647i, -1i), _wgslsmith_clamp_i32(u_input.b.x, -1107i, u_input.b.x)), ~(-6658i), ~u_input.b.x), select(firstTrailingBit(~vec4<i32>(2147483647i, 2147483647i, 50854i, u_input.b.x) & -vec4<i32>(-2147483647i, 2147483647i, 18207i, 34499i)), abs(u_input.b), !(false | arg_0.x) != (0u >= (u_input.a ^ u_input.a))));
    global1 = arg_0.zzy;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(175f * global2.x));
    return vec2<f32>(global2.x, var_3.a);
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_mult_i32(-(arg_0.x & _wgslsmith_mult_i32(max(arg_0.x, arg_0.x), u_input.b.x)), 7811i);
    var var_1 = Struct_1(global2.x);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(global2.x * global2.x)))));
    var var_3 = 4294967295u;
    global1 = !(!(!(!vec3<bool>(true, false, global1.x))));
    return Struct_1(_wgslsmith_div_f32(-218f, -643f));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> f32 {
    global2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(419f)) - _wgslsmith_f_op_f32(-arg_1.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1034f))), 2212f) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(895f, 2933f)) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.a, global2.x), vec2<f32>(arg_1.a, 454f)))))));
    global0 = array<vec3<u32>, 29>();
    global0 = array<vec3<u32>, 29>();
    var var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(abs(countOneBits(u_input.b.x >> (0u % 32u))), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(u_input.b.x, u_input.b.x, 54647i, u_input.b.x)) | vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i), u_input.b)), vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -7179i), vec2<i32>(u_input.b.x, u_input.b.x)), firstTrailingBit(vec2<i32>(u_input.b.x, 2147483647i))), -1i) ^ countOneBits(firstLeadingBit(_wgslsmith_sub_vec2_i32(u_input.b.wz, vec2<i32>(u_input.b.x, u_input.b.x)))));
    var_0 = vec2<i32>(i32(-1i) * -(_wgslsmith_div_i32(-10771i, u_input.b.x) >> (firstTrailingBit(u_input.a) % 32u)), _wgslsmith_sub_i32(-1i, _wgslsmith_add_i32(-6967i, u_input.b.x)));
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(u_input.a, u_input.a);
    var var_1 = ~_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~68369u, ~var_0.x, var_0.x, 1u), reverseBits(~vec4<u32>(u_input.a, u_input.a, u_input.a, 73937u)), ~vec4<u32>(4294967295u, 4294967295u, u_input.a, 0u)), vec4<u32>(45147u, u_input.a, ~37030u, 4294967295u) & ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 6862u, var_0.x, var_0.x), vec4<u32>(29722u, var_0.x, 1u, 9391u)));
    let var_2 = _wgslsmith_f_op_f32(round(global2.x));
    var var_3 = _wgslsmith_f_op_vec2_f32(func_1(!(!select(!vec4<bool>(global1.x, false, global1.x, global1.x), !vec4<bool>(global1.x, global1.x, false, false), true))));
    var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1074f, var_2), global2.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(491f, 1269f) - vec2<f32>(1000f, var_3.x))), vec2<f32>(_wgslsmith_f_op_f32(func_3(select(vec4<bool>(global1.x, global1.x, false, false), vec4<bool>(false, global1.x, false, global1.x), vec4<bool>(global1.x, global1.x, true, global1.x)), func_2(vec3<i32>(u_input.b.x, -2112i, 11286i)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_vec2_f32(func_1(vec4<bool>(true, true, true, false))).x)))));
    var var_4 = func_2(~abs(firstLeadingBit(u_input.b.wyy)));
    let var_5 = func_2(firstLeadingBit(firstLeadingBit(-vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x) >> (reverseBits(vec3<u32>(0u, 2622u, 25026u)) % vec3<u32>(32u)))));
    let var_6 = vec3<bool>(global1.x, u_input.b.x >= u_input.b.x, !(!(!(!global1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(0i, _wgslsmith_div_i32(2147483647i, i32(-1i) * -14274i) ^ min(-2147483647i ^ u_input.b.x, max(20087i, 1i)), u_input.b.x), u_input.b.x);
}

