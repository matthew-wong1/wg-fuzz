struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, 25138i, 1i, 1i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = Struct_4(vec4<u32>(_wgslsmith_clamp_u32(11241u, 1u, 54064u), ~54938u, ~(~(~1u)), ~(~1u)), 1i);
    var var_1 = -_wgslsmith_div_i32(_wgslsmith_sub_i32(abs(global0.x), -arg_0), _wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.b, -1i, 1i), global0.wyw)), vec3<i32>(select(global0.x, arg_0, true), 1i, _wgslsmith_mod_i32(arg_0, arg_0))));
    return any(vec4<bool>(true & any(vec2<bool>(true, false)), true && (var_0.a.x > var_0.a.x), true, true)) | false;
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    global0 = -_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(29567i, u_input.a.x, 0i, u_input.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, 1i, global0.x, global0.x), vec4<i32>(2147483647i, 40374i, 22013i, 1297i))), abs(vec4<i32>(29649i, -21461i, u_input.a.x, -1i)) >> (vec4<u32>(4294967295u, 0u, 1u, 78452u) % vec4<u32>(32u))), abs(-abs(vec4<i32>(20418i, global0.x, 10051i, 1i))));
    var var_0 = ~_wgslsmith_mult_vec2_u32(~countOneBits(vec2<u32>(1u, 1u)), vec2<u32>(30839u, firstLeadingBit(0u)) >> ((_wgslsmith_mod_vec2_u32(vec2<u32>(21935u, 55821u), vec2<u32>(4294967295u, 1u)) & select(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 1u), false)) % vec2<u32>(32u)));
    global0 = -(~min(min(vec4<i32>(-62572i, global0.x, u_input.a.x, 2147483647i) & vec4<i32>(global0.x, 2147483647i, 1i, global0.x), _wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, global0.x, -15827i, -1i), vec4<i32>(-1i, u_input.a.x, 33776i, 35631i))), vec4<i32>(global0.x, ~global0.x, global0.x, _wgslsmith_mod_i32(1843i, 2147483647i))));
    global0 = _wgslsmith_mult_vec4_i32(-(max(vec4<i32>(10256i, 11961i, global0.x, global0.x), vec4<i32>(0i, -2147483647i, global0.x, 39385i)) << (~vec4<u32>(var_0.x, 34881u, var_0.x, var_0.x) % vec4<u32>(32u))) ^ select(~vec4<i32>(u_input.a.x, 0i, global0.x, u_input.a.x), reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.a.x, global0.x, u_input.a.x), vec4<i32>(27754i, u_input.a.x, global0.x, -1i))), vec4<bool>(true, true, select(true, true, false), func_3(1i))), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, 2147483647i), -2147483647i, u_input.a.x, ~25491i)), vec4<i32>(1i, _wgslsmith_mod_i32(-u_input.a.x, ~global0.x), 1i, 2147483647i)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, 1296f, select(true, false, select(4457u, 4294967295u, true) >= abs(10795u)))));
    return ~_wgslsmith_add_i32(min(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-34270i, 0i), u_input.a)) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, global0.x), global0.xwy), 0i);
}

fn func_1(arg_0: u32) -> vec3<f32> {
    global0 = vec4<i32>(_wgslsmith_dot_vec3_i32(abs(global0.zzy), vec3<i32>(_wgslsmith_add_i32(-5501i, 1i) ^ func_2(vec2<f32>(-1000f, -1136f)), _wgslsmith_div_i32(_wgslsmith_mult_i32(global0.x, 0i), global0.x & u_input.a.x), global0.x)), -34490i, 1i, u_input.a.x);
    let var_0 = countOneBits(u_input.a.x) >> (_wgslsmith_mod_u32(arg_0, 0u) % 32u);
    let var_1 = Struct_1(select(select(vec4<bool>(true, true, true, true), vec4<bool>(select(true, true, false), arg_0 >= arg_0, true, true), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), func_3(-var_0)), firstTrailingBit(~vec3<u32>(_wgslsmith_sub_u32(arg_0, arg_0), 1u, 1u)), vec2<i32>(-1i, u_input.a.x), true & any(vec4<bool>(true, any(vec3<bool>(true, false, false)), true, true)), 21602i);
    var var_2 = Struct_3(var_1, var_1, Struct_2(-global0.yyw, Struct_1(select(var_1.a, select(var_1.a, vec4<bool>(var_1.a.x, var_1.d, var_1.d, var_1.d), true), !var_1.a), select(var_1.b, vec3<u32>(var_1.b.x, arg_0, arg_0), var_1.a.xyw) & _wgslsmith_add_vec3_u32(var_1.b, vec3<u32>(var_1.b.x, arg_0, 22578u)), vec2<i32>(-30777i, firstTrailingBit(var_0)), true, firstTrailingBit(20653i))));
    let var_3 = Struct_4(_wgslsmith_clamp_vec4_u32(vec4<u32>(~arg_0, 13707u, _wgslsmith_add_u32(arg_0, 27655u) << (13969u % 32u), var_2.c.b.b.x), vec4<u32>(_wgslsmith_dot_vec2_u32(var_1.b.zy, vec2<u32>(arg_0, 0u)), var_2.c.b.b.x, arg_0, _wgslsmith_sub_u32(var_1.b.x, var_1.b.x << (arg_0 % 32u))), vec4<u32>(_wgslsmith_mod_u32(48434u, ~var_2.a.b.x), 0u, countOneBits(var_1.b.x), 0u)), ~(-firstLeadingBit(2147483647i)));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(1202f, -1000f, _wgslsmith_div_f32(-230f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(112f))))));
}

fn func_4(arg_0: vec3<f32>) -> u32 {
    var var_0 = Struct_4(vec4<u32>(select(~48405u, countOneBits(~1u), all(vec3<bool>(true, true, true))), countOneBits(0u), 1u, ~27834u), 2147483647i);
    let var_1 = Struct_3(Struct_1(select(vec4<bool>(true, true, func_3(u_input.a.x), select(false, true, true)), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), false)), vec3<u32>(~(~1u), select(var_0.a.x, _wgslsmith_add_u32(var_0.a.x, var_0.a.x), true), _wgslsmith_add_u32(var_0.a.x, 1u)), ~global0.wx, true, var_0.b), Struct_1(vec4<bool>(true, false, false, all(vec3<bool>(false, true, false))), reverseBits(vec3<u32>(~var_0.a.x, var_0.a.x | var_0.a.x, var_0.a.x)), reverseBits(u_input.a), true, -(~global0.x) ^ ((global0.x ^ 28277i) >> (20994u % 32u))), Struct_2(~vec3<i32>(-2147483647i, -global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, u_input.a.x, 19060i, var_0.b), vec4<i32>(var_0.b, 25600i, 5979i, global0.x))), Struct_1(vec4<bool>(true, true, true, true), ~var_0.a.xzz & vec3<u32>(44974u, 0u, 11399u), reverseBits(u_input.a) | select(u_input.a, global0.wx, vec2<bool>(true, false)), all(vec3<bool>(true, true, true)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b, -17488i, u_input.a.x, var_0.b), vec4<i32>(var_0.b, 0i, 27221i, -2147483647i)))));
    let var_2 = reverseBits(vec3<u32>(min(1u, 4294967295u), 4294967295u, _wgslsmith_add_u32(~(~var_1.b.b.x), ~_wgslsmith_div_u32(0u, var_0.a.x))));
    let var_3 = var_1.a.a.zyz;
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(func_4(_wgslsmith_f_op_vec3_f32(func_1(~0u))) >= firstTrailingBit(1u), false, false);
    var var_1 = select(abs(reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 45039u, 5634u, 0u), vec4<u32>(1u, 4294967295u, 0u, 4294967295u), vec4<u32>(31457u, 1u, 4294967295u, 81u)) >> (vec4<u32>(13115u, 55476u, 1u, 43872u) % vec4<u32>(32u)))), ~select(vec4<u32>(1u, 1u, 1u, 1u), firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 20210u, 87665u, 24273u), vec4<u32>(0u, 10536u, 2866u, 76780u))), select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x))), vec4<bool>(select(func_3(-33888i), false, _wgslsmith_f_op_f32(trunc(-696f)) >= _wgslsmith_f_op_f32(-517f + -1235f)), var_0.x, var_0.x, _wgslsmith_f_op_f32(-396f * _wgslsmith_f_op_f32(f32(-1f) * -141f)) >= _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-592f, 1242f)))));
    let var_2 = _wgslsmith_mod_u32(var_1.x, _wgslsmith_add_u32(1u, _wgslsmith_dot_vec4_u32(firstLeadingBit(reverseBits(vec4<u32>(4294967295u, var_1.x, 4294967295u, 54197u))), vec4<u32>(firstLeadingBit(var_1.x), 96025u, var_1.x & var_1.x, 0u))));
    var var_3 = var_1.x;
    var var_4 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x & firstLeadingBit(4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1654f) - -608f), vec3<i32>(~(-u_input.a.x), -2147483647i, -(~(-1265i))), 0u, vec4<u32>(_wgslsmith_div_u32(~var_1.x, var_1.x), 1u, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(1u, 15718u, var_2, var_2)), ~vec4<u32>(var_2, 0u, 32752u, 11804u)), var_2) | ~_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(10535u, var_1.x, var_2, var_2)), ~vec4<u32>(149031u, var_2, 1u, 0u)));
}

