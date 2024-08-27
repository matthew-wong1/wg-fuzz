struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<bool>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 26852u;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: f32) -> vec2<bool> {
    var var_0 = all(vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), all(vec3<bool>(false, false, false)))), true | all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false))), true));
    var var_1 = !(!(false && select(false, u_input.a.x > u_input.a.x, 4035u >= u_input.b)));
    global0 = firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_mult_u32(~4294967295u, 0u), 54435u));
    let var_2 = vec3<i32>(i32(-1i) * -1i, -(~(-41829i)), -24514i);
    var var_3 = u_input.a.x;
    return select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true))), vec2<bool>(all(vec3<bool>(true, true, true)), all(vec3<bool>(any(vec4<bool>(true, true, false, true)), true, all(vec2<bool>(true, true))))), all(!vec3<bool>(false, all(vec2<bool>(true, false)), any(vec2<bool>(true, false)))));
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = ~firstLeadingBit(vec4<u32>(u_input.b, ~1u, 1u | ~u_input.b, u_input.b));
    var var_1 = u_input.a.x;
    let var_2 = Struct_1(var_0.x, _wgslsmith_mult_vec4_i32(vec4<i32>(-(~u_input.c), -countOneBits(u_input.c), ~u_input.c, u_input.c), ~(min(vec4<i32>(-1i, 2147483647i, u_input.a.x, u_input.c), vec4<i32>(34783i, u_input.a.x, 0i, u_input.a.x)) | -vec4<i32>(-43182i, 2147483647i, 0i, u_input.c))), !func_3(_wgslsmith_f_op_f32(abs(762f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-446f + -1066f))), any(select(select(select(vec4<bool>(arg_0, true, false, true), vec4<bool>(true, false, true, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0)), !vec4<bool>(arg_0, false, false, arg_0), any(vec2<bool>(arg_0, arg_0))), select(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(arg_0, arg_0, false, arg_0), true), !vec4<bool>(arg_0, false, true, false))), ~select(~(var_0.x ^ 8922u), _wgslsmith_clamp_u32(~10099u, ~var_0.x, _wgslsmith_dot_vec2_u32(var_0.yy, var_0.yw)), arg_0));
    global0 = min((var_2.e | 1u) >> (~_wgslsmith_add_u32(var_0.x, var_2.e) % 32u), _wgslsmith_add_u32(10021u, ~36651u));
    var var_3 = 1u;
    return false;
}

fn func_1() -> Struct_1 {
    global0 = 677u;
    global0 = countOneBits(~u_input.b);
    let var_0 = 1424f;
    global0 = ~0u;
    return Struct_1(min(43071u, _wgslsmith_mod_u32(u_input.b, select(u_input.b | 0u, ~4294967295u, all(vec2<bool>(true, false))))), -(vec4<i32>(-3788i, abs(-7901i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(u_input.c, 34177i, u_input.a.x)), -u_input.c) << (_wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, 1u, u_input.b, 7534u), false), vec4<u32>(u_input.b, u_input.b, 67132u, 0u) ^ vec4<u32>(0u, 5642u, 62471u, u_input.b)) % vec4<u32>(32u))), vec2<bool>(all(vec3<bool>(true, true, u_input.b != u_input.b)), all(vec3<bool>(true, true, true)) && func_2(any(vec4<bool>(true, true, false, false)))), func_2(true), 4294967295u);
}

fn func_4(arg_0: Struct_4) -> Struct_4 {
    global0 = ~62344u;
    let var_0 = Struct_4(arg_0.a);
    global0 = _wgslsmith_dot_vec4_u32(vec4<u32>(func_1().a, abs(var_0.a.a), u_input.b, ~(~(7595u & arg_0.a.a))), ~vec4<u32>(var_0.a.e, firstTrailingBit(var_0.a.e), u_input.b, 4294967295u >> (var_0.a.a % 32u)) >> (vec4<u32>(~var_0.a.a, ~(~arg_0.a.a), ~(50832u & var_0.a.a), 1u) % vec4<u32>(32u)));
    var var_1 = _wgslsmith_mod_i32(arg_0.a.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -(vec3<i32>(var_0.a.b.x, u_input.a.x, -16682i) ^ arg_0.a.b.wyz), firstTrailingBit(_wgslsmith_mod_vec3_i32(arg_0.a.b.wxy, ~var_0.a.b.ywy))));
    global0 = ~u_input.b;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -abs(vec4<i32>(-25036i, u_input.a.x, ~u_input.c, ~(-u_input.a.x)));
    let var_1 = func_4(Struct_4(func_1()));
    var var_2 = func_4(func_4(var_1)).a;
    global0 = var_1.a.a;
    var_0 = countOneBits(var_2.b);
    var_2 = Struct_1(abs(min(_wgslsmith_dot_vec2_u32(vec2<u32>(35544u, var_2.a), vec2<u32>(51798u, 21569u)), reverseBits(85377u))) >> (var_1.a.a % 32u), var_2.b, !(!(!vec2<bool>(false, var_2.d))), !(_wgslsmith_div_f32(2163f, _wgslsmith_f_op_f32(min(756f, 712f))) > _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(614f, 304f), _wgslsmith_f_op_f32(ceil(-884f))))), _wgslsmith_mod_u32(35681u, var_2.a));
    var var_3 = _wgslsmith_add_vec3_i32(vec3<i32>(var_2.b.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.b.x, -1i, -2147483647i, 16284i), max(var_2.b, vec4<i32>(1i, -21046i, var_1.a.b.x, var_1.a.b.x))), reverseBits(-var_1.a.b.x)), var_2.b.xww << (~vec3<u32>(_wgslsmith_sub_u32(22473u, 4368u), _wgslsmith_div_u32(u_input.b, var_2.e), ~var_2.a) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(879f)))))), var_2.b.x, vec2<i32>(22562i, i32(-1i) * -45977i) << (max(~vec2<u32>(58855u, var_1.a.e), select(firstTrailingBit(vec2<u32>(0u, 16119u)), max(vec2<u32>(0u, 51681u), vec2<u32>(4294967295u, u_input.b)), vec2<bool>(true, true))) % vec2<u32>(32u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 989f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-942f, 2496f), _wgslsmith_f_op_vec2_f32(vec2<f32>(933f, -240f) - vec2<f32>(-393f, -345f))))));
}

