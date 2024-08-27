struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: f32,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> i32 {
    var var_0 = i32(-1i) * -19711i;
    let var_1 = -1864f;
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-440f)) * -615f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1, var_1, true))), _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-324f, _wgslsmith_div_f32(2605f, var_1), _wgslsmith_f_op_f32(round(var_1))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -2850f, var_1), vec3<f32>(var_1, 879f, 514f), true))))), vec3<bool>(false, true, true)))));
    var var_3 = ~1u;
    let var_4 = Struct_3(vec4<u32>(~45975u, 1u, u_input.b.x, 1u), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-232f)) * var_1), _wgslsmith_f_op_f32(f32(-1f) * -669f), 239f))), Struct_1(vec3<i32>(0i, 1i, reverseBits(-42127i)), -countOneBits(max(vec3<i32>(0i, 0i, -1i), vec3<i32>(-20745i, -1i, -2147483647i)))));
    return min(firstLeadingBit(_wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, -2147483647i, 1i, 4039i), vec4<i32>(-12913i, var_4.c.b.x, _wgslsmith_mod_i32(var_4.c.b.x, 6788i), var_4.c.b.x))), _wgslsmith_dot_vec3_i32(var_4.c.b, ~(~vec3<i32>(var_4.c.a.x, -2147483647i, var_4.c.a.x))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: vec3<f32>) -> i32 {
    var var_0 = _wgslsmith_mult_i32(abs(_wgslsmith_div_i32(~0i, abs(1i << (u_input.b.x % 32u)))), -63581i);
    var_0 = ~func_3() << (arg_1.x % 32u);
    var var_1 = Struct_1(countOneBits(_wgslsmith_mod_vec3_i32(select(-vec3<i32>(-13511i, 21685i, 1i), ~vec3<i32>(-1687i, 76665i, 1i), true), -vec3<i32>(-2147483647i, 6129i, 1354i))), firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, 0i), vec3<i32>(-32369i, 0i, -3318i)), max(-23040i, -26418i)), ~(-vec3<i32>(0i, 2147483647i, 22779i)))));
    let var_2 = false;
    var var_3 = ~firstTrailingBit(max(arg_1, reverseBits(vec4<u32>(u_input.a, u_input.c, 4294967295u, u_input.a)))) << (max(select(~vec4<u32>(42447u, u_input.c, 0u, 21044u), ~(~arg_1), vec4<bool>(var_2 | var_2, true, var_2, var_2)), ~vec4<u32>(arg_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 4294967295u, 57407u), arg_1.yxz), _wgslsmith_dot_vec3_u32(u_input.b, u_input.b), _wgslsmith_div_u32(arg_1.x, 0u))) % vec4<u32>(32u));
    return -1i;
}

fn func_4(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = vec2<i32>(2212i, select(_wgslsmith_mod_i32(~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1560i, -42886i, arg_0.x, arg_0.x), vec4<i32>(-1i, -8345i, arg_0.x, arg_0.x))) & (-arg_0.x & -33108i), 2147483647i, !(all(vec2<bool>(false, true)) || any(vec3<bool>(false, false, false)))));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1184f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-607f))))));
    var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -333f), 190f))));
    let var_2 = min(~(-(var_0.x << (u_input.c % 32u))), func_3());
    let var_3 = -((abs(23424i) << (u_input.a % 32u)) ^ -1i);
    return Struct_1(vec3<i32>(1i, firstTrailingBit(14967i), _wgslsmith_dot_vec2_i32(arg_0 >> (u_input.b.zx % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(arg_0, arg_0)) << (reverseBits(min(93313u, u_input.c)) % 32u)), ~_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(0i, -7446i, 2147483647i)), vec3<i32>(1i, 1i, 1i)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(~u_input.b.x, u_input.a, u_input.c), ~(~vec3<u32>(u_input.b.x, 3989u, u_input.c))) % vec3<u32>(32u)));
}

fn func_5(arg_0: Struct_2) -> Struct_4 {
    var var_0 = reverseBits(u_input.c);
    var var_1 = Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-480f, -653f), 1236f, false)), -539f)), 1022f);
    var_0 = 1u;
    let var_2 = Struct_3(vec4<u32>(~abs(75u), 32175u, 1u, u_input.a & ~abs(0u)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.b, var_1.b, var_1.a, var_1.a), vec4<f32>(var_1.a, var_1.a, -479f, var_1.a))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-272f, var_1.b, var_1.b, -414f))))))), Struct_1(arg_0.c.b, arg_0.d.b));
    var var_3 = Struct_2((_wgslsmith_sub_i32(var_2.c.a.x ^ arg_0.b.b.x, -arg_0.d.a.x) & -37001i) << (u_input.a % 32u), func_4(~(~vec2<i32>(var_2.c.b.x, 1i)) | ~vec2<i32>(var_2.c.b.x, 0i)), func_4(_wgslsmith_div_vec2_i32(arg_0.c.a.yx | vec2<i32>(10648i, 1i), arg_0.b.a.zx) << (var_2.a.ww % vec2<u32>(32u))), Struct_1(var_2.c.b, _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.d.a.x, 16971i, -39480i, -2147483647i), vec4<i32>(11414i, arg_0.c.b.x, 1i, arg_0.c.a.x)), 6859i), abs(vec3<i32>(-2147483647i, -42693i, arg_0.a)), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(arg_0.d.b, arg_0.c.b), vec3<i32>(arg_0.a, arg_0.b.b.x, 69695i)))));
    return Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1453f))), -351f);
}

fn func_1() -> vec3<u32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -530f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2647f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-922f * -866f) * _wgslsmith_f_op_f32(step(1256f, -1894f))), true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-967f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(952f * 1047f), _wgslsmith_div_f32(1000f, -1000f)))), -2151f), _wgslsmith_f_op_f32(1511f + 1417f));
    var var_1 = func_5(Struct_2(45473i, Struct_1(vec3<i32>(0i, _wgslsmith_mod_i32(-13383i, 15995i), -51606i), ~_wgslsmith_sub_vec3_i32(vec3<i32>(-23830i, -10174i, 2147483647i), vec3<i32>(65654i, -2147483647i, 16761i))), func_4(vec2<i32>(func_2(vec2<f32>(var_0.x, var_0.x), vec4<u32>(u_input.a, 4294967295u, 84563u, 4294967295u), Struct_4(411f, var_0.x), vec3<f32>(440f, 290f, var_0.x)), 1i)), Struct_1(~vec3<i32>(1i, 1i, 1i), -(~vec3<i32>(-27547i, 2147483647i, -3402i)))));
    var_1 = func_5(Struct_2(2147483647i, func_4(-vec2<i32>(1i, 1i)), func_4(max(vec2<i32>(-1i, 5473i), -vec2<i32>(1i, -1i))), func_4(vec2<i32>(0i, ~(-14068i)))));
    var var_2 = Struct_2(i32(-1i) * -_wgslsmith_div_i32(func_4(vec2<i32>(-28740i, -39375i)).a.x, 1i), Struct_1(firstLeadingBit(firstTrailingBit(firstTrailingBit(vec3<i32>(-1i, -16916i, -22749i)))), vec3<i32>(1i, 1i, 1i)), func_4(vec2<i32>(1i, 1i)), Struct_1(_wgslsmith_mult_vec3_i32(select(-vec3<i32>(-38071i, 1i, 1i), vec3<i32>(1i, 1i, 1i), all(vec2<bool>(false, true))), abs(max(vec3<i32>(-1i, -2147483647i, 56676i), vec3<i32>(-17712i, -675i, 1i)))), vec3<i32>(-_wgslsmith_mult_i32(1i, 321i), -2147483647i, reverseBits(_wgslsmith_clamp_i32(-28178i, -79017i, 1i)))));
    var_1 = Struct_4(var_0.x, var_1.a);
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(_wgslsmith_mult_u32(4294967295u, _wgslsmith_sub_u32(8521u, u_input.b.x)) ^ (firstTrailingBit(43773u) | u_input.a), 18036u, ~_wgslsmith_mult_u32(u_input.b.x, 20690u) ^ u_input.a);
    let var_1 = vec2<i32>(i32(-1i) * -1395i, _wgslsmith_clamp_i32(1i, _wgslsmith_mod_i32(12121i, -1i), _wgslsmith_div_i32(21333i, -2147483647i) << (u_input.c % 32u)) & -1i);
    let var_2 = func_1();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1670f)));
    var var_4 = var_0.x > 43753u;
    var_4 = firstLeadingBit(_wgslsmith_div_u32(countOneBits(var_2.x ^ 64459u), abs(var_2.x))) < 1u;
    let var_5 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-836f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1220f)), _wgslsmith_f_op_f32(floor(1000f)))) * _wgslsmith_f_op_f32(abs(-624f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_5.a, var_5.b)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_5.a, var_5.a, var_5.b), vec3<f32>(var_5.b, 1569f, var_5.a)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(483f, 384f, 1512f) * vec3<f32>(var_5.a, var_5.b, -401f)))))), 839f, reverseBits(min(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.x, var_1.x, -22427i, var_1.x) & vec4<i32>(-2147483647i, var_1.x, var_1.x, var_1.x), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, 34331i, 22419i, 2147483647i), vec4<i32>(var_1.x, var_1.x, 1i, var_1.x))), -(~vec4<i32>(22813i, 0i, var_1.x, 2147483647i)))), vec4<f32>(var_5.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(344f, _wgslsmith_f_op_f32(1718f - 123f)) - _wgslsmith_f_op_f32(floor(func_5(Struct_2(var_1.x, Struct_1(vec3<i32>(47721i, var_1.x, var_1.x), vec3<i32>(4198i, -49820i, -25107i)), Struct_1(vec3<i32>(var_1.x, 1i, var_1.x), vec3<i32>(47342i, var_1.x, -32584i)), Struct_1(vec3<i32>(var_1.x, 2147483647i, var_1.x), vec3<i32>(0i, -2147483647i, var_1.x)))).b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_5.a)) * 539f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.b) * _wgslsmith_f_op_f32(trunc(1857f)))), var_5.b));
}

