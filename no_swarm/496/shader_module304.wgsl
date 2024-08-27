struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec2<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> i32 {
    return 1i;
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    var var_0 = u_input.a;
    let var_1 = Struct_3(Struct_2(select(-var_0.x, _wgslsmith_div_i32(u_input.a.x, var_0.x), all(arg_0.zzy) && !arg_0.x), Struct_1(false, !vec3<bool>(arg_0.x, false, arg_0.x)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -732f), _wgslsmith_f_op_f32(round(1288f)), _wgslsmith_f_op_f32(min(714f, 622f))))), 0u, Struct_1(any(arg_0), vec3<bool>(false, true, true))), 1i, select(vec2<bool>(!any(arg_0.wxy), true), arg_0.wz, true), Struct_2(~(-1i), Struct_1(all(!arg_0), select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(true, arg_0.x, true), false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-462f, -1841f, -268f))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 42828u, select(5406u, 19522u, true)), select(vec3<u32>(1u, 1u, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(81559u, 38598u, 65805u), vec3<u32>(1u, 14723u, 1719u)), any(vec3<bool>(arg_0.x, arg_0.x, true)))), Struct_1(true, vec3<bool>(arg_0.x, arg_0.x && arg_0.x, false))));
    var_0 = _wgslsmith_div_vec4_i32(u_input.a, u_input.b);
    var_0 = vec4<i32>(2147483647i, ~(-7156i), min(firstLeadingBit(12096i), ~(~2147483647i)), ~1i) << ((~vec4<u32>(var_1.a.d, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d.d, 50297u, 1u, 0u), vec4<u32>(var_1.a.d, 0u, 0u, 1u)), 82137u, var_1.a.d) & ~(~(~vec4<u32>(1u, 4294967295u, var_1.d.d, var_1.a.d)))) % vec4<u32>(32u));
    var_0 = vec4<i32>(firstLeadingBit(max(u_input.a.x, func_2())), _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_0.x, -49118i), var_0.x), _wgslsmith_mod_i32(~_wgslsmith_mult_i32(~(-2147483647i), min(19307i, var_0.x)), _wgslsmith_sub_i32(-23360i, _wgslsmith_mult_i32(u_input.a.x, 12670i) & -54764i)), 15027i);
    return var_0.x;
}

fn func_4(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_1(false, !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true))));
    let var_1 = Struct_2(arg_0.x, var_0, vec3<f32>(-219f, _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(sign(-451f)), select(select(var_0.b.x, var_0.b.x, var_0.b.x), select(true, false, var_0.a), var_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(668f - 413f))), ~(~max(_wgslsmith_add_u32(64774u, 5709u), abs(37490u))), Struct_1(var_0.b.x, select(vec3<bool>(var_0.a, any(vec4<bool>(false, true, false, false)), any(vec4<bool>(var_0.b.x, var_0.a, var_0.a, false))), var_0.b, vec3<bool>(false, true, true))));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -117f), var_1.c.x, var_1.c.x, var_1.c.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1046f, var_1.c.x, 409f, var_1.c.x)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, 231f, var_1.c.x, -509f) - vec4<f32>(493f, var_1.c.x, -251f, 1272f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, var_1.c.x, var_1.c.x, 348f) - vec4<f32>(var_1.c.x, 1199f, 550f, -1000f)))))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_1.c.x)), _wgslsmith_div_f32(-790f, var_1.c.x), var_1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1013f)) * vec4<f32>(_wgslsmith_f_op_f32(step(var_2.x, var_2.x)), _wgslsmith_f_op_f32(exp2(var_2.x)), _wgslsmith_f_op_f32(ceil(var_1.c.x)), _wgslsmith_f_op_f32(round(var_2.x))))));
    var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.c.x, 632f, _wgslsmith_f_op_f32(-830f - var_1.c.x), var_2.x)));
    return Struct_2(arg_0.x, Struct_1((_wgslsmith_add_u32(var_1.d, var_1.d) == select(10824u, 4294967295u, var_1.b.b.x)) & any(var_0.b.zx), var_1.e.b), var_1.c, ~(var_1.d & 1u), Struct_1(!var_1.e.b.x, !select(!var_0.b, var_0.b, all(var_0.b.yy))));
}

fn func_1() -> u32 {
    let var_0 = Struct_3(func_4(vec4<i32>(1i, -u_input.b.x, ~func_2(), abs(func_3(vec4<bool>(true, false, true, true))))), firstLeadingBit(12033i), vec2<bool>(any(vec4<bool>(true, 31453i < u_input.a.x, true, any(vec3<bool>(true, false, false)))), !(!(u_input.c.x == u_input.c.x))), Struct_2(u_input.a.x, func_4(_wgslsmith_sub_vec4_i32(u_input.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, u_input.a.x, u_input.b.x, u_input.b.x), vec4<i32>(-9175i, 0i, u_input.c.x, 1i), vec4<i32>(2147483647i, -2147483647i, u_input.c.x, -36217i)))).e, vec3<f32>(389f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1013f)), _wgslsmith_mod_u32(4294967295u, ~(~2729u)), func_4(vec4<i32>(_wgslsmith_add_i32(-1i, 2147483647i), -u_input.c.x, -1i, 0i)).b));
    var var_1 = min(~countOneBits(1u), _wgslsmith_add_u32(var_0.a.d, 0u)) ^ _wgslsmith_dot_vec4_u32(abs(vec4<u32>(reverseBits(var_0.a.d), var_0.a.d, ~var_0.d.d, ~77725u)), abs(countOneBits(vec4<u32>(4294967295u, var_0.d.d, var_0.d.d, var_0.d.d)) << (vec4<u32>(0u, var_0.d.d, 35882u, var_0.d.d) % vec4<u32>(32u))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a.c.x, 1015f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_0.a.c.x, -215f)), _wgslsmith_f_op_f32(exp2(var_0.d.c.x)))) * var_0.d.c.x) * var_0.a.c.x));
    var_1 = _wgslsmith_sub_u32(43816u, var_0.a.d);
    let var_3 = var_0.d.e.b;
    return ~select(abs(abs(1u)), min(var_0.a.d, var_0.d.d), var_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(func_1(), func_1()), ~_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(4294967295u, 1u)), select(min(vec2<u32>(66517u, 4294967295u), vec2<u32>(7304u, 4294967295u)), ~vec2<u32>(1u, 89355u), vec2<bool>(true, true))));
    var var_1 = select(!vec3<bool>(true || all(vec4<bool>(false, false, false, true)), true, all(vec4<bool>(true, true, true, true))), vec3<bool>(true, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1393f))) > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1783f - -1247f), -567f))), u_input.b.x <= firstTrailingBit(_wgslsmith_sub_i32(30057i, ~u_input.c.x)));
    var_1 = !select(vec3<bool>(all(!vec4<bool>(false, var_1.x, false, false)), true, false), !(!(!vec3<bool>(false, var_1.x, false))), var_1.x);
    var_1 = select(vec3<bool>(var_1.x, select(true, 1u != var_0.x, var_1.x), var_1.x), select(func_4((vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.c.x) ^ u_input.b) >> (vec4<u32>(var_0.x, var_0.x, var_0.x, 63258u) % vec4<u32>(32u))).b.b, !select(vec3<bool>(var_1.x, false, false), func_4(u_input.b).e.b, vec3<bool>(false, true, var_1.x)), true), !(!all(vec3<bool>(var_1.x, var_1.x, false))));
    let var_2 = u_input.b.xyx;
    var_1 = !(!(!vec3<bool>(!var_1.x, any(vec4<bool>(false, true, false, true)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(~(~abs(vec4<i32>(u_input.c.x, var_2.x, u_input.b.x, -1i)))).c);
}

