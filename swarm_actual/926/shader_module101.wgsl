struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec2<bool>, 11>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> u32 {
    var var_0 = Struct_2(select(!vec2<bool>(arg_0.a.x, !arg_0.a.x), vec2<bool>(arg_0.c.x, false), arg_0.a.x), ~(-_wgslsmith_sub_i32(~58440i, _wgslsmith_sub_i32(u_input.b.x, 0i))), vec4<bool>(all(select(select(arg_0.c, arg_0.c, arg_0.c), select(arg_0.c, arg_0.c, vec4<bool>(true, global0.x, arg_0.a.x, true)), arg_0.c.x & arg_0.a.x)), all(select(arg_0.c, arg_0.c, global0.x)), !all(select(vec4<bool>(arg_0.a.x, global0.x, false, false), vec4<bool>(false, arg_0.c.x, global0.x, true), true)), all(select(vec4<bool>(arg_0.a.x, arg_0.c.x, true, global0.x), !arg_0.c, !arg_0.c))), _wgslsmith_sub_vec3_i32(abs(u_input.b.zww), u_input.b.ywx));
    var var_1 = ~(u_input.b ^ vec4<i32>(0i, reverseBits(2147483647i) >> (arg_1 % 32u), _wgslsmith_clamp_i32(0i, var_0.b, 2147483647i) & 1353i, _wgslsmith_clamp_i32(~var_0.b, abs(arg_0.b), ~var_0.d.x)));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-210f, -1095f, global0.x)) + _wgslsmith_f_op_f32(sign(-729f)))) * 2004f), vec2<i32>(var_1.x, 2147483647i));
    let var_3 = global0.x;
    var_0 = arg_0;
    return ~firstTrailingBit(_wgslsmith_sub_u32(arg_1, ~u_input.c.x)) & _wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, 1u, arg_1), _wgslsmith_div_vec3_u32(select(vec3<u32>(arg_1, 0u, arg_1), u_input.c, global0.xxx), reverseBits(u_input.c))), 4294967295u);
}

fn func_2(arg_0: bool) -> Struct_3 {
    let var_0 = Struct_1(vec4<u32>(min(u_input.c.x, u_input.c.x), 1u, ~func_3(Struct_2(global1[_wgslsmith_index_u32(4294967295u, 11u)], 1i, vec4<bool>(arg_0, true, arg_0, arg_0), u_input.b.xzx), u_input.c.x), abs(0u)) | vec4<u32>(~1u, _wgslsmith_clamp_u32(1u, 1u, _wgslsmith_mod_u32(0u, 9125u)), reverseBits(max(89761u, 4294967295u)), reverseBits(u_input.c.x >> (u_input.c.x % 32u))), _wgslsmith_mult_vec3_i32(vec3<i32>(min(0i | u_input.a, 18444i >> (u_input.c.x % 32u)), u_input.b.x, u_input.a), vec3<i32>(0i, _wgslsmith_mod_i32(1i, _wgslsmith_div_i32(u_input.b.x, u_input.b.x)), -72744i)), ~vec3<i32>(-min(u_input.b.x, u_input.a), -2450i, u_input.b.x), false);
    var var_1 = Struct_1(_wgslsmith_div_vec4_u32(var_0.a, _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 1u, 0u, var_0.a.x), vec4<u32>(88638u, var_0.a.x, u_input.c.x, 0u)), var_0.a) & ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 45715u), var_0.a)), u_input.b.yzx, -reverseBits(firstLeadingBit(-vec3<i32>(0i, var_0.b.x, -1i))), var_0.d);
    let var_2 = ~select(var_0.a, ~abs(vec4<u32>(u_input.c.x, 14543u, var_0.a.x, 6370u)), all(vec3<bool>(var_1.d, false, var_0.d))) ^ var_1.a;
    var var_3 = Struct_3(-1000f, -(~firstLeadingBit(u_input.b.yw)) ^ (~var_0.c.yz >> (select(~u_input.c.yz, ~vec2<u32>(var_0.a.x, var_1.a.x), global0.zw) % vec2<u32>(32u))));
    let var_4 = var_0;
    return Struct_3(var_3.a, min(-firstLeadingBit(u_input.b.xy), ~min(vec2<i32>(-21616i, -1i), var_0.b.zz)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: f32) -> Struct_3 {
    var var_0 = !(!vec4<bool>(arg_2.x, false, false, true));
    var_0 = select(vec4<bool>(false, true, all(vec2<bool>(true, !arg_2.x)), var_0.x == true), select(!vec4<bool>(all(global0.wzy), var_0.x, select(global0.x, true, var_0.x), true), select(!(!vec4<bool>(global0.x, var_0.x, global0.x, arg_2.x)), select(!vec4<bool>(true, global0.x, global0.x, arg_2.x), vec4<bool>(true, true, true, true), !vec4<bool>(true, true, var_0.x, global0.x)), !(!vec4<bool>(arg_2.x, true, var_0.x, true))), select(select(!vec4<bool>(true, true, arg_2.x, arg_2.x), !vec4<bool>(var_0.x, global0.x, var_0.x, true), arg_1.x >= arg_0.b.x), select(vec4<bool>(global0.x, arg_2.x, false, true), select(vec4<bool>(true, arg_2.x, true, true), vec4<bool>(arg_2.x, arg_2.x, global0.x, true), vec4<bool>(global0.x, false, true, true)), any(var_0.wyz)), all(var_0.wxw) && false)), vec4<bool>(_wgslsmith_mod_u32(~0u, ~u_input.c.x) >= max(~u_input.c.x, ~0u), global0.x, any(select(!global0.yxx, global0.yyw, var_0.xzw)), true));
    let var_1 = Struct_2(select(select(var_0.xy, vec2<bool>(true, all(vec4<bool>(false, var_0.x, var_0.x, global0.x))), u_input.b.x != u_input.a), vec2<bool>(true, true), vec2<bool>(true, true)), (u_input.a << (_wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, u_input.c.x), 1u ^ u_input.c.x) % 32u)) << (~u_input.c.x % 32u), select(select(!vec4<bool>(global0.x, false, true, true), !(!vec4<bool>(true, global0.x, true, global0.x)), false), !vec4<bool>(!global0.x, all(vec2<bool>(false, true)), u_input.a < 2779i, true), vec4<bool>(arg_2.x, global0.x, any(vec2<bool>(global0.x, var_0.x)), !any(vec4<bool>(true, true, global0.x, false)))), u_input.b.xww);
    let var_2 = 0u;
    global0 = select(select(!(!(!vec4<bool>(arg_2.x, global0.x, true, true))), select(!vec4<bool>(true, true, var_1.a.x, false), !var_1.c, select(select(var_1.c, vec4<bool>(true, false, global0.x, var_0.x), false), vec4<bool>(global0.x, false, arg_2.x, false), vec4<bool>(true, global0.x, arg_2.x, false))), select(!var_1.c, vec4<bool>(true, any(var_1.a), true, var_1.c.x), !vec4<bool>(true, var_0.x, var_1.c.x, global0.x))), vec4<bool>(true, var_0.x, (_wgslsmith_sub_u32(1u, var_2) <= _wgslsmith_mod_u32(var_2, u_input.c.x)) != all(vec4<bool>(true, global0.x, true, arg_2.x)), false), vec4<bool>(false, !(!select(global0.x, true, var_0.x)), var_0.x, global0.x));
    return Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1304f)), 1454f))), -1152f)), ~vec2<i32>(_wgslsmith_mult_i32(arg_1.x, ~u_input.b.x), 13399i));
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(step(arg_0.a, _wgslsmith_f_op_f32(-func_2(global0.x).a)));
    var var_1 = _wgslsmith_f_op_f32(round(var_0));
    var var_2 = 4294967295u;
    global0 = !vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a))) > _wgslsmith_div_f32(func_4(arg_0, arg_0.b, global0.yx, arg_0.a).a, var_0), !(2147483647i < u_input.b.x) & global0.x, global0.x, _wgslsmith_f_op_f32(arg_0.a - arg_0.a) == arg_0.a);
    var var_3 = Struct_2(global0.wy, arg_0.b.x, select(select(vec4<bool>(any(global0.zxx), global0.x, true, global0.x), !vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(global0.x, u_input.c.x < u_input.c.x, global0.x, true)), vec4<bool>(global0.x, -u_input.b.x < _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, arg_0.b.x), true, global0.x), all(select(select(global1[_wgslsmith_index_u32(u_input.c.x, 11u)], vec2<bool>(true, false), true), select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), false), true))), _wgslsmith_mult_vec3_i32(~u_input.b.xyz, abs(firstTrailingBit(-vec3<i32>(u_input.a, -6261i, arg_0.b.x)))));
    return Struct_1(vec4<u32>(u_input.c.x, ~12584u, ~45784u, ~1u), _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(-1i << (u_input.c.x % 32u), arg_0.b.x, ~arg_0.b.x)), vec3<i32>(arg_0.b.x & (i32(-1i) * -7234i), countOneBits(var_3.d.x), u_input.b.x)), vec3<i32>(u_input.b.x, arg_0.b.x, min(firstLeadingBit(firstTrailingBit(43869i)), u_input.b.x)), !(u_input.c.x <= _wgslsmith_mod_u32(0u, u_input.c.x)));
}

fn func_1() -> Struct_1 {
    global0 = !vec4<bool>(any(global1[_wgslsmith_index_u32(41065u, 11u)]), all(!vec3<bool>(global0.x, true, global0.x)), all(vec3<bool>(global0.x, global0.x, true)), true);
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -245f);
    global0 = vec4<bool>(true != (u_input.b.x >= _wgslsmith_add_i32(u_input.b.x, 1i)), any(global1[_wgslsmith_index_u32(~(~reverseBits(1u)), 11u)]), global0.x, true);
    let var_1 = func_5(func_4(func_2(any(select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(global0.x, global0.x, false), false))), abs(firstLeadingBit(u_input.b.wz)), !(!(!vec2<bool>(false, global0.x))), var_0));
    global0 = select(!vec4<bool>(true, -var_1.c.x > -39927i, true & !global0.x, any(select(vec4<bool>(global0.x, global0.x, false, false), vec4<bool>(var_1.d, var_1.d, global0.x, false), vec4<bool>(true, global0.x, var_1.d, var_1.d)))), vec4<bool>(false, false, ~_wgslsmith_clamp_u32(var_1.a.x, 1u, u_input.c.x) >= 1u, true), vec4<bool>(global0.x, var_1.d, global0.x, all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(global0.x, var_1.d, true, false), vec4<bool>(false, global0.x, var_1.d, true), vec4<bool>(false, false, global0.x, var_1.d)), !vec4<bool>(true, var_1.d, false, global0.x)))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_1(var_0.a, vec3<i32>(~(-60473i), -16543i, min(-1i, var_0.b.x)), vec3<i32>(-1i) * -vec3<i32>(firstLeadingBit(u_input.a), 1i, ~u_input.a), false);
    var var_2 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(select(-406f, func_4(Struct_3(1428f, var_1.c.zz), vec2<i32>(var_0.c.x, 2147483647i), vec2<bool>(var_0.d, false), 1000f).a, func_5(Struct_3(-702f, var_1.c.zx)).d))), _wgslsmith_f_op_f32(f32(-1f) * -494f)), _wgslsmith_sub_vec2_i32(var_0.b.xx, (u_input.b.zz ^ (vec2<i32>(u_input.a, 38412i) << (var_1.a.yy % vec2<u32>(32u)))) & vec2<i32>(u_input.b.x, _wgslsmith_dot_vec3_i32(var_1.b, vec3<i32>(-13874i, -2147483647i, var_0.b.x)))));
    let var_3 = _wgslsmith_div_f32(121f, -223f);
    let var_4 = !vec2<bool>(all(global0.zyy), var_1.d);
    var_1 = func_5(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-var_2.a)) * -1000f), u_input.b.xx));
    let var_5 = vec4<f32>(384f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(func_5(Struct_3(1000f, vec2<i32>(var_0.c.x, -5755i))).d).a - -300f), _wgslsmith_f_op_f32(sign(-1000f)))), var_3, _wgslsmith_f_op_f32(-var_3));
    var_2 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.x + 1340f)) * var_3), var_5.x), -u_input.b.xx);
    var_2 = func_4(Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(var_2.a * -1202f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f - 197f)))), u_input.b.wz), var_1.b.xz, select(vec2<bool>(!(var_0.d && var_0.d), var_0.d), select(global1[_wgslsmith_index_u32(~1u, 11u)], !global1[_wgslsmith_index_u32(0u, 11u)], select(vec2<bool>(true, global0.x), select(vec2<bool>(true, false), vec2<bool>(true, false), global0.xy), 320f >= var_3)), !global0.zz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.a | vec4<u32>(func_5(Struct_3(var_3, vec2<i32>(u_input.a, 11318i))).a.x & var_1.a.x, var_0.a.x, _wgslsmith_add_u32(var_0.a.x, var_1.a.x), ~70606u), -592f, 32672u, func_4(func_4(Struct_3(-1052f, u_input.b.zw), ~vec2<i32>(10389i, var_0.b.x), vec2<bool>(var_0.d, var_4.x), -1245f), var_0.c.yx, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(2982u >> (var_0.a.x % 32u), var_1.a.x), 11u)], -702f).b & (var_2.b << (firstTrailingBit(var_1.a.yz) % vec2<u32>(32u))));
}

