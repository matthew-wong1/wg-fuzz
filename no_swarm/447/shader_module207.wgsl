struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: vec4<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_5, arg_1: vec4<u32>) -> u32 {
    let var_0 = arg_1;
    var var_1 = 1219f;
    var_1 = 1048f;
    var_1 = _wgslsmith_f_op_f32(round(1737f));
    var_1 = 1000f;
    return 1u;
}

fn func_2() -> vec3<i32> {
    let var_0 = ~(~(vec4<u32>(reverseBits(27313u), func_3(Struct_5(Struct_4(Struct_2(vec2<bool>(false, true), Struct_1(vec4<i32>(-2147483647i, 2147483647i, u_input.e.x, 1i)), -251f, Struct_1(vec4<i32>(-36329i, u_input.d.x, u_input.d.x, u_input.d.x))), vec4<f32>(731f, -343f, -577f, -1147f)), vec3<f32>(-599f, -493f, 382f), vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b)), vec4<u32>(0u, u_input.b, u_input.b, 1u)), ~u_input.b, 64102u | u_input.b) << (reverseBits(vec4<u32>(1u, u_input.b, u_input.b, 25299u) >> (vec4<u32>(u_input.b, 0u, u_input.b, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_1 = ~vec3<i32>(-33998i, _wgslsmith_mult_i32(max(~u_input.d.x, -u_input.d.x), _wgslsmith_sub_i32(firstLeadingBit(0i), 1i)), -2147483647i);
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-426f, -137f)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1455f, 629f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(121f, 1252f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-583f, -2321f))), any(vec4<bool>(true, false, true, false)) & true))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1053f, 362f), vec2<f32>(-1073f, -1797f))) - vec2<f32>(612f, _wgslsmith_div_f32(-457f, 1569f)))))));
    var var_3 = Struct_1(vec4<i32>(select(0i, ~(-u_input.e.x), all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)))), var_1.x, min(28207i, abs(u_input.c.x)), _wgslsmith_div_i32(min(_wgslsmith_mult_i32(u_input.c.x, -34170i), i32(-1i) * -1i), ~(-var_1.x))));
    var_3 = Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(i32(-1i) * -var_1.x, 2147483647i, u_input.e.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, var_1.x, -2147483647i), u_input.e) | ~(-1884i)), firstTrailingBit(-vec4<i32>(var_3.a.x, var_1.x, u_input.a, var_1.x)), vec4<i32>(-8662i | ~var_1.x, firstTrailingBit(_wgslsmith_dot_vec4_i32(var_3.a, vec4<i32>(var_1.x, -8921i, 41023i, 0i))), countOneBits(1i), (2147483647i | var_3.a.x) ^ u_input.a)));
    return u_input.c;
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: vec4<bool>) -> i32 {
    let var_0 = -2147483647i;
    var var_1 = vec3<u32>(u_input.b, ~(u_input.b << (arg_1.d.x % 32u)), arg_0);
    let var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(16227i, u_input.d.x, arg_1.a.b.a.x), func_2());
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a.c, arg_1.b.c));
    var_1 = firstLeadingBit(~vec3<u32>(u_input.b ^ ~4294967295u, 14714u, u_input.b));
    return firstLeadingBit(~(-2147483647i));
}

fn func_4(arg_0: i32) -> bool {
    var var_0 = abs(~u_input.b ^ _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.b, u_input.b)), vec2<u32>(u_input.b, u_input.b)), 1u));
    var_0 = u_input.b;
    var var_1 = Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, arg_0, -2147483647i, arg_0), vec4<i32>(-41967i, 13354i, arg_0, 15312i))), _wgslsmith_div_f32(715f, _wgslsmith_f_op_f32(max(990f, _wgslsmith_f_op_f32(step(558f, 539f))))), Struct_1(min(-vec4<i32>(-56172i, 0i, -8027i, u_input.c.x), ~vec4<i32>(arg_0, 2147483647i, u_input.d.x, 0i)))), Struct_2(vec2<bool>(true, true), Struct_1(vec4<i32>(~17806i, -arg_0, arg_0, i32(-1i) * -2147483647i)), 1141f, Struct_1(vec4<i32>(u_input.d.x, ~arg_0, ~(-2147483647i), u_input.d.x))), Struct_2(vec2<bool>(true, true), Struct_1(-abs(vec4<i32>(38985i, arg_0, 0i, 2147483647i))), 1879f, Struct_1(reverseBits(vec4<i32>(u_input.e.x, 94909i, 60i, u_input.d.x)))), ~(~(~vec4<u32>(u_input.b, 3745u, 1u, 0u))) ^ vec4<u32>(u_input.b | firstTrailingBit(0u), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 33880u, 52782u), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(15030u, u_input.b, u_input.b))), 1u, 4294967295u), Struct_2(vec2<bool>(!(arg_0 < arg_0), false), Struct_1(vec4<i32>(~(-2225i), _wgslsmith_mod_i32(arg_0, arg_0), -2147483647i, 14072i)), 1444f, Struct_1(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 52936i, 1i, u_input.d.x), vec4<i32>(1218i, u_input.a, 843i, -30257i))))));
    var var_2 = Struct_4(var_1.a, vec4<f32>(var_1.c.c, var_1.e.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.c)) * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.a.c, -1877f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(322f * _wgslsmith_f_op_f32(trunc(-442f))) * _wgslsmith_f_op_f32(-var_1.b.c))));
    var_2 = Struct_4(var_1.b, var_2.b);
    return var_1.e.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), vec2<f32>(1f, 1f))));
    var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(240f, 259f)));
    var var_1 = !(!vec3<bool>(func_4(func_1(u_input.b, Struct_3(Struct_2(vec2<bool>(true, false), Struct_1(vec4<i32>(-35878i, 27319i, 1i, u_input.d.x)), var_0.x, Struct_1(vec4<i32>(u_input.c.x, u_input.c.x, 27297i, 1i))), Struct_2(vec2<bool>(false, false), Struct_1(vec4<i32>(u_input.c.x, -46017i, 9875i, -21865i)), var_0.x, Struct_1(vec4<i32>(u_input.d.x, -57546i, 1i, 32243i))), Struct_2(vec2<bool>(true, false), Struct_1(vec4<i32>(-2147483647i, -1i, 17277i, u_input.c.x)), var_0.x, Struct_1(vec4<i32>(u_input.a, -7774i, -2147483647i, -40193i))), vec4<u32>(u_input.b, u_input.b, 11690u, 3244u), Struct_2(vec2<bool>(false, false), Struct_1(vec4<i32>(u_input.d.x, u_input.e.x, 0i, 13022i)), var_0.x, Struct_1(vec4<i32>(0i, -10129i, u_input.a, 43966i)))), vec4<bool>(false, true, true, true))), false, all(vec4<bool>(true, false, false, false)) | all(vec4<bool>(true, true, false, false))));
    let var_2 = Struct_2(vec2<bool>(any(var_1.yy), var_1.x), Struct_1(_wgslsmith_mult_vec4_i32(firstLeadingBit(-vec4<i32>(u_input.c.x, 56104i, u_input.e.x, -45659i)), vec4<i32>(-1i) * -vec4<i32>(u_input.c.x, 2147483647i, u_input.a, u_input.c.x))), var_0.x, Struct_1(_wgslsmith_div_vec4_i32(min(-vec4<i32>(0i, 0i, -1i, u_input.c.x), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.e.x, -44439i), vec4<i32>(2147483647i, u_input.c.x, -2515i, u_input.d.x))), vec4<i32>(-48310i, u_input.a, _wgslsmith_add_i32(u_input.d.x, u_input.e.x), u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(~0i, vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.b, u_input.b)), ~select(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.b, 63298u), true)), ~reverseBits(1u), ~u_input.b, 4294967295u), 0u, _wgslsmith_mod_i32(var_2.b.a.x, 11786i), countOneBits(var_2.d.a.x));
}

