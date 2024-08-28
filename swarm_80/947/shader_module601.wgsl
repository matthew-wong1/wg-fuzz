struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 14>;

var<private> global1: vec4<i32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: f32) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(arg_0.d.x))));
    global1 = vec4<i32>(firstTrailingBit(-arg_1.b), ~_wgslsmith_dot_vec2_i32(u_input.a, -u_input.a), ~_wgslsmith_mod_i32(26566i, -36309i), ~36689i >> (~min(~u_input.b, ~1493u) % 32u));
    let var_1 = 558f;
    var var_2 = !any(vec3<bool>(any(vec4<bool>(arg_0.a, false, true, true)) && (var_0 >= arg_1.d.x), false, arg_0.a));
    let var_3 = 73176u;
    return ~min(~vec3<u32>(firstLeadingBit(27281u), ~arg_1.c, ~70913u), max(~(vec3<u32>(var_3, 0u, arg_0.c) | vec3<u32>(var_3, 4294967295u, arg_0.c)), vec3<u32>(countOneBits(arg_1.c), 13267u & u_input.b, select(1u, arg_0.c, arg_1.a))));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = Struct_1(all(!vec4<bool>(all(vec4<bool>(arg_0, arg_0, true, arg_0)), true, true, true)), ~(~(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, -2147483647i, 1i), vec3<i32>(u_input.c.x, 2147483647i, -5891i)) >> (countOneBits(u_input.b) % 32u))), u_input.b, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-814f)), _wgslsmith_f_op_f32(sign(2066f)), -670f, _wgslsmith_f_op_f32(f32(-1f) * -1681f))))));
    let var_1 = vec2<u32>(~(~var_0.c), var_0.c << (_wgslsmith_mult_u32(u_input.b, firstLeadingBit(~39698u)) % 32u));
    global1 = reverseBits(min(countOneBits(-u_input.c & select(vec4<i32>(var_0.b, 2147483647i, 2147483647i, -41257i), u_input.c, vec4<bool>(arg_0, arg_0, true, false))), firstTrailingBit(-u_input.c & _wgslsmith_div_vec4_i32(vec4<i32>(global1.x, u_input.c.x, -16552i, var_0.b), u_input.c))));
    let var_2 = var_0;
    let var_3 = var_2;
    return var_2.d.x;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, select(false, true, false)), !select(true, false, false)), vec3<bool>(!any(vec4<bool>(true, true, true, true)), true, true), select(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false), false), !vec3<bool>(true, select(false, false, false), any(vec2<bool>(true, false))), any(vec4<bool>(true, any(vec3<bool>(false, true, false)), true, true))));
    global1 = firstLeadingBit(-firstLeadingBit(~_wgslsmith_mod_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, -16117i, -1050i, u_input.c.x))));
    let var_1 = arg_0;
    var var_2 = 1u;
    let var_3 = 683f;
    return Struct_1(true, ~(-u_input.a.x >> (_wgslsmith_mult_u32(~33808u, var_1) % 32u)), var_1, vec4<f32>(_wgslsmith_f_op_f32(var_3 * var_3), _wgslsmith_f_op_f32(func_3(true)), -914f, 1505f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(all(vec4<bool>(true, true, true, true)), -1i, u_input.b, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-850f, -325f, 113f, -3763f))))));
    global0 = array<vec2<i32>, 14>();
    let var_1 = 19361u;
    let var_2 = max(reverseBits(vec3<u32>(~1u, 1u, var_1)), min(vec3<u32>(97939u, u_input.b, ~var_0.c), _wgslsmith_add_vec3_u32(func_1(var_0, var_0, vec2<u32>(u_input.b, var_0.c), var_0.d.x), vec3<u32>(26876u, var_0.c, var_1) >> (vec3<u32>(var_0.c, 0u, var_1) % vec3<u32>(32u))) >> (vec3<u32>(reverseBits(u_input.b), u_input.b, u_input.b) % vec3<u32>(32u))));
    var var_3 = func_2(4294967295u);
    var var_4 = vec2<i32>(global1.x, -select((var_0.b ^ -42714i) << ((var_2.x >> (u_input.b % 32u)) % 32u), global1.x, false));
    var var_5 = ~var_2;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~func_2(1u >> (u_input.b % 32u)).c), _wgslsmith_add_i32(global1.x, -select(global1.x, 35480i, true) >> (68624u % 32u)), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.b, _wgslsmith_sub_u32(4294967295u, 1u)), ~select(var_5.zy, vec2<u32>(var_1, 0u), vec2<bool>(var_3.a, true)) | (var_5.zy | func_1(Struct_1(true, -34335i, var_3.c, var_3.d), Struct_1(var_3.a, 1i, 1u, var_0.d), var_2.xx, -1100f).yz)));
}

