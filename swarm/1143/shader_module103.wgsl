struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: bool,
    d: i32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: bool) -> vec4<i32> {
    let var_0 = ~_wgslsmith_sub_vec4_u32(select(vec4<u32>(1u, u_input.b.x, arg_1.x, arg_1.x), vec4<u32>(arg_1.x, 4294967295u, arg_1.x, 0u), select(vec4<bool>(arg_2, arg_0.x, false, true), vec4<bool>(true, arg_0.x, false, false), true)) & abs(vec4<u32>(34455u, arg_1.x, 58471u, u_input.b.x)), select(arg_1, (vec4<u32>(1u, arg_1.x, arg_1.x, 792u) << (arg_1 % vec4<u32>(32u))) & countOneBits(vec4<u32>(34290u, 4294967295u, 0u, 4294967295u)), true));
    let var_1 = Struct_1(var_0, select(-countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -2147483647i, u_input.a.x, -1i), vec4<i32>(-19974i, u_input.e, u_input.a.x, 58665i))), _wgslsmith_mod_vec4_i32(vec4<i32>(abs(6095i), ~2147483647i, -1637i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.e, u_input.c.x, -2147483647i), vec4<i32>(2147483647i, u_input.e, -2147483647i, u_input.e))), select(vec4<i32>(-28323i, -2147483647i, u_input.d, u_input.c.x) | vec4<i32>(-2147483647i, -1i, -11345i, 2147483647i), vec4<i32>(u_input.c.x, u_input.e, -2147483647i, 0i), !arg_2)), vec4<bool>(0u >= ~u_input.b.x, any(select(vec4<bool>(arg_2, arg_2, false, true), vec4<bool>(false, arg_2, arg_2, true), true)), arg_2, true)), select(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.x, var_0.x, 1u), vec3<u32>(var_0.x, 1u, 91817u)), ~var_0.x, arg_0.x) <= 1u, firstLeadingBit(firstLeadingBit(0i)), vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1u, var_0.x), vec4<u32>(44867u, u_input.b.x, 55033u, u_input.b.x)), _wgslsmith_mod_vec4_u32(arg_1, var_0)), arg_1), ~arg_1.x, ~var_0.x));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-499f)), _wgslsmith_div_f32(-443f, -780f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(101f)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -889f), _wgslsmith_f_op_f32(-488f - 444f))), 1579f)));
    let var_3 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(max(0u, 4294967295u), 4294967295u) << (firstLeadingBit(vec2<u32>(4294967295u, select(14491u, 4294967295u, arg_2))) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.x, 4294967295u), ~vec2<u32>(arg_1.x, arg_1.x)) << (reverseBits(vec2<u32>(arg_1.x, u_input.b.x)) % vec2<u32>(32u)), arg_1.yz), vec2<u32>(select(0u, 1u, var_1.c), select(_wgslsmith_clamp_u32(0u, u_input.b.x, 1u), ~58623u, false) >> (arg_1.x % 32u)));
    let var_4 = Struct_1(vec4<u32>(43613u, ~_wgslsmith_add_u32(~arg_1.x, var_0.x), u_input.b.x, 4294967295u >> (u_input.b.x % 32u)), max(vec4<i32>(var_1.d, 12776i, 22146i, u_input.c.x) >> (firstLeadingBit(arg_1) % vec4<u32>(32u)), abs(vec4<i32>(-30131i, u_input.a.x, var_1.b.x, var_1.d))) ^ vec4<i32>(21858i, 15922i, -_wgslsmith_mod_i32(var_1.b.x, 0i), ~abs(-2096i)), !(_wgslsmith_dot_vec2_i32(var_1.b.zx, abs(vec2<i32>(u_input.e, var_1.d))) <= abs(_wgslsmith_add_i32(var_1.d, 4282i))), u_input.e, ~vec3<u32>(17356u, var_0.x, ~(~var_1.a.x)));
    return min(abs(max(var_4.b, countOneBits(var_1.b))), -vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(65534i, 0i), var_4.b.ww) >> (~var_0.x % 32u), var_1.d, -2147483647i, _wgslsmith_div_i32(21869i, 25055i << (u_input.b.x % 32u))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(arg_0.a, (arg_0.b << (vec4<u32>(u_input.b.x, max(u_input.b.x, 0u), _wgslsmith_add_u32(4294967295u, arg_0.a.x), _wgslsmith_div_u32(arg_0.a.x, arg_0.e.x)) % vec4<u32>(32u))) & select(func_3(vec2<bool>(true, arg_0.c), ~arg_0.a, !arg_0.c), vec4<i32>(arg_0.b.x, 0i, 1i, u_input.a.x) >> (arg_0.a % vec4<u32>(32u)), arg_0.c), 2147483647i > arg_0.d, 7832i, _wgslsmith_div_vec3_u32(~arg_0.a.yzy, vec3<u32>(_wgslsmith_div_u32(u_input.b.x, ~20285u), u_input.b.x, ~(~17040u))));
    let var_1 = 1u;
    let var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(72893u, (4294967295u | var_0.a.x) << ((3582u << (u_input.b.x % 32u)) % 32u)), vec2<u32>(firstTrailingBit(u_input.b.x) ^ _wgslsmith_dot_vec2_u32(arg_0.a.wy, vec2<u32>(arg_0.a.x, var_1)), reverseBits(4294967295u))) | _wgslsmith_mult_vec2_u32(select(var_0.e.yx, min(vec2<u32>(1u, 33476u), vec2<u32>(66616u, u_input.b.x)) >> (vec2<u32>(arg_0.e.x, var_0.e.x) % vec2<u32>(32u)), any(vec2<bool>(true, true))), vec2<u32>(arg_0.e.x, 1u ^ var_0.a.x) & ~var_0.a.xz);
    var var_3 = ~(~(~vec2<i32>(u_input.d, ~var_0.b.x)));
    var_3 = firstTrailingBit(vec2<i32>(-60354i, _wgslsmith_dot_vec3_i32(-var_0.b.wxy << (~vec3<u32>(4294967295u, 75462u, u_input.b.x) % vec3<u32>(32u)), firstLeadingBit(abs(u_input.c)))));
    return Struct_1(reverseBits(vec4<u32>(~(var_0.a.x & 7426u), firstLeadingBit(~arg_0.a.x), _wgslsmith_mod_u32(arg_0.e.x >> (52616u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, u_input.b.x, 0u), vec3<u32>(8138u, u_input.b.x, u_input.b.x))), var_0.a.x)), func_3(!vec2<bool>(false, any(vec3<bool>(arg_0.c, true, false))), vec4<u32>(u_input.b.x, ~var_1, var_0.a.x, max(0u, var_1)) | ~arg_0.a, all(select(select(vec4<bool>(arg_0.c, var_0.c, var_0.c, false), vec4<bool>(true, var_0.c, var_0.c, var_0.c), false), vec4<bool>(arg_0.c, var_0.c, arg_0.c, true), vec4<bool>(false, arg_0.c, true, true)))), !(!(!all(vec2<bool>(arg_0.c, arg_0.c)))), _wgslsmith_mod_i32(_wgslsmith_div_i32(1i & arg_0.b.x, -2147483647i), arg_0.d), ~arg_0.e);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>) -> vec3<bool> {
    var var_0 = arg_1;
    var_0 = false;
    let var_1 = func_2(Struct_1(abs(~arg_0.a), arg_0.b, true & !(!arg_0.c), arg_2.x, vec3<u32>(1u, ~4294967295u, max(firstLeadingBit(arg_0.a.x), ~73386u))));
    var_0 = true;
    let var_2 = vec4<bool>(false, arg_0.c, var_1.c, (var_1.e.x >= _wgslsmith_mod_u32(var_1.a.x, _wgslsmith_sub_u32(1u, var_1.e.x))) && (max(_wgslsmith_dot_vec3_i32(var_1.b.zwz, var_1.b.wyx), countOneBits(61159i)) <= arg_2.x));
    return var_2.yww;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(select(vec3<bool>(true, true, true), func_1(Struct_1(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x), vec4<i32>(u_input.c.x, -7104i, 2147483647i, 47370i), true, 49608i, vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)), false, vec3<i32>(u_input.d, u_input.d, 47665i)), all(vec3<bool>(true, false, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), func_1(Struct_1(vec4<u32>(u_input.b.x, 1u, u_input.b.x, 0u), vec4<i32>(-19216i, -9591i, -30075i, u_input.d), false, u_input.d, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), true, u_input.c)), true), func_1(func_2(Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.e, 11648i, u_input.d, u_input.d), false, 29632i, vec3<u32>(u_input.b.x, u_input.b.x, 224u))), true, ~vec3<i32>(u_input.c.x, 9453i, u_input.d)), select(false, true, true)), !func_1(func_2(func_2(Struct_1(vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x), vec4<i32>(u_input.a.x, -47162i, -4618i, -1i), true, 2147483647i, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)))), true, -vec3<i32>(u_input.e, u_input.a.x, 36468i) >> (_wgslsmith_div_vec3_u32(vec3<u32>(0u, 37094u, u_input.b.x), vec3<u32>(u_input.b.x, 1u, 17110u)) % vec3<u32>(32u))), vec3<bool>(true, true, true));
    let var_1 = func_2(func_2(Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 48050u, u_input.b.x, u_input.b.x), vec4<u32>(8391u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), vec4<i32>(1i, -u_input.a.x, u_input.d, 1i), true, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -34247i), func_3(vec2<bool>(var_0.x, var_0.x), vec4<u32>(82264u, u_input.b.x, 115608u, u_input.b.x), var_0.x).wx), ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) | vec3<u32>(4294967295u, 4294967295u, u_input.b.x))));
    var var_2 = u_input.b.x;
    var_2 = select(var_1.a.x << (0u % 32u), 1u, !func_2(Struct_1(vec4<u32>(29887u, var_1.e.x, 33080u, 1u), reverseBits(vec4<i32>(var_1.b.x, 0i, 57329i, var_1.b.x)), var_1.c, 15575i, ~var_1.e)).c);
    var_0 = !func_1(Struct_1(var_1.a, func_2(var_1).b, var_1.c, _wgslsmith_mod_i32(2147483647i, var_1.b.x), vec3<u32>(select(1u, 4294967295u, false), u_input.b.x >> (0u % 32u), u_input.b.x)), true, u_input.c);
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(149f * 422f) + _wgslsmith_f_op_f32(f32(-1f) * -1743f)), -380f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-589f, -144f) * _wgslsmith_f_op_f32(f32(-1f) * -892f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(324f, -1736f, 762f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(196f, -410f, _wgslsmith_f_op_f32(f32(-1f) * -1623f))), vec3<bool>(select((true | var_0.x) && true, true, false), any(vec2<bool>(var_0.x, var_1.e.x == var_1.a.x)), !(!(!var_1.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.e.x, _wgslsmith_mod_i32(countOneBits(abs(u_input.e)), -(abs(var_1.b.x) | 0i)), u_input.c, _wgslsmith_mod_i32(var_1.d, u_input.e | (23205i << (_wgslsmith_dot_vec3_u32(var_1.e, var_1.e) % 32u))));
}

