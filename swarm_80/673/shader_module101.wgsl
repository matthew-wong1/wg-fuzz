struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(-68836i, -18524i, -1i, -27288i, i32(-2147483648), 2147483647i, 1i, -1i);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> vec3<f32> {
    let var_0 = Struct_1(firstLeadingBit(~vec4<i32>(_wgslsmith_mod_i32(u_input.d, u_input.e), _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(30803u, 8u)], arg_1.a.x), arg_1.a), 1i, global0[_wgslsmith_index_u32(1u, 8u)])), _wgslsmith_add_vec2_u32(u_input.c.xz, vec2<u32>(min(1u, ~u_input.c.x), u_input.c.x)), u_input.c.x, vec4<bool>(all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), true)), true, all(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), true), -1839f);
    var var_1 = _wgslsmith_f_op_f32(abs(arg_0));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(var_0.e + -411f)))) + _wgslsmith_div_f32(-3022f, -280f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-779f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1420f)), -318f)))) - -115f), _wgslsmith_f_op_f32(var_0.e * 743f));
}

fn func_2() -> Struct_1 {
    let var_0 = -(~((~vec2<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], global0[_wgslsmith_index_u32(u_input.c.x, 8u)]) | reverseBits(vec2<i32>(u_input.d, -1i))) & _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], u_input.b), vec2<i32>(-52096i, -26596i)), vec2<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], u_input.a))));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(584f, Struct_2(var_0, var_0)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), vec3<f32>(1001f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -608f) + 418f), _wgslsmith_f_op_f32(-608f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f + 1550f))))), vec3<bool>(any(vec4<bool>(true, true, true, true)), _wgslsmith_div_i32(var_0.x, _wgslsmith_clamp_i32(1i, global0[_wgslsmith_index_u32(24061u, 8u)], u_input.b)) >= u_input.a, false)));
    global0 = array<i32, 8>();
    var var_2 = Struct_1(vec4<i32>(reverseBits(min(max(-1i, var_0.x), ~var_0.x)), var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(0u, 8u)], firstLeadingBit(global0[_wgslsmith_index_u32(1u, 8u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(28165u, u_input.c.x, 0u), vec3<u32>(59980u, 1u, 138976u)), 8u)], global0[_wgslsmith_index_u32(u_input.c.x, 8u)] >> (u_input.c.x % 32u)), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 1i, var_0.x, u_input.b), vec4<i32>(var_0.x, var_0.x, -23975i, u_input.b)))), -(~1i | _wgslsmith_mult_i32(-41112i, var_0.x))), u_input.c.yy, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.c.x, u_input.c.x), _wgslsmith_mod_u32(u_input.c.x, u_input.c.x)), ~_wgslsmith_clamp_u32(4294967295u, u_input.c.x, u_input.c.x), ~abs(u_input.c.x)), ~abs(~vec4<u32>(u_input.c.x, 58077u, 4294967295u, u_input.c.x))), select(vec4<bool>(true, any(vec2<bool>(true, true)), false, select(u_input.c.x, u_input.c.x, true) > min(u_input.c.x, u_input.c.x)), !vec4<bool>(any(vec4<bool>(true, true, true, false)), all(vec2<bool>(false, false)), true, true), !vec4<bool>(all(vec2<bool>(false, false)), true, true, all(vec2<bool>(false, true)))), _wgslsmith_f_op_f32(-var_1.x));
    var var_3 = Struct_1(vec4<i32>(var_2.a.x, var_2.a.x, (abs(global0[_wgslsmith_index_u32(4294967295u, 8u)]) | ~1i) >> (~abs(u_input.c.x) % 32u), abs(var_0.x)), firstLeadingBit(u_input.c.zw) | u_input.c.zz, ~select(~u_input.c.x, 14850u, var_2.d.x), !select(!(!vec4<bool>(false, var_2.d.x, false, var_2.d.x)), !vec4<bool>(false, var_2.d.x, false, var_2.d.x), true), var_2.e);
    return Struct_1(select(-_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, u_input.e, -2147483647i, 22330i), countOneBits(vec4<i32>(28761i, 12637i, var_3.a.x, 12455i))), ~(-vec4<i32>(1i, var_2.a.x, var_2.a.x, 21136i)), var_3.d), ~u_input.c.wy, u_input.c.x, select(var_3.d, vec4<bool>(true, any(var_2.d.xzy) && var_2.d.x, !(!var_3.d.x), true), !(abs(var_3.c) >= u_input.c.x)), _wgslsmith_f_op_f32(min(1724f, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(trunc(var_1.x)), Struct_2(var_0, vec2<i32>(var_3.a.x, var_0.x)))).x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-666f)), var_1.x)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32) -> i32 {
    global0 = array<i32, 8>();
    var var_0 = arg_1.b.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0))))) * _wgslsmith_f_op_vec2_f32(-arg_0));
    return ~(0i << (_wgslsmith_div_u32(abs(16457u >> (arg_2 % 32u)), ~(~u_input.c.x)) % 32u));
}

fn func_1(arg_0: i32) -> vec4<bool> {
    let var_0 = -1259f;
    global0 = array<i32, 8>();
    global0 = array<i32, 8>();
    let var_1 = 701f;
    var var_2 = Struct_2(vec2<i32>(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) + vec2<f32>(var_0, var_0)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1, var_0)))), func_2(), 4294967295u), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, max(133863u, 1u)) << ((~76858u << (0u % 32u)) % 32u), 8u)]), ~((func_2().a.zw >> ((vec2<u32>(4294967295u, u_input.c.x) >> (vec2<u32>(32509u, u_input.c.x) % vec2<u32>(32u))) % vec2<u32>(32u))) >> (vec2<u32>(1u << (u_input.c.x % 32u), u_input.c.x) % vec2<u32>(32u))));
    return vec4<bool>(any(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), any(!select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)))), _wgslsmith_dot_vec4_u32(u_input.c, u_input.c) > ~(~u_input.c.x), all(func_2().d.zzw));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 8>();
    let var_0 = Struct_1(reverseBits(_wgslsmith_mult_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(46378u, 8u)], 47719i, 534i, 37272i), select(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(u_input.c.x, 8u)], 0i, 7472i), vec4<i32>(-28019i, 60930i, global0[_wgslsmith_index_u32(u_input.c.x, 8u)], 2147483647i), vec4<bool>(true, true, true, true))) << (u_input.c % vec4<u32>(32u))), reverseBits(u_input.c.xz) ^ _wgslsmith_add_vec2_u32(~u_input.c.xx, u_input.c.yy), u_input.c.x, !func_1(~(-u_input.e)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(126f)))));
    global0 = array<i32, 8>();
    global0 = array<i32, 8>();
    let var_1 = Struct_2(vec2<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], -(~48297i)), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-var_0.a.x, _wgslsmith_add_i32(-2147483647i, u_input.b)), ~vec2<i32>(var_0.a.x, 9602i)), _wgslsmith_mod_vec2_i32(select(vec2<i32>(-2147483647i, -1i), var_0.a.ww & var_0.a.xy, true), var_0.a.yw)));
    let var_2 = var_1;
    let var_3 = func_2();
    global0 = array<i32, 8>();
    var var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1439f * -748f)), 1i, firstTrailingBit(u_input.c.xxw));
}

