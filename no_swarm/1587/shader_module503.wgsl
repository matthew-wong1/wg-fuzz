struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: f32,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 40093i;

var<private> global1: vec3<bool> = vec3<bool>(false, false, false);

var<private> global2: bool = true;

var<private> global3: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(50899u, true, 1000f, Struct_1(-1i, false, vec3<i32>(i32(-2147483648), 2147483647i, -58025i), 2147483647i, -60179i), vec3<f32>(-433f, 1060f, 1544f)), Struct_2(3246u, true, 1170f, Struct_1(-1i, false, vec3<i32>(2147483647i, 1i, 48418i), 13086i, 14299i), vec3<f32>(-1152f, -507f, -1246f)), Struct_2(1u, true, 674f, Struct_1(-84238i, true, vec3<i32>(i32(-2147483648), -1i, 4193i), 1i, 24864i), vec3<f32>(-1528f, 1521f, 225f)), Struct_2(3087u, true, 553f, Struct_1(-1i, true, vec3<i32>(i32(-2147483648), -42655i, 43433i), 0i, -20192i), vec3<f32>(280f, 559f, 1153f)), Struct_2(4294967295u, false, -1709f, Struct_1(i32(-2147483648), false, vec3<i32>(-27896i, 12981i, 2147483647i), 2147483647i, -1i), vec3<f32>(159f, -476f, 146f)), Struct_2(227u, false, 288f, Struct_1(2147483647i, false, vec3<i32>(i32(-2147483648), 54237i, 1i), i32(-2147483648), -28513i), vec3<f32>(-313f, -3126f, 468f)), Struct_2(13579u, true, -1574f, Struct_1(1i, true, vec3<i32>(-1i, 2147483647i, i32(-2147483648)), 13396i, 25108i), vec3<f32>(355f, 1316f, 1008f)), Struct_2(34772u, true, -2579f, Struct_1(1i, true, vec3<i32>(12232i, -1i, 29120i), -1i, -1i), vec3<f32>(-1293f, 654f, -586f)), Struct_2(1u, true, -711f, Struct_1(1i, true, vec3<i32>(-31222i, 1i, 1i), 2147483647i, 11342i), vec3<f32>(-1841f, 597f, 627f)), Struct_2(9765u, true, -825f, Struct_1(-1i, false, vec3<i32>(-1385i, i32(-2147483648), -13397i), 1i, 0i), vec3<f32>(-1000f, 1000f, 1000f)), Struct_2(4294967295u, true, 144f, Struct_1(-25400i, false, vec3<i32>(-1i, 6871i, 0i), -1i, 40546i), vec3<f32>(1216f, 440f, -912f)), Struct_2(4294967295u, true, 234f, Struct_1(-1i, false, vec3<i32>(1i, i32(-2147483648), 7846i), i32(-2147483648), 0i), vec3<f32>(124f, 1415f, -113f)), Struct_2(4294967295u, false, -191f, Struct_1(i32(-2147483648), false, vec3<i32>(2147483647i, i32(-2147483648), 8433i), -9190i, -48405i), vec3<f32>(-427f, 1000f, -192f)), Struct_2(41550u, false, 861f, Struct_1(1i, true, vec3<i32>(-129i, 2147483647i, -692i), 2147483647i, 1i), vec3<f32>(560f, 1594f, 1000f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> i32 {
    var var_0 = 40901i;
    let var_1 = -1317f;
    var var_2 = 9344i;
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * _wgslsmith_div_f32(736f, arg_2))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * arg_2)))))));
    let var_4 = true;
    return _wgslsmith_dot_vec2_i32(arg_1.c.yy << ((~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 26892u), vec2<u32>(62460u, u_input.a)) | _wgslsmith_mod_vec2_u32(select(vec2<u32>(u_input.a, 30460u), vec2<u32>(u_input.b, 4294967295u), vec2<bool>(true, true)), vec2<u32>(u_input.a, u_input.b))) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.a, -arg_1.e), _wgslsmith_sub_vec2_i32(-arg_3.c.zz, ~vec2<i32>(23523i, arg_3.d)), arg_3.c.zx));
}

fn func_2(arg_0: vec2<u32>) -> i32 {
    var var_0 = -_wgslsmith_div_vec3_i32(reverseBits(_wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(u_input.c, u_input.c, u_input.c)), vec3<i32>(u_input.c, u_input.c, -23673i))), vec3<i32>(func_3(!vec3<bool>(true, true, global1.x), Struct_1(u_input.c, global1.x, vec3<i32>(u_input.c, u_input.c, u_input.c), 25418i, 5536i), _wgslsmith_div_f32(1000f, -1546f), Struct_1(u_input.c, global1.x, vec3<i32>(u_input.c, -2147483647i, -2147483647i), -1i, u_input.c)), i32(-1i) * -8545i, u_input.c));
    var var_1 = Struct_1(62667i, true, ~max(vec3<i32>(-2147483647i, -64862i, 31259i) ^ (vec3<i32>(var_0.x, u_input.c, -1i) & vec3<i32>(u_input.c, -1i, 0i)), vec3<i32>(1i, var_0.x, -27417i)), -_wgslsmith_clamp_i32(var_0.x, countOneBits(var_0.x), var_0.x) << (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, arg_0.x, arg_0.x, u_input.a), min(vec4<u32>(arg_0.x, 22095u, u_input.b, u_input.b), vec4<u32>(arg_0.x, 1u, arg_0.x, arg_0.x))), select(vec4<u32>(arg_0.x, 4294967295u, arg_0.x, 37238u) & vec4<u32>(25168u, u_input.b, u_input.b, u_input.a), vec4<u32>(1u, 7557u, 4294967295u, 7403u) & vec4<u32>(arg_0.x, 120539u, arg_0.x, u_input.b), vec4<bool>(false, false, global1.x, global1.x))) % 32u), firstLeadingBit(u_input.c));
    global1 = vec3<bool>(true, all(!(!(!vec3<bool>(true, false, global1.x)))), false);
    var var_2 = ~_wgslsmith_div_vec2_i32(var_0.zx, abs(select(vec2<i32>(-2147483647i, u_input.c), abs(var_0.zz), any(vec2<bool>(global1.x, global1.x)))));
    global3 = array<Struct_2, 14>();
    return u_input.c;
}

fn func_1(arg_0: i32, arg_1: vec4<i32>, arg_2: vec2<f32>) -> bool {
    global0 = ~(arg_0 >> (u_input.b % 32u));
    global3 = array<Struct_2, 14>();
    global0 = func_2(~vec2<u32>(_wgslsmith_mult_u32(~1u, 0u), ~21371u));
    let var_0 = Struct_2(abs(u_input.b), !(!(!global1.x)), arg_2.x, Struct_1(u_input.c, !global1.x, select(-vec3<i32>(-2147483647i, -1i, arg_0), arg_1.xzz, true), _wgslsmith_div_i32(arg_1.x, countOneBits(~(-14772i))), arg_1.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, arg_2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-774f, 671f, 875f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, 1596f, arg_2.x))), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(632f, arg_2.x, _wgslsmith_div_f32(arg_2.x, 184f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-820f, 1203f, arg_2.x)))))));
    var var_1 = arg_2.x;
    return var_0.d.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<bool>(true & all(select(select(global1.xx, vec2<bool>(true, true), vec2<bool>(false, global1.x)), select(vec2<bool>(false, global1.x), global1.yx, global1.x), select(global1.yy, global1.zx, global1.x))), global1.x, func_1(~(62012i << (0u % 32u)), min(-(~vec4<i32>(0i, 0i, u_input.c, u_input.c)), vec4<i32>(abs(-2147483647i), ~u_input.c, _wgslsmith_add_i32(-45603i, 2147483647i), _wgslsmith_add_i32(0i, 40221i))), vec2<f32>(_wgslsmith_f_op_f32(-698f - -948f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1780f, -1012f), -1320f)))));
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1238f, -1000f, -2149f, -290f), vec4<f32>(1262f, -1172f, -857f, -439f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1423f, 1462f, 978f, 1107f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(303f, -981f, 390f, -1448f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1860f, 611f, 748f, 1147f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(540f, -1213f, 323f, -1077f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_0.ww)) * vec2<f32>(var_0.x, var_0.x))))), _wgslsmith_mod_i32(-2147483647i & u_input.c, ~1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.x - var_0.x), var_0.x) + var_0.wx) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, -479f)))));
}

