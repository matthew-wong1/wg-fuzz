struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: u32) -> vec4<u32> {
    var var_0 = 1u >> (u_input.a % 32u);
    let var_1 = _wgslsmith_add_vec4_i32(reverseBits(-_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -1i, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))), abs(~_wgslsmith_mult_vec4_i32(vec4<i32>(-17059i, 0i, u_input.b, 1723i), vec4<i32>(0i, -1i, 25300i, -30947i)) ^ (vec4<i32>(45661i, -1i, u_input.b, u_input.b) & _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 2160i, 1i, 0i), vec4<i32>(u_input.b, u_input.b, -1i, 16726i)))));
    var_0 = arg_0.a.x;
    var_0 = _wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(reverseBits(arg_1.zx), ~vec2<u32>(16810u, u_input.a))), _wgslsmith_div_u32(4294967295u, 24153u)) & 48819u;
    let var_2 = -154i;
    return _wgslsmith_mult_vec4_u32(~(_wgslsmith_mult_vec4_u32(arg_0.a, ~arg_0.a) & arg_0.a), vec4<u32>(max(_wgslsmith_div_u32(36248u, arg_0.a.x), u_input.a) << (~select(1u, arg_1.x, true) % 32u), abs(arg_0.a.x), abs(_wgslsmith_clamp_u32(75835u, 5366u, arg_2)) & abs(_wgslsmith_add_u32(arg_1.x, 5603u)), arg_2));
}

fn func_2() -> f32 {
    let var_0 = Struct_1(func_3(Struct_1(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(3886u, u_input.a, u_input.a, 1u), vec4<u32>(u_input.a, u_input.a, u_input.a, 118431u)), vec4<u32>(4294967295u, 58747u, u_input.a, u_input.a))), ~vec3<u32>(11705u, u_input.a, u_input.a), ~_wgslsmith_div_u32(~45082u, _wgslsmith_clamp_u32(u_input.a, u_input.a, 0u))));
    var var_1 = vec3<bool>(all(!vec4<bool>(true, any(vec3<bool>(false, false, false)), true, true)), all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true))), any(!vec4<bool>(u_input.a > 4294967295u, true, u_input.a > 47921u, any(vec3<bool>(true, false, false)))));
    var var_2 = var_0;
    var_1 = vec3<bool>(true, var_1.x, true);
    var_1 = vec3<bool>(any(select(var_1.zx, !var_1.yz, false)), var_1.x && true, any(select(select(select(vec3<bool>(false, true, var_1.x), vec3<bool>(false, true, true), vec3<bool>(false, var_1.x, var_1.x)), !vec3<bool>(true, true, var_1.x), !vec3<bool>(var_1.x, var_1.x, var_1.x)), select(select(vec3<bool>(false, false, var_1.x), vec3<bool>(var_1.x, var_1.x, false), true), !vec3<bool>(var_1.x, false, false), true), !vec3<bool>(var_1.x, true, var_1.x))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -187f), -146f, var_1.x))), -1261f);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> Struct_1 {
    var var_0 = arg_1.a;
    var var_1 = Struct_1(arg_1.a);
    var var_2 = vec3<f32>(-455f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * -1403f))), _wgslsmith_f_op_f32(arg_2 * -551f));
    var var_3 = Struct_1(_wgslsmith_sub_vec4_u32(var_1.a & var_1.a, vec4<u32>(u_input.a, 1u, 0u, 20397u)));
    var_3 = arg_1;
    return arg_1;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec4<u32>) -> u32 {
    var var_0 = arg_2.zz;
    var var_1 = func_4(4294967295u, Struct_1(vec4<u32>(firstLeadingBit(select(40341u, 59108u, arg_1)), max(~1u, _wgslsmith_mult_u32(49009u, var_0.x)), ~max(1u, 4294967295u), _wgslsmith_mult_u32(7866u, 39530u) ^ ~arg_2.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2()))), true);
    let var_2 = Struct_1(reverseBits(_wgslsmith_mod_vec4_u32(~(~var_1.a), vec4<u32>(~arg_2.x, ~4294967295u, var_1.a.x, 70954u << (u_input.a % 32u)))));
    var var_3 = ~(~var_2.a.xw);
    var_3 = _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_3.x, ~1u), ~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 39904u) >> (arg_2.wy % vec2<u32>(32u)), reverseBits(var_2.a.xz))), vec2<u32>(113185u, var_3.x));
    return min(select(0u, 4294967295u, true), ~26936u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-485f * 233f), _wgslsmith_f_op_f32(sign(-507f)), true)), -811f))));
    var var_1 = 1u >> (~4294967295u % 32u);
    let var_2 = vec4<bool>(select(all(vec4<bool>(true, true, true, true)), true, !select(true, true, true) && all(vec3<bool>(true, false, true))), true, !(-358f >= var_0), any(vec3<bool>(false, true, (u_input.b << (u_input.a % 32u)) != u_input.b)));
    var_1 = reverseBits(43267u);
    var var_3 = vec4<i32>(abs(u_input.b), u_input.b, 1i, 2147483647i >> ((_wgslsmith_clamp_u32(u_input.a, u_input.a, ~0u) ^ u_input.a) % 32u));
    var_3 = vec4<i32>(var_3.x, 1i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-(~vec4<i32>(u_input.b, 1i, var_3.x, u_input.b)), -(vec4<i32>(-28705i, -1i, var_3.x, var_3.x) ^ vec4<i32>(var_3.x, 2147483647i, -1i, 1i))), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(var_3.x, -2147483647i, u_input.b, var_3.x) ^ vec4<i32>(var_3.x, -390i, -49776i, var_3.x), vec4<i32>(u_input.b, -63580i, var_3.x, -1i) | vec4<i32>(1i, var_3.x, var_3.x, u_input.b)))), -(firstLeadingBit(~1i) << (u_input.a % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0, var_0, 1000f, var_0))))), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(~u_input.a, 0u), ~func_1(u_input.b, u_input.a < 1u, firstLeadingBit(vec4<u32>(1u, u_input.a, u_input.a, u_input.a))), u_input.a), vec4<u32>(1u, _wgslsmith_mod_u32(~4294967295u, u_input.a), abs(~(~u_input.a)), 1u));
}

