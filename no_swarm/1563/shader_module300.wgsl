struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: vec3<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1013f, 1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1035f))))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-124f, 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(448f + -2910f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1501f * 308f) + -1362f), _wgslsmith_f_op_f32(sign(-352f))))));
    var var_1 = ~(~vec4<u32>(1u, 1u, 1u, 1u) ^ ~_wgslsmith_mod_vec4_u32(vec4<u32>(21236u, 1u, 8882u, 52280u), select(vec4<u32>(4294967295u, 62501u, 66077u, 0u), vec4<u32>(1u, 1u, 4294967295u, 19869u), vec4<bool>(true, false, true, false))));
    var_1 = vec4<u32>(var_1.x, _wgslsmith_clamp_u32(reverseBits(~var_1.x | var_1.x), _wgslsmith_mod_u32(~0u, var_1.x), _wgslsmith_div_u32(0u >> (~var_1.x % 32u), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.x, 1u), ~var_1.ww))), var_1.x, ~18015u);
    var var_2 = 1i;
    let var_3 = Struct_2(Struct_1(abs(~41257u), -1093f, firstTrailingBit(countOneBits(4294967295u)), var_0.x, all(vec2<bool>(true, any(vec2<bool>(true, false))))), u_input.a, Struct_1(1u, -207f, var_1.x, 479f, false));
    return countOneBits(firstLeadingBit(~(~21238u)) & (_wgslsmith_add_u32(var_3.a.c, 36395u) >> (~_wgslsmith_dot_vec3_u32(var_1.xwz, vec3<u32>(var_1.x, 1u, var_1.x)) % 32u)));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec4<u32>) -> vec2<f32> {
    var var_0 = false;
    var var_1 = Struct_1(arg_0.a.a, arg_0.c.b, arg_0.a.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(628f - _wgslsmith_f_op_f32(-arg_1)))), any(select(!select(vec3<bool>(true, false, false), vec3<bool>(arg_0.a.e, arg_0.a.e, false), vec3<bool>(arg_0.c.e, arg_0.c.e, true)), !vec3<bool>(arg_0.a.e, arg_0.c.e, false), true)));
    var var_2 = Struct_3(Struct_2(arg_0.a, arg_0.b, Struct_1(10223u, var_1.b, _wgslsmith_div_u32(1u, 0u & arg_0.c.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1006f))), all(select(vec2<bool>(var_1.e, var_1.e), vec2<bool>(var_1.e, var_1.e), var_1.e)))), select(vec2<bool>(select(var_1.e, var_1.e & var_1.e, false | var_1.e), all(select(vec2<bool>(arg_0.c.e, false), vec2<bool>(arg_0.a.e, false), vec2<bool>(false, false)))), !select(vec2<bool>(var_1.e, false), select(vec2<bool>(false, false), vec2<bool>(false, var_1.e), vec2<bool>(var_1.e, arg_0.c.e)), select(vec2<bool>(false, var_1.e), vec2<bool>(arg_0.c.e, false), vec2<bool>(arg_0.c.e, arg_0.a.e))), !vec2<bool>(arg_0.a.e, var_1.e && var_1.e)));
    var_2 = Struct_3(arg_0, select(select(vec2<bool>(var_2.b.x, true), var_2.b, select(vec2<bool>(false, false), var_2.b, vec2<bool>(true, true))), select(var_2.b, !(!var_2.b), var_2.b), !((var_1.e | var_2.a.a.e) || true)));
    let var_3 = firstLeadingBit(min(-(~vec2<i32>(18289i, u_input.a)), -vec2<i32>(62425i, _wgslsmith_add_i32(997i, var_2.a.b))));
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1168f, arg_0.c.d)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.c.d, -616f)))))))));
}

fn func_2(arg_0: u32) -> bool {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(func_4(Struct_2(Struct_1(~41807u, _wgslsmith_f_op_f32(f32(-1f) * -1803f), arg_0, 1f, arg_0 <= arg_0), ~(-41773i) ^ -u_input.a, Struct_1(_wgslsmith_div_u32(arg_0, 4294967295u), -355f, arg_0, _wgslsmith_f_op_f32(f32(-1f) * -248f), true)), _wgslsmith_f_op_f32(597f + -1000f), vec4<u32>(firstTrailingBit(~13227u), 58339u, 42966u, func_3() >> (firstTrailingBit(1u) % 32u)))), false, vec3<bool>(!all(vec3<bool>(true, true, true)), !any(vec4<bool>(true, false, false, true)), true), -204f);
    var var_1 = Struct_2(Struct_1(select(_wgslsmith_div_u32(~0u, arg_0), arg_0, all(vec4<bool>(var_0.c.x, var_0.c.x, true, false))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), func_3(), _wgslsmith_f_op_f32(max(var_0.a.x, var_0.a.x)), any(!vec4<bool>(var_0.b, true, var_0.b, false))), 1i, Struct_1(arg_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a.x))), ~_wgslsmith_mult_u32(~0u, 1u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1363f * var_0.d) - _wgslsmith_f_op_f32(var_0.a.x + 1069f)), _wgslsmith_f_op_f32(-var_0.d))), true));
    let var_2 = select(firstTrailingBit(select(max(vec4<i32>(u_input.a, var_1.b, u_input.a, var_1.b), vec4<i32>(-2147483647i, var_1.b, var_1.b, var_1.b)), vec4<i32>(-35510i, u_input.a, u_input.a, 32337i) << (vec4<u32>(arg_0, var_1.a.a, arg_0, 4294967295u) % vec4<u32>(32u)), !vec4<bool>(true, var_0.b, true, true))) >> (vec4<u32>(39871u, 0u, firstLeadingBit(63122u >> (arg_0 % 32u)), _wgslsmith_clamp_u32(arg_0 << (11124u % 32u), arg_0, var_1.a.a)) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec3_i32(max(vec3<i32>(-6565i, var_1.b, u_input.a) << (vec3<u32>(var_1.c.a, var_1.c.c, arg_0) % vec3<u32>(32u)), abs(vec3<i32>(-49054i, -1i, var_1.b))), vec3<i32>(34048i, -2147483647i, var_1.b) ^ _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, -1i, var_1.b), vec3<i32>(-58180i, var_1.b, var_1.b))), var_1.b, ~abs(-var_1.b), 25477i << (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u) ^ vec2<u32>(arg_0, 1u), select(vec2<u32>(var_1.c.c, 32211u), vec2<u32>(0u, arg_0), vec2<bool>(false, var_1.c.e))) % 32u)), !var_0.b);
    var var_3 = ~reverseBits(~vec3<u32>(4294967295u, arg_0, 19913u)) & (vec3<u32>(1u, ~25483u, var_1.c.c) << (vec3<u32>(4294967295u, ~(var_1.c.c ^ var_1.c.a), arg_0 ^ arg_0) % vec3<u32>(32u)));
    let var_4 = !vec3<bool>(any(!select(var_0.c.zx, var_0.c.zy, vec2<bool>(var_1.c.e, var_0.b))), true, true);
    return !any(select(vec3<bool>(all(var_4), var_1.a.e, true), vec3<bool>(true, var_1.c.e, var_4.x), !select(var_0.c, vec3<bool>(false, var_0.c.x, true), var_4)));
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: vec4<f32>) -> vec2<f32> {
    let var_0 = _wgslsmith_clamp_vec4_i32(-vec4<i32>(_wgslsmith_add_i32(10133i, 6161i), _wgslsmith_sub_i32(1i, i32(-1i) * -2147483647i), 2147483647i, _wgslsmith_mod_i32(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -28675i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 6609i)))), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, 48894i), vec4<i32>(1i, u_input.a, -2726i, 0i)) ^ vec4<i32>(1i, ~u_input.a, 32402i, -60626i), firstTrailingBit(vec4<i32>(u_input.a, ~8307i, u_input.a, u_input.a))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -20232i), ~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(-47354i, u_input.a))), -firstTrailingBit(-21871i) | -_wgslsmith_add_i32(0i, 43329i), ~(~(~u_input.a)), u_input.a));
    var var_1 = var_0.ywz;
    var var_2 = vec2<u32>(~abs(79931u), func_3());
    var_2 = vec2<u32>(var_2.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, _wgslsmith_add_u32(var_2.x, var_2.x), 37436u, max(0u, 0u)), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 0u, 4294967295u, var_2.x), reverseBits(vec4<u32>(0u, var_2.x, var_2.x, var_2.x))), ~(~vec4<u32>(var_2.x, var_2.x, 26351u, 80332u)))));
    var_2 = ~((vec2<u32>(var_2.x, _wgslsmith_div_u32(var_2.x, var_2.x)) ^ countOneBits(~vec2<u32>(var_2.x, var_2.x))) ^ countOneBits(~_wgslsmith_div_vec2_u32(vec2<u32>(92228u, var_2.x), vec2<u32>(117662u, 4294967295u))));
    return arg_0.a;
}

fn func_1(arg_0: vec3<i32>) -> StorageBuffer {
    let var_0 = max(max(17577u >> (1u % 32u), 31294u), ~(~abs(3u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(func_5(Struct_4(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(701f, -1000f), vec2<f32>(-1249f, -1245f), vec2<bool>(false, false))), vec2<f32>(395f, 735f), select(vec2<bool>(true, true), vec2<bool>(true, true), true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(428f, -602f)))), select(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), func_2(var_0)), 247f), true, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-290f, 1918f, 221f, -921f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1506f, 693f, 406f, -419f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1170f, 822f, 1596f, -189f), vec4<f32>(412f, 755f, 1451f, 1058f))), _wgslsmith_dot_vec4_u32(vec4<u32>(84118u, 98224u, 1u, var_0), vec4<u32>(1u, var_0, var_0, 3386u)) < 17021u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(164f, 266f)), _wgslsmith_f_op_f32(-1000f * -160f), -366f, -1000f))))));
    let var_2 = 51403u;
    var var_3 = _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(firstTrailingBit(1i), u_input.a, ~u_input.a, ~_wgslsmith_sub_i32(-20682i, 8476i)), min(vec4<i32>(-arg_0.x, _wgslsmith_clamp_i32(14430i, arg_0.x, -2147483647i), -arg_0.x, -2147483647i), -firstTrailingBit(vec4<i32>(u_input.a, -2147483647i, 0i, arg_0.x))), vec4<i32>(-40833i, _wgslsmith_mod_i32(i32(-1i) * -2147483647i, ~(-10437i)), -1i, arg_0.x)), abs(vec4<i32>(arg_0.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, 30548i, arg_0.x), vec4<i32>(arg_0.x, arg_0.x, -1i, u_input.a)), ~24627i, _wgslsmith_sub_i32(arg_0.x, arg_0.x))));
    var_3 = vec4<i32>(_wgslsmith_div_i32(u_input.a, 1i), -_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_3.x, u_input.a, 1i), -vec4<i32>(var_3.x, arg_0.x, var_3.x, u_input.a)) ^ 27470i, max(_wgslsmith_div_i32(-30625i >> ((var_0 & var_2) % 32u), var_3.x), ~(~(-41143i))), u_input.a ^ (-15305i | ~countOneBits(arg_0.x)));
    return StorageBuffer(_wgslsmith_dot_vec2_u32(select(~vec2<u32>(var_0, var_0), countOneBits(vec2<u32>(4294967295u, 45524u)) >> (_wgslsmith_div_vec2_u32(vec2<u32>(var_2, var_2), vec2<u32>(var_2, 4294967295u)) % vec2<u32>(32u)), vec2<bool>(true, true)), max(_wgslsmith_mod_vec2_u32(vec2<u32>(26275u, var_2), vec2<u32>(0u, 49921u)), vec2<u32>(1u, 1938u)) ^ ~min(vec2<u32>(37781u, var_2), vec2<u32>(40539u, 57905u))), vec3<i32>(_wgslsmith_clamp_i32(var_3.x & abs(u_input.a), _wgslsmith_add_i32(_wgslsmith_mult_i32(var_3.x, -80285i), var_3.x), _wgslsmith_div_i32(u_input.a, -2147483647i)), abs(_wgslsmith_add_i32(var_3.x, _wgslsmith_dot_vec3_i32(arg_0, arg_0))), -abs(0i)), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(vec3<i32>(u_input.a, firstTrailingBit(1i), 2147483647i));
}

