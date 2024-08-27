struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: u32, arg_3: vec2<f32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(max(1478f, arg_3.x)))) * arg_3.x)), -2293f, 2147483647i >> (_wgslsmith_mult_u32(u_input.a, arg_2) % 32u), ~(~(~(~arg_2))), firstTrailingBit(-_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_clamp_i32(arg_0.x, arg_0.x, 75238i), arg_0.x)));
    var var_1 = Struct_1(496f, _wgslsmith_f_op_f32(f32(-1f) * -1553f), arg_0.x, abs(39034u | max(_wgslsmith_div_u32(u_input.a, var_0.d), 4294967295u)), countOneBits(arg_1.x));
    let var_2 = _wgslsmith_f_op_f32(step(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(f32(-1f) * -136f)))))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1155f) * _wgslsmith_f_op_f32(f32(-1f) * -838f)) + var_2), -1540f, arg_0.x, firstLeadingBit(_wgslsmith_div_u32(var_1.d, 9635u)), firstTrailingBit(_wgslsmith_mult_i32(var_1.e, i32(-1i) * -50317i)));
    var var_3 = ~min(countOneBits(_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(arg_0.x, -7574i, 14491i, arg_1.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(-10396i, -2147483647i, var_0.c, arg_1.x), arg_1))), ~arg_0);
    return ~u_input.a ^ 0u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>) -> f32 {
    var var_0 = _wgslsmith_clamp_u32(45736u, u_input.a, abs(~4294967295u >> (u_input.a % 32u))) & max(~reverseBits(func_3(vec4<i32>(-1226i, -2147483647i, 1332i, -55788i), vec4<i32>(arg_1.e, -13839i, arg_1.e, -1i), arg_0.d, vec2<f32>(1210f, 1676f))), ~arg_1.d);
    let var_1 = arg_1.a;
    var_0 = arg_0.d;
    let var_2 = !(!(firstTrailingBit(~u_input.a) > ~arg_1.d));
    var var_3 = -41738i & (-5267i >> ((arg_1.d << (~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0.d, 4294967295u, arg_1.d), vec4<u32>(0u, 43575u, arg_1.d, 68348u)) % 32u)) % 32u));
    return -976f;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<u32>) -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_2(Struct_1(-888f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1268f)), _wgslsmith_div_i32(-2147483647i, _wgslsmith_mod_i32(-7968i, 2147483647i)), arg_1.x, ~countOneBits(6071i)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(773f, 1481f))), _wgslsmith_f_op_f32(f32(-1f) * -468f), _wgslsmith_clamp_i32(reverseBits(-2147483647i), 1i, countOneBits(10692i)), arg_1.x ^ arg_1.x, ~1i), vec4<bool>(!all(arg_0.ywz), any(arg_0.wxy), arg_0.x, firstTrailingBit(arg_1.x) >= _wgslsmith_sub_u32(105185u, 27371u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-373f)))))), ~1i, u_input.a, _wgslsmith_clamp_i32(-23964i, -reverseBits(~(-1i)), _wgslsmith_sub_i32(max(7896i, -44856i), -1i)));
    var var_1 = !select(vec2<bool>((true || arg_0.x) || arg_0.x, var_0.a < -239f), vec2<bool>(true & select(arg_0.x, arg_0.x, arg_0.x), true), select(arg_0.wy, !vec2<bool>(false, arg_0.x), select(!vec2<bool>(true, arg_0.x), !arg_0.ww, select(arg_0.xz, vec2<bool>(true, arg_0.x), vec2<bool>(true, false)))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1276f), _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(916f + _wgslsmith_f_op_f32(var_0.a + 795f)))), max(var_0.c ^ (~2147483647i & var_0.c), _wgslsmith_div_i32(~(1i & var_0.c), abs(22803i))), arg_1.x, ~var_0.c);
    var var_3 = any(!vec4<bool>(true, true, select(all(vec3<bool>(false, false, false)), true, var_1.x), arg_0.x));
    let var_4 = select(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(~var_2.e, _wgslsmith_sub_i32(var_2.e, 1i), reverseBits(-49849i)), vec3<i32>(var_0.c >> (4294967295u % 32u), -1i, abs(1i))), _wgslsmith_sub_i32(abs(54031i), abs(~var_2.c))), -1i, true);
    return arg_1.www;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(588f * -795f) + -562f), -972f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f * -1000f), _wgslsmith_f_op_f32(1000f - -1049f), true))))));
    var var_1 = _wgslsmith_mult_vec3_u32(max(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 61338u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)) & _wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a, 1u), vec3<u32>(u_input.a, u_input.a, 0u)), vec3<u32>(_wgslsmith_div_u32(0u, u_input.a), _wgslsmith_clamp_u32(u_input.a, 17131u, 12697u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), vec4<u32>(36608u, 7801u, 61267u, 37431u)))), _wgslsmith_add_vec3_u32(select(vec3<u32>(57901u, u_input.a, 13127u) >> (vec3<u32>(1u, 1u, u_input.a) % vec3<u32>(32u)), vec3<u32>(u_input.a, 0u, u_input.a) >> (vec3<u32>(u_input.a, 15893u, 19206u) % vec3<u32>(32u)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false))), func_1(vec4<bool>(false, true, true, true), ~vec4<u32>(u_input.a, 4294967295u, u_input.a, 1u)))) << (select(vec3<u32>(min(u_input.a, 4294967295u), ~u_input.a, ~4294967295u), max(vec3<u32>(36698u, 1u, u_input.a) & ~vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(u_input.a, min(0u, 41437u), u_input.a)), vec3<bool>(true, true, _wgslsmith_f_op_f32(step(-532f, 313f)) >= _wgslsmith_f_op_f32(-1000f * var_0.x))) % vec3<u32>(32u));
    var var_2 = select(vec4<bool>(true, any(vec2<bool>(true, true)), true, any(vec3<bool>(true, true, true))), vec4<bool>(any(vec3<bool>(false, true, true)), false, true, true), (_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(exp2(var_0.x))) < _wgslsmith_f_op_f32(func_2(Struct_1(-1000f, var_0.x, 64854i, 1u, -34269i), Struct_1(var_0.x, 262f, 14561i, var_1.x, -1i), vec4<bool>(false, false, false, false)))) || true);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_mult_i32(2147483647i, -(1i >> (u_input.a % 32u))), -37623i), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(31093u, _wgslsmith_sub_u32(29036u, var_1.x)), select(var_1.yz, var_1.zx << (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u)), true)), ~func_3(vec4<i32>(1808i, -2147483647i, -18002i, -2147483647i), vec4<i32>(1i, 1i, 1i, 1i), var_1.x, vec2<f32>(var_0.x, 905f)), abs(_wgslsmith_mult_u32(24285u, var_1.x) << (countOneBits(39101u) % 32u))), var_1.x, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(Struct_1(var_0.x, var_0.x, 2147483647i, 15866u, -2147483647i), Struct_1(var_0.x, 1170f, -2147483647i, 4294967295u, 0i), vec4<bool>(false, false, true, true))))) - -1000f)));
}

