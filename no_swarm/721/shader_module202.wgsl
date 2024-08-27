struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1000f, -1049f, 583f);

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, false), vec2<i32>(1i, 26585i), vec3<i32>(-1i, -37675i, -31491i));

var<private> global2: Struct_2 = Struct_2(vec3<bool>(false, true, true));

var<private> global3: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec2<bool>(false, true), vec2<i32>(1i, -2294i), vec3<i32>(27283i, 0i, 17745i)), Struct_1(vec2<bool>(false, false), vec2<i32>(21232i, -25658i), vec3<i32>(-2861i, 2147483647i, 0i)), Struct_1(vec2<bool>(false, false), vec2<i32>(3229i, -28355i), vec3<i32>(0i, -29339i, -24812i)), Struct_1(vec2<bool>(true, false), vec2<i32>(0i, 0i), vec3<i32>(-29553i, 1i, 2147483647i)), Struct_1(vec2<bool>(true, true), vec2<i32>(-1i, 11588i), vec3<i32>(-1336i, 0i, -2799i)), Struct_1(vec2<bool>(true, false), vec2<i32>(1i, 1i), vec3<i32>(0i, 25166i, 1i)), Struct_1(vec2<bool>(false, false), vec2<i32>(-387i, 0i), vec3<i32>(-15495i, i32(-2147483648), -1i)), Struct_1(vec2<bool>(false, false), vec2<i32>(37646i, 0i), vec3<i32>(37334i, i32(-2147483648), 2147483647i)), Struct_1(vec2<bool>(true, false), vec2<i32>(-1i, -3590i), vec3<i32>(1777i, 12084i, -1548i)), Struct_1(vec2<bool>(true, true), vec2<i32>(i32(-2147483648), 16578i), vec3<i32>(-1i, -6967i, -829i)), Struct_1(vec2<bool>(false, true), vec2<i32>(1i, 0i), vec3<i32>(1i, -15293i, i32(-2147483648))), Struct_1(vec2<bool>(false, true), vec2<i32>(-2422i, 8555i), vec3<i32>(31860i, i32(-2147483648), -36621i)), Struct_1(vec2<bool>(false, false), vec2<i32>(-1i, -982i), vec3<i32>(-16218i, 0i, 0i)), Struct_1(vec2<bool>(true, false), vec2<i32>(2147483647i, -1i), vec3<i32>(0i, -1i, 19514i)), Struct_1(vec2<bool>(false, false), vec2<i32>(2147483647i, -52092i), vec3<i32>(48634i, 37109i, 25806i)), Struct_1(vec2<bool>(true, false), vec2<i32>(i32(-2147483648), 30806i), vec3<i32>(-14079i, i32(-2147483648), -5536i)), Struct_1(vec2<bool>(true, false), vec2<i32>(i32(-2147483648), -11474i), vec3<i32>(39045i, 1i, 9233i)), Struct_1(vec2<bool>(false, true), vec2<i32>(51765i, 2147483647i), vec3<i32>(49290i, 0i, -13350i)), Struct_1(vec2<bool>(false, true), vec2<i32>(31199i, -1i), vec3<i32>(0i, 3913i, -2922i)), Struct_1(vec2<bool>(false, true), vec2<i32>(28529i, -26814i), vec3<i32>(29573i, 36707i, -32133i)), Struct_1(vec2<bool>(false, true), vec2<i32>(-11432i, -1i), vec3<i32>(i32(-2147483648), 1i, 2147483647i)), Struct_1(vec2<bool>(false, true), vec2<i32>(41612i, -27494i), vec3<i32>(2147483647i, -72295i, 35027i)), Struct_1(vec2<bool>(true, false), vec2<i32>(10183i, 1891i), vec3<i32>(60916i, 1i, i32(-2147483648))), Struct_1(vec2<bool>(false, false), vec2<i32>(30300i, 36169i), vec3<i32>(11413i, 0i, i32(-2147483648))), Struct_1(vec2<bool>(true, false), vec2<i32>(-18924i, i32(-2147483648)), vec3<i32>(1i, 2147483647i, 1i)), Struct_1(vec2<bool>(false, false), vec2<i32>(14295i, 0i), vec3<i32>(1i, -1i, 15248i)));

var<private> global4: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec2<bool>(true, false), vec2<i32>(-54972i, 37103i), vec3<i32>(0i, -1i, 17347i)), Struct_1(vec2<bool>(true, true), vec2<i32>(-2021i, 51491i), vec3<i32>(-27734i, 98208i, i32(-2147483648))), Struct_1(vec2<bool>(false, false), vec2<i32>(-7582i, 56530i), vec3<i32>(i32(-2147483648), 19740i, 1i)), Struct_1(vec2<bool>(false, false), vec2<i32>(1i, -14400i), vec3<i32>(-1i, -37182i, 0i)), Struct_1(vec2<bool>(false, true), vec2<i32>(1i, 48582i), vec3<i32>(12087i, i32(-2147483648), 2147483647i)), Struct_1(vec2<bool>(true, true), vec2<i32>(53310i, -1769i), vec3<i32>(2147483647i, 2147483647i, 54826i)), Struct_1(vec2<bool>(false, false), vec2<i32>(0i, 0i), vec3<i32>(i32(-2147483648), 0i, -1756i)), Struct_1(vec2<bool>(true, false), vec2<i32>(19420i, 13881i), vec3<i32>(-39770i, 1i, 1i)), Struct_1(vec2<bool>(true, true), vec2<i32>(-10789i, -6955i), vec3<i32>(-1i, -50978i, -4874i)), Struct_1(vec2<bool>(true, false), vec2<i32>(0i, -3561i), vec3<i32>(i32(-2147483648), i32(-2147483648), -39241i)), Struct_1(vec2<bool>(true, false), vec2<i32>(-48410i, 1i), vec3<i32>(12652i, i32(-2147483648), -46916i)), Struct_1(vec2<bool>(false, true), vec2<i32>(2147483647i, 27477i), vec3<i32>(i32(-2147483648), i32(-2147483648), 0i)), Struct_1(vec2<bool>(false, false), vec2<i32>(2147483647i, -1i), vec3<i32>(-40668i, 0i, -9232i)), Struct_1(vec2<bool>(false, false), vec2<i32>(62146i, 0i), vec3<i32>(32915i, 2147483647i, 3947i)), Struct_1(vec2<bool>(false, false), vec2<i32>(1i, 0i), vec3<i32>(0i, 1i, 38394i)), Struct_1(vec2<bool>(true, true), vec2<i32>(-1i, -934i), vec3<i32>(-5115i, 0i, 2147483647i)), Struct_1(vec2<bool>(false, false), vec2<i32>(1i, -45422i), vec3<i32>(-20719i, -12812i, i32(-2147483648))), Struct_1(vec2<bool>(true, true), vec2<i32>(-4350i, -46617i), vec3<i32>(-21777i, -8536i, 4172i)), Struct_1(vec2<bool>(true, true), vec2<i32>(-1i, 49302i), vec3<i32>(1i, i32(-2147483648), 0i)), Struct_1(vec2<bool>(false, true), vec2<i32>(0i, -39508i), vec3<i32>(8998i, 26777i, i32(-2147483648))), Struct_1(vec2<bool>(true, false), vec2<i32>(-9910i, i32(-2147483648)), vec3<i32>(2147483647i, -45757i, 30798i)), Struct_1(vec2<bool>(false, true), vec2<i32>(-585i, i32(-2147483648)), vec3<i32>(2147483647i, 23224i, 0i)), Struct_1(vec2<bool>(true, false), vec2<i32>(1i, 78555i), vec3<i32>(i32(-2147483648), -15903i, 999i)), Struct_1(vec2<bool>(true, false), vec2<i32>(-1i, -1i), vec3<i32>(32975i, i32(-2147483648), -57814i)), Struct_1(vec2<bool>(true, false), vec2<i32>(i32(-2147483648), 2147483647i), vec3<i32>(-55941i, 0i, 27445i)), Struct_1(vec2<bool>(false, true), vec2<i32>(0i, 0i), vec3<i32>(44862i, 26682i, 10600i)), Struct_1(vec2<bool>(false, true), vec2<i32>(1i, -31902i), vec3<i32>(1i, i32(-2147483648), -9731i)), Struct_1(vec2<bool>(false, true), vec2<i32>(-49733i, -25049i), vec3<i32>(2147483647i, 2147483647i, i32(-2147483648))), Struct_1(vec2<bool>(true, true), vec2<i32>(21949i, 6156i), vec3<i32>(0i, 2147483647i, 2147483647i)), Struct_1(vec2<bool>(false, true), vec2<i32>(-74430i, 58237i), vec3<i32>(i32(-2147483648), 11078i, 1i)), Struct_1(vec2<bool>(true, true), vec2<i32>(i32(-2147483648), 10118i), vec3<i32>(5588i, -14050i, i32(-2147483648))));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    var var_0 = global0.x;
    var var_1 = Struct_2(global2.a);
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(429f)), -244f, global0.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-100f, _wgslsmith_f_op_f32(trunc(784f)), _wgslsmith_f_op_f32(trunc(-1297f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1887f, global0.x, 930f) - vec3<f32>(416f, global0.x, 949f))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1052f, global0.x, -1000f)))))));
    let var_2 = vec2<u32>(~(~max(~4920u, countOneBits(51488u))), ~(~1u));
    global1 = Struct_1(!select(global2.a.xx, select(global1.a, vec2<bool>(global2.a.x, false), true), select(vec2<bool>(false, var_1.a.x), vec2<bool>(true, true), global2.a.xy)), min(global1.b, countOneBits(countOneBits(vec2<i32>(2823i, global1.c.x)))) | vec2<i32>(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-1i, global1.c.x))), ~abs(~u_input.a.wxx & vec3<i32>(u_input.a.x, 9995i, global1.c.x)));
    return arg_0.x;
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = -516f;
    let var_1 = Struct_2(!(!global2.a));
    global1 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(44544u, select(4294967295u, max(func_3(vec2<u32>(16226u, 9617u)), ~42178u) & 1u, true)), 26u)];
    var var_2 = -u_input.a.x;
    global4 = array<Struct_1, 31>();
    return var_1;
}

fn func_1(arg_0: u32, arg_1: bool) -> vec3<f32> {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(floor(882f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, 742f) * vec3<f32>(global0.x, -383f, global0.x)), any(vec3<bool>(false, true, true)))))));
    let var_0 = max(_wgslsmith_dot_vec4_i32(u_input.a, _wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(-35263i, global1.b.x, -2147483647i, 1i) | vec4<i32>(24531i, u_input.a.x, global1.b.x, u_input.a.x)) << (~(~vec4<u32>(44793u, arg_0, 7850u, 6176u)) % vec4<u32>(32u))), -1i);
    var var_1 = 19593u;
    var var_2 = global0.x;
    let var_3 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(max(2404f, -1535f)))))), global0.zx);
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -283f, global0.x) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(571f, -737f, 467f), vec3<f32>(1126f, -387f, global0.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(350f, -602f, global0.x)), select(global2.a, global2.a, true))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-954f, 106f, _wgslsmith_f_op_f32(global0.x * 297f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_1(abs(max(5199u, 79952u)), true))))));
    global1 = global3[_wgslsmith_index_u32(firstTrailingBit(57191u), 26u)];
    let var_0 = !(!(!global1.a.x));
    var var_1 = vec2<u32>(_wgslsmith_sub_u32(abs(_wgslsmith_clamp_u32(_wgslsmith_add_u32(17653u, 1u), 34167u, 0u)), firstTrailingBit(abs(4294967295u))), ~_wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 1u))) | ~1u);
    var var_2 = Struct_2(global2.a);
    var_2 = Struct_2(vec3<bool>(false, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_div_u32(var_1.x, firstLeadingBit(~var_1.x))));
}

