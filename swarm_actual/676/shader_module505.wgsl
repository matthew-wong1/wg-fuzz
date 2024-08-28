struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, i32(-1i) * -arg_0, -1i), ~(~vec3<i32>(u_input.b, u_input.a.x, -5559i) & vec3<i32>(arg_0, arg_0, u_input.b))));
    var var_1 = Struct_1(select(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 1u, 0u, 1u), ~vec4<u32>(53240u, u_input.c, u_input.c, u_input.c)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.c, 36305u, 4294967295u, 4294967295u), vec4<u32>(u_input.c, 15411u, 106064u, 338u) & vec4<u32>(u_input.c, 37158u, u_input.c, 32071u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.c, u_input.c), vec4<u32>(4294967295u, 0u, u_input.c, u_input.c), vec4<u32>(1u, 0u, u_input.c, 24651u)))), 0u, true), vec4<bool>(true, true, any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true)), all(vec3<bool>(true, true, true))), u_input.a.wyz);
    let var_2 = Struct_1(firstTrailingBit(var_1.a), vec4<bool>(88423u >= ((58235u >> (var_1.a % 32u)) | 66412u), var_1.b.x, false, false), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(firstLeadingBit(-8420i), -1i, 5763i), ~vec3<i32>(arg_0, arg_0, -1i)), vec3<i32>(0i, reverseBits(-u_input.b), -2147483647i)));
    var_1 = Struct_1(110293u, !var_1.b, vec3<i32>(i32(-1i) * -(~37474i), abs(0i), _wgslsmith_mult_i32(abs(i32(-1i) * -43640i), -41993i)));
    var var_3 = min(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.a.x, var_2.c.x, u_input.b, var_2.c.x), vec4<i32>(-48243i, -35812i, u_input.a.x, 1i), vec4<bool>(var_2.b.x, false, false, var_2.b.x)), u_input.a << (vec4<u32>(29572u, 1u, u_input.c, 0u) % vec4<u32>(32u))) | abs(vec4<i32>(var_0.x, 1i, -28351i, 2147483647i)), vec4<i32>(_wgslsmith_add_i32(var_2.c.x & -27659i, var_0.x), -18188i, 2147483647i, -var_2.c.x)), arg_0);
    return Struct_2(var_2);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<u32>) -> bool {
    let var_0 = _wgslsmith_sub_vec3_i32(arg_0.a.c & vec3<i32>(-reverseBits(arg_0.a.c.x), 2147483647i, abs(-2147483647i)), vec3<i32>(-37457i << (arg_0.a.a % 32u), _wgslsmith_dot_vec3_i32(~arg_0.a.c, max(~vec3<i32>(-23991i, u_input.a.x, -11178i), arg_0.a.c)), arg_2.c.x));
    let var_1 = 0i;
    let var_2 = any(!arg_0.a.b);
    let var_3 = arg_3;
    var var_4 = Struct_2(Struct_1(func_2(countOneBits(reverseBits(0i))).a.a, arg_0.a.b, ~firstLeadingBit(firstTrailingBit(arg_1.a.c))));
    return any(!(!vec3<bool>(!arg_1.a.b.x, any(vec3<bool>(false, false, arg_1.a.b.x)), arg_2.c.x <= 2147483647i)));
}

fn func_1() -> i32 {
    let var_0 = Struct_1(u_input.c, vec4<bool>(true, true, !func_3(Struct_2(Struct_1(1u, vec4<bool>(false, true, true, false), vec3<i32>(u_input.b, u_input.b, u_input.b))), func_2(u_input.b), Struct_1(u_input.c, vec4<bool>(false, false, true, false), vec3<i32>(u_input.a.x, 25303i, u_input.a.x)), ~vec2<u32>(0u, 1u)), func_2(_wgslsmith_div_i32(u_input.a.x, _wgslsmith_mod_i32(u_input.b, u_input.a.x))).a.b.x), u_input.a.wzy ^ -u_input.a.zyz);
    var var_1 = var_0.c.x;
    var_1 = var_0.c.x;
    var_1 = u_input.a.x;
    let var_2 = func_2(var_0.c.x & ~1i);
    return _wgslsmith_add_i32(var_0.c.x, var_2.a.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_1() << ((max(_wgslsmith_add_u32(u_input.c, u_input.c) & u_input.c, ~min(u_input.c, 1u)) ^ u_input.c) % 32u);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1276f - -893f) * _wgslsmith_f_op_f32(f32(-1f) * -842f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-2397f, 241f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(974f)) * _wgslsmith_f_op_f32(floor(-895f)))), 944f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -443f))), _wgslsmith_f_op_f32(select(1026f, 1869f, all(func_2(u_input.b).a.b.xx)))));
    var_0 = -1i;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), 1873f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -825f));
    var var_3 = func_2(u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c, select(var_3.a.c, var_3.a.c, false));
}

