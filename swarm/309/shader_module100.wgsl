struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: bool,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: vec2<f32>, arg_3: f32) -> bool {
    var var_0 = -u_input.b;
    var var_1 = u_input.b.x;
    var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(16633i, 2147483647i, _wgslsmith_dot_vec4_i32(~abs(vec4<i32>(28064i, 1i, u_input.b.x, 14598i)), vec4<i32>(u_input.b.x, -48707i, 666i, 0i) ^ (vec4<i32>(var_0.x, var_0.x, u_input.a, 0i) & vec4<i32>(60836i, var_0.x, -56200i, 1i)))), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, 0i, u_input.a) >> (~u_input.c.zyw % vec3<u32>(32u)), u_input.b), firstTrailingBit(vec3<i32>(_wgslsmith_clamp_i32(var_0.x, u_input.a, 69445i), reverseBits(var_0.x), ~u_input.b.x))));
    var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(13067i, -11968i, min(var_0.x, select(var_0.x, 32305i, arg_0.x))), u_input.b);
    var_1 = _wgslsmith_mult_i32(u_input.a, -u_input.b.x);
    return false;
}

fn func_2() -> bool {
    var var_0 = Struct_1(!(true && !func_3(vec3<bool>(true, false, true), vec2<f32>(592f, 1000f), vec2<f32>(-333f, 137f), 1010f)), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.c.x, 0u), u_input.c.yww | vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), countOneBits(~u_input.c.zzw)) << (u_input.c.xxx % vec3<u32>(32u)), true, u_input.b.yx, vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -663i), u_input.b.yz) & ~u_input.b.x), _wgslsmith_div_i32(~31180i << (~u_input.c.x % 32u), u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-19661i, -2147483647i, 37390i), u_input.b), _wgslsmith_add_i32(~(-2147483647i), abs(~0i))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1393f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1559f * 328f) + _wgslsmith_f_op_f32(f32(-1f) * -1393f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-440f, -1000f)))) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -254f), 1f), 683f))));
    var var_2 = var_0.e.x;
    var var_3 = func_3(!vec3<bool>(true, var_0.c, var_0.c), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-149f, _wgslsmith_f_op_f32(f32(-1f) * -873f), var_0.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(362f * -996f))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -615f))))), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-458f - _wgslsmith_f_op_f32(trunc(634f))))));
    let var_4 = Struct_1(true, firstLeadingBit(~vec3<u32>(u_input.c.x, 4446u, 20214u) & vec3<u32>(u_input.c.x, var_0.b.x, var_0.b.x)) >> (var_0.b % vec3<u32>(32u)), !(!func_3(select(vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(false, true, true), vec3<bool>(false, var_0.a, var_0.c)), vec2<f32>(1332f, -532f), vec2<f32>(-831f, 373f), _wgslsmith_f_op_f32(step(-1778f, 347f)))), countOneBits(u_input.b.zz), max(~_wgslsmith_mod_vec4_i32(-vec4<i32>(0i, u_input.b.x, u_input.b.x, u_input.b.x), select(vec4<i32>(-2147483647i, 0i, var_0.d.x, 1675i), vec4<i32>(-24463i, -34345i, 0i, var_0.e.x), var_0.c)), abs(reverseBits(var_0.e))));
    return var_4.c;
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = abs(u_input.c.xz);
    var_0 = vec2<u32>(9041u, abs(u_input.c.x) << (~_wgslsmith_add_u32(0u, var_0.x) % 32u)) >> (~_wgslsmith_clamp_vec2_u32(countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(32503u, arg_0), u_input.c.zz)), abs(~vec2<u32>(u_input.c.x, 22414u)), ~_wgslsmith_mult_vec2_u32(u_input.c.yw, u_input.c.yz)) % vec2<u32>(32u));
    let var_1 = select(!(!vec3<bool>(true, true, select(false, true, true))), !select(vec3<bool>(true, func_2(), true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), false), select(true, all(vec4<bool>(true, false, true, false)), true)), func_2());
    var_0 = ~(vec2<u32>(_wgslsmith_add_u32(~arg_0, _wgslsmith_div_u32(21380u, 4294967295u)), abs(1u)) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(45555u, 0u), u_input.c.x), vec2<u32>(9939u, arg_0) & u_input.c.wy, ~vec2<u32>(var_0.x, var_0.x)) % vec2<u32>(32u)));
    var_0 = u_input.c.xw ^ (u_input.c.yy & u_input.c.yw);
    return Struct_1(func_2(), u_input.c.xxy, !all(!var_1) & var_1.x, u_input.b.yy, vec4<i32>(-u_input.a, -u_input.a, -_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, 0i), reverseBits(_wgslsmith_div_i32(-6663i, 36044i))) | _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x >> (arg_0 % 32u), 17412i, 9250i, u_input.a << (4294967295u % 32u)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -27330i, u_input.a, -2147483647i), vec4<i32>(u_input.a, u_input.b.x, -2147483647i, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(50247u);
    let var_1 = _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(~max(~u_input.c.zw, abs(vec2<u32>(var_0.b.x, 1u))), u_input.c.yz), abs(vec2<u32>(select(var_0.b.x, 1u, true), 1u ^ firstTrailingBit(85262u))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(select(-326f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-2375f, 269f, var_0.c)) - _wgslsmith_f_op_f32(102f - 1495f))), var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-758f)) + -1320f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-167f, _wgslsmith_div_f32(-773f, 1068f)))), 538f)));
    var var_3 = reverseBits(~(-vec3<i32>(var_0.e.x, -7130i >> (var_1.x % 32u), 24037i)));
    let var_4 = var_0.e;
    let var_5 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, 113f) * _wgslsmith_f_op_f32(f32(-1f) * -161f)), _wgslsmith_f_op_f32(-var_2.x));
    var_3 = _wgslsmith_mult_vec3_i32(-var_4.wwx, ~func_1(u_input.c.x | _wgslsmith_mod_u32(4294967295u, 14402u)).e.yxz);
    let x = u_input.a;
    s_output = StorageBuffer(-144f, _wgslsmith_add_vec3_u32(u_input.c.ywx, _wgslsmith_add_vec3_u32(~(u_input.c.zzy << (var_0.b % vec3<u32>(32u))), ~abs(vec3<u32>(1u, var_1.x, 80037u)))));
}

