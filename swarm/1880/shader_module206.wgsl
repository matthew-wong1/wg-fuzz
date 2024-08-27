struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> u32 {
    let var_0 = Struct_1(arg_0.a, -837f);
    global0 = true;
    var var_1 = vec3<u32>(37712u, countOneBits(~u_input.d.x) & u_input.d.x, u_input.d.x ^ 1u) << ((~(~(~vec3<u32>(u_input.d.x, 7854u, u_input.d.x))) | reverseBits(firstLeadingBit(~vec3<u32>(0u, 59489u, u_input.d.x)))) % vec3<u32>(32u));
    var var_2 = Struct_2(arg_0, false);
    var_2 = Struct_2(Struct_1(vec3<i32>(-1i) * -(~var_2.a.a), _wgslsmith_f_op_f32(170f + var_0.b)), var_2.b);
    return ~_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(_wgslsmith_mod_u32(64644u, 15897u)), ~_wgslsmith_div_u32(1u, var_1.x), _wgslsmith_dot_vec2_u32(max(vec2<u32>(10939u, u_input.d.x), var_1.yy), vec2<u32>(var_1.x, u_input.d.x) & vec2<u32>(u_input.d.x, var_1.x)), ~u_input.d.x | 56726u), ~vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.d, var_1.xz), ~u_input.d.x, var_1.x, abs(u_input.d.x)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<u32>) -> Struct_2 {
    global0 = true;
    var var_0 = vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, arg_2.x), u_input.d) ^ func_3(Struct_1(vec3<i32>(arg_0.a.x, arg_0.a.x, -2147483647i), 299f), Struct_2(Struct_1(arg_1, -191f), true), arg_0.b), _wgslsmith_mult_u32(u_input.d.x, ~7339u)) | 59067u, arg_2.x, u_input.d.x);
    global0 = true;
    var var_1 = var_0.x;
    var var_2 = vec4<bool>(true, select(false, !any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true)), any(vec3<bool>(true, true, true))), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(1u, arg_2.x) ^ vec2<u32>(u_input.d.x, 13493u)), 34630u) == u_input.d.x, false);
    return Struct_2(arg_0, (~arg_0.a.x ^ 0i) == 0i);
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = func_2(Struct_1(select(_wgslsmith_mod_vec3_i32(~vec3<i32>(2147483647i, 8842i, u_input.b.x), -vec3<i32>(u_input.c, arg_0, u_input.a)), select(countOneBits(vec3<i32>(arg_0, -27645i, u_input.a)), vec3<i32>(-12920i, arg_0, arg_0), vec3<bool>(false, true, true)), vec3<bool>(true, all(vec4<bool>(false, false, false, true)), all(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -180f)), abs(abs(vec3<i32>(-54258i, _wgslsmith_add_i32(u_input.c, arg_0), _wgslsmith_mod_i32(u_input.c, u_input.a)))), vec2<u32>(5605u, ~(firstTrailingBit(1u) & u_input.d.x)));
    var_0 = Struct_2(Struct_1(~((vec3<i32>(38305i, 0i, 0i) | var_0.a.a) | vec3<i32>(2147483647i, -31466i, -1i)), var_0.a.b), !(!var_0.b));
    let var_1 = Struct_1(var_0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -1477f) + _wgslsmith_div_f32(-1624f, -553f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a.b + -910f), -1000f)))));
    var var_2 = ~(~min(select(vec2<u32>(u_input.d.x, u_input.d.x), abs(vec2<u32>(u_input.d.x, 1u)), !vec2<bool>(false, var_0.b)), u_input.d));
    var_2 = vec2<u32>(u_input.d.x, ~4294967295u);
    return func_2(var_1, _wgslsmith_mult_vec3_i32(select(var_0.a.a, var_0.a.a, true) ^ _wgslsmith_add_vec3_i32(var_1.a, _wgslsmith_add_vec3_i32(vec3<i32>(var_1.a.x, -23695i, u_input.a), vec3<i32>(0i, -1i, var_1.a.x))), vec3<i32>(1i, ~u_input.a >> (reverseBits(43102u) % 32u), -1i ^ ~var_0.a.a.x)), u_input.d).a;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: vec2<f32>) -> StorageBuffer {
    global0 = !(false != all(vec4<bool>(true, !arg_1, false, arg_1)));
    global0 = any(select(select(vec3<bool>(any(vec3<bool>(arg_1, false, arg_1)), arg_1 && false, any(vec3<bool>(true, false, arg_1))), select(vec3<bool>(arg_1, arg_1, true), !vec3<bool>(arg_1, false, arg_1), arg_1), select(vec3<bool>(false, false, false), select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(arg_1, true, arg_1), false), func_2(Struct_1(arg_2.a, arg_2.b), arg_2.a, u_input.d).b)), vec3<bool>(true, arg_1, arg_1), (_wgslsmith_mod_i32(arg_2.a.x, 2147483647i) & countOneBits(-37671i)) != 8065i));
    global0 = arg_1;
    let var_0 = func_2(func_1(_wgslsmith_sub_i32(4367i, _wgslsmith_dot_vec3_i32(arg_2.a, arg_2.a | arg_2.a))), vec3<i32>(u_input.c, ~min(1i, arg_2.a.x), ~abs(1i)), _wgslsmith_mod_vec2_u32(vec2<u32>(max(reverseBits(1u), 4294967295u), 41416u >> (~arg_0 % 32u)), u_input.d));
    let var_1 = func_2(var_0.a, vec3<i32>(func_1(u_input.b.x).a.x & -1i, -u_input.b.x, arg_2.a.x), _wgslsmith_mult_vec2_u32(u_input.d, vec2<u32>(abs(u_input.d.x & u_input.d.x), 93345u >> (_wgslsmith_div_u32(u_input.d.x, u_input.d.x) % 32u))));
    return StorageBuffer(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.a.a.x, -1i), func_2(Struct_1(vec3<i32>(-28463i, -2147483647i, 15876i), var_1.a.b), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.a.a.x, 1i, -20866i), vec3<i32>(var_1.a.a.x, arg_2.a.x, 25025i))), u_input.d).a.a.yz), _wgslsmith_f_op_f32(3183f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - arg_3.x)) - -1000f)), -1002f, 2147483647i, vec3<f32>(_wgslsmith_f_op_f32(select(166f, -155f, _wgslsmith_f_op_f32(arg_3.x - var_1.a.b) >= arg_2.b)), var_0.a.b, 763f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    var var_0 = -3140i;
    var_0 = u_input.c;
    var_0 = u_input.b.x ^ reverseBits(u_input.a);
    let var_1 = true;
    let x = u_input.a;
    s_output = func_4(~u_input.d.x, true, func_1(i32(-1i) * -22729i), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-378f + 601f)))), -1000f));
}

