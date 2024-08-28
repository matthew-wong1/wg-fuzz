struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
    d: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(37154i, Struct_1(2147483647i, vec3<i32>(22069i, 9735i, -18651i), vec2<u32>(4294967295u, 1u), vec4<bool>(false, false, true, true), 560f)), Struct_3(-34384i, Struct_1(-36487i, vec3<i32>(2147483647i, 7950i, 44443i), vec2<u32>(4294967295u, 16738u), vec4<bool>(false, true, false, false), 1000f)), Struct_3(0i, Struct_1(2498i, vec3<i32>(20730i, 2147483647i, 0i), vec2<u32>(1u, 0u), vec4<bool>(true, true, false, false), -1287f)), Struct_3(i32(-2147483648), Struct_1(392i, vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), vec2<u32>(1u, 60639u), vec4<bool>(true, true, false, false), -492f)), Struct_3(651i, Struct_1(0i, vec3<i32>(62439i, 12891i, 89723i), vec2<u32>(79975u, 0u), vec4<bool>(true, true, false, true), 777f)), Struct_3(0i, Struct_1(i32(-2147483648), vec3<i32>(i32(-2147483648), 20476i, -32336i), vec2<u32>(36001u, 55074u), vec4<bool>(false, true, false, true), 1207f)), Struct_3(-77224i, Struct_1(2147483647i, vec3<i32>(19842i, -7596i, 43111i), vec2<u32>(35002u, 58998u), vec4<bool>(true, false, false, false), -1000f)), Struct_3(-11620i, Struct_1(-3789i, vec3<i32>(4086i, 0i, i32(-2147483648)), vec2<u32>(1u, 1u), vec4<bool>(true, true, false, false), -692f)), Struct_3(21618i, Struct_1(2147483647i, vec3<i32>(-31025i, i32(-2147483648), -56355i), vec2<u32>(11830u, 19778u), vec4<bool>(true, true, false, true), -2410f)), Struct_3(0i, Struct_1(1i, vec3<i32>(-1i, -38375i, 1i), vec2<u32>(50935u, 1u), vec4<bool>(false, true, false, true), 1000f)), Struct_3(49089i, Struct_1(1i, vec3<i32>(-18265i, 32125i, 1i), vec2<u32>(0u, 68509u), vec4<bool>(false, false, true, true), 720f)), Struct_3(8010i, Struct_1(-971i, vec3<i32>(30321i, 2147483647i, 18879i), vec2<u32>(2678u, 1u), vec4<bool>(true, false, true, true), -181f)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: bool, arg_1: Struct_3) -> vec3<u32> {
    var var_0 = vec3<i32>(-1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -21571i, -17181i, ~arg_1.a, u_input.d), ~(~vec4<i32>(-55377i, u_input.c.x, -1i, 39760i))), 20124i);
    var var_1 = arg_1;
    global1 = array<Struct_3, 12>();
    let var_2 = !arg_1.b.d.x;
    let var_3 = _wgslsmith_mod_vec2_i32(~(~u_input.c), -_wgslsmith_mult_vec2_i32(select(var_1.b.b.xx, -var_0.zz, vec2<bool>(true, true)), vec2<i32>(var_0.x ^ u_input.b, 2147483647i)));
    return u_input.a.zwy;
}

fn func_3() -> u32 {
    var var_0 = false;
    global0 = !vec3<bool>(global0.x & global0.x, all(select(!vec4<bool>(global0.x, global0.x, true, true), !vec4<bool>(global0.x, global0.x, true, global0.x), select(vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(false, false, global0.x, global0.x), false))), true);
    let var_1 = abs(((~vec4<i32>(11606i, u_input.b, -20478i, 26985i) | vec4<i32>(u_input.d, u_input.d, 55456i, 14477i)) & _wgslsmith_mult_vec4_i32(vec4<i32>(-29374i, 2147483647i, u_input.b, u_input.c.x), vec4<i32>(14986i, u_input.c.x, u_input.d, -2147483647i))) & _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i), vec4<i32>(2147483647i, u_input.c.x, -39117i, u_input.d)), vec4<i32>(-1i) * -vec4<i32>(u_input.d, -12604i, 2147483647i, -29448i)));
    let var_2 = Struct_1(_wgslsmith_sub_i32(-select(u_input.c.x, -19228i, global0.x), _wgslsmith_clamp_i32(0i, max(var_1.x, var_1.x), abs(_wgslsmith_div_i32(-1i, 1i)))), vec3<i32>(u_input.c.x, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-1i | u_input.d, _wgslsmith_clamp_i32(u_input.c.x, -1i, var_1.x), -u_input.d), ~(-13527i)), firstTrailingBit(u_input.c.x) & var_1.x), vec2<u32>(~u_input.a.x, u_input.a.x), select(vec4<bool>(true, all(vec3<bool>(false, global0.x, true)), global0.x, all(vec3<bool>(global0.x, false, false))), !(!vec4<bool>(false, global0.x, global0.x, true)), !((u_input.a.x < u_input.a.x) && (false != global0.x))), -1113f);
    var var_3 = Struct_2(~abs(u_input.c.x), Struct_1(countOneBits(1i), ~var_2.b, vec2<u32>(~1u, ~27685u) << (var_2.c % vec2<u32>(32u)), var_2.d, -315f), var_1.yx, _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a.x, ~_wgslsmith_dot_vec2_u32(u_input.a.wy, vec2<u32>(40284u, 62831u))), min(~u_input.a.x, var_2.c.x << (u_input.a.x % 32u))));
    return func_2(true, global1[_wgslsmith_index_u32(var_3.b.c.x, 12u)]).x;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    global1 = array<Struct_3, 12>();
    let var_0 = ~select(~(~vec3<u32>(u_input.a.x, u_input.a.x, 1u)), func_2(u_input.d > u_input.d, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~0u, u_input.a.x, u_input.a.x), 12u)]), arg_0.zwx);
    let var_1 = -vec2<i32>(u_input.c.x, _wgslsmith_dot_vec2_i32(u_input.c, -u_input.c));
    global1 = array<Struct_3, 12>();
    let var_2 = Struct_1(var_1.x, firstLeadingBit(firstTrailingBit(vec3<i32>(_wgslsmith_add_i32(var_1.x, -2147483647i), u_input.d, reverseBits(-33173i)))), max(vec2<u32>(u_input.a.x & func_3(), func_2(global0.x, global1[_wgslsmith_index_u32(var_0.x, 12u)]).x | 1u), select(vec2<u32>(u_input.a.x, 5111u) & var_0.yy, select(~vec2<u32>(var_0.x, 1u), ~var_0.zy, vec2<bool>(true, true)), !select(vec2<bool>(true, false), arg_0.xw, false))), !select(arg_0, arg_0, !vec4<bool>(arg_0.x, true, arg_0.x, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-472f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1259f), _wgslsmith_f_op_f32(-520f + 1632f))))));
    return Struct_1(-2147483647i, vec3<i32>(-var_1.x, -2147483647i, i32(-1i) * -45612i), vec2<u32>(0u, ~1u), select(select(vec4<bool>(!arg_0.x, all(vec3<bool>(arg_0.x, global0.x, false)), !arg_0.x, select(var_2.d.x, arg_0.x, true)), select(arg_0, var_2.d, arg_0.x), var_2.d.x), var_2.d, false), _wgslsmith_f_op_f32(var_2.e * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.e))) - -2048f)));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.e, 1277f, global0.x)) - -153f);
    global0 = func_1(vec4<bool>(arg_0.d.x, !(!select(false, false, true)), true, true)).d.yyx;
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1112f, 581f, _wgslsmith_f_op_f32(-arg_0.e), -1506f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1385f, arg_0.e, 1000f, arg_0.e))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e, 659f, -289f, 756f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.e, arg_0.e, arg_0.e, arg_0.e)))))), vec4<f32>(arg_0.e, 1008f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_0.e)))), _wgslsmith_f_op_f32(-arg_0.e)))), arg_0.d));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.e), var_1.x)) * var_1.x);
    var var_3 = Struct_3(u_input.b, func_1(arg_0.d));
    return Struct_2(arg_0.b.x, var_3.b, -var_3.b.b.yz, var_3.b.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-493f)) - -266f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1736f))))), -259f);
    var var_1 = func_4(func_1(vec4<bool>(!global0.x, all(!vec4<bool>(global0.x, true, global0.x, global0.x)), global0.x, global0.x)));
    let var_2 = var_0.x;
    let var_3 = _wgslsmith_mod_i32(u_input.b, u_input.b);
    var var_4 = var_1.b;
    var_1 = Struct_2(26350i, Struct_1(min(min(~var_4.a, ~(-16580i)), _wgslsmith_sub_i32(-1i, -46229i) >> (0u % 32u)), max(vec3<i32>(~(-2147483647i), ~32115i, -u_input.d), _wgslsmith_sub_vec3_i32(abs(var_4.b), var_4.b)), _wgslsmith_div_vec2_u32(vec2<u32>(firstLeadingBit(4294967295u), 52489u), select(var_1.b.c, abs(u_input.a.zw), !vec2<bool>(false, var_1.b.d.x))), vec4<bool>(select(global0.x, any(vec2<bool>(true, false)), !var_1.b.d.x), !var_4.d.x, false, true), _wgslsmith_f_op_f32(var_4.e - _wgslsmith_f_op_f32(-var_1.b.e))), vec2<i32>(var_4.a, 0i), func_4(var_1.b).d);
    var var_5 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-658f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1012f))))))), _wgslsmith_f_op_f32(-628f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-534f * _wgslsmith_f_op_f32(var_5.e - 168f))))), _wgslsmith_div_i32(-(~(~var_4.a)), 65186i), min(u_input.a.ywy, firstLeadingBit(countOneBits(u_input.a.yzx))));
}

