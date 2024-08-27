struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec4<f32>) -> vec4<i32> {
    let var_0 = arg_1.a.x;
    let var_1 = arg_0;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), (49997u ^ ~_wgslsmith_sub_u32(26037u, arg_0.a.c.b)) & countOneBits(_wgslsmith_mod_u32(firstLeadingBit(var_1.a.d.b), firstTrailingBit(u_input.a))));
    let var_3 = vec2<u32>(var_2.b, 0u);
    var var_4 = true;
    return arg_1.a;
}

fn func_2() -> vec4<bool> {
    let var_0 = select(-func_3(Struct_3(Struct_2(u_input.b.x, true, Struct_1(-785f, u_input.a), Struct_1(1750f, 0u)), vec2<u32>(u_input.a, u_input.a), vec3<bool>(true, true, true)), Struct_4(_wgslsmith_div_vec4_i32(vec4<i32>(-31227i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, 19957i, u_input.b.x))), Struct_4(~vec4<i32>(42741i, 1i, 2147483647i, -2147483647i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(146f, -501f, 1597f, -1712f) + vec4<f32>(1073f, -1785f, -1000f, 1475f)))), _wgslsmith_add_vec4_i32(reverseBits(firstLeadingBit(vec4<i32>(-23601i, u_input.b.x, u_input.b.x, u_input.b.x))), max(select(vec4<i32>(-45826i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, -1i, 0i, u_input.b.x), false), -vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, u_input.b.x))) | vec4<i32>(u_input.b.x, u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, u_input.b.x) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), -34356i), !select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true)), all(vec3<bool>(false, false, false))), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), select(false, false, true)), true));
    return !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !all(vec2<bool>(true, true)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<f32>) -> bool {
    var var_0 = func_2();
    let var_1 = func_2().x;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), 1000f, 1000f);
    var var_3 = Struct_2(_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, _wgslsmith_div_i32(1i, _wgslsmith_sub_i32(arg_0.x, 2967i)), 0i) & max(0i, arg_0.x), false, Struct_1(_wgslsmith_f_op_f32(sign(var_2.x)), 22336u), Struct_1(1f, ~1u));
    return select(var_1, any(!select(!vec4<bool>(false, true, var_1, true), vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(var_1, true, var_1, var_0.x))), any(var_0.ywx));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_3(Struct_2(reverseBits(_wgslsmith_sub_i32(0i << (u_input.a % 32u), _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, 4595i))), any(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.a - -207f))), 9500u), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1006f))), firstLeadingBit(arg_1.x))), ~vec2<u32>(abs(arg_0.b) >> (reverseBits(61044u) % 32u), u_input.a), vec3<bool>(true, !(!(1665f >= arg_0.a)), any(func_2().xzw)));
    var_0 = Struct_3(Struct_2(min(~select(-33480i, -16762i, false), var_0.a.a), true, arg_0, Struct_1(_wgslsmith_f_op_f32(select(var_0.a.c.a, _wgslsmith_f_op_f32(-var_0.a.c.a), true)), arg_1.x)), ~vec2<u32>(_wgslsmith_div_u32(min(71477u, 27740u), arg_0.b), _wgslsmith_dot_vec4_u32(firstLeadingBit(arg_1), vec4<u32>(u_input.a, 22636u, arg_1.x, 4294967295u))), !vec3<bool>(any(vec3<bool>(false, true, true)), true, var_0.a.b));
    let var_1 = var_0.a;
    var_0 = Struct_3(var_0.a, vec2<u32>(abs(arg_1.x >> (arg_0.b % 32u)) | min(67209u >> (arg_0.b % 32u), _wgslsmith_clamp_u32(22045u, 33357u, u_input.a)), ~var_0.b.x ^ ((69463u << (var_1.c.b % 32u)) & ~var_1.c.b)), var_0.c);
    var var_2 = -vec3<i32>(-45235i, -(_wgslsmith_div_i32(54398i, 2147483647i) << ((0u & var_0.a.c.b) % 32u)), abs(~(~var_1.a)));
    return var_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1951f - 447f), 1309f)) - 734f), 1661u << ((4294967295u & _wgslsmith_sub_u32(4294967295u, u_input.a)) % 32u)), vec4<u32>(~0u, ~abs(u_input.a), _wgslsmith_sub_u32(u_input.a, 0u ^ ~u_input.a), select(min(u_input.a, 4294967295u) | 4294967295u, 22155u, func_1(-u_input.b, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, 684f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1537f, var_0.a))), -516f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))));
}

