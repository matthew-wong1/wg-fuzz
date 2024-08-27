struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(385f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -416f) * _wgslsmith_f_op_f32(177f - 1009f))))));
    let var_1 = Struct_1(0u, u_input.a, vec2<i32>(u_input.d, _wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 27962i, -1i, 2147483647i), vec4<i32>(u_input.d, 2147483647i, 25209i, u_input.b.x)), u_input.e.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.e.x), vec2<i32>(u_input.e.x, u_input.e.x)))), -max(u_input.b, u_input.b), !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false)), select(vec3<bool>(false, true, false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, false, true)), !any(vec2<bool>(true, true))));
    let var_2 = var_1.b.yz ^ ~(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 22595u), u_input.a.yy) >> (_wgslsmith_clamp_vec2_u32(~vec2<u32>(var_1.a, 0u), var_1.b.yy, ~u_input.a.zy) % vec2<u32>(32u)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(377f, 1091f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(360f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(430f)) + 240f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-183f, -247f)) * _wgslsmith_f_op_f32(-1114f + -339f)))));
    return 4294967295u;
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = 73224u;
    let var_1 = u_input.d;
    var var_2 = Struct_1(~abs(~(u_input.a.x | 20751u)), min((u_input.a | u_input.a) ^ (_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 0u, u_input.a.x), u_input.a) >> (~vec3<u32>(0u, u_input.c.x, 0u) % vec3<u32>(32u))), (~u_input.a ^ select(u_input.a, u_input.a, vec3<bool>(arg_0, true, false))) >> (vec3<u32>(~var_0, ~519u, ~u_input.a.x) % vec3<u32>(32u))), -(~vec2<i32>(var_1, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, var_1, 35636i, 2147483647i), vec4<i32>(-29026i, u_input.b.x, u_input.b.x, 1i)))), firstTrailingBit(u_input.b), vec3<bool>(arg_0, true, all(vec2<bool>(true, true))));
    let var_3 = (vec3<i32>(-1i, var_2.d.x, ~_wgslsmith_add_i32(u_input.e.x, u_input.d)) >> (vec3<u32>(max(~1u, var_0 & var_2.a), ~var_2.b.x, _wgslsmith_div_u32(~var_2.a, u_input.a.x)) % vec3<u32>(32u))) >> (var_2.b % vec3<u32>(32u));
    var_2 = Struct_1(min(~_wgslsmith_clamp_u32(5719u, ~1u, var_0), ~var_2.a), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, max(4294967295u, var_0), _wgslsmith_add_u32(var_0, var_2.b.x), var_2.b.x >> (var_2.b.x % 32u)), ~vec4<u32>(u_input.a.x, u_input.a.x, 0u, 0u) << (~vec4<u32>(var_2.a, 57697u, 0u, 37500u) % vec4<u32>(32u))), select(var_2.b.x, min(4294967295u, u_input.c.x), false) << (4294967295u % 32u), u_input.c.x), var_3.zx, vec3<i32>(0i, 2147483647i, ~(_wgslsmith_div_i32(-2147483647i, -2147483647i) >> (~u_input.a.x % 32u))), var_2.e);
    return func_3();
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    return Struct_2(arg_0.d.x, vec4<u32>(_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec2_u32(arg_0.b.yy, vec2<u32>(arg_0.b.x, 0u)), 0u), _wgslsmith_div_u32(_wgslsmith_sub_u32(~3721u, arg_0.b.x >> (u_input.c.x % 32u)), func_2(arg_0.e.x)), u_input.a.x, ~countOneBits(_wgslsmith_mod_u32(1u, 1u))), max(u_input.a, vec3<u32>(0u, firstLeadingBit(u_input.c.x), u_input.c.x)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec4_i32(select(-(vec4<i32>(-14499i, arg_0.a, u_input.d, arg_1.b) << (arg_1.c.b % vec4<u32>(32u))), vec4<i32>(u_input.d, 1i, -10106i >> (u_input.c.x % 32u), ~(-34113i)) | -vec4<i32>(0i, 2147483647i, arg_2.b, -2147483647i), true), max(-vec4<i32>(arg_0.a, arg_2.c.a >> (arg_1.c.c.x % 32u), ~(-2107i), 1i), ~(~vec4<i32>(arg_0.a, 3147i, 0i, 1i)) & select(max(vec4<i32>(u_input.d, -2147483647i, -51093i, 20298i), vec4<i32>(0i, arg_2.b, -13474i, arg_0.a)), firstLeadingBit(vec4<i32>(-1i, arg_1.c.a, 1i, arg_1.b)), false)), ~_wgslsmith_sub_vec4_i32(-vec4<i32>(arg_0.a, 10984i, arg_2.c.a, arg_2.b), ~(-vec4<i32>(1i, 0i, arg_1.c.a, arg_0.a))));
    var var_1 = arg_3;
    var var_2 = 857f;
    var var_3 = countOneBits(4294967295u);
    var var_4 = Struct_1(arg_0.b.x, ~arg_3.c, vec2<i32>(~(-2147483647i), _wgslsmith_dot_vec2_i32(select(vec2<i32>(arg_3.a, 3069i), vec2<i32>(u_input.e.x, arg_1.c.a), vec2<bool>(arg_2.a, arg_2.a)), var_0.yx)) >> ((var_1.c.yz >> (u_input.a.zz % vec2<u32>(32u))) % vec2<u32>(32u)), var_0.yxy, vec3<bool>(arg_3.a > min(var_1.a, arg_0.a), arg_1.a, arg_2.a));
    return Struct_1(u_input.c.x, vec3<u32>(3734u, countOneBits(arg_0.c.x), ~1u), _wgslsmith_div_vec2_i32(firstLeadingBit(-vec2<i32>(2147483647i, arg_0.a)), vec2<i32>(~var_4.c.x, arg_3.a) | _wgslsmith_mult_vec2_i32(var_4.d.xx, ~var_4.d.xy)), reverseBits(-_wgslsmith_div_vec3_i32(max(vec3<i32>(119695i, -55399i, var_4.c.x), var_0.yzz), -var_0.ywz)), select(!var_4.e, vec3<bool>(any(!vec4<bool>(false, true, arg_2.a, arg_2.a)), any(vec4<bool>(arg_2.a, true, false, true)), !arg_2.a), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(2147483647i, reverseBits(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.a.x)), u_input.a), Struct_3(false, 13777i, func_1(Struct_1(~u_input.c.x, u_input.a & vec3<u32>(u_input.a.x, u_input.a.x, 5406u), countOneBits(vec2<i32>(2147483647i, 2147483647i)), u_input.b, vec3<bool>(true, true, false)))), Struct_3(any(vec3<bool>(any(vec3<bool>(true, false, true)), true, true)), ~(~u_input.d), Struct_2(u_input.d, _wgslsmith_mult_vec4_u32(func_1(Struct_1(u_input.a.x, u_input.a, vec2<i32>(1i, u_input.e.x), vec3<i32>(-1i, 1i, 52471i), vec3<bool>(true, false, true))).b, vec4<u32>(u_input.c.x, 1u, 71136u, u_input.a.x)), u_input.a)), Struct_2(u_input.e.x, _wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 1u, 115856u, 18697u), vec4<u32>(0u, u_input.a.x, u_input.c.x, 4489u)), ~(vec4<u32>(38164u, 20804u, 18201u, 4294967295u) | vec4<u32>(u_input.a.x, 77131u, 1u, 0u))), countOneBits(firstLeadingBit(_wgslsmith_mod_vec3_u32(u_input.a, u_input.a)))));
    let var_1 = Struct_3(any(vec2<bool>(all(select(var_0.e.xy, var_0.e.zx, var_0.e.xz)), var_0.e.x)), 16650i, func_1(Struct_1(33412u, vec3<u32>(var_0.a ^ var_0.a, countOneBits(13600u), ~55252u), u_input.b.yy, u_input.b, select(!var_0.e, !var_0.e, var_0.e.x))));
    var_0 = Struct_1(_wgslsmith_sub_u32(11529u & _wgslsmith_div_u32(select(6931u, 32510u, false), var_1.c.c.x), func_1(Struct_1(u_input.c.x, vec3<u32>(var_0.a, u_input.a.x, 0u), -vec2<i32>(-29520i, 87877i), vec3<i32>(var_1.b, -8229i, var_0.c.x), !vec3<bool>(var_1.a, true, false))).b.x), var_1.c.b.zxw, vec2<i32>(_wgslsmith_sub_i32(~var_0.d.x, func_1(Struct_1(var_0.b.x, vec3<u32>(var_1.c.b.x, var_0.b.x, var_1.c.c.x), vec2<i32>(2147483647i, -41648i), u_input.b, var_0.e)).a), -9585i), u_input.b, func_4(Struct_2(var_0.c.x, func_1(Struct_1(1u, u_input.a, u_input.b.zx, u_input.b, vec3<bool>(false, true, true))).b, ~var_0.b), Struct_3(false, ~firstLeadingBit(var_0.c.x), func_1(func_4(Struct_2(var_0.c.x, vec4<u32>(var_1.c.b.x, 0u, 8090u, 1u), var_1.c.c), Struct_3(var_0.e.x, var_1.b, Struct_2(-30786i, var_1.c.b, var_1.c.c)), Struct_3(var_1.a, var_1.b, Struct_2(var_0.c.x, var_1.c.b, var_1.c.b.wxy)), Struct_2(var_0.d.x, vec4<u32>(37734u, 4294967295u, 1u, 26726u), var_0.b)))), var_1, func_1(Struct_1(~0u, firstLeadingBit(vec3<u32>(14670u, 43941u, u_input.a.x)), u_input.b.zy, u_input.b, vec3<bool>(var_1.a, true, var_0.e.x)))).e);
    let var_2 = var_1.c;
    let var_3 = vec3<i32>(-1i, 2147483647i, var_1.b);
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-660f * 640f) - -974f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-842f * _wgslsmith_div_f32(762f, 456f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1715f, -1012f) * _wgslsmith_f_op_f32(f32(-1f) * -674f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -757f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(199f * _wgslsmith_f_op_f32(sign(-191f))))), 1f);
    let var_5 = var_1.c.b >> (countOneBits(var_1.c.b & var_2.b) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits((var_1.b | var_1.c.a) >> (31628u % 32u)), (func_1(Struct_1(17772u, var_2.c, vec2<i32>(-2147483647i, u_input.e.x), var_3, var_0.e)).b << (vec4<u32>(16890u, min(var_5.x, 0u), func_3(), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.c.x, var_2.b.x, 99941u))) % vec4<u32>(32u))) >> (var_2.b % vec4<u32>(32u)), select(~_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(var_5.x, var_2.b.x)), select(vec2<u32>(0u, 80820u), var_0.b.zz, vec2<bool>(var_1.a, true))), vec2<u32>(_wgslsmith_mult_u32(u_input.c.x, 51324u), var_2.c.x), select(var_0.e.yy, var_0.e.xz, true)));
}

