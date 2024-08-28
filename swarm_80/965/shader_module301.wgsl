struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(2147483647i, 16034i, -50632i, -16594i);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    global0 = u_input.c;
    global0 = u_input.c;
    var var_0 = vec3<i32>(-12406i, 2147483647i, 2147483647i);
    var var_1 = Struct_2(~(~(~u_input.a.x)), !select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, true), true), true));
    var var_2 = -global0.wwy;
    return 2808i;
}

fn func_2(arg_0: u32) -> Struct_2 {
    global0 = -u_input.c;
    global0 = firstTrailingBit(vec4<i32>(_wgslsmith_sub_i32(-_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), reverseBits(u_input.d | u_input.c.x)), -firstTrailingBit(func_3()), _wgslsmith_sub_i32(u_input.d, u_input.b), -2147483647i));
    let var_0 = Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(global0.www, global0.wzw, u_input.c.wwz), -(_wgslsmith_add_vec3_i32(u_input.c.wwy, vec3<i32>(-15863i, u_input.b, global0.x)) & abs(u_input.c.zxz))), ~abs(countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, arg_0), vec4<u32>(u_input.a.x, 4564u, arg_0, 10412u)))), u_input.b);
    let var_1 = Struct_1(countOneBits(~(~var_0.a)), vec4<u32>(84517u, max(19289u, _wgslsmith_mult_u32(0u >> (u_input.a.x % 32u), _wgslsmith_dot_vec2_u32(var_0.b.yw, var_0.b.yz))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x | 1u, _wgslsmith_mult_u32(16625u, 0u), u_input.a.x), vec3<u32>(_wgslsmith_clamp_u32(4294967295u, var_0.b.x, u_input.a.x), countOneBits(4294967295u), var_0.b.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, 31829u << (u_input.a.x % 32u)), ~u_input.a & (var_0.b.yx << (var_0.b.ww % vec2<u32>(32u))))), 38316i);
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -851f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(273f - -919f), _wgslsmith_f_op_f32(-589f - -110f))))))));
    return Struct_2(reverseBits(23582u >> (_wgslsmith_dot_vec2_u32(~var_1.b.zx, u_input.a) % 32u)), !select(vec2<bool>(false, all(vec2<bool>(false, true))), vec2<bool>(all(vec4<bool>(true, false, true, false)), true), select(vec2<bool>(true, false), vec2<bool>(true, true), false)));
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    global0 = ~vec4<i32>(~_wgslsmith_add_i32(u_input.c.x, -20341i) ^ func_3(), 2147483647i, -2147483647i, u_input.b | -1i);
    global0 = ~(abs(vec4<i32>(i32(-1i) * -39533i, 69301i, -u_input.c.x, global0.x)) & -(~_wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(u_input.b, global0.x, 0i, -1i))));
    global0 = -vec4<i32>(global0.x, _wgslsmith_div_i32(0i, abs(-52638i)) | firstTrailingBit(~global0.x), 1i, _wgslsmith_clamp_i32(~2147483647i, func_3(), _wgslsmith_add_i32(~global0.x, 1i)));
    global0 = -vec4<i32>(-_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -977i, 0i, global0.x), u_input.c), global0.x), _wgslsmith_mod_i32(_wgslsmith_mod_i32(-u_input.d, _wgslsmith_sub_i32(global0.x, 1i)), -global0.x), countOneBits(global0.x), 1i);
    let var_0 = -u_input.b >> (~arg_1.a % 32u);
    return Struct_1(-(-(u_input.c.wwz & u_input.c.ywy) | vec3<i32>(-29600i, firstTrailingBit(var_0), ~u_input.d)), countOneBits(abs(vec4<u32>(~8499u, firstLeadingBit(4294967295u), ~0u, arg_1.a))), -1i);
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    var var_0 = u_input.a.x;
    var var_1 = func_4(u_input.a.x, func_2(u_input.a.x));
    var_1 = func_4(firstLeadingBit(abs(1u)), func_2(u_input.a.x));
    global0 = vec4<i32>(~(var_1.a.x | 5329i), 2147483647i, _wgslsmith_clamp_i32(abs(~0i), ~_wgslsmith_add_i32(firstTrailingBit(var_1.a.x), ~(-19870i)), global0.x), -2147483647i << (abs(u_input.a.x) % 32u));
    global0 = _wgslsmith_add_vec4_i32(abs(u_input.c), vec4<i32>(-1i) * -(_wgslsmith_div_vec4_i32(vec4<i32>(25462i, u_input.b, u_input.d, var_1.a.x), u_input.c) << (var_1.b % vec4<u32>(32u))));
    return 19345i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<i32>(u_input.b, i32(-1i) * -2571i, _wgslsmith_add_i32(global0.x, ~func_1(vec4<bool>(true, true, true, true))), 0i);
    global0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, ~1i, -_wgslsmith_mult_i32(2147483647i, u_input.c.x), global0.x), _wgslsmith_mult_vec4_i32(firstLeadingBit(-u_input.c), vec4<i32>(func_3(), -33783i, abs(func_1(vec4<bool>(true, false, true, false))), ~20763i)), _wgslsmith_mult_vec4_i32(-(reverseBits(u_input.c) >> (~vec4<u32>(33112u, 4294967295u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), vec4<i32>(select(select(global0.x, u_input.b, false), 1i, all(vec2<bool>(false, true))), func_1(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), true)), reverseBits(global0.x), u_input.d)));
    let var_0 = 1i;
    let var_1 = u_input.a.x;
    global0 = vec4<i32>(var_0, max(global0.x & ~(~global0.x), global0.x), firstLeadingBit(func_4(var_1, Struct_2(select(u_input.a.x, u_input.a.x, true), func_2(u_input.a.x).b)).a.x), var_0);
    global0 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(1f, var_0, _wgslsmith_mult_vec4_i32(u_input.c, u_input.c), ~select(u_input.a, ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_1, u_input.a.x), u_input.a), true));
}

