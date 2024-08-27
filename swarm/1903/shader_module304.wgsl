struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(vec3<u32>(1u, 203u, 0u), vec2<bool>(false, false), vec3<f32>(-1000f, -148f, -669f));

var<private> global2: array<u32, 12> = array<u32, 12>(4294967295u, 4546u, 29435u, 45061u, 17699u, 28708u, 0u, 4294967295u, 32924u, 65502u, 4294967295u, 9587u);

var<private> global3: vec2<i32> = vec2<i32>(16893i, 1380i);

var<private> global4: array<Struct_1, 10>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = ~(-(-vec3<i32>(2147483647i, 0i, global3.x) >> (vec3<u32>(global1.a.x, global1.a.x, ~1u) % vec3<u32>(32u))));
    global3 = max(var_0.zx ^ vec2<i32>(_wgslsmith_clamp_i32(48164i, _wgslsmith_sub_i32(1i, var_0.x), 9677i), i32(-1i) * -43325i), vec2<i32>(abs(~var_0.x), -8320i));
    global2 = array<u32, 12>();
    global2 = array<u32, 12>();
    var var_1 = Struct_1(global1.a ^ vec3<u32>(global2[_wgslsmith_index_u32(~global1.a.x, 12u)], 1u, ~arg_0), vec2<bool>(all(!(!vec3<bool>(global1.b.x, true, global1.b.x))), global1.b.x), global1.c);
    return _wgslsmith_dot_vec2_u32(global1.a.zz, reverseBits(global1.a.xy));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> Struct_1 {
    global1 = global4[_wgslsmith_index_u32(~_wgslsmith_div_u32(78278u, _wgslsmith_mod_u32(func_3(20017u), ~global2[_wgslsmith_index_u32(arg_0.a.x, 12u)])) << (~arg_0.a.x % 32u), 10u)];
    var var_0 = ~_wgslsmith_add_vec2_i32(abs(vec2<i32>(arg_2, firstTrailingBit(-1i))), -(~vec2<i32>(1i, -1i)) | _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -14949i), vec2<i32>(arg_2, arg_1)));
    global4 = array<Struct_1, 10>();
    var var_1 = arg_0;
    var var_2 = arg_2 << (1u % 32u);
    return global4[_wgslsmith_index_u32(reverseBits(29336u), 10u)];
}

fn func_1() -> Struct_1 {
    var var_0 = 51635u;
    global0 = -u_input.a;
    let var_1 = func_2(global4[_wgslsmith_index_u32(50669u, 10u)], reverseBits(~_wgslsmith_mod_i32(14932i, 2147483647i) | u_input.a), 49290i);
    global1 = func_2(func_2(global4[_wgslsmith_index_u32(global1.a.x, 10u)], firstTrailingBit(~u_input.a | global3.x), u_input.a), _wgslsmith_mod_i32(1i, abs(-61444i)), global3.x);
    global1 = var_1;
    return Struct_1(_wgslsmith_sub_vec3_u32(global1.a, var_1.a), vec2<bool>(select(all(vec4<bool>(var_1.b.x, false, global1.b.x, false)) && select(false, var_1.b.x, var_1.b.x), any(func_2(var_1, 1i, global3.x).b), any(select(vec4<bool>(false, true, true, true), vec4<bool>(var_1.b.x, global1.b.x, true, global1.b.x), global1.b.x))), all(!select(vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.b.x), vec4<bool>(var_1.b.x, true, global1.b.x, true), var_1.b.x))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-700f * var_1.c.x), global1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x - global1.c.x)), _wgslsmith_f_op_f32(-1000f * 2518f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 10>();
    let var_0 = func_1();
    let var_1 = global4[_wgslsmith_index_u32(1u, 10u)];
    global0 = ~(-46358i);
    global1 = func_1();
    global0 = min(max(-1i, _wgslsmith_mult_i32(countOneBits(-4926i), u_input.a)), 25669i);
    var var_2 = ~max(vec2<u32>(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_0.a.x, var_0.a.x, global1.a.x, var_1.a.x)), vec4<u32>(var_0.a.x, 9856u, 31526u, 23831u)), ~_wgslsmith_sub_u32(0u, var_1.a.x)), _wgslsmith_div_vec2_u32(~(vec2<u32>(0u, global2[_wgslsmith_index_u32(var_1.a.x, 12u)]) >> (var_0.a.xz % vec2<u32>(32u))), countOneBits(func_1().a.xy)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(895f, 1000f, var_1.c.x, var_0.c.x))), vec4<f32>(-1192f, -698f, var_1.c.x, global1.c.x))) - _wgslsmith_div_vec4_f32(vec4<f32>(-1280f, _wgslsmith_f_op_f32(ceil(-131f)), _wgslsmith_f_op_f32(-822f - -286f), -150f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, var_1.c.x, var_0.c.x, -298f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(107f, -1226f, var_1.c.x, -2393f) - vec4<f32>(var_0.c.x, -816f, -223f, var_0.c.x))))), _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(24941u, 12u)], 12u)], global1.a.x), global1.a.x ^ 14279u, var_2.x, var_1.a.x), ~vec4<u32>(50526u, 0u, 39932u, 1u) | select(vec4<u32>(var_2.x, 1u, 0u, 4294967295u), vec4<u32>(31273u, 0u, 36267u, 4347u), global1.b.x)), firstLeadingBit(vec4<u32>(var_2.x, _wgslsmith_mod_u32(1u, 3315u), _wgslsmith_mult_u32(var_0.a.x, var_1.a.x), ~4294967295u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-484f, -440f)))));
}

