struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 16> = array<vec4<u32>, 16>(vec4<u32>(19665u, 1u, 0u, 86793u), vec4<u32>(1u, 23418u, 0u, 0u), vec4<u32>(4294967295u, 14783u, 7245u, 4294967295u), vec4<u32>(4294967295u, 32634u, 78089u, 0u), vec4<u32>(0u, 0u, 4294967295u, 51264u), vec4<u32>(9741u, 32962u, 101298u, 4294967295u), vec4<u32>(48312u, 93052u, 5672u, 12602u), vec4<u32>(74852u, 48222u, 1u, 17779u), vec4<u32>(4294967295u, 1u, 1u, 0u), vec4<u32>(1u, 34301u, 4294967295u, 43242u), vec4<u32>(16653u, 58728u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 18173u, 4294967295u), vec4<u32>(4294967295u, 98258u, 39179u, 12810u), vec4<u32>(1u, 44186u, 4294967295u, 1u), vec4<u32>(0u, 47050u, 1u, 3876u), vec4<u32>(47474u, 0u, 1u, 13550u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    global0 = array<vec4<u32>, 16>();
    global0 = array<vec4<u32>, 16>();
    var var_0 = Struct_2(_wgslsmith_div_i32((-u_input.b ^ u_input.a.x) ^ _wgslsmith_clamp_i32(26607i ^ u_input.b, countOneBits(-20477i), u_input.b), abs(1i)));
    var var_1 = true;
    var var_2 = u_input.a.zxx;
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -407f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-412f)) + 306f))), -1000f, max(-24506i, var_0.a) < (i32(-1i) * -26976i)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool) -> Struct_1 {
    global0 = array<vec4<u32>, 16>();
    global0 = array<vec4<u32>, 16>();
    let var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(5837u, 76057u, 0u, u_input.c)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, 59209u, 0u, 0u))), vec4<u32>(_wgslsmith_div_u32(u_input.c, u_input.c), u_input.c, _wgslsmith_mult_u32(69382u, u_input.c), u_input.c)), global0[_wgslsmith_index_u32(u_input.c, 16u)]) >> (vec4<u32>(30878u, 0u, u_input.c | ~0u, countOneBits(0u)) % vec4<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-113f, _wgslsmith_f_op_f32(func_3())));
    global0 = array<vec4<u32>, 16>();
    return Struct_1(vec2<f32>(-513f, var_1.x), _wgslsmith_f_op_f32(-var_1.x));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = any(select(vec3<bool>(u_input.c < u_input.c, any(vec4<bool>(false, true, true, true)), false), vec3<bool>(true, true, true), true)) || ((min(0u, u_input.c) | (u_input.c ^ _wgslsmith_mult_u32(u_input.c, 68708u))) > 14663u);
    var var_1 = ((_wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.b, -53736i), select(vec2<i32>(u_input.b, 0i), vec2<i32>(u_input.b, -24505i), vec2<bool>(false, false))) & u_input.a.xw) >> (vec2<u32>(_wgslsmith_div_u32(u_input.c, ~1u), u_input.c) % vec2<u32>(32u))) & u_input.a.zz;
    let var_2 = 1u;
    let var_3 = u_input.b;
    let var_4 = var_1.x;
    return Struct_2(313i);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> Struct_2 {
    let var_0 = (_wgslsmith_mult_i32(abs(_wgslsmith_sub_i32(u_input.b, 22738i)), i32(-1i) * -2147483647i) ^ -1i) >= -14917i;
    global0 = array<vec4<u32>, 16>();
    global0 = array<vec4<u32>, 16>();
    global0 = array<vec4<u32>, 16>();
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1525f)))))), -215f));
    return arg_0;
}

fn func_1() -> i32 {
    let var_0 = select(~1i, u_input.a.x, true);
    global0 = array<vec4<u32>, 16>();
    let var_1 = func_5(func_4(func_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(702f, -105f)), -1147f), Struct_3(vec4<bool>(true, false, true, true), _wgslsmith_mod_i32(var_0, u_input.a.x)), true)), Struct_3(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), var_0));
    var var_2 = u_input.a.yzz;
    let var_3 = u_input.c;
    return _wgslsmith_dot_vec3_i32(abs(vec3<i32>(_wgslsmith_clamp_i32(-60929i, countOneBits(var_2.x), var_2.x << (1u % 32u)), u_input.b, var_0)), u_input.a.zxz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, true, true, true);
    global0 = array<vec4<u32>, 16>();
    var var_1 = vec4<bool>(!var_0.x, false, var_0.x, var_0.x);
    var_1 = var_0;
    var_1 = vec4<bool>(true, false, false, false & (func_1() <= reverseBits(~14631i)));
    let var_2 = func_5(func_4(Struct_1(func_2(func_2(Struct_1(vec2<f32>(1430f, 1929f), 1000f), Struct_3(vec4<bool>(var_0.x, true, var_1.x, true), 1i), false), Struct_3(var_0, u_input.a.x), var_0.x).a, _wgslsmith_f_op_f32(select(1754f, _wgslsmith_f_op_f32(627f - 683f), false)))), Struct_3(vec4<bool>(true, var_1.x != var_0.x, !var_0.x, !all(vec4<bool>(false, true, var_1.x, var_0.x))), ~((1i ^ u_input.b) >> (min(u_input.c, 0u) % 32u))));
    var var_3 = Struct_3(vec4<bool>(false, var_0.x, all(vec2<bool>(true, true)), false), u_input.a.x << (~(~u_input.c) % 32u));
    var var_4 = var_2;
    global0 = array<vec4<u32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_div_i32(func_5(func_5(Struct_2(var_4.a), Struct_3(var_3.a, 2147483647i)), Struct_3(vec4<bool>(false, true, true, var_3.a.x), u_input.a.x)).a, reverseBits(var_4.a)) >> (4294967295u % 32u), reverseBits(vec3<i32>(_wgslsmith_mod_i32(11677i, _wgslsmith_mult_i32(9374i, u_input.a.x)), var_4.a, ~(-25580i))));
}

