struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    global0 = _wgslsmith_mod_vec2_i32(select(-(~firstTrailingBit(u_input.e.xw)), vec2<i32>(~(~u_input.e.x), 2147483647i), true), vec2<i32>(reverseBits(~11081i), firstTrailingBit(global0.x)));
    let var_0 = Struct_2(~vec4<u32>(~(~u_input.a.x), 1u, u_input.d.x, ~(u_input.a.x >> (30387u % 32u))), Struct_1(reverseBits(-21488i)), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, ~0i, reverseBits(u_input.c)), u_input.e.yyx), -u_input.e.zyw), u_input.a.x);
    var var_1 = 382f;
    var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-308f - _wgslsmith_f_op_f32(-1538f + _wgslsmith_div_f32(-1465f, 351f)))));
    var var_2 = _wgslsmith_div_i32(i32(-1i) * -33859i, _wgslsmith_add_i32(-2147483647i, countOneBits(abs(~u_input.e.x))));
    return 35973u;
}

fn func_2(arg_0: bool) -> vec4<u32> {
    var var_0 = -50985i | min(-1i, global0.x);
    let var_1 = -63316i;
    var var_2 = vec2<u32>(select(_wgslsmith_dot_vec4_u32(firstTrailingBit(u_input.a), ~_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(1u, 0u, u_input.d.x, u_input.b))), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(35885u, u_input.d.x, 30875u), u_input.a.x), true), abs(func_3()));
    var var_3 = Struct_2(vec4<u32>(~var_2.x, _wgslsmith_div_u32(~42979u, ~u_input.d.x), ~u_input.b, var_2.x), Struct_1(~(-5552i)), abs(vec3<i32>(_wgslsmith_sub_i32(-34669i, var_1), select(-2147483647i, global0.x, true), reverseBits(u_input.c)) >> (u_input.a.xwz % vec3<u32>(32u))), countOneBits(~u_input.a.x));
    var var_4 = arg_0;
    return _wgslsmith_mult_vec4_u32(abs(_wgslsmith_div_vec4_u32(~(~vec4<u32>(28480u, u_input.a.x, 10473u, 1u)), firstLeadingBit(var_3.a) | u_input.a)), ~var_3.a);
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = arg_0;
    let var_1 = vec2<u32>(arg_0.d, u_input.a.x);
    var var_2 = false;
    global0 = u_input.e.yy;
    let var_3 = (_wgslsmith_div_vec3_i32(countOneBits(var_0.c), reverseBits(-arg_0.c)) ^ _wgslsmith_mult_vec3_i32(select(arg_0.c, vec3<i32>(0i, 32692i, arg_0.c.x), vec3<bool>(true, true, true)), reverseBits(-var_0.c))) & vec3<i32>(-_wgslsmith_div_i32(global0.x & -9543i, 8279i), ~(i32(-1i) * -17885i), ~1i);
    return arg_0;
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    let var_0 = func_4(Struct_2(~(~func_2(true)), Struct_1(11268i), ~u_input.e.yxx, abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.x, u_input.b, u_input.b, 0u), vec4<u32>(62526u, u_input.a.x, 4294967295u, 1u)))));
    let var_1 = vec2<i32>(countOneBits(_wgslsmith_div_i32(-1i, 20327i >> (u_input.a.x % 32u))), global0.x);
    let var_2 = ~(~1u >> (1u % 32u));
    let var_3 = max(~u_input.e, vec4<i32>(19535i, i32(-1i) * -567i, 0i, global0.x ^ -var_0.c.x)) >> (var_0.a % vec4<u32>(32u));
    let var_4 = abs(var_3.x);
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mult_u32(u_input.b, 53469u);
    var_0 = ~1u;
    let var_1 = -497f;
    var_0 = u_input.d.x;
    var var_2 = vec4<bool>(true, true, 263f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1, 460f)))), u_input.a.x > 1u);
    let var_3 = Struct_1(~global0.x);
    global0 = vec2<i32>(~func_1(~_wgslsmith_mult_vec4_u32(u_input.a, u_input.a)), _wgslsmith_mult_i32(-26594i, -4646i));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(u_input.a.x, u_input.d.x), 1u, reverseBits(u_input.e), abs(-max(vec3<i32>(global0.x, var_3.a, -27962i), vec3<i32>(-1i, var_3.a, var_3.a))) ^ u_input.e.yyy);
}

