struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 17>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2() -> f32 {
    let var_0 = true;
    let var_1 = vec2<bool>(var_0 & var_0, !select(true, all(vec2<bool>(true, var_0)), !(u_input.c.x >= u_input.c.x)));
    global0 = array<vec2<bool>, 17>();
    global0 = array<vec2<bool>, 17>();
    var var_2 = Struct_2(Struct_1(true, u_input.b ^ (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.a.x, u_input.b, u_input.a.x), vec4<u32>(u_input.b, 1u, 8671u, u_input.a.x)) << (0u % 32u)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(-1186f, -1096f), vec2<f32>(-227f, 372f))))));
    return _wgslsmith_div_f32(966f, var_2.a.c.x);
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    let var_0 = Struct_1(true, ~(~(~u_input.b & u_input.b)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-847f + -1415f)), _wgslsmith_f_op_f32(round(-888f))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - -501f))), var_0.c.x, _wgslsmith_f_op_f32(-var_0.c.x)));
    var var_2 = _wgslsmith_div_i32(arg_0.x, abs((_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, arg_0.x, u_input.c.x, u_input.c.x), vec4<i32>(0i, u_input.c.x, -4300i, -9451i)) >> (_wgslsmith_sub_u32(u_input.a.x, u_input.b) % 32u)) >> (~firstTrailingBit(1u) % 32u)));
    let var_3 = Struct_2(var_0);
    var var_4 = vec2<f32>(var_3.a.c.x, var_3.a.c.x);
    return firstTrailingBit(0u);
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: i32) -> Struct_2 {
    var var_0 = vec3<bool>(true, arg_0.a.a, select(all(!(!global0[_wgslsmith_index_u32(43837u, 17u)])), !(u_input.c.x <= ~2147483647i), arg_0.a.a));
    var var_1 = Struct_1(all(!select(vec4<bool>(arg_0.a.a, arg_0.a.a, arg_0.a.a, var_0.x), !vec4<bool>(var_0.x, arg_0.a.a, arg_0.a.a, false), true)), reverseBits(u_input.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(func_2())))));
    let var_2 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(func_3(_wgslsmith_mult_vec2_i32(vec2<i32>(26613i, arg_2), vec2<i32>(u_input.c.x, u_input.c.x))), ~_wgslsmith_add_u32(53346u, var_1.b)), u_input.a.yx);
    var_0 = select(select(select(vec3<bool>(!var_0.x, var_0.x, select(var_0.x, true, true)), vec3<bool>(var_1.a && var_0.x, var_1.a, arg_2 < 42744i), !(!arg_0.a.a)), !select(vec3<bool>(arg_0.a.a, false, false), vec3<bool>(true, arg_0.a.a, true), !vec3<bool>(var_1.a, var_0.x, false)), select(vec3<bool>(var_0.x & true, true, all(vec4<bool>(arg_0.a.a, true, false, false))), select(!vec3<bool>(false, var_1.a, var_0.x), vec3<bool>(true, true, true), var_0.x), select(select(vec3<bool>(var_0.x, arg_0.a.a, var_0.x), vec3<bool>(arg_0.a.a, true, true), vec3<bool>(false, var_0.x, var_1.a)), select(vec3<bool>(false, false, false), vec3<bool>(var_1.a, false, false), vec3<bool>(false, true, false)), any(vec4<bool>(true, var_0.x, true, true))))), vec3<bool>(all(!global0[_wgslsmith_index_u32(var_1.b, 17u)]), _wgslsmith_f_op_f32(_wgslsmith_div_f32(517f, arg_0.a.c.x) + 666f) <= arg_0.a.c.x, -2147483647i > _wgslsmith_div_i32(countOneBits(-15417i), reverseBits(u_input.c.x))), var_0.x);
    return Struct_2(arg_0.a);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> vec3<i32> {
    return ~min(vec3<i32>(2147483647i, -13781i, -216i) ^ firstTrailingBit(vec3<i32>(-25768i, -79684i, -29726i)), vec3<i32>(-1i, u_input.c.x, -2147483647i)) >> (select(~u_input.a, firstTrailingBit(~abs(vec3<u32>(arg_0.a.b, arg_3.a.b, 0u))), select(vec3<bool>(true, arg_0.a.a && arg_0.a.a, false), !vec3<bool>(arg_0.a.a, true, arg_3.a.a), !arg_0.a.a)) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(false, firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), select(32531u, 18316u, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-248f, 540f), vec2<f32>(-883f, 1111f)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1002f, 172f), vec2<f32>(-1277f, 425f)))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -883f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(214f, 671f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, -75389i) | vec3<i32>(1i, 14455i, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)) << (u_input.a % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(func_4(Struct_2(Struct_1(false, u_input.a.x, var_0.a.c)), ~var_0.a.b, _wgslsmith_f_op_f32(var_0.a.c.x + 545f), func_1(Struct_2(var_0.a), 3409u, 0i)), vec3<i32>(firstTrailingBit(2147483647i), ~u_input.c.x, u_input.c.x))), u_input.c.x, select(u_input.a, ~vec3<u32>(var_0.a.b, firstLeadingBit(32312u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.b, 38298u, 31787u), u_input.a)), !var_0.a.a), var_0.a.c);
}

