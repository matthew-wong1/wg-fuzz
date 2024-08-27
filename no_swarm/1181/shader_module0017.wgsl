struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-1i, i32(-2147483648));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec2<u32> {
    var var_0 = -_wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(arg_1.c, 16719i), vec2<i32>(9418i, -2745i)), abs(~abs(vec2<i32>(arg_1.c, 23975i))));
    var var_1 = vec4<bool>(false, !(any(vec4<bool>(false, false, true, false)) | (4294967295u > arg_0)), ~_wgslsmith_clamp_u32(arg_0, arg_0, arg_0) != ~170u, true);
    let var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(firstTrailingBit(min(firstTrailingBit(vec2<u32>(0u, 4294967295u)), ~vec2<u32>(16094u, 14904u))), _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(46953u, 23776u)), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0, 0u) & vec2<u32>(29238u, 4294967295u), ~vec2<u32>(0u, arg_0)), ~(~vec2<u32>(61214u, arg_0)))), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_add_u32(arg_0, arg_0), firstLeadingBit(arg_0 ^ 4294967295u)), ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, 53902u), vec2<u32>(arg_0, arg_0)))));
    var var_3 = arg_1;
    global0 = vec2<i32>(arg_1.b, _wgslsmith_mod_i32(-74173i, u_input.a)) ^ firstTrailingBit(vec2<i32>(min(var_3.b | var_3.c, -1i), _wgslsmith_clamp_i32(countOneBits(global0.x), -2147483647i, _wgslsmith_clamp_i32(2147483647i, 2147483647i, -1i))));
    return vec2<u32>(_wgslsmith_dot_vec4_u32(min(~(~vec4<u32>(1u, var_2, var_2, 0u)), firstTrailingBit(vec4<u32>(0u, 4294967295u, var_2, arg_0))), (~vec4<u32>(arg_0, arg_0, 1u, 1u) << (_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, 4294967295u, 1u, arg_0), vec4<u32>(11957u, 20607u, 1u, 1u)) % vec4<u32>(32u))) ^ ~(~vec4<u32>(arg_0, var_2, 0u, arg_0))), _wgslsmith_mod_u32(arg_0, var_2));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: vec2<u32>) -> i32 {
    let var_0 = Struct_2(Struct_1(arg_2.a, _wgslsmith_clamp_i32(~(arg_2.c & -21385i), ~(-arg_1.x), _wgslsmith_div_i32(2721i, arg_1.x) & 2147483647i), global0.x, 0i), vec3<bool>(true, true, true), firstLeadingBit(select(-vec4<i32>(39931i, arg_1.x, u_input.b, global0.x) << (~arg_0 % vec4<u32>(32u)), reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.d, 2147483647i, -11658i, 2147483647i), vec4<i32>(-46960i, -35662i, 2147483647i, 2147483647i))), vec4<bool>(true, true, true, true))));
    global0 = ~(~arg_1);
    global0 = vec2<i32>(global0.x, global0.x << (arg_0.x % 32u));
    let var_1 = _wgslsmith_div_vec2_u32(~_wgslsmith_div_vec2_u32(abs(arg_3), vec2<u32>(4294967295u, 59657u) ^ vec2<u32>(0u, arg_0.x)) << (vec2<u32>(_wgslsmith_mult_u32(1u, reverseBits(33013u)), _wgslsmith_div_u32(~arg_0.x, arg_0.x)) % vec2<u32>(32u)), vec2<u32>(~(~countOneBits(arg_0.x)), arg_3.x));
    global0 = ~vec2<i32>(_wgslsmith_sub_i32(arg_2.c & arg_1.x, u_input.a) << (abs(50715u >> (arg_0.x % 32u)) % 32u), ~0i);
    return -(~_wgslsmith_add_i32(global0.x, 2147483647i >> (0u % 32u)) & _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, -45322i, 0i, global0.x), -var_0.c));
}

fn func_2() -> Struct_2 {
    global0 = vec2<i32>(u_input.a, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global0.x) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec2<i32>(39005i, global0.x) ^ vec2<i32>(-34663i, -1i)), 18086i));
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-799f - -223f), _wgslsmith_f_op_f32(-260f + -1000f))), _wgslsmith_div_i32(~u_input.a & 34410i, global0.x), -49155i, 26326i), vec3<bool>(!any(vec3<bool>(false, true, true)), any(vec4<bool>(true, true, all(vec4<bool>(false, false, false, false)), true)), 2147483647i < func_4(countOneBits(vec4<u32>(16975u, 4294967295u, 1u, 1u)), vec2<i32>(u_input.a, u_input.a), Struct_1(vec2<f32>(239f, -1435f), global0.x, u_input.a, u_input.b), func_3(1u, Struct_1(vec2<f32>(298f, 792f), 2147483647i, global0.x, -1i)))), vec4<i32>(func_4(vec4<u32>(97616u, 49714u >> (0u % 32u), _wgslsmith_mult_u32(1u, 16866u), 4294967295u), ~vec2<i32>(1i, 1i), Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-630f, -2307f))), reverseBits(u_input.a), u_input.b >> (84468u % 32u), -u_input.a), ~firstLeadingBit(vec2<u32>(4294967295u, 17986u))), ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(-9109i, -1i, u_input.b, global0.x), vec4<i32>(global0.x, -2094i, 2147483647i, -28418i))), abs(firstLeadingBit(global0.x)) & -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 33268i), vec2<i32>(global0.x, global0.x)), abs(_wgslsmith_mod_i32(-2147483647i, 5309i) << (1u % 32u))));
    var var_1 = !vec4<bool>(firstLeadingBit(var_0.c.x) < 1i, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x)) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.a.a.x, var_0.a.a.x, var_0.b.x)), var_0.a.a.x), var_0.b.x);
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.a.a.x - 1284f)));
    return var_0;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2) -> vec2<i32> {
    let var_0 = min(max(countOneBits(~(-vec2<i32>(global0.x, -2147483647i))), ~(~vec2<i32>(u_input.b, arg_2.c.x))), ~reverseBits(arg_2.c.zx));
    let var_1 = arg_2.a;
    let var_2 = _wgslsmith_dot_vec3_i32(arg_2.c.wxz, min(~arg_2.c.ywx, arg_2.c.zzw));
    global0 = _wgslsmith_add_vec2_i32(~var_0, _wgslsmith_mult_vec2_i32(min(min(vec2<i32>(arg_2.a.d, arg_2.a.d), arg_2.c.xz), vec2<i32>(countOneBits(-19681i), global0.x)), select(vec2<i32>(-6576i >> (arg_0 % 32u), func_2().c.x), vec2<i32>(global0.x, _wgslsmith_dot_vec2_i32(arg_2.c.ww, var_0)), true)));
    global0 = select(arg_2.c.zy, _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, var_1.b), vec2<i32>(_wgslsmith_mod_i32(func_2().c.x, select(-33699i, var_2, false)), max(~var_2, arg_2.c.x))), select(vec2<bool>(any(vec3<bool>(arg_2.b.x, false, false)), true), select(!vec2<bool>(true, arg_2.b.x), arg_2.b.xy, arg_2.b.zx), vec2<bool>(true != func_2().b.x, !any(vec3<bool>(arg_2.b.x, false, arg_2.b.x)))));
    return _wgslsmith_mod_vec2_i32(vec2<i32>(29795i, abs(u_input.b)), vec2<i32>(_wgslsmith_mod_i32(0i & -var_0.x, _wgslsmith_sub_i32(var_2, 1i)), arg_1.c));
}

fn func_1() -> Struct_1 {
    global0 = func_5(~(~1u), Struct_1(vec2<f32>(-372f, 706f), global0.x, -21209i, _wgslsmith_sub_i32(u_input.b, min(u_input.b, u_input.b)) << (_wgslsmith_mult_u32(firstTrailingBit(7719u), 1u) % 32u)), func_2());
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-154f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1023f * 817f) + _wgslsmith_f_op_f32(-1795f * -1484f)), _wgslsmith_f_op_f32(-1058f * _wgslsmith_f_op_f32(min(557f, -302f)))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2079f, _wgslsmith_f_op_f32(-638f * -722f), 1f)))));
    global0 = _wgslsmith_add_vec2_i32(func_2().c.xy, -vec2<i32>(1i, firstLeadingBit(0i)));
    let var_1 = vec4<bool>(~global0.x <= 0i, any(vec2<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, 23534u), vec4<u32>(1u, 1u, 63628u, 4294967295u)) != ~0u, !any(vec3<bool>(false, true, true)))), 0u < (_wgslsmith_clamp_u32(~4086u, ~1u, 1u) >> (4294967295u % 32u)), false);
    var var_2 = ~max(vec2<u32>(~_wgslsmith_add_u32(16142u, 98510u), ~select(34993u, 0u, true)), ~(~vec2<u32>(25331u, 4294967295u) | func_3(98922u, Struct_1(var_0.xz, 2147483647i, 16272i, u_input.b))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x))))), ~global0.x, global0.x, global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = ~select(abs(~vec2<u32>(1u, 1u)), vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 1u, 38005u), ~vec3<u32>(4294967295u, 0u, 1u)), 4294967295u), vec2<bool>(all(vec3<bool>(true, false, true)), true));
    let var_2 = Struct_2(func_1(), vec3<bool>((any(vec3<bool>(true, true, false)) || select(false, true, true)) | all(func_2().b), true, true), ~(-(~_wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.b, -1i, -45551i), vec4<i32>(u_input.b, -32076i, global0.x, 22527i)))));
    var var_3 = reverseBits(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, var_1.x, var_1.x), firstLeadingBit(vec3<u32>(var_1.x, 4294967295u, 4294967295u))) << (1818u % 32u), var_1.x));
    var_0 = 19257i;
    let var_4 = var_2.c.yz;
    var_0 = -_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(select(0i, var_4.x, var_2.b.x), 1i), global0.x, var_4.x, -1428i), _wgslsmith_div_vec4_i32(-var_2.c, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, var_4.x, -35390i, u_input.a), -var_2.c)));
    global0 = vec2<i32>(-68565i, u_input.b);
    global0 = firstLeadingBit((vec2<i32>(~2147483647i, var_2.c.x) | firstLeadingBit(countOneBits(var_2.c.yw))) >> (vec2<u32>(var_1.x >> (var_1.x % 32u), ~1u) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.a.x * var_2.a.a.x) + _wgslsmith_f_op_f32(f32(-1f) * -636f))) * _wgslsmith_div_f32(var_2.a.a.x, _wgslsmith_f_op_f32(-var_2.a.a.x))), _wgslsmith_div_vec4_i32(vec4<i32>(10335i, firstLeadingBit(-var_2.a.d), 2147483647i, func_1().d), var_2.c), _wgslsmith_mod_vec2_u32(var_1, _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(56512u, 4294967295u), var_1), ~(~var_1))), _wgslsmith_f_op_f32(f32(-1f) * -200f));
}

