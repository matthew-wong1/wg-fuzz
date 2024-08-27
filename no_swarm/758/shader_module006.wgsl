struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = 1u;
    let var_1 = -(~2147483647i);
    let var_2 = Struct_2(_wgslsmith_mod_u32(3589u, ~(~abs(u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -614f))), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(var_1, 2147483647i), var_1), -(~_wgslsmith_add_i32(var_1, 1i)), ~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_1, var_1), ~0i, -25608i)));
    var var_3 = _wgslsmith_div_f32(var_2.b, _wgslsmith_f_op_f32(var_2.b + _wgslsmith_f_op_f32(f32(-1f) * -375f)));
    let var_4 = var_2;
    return Struct_1(0i, true);
}

fn func_3() -> i32 {
    var var_0 = ~abs(1i);
    global0 = vec2<u32>(15685u, 1u);
    var var_1 = Struct_2(~0u, _wgslsmith_div_f32(1f, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(450f)))))), select(vec3<i32>(2147483647i, -2147483647i, -2147483647i), reverseBits(_wgslsmith_sub_vec3_i32(~vec3<i32>(31486i, -1i, 36651i), select(vec3<i32>(-2147483647i, 27566i, 0i), vec3<i32>(28049i, -37085i, -18792i), false))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), vec3<bool>(any(vec3<bool>(true, false, false)), true, true))));
    let var_2 = Struct_2(21698u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(601f, _wgslsmith_f_op_f32(-var_1.b))))), _wgslsmith_f_op_f32(var_1.b + 1000f)), vec3<i32>(87233i, _wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(var_1.c.x), 0i, -var_1.c.x), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(var_1.c, var_1.c), _wgslsmith_clamp_vec3_i32(var_1.c, var_1.c, var_1.c))), _wgslsmith_sub_i32(1i, 2147483647i)));
    let var_3 = var_1.b;
    return 1i;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: vec2<u32>) -> Struct_2 {
    global0 = vec2<u32>(1u, 1u);
    global0 = select(arg_3, ~(abs(vec2<u32>(0u, arg_3.x)) & arg_3), select(vec2<bool>(all(vec2<bool>(true, true)) & true, arg_1.b), !select(vec2<bool>(arg_1.b, false), select(vec2<bool>(arg_1.b, arg_1.b), vec2<bool>(arg_1.b, arg_1.b), true), !vec2<bool>(arg_1.b, arg_1.b)), vec2<bool>(arg_1.b, true)));
    var var_0 = func_3();
    global0 = ~vec2<u32>(~(~global0.x), ~u_input.a);
    var_0 = abs(firstLeadingBit(-arg_1.a | arg_1.a));
    return Struct_2(32218u & max(~(~0u), arg_2), 265f, max(vec3<i32>(-1i, 44740i, 14530i & func_3()), ~abs(-vec3<i32>(-71656i, 1i, 1i))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = -76050i;
    global0 = ~vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(22687u, 63760u, global0.x) & vec3<u32>(36397u, arg_0.a, 4294967295u), vec3<u32>(arg_0.a, 0u, global0.x)), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, 4294967295u, 0u), abs(vec3<u32>(11432u, arg_2, 85902u)))), _wgslsmith_sub_u32(~4294967295u, ~u_input.a));
    let var_1 = arg_0.b;
    var var_2 = arg_3;
    global0 = ~(~vec2<u32>(global0.x, arg_2));
    return func_1(_wgslsmith_f_op_f32(-197f - 1446f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_2(133072u, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1012f - 873f) * _wgslsmith_f_op_f32(-1529f - -1000f))), global0.x | 1u, vec2<u32>(global0.x, ~8522u)), true, func_2(1u, Struct_1(3286i, false), 54816u, _wgslsmith_clamp_vec2_u32(reverseBits(select(vec2<u32>(global0.x, 5485u), vec2<u32>(126328u, global0.x), false)), vec2<u32>(u_input.a, ~global0.x), firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, global0.x), vec2<u32>(global0.x, u_input.a))))).a, func_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1691f)))), _wgslsmith_f_op_f32(664f - -1250f)))));
    let var_1 = countOneBits(select(firstLeadingBit(vec4<i32>(19896i, -76270i, -3803i, 0i)) << (vec4<u32>(u_input.a, _wgslsmith_div_u32(global0.x, global0.x), select(1u, u_input.a, false), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global0.x, 4294967295u, 18842u), vec4<u32>(43747u, global0.x, 43678u, global0.x))) % vec4<u32>(32u)), reverseBits(_wgslsmith_sub_vec4_i32(select(vec4<i32>(0i, var_0.a, 0i, 8953i), vec4<i32>(var_0.a, var_0.a, var_0.a, 1i), false), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 1i, -62918i, 0i), vec4<i32>(var_0.a, -33341i, -6747i, 1i)))), !vec4<bool>(var_0.b, true, true, true)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1548f))) - 711f) * -1155f);
    var var_3 = var_0;
    let var_4 = var_0;
    var var_5 = true;
    var_3 = func_4(Struct_2(4294967295u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -795f), 473f, var_3.b)))), _wgslsmith_sub_vec3_i32(var_1.xzy, min(var_1.wyw, vec3<i32>(var_4.a, var_0.a, -10730i))) >> (~(~vec3<u32>(u_input.a, 1u, u_input.a)) % vec3<u32>(32u))), var_0.b, _wgslsmith_div_u32(~7385u, 70511u), Struct_1(18696i, false));
    var var_6 = func_2(global0.x, func_4(func_2(_wgslsmith_add_u32(max(u_input.a, global0.x), global0.x), func_4(func_2(4294967295u, var_0, u_input.a, vec2<u32>(3022u, 0u)), select(false, var_0.b, true), func_2(68346u, var_0, 1u, vec2<u32>(global0.x, 6746u)).a, var_0), abs(u_input.a | global0.x), select(vec2<u32>(40963u, 69132u), _wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, 52841u), vec2<u32>(14376u, global0.x)), !var_4.b)), var_0.b, _wgslsmith_clamp_u32(~1u >> (global0.x % 32u), ~3116u | u_input.a, u_input.a), Struct_1(-(9082i ^ var_4.a), true)), _wgslsmith_sub_u32(~u_input.a ^ firstLeadingBit(abs(global0.x)), 30503u), vec2<u32>(4294967295u, 85011u));
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(867f * var_6.b) - 1620f))), var_1, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_6.b, 641f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_6.b, 127f), vec2<f32>(1595f, -756f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1058f, var_6.b) * vec2<f32>(var_6.b, -298f)))))), var_6.c);
}

