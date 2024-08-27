struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec2<i32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: u32,
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

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> vec2<u32> {
    var var_0 = select(!select(vec4<bool>(u_input.b != arg_0, all(vec3<bool>(false, false, false)), true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)), true)), !(!vec4<bool>(arg_0 < 1u, arg_0 >= arg_0, false, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1173f * -291f), _wgslsmith_div_f32(-1353f, -800f))), _wgslsmith_f_op_f32(f32(-1f) * -389f)) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(351f, 843f) * _wgslsmith_div_f32(-1013f, 940f)))));
    let var_1 = Struct_3(u_input.d, ~max(_wgslsmith_mult_i32(abs(43985i), u_input.c), 1i));
    var_0 = !(!vec4<bool>(any(select(var_0.wy, vec2<bool>(var_0.x, true), var_0.x)), _wgslsmith_sub_u32(u_input.e, 1u) > ~u_input.e, abs(1796i) >= (u_input.a.x & -2147483647i), true));
    var_0 = vec4<bool>(var_0.x, false, var_0.x, true);
    var_0 = vec4<bool>(false, var_0.x, reverseBits(u_input.e) <= ~reverseBits(~arg_0), all(vec2<bool>(any(select(var_0.xx, vec2<bool>(var_0.x, true), var_0.x)), true)));
    return vec2<u32>(40782u, u_input.d);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = func_3(u_input.e);
    var var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.c, u_input.a.x), vec2<i32>(u_input.c, -1i)), 29606i, _wgslsmith_f_op_f32(arg_1 + -1000f) >= -1345f, _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.wy, vec2<i32>(u_input.c, -1i)), u_input.a.zw)), Struct_1(~select(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.a.x, u_input.a.x), arg_0), _wgslsmith_mult_i32(2147483647i, u_input.a.x ^ 1i), !(!arg_2.x), vec2<i32>(u_input.c << (4764u % 32u), 42368i)), Struct_1(u_input.a.xz, 2147483647i << (min(u_input.b, 60701u) % 32u), true, -u_input.a.xz), Struct_1(-_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(u_input.c, 2147483647i)), ~(~2147483647i), arg_0, -u_input.a.zy | _wgslsmith_div_vec2_i32(u_input.a.yx, vec2<i32>(u_input.a.x, u_input.c)))), Struct_3(var_0.x, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.a, countOneBits(u_input.a)), u_input.a)), vec2<i32>(u_input.c, -(u_input.c | -u_input.c)));
    let var_2 = true;
    let var_3 = var_2;
    var var_4 = var_1.a.d.d.x;
    return Struct_1(vec2<i32>(2147483647i, var_1.c.x), abs(_wgslsmith_dot_vec3_i32(u_input.a.xzw, u_input.a.xzz >> (vec3<u32>(u_input.e, 0u, 17494u) % vec3<u32>(32u)))) ^ -firstLeadingBit(-var_1.c.x), false, var_1.a.c.a);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: i32, arg_3: vec4<i32>) -> vec2<i32> {
    let var_0 = _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -441f), 729f))));
    var var_1 = 50796i;
    let var_2 = Struct_3(u_input.d, arg_2);
    var var_3 = all(vec2<bool>(arg_0.d.c, !(!arg_0.b.c)));
    var_1 = _wgslsmith_dot_vec2_i32(arg_3.xw, ~vec2<i32>(1i, -2147483647i));
    return countOneBits(abs(_wgslsmith_mult_vec2_i32(arg_3.xw, _wgslsmith_clamp_vec2_i32(reverseBits(arg_0.b.a), ~arg_3.xw, ~vec2<i32>(arg_3.x, -8583i)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<u32>) -> vec3<i32> {
    let var_0 = Struct_1(func_4(Struct_2(Struct_1(u_input.a.ww, -29059i, true, u_input.a.zy >> (vec2<u32>(arg_1.x, 1u) % vec2<u32>(32u))), Struct_1(u_input.a.wy, u_input.a.x, any(vec3<bool>(true, true, false)), -vec2<i32>(u_input.c, -2147483647i)), func_2(false, _wgslsmith_f_op_f32(arg_0.x * arg_0.x), vec2<bool>(true, true)), func_2(true, _wgslsmith_div_f32(-1747f, arg_0.x), vec2<bool>(true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_0))) + arg_0), firstTrailingBit(u_input.c), ~(-vec4<i32>(2147483647i, u_input.a.x, 1i, u_input.c))), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(firstTrailingBit(u_input.a.x), firstLeadingBit(_wgslsmith_add_i32(u_input.a.x, u_input.c))), ~29889i, u_input.c), false || select(all(vec3<bool>(true, true, false)), false, -405f == _wgslsmith_f_op_f32(abs(arg_0.x))), _wgslsmith_add_vec2_i32(-u_input.a.xz, u_input.a.xy));
    return ~u_input.a.yzy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(~_wgslsmith_clamp_vec3_i32(reverseBits(-vec3<i32>(u_input.a.x, u_input.c, u_input.c)), u_input.a.zxw >> (_wgslsmith_div_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.e), vec3<u32>(22811u, u_input.e, 26952u)) % vec3<u32>(32u)), ~func_1(vec3<f32>(-1000f, -1433f, 782f), vec4<u32>(u_input.b, u_input.e, 1u, 1u))), ~vec3<i32>(_wgslsmith_div_i32(u_input.c, ~(-15050i)), u_input.a.x, u_input.a.x), func_2(true, 768f, vec2<bool>(~40309i >= _wgslsmith_clamp_i32(u_input.a.x, -26989i, u_input.a.x), true)).c);
    let var_1 = countOneBits(~reverseBits(select(vec4<u32>(74455u, u_input.b, 81051u, 94565u), vec4<u32>(0u, u_input.e, 4294967295u, u_input.d), vec4<bool>(true, true, false, false))) ^ ~firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(12186u, u_input.b, u_input.d, 44718u), vec4<u32>(u_input.b, u_input.e, u_input.b, u_input.e), vec4<u32>(12543u, u_input.d, 52100u, u_input.e))));
    var_0 = vec3<i32>(-27076i, 1i, func_4(Struct_2(Struct_1(u_input.a.zx, u_input.c, true, vec2<i32>(1466i, -23383i)), Struct_1(vec2<i32>(u_input.c, 4649i), var_0.x, true, var_0.zy), func_2(false, -528f, vec2<bool>(false, false)), Struct_1(var_0.zy, 0i, true, vec2<i32>(1i, var_0.x))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -606f), _wgslsmith_div_f32(596f, 529f), -646f), u_input.a.x, -(~u_input.a)).x & -1i);
    var var_2 = func_2(func_2(all(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), true)), 625f, vec2<bool>(select(all(vec3<bool>(true, false, false)), true, true), all(select(vec2<bool>(true, true), vec2<bool>(true, false), false)))).c, _wgslsmith_f_op_f32(f32(-1f) * -1011f), !vec2<bool>(true, func_2(true, _wgslsmith_f_op_f32(max(1840f, 1000f)), vec2<bool>(true, true)).c));
    let var_3 = Struct_3(28082u, ~(_wgslsmith_add_i32(var_0.x, firstLeadingBit(-2147483647i)) << (var_1.x % 32u)));
    let var_4 = Struct_4(Struct_2(func_2(func_2(var_2.c, _wgslsmith_div_f32(-1021f, 156f), !vec2<bool>(var_2.c, var_2.c)).c, -1057f, vec2<bool>(all(vec4<bool>(true, var_2.c, true, false)), !var_2.c)), func_2(true, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(select(308f, 1303f, var_2.c))), select(select(vec2<bool>(var_2.c, true), vec2<bool>(false, true), var_2.c), vec2<bool>(var_2.c, false), var_2.c)), func_2(false, 401f, !vec2<bool>(var_2.c, var_2.c)), Struct_1(func_1(vec3<f32>(1f, 1f, 1f), var_1).yz, 2147483647i, false && !var_2.c, ~vec2<i32>(var_3.b, -1i))), Struct_3(4294967295u, ~38628i), u_input.a.zy);
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(169f);
}

