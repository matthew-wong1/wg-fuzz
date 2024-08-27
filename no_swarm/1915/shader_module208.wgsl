struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<u32>, 2>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> u32 {
    global1 = array<vec3<u32>, 2>();
    return ~(_wgslsmith_mod_u32(0u, 1u) & (_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, 0u, 22u), vec3<u32>(4294967295u, u_input.c.x, 1u)) ^ 1u));
}

fn func_2(arg_0: u32) -> vec3<bool> {
    let var_0 = Struct_1(select(select(vec2<bool>(true, global0.a.x), !vec2<bool>(global0.a.x, false), false), !vec2<bool>(global0.a.x, global0.a.x), !global0.a));
    var var_1 = var_0;
    global0 = Struct_1(!vec2<bool>(false, var_0.a.x));
    let var_2 = vec3<u32>(abs(_wgslsmith_div_u32(firstTrailingBit(arg_0), abs(arg_0))), u_input.b, ~(~_wgslsmith_sub_u32(arg_0, u_input.c.x))) << ((_wgslsmith_mult_vec3_u32(~global1[_wgslsmith_index_u32(u_input.b, 2u)], global1[_wgslsmith_index_u32(~func_3(vec4<f32>(2199f, -634f, -159f, 615f), Struct_1(vec2<bool>(global0.a.x, var_1.a.x)), u_input.a, Struct_1(vec2<bool>(false, global0.a.x))), 2u)]) >> (reverseBits(vec3<u32>(1u, u_input.b, arg_0)) % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_3 = var_0;
    return !(!select(!(!vec3<bool>(var_0.a.x, true, true)), select(vec3<bool>(var_1.a.x, true, var_0.a.x), !vec3<bool>(global0.a.x, var_1.a.x, var_3.a.x), var_3.a.x & false), select(select(vec3<bool>(true, var_1.a.x, var_1.a.x), vec3<bool>(var_1.a.x, false, false), var_1.a.x), select(vec3<bool>(false, true, var_1.a.x), vec3<bool>(true, var_0.a.x, false), global0.a.x), var_3.a.x)));
}

fn func_1() -> vec2<bool> {
    let var_0 = select(countOneBits(_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.a, u_input.a, -16620i), select(-vec3<i32>(u_input.a, u_input.a, -2147483647i), -vec3<i32>(0i, u_input.a, u_input.a), vec3<bool>(global0.a.x, global0.a.x, true)))), _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(countOneBits(23310i), u_input.a, 1i)), ~_wgslsmith_add_vec3_i32(vec3<i32>(22576i, 14528i, -1i), vec3<i32>(2147483647i, u_input.a, u_input.a) | vec3<i32>(u_input.a, 15912i, u_input.a))), !select(!vec3<bool>(global0.a.x, false, global0.a.x), !vec3<bool>(global0.a.x, true, global0.a.x), func_2(_wgslsmith_sub_u32(48201u, u_input.b))));
    let var_1 = Struct_1(func_2(1u).zy);
    let var_2 = vec4<u32>(68269u, select(47117u ^ u_input.b, u_input.d.x, global0.a.x), u_input.d.x, u_input.c.x) >> (_wgslsmith_sub_vec4_u32(~select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.d.x, u_input.d.x), vec4<u32>(0u, 1u, u_input.d.x, 13924u), vec4<u32>(u_input.b, u_input.c.x, u_input.b, 32886u)), vec4<u32>(u_input.b, 0u, u_input.b, 1u), select(vec4<bool>(true, var_1.a.x, true, global0.a.x), vec4<bool>(global0.a.x, false, global0.a.x, false), vec4<bool>(global0.a.x, false, global0.a.x, false))), _wgslsmith_sub_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, 8510u, u_input.b, u_input.d.x), vec4<u32>(u_input.d.x, u_input.b, 46702u, 1u)), vec4<u32>(u_input.c.x, 1u, u_input.d.x, u_input.c.x) >> (vec4<u32>(u_input.d.x, u_input.c.x, 0u, 1u) % vec4<u32>(32u)), vec4<bool>(true, true, true, global0.a.x)), ~min(vec4<u32>(18574u, 1u, 4294967295u, u_input.d.x), vec4<u32>(u_input.c.x, u_input.b, u_input.d.x, u_input.c.x)))) % vec4<u32>(32u));
    let var_3 = var_1;
    let var_4 = Struct_1(var_3.a);
    return var_3.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = _wgslsmith_sub_u32(~u_input.d.x >> (_wgslsmith_mult_u32(u_input.b, 21415u) % 32u), 1u);
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(vec2<bool>(!any(vec4<bool>(global0.a.x, false, global0.a.x, global0.a.x)), true != !(!global0.a.x)));
    let var_0 = 0i;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(252f)), _wgslsmith_f_op_f32(698f - 456f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -485f), -274f, global0.a.x & global0.a.x)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1102f)), -339f))));
    var_1 = vec3<f32>(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1365f), _wgslsmith_f_op_f32(2979f * 540f));
    var var_2 = firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(u_input.a, -3026i), -24857i, _wgslsmith_sub_i32(2147483647i, 25348i)) & -vec3<i32>(-12415i, u_input.a, var_0), select(abs(vec3<i32>(1i, 0i, -19035i)), vec3<i32>(var_0, u_input.a << (u_input.b % 32u), reverseBits(0i)), !(!vec3<bool>(true, true, global0.a.x)))));
    global0 = Struct_1(vec2<bool>(all(select(vec3<bool>(false, true, global0.a.x), vec3<bool>(global0.a.x, global0.a.x, true), false)), !global0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -521f), func_4(Struct_1(global0.a), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 15308i) | vec2<i32>(2147483647i, var_0), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0, -7814i), var_2.xz)), var_2.zy), Struct_1(func_1())), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2806f))))));
}

