struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_3,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
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

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> vec3<i32> {
    let var_0 = Struct_1(~abs(~(~vec4<u32>(u_input.a.x, 1u, u_input.a.x, 4294967295u))), !any(select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), true)), vec2<f32>(_wgslsmith_f_op_f32(max(1000f, -1177f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(579f)))), -140f, _wgslsmith_f_op_f32(sign(-1063f)) <= _wgslsmith_f_op_f32(min(729f, -192f))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-293f * -638f) - _wgslsmith_f_op_f32(-475f * -581f)), 169f), 231f), _wgslsmith_mod_vec3_i32(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, 0i), select(vec3<i32>(-2147483647i, 2147483647i, -42077i), vec3<i32>(-60392i, -8309i, 2089i), false))), vec3<i32>(1i, 1i, 1i)));
    var var_1 = var_0.d.x;
    var_1 = var_0.d.x;
    let var_2 = _wgslsmith_div_vec2_u32(~vec2<u32>(var_0.a.x ^ (var_0.a.x ^ 32764u), 2043u), ~var_0.a.zz);
    let var_3 = true;
    return var_0.e;
}

fn func_3(arg_0: f32) -> vec3<u32> {
    var var_0 = Struct_2(firstLeadingBit(max(select(vec3<i32>(-6812i, -1668i, 5306i), vec3<i32>(-29178i, -1i, 60568i), vec3<bool>(true, false, true)) << (_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.a.x), vec3<u32>(u_input.a.x, u_input.b, 0u)) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(-1i, -1i, -90493i)))), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32((u_input.a >> (u_input.a % vec2<u32>(32u))) << (u_input.a % vec2<u32>(32u)), max(max(u_input.a, u_input.a), vec2<u32>(u_input.b, u_input.a.x))), vec2<u32>(u_input.a.x, u_input.a.x)), vec3<u32>(u_input.b, ~58092u, 4294967295u), vec3<i32>(-(14480i >> (u_input.b % 32u)), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(2147483647i, -2147483647i, 15659i), 1i), 1i) >> (abs(~(vec3<u32>(22691u, u_input.b, u_input.a.x) | vec3<u32>(34925u, 1062u, u_input.a.x))) % vec3<u32>(32u)));
    var var_1 = Struct_2(vec3<i32>(~reverseBits(2147483647i >> (0u % 32u)), min(var_0.d.x & -var_0.a.x, -_wgslsmith_dot_vec2_i32(var_0.a.yx, var_0.d.zy)), -abs(var_0.a.x) << ((var_0.c.x << (56993u % 32u)) % 32u)), firstTrailingBit(var_0.b >> (_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(4294967295u, 3502u)), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 0u), u_input.a), reverseBits(u_input.a)) % vec2<u32>(32u))), abs(var_0.c), -select(vec3<i32>(var_0.d.x, firstLeadingBit(-13702i), var_0.d.x), var_0.a, any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)))));
    var var_2 = abs(_wgslsmith_clamp_u32(0u, _wgslsmith_mod_u32(~countOneBits(4294967295u), select(0u, 0u, any(vec3<bool>(false, false, false)))), 44125u));
    let var_3 = 1057f;
    var_1 = Struct_2(abs(~var_0.a), vec2<u32>(select(u_input.b, u_input.b, any(vec2<bool>(true, true))), var_0.c.x), ~(var_0.c ^ abs(var_1.c)) ^ vec3<u32>(~1u, var_1.c.x, 24034u), vec3<i32>(select(countOneBits(-4080i), ~(-60125i << (var_1.b.x % 32u)), _wgslsmith_dot_vec3_u32(var_1.c, vec3<u32>(var_0.c.x, var_0.b.x, 0u)) <= u_input.a.x), var_0.d.x, var_1.a.x | (var_1.d.x | var_1.d.x)));
    return ~select(~var_1.c << (_wgslsmith_mult_vec3_u32(~var_0.c, ~vec3<u32>(var_0.b.x, 12699u, 0u)) % vec3<u32>(32u)), min(~vec3<u32>(3498u, u_input.b, 4294967295u), abs(_wgslsmith_sub_vec3_u32(var_0.c, var_1.c))), all(vec3<bool>(true, true, true)));
}

fn func_4(arg_0: Struct_2) -> bool {
    let var_0 = ~vec3<u32>(73065u & select(_wgslsmith_sub_u32(1u, 0u), abs(4294967295u), true), 1u, 1u);
    var var_1 = (~_wgslsmith_dot_vec3_u32(func_3(-1828f), max(vec3<u32>(4294967295u, var_0.x, 24213u), var_0)) ^ 25431u) | arg_0.b.x;
    let var_2 = Struct_1(~(~vec4<u32>(reverseBits(u_input.a.x), ~arg_0.c.x, abs(34335u), arg_0.b.x)), any(vec4<bool>(true, !(u_input.a.x > 4294967295u), true, any(vec3<bool>(true, false, true)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(810f, -766f), 1279f), vec2<f32>(1f, 1f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(215f)), -1042f))), abs(arg_0.a));
    var_1 = select(var_2.a.x, arg_0.b.x, all(select(select(select(vec3<bool>(var_2.b, var_2.b, true), vec3<bool>(var_2.b, var_2.b, var_2.b), true), select(vec3<bool>(var_2.b, var_2.b, var_2.b), vec3<bool>(true, var_2.b, false), vec3<bool>(false, var_2.b, true)), true), vec3<bool>(all(vec3<bool>(true, true, true)), select(false, false, false), var_2.b), !(!vec3<bool>(var_2.b, false, var_2.b)))));
    var_1 = 0u;
    return false;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec3<i32>, arg_3: vec4<u32>) -> Struct_4 {
    let var_0 = select(-31264i, 19741i, func_4(Struct_2(func_2(), ~vec2<u32>(52339u, u_input.b) << (arg_3.xy % vec2<u32>(32u)), func_3(_wgslsmith_f_op_f32(select(-581f, 1786f, arg_1))), _wgslsmith_mult_vec3_i32(-arg_2, vec3<i32>(arg_2.x, 53310i, -2147483647i)))));
    var var_1 = all(vec2<bool>(false, any(vec3<bool>(arg_1, arg_1, arg_1)) | false)) || arg_1;
    var_1 = true;
    var var_2 = abs(arg_2.yy << (select(~arg_3.zy, arg_3.wz, !select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true), arg_1)) % vec2<u32>(32u)));
    var var_3 = firstTrailingBit(~arg_3.ww | _wgslsmith_sub_vec2_u32(vec2<u32>(arg_3.x, 29857u), arg_3.wx)) << (countOneBits(vec2<u32>(~arg_3.x, u_input.b)) % vec2<u32>(32u));
    return Struct_4(Struct_1(vec4<u32>(68788u, arg_3.x, arg_3.x, abs(_wgslsmith_add_u32(arg_3.x, u_input.b))), func_4(Struct_2(arg_2, u_input.a, _wgslsmith_div_vec3_u32(vec3<u32>(70545u, 107855u, arg_3.x), vec3<u32>(var_3.x, arg_3.x, arg_3.x)), arg_2 >> (arg_3.xwy % vec3<u32>(32u)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(236f, 1966f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(abs(925f)), 1119f))), ~func_2()), all(!(!select(vec2<bool>(true, false), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false)))), Struct_3(true), vec2<u32>(~(~(~arg_3.x)), _wgslsmith_sub_u32(abs(~var_3.x), func_3(1117f).x)), vec4<bool>(all(select(vec2<bool>(arg_1, true), !vec2<bool>(true, arg_1), vec2<bool>(true, true))), !arg_1, all(select(!vec3<bool>(false, arg_1, arg_1), select(vec3<bool>(true, true, arg_1), vec3<bool>(true, true, arg_1), false), vec3<bool>(true, arg_1, arg_1))), arg_1));
}

fn func_5(arg_0: f32, arg_1: Struct_4, arg_2: vec4<i32>) -> i32 {
    var var_0 = arg_1.a.e.x;
    var_0 = _wgslsmith_dot_vec4_i32(-(~min(arg_2, vec4<i32>(2147483647i, arg_1.a.e.x, 1i, 29859i))), ~arg_2) >> (select(arg_1.a.a.x, min(u_input.b >> (~arg_1.d.x % 32u), arg_1.d.x), any(select(vec2<bool>(true, arg_1.c.a), arg_1.e.xx, !arg_1.e.yx))) % 32u);
    var var_1 = ~reverseBits(u_input.a.x << (arg_1.d.x % 32u));
    var var_2 = arg_1.a.c.x;
    var var_3 = Struct_2(_wgslsmith_sub_vec3_i32(arg_1.a.e, arg_2.yxz), _wgslsmith_mult_vec2_u32(~func_1(~arg_1.a.e.x, func_1(653i, arg_1.c.a, arg_2.xyx, vec4<u32>(arg_1.d.x, 0u, arg_1.d.x, u_input.b)).b, vec3<i32>(1i, arg_2.x, 0i) << (arg_1.a.a.zyx % vec3<u32>(32u)), firstLeadingBit(arg_1.a.a)).d, vec2<u32>(u_input.a.x, 12566u)), _wgslsmith_add_vec3_u32(arg_1.a.a.yyw, ~(~arg_1.a.a.yww)), arg_2.xwy >> (_wgslsmith_div_vec3_u32(~(arg_1.a.a.zxw << (arg_1.a.a.zxw % vec3<u32>(32u))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, 13462u), arg_1.a.a.zyw)) % vec3<u32>(32u)));
    return 2147483647i ^ _wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_clamp_vec2_i32(var_3.d.zz, vec2<i32>(var_3.a.x, arg_1.a.e.x), var_3.d.xy) >> (~u_input.a % vec2<u32>(32u))), -vec2<i32>(-2147483647i, var_3.a.x));
}

fn func_6(arg_0: i32, arg_1: Struct_5, arg_2: Struct_2, arg_3: Struct_4) -> u32 {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(168f, -325f) + arg_1.a.zz) * arg_3.a.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1192f, _wgslsmith_f_op_f32(-arg_3.a.d.x)))));
    let var_2 = -2147483647i;
    let var_3 = arg_3.b;
    var var_4 = arg_3.a.a.x;
    return _wgslsmith_mod_u32(~arg_3.d.x, _wgslsmith_dot_vec2_u32((vec2<u32>(u_input.b, 68410u) ^ arg_3.d) & ~arg_3.d, ~vec2<u32>(arg_2.b.x, arg_2.c.x)) & func_3(-2105f).x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(2147483647i);
    var_0 = ~abs(_wgslsmith_add_i32(~(-1i), countOneBits(2147483647i)) ^ _wgslsmith_sub_i32(firstTrailingBit(32700i), ~(-24139i)));
    let var_1 = func_6(reverseBits(min(func_5(_wgslsmith_div_f32(-289f, -1446f), func_1(8675i, true, vec3<i32>(51793i, 2147483647i, 25738i), vec4<u32>(62041u, u_input.a.x, 0u, 1u)), reverseBits(vec4<i32>(-2147483647i, 0i, 13317i, -18378i))), firstLeadingBit(~(-13037i)))), Struct_5(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -646f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1271f)), _wgslsmith_f_op_f32(min(1727f, -770f)), 258f)), Struct_2(select(countOneBits(select(vec3<i32>(-78222i, 2147483647i, 8088i), vec3<i32>(55720i, -2147483647i, 43180i), vec3<bool>(true, true, true))), ~vec3<i32>(30912i, 2147483647i, 2147483647i), func_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -12171i), vec2<i32>(-85277i, -30610i)), func_4(Struct_2(vec3<i32>(0i, -2147483647i, -3305i), u_input.a, vec3<u32>(u_input.b, 4294967295u, u_input.b), vec3<i32>(-19823i, -2147483647i, 26522i))), vec3<i32>(1i, 1i, 1i), max(vec4<u32>(u_input.a.x, 0u, u_input.b, u_input.b), vec4<u32>(81649u, 33597u, u_input.a.x, 73051u))).e.x), u_input.a, abs(~(~vec3<u32>(u_input.b, u_input.a.x, u_input.b))), ~firstTrailingBit(vec3<i32>(1i, 1i, 1i))), Struct_4(Struct_1(firstTrailingBit(vec4<u32>(u_input.b, 1u, u_input.a.x, u_input.b)), true, vec2<f32>(_wgslsmith_f_op_f32(floor(-224f)), _wgslsmith_f_op_f32(floor(-1992f))), func_1(firstLeadingBit(1i), all(vec3<bool>(true, false, true)), vec3<i32>(-2147483647i, -8116i, -1i), vec4<u32>(u_input.a.x, 1u, u_input.b, u_input.b) | vec4<u32>(41355u, 4152u, 21935u, 50160u)).a.c, vec3<i32>(1i, 1i, 1i)), true, func_1(~_wgslsmith_clamp_i32(66328i, 2147483647i, -53491i), !any(vec2<bool>(false, true)), min(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(-1i, -12132i, -30680i)), firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(57194u, 12180u, u_input.a.x, u_input.b), vec4<u32>(23415u, u_input.b, u_input.b, u_input.a.x)))).c, ~_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(u_input.a.x, u_input.b)), countOneBits(u_input.a)), !select(func_1(-53302i, false, vec3<i32>(55499i, 2147483647i, 1i), vec4<u32>(1u, u_input.b, u_input.a.x, u_input.b)).e, select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true))));
    var var_2 = _wgslsmith_add_u32(min(u_input.a.x, abs(var_1) << (var_1 % 32u)), 0u);
    let var_3 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(282f + 464f) - _wgslsmith_div_f32(-173f, -771f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-575f + 166f) * _wgslsmith_f_op_f32(select(-1326f, 192f, false))))), 1382f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-392f - -1000f)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.xxw);
}

