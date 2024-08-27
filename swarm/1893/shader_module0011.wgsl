struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -53954i;

var<private> global1: array<vec2<u32>, 7>;

var<private> global2: i32 = -24334i;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<i32>) -> vec3<u32> {
    global2 = 5631i;
    var var_0 = ~arg_0.x;
    var var_1 = Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(max(vec4<u32>(arg_1.a, arg_1.a, arg_1.a, u_input.a), vec4<u32>(u_input.a, arg_1.a, 1u, 4294967295u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, 43692u), vec4<u32>(arg_1.a, u_input.a, arg_1.a, u_input.a))), ~(~vec4<u32>(u_input.a, u_input.a, u_input.a, 0u))) & 4294967295u, countOneBits(vec4<i32>(u_input.b, _wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(-2147483647i, -31872i, arg_1.b.x, -2147483647i)) & -33496i, -31188i | arg_1.c.x, min(2147483647i, reverseBits(arg_1.b.x)))), arg_2.yz);
    var var_2 = vec3<f32>(-865f, -279f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_div_f32(-1989f, _wgslsmith_div_f32(-764f, 2079f)), 599f))));
    global1 = array<vec2<u32>, 7>();
    return vec3<u32>(~(~select(firstTrailingBit(u_input.a), _wgslsmith_div_u32(0u, 1u), false)), ~(1u >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.a, 8105u, 4294967295u), vec3<u32>(25838u, 12967u, u_input.a)) % 32u)), arg_1.a);
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: i32) -> vec3<u32> {
    global1 = array<vec2<u32>, 7>();
    return countOneBits(select(~func_3(vec4<i32>(u_input.b, -29289i, 56136i, 25767i) << (vec4<u32>(0u, 154166u, 20683u, 19063u) % vec4<u32>(32u)), Struct_1(4294967295u, vec4<i32>(u_input.b, 1i, arg_2, -17752i), vec2<i32>(u_input.b, u_input.b)), vec3<i32>(303i, 54648i, 1i) >> (vec3<u32>(4294967295u, arg_1, u_input.a) % vec3<u32>(32u))), firstLeadingBit(countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(29328u, 0u, arg_1), vec3<u32>(u_input.a, u_input.a, u_input.a)))), true));
}

fn func_1(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = -1i;
    let var_1 = arg_0;
    global0 = -_wgslsmith_clamp_i32(~29964i ^ arg_0.c.x, -38731i, var_1.c.x);
    let var_2 = false;
    global0 = 22841i;
    return _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(func_2(vec4<f32>(-1028f, -682f, 566f, -163f), ~u_input.a, var_0 << (4294967295u % 32u)), abs(firstTrailingBit(vec3<u32>(var_1.a, arg_0.a, u_input.a)))), _wgslsmith_mod_vec3_u32(max(~vec3<u32>(1u, arg_0.a, u_input.a), select(vec3<u32>(9697u, var_1.a, 1u), vec3<u32>(4294967295u, 10650u, 18616u), false)), vec3<u32>(~1u, firstLeadingBit(u_input.a), arg_0.a))), countOneBits(~(~reverseBits(vec3<u32>(u_input.a, arg_0.a, 0u)))));
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    return Struct_1(arg_0, vec4<i32>(1i, -2147483647i, _wgslsmith_mult_i32(38338i, i32(-1i) * -20935i), 1i), vec2<i32>(-14439i, u_input.b));
}

fn func_5(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = arg_0;
    let var_1 = func_4(u_input.a, vec3<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 62447u), vec3<u32>(u_input.a, var_0.a, 1u)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.a, u_input.a, 1u), vec3<u32>(u_input.a, var_0.a, u_input.a))), func_4(min(reverseBits(307u), arg_0.a >> (var_0.a % 32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(27884u, 40944u, 1u) >> (vec3<u32>(u_input.a, var_0.a, 89222u) % vec3<u32>(32u)), vec3<u32>(arg_0.a, 0u, 38041u)), func_4(4294967295u, ~vec3<u32>(arg_0.a, arg_0.a, var_0.a), Struct_1(arg_0.a, vec4<i32>(12945i, 22463i, 5055i, var_0.c.x), vec2<i32>(u_input.b, -4694i)))).a, 4294967295u), func_4(u_input.a, func_1(arg_0), var_0));
    var var_2 = ~(~firstTrailingBit(~vec4<u32>(var_1.a, 55323u, 65219u, u_input.a) << (firstTrailingBit(vec4<u32>(var_1.a, u_input.a, arg_0.a, var_1.a)) % vec4<u32>(32u))));
    var var_3 = var_1;
    let var_4 = -351f;
    return StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-383f - _wgslsmith_f_op_f32(floor(-145f))), var_4, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4 + -124f))), _wgslsmith_f_op_f32(-var_4)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 36333i;
    let x = u_input.a;
    s_output = func_5(func_4(4294967295u, ~_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.a, 107286u), vec3<u32>(u_input.a, u_input.a, 1u)), func_1(Struct_1(4294967295u, vec4<i32>(-26661i, u_input.b, u_input.b, -7300i), vec2<i32>(-1i, u_input.b)))), Struct_1(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)), firstTrailingBit(vec4<u32>(23596u, 56211u, 47668u, u_input.a))), select(vec4<i32>(-1i, 0i, u_input.b, 0i), vec4<i32>(2147483647i, 1i, u_input.b, 47322i), vec4<bool>(false, true, false, true)) << (abs(vec4<u32>(u_input.a, 0u, 1u, u_input.a)) % vec4<u32>(32u)), -vec2<i32>(9299i, 39662i))));
}

