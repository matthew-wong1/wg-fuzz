struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: bool,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
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

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> bool {
    let var_0 = Struct_3(Struct_2(vec4<i32>(-firstTrailingBit(u_input.d.x), select(-u_input.d.x, max(u_input.d.x, u_input.d.x), true), 0i, 1i), u_input.d.yzy, Struct_1(-_wgslsmith_add_i32(82166i, u_input.d.x), select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), all(vec3<bool>(true, true, true))), all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false))), reverseBits(u_input.b.x >> (u_input.a % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(879f, -1615f, -596f)))))), select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true)), vec3<bool>(true, true, true), u_input.d.x <= _wgslsmith_add_i32(u_input.d.x, -34071i)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), all(vec4<bool>(false, false, true, false))), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), u_input.b);
    var var_1 = ~_wgslsmith_add_i32(-_wgslsmith_mult_i32(var_0.a.c.a ^ 66619i, -33785i & u_input.d.x), _wgslsmith_add_i32(0i, max(_wgslsmith_mult_i32(u_input.d.x, -2147483647i), var_0.a.b.x)));
    var_1 = _wgslsmith_div_i32(_wgslsmith_clamp_i32(var_0.a.a.x, u_input.d.x, var_0.a.a.x), _wgslsmith_mod_i32(1i, 3972i) & var_0.a.c.a);
    let var_2 = ~_wgslsmith_sub_i32(var_0.a.b.x, ~26649i);
    var var_3 = select(select(select(!vec4<bool>(true, true, var_0.a.c.c, var_0.a.c.c), vec4<bool>(all(var_0.b.xz), var_0.b.x, true, true || var_0.b.x), !(!vec4<bool>(var_0.a.c.c, true, var_0.a.c.b.x, var_0.b.x))), !(!select(vec4<bool>(true, true, var_0.b.x, var_0.b.x), vec4<bool>(false, var_0.b.x, var_0.a.c.b.x, true), vec4<bool>(false, var_0.a.c.b.x, false, true))), select(select(select(vec4<bool>(var_0.a.c.b.x, var_0.b.x, var_0.b.x, false), vec4<bool>(false, true, false, true), true), select(vec4<bool>(true, var_0.a.c.c, true, var_0.b.x), vec4<bool>(var_0.a.c.b.x, true, true, var_0.b.x), vec4<bool>(false, false, false, var_0.a.c.b.x)), vec4<bool>(true, var_0.a.c.b.x, true, var_0.a.c.b.x)), !vec4<bool>(var_0.b.x, true, var_0.b.x, var_0.a.c.b.x), true)), select(select(vec4<bool>(var_0.a.c.b.x || var_0.a.c.c, var_0.b.x, any(vec4<bool>(var_0.a.c.c, var_0.b.x, true, true)), true), select(!vec4<bool>(var_0.b.x, false, true, var_0.b.x), select(vec4<bool>(var_0.a.c.c, true, var_0.b.x, false), vec4<bool>(var_0.a.c.c, true, var_0.a.c.b.x, true), vec4<bool>(var_0.b.x, true, true, var_0.a.c.b.x)), any(vec3<bool>(false, true, var_0.a.c.b.x))), all(vec2<bool>(true, false)) != true), select(!(!vec4<bool>(var_0.a.c.c, false, var_0.b.x, true)), select(select(vec4<bool>(var_0.a.c.b.x, var_0.b.x, false, false), vec4<bool>(true, false, var_0.b.x, var_0.a.c.c), vec4<bool>(var_0.b.x, true, true, var_0.b.x)), select(vec4<bool>(var_0.a.c.b.x, var_0.b.x, false, var_0.a.c.c), vec4<bool>(var_0.a.c.b.x, true, false, true), vec4<bool>(false, var_0.b.x, true, true)), select(vec4<bool>(var_0.a.c.c, var_0.a.c.c, false, var_0.b.x), vec4<bool>(false, var_0.b.x, var_0.a.c.c, false), vec4<bool>(true, true, var_0.a.c.b.x, false))), vec4<bool>(u_input.d.x <= var_0.a.b.x, select(var_0.b.x, var_0.b.x, false), all(var_0.b.zy), true)), !vec4<bool>(all(vec4<bool>(true, var_0.a.c.b.x, true, false)), true, any(vec3<bool>(var_0.a.c.b.x, true, var_0.a.c.b.x)), true)), ~select(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, 1u, 1u, var_0.c.x), vec4<u32>(var_0.c.x, 140127u, 1u, 0u)), var_0.b.x) > ~44876u);
    return var_0.a.c.c;
}

fn func_2() -> vec3<u32> {
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - 304f), -1643f))))));
    let var_2 = vec4<bool>(any(vec4<bool>(all(vec4<bool>(false, true, false, true)), false, true, false)), true, all(!select(vec2<bool>(true, false), vec2<bool>(true, true), true)), true && any(vec2<bool>(all(vec2<bool>(false, true)), func_3())));
    let var_3 = ~(-_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.d.yy, vec2<i32>(25188i, u_input.d.x)), 1i));
    let var_4 = Struct_2(countOneBits(vec4<i32>(-36391i, ~u_input.d.x, abs(firstTrailingBit(var_3)), var_3)), ~(~(~u_input.d.xxw)), Struct_1(_wgslsmith_div_i32(69065i, -1i), var_2.wzx, var_2.x, reverseBits(~61981u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, var_1)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, var_1, -864f))))));
    return _wgslsmith_add_vec3_u32(firstLeadingBit(~_wgslsmith_sub_vec3_u32(u_input.c, vec3<u32>(var_4.c.d, 41095u, 4294967295u))), _wgslsmith_div_vec3_u32(~(abs(vec3<u32>(9920u, 0u, u_input.a)) | ~vec3<u32>(1u, 1u, var_0.x)), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_4.c.d, 33715u, 36119u), vec3<u32>(var_4.c.d, var_4.c.d, u_input.b.x)), countOneBits(vec3<u32>(38632u, 4721u, var_0.x))), var_0.yxw | var_0.wxy, u_input.b.wwx)));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: Struct_2, arg_3: vec2<i32>) -> f32 {
    let var_0 = Struct_1(reverseBits(max(select(_wgslsmith_mod_i32(2147483647i, 7138i), 0i, arg_3.x >= -1i), _wgslsmith_mod_i32(_wgslsmith_add_i32(arg_2.c.a, -2147483647i), 0i))), vec3<bool>(false, all(!(!arg_2.c.b)), arg_1), arg_1, ~(18118u ^ (20119u >> (~arg_2.c.d % 32u))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_2.c.e.x, -779f, true)), arg_2.c.e.x)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1245f)))), 1000f));
    let var_1 = _wgslsmith_mod_i32(0i, -(arg_2.c.a & (-arg_2.b.x | (arg_0.b.x & arg_3.x))));
    let var_2 = var_0;
    let var_3 = Struct_3(Struct_2(min(reverseBits(vec4<i32>(-2147483647i, 58069i, arg_3.x, u_input.d.x)) | abs(vec4<i32>(-2147483647i, -1i, 6279i, 13365i)), vec4<i32>(-17521i, var_2.a, ~(-2147483647i), 11208i)), select(-select(vec3<i32>(-32152i, arg_2.a.x, arg_2.b.x), arg_2.b, var_0.c), arg_2.a.zwy, vec3<bool>(any(vec4<bool>(false, false, false, true)), false, arg_2.c.c)), var_2), select(!select(!var_2.b, select(vec3<bool>(false, arg_2.c.c, true), arg_2.c.b, vec3<bool>(true, true, false)), var_0.c), vec3<bool>(all(select(var_2.b.xz, var_0.b.yy, var_0.b.xz)), false, var_2.c), _wgslsmith_sub_u32(var_0.d, 4294967295u) < 4294967295u), _wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, vec4<u32>(56282u, 4294967295u, ~var_2.d & _wgslsmith_add_u32(47246u, 0u), func_2().x)));
    let var_4 = _wgslsmith_f_op_f32(-arg_2.c.e.x) != var_0.e.x;
    return var_0.e.x;
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: vec4<bool>) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a.c.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.c.e.x) - _wgslsmith_f_op_f32(trunc(-309f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_4(func_2(), arg_1.a.a.xz, ~arg_1.c.zzz, func_2().x), any(vec2<bool>(arg_2.x, arg_2.x)), Struct_2(~vec4<i32>(u_input.d.x, arg_1.a.c.a, arg_0, -1i), u_input.d.wzz, Struct_1(2147483647i, arg_2.wyx, arg_2.x, u_input.c.x, arg_1.a.c.e)), vec2<i32>(~u_input.d.x, arg_0 | u_input.d.x)))));
    var var_1 = u_input.d.xw | vec2<i32>(~arg_1.a.c.a, i32(-1i) * -arg_0);
    var_1 = vec2<i32>(-2147483647i, 2147483647i & arg_1.a.b.x);
    return vec2<u32>(_wgslsmith_mod_u32(~(~firstLeadingBit(0u)), 26146u), _wgslsmith_dot_vec3_u32(arg_1.c.wwy, vec3<u32>(20859u, _wgslsmith_mod_u32(0u, _wgslsmith_sub_u32(u_input.b.x, u_input.c.x)), 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~((vec2<u32>(1u, u_input.a) ^ _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), u_input.b.zx)) >> (vec2<u32>(u_input.c.x, ~33084u) % vec2<u32>(32u))) << (_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(firstLeadingBit(func_1(u_input.d.x, Struct_3(Struct_2(u_input.d, u_input.d.ywx, Struct_1(u_input.d.x, vec3<bool>(true, true, false), false, u_input.b.x, vec3<f32>(109f, -1000f, 218f))), vec3<bool>(true, true, true), vec4<u32>(u_input.b.x, 34726u, 30935u, u_input.b.x)), vec4<bool>(true, true, true, true))), vec2<u32>(max(4294967295u, 4294967295u), ~29001u)), vec2<u32>(~1u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.c.x), vec3<u32>(u_input.c.x, u_input.a, u_input.a)) % 32u), ~u_input.a), vec2<u32>(4294967295u, u_input.c.x)) % vec2<u32>(32u));
    let var_1 = Struct_1(u_input.d.x, vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false))), all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), false)) || true, all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(298f - -1000f) + -1093f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-878f)))) * -538f), ~(~_wgslsmith_add_u32(u_input.b.x << (var_0.x % 32u), ~1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_4(Struct_4(vec3<u32>(72754u, 4294967295u, 70897u), vec2<i32>(2147483647i, 17489i), u_input.b.xwz, 0u), true, Struct_2(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), vec3<i32>(u_input.d.x, 13917i, u_input.d.x), Struct_1(14278i, vec3<bool>(false, false, false), false, 0u, vec3<f32>(-1088f, -467f, -111f))), vec2<i32>(u_input.d.x, 51353i))), _wgslsmith_f_op_f32(-760f - 151f), -639f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-140f, -1010f, 1032f), vec3<f32>(-1112f, -658f, -118f)) + _wgslsmith_div_vec3_f32(vec3<f32>(-1395f, 355f, -1919f), vec3<f32>(1191f, 398f, 926f))))));
    var var_2 = vec4<u32>(~u_input.c.x, ~countOneBits(~(~1u)), reverseBits(select(4294967295u, firstTrailingBit(~904u), firstLeadingBit(var_1.a) < 1i)), var_0.x >> (_wgslsmith_dot_vec3_u32(~select(vec3<u32>(4294967295u, 1u, u_input.c.x), u_input.b.zwx, vec3<bool>(var_1.b.x, var_1.c, var_1.c)), abs(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, 36107u, 1u), vec3<u32>(u_input.b.x, u_input.c.x, 1u)))) % 32u));
    var var_3 = _wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(var_2.x, min(var_0.x, ~(~1u)), _wgslsmith_div_u32(~4685u << (~4294967295u % 32u), 4294967295u), 0u));
    let var_4 = Struct_2(max(u_input.d, -(~(vec4<i32>(u_input.d.x, 7099i, 1i, 2147483647i) << (u_input.b % vec4<u32>(32u))))), vec3<i32>(-1i, -var_1.a, firstLeadingBit(0i)), var_1);
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -259f))));
    var var_6 = _wgslsmith_add_vec3_i32(select(_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.d.x, var_1.a, var_1.a) >> (~var_3.xwy % vec3<u32>(32u)), vec3<i32>(u_input.d.x, 18062i, var_1.a) & (var_4.b & vec3<i32>(var_1.a, 35801i, -1i))), ~_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, var_1.a, 1i), firstTrailingBit(vec3<i32>(u_input.d.x, -49258i, 2147483647i))), any(vec4<bool>(true, var_1.b.x, false, !var_1.c))), ~_wgslsmith_clamp_vec3_i32(u_input.d.zzw, ~_wgslsmith_add_vec3_i32(u_input.d.wxx, vec3<i32>(u_input.d.x, var_4.c.a, var_1.a)), u_input.d.zxw | countOneBits(var_4.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e.x, var_4.c.e.x, var_1.e.x, 1880f) * vec4<f32>(-1568f, -1000f, var_1.e.x, 153f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-458f, -332f, var_4.c.e.x, var_4.c.e.x) - vec4<f32>(-471f, var_4.c.e.x, var_1.e.x, 936f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(var_4.c.e.x * -1226f), _wgslsmith_f_op_f32(-var_4.c.e.x), var_4.c.e.x, _wgslsmith_f_op_f32(round(-227f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1479f, var_1.e.x, var_4.c.e.x, var_4.c.e.x), vec4<f32>(var_4.c.e.x, -972f, -292f, -140f))), !select(vec4<bool>(var_4.c.c, var_4.c.b.x, false, var_1.c), vec4<bool>(var_4.c.c, true, var_1.c, var_1.b.x), false))))), var_1.a);
}

