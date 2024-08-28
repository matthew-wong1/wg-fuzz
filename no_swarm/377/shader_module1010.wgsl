struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: bool,
    d: u32,
    e: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = !select(!vec2<bool>(arg_0.a.a.x, arg_0.a.a.x), vec2<bool>(false, arg_0.a.a.x), arg_0.c);
    var_0 = select(select(arg_0.a.a, vec2<bool>(var_0.x, all(vec2<bool>(arg_0.a.a.x, var_0.x))), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, arg_2.x, 24080u), vec3<u32>(0u, 12897u, 42523u)), u_input.c.x & arg_0.e, _wgslsmith_clamp_u32(15129u, arg_0.d, 21937u)) == 17013u), vec2<bool>(!(arg_0.c & true) || any(select(vec4<bool>(arg_0.c, false, arg_0.c, true), vec4<bool>(false, true, false, true), true)), select(_wgslsmith_f_op_f32(round(1891f)) == _wgslsmith_f_op_f32(arg_3.a - arg_3.a), !arg_0.c, !var_0.x)), arg_0.a.a);
    var_0 = !arg_0.a.a;
    let var_1 = select(vec4<bool>(any(select(vec3<bool>(false, true, arg_0.a.a.x), !vec3<bool>(false, arg_0.a.a.x, true), vec3<bool>(arg_0.a.a.x, var_0.x, var_0.x))), all(select(vec4<bool>(var_0.x, false, false, false), vec4<bool>(var_0.x, true, arg_0.c, arg_0.c), !var_0.x)), !(countOneBits(u_input.b) == 17131i), false), select(!vec4<bool>(false, arg_0.a.a.x, all(arg_0.a.a), false), vec4<bool>(!(arg_3.a <= arg_3.a), true, !arg_0.c, !(arg_0.b.x <= 2147483647i)), vec4<bool>(true, arg_0.a.a.x, arg_3.a == _wgslsmith_f_op_f32(abs(-228f)), var_0.x)), arg_0.a.a.x);
    var_0 = arg_0.a.a;
    return vec2<bool>(var_1.x, countOneBits(arg_0.e) < min(select(~1u, arg_2.x, all(vec3<bool>(arg_0.c, var_1.x, var_1.x))), u_input.d));
}

fn func_2() -> i32 {
    var var_0 = Struct_4(vec4<i32>(select(u_input.e, u_input.b, false), ~(-2147483647i), u_input.b, abs(17796i)), _wgslsmith_mod_u32(_wgslsmith_add_u32(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(14406u, 4294967295u, 4294967295u), u_input.c.wxw)), ~12786u >> (_wgslsmith_mod_u32(4294967295u, u_input.a) % 32u)), 4294967295u), u_input.c.x);
    let var_1 = Struct_2(select(vec2<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false)), all(vec3<bool>(false, true, false))), vec2<bool>(true, true), vec2<bool>(false, _wgslsmith_div_u32(0u, var_0.c) <= 4294967295u)));
    var var_2 = Struct_5(func_3(Struct_3(Struct_2(select(var_1.a, var_1.a, var_1.a.x)), select(select(var_0.a.yz, vec2<i32>(-24800i, 2147483647i), false), vec2<i32>(u_input.e, var_0.a.x), var_1.a), var_0.a.x >= -var_0.a.x, u_input.d, _wgslsmith_add_u32(var_0.c, _wgslsmith_div_u32(19332u, 8908u))), -_wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_0.a.x, 20116i), -1i, abs(var_0.a.x)), vec4<u32>(0u, 60828u, _wgslsmith_sub_u32(1u, 48526u << (u_input.a % 32u)), 20988u), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1243f)))))), 4294967295u, -769f, _wgslsmith_add_vec3_i32(min(~(vec3<i32>(-2147483647i, 12529i, 0i) | vec3<i32>(u_input.e, 49957i, -54399i)), vec3<i32>(u_input.e, ~0i, 2147483647i)), var_0.a.wzw), var_1);
    var var_3 = ~firstTrailingBit(vec4<i32>(reverseBits(-25970i), -13007i, var_0.a.x ^ var_2.d.x, var_2.d.x)) >> (vec4<u32>(47691u, ~0u, u_input.d << (countOneBits(abs(var_0.c)) % 32u), ~54385u) % vec4<u32>(32u));
    var_2 = Struct_5(select(!func_3(Struct_3(var_1, var_2.d.zx, false, 45148u, u_input.d), _wgslsmith_sub_i32(var_3.x, 2147483647i), u_input.c, Struct_1(-210f)), var_2.a, var_1.a), _wgslsmith_mod_u32(var_0.b, 4294967295u), 108f, min(var_3.wxz, vec3<i32>(_wgslsmith_div_i32(-68664i, var_0.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, u_input.e, 58340i), var_2.d), var_2.d.x)) >> (vec3<u32>(var_0.b, ~abs(45382u), select(1u, 1u, var_2.b > var_2.b)) % vec3<u32>(32u)), Struct_2(vec2<bool>(!func_3(Struct_3(var_1, var_0.a.zx, var_2.e.a.x, u_input.a, 4294967295u), u_input.e, vec4<u32>(23206u, 0u, 92937u, 5123u), Struct_1(var_2.c)).x, var_2.a.x)));
    return reverseBits(firstTrailingBit(-11956i));
}

fn func_1() -> vec2<u32> {
    var var_0 = _wgslsmith_div_vec4_i32(reverseBits(select(-abs(vec4<i32>(-1153i, u_input.b, u_input.e, -1i)), vec4<i32>(~(-75033i), -1411i, 46855i, 1i), vec4<bool>(true, true, true, true))), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(~u_input.b, u_input.e, -2147483647i, abs(u_input.b)), vec4<i32>(u_input.b, -9442i, 0i, u_input.b) >> (u_input.c % vec4<u32>(32u))), vec4<i32>(-func_2(), 15733i, ~u_input.e | reverseBits(69036i), _wgslsmith_div_i32(~u_input.b, func_2()))));
    var var_1 = Struct_5(vec2<bool>(true, true), 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1800f * -2070f))) - 281f)), var_0.zyz, Struct_2(vec2<bool>(true, !any(vec2<bool>(false, true)))));
    return _wgslsmith_sub_vec2_u32(vec2<u32>(~min(u_input.c.x, 1u), 0u) << (~(~select(u_input.c.xz, vec2<u32>(var_1.b, u_input.c.x), var_1.e.a)) % vec2<u32>(32u)), min(_wgslsmith_add_vec2_u32(reverseBits(u_input.c.xz), vec2<u32>(var_1.b, 1u)), vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), reverseBits(var_1.b) ^ 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    let var_1 = vec4<i32>(reverseBits(~u_input.e), min(u_input.b, _wgslsmith_dot_vec2_i32(~(vec2<i32>(u_input.b, u_input.e) >> (u_input.c.yy % vec2<u32>(32u))), vec2<i32>(~6731i, u_input.b))), -30196i, 2147483647i);
    var var_2 = Struct_1(985f);
    let var_3 = max(func_1() >> (vec2<u32>(u_input.c.x, ~_wgslsmith_sub_u32(u_input.c.x, 57981u)) % vec2<u32>(32u)), u_input.c.xx);
    var var_4 = 2147483647i ^ (min(34373i, var_1.x) >> (u_input.d % 32u));
    var_0 = min(u_input.c & firstTrailingBit(u_input.c), min(max(u_input.c, abs(_wgslsmith_div_vec4_u32(u_input.c, u_input.c))), ~(~vec4<u32>(var_0.x, var_0.x, var_0.x, var_3.x))));
    var_4 = var_1.x;
    var_4 = func_2() >> ((142658u << (1u % 32u)) % 32u);
    var_4 = _wgslsmith_sub_i32(-u_input.b, u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.c | vec4<u32>(1u, var_3.x, 1u, u_input.a), vec4<u32>(var_3.x, var_0.x, u_input.c.x, var_3.x)), max(~vec4<u32>(var_0.x, 4294967295u, 0u, var_3.x), vec4<u32>(u_input.a, 4294967295u, 0u, 40281u))), vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.x, 4294967295u), _wgslsmith_div_vec3_u32(u_input.c.xwz, vec3<u32>(var_0.x, var_3.x, var_0.x))), _wgslsmith_mod_u32(var_3.x, var_0.x), ~16125u), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, false, true)), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false)), select(true, true, false)), vec4<bool>(true, true, true, true))));
}

