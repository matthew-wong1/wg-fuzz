struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: bool,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<i32>,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<f32>) -> bool {
    return all(vec2<bool>(any(vec3<bool>(true, true, true)) || !(2147483647i >= u_input.b.x), all(vec4<bool>(true, true, true, true)) || true));
}

fn func_2(arg_0: Struct_2) -> f32 {
    var var_0 = Struct_3(vec2<u32>(4294967295u, 4294967295u), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, -403f, arg_0.b, 282f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(645f, arg_0.b, arg_0.b, 978f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1233f, -707f, arg_0.b, arg_0.b))))), true, arg_0.b, -121f), u_input.b.yx, select(select(vec2<bool>(func_3(vec3<f32>(-647f, arg_0.b, arg_0.b)), u_input.c.x == arg_0.a.x), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(true, false), true)), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true))), vec2<bool>(true, any(vec4<bool>(true, true, true, true))), false), _wgslsmith_clamp_vec2_i32(u_input.b.yz, u_input.b.zz, abs(vec2<i32>(-5913i, arg_0.c)) & reverseBits(vec2<i32>(0i, u_input.a.x))) & vec2<i32>(_wgslsmith_div_i32(~37522i, 1i), reverseBits(u_input.a.x)));
    var var_1 = _wgslsmith_f_op_f32(abs(-193f));
    let var_2 = arg_0;
    var_0 = Struct_3(~var_0.a, var_0.b, _wgslsmith_sub_vec2_i32(reverseBits(-vec2<i32>(var_0.e.x, arg_0.c)), _wgslsmith_add_vec2_i32(vec2<i32>(~1i, 0i >> (var_2.d % 32u)), _wgslsmith_add_vec2_i32(~vec2<i32>(-2147483647i, 0i), min(vec2<i32>(var_0.e.x, var_0.c.x), vec2<i32>(2147483647i, 1i))))), select(!var_0.d, var_0.d, var_0.d.x), var_0.c);
    var_1 = 780f;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.d) + _wgslsmith_f_op_f32(-var_0.b.b.x)))), -1668f);
}

fn func_4(arg_0: vec2<bool>, arg_1: f32, arg_2: vec3<i32>, arg_3: vec2<bool>) -> vec3<bool> {
    let var_0 = u_input.c.zxw;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, -485f, _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(arg_1 * _wgslsmith_div_f32(arg_1, -1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(817f, arg_1, 1510f))))), !vec3<bool>(!arg_3.x, true, false)));
    var var_2 = Struct_2(abs(abs(_wgslsmith_sub_vec2_u32(~vec2<u32>(56258u, 4294967295u), vec2<u32>(u_input.c.x, 71209u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-260f, _wgslsmith_f_op_f32(round(864f)))))) * _wgslsmith_f_op_f32(-1344f * _wgslsmith_f_op_f32(-225f + _wgslsmith_f_op_f32(-arg_1)))), ~(arg_2.x ^ (-2147483647i & abs(arg_2.x))), var_0.x);
    var var_3 = var_0.x;
    let var_4 = select(_wgslsmith_sub_u32(_wgslsmith_add_u32(4294967295u, firstLeadingBit(u_input.c.x << (1u % 32u))), ~(~var_0.x)), 40976u, arg_0.x);
    return select(select(select(vec3<bool>(arg_3.x, arg_0.x, true), vec3<bool>(arg_3.x, true, all(vec4<bool>(arg_3.x, false, arg_0.x, false))), select(!vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(true, arg_3.x, arg_0.x), select(vec3<bool>(arg_3.x, true, false), vec3<bool>(false, arg_0.x, true), false))), vec3<bool>(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2845f, -1039f, 1000f) * vec3<f32>(1787f, 288f, 181f))), arg_1 > -449f, !any(vec4<bool>(arg_0.x, true, false, true))), vec3<bool>(all(!vec4<bool>(false, arg_3.x, arg_3.x, arg_3.x)), false, all(vec2<bool>(arg_0.x, false)))), vec3<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(false, false, false))) | arg_3.x, true, all(select(vec4<bool>(false, false, arg_3.x, arg_0.x), select(vec4<bool>(arg_3.x, arg_3.x, arg_3.x, true), vec4<bool>(false, true, true, arg_3.x), arg_3.x), !arg_3.x))), select(vec3<bool>(false, 1i >= (var_2.c << (0u % 32u)), true != (false & arg_0.x)), select(vec3<bool>(var_0.x <= 80607u, false, true), !select(vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(false, true, arg_3.x), vec3<bool>(arg_0.x, arg_0.x, false)), true), !all(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false))));
}

fn func_5(arg_0: vec3<bool>, arg_1: bool, arg_2: i32) -> vec4<i32> {
    let var_0 = all(vec3<bool>(true, true, true));
    let var_1 = vec3<u32>(6531u, _wgslsmith_div_u32(4294967295u, ~_wgslsmith_sub_u32(0u, u_input.c.x)), u_input.c.x) << (vec3<u32>(51062u, 25600u, ~(~u_input.c.x) & 57272u) % vec3<u32>(32u));
    let var_2 = Struct_3(_wgslsmith_div_vec2_u32(vec2<u32>(var_1.x, select(~var_1.x, u_input.c.x, true)), abs(~var_1.zy) | var_1.yz), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-282f, 1125f, 372f, -237f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(407f, 790f, 507f, -1679f), vec4<f32>(270f, -149f, -229f, -1188f), vec4<bool>(true, false, arg_0.x, true)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-600f, 1037f, -2112f, -1050f) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-977f, -1000f, 150f, -1000f))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -429f), _wgslsmith_f_op_f32(floor(2307f)), _wgslsmith_f_op_f32(-1042f * 844f), _wgslsmith_f_op_f32(2013f * -783f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(147f, 443f, 1000f, -360f))))), true, _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1169f, -504f)) - 721f)), u_input.a.zy, func_4(vec2<bool>(any(vec4<bool>(true, true, arg_1, true)), arg_1), _wgslsmith_f_op_f32(round(729f)), vec3<i32>(firstTrailingBit(1i), 0i, ~arg_2 ^ min(9563i, -44003i)), !(!arg_0.xy)).xz, max(~(-vec2<i32>(u_input.a.x, arg_2)), _wgslsmith_mod_vec2_i32(u_input.a.xx, vec2<i32>(arg_2, arg_2) >> (~vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u)))));
    var var_3 = select(select(select(vec4<bool>(u_input.a.x == -10413i, select(false, true, var_2.b.c), true, false), vec4<bool>(true, true, !arg_0.x, !var_2.b.c), true), vec4<bool>(func_4(!var_2.d, _wgslsmith_f_op_f32(-719f + var_2.b.e), reverseBits(u_input.b.xwy), func_4(vec2<bool>(false, arg_0.x), 1000f, u_input.a, vec2<bool>(false, var_2.d.x)).zy).x, any(arg_0) & arg_1, var_2.d.x, true), false), !(!(!select(vec4<bool>(var_0, false, var_2.b.c, var_2.d.x), vec4<bool>(false, false, var_2.d.x, var_2.d.x), true))), func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(exp2(var_2.b.b.x)), -1964f))));
    var_3 = !vec4<bool>(true & var_3.x, var_2.b.c, var_3.x, true);
    return _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_2.e.x, -u_input.a.x >> (~4294967295u % 32u), -1i, firstTrailingBit(0i)), -vec4<i32>(_wgslsmith_add_i32(var_2.c.x, -1i), _wgslsmith_sub_i32(0i, arg_2), -2147483647i, 2147483647i)), u_input.b);
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    var var_0 = select(true, select(true, arg_0.b.c, !arg_0.d.x), !(!any(select(vec3<bool>(arg_0.d.x, true, arg_0.b.c), vec3<bool>(arg_0.b.c, arg_0.b.c, false), vec3<bool>(true, false, arg_0.d.x)))));
    var var_1 = -(vec4<i32>(-1i) * -abs(firstTrailingBit(u_input.b)));
    var_1 = _wgslsmith_clamp_vec4_i32(~u_input.b, vec4<i32>(u_input.a.x, -(1i << (u_input.c.x % 32u)), u_input.b.x, -(select(2147483647i, -1i, true) & (-9344i & arg_0.e.x))), vec4<i32>(1i, select(u_input.b.x, abs(_wgslsmith_mult_i32(u_input.b.x, 2147483647i)), (u_input.c.x == arg_0.a.x) | (arg_0.d.x != arg_0.d.x)), -max(~8926i, u_input.b.x << (41318u % 32u)), u_input.b.x));
    let var_2 = vec4<u32>(arg_0.a.x, u_input.c.x, ~(~(~(u_input.c.x | arg_0.a.x))), u_input.c.x);
    var_1 = func_5(!func_4(arg_0.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_2(vec2<u32>(26623u, 22419u), arg_0.b.b.x, var_1.x, 38571u))), arg_0.b.d), vec3<i32>(arg_0.e.x, 1i, var_1.x ^ u_input.b.x), select(arg_0.d, !vec2<bool>(arg_0.d.x, arg_0.d.x), arg_0.d.x)), u_input.c.x <= _wgslsmith_clamp_u32(~(~1u), 42637u, ~(u_input.c.x << (arg_0.a.x % 32u))), _wgslsmith_sub_i32(7706i, _wgslsmith_mod_i32(var_1.x, -2147483647i)));
    return arg_0.b;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec4<i32>) -> Struct_3 {
    var var_0 = vec2<u32>(~u_input.c.x, _wgslsmith_mod_u32(u_input.c.x, 655u)) & select(abs(firstTrailingBit(u_input.c.yx)) << (vec2<u32>(u_input.c.x, ~0u) % vec2<u32>(32u)), firstTrailingBit(~(~vec2<u32>(40586u, 36299u))), arg_1.c);
    let var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(~(~vec3<u32>(u_input.c.x, u_input.c.x, 1u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.c.xyy, u_input.c.xzw), _wgslsmith_sub_vec3_u32(u_input.c.zyz, vec3<u32>(53520u, 40783u, 81091u)), firstLeadingBit(u_input.c.yyy)) >> ((u_input.c.wxx | u_input.c.xwx) % vec3<u32>(32u))), abs(u_input.c.zxw));
    let var_2 = 244f;
    var var_3 = 30742i;
    var var_4 = Struct_2(var_1.yz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(step(486f, arg_1.d)))))), firstLeadingBit(-_wgslsmith_dot_vec4_i32(-u_input.b, vec4<i32>(u_input.a.x, 1i, u_input.a.x, arg_3.x) >> (vec4<u32>(u_input.c.x, 0u, 0u, u_input.c.x) % vec4<u32>(32u)))), _wgslsmith_mod_u32(~var_0.x, u_input.c.x ^ ~1u));
    return Struct_3(var_1.zx, func_1(Struct_3(vec2<u32>(1u, firstTrailingBit(35009u)), Struct_1(arg_0.b, _wgslsmith_f_op_vec4_f32(select(arg_0.a, vec4<f32>(arg_1.a.x, -878f, 613f, var_2), true)), var_1.x > var_1.x, _wgslsmith_f_op_f32(-549f - var_4.b), var_2), select(abs(u_input.a.yy), ~vec2<i32>(u_input.b.x, var_4.c), arg_2), vec2<bool>(true, arg_2.x), reverseBits(_wgslsmith_add_vec2_i32(arg_3.xw, vec2<i32>(-1i, 0i))))), min(arg_3.wx ^ _wgslsmith_add_vec2_i32(vec2<i32>(1i, u_input.b.x), arg_3.zz), -_wgslsmith_clamp_vec2_i32(vec2<i32>(var_4.c, 2147483647i), vec2<i32>(-17771i, arg_3.x), vec2<i32>(u_input.a.x, var_4.c))) & u_input.b.yx, arg_2, arg_3.yx >> (_wgslsmith_add_vec2_u32(vec2<u32>(~19693u, 4294967295u), _wgslsmith_div_vec2_u32(~vec2<u32>(var_0.x, u_input.c.x), vec2<u32>(var_4.d, 46428u))) % vec2<u32>(32u)));
}

fn func_7(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: Struct_3) -> Struct_1 {
    var var_0 = countOneBits(countOneBits(1i));
    var_0 = select(-8297i, _wgslsmith_clamp_i32(~(-(~u_input.a.x)), _wgslsmith_div_i32(~42153i ^ _wgslsmith_mult_i32(u_input.a.x, u_input.b.x), min(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 41081i, -1i), vec3<i32>(arg_0.x, 0i, -2143i)), abs(1i))), u_input.a.x >> (reverseBits(u_input.c.x) % 32u)), !(func_4(vec2<bool>(true, true), arg_2.b.e, u_input.a ^ arg_0, !arg_2.d).x | (true || arg_2.b.c)));
    let var_1 = ~arg_2.a;
    var var_2 = _wgslsmith_f_op_vec2_f32(-arg_1.yz);
    var_2 = arg_2.b.b.wy;
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, true);
    let var_1 = Struct_3(vec2<u32>(u_input.c.x << (firstTrailingBit(firstTrailingBit(11351u)) % 32u), _wgslsmith_dot_vec2_u32(~(u_input.c.wz & vec2<u32>(1u, 26398u)), vec2<u32>(_wgslsmith_div_u32(23434u, u_input.c.x), reverseBits(11813u)))), func_7(-vec3<i32>(-2755i, ~u_input.b.x, 2147483647i), vec3<f32>(_wgslsmith_f_op_f32(ceil(713f)), -518f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-913f + -1667f))), func_6(func_1(Struct_3(u_input.c.yw, Struct_1(vec4<f32>(712f, -412f, -424f, -590f), vec4<f32>(-1697f, -703f, -727f, -1454f), var_0.x, -114f, 524f), vec2<i32>(2968i, u_input.a.x), vec2<bool>(var_0.x, var_0.x), u_input.b.xx)), Struct_1(vec4<f32>(459f, -1609f, 477f, -134f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-400f, -981f, -871f, -284f))), var_0.x, -146f, -953f), vec2<bool>(2147483647i > u_input.a.x, any(vec4<bool>(true, var_0.x, true, var_0.x))), ~u_input.b)), ~(~(-u_input.b.yy ^ -vec2<i32>(-2147483647i, -38314i))), func_4(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1222f))), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.b.x, u_input.a.x, u_input.a.x), u_input.b.yxw), firstTrailingBit(vec3<i32>(u_input.a.x, u_input.b.x, u_input.a.x))), var_0).xy, countOneBits(~u_input.a.xx));
    var var_2 = -570f;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(163f))))));
    var_2 = func_6(Struct_1(var_1.b.a, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.b.b + vec4<f32>(-1934f, var_1.b.e, -124f, -389f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(877f, var_1.b.e, var_1.b.a.x, var_1.b.b.x))))), select(var_1.a.x <= ~19224u, false, !func_6(Struct_1(vec4<f32>(var_1.b.d, -114f, 1000f, var_1.b.d), var_1.b.a, true, var_1.b.e, 1013f), var_1.b, var_0, u_input.b).b.c), var_1.b.e, var_1.b.a.x), var_1.b, var_1.d, select(reverseBits(vec4<i32>(-1i) * -u_input.b), countOneBits(vec4<i32>(u_input.b.x, u_input.b.x, max(u_input.a.x, 21632i), firstLeadingBit(1i))), vec4<bool>(func_1(var_1).c && all(vec2<bool>(false, var_1.b.c)), var_0.x, var_0.x, 0i == _wgslsmith_mult_i32(var_1.e.x, -2147483647i)))).b.e;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.b.d))));
    var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.d)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.d * var_1.b.e) - 1f)), _wgslsmith_f_op_f32(round(var_1.b.e))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_1.b.d, _wgslsmith_f_op_f32(min(var_1.b.b.x, var_1.b.a.x)), -940f), ~(-_wgslsmith_div_i32(var_1.c.x, -var_1.c.x)), vec3<i32>(12841i, var_1.e.x, -(~2147483647i)) | u_input.b.zxx);
}

