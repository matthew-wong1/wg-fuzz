struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: f32) -> vec3<f32> {
    let var_0 = Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-2147483647i, -59620i, 0i)), reverseBits(vec3<i32>(u_input.b, -1i, u_input.b) | vec3<i32>(35742i, -7710i, u_input.b))), ~0i, u_input.b), any(!(!vec3<bool>(false, false, arg_0.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2 + arg_2), 1691f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2, 3136f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-580f * _wgslsmith_div_f32(-1221f, -601f)) * arg_2)), _wgslsmith_add_vec2_u32(arg_1.ww, ~vec2<u32>(arg_1.x, arg_1.x)), vec4<i32>(29563i, -2147483647i, -24036i, ~u_input.b & 18819i));
    return vec3<f32>(_wgslsmith_f_op_f32(-513f * 1269f), -1037f, var_0.c.x);
}

fn func_2() -> i32 {
    let var_0 = vec2<i32>(u_input.b, select(-min(6682i, u_input.b), -u_input.b, true) >> (abs(abs(4294967295u)) % 32u));
    var var_1 = Struct_1(vec3<i32>(u_input.b, 23738i, 1i), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_3(vec2<bool>(true, false), vec4<u32>(20243u, u_input.a.x, 1u, 41987u), 504f)))) + vec3<f32>(_wgslsmith_f_op_f32(round(-135f)), _wgslsmith_f_op_f32(989f * 169f), _wgslsmith_f_op_f32(f32(-1f) * -1724f)))), select(u_input.a, ~(~(~vec2<u32>(8205u, u_input.a.x))), (false == any(vec2<bool>(true, true))) && !any(vec2<bool>(true, true))), vec4<i32>(_wgslsmith_mult_i32(var_0.x, -7336i), -_wgslsmith_mod_i32(u_input.b, -44026i) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, u_input.b, -21588i), _wgslsmith_add_vec3_i32(vec3<i32>(4963i, u_input.b, u_input.b), vec3<i32>(var_0.x, 1i, u_input.b))), var_0.x, var_0.x));
    var var_2 = reverseBits(u_input.a.x);
    var_1 = Struct_1(~firstTrailingBit(firstLeadingBit(_wgslsmith_mult_vec3_i32(var_1.a, var_1.e.wyy))), select(!all(vec4<bool>(false, var_1.b, var_1.b, true)), true, !(!var_1.b)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-719f, var_1.c.x, var_1.c.x)) + var_1.c)), vec3<f32>(-232f, 1f, _wgslsmith_f_op_f32(ceil(-1000f)))), vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(var_1.d, var_1.d) >> (var_1.d.x % 32u), 18856u), var_1.d.x), var_1.e);
    return var_0.x;
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = 38827u;
    let var_1 = u_input.b;
    let var_2 = !select(vec2<bool>(~70024i < func_2(), _wgslsmith_f_op_f32(f32(-1f) * -835f) == _wgslsmith_f_op_f32(step(arg_2.c.x, -416f))), select(vec2<bool>(true, true), select(select(vec2<bool>(arg_2.b, arg_2.b), vec2<bool>(false, arg_2.b), arg_2.b), select(vec2<bool>(arg_2.b, arg_2.b), vec2<bool>(false, true), true), vec2<bool>(true, arg_2.b)), select(vec2<bool>(arg_2.b, false), !vec2<bool>(false, arg_2.b), vec2<bool>(arg_2.b, arg_2.b))), true);
    let var_3 = !vec4<bool>(!arg_2.b, all(var_2), true, true);
    return vec4<bool>(all(vec3<bool>(!all(var_3), true, 19921u > abs(arg_2.d.x))), !var_2.x, false, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!select(func_1(vec4<u32>(1u, 0u, 0u, 5664u), 1i, Struct_1(vec3<i32>(-9288i, u_input.b, u_input.b), false, vec3<f32>(2348f, -3778f, 724f), vec2<u32>(u_input.a.x, 83295u), vec4<i32>(0i, -14989i, u_input.b, -13198i))), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false))), vec4<bool>(true, true, true, true), !(!vec4<bool>(false, 39838u != u_input.a.x, u_input.a.x <= u_input.a.x, u_input.b >= u_input.b)));
    var var_1 = Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-16995i, u_input.b)), abs(vec2<i32>(0i, 22148i))) ^ (3990i << (u_input.a.x % 32u)), countOneBits(-4370i), ~(-2147483647i)), true, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, _wgslsmith_f_op_f32(floor(-1363f)), _wgslsmith_f_op_vec3_f32(func_3(var_0.yw, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), -1255f)).x))))), u_input.a, _wgslsmith_div_vec4_i32(select(firstTrailingBit(vec4<i32>(30646i, -38i, 7006i, u_input.b) >> (vec4<u32>(37240u, 20861u, 1u, 34743u) % vec4<u32>(32u))), vec4<i32>(2147483647i, u_input.b, _wgslsmith_add_i32(-17030i, 19219i), -u_input.b), !select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, false, var_0.x), vec4<bool>(false, false, var_0.x, false))), vec4<i32>(12738i << (1u % 32u), -_wgslsmith_div_i32(1i, -8786i), firstLeadingBit(-1i), max(select(u_input.b, u_input.b, true), -1i))));
    var var_2 = vec3<bool>(var_0.x, true, ~27127u < ~(~max(u_input.a.x, var_1.d.x)));
    var var_3 = Struct_1(abs(firstTrailingBit(vec3<i32>(u_input.b, u_input.b, u_input.b) | firstLeadingBit(var_1.a))), var_0.x, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1642f, _wgslsmith_f_op_f32(max(var_1.c.x, -1000f)), -133f)))), vec2<u32>(u_input.a.x, max(_wgslsmith_div_u32(var_1.d.x << (u_input.a.x % 32u), u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d.x, u_input.a.x, u_input.a.x, var_1.d.x), vec4<u32>(0u, 0u, u_input.a.x, var_1.d.x)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_1.d.x, 27570u), vec3<u32>(var_1.d.x, var_1.d.x, 49345u)))), countOneBits(var_1.e));
    let var_4 = abs(~_wgslsmith_sub_vec4_u32(vec4<u32>(~4294967295u, abs(4294967295u), 43347u, 36630u), vec4<u32>(min(var_1.d.x, 28763u), var_1.d.x, var_1.d.x, _wgslsmith_dot_vec2_u32(var_3.d, vec2<u32>(11812u, 0u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_3.c.x, -710f, 1731f, var_3.c.x))) * vec4<f32>(var_3.c.x, var_1.c.x, var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-590f))))), var_1.e.x, -422f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(992f, var_1.c.x, 808f, var_3.c.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.c.x, -735f, 1949f, var_3.c.x), vec4<f32>(var_1.c.x, var_1.c.x, 480f, var_1.c.x))))), vec4<f32>(1036f, 1386f, _wgslsmith_f_op_f32(-372f - _wgslsmith_f_op_f32(f32(-1f) * -319f)), var_1.c.x)), var_3.e.x);
}

