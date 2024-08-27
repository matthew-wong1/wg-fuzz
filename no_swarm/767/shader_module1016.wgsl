struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> u32 {
    return 40648u;
}

fn func_3() -> i32 {
    var var_0 = vec3<bool>(true, true, select(any(vec4<bool>(all(vec2<bool>(false, false)), any(vec3<bool>(true, true, true)), true, global0[_wgslsmith_index_u32(28098u, 21u)] <= -271f)), false, true));
    var var_1 = Struct_4(vec2<i32>(i32(-1i) * -1i, u_input.a | select(u_input.a | -1i, -2683i, true)));
    var var_2 = max(-20919i, -select(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(2147483647i, -29287i, -8341i), var_1.a.x << (1u % 32u)), -381i, true));
    var_0 = vec3<bool>(var_0.x, any(select(vec4<bool>(all(vec3<bool>(var_0.x, false, false)), any(vec4<bool>(var_0.x, var_0.x, false, false)), false, false), select(!vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(true, true, true, true), true), var_0.x)), true);
    var var_3 = global0[_wgslsmith_index_u32(firstTrailingBit(~(~4294967295u)), 21u)];
    return abs(_wgslsmith_clamp_i32(~(~u_input.a), ~(-var_1.a.x), i32(-1i) * -1i)) | -2147483647i;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec2<bool>) -> u32 {
    global0 = array<f32, 21>();
    var var_0 = vec3<bool>(all(select(select(arg_2, arg_2, select(vec2<bool>(arg_2.x, arg_2.x), vec2<bool>(arg_1, true), arg_2)), vec2<bool>(true, arg_2.x), true)), arg_2.x && false, !any(!select(arg_2, vec2<bool>(false, true), arg_1)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(select(-171f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-174f))), arg_1)), 1f, 406f);
    let var_2 = select(true, false, ~(u_input.a << (1u % 32u)) == -48909i);
    let var_3 = var_0.x;
    return countOneBits(~_wgslsmith_add_u32(~10299u, _wgslsmith_dot_vec4_u32(vec4<u32>(56352u, 25806u, 1u, 3700u), vec4<u32>(1u, 0u, 4294967295u, 0u)))) >> (0u % 32u);
}

fn func_1(arg_0: Struct_4) -> vec2<i32> {
    var var_0 = Struct_2(-_wgslsmith_div_i32(~(~(-30217i)), u_input.a << (_wgslsmith_clamp_u32(68207u, 59380u, 4294967295u) % 32u)), Struct_1(!(39792i <= u_input.a), vec3<i32>(-1i) * -vec3<i32>(u_input.a, arg_0.a.x, arg_0.a.x), 10447i, vec2<bool>(true, true)));
    var var_1 = Struct_2(_wgslsmith_div_i32(-(~0i), -u_input.a >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 3129u, 0u), vec3<u32>(66396u, 84523u, 1u)) % 32u)) >> ((func_2() ^ ~countOneBits(1u)) % 32u), Struct_1(any(vec3<bool>(all(vec2<bool>(false, false)), any(vec4<bool>(false, false, var_0.b.a, var_0.b.a)), any(vec3<bool>(var_0.b.a, var_0.b.d.x, var_0.b.a)))), var_0.b.b, -_wgslsmith_sub_i32(-4187i, u_input.a) & arg_0.a.x, vec2<bool>(var_0.b.a, any(select(vec2<bool>(var_0.b.d.x, var_0.b.a), vec2<bool>(var_0.b.d.x, true), vec2<bool>(true, var_0.b.d.x))))));
    let var_2 = all(select(select(vec3<bool>(false, var_1.b.d.x, false), select(vec3<bool>(var_1.b.d.x, true, var_1.b.a), vec3<bool>(false, false, var_1.b.d.x), vec3<bool>(false, var_1.b.d.x, var_1.b.d.x)), var_1.b.a), !vec3<bool>(var_1.b.a, var_1.b.d.x, var_1.b.d.x), vec3<bool>(!var_0.b.d.x, true || var_0.b.d.x, var_0.b.a))) == false;
    var var_3 = ~(vec3<u32>(1u, 1u, 1u) ^ vec3<u32>(func_4(func_3(), var_2, vec2<bool>(true, true)), firstTrailingBit(4294967295u), func_4(abs(var_0.b.b.x), true, select(var_0.b.d, var_0.b.d, vec2<bool>(var_1.b.a, false)))));
    var var_4 = ~0u;
    return _wgslsmith_add_vec2_i32(var_0.b.b.yx, vec2<i32>(countOneBits(func_3()), -max(-var_0.b.b.x, _wgslsmith_add_i32(-10148i, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(firstTrailingBit(vec2<i32>(reverseBits(u_input.a), 1i) | firstLeadingBit(vec2<i32>(u_input.a, u_input.a))), -abs(vec2<i32>(i32(-1i) * -19638i, u_input.a)), vec2<bool>(!(-843f >= _wgslsmith_f_op_f32(trunc(1545f))), all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), false), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))))));
    let var_1 = Struct_4(-(~(-func_1(Struct_4(vec2<i32>(var_0.x, u_input.a))))));
    let var_2 = vec4<i32>(-37109i, 1i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(max(vec3<i32>(-2147483647i, 2813i, -15438i), vec3<i32>(u_input.a, 65084i, -1i)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), vec3<i32>(-1i) * -vec3<i32>(-1i, -38609i, 2147483647i)), min(vec3<i32>(8389i, 31943i, -16803i) ^ vec3<i32>(-29975i, var_1.a.x, 0i), reverseBits(vec3<i32>(var_1.a.x, u_input.a, 1i))) ^ min(_wgslsmith_add_vec3_i32(vec3<i32>(-12298i, u_input.a, var_1.a.x), vec3<i32>(var_0.x, -2147483647i, -2147483647i)), ~vec3<i32>(66455i, var_0.x, -15284i))), _wgslsmith_sub_i32(0i, -var_0.x));
    global0 = array<f32, 21>();
    global0 = array<f32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_2.x, _wgslsmith_add_i32(var_0.x, var_2.x)), 222f);
}

