struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(-1i, 0i, 2147483647i, 1i), vec4<i32>(-27660i, 11922i, -1i, 1i), vec4<i32>(0i, -3560i, 2147483647i, 0i), vec4<i32>(1i, -49700i, 2147483647i, 39943i), vec4<i32>(-1i, 2147483647i, -22996i, -1i), vec4<i32>(-1i, 2147483647i, 2147483647i, 2147483647i), vec4<i32>(2147483647i, -14095i, 1i, 21081i));

var<private> global1: i32 = -1i;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = select(vec2<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(false, false), true))), select(!vec2<bool>(any(vec4<bool>(true, true, false, true)), true), vec2<bool>(true, true), false), vec2<bool>(false, false));
    let var_1 = reverseBits(_wgslsmith_sub_u32(1u, ~(~1u))) | _wgslsmith_mod_u32(select(countOneBits(34017u), ~(~47184u), true), _wgslsmith_mod_u32(firstTrailingBit(4294967295u) << (abs(1u) % 32u), 1u));
    let var_2 = ~(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1, 1u, var_1), vec3<u32>(1u, 1u, 1u), ~vec3<u32>(var_1, var_1, 42088u)), ~(vec3<u32>(var_1, var_1, 35989u) >> (vec3<u32>(105160u, var_1, 4294967295u) % vec3<u32>(32u)))) << (~_wgslsmith_div_vec3_u32(~vec3<u32>(var_1, 4294967295u, 1u), firstLeadingBit(vec3<u32>(var_1, var_1, 1u))) % vec3<u32>(32u)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1000f, 995f), -1966f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(373f + 197f) + -2781f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-285f)) - _wgslsmith_f_op_f32(950f - -416f)))) == _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-708f + 463f))), _wgslsmith_f_op_f32(f32(-1f) * -1576f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(254f * 942f)))));
    var var_4 = countOneBits(reverseBits(0u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(558f)) - _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(floor(-2311f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1587f, 572f, false)), _wgslsmith_f_op_f32(-302f + -819f))))));
}

fn func_2() -> Struct_1 {
    global0 = array<vec4<i32>, 7>();
    global0 = array<vec4<i32>, 7>();
    let var_0 = firstTrailingBit(firstLeadingBit(~vec3<u32>(1u, 1u, 1u)));
    global0 = array<vec4<i32>, 7>();
    let var_1 = select(_wgslsmith_add_vec3_u32(~(vec3<u32>(10910u, var_0.x, 1u) ^ _wgslsmith_div_vec3_u32(var_0, var_0)), ~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, var_0.x, var_0.x) ^ vec3<u32>(var_0.x, 11196u, 48017u), vec3<u32>(55182u, var_0.x, 0u))), _wgslsmith_mult_vec3_u32(var_0, reverseBits(var_0)), true);
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-284f + _wgslsmith_f_op_f32(step(-691f, 409f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3())))), ~0u);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(func_2());
    var var_1 = Struct_1(_wgslsmith_f_op_f32(select(func_2().a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.a, _wgslsmith_f_op_f32(-var_0.a.a)) + var_0.a.a), true)), _wgslsmith_mod_u32(0u, ~28703u));
    global1 = -2147483647i;
    let var_2 = Struct_2(func_2());
    var var_3 = var_2.a;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a, _wgslsmith_div_f32(var_3.a, _wgslsmith_f_op_f32(var_0.a.a * -1000f))) + 126f), _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(9056u, 34467u))), var_0.a.b), var_3.b));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    global0 = array<vec4<i32>, 7>();
    global1 = -1i;
    global0 = array<vec4<i32>, 7>();
    let var_0 = firstLeadingBit(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, -6248i, -25682i, 76198i), _wgslsmith_clamp_vec4_i32(global0[_wgslsmith_index_u32(arg_0.a.b, 7u)], vec4<i32>(u_input.a, u_input.b, 38847i, u_input.a), vec4<i32>(1i, -87160i, 36476i, -40520i)))) ^ global0[_wgslsmith_index_u32(4294967295u, 7u)];
    global0 = array<vec4<i32>, 7>();
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 7>();
    var var_0 = !vec3<bool>(false, any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), true)), -(0i | u_input.a) < select(-2147483647i, 1i, -1i < u_input.a));
    var var_1 = func_4(Struct_2(func_1()), 744f, Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2071f))), min(4294967295u, 76711u >> (0u % 32u)))), Struct_1(-3112f, ~1u));
    global0 = array<vec4<i32>, 7>();
    global0 = array<vec4<i32>, 7>();
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(var_1.a)), var_1.b));
    let var_3 = var_2;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.a.a, -674f, var_2.a.a, 1239f), vec4<f32>(-459f, var_2.a.a, 289f, -861f))))))));
    var_0 = !(!select(!vec3<bool>(var_0.x, var_0.x, true), select(select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true), false), vec3<bool>(var_0.x, var_0.x, true), true), false && !var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(~vec3<i32>(-16046i, -37055i, u_input.b), vec3<i32>(~(-29057i), u_input.a, ~u_input.a)) << (firstLeadingBit(select(reverseBits(vec3<u32>(1u, 4294967295u, var_2.a.b)), vec3<u32>(var_3.a.b, 1u, 15225u), false)) % vec3<u32>(32u)), var_4.xxy);
}

