struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<i32>,
    d: i32,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: i32,
    b: vec4<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

var<private> global1: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(vec3<u32>(0u, 4294967295u, 1u)), Struct_4(vec3<u32>(0u, 4294967295u, 1u)), Struct_4(vec3<u32>(4294967295u, 1u, 0u)), Struct_4(vec3<u32>(0u, 62379u, 0u)), Struct_4(vec3<u32>(23902u, 1u, 4294967295u)), Struct_4(vec3<u32>(17617u, 4294967295u, 57438u)), Struct_4(vec3<u32>(4294967295u, 50675u, 4294967295u)), Struct_4(vec3<u32>(47359u, 1163u, 0u)), Struct_4(vec3<u32>(27799u, 1u, 1509u)), Struct_4(vec3<u32>(24560u, 1u, 31514u)), Struct_4(vec3<u32>(1u, 4294967295u, 0u)), Struct_4(vec3<u32>(4294967295u, 1u, 66476u)), Struct_4(vec3<u32>(0u, 0u, 67257u)), Struct_4(vec3<u32>(0u, 1u, 29504u)), Struct_4(vec3<u32>(1930u, 4294967295u, 17842u)), Struct_4(vec3<u32>(0u, 2357u, 0u)), Struct_4(vec3<u32>(46533u, 17965u, 20904u)));

var<private> global2: array<u32, 7>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = arg_1.d;
    var var_1 = false;
    return Struct_2(!(!(true && select(true, false, false))), arg_1, -1000f);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<i32>) -> vec3<bool> {
    global1 = array<Struct_4, 17>();
    global0 = array<u32, 5>();
    let var_0 = Struct_2(true, arg_1.b, -478f);
    let var_1 = Struct_5(abs(_wgslsmith_dot_vec3_i32(u_input.b.xzw, select(u_input.b.zyz >> (arg_0 % vec3<u32>(32u)), u_input.b.xwz, false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-662f, 730f, -202f, _wgslsmith_f_op_f32(ceil(-1477f))) - vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.c))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2146f), arg_1.c, var_0.a)), 2780f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1.b.b.x, arg_1.b.d.x), _wgslsmith_f_op_f32(arg_2.a - var_0.b.b.x))))), var_0);
    var var_2 = _wgslsmith_f_op_f32(min(-1679f, _wgslsmith_f_op_f32(-func_2(_wgslsmith_div_i32(-var_1.a, 3967i), arg_2).c)));
    return !(!(!vec3<bool>(arg_1.a, arg_1.a, !var_1.c.a)));
}

fn func_1() -> bool {
    let var_0 = any(select(select(vec3<bool>(u_input.b.x >= u_input.b.x, true, true), vec3<bool>(true, true, u_input.b.x <= 0i), true), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), select(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), func_3(~u_input.e.wyz, func_2(-1i, Struct_1(572f, vec4<f32>(691f, 719f, 214f, -1867f), global2[_wgslsmith_index_u32(1u, 7u)], vec2<f32>(-1000f, 1481f))), func_2(-20096i, Struct_1(-1110f, vec4<f32>(389f, -577f, 122f, 651f), 4294967295u, vec2<f32>(1175f, 195f))).b, -u_input.b.wx), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)))));
    var var_1 = _wgslsmith_div_i32(_wgslsmith_mult_i32(max(1i, _wgslsmith_mult_i32(~411i, 12722i)), -18141i), reverseBits(reverseBits(~25893i)));
    var var_2 = func_2(_wgslsmith_mult_i32(u_input.b.x, ~_wgslsmith_add_i32(u_input.d, 1i)) ^ -abs(u_input.d), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2410f, -290f)) * -1224f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 600f, _wgslsmith_f_op_f32(-1000f - 210f), -854f)), 0u, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1292f), -295f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1495f * 407f))))).b;
    var_2 = Struct_1(-208f, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.a + -1254f), _wgslsmith_f_op_f32(107f + var_2.a))), 428f, _wgslsmith_f_op_f32(f32(-1f) * -498f), -1274f))), u_input.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d.x, -1036f)), _wgslsmith_f_op_vec2_f32(var_2.d * var_2.d))) + var_2.d)));
    let var_3 = func_2(-u_input.d, Struct_1(_wgslsmith_f_op_f32(exp2(var_2.a)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-629f, 1015f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1355f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(682f * 155f), 144f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d.x * var_2.a))), abs(~69870u), var_2.b.zx));
    return !var_0;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = -1425f;
    var var_1 = ~_wgslsmith_dot_vec2_u32(u_input.e.xw, vec2<u32>(1u, 4294967295u));
    let var_2 = func_2(u_input.b.x, func_2(_wgslsmith_clamp_i32(u_input.b.x, (-4117i >> (global0[_wgslsmith_index_u32(u_input.e.x, 5u)] % 32u)) >> (76074u % 32u), 30076i), func_2(min(-u_input.b.x, u_input.b.x), Struct_1(_wgslsmith_f_op_f32(712f * -252f), vec4<f32>(451f, -898f, -1234f, -881f), func_2(2147483647i, Struct_1(765f, vec4<f32>(782f, 815f, 227f, -822f), global2[_wgslsmith_index_u32(70318u, 7u)], vec2<f32>(-640f, 293f))).b.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(598f, 1000f)))).b).b).b.a;
    global1 = array<Struct_4, 17>();
    let var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, -953f, -110f)))) + vec3<f32>(var_2, -1454f, _wgslsmith_f_op_f32(-var_2)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(exp2(var_2)), _wgslsmith_f_op_f32(var_2 + -995f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    return Struct_1(var_2, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-519f, _wgslsmith_div_f32(-1506f, var_2), _wgslsmith_f_op_f32(sign(var_3.x)), var_2) - vec4<f32>(_wgslsmith_f_op_f32(min(-834f, var_3.x)), _wgslsmith_f_op_f32(f32(-1f) * -1175f), -774f, _wgslsmith_div_f32(var_3.x, var_3.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), 482f, var_2, _wgslsmith_f_op_f32(-var_3.x)))), max(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(70265u, 35649u, u_input.a, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 5u)], 7u)], 5u)]), vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 5u)], 78060u, arg_1.x, 4294967295u))), firstLeadingBit(select(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(72497u, 7u)], 7u)], 4294967295u, false))) & firstTrailingBit(_wgslsmith_add_u32(min(0u, 31705u), arg_1.x | u_input.c)), vec2<f32>(596f, var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 17>();
    var var_0 = func_4(vec4<bool>(func_1(), true && (true | (u_input.b.x > u_input.b.x)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), true), vec4<u32>(1u, select(global2[_wgslsmith_index_u32(u_input.c, 7u)], 4294967295u, _wgslsmith_dot_vec2_u32(u_input.e.zw, vec2<u32>(global0[_wgslsmith_index_u32(17093u, 5u)], u_input.e.x)) != global2[_wgslsmith_index_u32(~0u, 7u)]), 4294967295u, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.c, 76297u, u_input.a), vec3<u32>(4294967295u, u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(2125u, 7u)], 7u)], 5u)], 5u)])), firstLeadingBit(~vec3<u32>(48429u, global2[_wgslsmith_index_u32(1u, 7u)], 1u))), 7u)]));
    let var_1 = var_0.b.yx;
    let var_2 = func_3(~(~firstLeadingBit(vec3<u32>(2931u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(592u, 5u)], 5u)], var_0.c))), func_2(-2147483647i, func_4(vec4<bool>(true, true, false, true), u_input.e)), Struct_1(_wgslsmith_f_op_f32(round(108f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.d.x, -353f, var_1.x, 995f), var_0.b)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, 1322f, var_0.b.x, 539f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1017f, -314f, 259f, -1146f) + vec4<f32>(-1000f, var_0.b.x, var_0.a, var_1.x))), func_3(u_input.e.zxw, Struct_2(false, Struct_1(var_1.x, vec4<f32>(var_1.x, -541f, var_0.a, -1182f), u_input.c, vec2<f32>(-433f, var_0.b.x)), var_1.x), Struct_1(var_0.b.x, vec4<f32>(var_0.b.x, var_0.d.x, var_0.a, -492f), 0u, var_0.b.wz), -vec2<i32>(u_input.b.x, -29744i)).x)), min(select(var_0.c, _wgslsmith_dot_vec4_u32(u_input.e, u_input.e), true), ~25745u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(var_0.b.wz)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-var_0.d), vec2<f32>(var_0.a, var_1.x))), !func_3(u_input.e.zzx, Struct_2(false, Struct_1(1101f, vec4<f32>(var_1.x, 1027f, -1175f, var_0.d.x), 1u, var_0.b.wz), var_0.b.x), Struct_1(var_0.b.x, vec4<f32>(var_1.x, var_0.a, var_0.d.x, var_0.b.x), 11532u, vec2<f32>(-1000f, var_1.x)), vec2<i32>(u_input.d, u_input.d)).xy))), vec2<i32>(u_input.b.x >> (firstTrailingBit(~var_0.c) % 32u), min(-2147483647i, abs(u_input.b.x))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)));
    global0 = array<u32, 5>();
    let var_4 = 1u == var_0.c;
    global2 = array<u32, 7>();
    let var_5 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(_wgslsmith_div_i32(1i, 27531i), abs(45498i)) | u_input.b.x, _wgslsmith_f_op_f32(f32(-1f) * -2460f), u_input.b << (~u_input.e % vec4<u32>(32u)), ~max(~select(108369u, u_input.e.x, var_4), _wgslsmith_mod_u32(0u, _wgslsmith_div_u32(4294967295u, 1u))));
}

