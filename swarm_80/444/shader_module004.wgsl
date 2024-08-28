struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, -58165i, -41588i, vec4<u32>(1u, 1914u, 1u, 24401u), true);

var<private> global1: Struct_1 = Struct_1(1u, 1i, i32(-2147483648), vec4<u32>(5694u, 0u, 10318u, 26798u), true);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<bool>, arg_3: vec2<u32>) -> u32 {
    let var_0 = false;
    var var_1 = arg_0.xzy;
    let var_2 = Struct_1(arg_1, global0.b, global0.c, vec4<u32>(4294967295u, ~select(~4294967295u, 11149u >> (global1.d.x % 32u), var_0), ~(~0u), arg_1 ^ abs(4294967295u)), !(arg_2.x && (max(global1.b, 2147483647i) <= abs(-1i))));
    var var_3 = var_2;
    let var_4 = vec3<i32>(~_wgslsmith_add_i32(var_3.b, max(global1.b, ~2147483647i)), _wgslsmith_add_i32(var_3.c, global0.c), 10444i);
    return 58782u;
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec3<i32>) -> u32 {
    var var_0 = firstTrailingBit(vec2<i32>(2147483647i, ~_wgslsmith_clamp_i32(-65877i, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.b, arg_1), vec2<i32>(-15731i, arg_1)), 2147483647i >> (global1.a % 32u))));
    var_0 = vec2<i32>(var_0.x, _wgslsmith_mult_i32(countOneBits(-2147483647i), 0i));
    let var_1 = all(!select(vec2<bool>(global0.d.x <= 3449u, arg_0 || true), vec2<bool>(select(arg_0, arg_0, false), global1.e), vec2<bool>(global0.e & true, true)));
    let var_2 = ~reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(min(0u, global0.a), ~global0.a), ~max(vec2<u32>(global1.d.x, 0u), vec2<u32>(1u, 4294967295u))));
    let var_3 = Struct_1(_wgslsmith_div_u32(global0.a ^ firstTrailingBit(_wgslsmith_mult_u32(global0.a, 1u)), firstLeadingBit(_wgslsmith_mod_u32(1u, global0.d.x) | _wgslsmith_div_u32(1u, global1.a))), abs(~(~0i)) & reverseBits(global1.b), max(-global0.c, _wgslsmith_div_i32(u_input.b.x, 2147483647i)), vec4<u32>(max(var_2, 4294967295u) & ~0u, 0u, var_2, _wgslsmith_clamp_u32(4294967295u, global0.d.x, func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(607f, -1465f, 2309f, -438f) * vec4<f32>(438f, -105f, 1113f, -957f)), 27303u, select(vec3<bool>(global1.e, true, global0.e), vec3<bool>(false, false, false), global0.e), _wgslsmith_add_vec2_u32(vec2<u32>(global0.d.x, global1.d.x), vec2<u32>(global1.a, global0.a))))), global0.e);
    return 4294967295u;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = u_input.b;
    let var_1 = Struct_1(abs(abs(max(4294967295u, 46000u))), ~_wgslsmith_div_i32(countOneBits(abs(-11446i)), -46391i), 1i, vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(77896u, global1.a), vec2<u32>(109546u, 5965u)), _wgslsmith_dot_vec2_u32(global1.d.xy, reverseBits(~arg_1.d.zz)), _wgslsmith_dot_vec4_u32(~global0.d, _wgslsmith_add_vec4_u32(~vec4<u32>(global1.d.x, 1u, 9672u, global0.d.x), vec4<u32>(global0.a, global0.d.x, 16670u, 95378u))), ~(~(~arg_0.a))), true);
    global0 = Struct_1(var_1.d.x ^ 1u, ~(-2147483647i), _wgslsmith_div_i32(u_input.b.x, var_1.c), abs(vec4<u32>(_wgslsmith_mod_u32(~global0.d.x, var_1.d.x), 25734u, ~(~34798u), ~arg_1.a)), true);
    let var_2 = -2147483647i;
    var var_3 = Struct_1(select(~firstTrailingBit(global1.d.x), arg_1.d.x, all(select(!vec4<bool>(var_1.e, var_1.e, true, false), !vec4<bool>(false, true, true, arg_1.e), vec4<bool>(arg_1.e, global0.e, var_1.e, var_1.e)))), -(~(max(var_0.x, 2147483647i) >> (~4294967295u % 32u))), ~(-1i), ~max(arg_1.d, ~vec4<u32>(global0.a, 10462u, arg_1.a, arg_1.d.x)), true);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(Struct_1(0u, reverseBits(u_input.b.x), 0i, vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global1.d.x, 4294967295u, 0u), vec3<u32>(4294967295u, global0.d.x, global1.d.x)), vec3<u32>(global0.a, 7704u, 18556u)), 0u, abs(1u), firstLeadingBit(global1.a)), true), Struct_1(_wgslsmith_mult_u32(firstTrailingBit(~4294967295u), global1.d.x), -61375i, select(0i >> (func_1(global0.e, 2147483647i, vec3<i32>(u_input.b.x, 16571i, -1i)) % 32u), -2147483647i, select(true, true, true) == global0.e), vec4<u32>(4294967295u, reverseBits(global0.d.x), _wgslsmith_dot_vec4_u32(~global1.d, max(vec4<u32>(19029u, 30082u, 39252u, global1.d.x), global0.d)), global0.a), _wgslsmith_f_op_f32(round(-601f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-790f - 521f) * 1230f)));
    global1 = Struct_1(global0.d.x, u_input.a, global0.b, ~global1.d, global1.e);
    var var_1 = func_3(var_0, var_0);
    var var_2 = func_3(func_3(var_0, Struct_1(var_1.d.x, _wgslsmith_dot_vec2_i32(u_input.b | vec2<i32>(var_0.b, global1.c), u_input.b >> (var_0.d.xx % vec2<u32>(32u))), firstTrailingBit(2147483647i), vec4<u32>(global1.d.x & 1u, ~global0.a, ~var_0.a, var_1.a), all(vec3<bool>(var_0.e, global1.e, false)))), Struct_1(_wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(global1.d.x, var_1.d.x, 55661u, 50577u)), reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_0.d.x, var_1.a, 1u), var_1.d))), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.b, 1i, -2147483647i, u_input.b.x), ~vec4<i32>(-2147483647i, 47871i, var_0.b, 76596i))), 2147483647i, var_1.d, global0.e));
    var var_3 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(global1.c, -1i, u_input.b.x, -10925i)), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.c, 2147483647i, global1.b, -6615i), vec4<i32>(-23529i, var_0.c, 1i, global0.b))) | countOneBits(-vec4<i32>(13191i, 9886i, var_2.b, 5457i)), firstTrailingBit(firstTrailingBit(vec4<i32>(1i, global1.c, 2147483647i, var_0.c)) | -vec4<i32>(0i, -2147483647i, global1.c, global0.b))), var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.zy);
}

