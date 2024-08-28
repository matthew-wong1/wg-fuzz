struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1682f * 454f), -313f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1641f) + _wgslsmith_f_op_f32(min(1427f, 294f)))))), _wgslsmith_div_i32(-(_wgslsmith_div_i32(-2147483647i, u_input.b.x) << (2921u % 32u)), u_input.d), -u_input.c.zz, vec2<bool>(true, true), -_wgslsmith_clamp_vec2_i32(u_input.e.xz, ~(~vec2<i32>(u_input.e.x, u_input.c.x)), -(u_input.e.xy | vec2<i32>(11278i, u_input.e.x))));
    let var_1 = vec4<bool>(var_0.d.x, abs(u_input.a) > u_input.a, any(vec3<bool>(var_0.d.x, var_0.d.x, !var_0.d.x)) | false, var_0.d.x);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-112f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_0.a))))))), _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-370f))));
    var var_3 = Struct_2(any(vec2<bool>(var_1.x, all(vec2<bool>(true, true)))), Struct_1(var_2.x, _wgslsmith_mult_i32(-2147483647i, -_wgslsmith_sub_i32(var_0.e.x, 1i)), u_input.b.ww, var_0.d, var_0.e), var_1, _wgslsmith_mult_u32(~(~(~u_input.a)), (~17331u & u_input.a) << ((_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 4294967295u, u_input.a), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)) ^ ~0u) % 32u)), ~u_input.a);
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -136f, 879f) * vec3<f32>(-1099f, var_3.b.a, var_2.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 593f, var_3.b.a) + vec3<f32>(-641f, 834f, 295f)))))));
    return select(select(select(select(var_3.c.xww, var_3.c.xww, false), vec3<bool>(false, !var_3.b.d.x, var_3.b.d.x | var_0.d.x), abs(var_3.e) < firstTrailingBit(2012u)), !select(vec3<bool>(false, false, false), var_1.ywz, vec3<bool>(var_1.x, var_0.d.x, var_1.x)), select(var_1.yzx, var_3.c.yyw, vec3<bool>(var_1.x, true, all(var_1)))), select(!(!(!vec3<bool>(var_0.d.x, false, var_0.d.x))), select(vec3<bool>(true, any(vec4<bool>(var_1.x, var_1.x, false, false)), var_3.d < var_3.e), var_1.xzw, true), !var_3.c.zww), !var_0.d.x);
}

fn func_2(arg_0: vec4<u32>) -> Struct_2 {
    let var_0 = vec4<bool>(any(func_3()), true, all(!vec4<bool>(true, all(vec2<bool>(true, true)), any(vec2<bool>(false, true)), true)), any(vec3<bool>(true, false & all(vec4<bool>(false, false, false, false)), select(false, false, any(vec4<bool>(false, true, true, false))))));
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(652f, -1523f, var_0.x)), -407f, _wgslsmith_f_op_f32(step(-136f, 2468f)), -858f)))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -670f), 642f, _wgslsmith_f_op_f32(1396f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1506f)))), -189f));
    var var_3 = vec4<u32>(_wgslsmith_mult_u32(~u_input.a, arg_0.x) | _wgslsmith_dot_vec2_u32(arg_0.wx, vec2<u32>(1u, 31326u) & ~vec2<u32>(arg_0.x, 69550u)), arg_0.x, 73568u, arg_0.x);
    var var_4 = Struct_2(all(!select(vec2<bool>(false, false), var_0.yw, var_0.xx)) & !(!var_0.x), Struct_1(301f, 62482i, -(~vec2<i32>(2147483647i, 0i)) | abs(~u_input.c.yy), select(vec2<bool>(true, true), func_3().xy, var_0.x), -vec2<i32>(i32(-1i) * -2147483647i, 2147483647i)), var_0, ~u_input.a, var_3.x);
    return Struct_2(var_4.b.d.x, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)) - _wgslsmith_f_op_f32(round(var_4.b.a))), -(~select(u_input.b.x, 41311i, var_0.x)), vec2<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(2147483647i, 2147483647i)), vec2<i32>(-8357i, u_input.b.x)), ~var_4.b.b), !vec2<bool>(select(var_0.x, var_4.a, var_4.c.x), true), firstTrailingBit(abs(countOneBits(vec2<i32>(2147483647i, var_4.b.b))))), var_0, 0u, 0u);
}

fn func_1() -> Struct_2 {
    var var_0 = func_2(~vec4<u32>(min(1212u, u_input.a >> (123692u % 32u)), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 0u)) ^ u_input.a, ~(~1u)));
    var_0 = func_2(countOneBits(reverseBits(vec4<u32>(var_0.e, ~var_0.e, _wgslsmith_mod_u32(0u, var_0.d), u_input.a))));
    let var_1 = reverseBits(min(countOneBits(vec3<u32>(16856u, u_input.a, u_input.a) << (vec3<u32>(var_0.e, var_0.d, u_input.a) % vec3<u32>(32u))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_0.e, 5081u), vec3<u32>(var_0.d, u_input.a, u_input.a)))) << (~(~(~vec3<u32>(u_input.a, 69421u, 17033u) | ~vec3<u32>(var_0.d, var_0.d, 0u))) % vec3<u32>(32u));
    var_0 = Struct_2(true, Struct_1(_wgslsmith_f_op_f32(var_0.b.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.a + 550f))), (max(40579i, var_0.b.c.x) >> (1u % 32u)) >> (_wgslsmith_mult_u32(u_input.a >> (var_1.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.d, var_1.x, var_0.d), var_1)) % 32u), -vec2<i32>(_wgslsmith_mult_i32(var_0.b.c.x, 2147483647i), _wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(-1i, 47430i, u_input.c.x))), var_0.c.wy, u_input.b.yz), select(func_2(_wgslsmith_mult_vec4_u32(~vec4<u32>(70783u, var_0.d, u_input.a, 11391u), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_1.x, 4294967295u, 0u), vec4<u32>(1u, var_1.x, 32195u, var_1.x)))).c, vec4<bool>(true, true, true, any(!var_0.c.xzw)), any(var_0.b.d)), reverseBits(40136u), ~var_1.x);
    var var_2 = func_2(max(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, var_1.x, 0u, var_1.x), vec4<u32>(0u, 98917u, var_1.x, 7403u) ^ vec4<u32>(0u, 15619u, var_1.x, 4294967295u)), min(firstLeadingBit(vec4<u32>(4294967295u, u_input.a, 9463u, u_input.a)), ~vec4<u32>(13340u, var_1.x, 22924u, var_0.e))) | vec4<u32>(~1u, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.e, var_1.x, 117323u), ~var_1), ~_wgslsmith_sub_u32(var_1.x, var_0.d), 0u));
    return func_2(firstLeadingBit(_wgslsmith_add_vec4_u32(max(max(vec4<u32>(4294967295u, 1u, 54308u, 19306u), vec4<u32>(37753u, var_0.e, 1u, var_0.d)), min(vec4<u32>(0u, u_input.a, var_2.d, 60803u), vec4<u32>(var_2.d, var_1.x, var_1.x, 48955u))), countOneBits(vec4<u32>(0u, 40749u, var_0.d, var_0.d) >> (vec4<u32>(301u, 39281u, 15598u, u_input.a) % vec4<u32>(32u))))));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = arg_0;
    var_0 = Struct_2(func_1().b.b < u_input.b.x, func_1().b, var_0.c, var_0.e, u_input.a);
    var_0 = arg_0;
    var_0 = arg_0;
    return arg_0.b;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec3<u32>, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = -11724i;
    let var_1 = firstTrailingBit(~_wgslsmith_mult_vec3_u32(~arg_2, ~arg_2 | vec3<u32>(8423u, 0u, 19525u)));
    let var_2 = reverseBits(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_1.x, 4294967295u, arg_2.x, arg_2.x)), vec4<u32>(u_input.a | 0u, select(arg_2.x, 43211u, arg_0.d.x), countOneBits(7793u), arg_2.x >> (1u % 32u)))) | select(firstTrailingBit(firstLeadingBit(vec4<u32>(127436u, arg_2.x, 0u, arg_2.x))), select(select(abs(vec4<u32>(40741u, 36293u, 0u, u_input.a)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, var_1.x, arg_2.x, arg_2.x), vec4<u32>(var_1.x, 4294967295u, u_input.a, 1u)), true), ~select(vec4<u32>(arg_2.x, 9314u, u_input.a, 22584u), vec4<u32>(4294967295u, 28811u, arg_2.x, arg_2.x), true), !vec4<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x, true)), !func_1().c);
    let var_3 = select(func_1().c.yzw, func_1().c.ywy, true);
    let var_4 = false;
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a + arg_0.a), _wgslsmith_f_op_f32(floor(-476f))) + _wgslsmith_f_op_f32(exp2(func_1().b.a))), _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-388f)), arg_0.a, true)))), func_4(func_1()).b, _wgslsmith_mult_vec2_i32(u_input.e.xy, vec2<i32>(firstTrailingBit(u_input.e.x), arg_1)), vec2<bool>(true | arg_0.d.x, false), ~(~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.e.x, u_input.b.x), arg_0.e, vec2<i32>(0i, arg_1))) << (reverseBits(~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.x, 26128u), vec2<u32>(u_input.a, var_2.x), vec2<u32>(1u, var_2.x))) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(!(_wgslsmith_f_op_f32(1048f * _wgslsmith_f_op_f32(f32(-1f) * -3277f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(295f, 1045f)) * _wgslsmith_f_op_f32(abs(-378f)))), func_5(func_4(func_1()), -5451i, _wgslsmith_sub_vec3_u32(max(vec3<u32>(1u, u_input.a, u_input.a), ~vec3<u32>(37457u, u_input.a, 62637u)), vec3<u32>(abs(40549u), 4294967295u, abs(4294967295u))), (vec2<i32>(u_input.b.x, u_input.d) >> (vec2<u32>(u_input.a, 35361u) % vec2<u32>(32u))) << (countOneBits(~vec2<u32>(17958u, 1u)) % vec2<u32>(32u))), !func_2(select(_wgslsmith_sub_vec4_u32(vec4<u32>(33991u, u_input.a, 37527u, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)), ~vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), func_2(vec4<u32>(u_input.a, u_input.a, 26054u, u_input.a)).c)).c, u_input.a, ~0u);
    let var_1 = _wgslsmith_dot_vec2_i32(-abs(vec2<i32>(-u_input.c.x, 1i)), select(_wgslsmith_clamp_vec2_i32(-_wgslsmith_clamp_vec2_i32(u_input.e.yz, vec2<i32>(-1i, var_0.b.b), var_0.b.e), reverseBits(~vec2<i32>(29584i, u_input.d)), var_0.b.e), _wgslsmith_div_vec2_i32(var_0.b.c, var_0.b.e | _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, -74280i), vec2<i32>(-9542i, var_0.b.c.x))), true));
    let var_2 = func_1().c;
    let var_3 = abs(vec3<i32>(i32(-1i) * -var_0.b.e.x, max(~countOneBits(u_input.b.x), ~_wgslsmith_sub_i32(var_0.b.c.x, 1i)), -24149i));
    let var_4 = func_1();
    let var_5 = func_1();
    var var_6 = _wgslsmith_f_op_f32(-func_5(var_4.b, u_input.b.x, vec3<u32>(u_input.a, var_5.e, var_5.e), abs(vec2<i32>(60892i, -7454i)) & _wgslsmith_clamp_vec2_i32(-var_0.b.c, vec2<i32>(2147483647i, 2147483647i), _wgslsmith_mult_vec2_i32(vec2<i32>(-14406i, u_input.e.x), vec2<i32>(-1i, 5648i)))).a);
    var_6 = var_4.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec3_u32(abs(countOneBits(vec3<u32>(1u, u_input.a, 29222u))), vec3<u32>(_wgslsmith_add_u32(4294967295u, u_input.a), ~60860u, 4294967295u)), _wgslsmith_clamp_i32(_wgslsmith_add_i32(~_wgslsmith_div_i32(2147483647i, 1i), 7060i), reverseBits(var_3.x), ~_wgslsmith_mod_i32(var_4.b.c.x, var_5.b.b << (0u % 32u))), u_input.b);
}

