struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(22677u, 4294967295u, 23999u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: Struct_2, arg_3: vec3<f32>) -> u32 {
    var var_0 = ~countOneBits(abs(~(vec4<u32>(43615u, 45066u, global0.x, 1u) << (vec4<u32>(u_input.b, global0.x, 1u, 37016u) % vec4<u32>(32u)))));
    var var_1 = -395f;
    var var_2 = -4485i;
    var var_3 = arg_1 << (var_0.x % 32u);
    var var_4 = u_input.a;
    return u_input.b;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: vec2<i32>) -> f32 {
    let var_0 = arg_1;
    var var_1 = !select(arg_1, arg_1, var_0);
    var var_2 = countOneBits(~u_input.c.x);
    let var_3 = abs(~global0.x) | u_input.b;
    var var_4 = 14624i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-787f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(719f * -1540f), _wgslsmith_f_op_f32(min(374f, -1062f)), any(vec2<bool>(var_0.x, var_1.x)))), any(select(vec2<bool>(false, false), vec2<bool>(var_1.x, var_1.x), var_1.zx))))));
}

fn func_1(arg_0: vec4<bool>) -> vec3<u32> {
    global0 = ~(_wgslsmith_add_vec3_u32(~(~vec3<u32>(u_input.b, 1u, 1u)), ~_wgslsmith_div_vec3_u32(vec3<u32>(global0.x, 4294967295u, global0.x), vec3<u32>(1u, u_input.b, 41997u))) | select(~vec3<u32>(global0.x, u_input.b, 36052u), ~vec3<u32>(7408u, 3709u, 115135u), select(arg_0.zwy, vec3<bool>(arg_0.x, arg_0.x, arg_0.x), select(arg_0.wxy, arg_0.zyz, vec3<bool>(true, arg_0.x, true)))));
    let var_0 = ~abs(~select(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, 13262u, 30361u), vec3<u32>(u_input.b, 4294967295u, global0.x)), ~vec3<u32>(u_input.b, global0.x, 1u), arg_0.xzz));
    let var_1 = ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.b, 1u) | firstTrailingBit(~vec3<u32>(1u, 55431u, u_input.b)), vec3<u32>(0u, ~1u >> (firstTrailingBit(global0.x) % 32u), 0u));
    let var_2 = false;
    var var_3 = _wgslsmith_f_op_f32(func_3(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(u_input.b, func_2(var_0.x, 94402u, Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u), arg_0.zz), Struct_1(vec3<u32>(var_0.x, 0u, 4294967295u), arg_0.yw), Struct_1(vec3<u32>(var_0.x, u_input.b, 0u), vec2<bool>(true, arg_0.x)), Struct_1(var_0, vec2<bool>(arg_0.x, arg_0.x)), false), vec3<f32>(-454f, 839f, 326f))), 1u), ~abs(vec2<u32>(7499u, 10089u)) & ~countOneBits(vec2<u32>(var_1.x, var_1.x))), !(!vec3<bool>(true, true, var_1.x != u_input.b)), vec2<i32>(-(~47337i), countOneBits(41818i))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(vec3<u32>(max(24651u, 89242u), ~(~u_input.b), u_input.b) >> (_wgslsmith_clamp_vec3_u32(firstLeadingBit(max(vec3<u32>(1u, u_input.b, 1u), vec3<u32>(10998u, u_input.b, global0.x))), _wgslsmith_add_vec3_u32(func_1(vec4<bool>(false, true, true, true)), min(vec3<u32>(4294967295u, 0u, u_input.b), vec3<u32>(50025u, u_input.b, u_input.b))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, u_input.b, 94025u), vec3<u32>(u_input.b, global0.x, global0.x))) % vec3<u32>(32u)));
    global0 = _wgslsmith_mult_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(72649u, 1u, 60299u), abs(vec3<u32>(37925u, global0.x, 0u))) & (vec3<u32>(_wgslsmith_div_u32(u_input.b, 63095u), _wgslsmith_mod_u32(1483u, 44300u), reverseBits(83926u)) | reverseBits(vec3<u32>(u_input.b, u_input.b, global0.x))), vec3<u32>(~firstLeadingBit(41351u | u_input.b), abs(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, 53565u, u_input.b)), vec3<u32>(4294967295u, 57982u, global0.x))), _wgslsmith_dot_vec4_u32(~vec4<u32>(5269u, u_input.b, 47086u, 18247u), vec4<u32>(0u, 0u ^ global0.x, global0.x, u_input.b | u_input.b))));
    global0 = select(firstTrailingBit(min(vec3<u32>(~u_input.b, ~6227u, global0.x), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, global0.x, 1u), vec3<u32>(u_input.b, 156022u, u_input.b), vec3<u32>(27174u, 4294967295u, u_input.b)))), reverseBits(vec3<u32>(~1u, countOneBits(~global0.x), _wgslsmith_div_u32(global0.x, 51865u) << (~1u % 32u))), select(any(vec2<bool>(true, false)), false, true));
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1209f, 370f)))))))));
    let var_1 = !select(!select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(false, false, false)), !any(vec3<bool>(false, true, false))), vec2<bool>(true, (u_input.c.x > u_input.c.x) & all(vec2<bool>(false, false))));
    var var_2 = !select(vec2<bool>(select(!var_1.x, true, var_1.x), true), var_1, u_input.a > _wgslsmith_mult_i32(~u_input.a, u_input.c.x));
    var var_3 = !select(select(vec4<bool>(select(var_2.x, var_2.x, var_1.x), var_2.x, global0.x >= global0.x, true), vec4<bool>(!var_2.x, true, var_2.x, true), !(var_1.x && var_2.x)), select(select(vec4<bool>(true, var_1.x, var_2.x, true), vec4<bool>(var_2.x, var_2.x, false, true), !vec4<bool>(true, var_2.x, var_2.x, false)), vec4<bool>(true, all(vec3<bool>(true, var_2.x, true)), true, 4294967295u <= global0.x), var_1.x || false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(var_0.x - var_0.x)) < var_0.x);
    let var_4 = var_0.x;
    var_0 = vec2<f32>(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + -667f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-505f, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-(-u_input.a | select(u_input.c.x, u_input.a, var_2.x)), u_input.c.x, ~1i, _wgslsmith_mod_i32(u_input.c.x, u_input.c.x)), ~_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_div_i32(1i, 42119i), -u_input.a), vec2<i32>(firstTrailingBit(0i), firstLeadingBit(1i))), select(min(~global0.yz << (~vec2<u32>(global0.x, 12334u) % vec2<u32>(32u)), vec2<u32>(~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 81881u, 1u), vec3<u32>(0u, global0.x, 1u)))), vec2<u32>(1u, global0.x), true), u_input.a);
}

