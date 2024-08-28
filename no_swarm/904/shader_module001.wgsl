struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> vec4<f32> {
    let var_0 = 0u ^ ~((~u_input.a >> (_wgslsmith_sub_u32(69616u, 0u) % 32u)) << (arg_0.b.x % 32u));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-613f + arg_0.c.x), _wgslsmith_f_op_f32(min(arg_1.c.x, arg_0.c.x)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c.x), arg_0.c.x)))), 739f, _wgslsmith_f_op_f32(round(arg_0.c.x)));
}

fn func_2() -> Struct_1 {
    return Struct_1(u_input.a, _wgslsmith_mult_vec3_u32(vec3<u32>(1u, _wgslsmith_mod_u32(~14796u, u_input.a), select(20447u, 15212u, true)), ~(~vec3<u32>(20493u, 43588u, 0u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1636f, 741f, -1809f, 102f) * vec4<f32>(1032f, -569f, 1289f, 1444f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(958f, -1196f, 1000f, -1360f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_1(u_input.a, vec3<u32>(u_input.a, u_input.a, 4294967295u), vec4<f32>(-363f, 1000f, 1094f, -1925f)), Struct_1(39266u, vec3<u32>(u_input.a, u_input.a, u_input.a), vec4<f32>(1224f, 1366f, 588f, 629f)), _wgslsmith_add_vec2_i32(vec2<i32>(31689i, 11229i), vec2<i32>(-28467i, -7020i)))))));
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    let var_0 = -5428i | _wgslsmith_add_i32(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-14893i, -2147483647i, 48960i, -17213i), vec4<i32>(1i, 1i, 27401i, 8796i))) ^ 93514i, 1i);
    var var_1 = func_2();
    var var_2 = Struct_1(_wgslsmith_mult_u32(func_2().a | countOneBits(var_1.b.x), 50033u), vec3<u32>(14916u, ~4294967295u, u_input.a), _wgslsmith_f_op_vec4_f32(trunc(var_1.c)));
    let var_3 = 1i;
    let var_4 = ~(-39208i);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~max(42727u, abs(44352u)) << (func_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(730f, 178f, -210f)))) % 32u), ~(~vec3<u32>(4294967295u & u_input.a, func_2().b.x, 3789u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1288f, -2199f, -118f, -2162f)) - vec4<f32>(1f, 1f, 1f, 1f))));
    let var_1 = var_0.c.x < _wgslsmith_f_op_f32(ceil(var_0.c.x));
    var_0 = Struct_1(~(~_wgslsmith_mult_u32(var_0.a >> (1u % 32u), 50489u)), var_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(535f, var_0.c.x, 889f, 537f))))));
    var var_2 = reverseBits(vec3<i32>(1i, (i32(-1i) * -1i) >> (var_0.b.x % 32u), 0i)) & vec3<i32>(_wgslsmith_div_i32(~reverseBits(0i), _wgslsmith_clamp_i32(-63501i, 15378i, -32410i)), 18441i, _wgslsmith_sub_i32(1i, -47249i));
    let var_3 = !select(vec2<bool>(true, true), !select(!vec2<bool>(false, var_1), vec2<bool>(true, var_1), !vec2<bool>(var_1, var_1)), vec2<bool>(~1u >= var_0.a, true));
    var_0 = func_2();
    let var_4 = !select(!(!vec2<bool>(var_1, true)), vec2<bool>(_wgslsmith_f_op_f32(-var_0.c.x) <= _wgslsmith_div_f32(-450f, var_0.c.x), !any(vec3<bool>(var_3.x, var_3.x, var_3.x))), select(vec2<bool>(true, true), var_3, true));
    let var_5 = -_wgslsmith_mod_vec2_i32(select(~(vec2<i32>(var_2.x, var_2.x) | var_2.xy), ~var_2.xz, select(vec2<bool>(false, true), vec2<bool>(var_1, true), select(var_4, vec2<bool>(var_3.x, false), vec2<bool>(var_3.x, false)))), ~select(reverseBits(vec2<i32>(var_2.x, 1i)), firstTrailingBit(var_2.zx), var_3));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(184f * 778f))))), firstLeadingBit(vec4<u32>(func_2().a, ~(u_input.a << (4294967295u % 32u)), abs(u_input.a) | var_0.a, 0u)), reverseBits((i32(-1i) * -16808i) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(var_5.x, var_2.x), vec2<i32>(var_2.x, var_2.x))), ~1u, 0u);
}

