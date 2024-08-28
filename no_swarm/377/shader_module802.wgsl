struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: f32) -> f32 {
    var var_0 = _wgslsmith_mod_vec2_i32(-reverseBits(_wgslsmith_clamp_vec2_i32(max(vec2<i32>(9377i, arg_0), vec2<i32>(arg_0, arg_0)), countOneBits(vec2<i32>(-26263i, -1i)), vec2<i32>(-2147483647i, arg_0))), vec2<i32>(1i, ~arg_0));
    let var_1 = -(-12381i ^ abs(-min(-31749i, var_0.x)));
    var_0 = -vec2<i32>(reverseBits(~arg_0) >> (reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, 12405u), vec4<u32>(u_input.c.x, 67516u, u_input.a, u_input.a))) % 32u), (i32(-1i) * -var_0.x) & var_0.x);
    var var_2 = vec4<bool>(true, abs(arg_0 >> (countOneBits(u_input.c.x) % 32u)) >= var_1, arg_1.x, -1085f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) + global0.x));
    var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(arg_0, -1i), vec2<i32>(~(-_wgslsmith_sub_i32(arg_0, 18547i)), select(25421i << (_wgslsmith_clamp_u32(7821u, u_input.a, 69132u) % 32u), 2147483647i, all(select(vec2<bool>(arg_1.x, arg_1.x), var_2.xy, arg_1.x)))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1152f);
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: bool) -> vec2<i32> {
    global0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(reverseBits(arg_1.c.x), select(vec3<bool>(arg_3, true, true), vec3<bool>(arg_3, false, true), vec3<bool>(true, arg_3, arg_3)), _wgslsmith_f_op_f32(-arg_2.x))) * -1449f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.x))), -214f);
    global0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1122f, _wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(max(1080f, 926f)), -915f))))));
    var var_0 = Struct_1(reverseBits(u_input.c.x), ~vec2<i32>(-4171i, -arg_1.b.x ^ arg_1.c.x), arg_1.c, vec3<f32>(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(arg_1.d.x + 215f))), 1f, arg_1.d.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(-arg_0);
    global0 = arg_0;
    return (vec2<i32>(var_0.c.x, -_wgslsmith_mult_i32(-37529i, var_0.b.x)) >> (firstTrailingBit(vec2<u32>(_wgslsmith_div_u32(1u, 1u), var_0.a >> (19562u % 32u))) % vec2<u32>(32u))) ^ arg_1.b;
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<u32>(u_input.a, 25623u);
    var var_1 = Struct_1(4294967295u, -firstLeadingBit(firstLeadingBit(vec2<i32>(25704i, -18849i)) ^ func_2(vec4<f32>(107f, global0.x, 1182f, global0.x), Struct_1(var_0.x, vec2<i32>(-196i, 95275i), vec4<i32>(2147483647i, 30421i, -49994i, -1i), vec3<f32>(global0.x, global0.x, -337f)), global0.yx, true)), max(vec4<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-44494i, -22875i, 38418i, 1i), vec4<i32>(2147483647i, 79838i, 0i, 1i), false), vec4<i32>(-4520i, -43151i, -2147483647i, 1i)), 1i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, -41344i), vec2<i32>(2147483647i, -17378i)), vec2<i32>(-236i, -2355i)), -583i), -abs(vec4<i32>(-21553i, -51143i, 55820i, -12956i)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 108136u, 47767u, u_input.b), ~vec4<u32>(u_input.c.x, 130879u, var_0.x, u_input.c.x)) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(-global0.yww));
    var var_2 = Struct_1(10768u, var_1.c.wz, vec4<i32>(1i, var_1.b.x & _wgslsmith_clamp_i32(var_1.b.x, var_1.b.x, var_1.c.x), func_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, var_1.d.x, -245f, global0.x), vec4<f32>(-254f, global0.x, 747f, global0.x))), Struct_1(u_input.a, var_1.b, var_1.c, vec3<f32>(529f, global0.x, 364f)), global0.xw, any(vec4<bool>(false, true, false, false))).x, var_1.b.x) ^ abs(vec4<i32>(-8312i << (var_1.a % 32u), var_1.b.x ^ 2147483647i, var_1.b.x, -4170i)), vec3<f32>(var_1.d.x, -1581f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1352f)) - 2020f)));
    let var_3 = 1i;
    var_1 = Struct_1(var_0.x, var_1.c.zw << (_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.a, u_input.a | 0u), ~(~u_input.c)) % vec2<u32>(32u)), countOneBits(~(vec4<i32>(-1i) * -vec4<i32>(47589i, var_3, -2992i, 0i))), _wgslsmith_f_op_vec3_f32(round(var_2.d)));
    return Struct_1(~(var_2.a | select(u_input.a, var_2.a & 89768u, all(vec2<bool>(true, true)))), min(~(-firstLeadingBit(vec2<i32>(var_3, -1i))), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(550f, 168f, 1163f, 100f) * vec4<f32>(var_1.d.x, -426f, -1490f, -1000f))), Struct_1(~15358u, var_1.c.wy, _wgslsmith_mod_vec4_i32(var_2.c, vec4<i32>(var_2.b.x, 2147483647i, -37301i, var_3)), vec3<f32>(1401f, 910f, 447f)), _wgslsmith_f_op_vec2_f32(-global0.yw), true)), ~_wgslsmith_div_vec4_i32(var_1.c, vec4<i32>(var_1.b.x, var_2.c.x, var_2.b.x | var_2.b.x, -var_1.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.d + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_2.d)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -432f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global0.x, var_1.d.x, true)))), _wgslsmith_f_op_f32(select(287f, _wgslsmith_f_op_f32(func_3(var_3, vec3<bool>(false, false, true), -1559f)), false)))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: vec3<u32>) -> vec3<u32> {
    var var_0 = ~min(vec4<u32>(firstTrailingBit(u_input.b), 59831u, 64441u, _wgslsmith_add_u32(18945u, ~arg_1.a)), vec4<u32>(min(10663u, arg_1.a), 65050u, 38621u, arg_1.a) & reverseBits(select(vec4<u32>(u_input.b, arg_1.a, 1u, 0u), vec4<u32>(56915u, 1u, arg_3.x, 131468u), vec4<bool>(false, true, true, true))));
    var_0 = vec4<u32>(var_0.x >> (_wgslsmith_mod_u32(~58777u, ~arg_3.x) % 32u), arg_3.x, arg_3.x, _wgslsmith_mult_u32(u_input.b, arg_3.x)) >> (abs(vec4<u32>(u_input.b, firstLeadingBit(arg_3.x), 0u, _wgslsmith_dot_vec3_u32(arg_3, var_0.xyy)) << (_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 1u, u_input.b, 4535u), vec4<u32>(0u, 0u, 35822u, 13818u)) % vec4<u32>(32u))) % vec4<u32>(32u));
    var_0 = max(vec4<u32>(arg_3.x, ~arg_1.a, ~_wgslsmith_clamp_u32(1u, u_input.b, arg_3.x) << (~1u % 32u), 0u), ~(select(vec4<u32>(82603u, 1u, 54331u, arg_3.x), vec4<u32>(18829u, 6950u, 4294967295u, u_input.c.x) >> (vec4<u32>(32048u, var_0.x, arg_3.x, 13430u) % vec4<u32>(32u)), vec4<bool>(true, false, true, true)) ^ vec4<u32>(arg_3.x ^ var_0.x, _wgslsmith_sub_u32(u_input.a, u_input.b), ~1u, 4294967295u)));
    let var_1 = abs(min(arg_0, func_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.x, arg_1.d.x, global0.x, -994f))), Struct_1(arg_3.x, arg_1.c.xz, vec4<i32>(-16901i, arg_0, arg_0, arg_1.c.x), arg_1.d), vec2<f32>(arg_1.d.x, arg_1.d.x), true).x)) > -1i;
    var var_2 = select(var_0.www, select(vec3<u32>(4294967295u, 59205u, ~18528u), _wgslsmith_mod_vec3_u32(~abs(vec3<u32>(arg_3.x, var_0.x, arg_3.x)), var_0.wzw), !vec3<bool>(all(vec3<bool>(var_1, var_1, false)), all(vec3<bool>(true, var_1, true)), true)), vec3<bool>(!all(!vec2<bool>(var_1, var_1)), var_1, var_1));
    return _wgslsmith_clamp_vec3_u32(min(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(var_2.x, 0u, 58797u)), vec3<u32>(0u, firstTrailingBit(arg_1.a), ~22553u), ~reverseBits(var_0.xyw)), abs(countOneBits(vec3<u32>(u_input.a, 1u, 10486u)))), (max(~vec3<u32>(u_input.a, arg_3.x, 1u), var_0.yxw) >> (~(arg_3 | vec3<u32>(var_2.x, var_0.x, 7111u)) % vec3<u32>(32u))) | ~(~select(var_0.zzw, vec3<u32>(4294967295u, arg_3.x, 28856u), vec3<bool>(true, var_1, false))), select(~vec3<u32>(var_2.x, 28677u, var_2.x) | _wgslsmith_clamp_vec3_u32(select(vec3<u32>(arg_1.a, 83313u, arg_1.a), arg_3, true), var_0.zzw >> (arg_3 % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(arg_3, vec3<u32>(u_input.b, 0u, u_input.b), var_0.wxz)), ~reverseBits(arg_3) >> (~(~arg_3) % vec3<u32>(32u)), arg_1.d.x >= global0.x));
}

fn func_5(arg_0: f32, arg_1: vec3<u32>, arg_2: vec2<bool>) -> Struct_1 {
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, 841f, 1679f, global0.x))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, -1170f, global0.x, 148f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-353f, global0.x, -640f, arg_0)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1068f, 735f, arg_0, -1181f) - vec4<f32>(global0.x, global0.x, global0.x, -1017f))))) * vec4<f32>(1870f, arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1641f + 1440f), -612f), _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1582f, -653f, global0.x))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2213f, 1000f, global0.x, arg_0)), vec4<f32>(1416f, -545f, global0.x, global0.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(762f, 862f, -1000f, global0.x))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0, global0.x, arg_0, 1426f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(281f, arg_0, -1339f, 472f) - vec4<f32>(1155f, arg_0, -322f, 1382f)))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, 277f, -1000f, _wgslsmith_f_op_f32(sign(-108f))))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x - -1000f))), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(min(158f, _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), vec4<bool>(false, arg_2.x, true || arg_2.x, true))));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(ceil(arg_0))), 173f, global0.x, -731f) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -1755f, -1543f, -251f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, -828f, arg_0, arg_0), vec4<f32>(2900f, global0.x, global0.x, 1000f), arg_2.x)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, 1139f, 363f, arg_0), vec4<f32>(984f, 635f, 1607f, 377f))))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, -476f, 562f, -1292f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(395f, arg_0, 894f, -1373f)))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(637f, global0.x, global0.x, arg_0), vec4<f32>(arg_0, global0.x, arg_0, arg_0), vec4<bool>(true, false, arg_2.x, arg_2.x)))))))));
    var var_0 = global0.xzx;
    var var_1 = arg_2.x;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(max(996f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1369f * global0.x), global0.x)))), _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -124f))), _wgslsmith_f_op_f32(535f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-717f + 1786f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(global0.x, global0.x), 1612f, global0.x, 101f), vec4<f32>(262f, _wgslsmith_f_op_f32(global0.x + -919f), _wgslsmith_f_op_f32(1103f - global0.x), _wgslsmith_f_op_f32(-global0.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-495f, 1222f, global0.x, global0.x))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-176f, 813f, global0.x, global0.x) + vec4<f32>(-1027f, -2252f, -1802f, 1709f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-471f, -329f, global0.x, global0.x)))))))));
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), -293f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.x), global0.x))));
    var var_1 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1502f + -1724f))), ~func_4(-33815i, func_1(), min(-8755i << (u_input.b % 32u), _wgslsmith_sub_i32(2147483647i, 17557i)), ~vec3<u32>(u_input.a, 1u, u_input.a) | _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(u_input.b, 13067u, 0u))), !(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))));
    var var_2 = select(vec2<bool>(all(vec4<bool>(true, true, true, true)), any(vec4<bool>(0i <= var_1.b.x, true, true, true))), !(!vec2<bool>(true, var_0.x < -128f)), !select(vec2<bool>(false, true), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), !all(vec3<bool>(false, true, true))));
    var var_3 = func_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(func_1().d.x * -297f)))), ~_wgslsmith_mod_vec3_u32(~(vec3<u32>(u_input.c.x, 101855u, 0u) >> (vec3<u32>(var_1.a, 4294967295u, 4294967295u) % vec3<u32>(32u))), min(firstLeadingBit(vec3<u32>(1u, var_1.a, 46867u)), vec3<u32>(7548u, 24558u, 6629u))), select(vec2<bool>(true, true), vec2<bool>((var_2.x && var_2.x) & false, true), vec2<bool>(var_2.x, !var_2.x)));
    var var_4 = select(!select(vec3<bool>(true, select(false, false, true), false), vec3<bool>(any(vec2<bool>(true, true)), var_0.x == var_1.d.x, true), false), !select(!select(vec3<bool>(false, true, var_2.x), vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(true, false, var_2.x)), select(vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(true, true, true), true), all(select(vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(false, false, var_2.x), var_2.x))), !(!(!vec3<bool>(var_2.x, var_2.x, var_2.x))));
    let var_5 = _wgslsmith_f_op_f32(step(1214f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x)))))));
    var var_6 = Struct_1(select(~max(func_5(var_3.d.x, vec3<u32>(var_3.a, u_input.c.x, var_1.a), vec2<bool>(true, false)).a, 49807u), u_input.a << (50298u % 32u), var_3.a == 22993u), var_1.c.zy, vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(-720i, 15078i, var_1.b.x, var_1.c.x), var_3.c), -2147483647i, 1778i, _wgslsmith_mult_i32(-2147483647i, var_1.b.x)) >> (firstLeadingBit(select(firstTrailingBit(vec4<u32>(u_input.a, 34598u, 0u, var_1.a)), firstTrailingBit(vec4<u32>(4294967295u, var_1.a, 19130u, var_3.a)), select(vec4<bool>(true, var_4.x, true, false), vec4<bool>(var_4.x, var_4.x, var_2.x, true), vec4<bool>(var_2.x, false, var_2.x, var_2.x)))) % vec4<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_3.d.x, _wgslsmith_f_op_f32(-var_0.x))) - var_3.d.x), _wgslsmith_f_op_f32(abs(var_3.d.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(907f)) - _wgslsmith_f_op_f32(var_5 + 416f))))));
    var_6 = Struct_1(~(~var_6.a), reverseBits(-_wgslsmith_mod_vec2_i32(vec2<i32>(var_3.c.x, var_6.c.x) ^ vec2<i32>(var_3.b.x, var_3.c.x), var_6.b)), -(-var_3.c & vec4<i32>(firstTrailingBit(var_1.c.x), 56301i, ~var_1.c.x, var_3.c.x)), vec3<f32>(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.d.x - 771f) * 1284f), min(_wgslsmith_div_vec3_u32(vec3<u32>(90999u, var_6.a, 1u), vec3<u32>(0u, u_input.a, var_6.a)), min(vec3<u32>(var_3.a, var_1.a, var_6.a), vec3<u32>(u_input.c.x, var_3.a, 0u))), var_4.yz).d.x, 1387f, 275f));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.wyw, 208f, vec2<f32>(_wgslsmith_f_op_f32(871f + -664f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(276f + _wgslsmith_f_op_f32(1053f - -548f)))));
}

