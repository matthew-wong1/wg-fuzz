struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: f32,
    d: f32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(0u, false, 109f, 1199f), Struct_3(0u, false, 1454f, 530f), Struct_3(0u, true, -1238f, 1382f), Struct_3(1u, false, -572f, -1665f), Struct_3(4241u, false, -1145f, 571f), Struct_3(4294967295u, true, 1291f, -1905f), Struct_3(0u, true, 752f, -366f), Struct_3(73712u, true, -1000f, -186f), Struct_3(65607u, true, -1037f, -334f), Struct_3(49963u, false, 1161f, -1445f), Struct_3(33900u, true, 1317f, 175f), Struct_3(1u, false, -787f, 1000f), Struct_3(0u, true, -1520f, 1145f), Struct_3(19636u, true, 1000f, 1117f), Struct_3(1u, true, 273f, -1000f), Struct_3(0u, false, 1015f, 448f), Struct_3(0u, true, -781f, -1756f), Struct_3(2235u, false, -951f, -574f), Struct_3(45835u, true, 443f, -694f), Struct_3(45760u, false, 1822f, 522f), Struct_3(26391u, false, 1499f, 156f), Struct_3(0u, false, -1000f, -554f), Struct_3(14705u, false, 259f, -1770f), Struct_3(4294967295u, true, 295f, 1409f), Struct_3(52655u, false, -842f, 1804f), Struct_3(1u, false, 345f, -1953f), Struct_3(90171u, true, 1430f, -1146f), Struct_3(4294967295u, true, -1513f, 459f), Struct_3(1u, true, -708f, -578f), Struct_3(5896u, true, -507f, 785f), Struct_3(10333u, true, 1415f, -272f));

var<private> global1: array<Struct_4, 9>;

var<private> global2: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(46394u, 4294967295u, 0u), vec3<u32>(0u, 34466u, 4294967295u), vec3<u32>(38633u, 0u, 0u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(4294967295u, 37622u, 21788u), vec3<u32>(19328u, 0u, 4294967295u), vec3<u32>(9502u, 4831u, 4294967295u), vec3<u32>(20939u, 0u, 21706u), vec3<u32>(4294967295u, 25748u, 19415u), vec3<u32>(32427u, 8715u, 58569u), vec3<u32>(13258u, 34862u, 1u), vec3<u32>(25734u, 5143u, 3649u), vec3<u32>(1u, 0u, 6399u), vec3<u32>(22761u, 0u, 19636u), vec3<u32>(0u, 31661u, 1u), vec3<u32>(1u, 88434u, 4294967295u), vec3<u32>(0u, 0u, 40633u), vec3<u32>(86646u, 4294967295u, 65231u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec4<f32>) -> i32 {
    var var_0 = Struct_1(u_input.c);
    let var_1 = _wgslsmith_clamp_u32(reverseBits(_wgslsmith_div_u32(46648u, 4294967295u)), _wgslsmith_dot_vec2_u32(u_input.a.zy, ~(vec2<u32>(u_input.a.x, 4294967295u) ^ u_input.e)), ~u_input.e.x);
    var var_2 = any(vec4<bool>(true, !any(arg_0.a.xy), all(!vec4<bool>(false, arg_0.a.x, false, arg_0.a.x)) | all(vec2<bool>(arg_0.a.x, arg_0.a.x)), any(!(!vec4<bool>(arg_0.a.x, arg_0.a.x, true, arg_0.a.x)))));
    var_2 = arg_0.a.x;
    let var_3 = Struct_1(~var_0.a);
    return countOneBits(_wgslsmith_sub_i32(var_0.a, countOneBits(0i)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> vec3<bool> {
    var var_0 = -1i;
    var_0 = arg_3;
    global2 = array<vec3<u32>, 18>();
    global2 = array<vec3<u32>, 18>();
    global1 = array<Struct_4, 9>();
    return arg_1.a;
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: vec3<bool>) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(~u_input.a.x, 9u)];
    global0 = array<Struct_3, 31>();
    global0 = array<Struct_3, 31>();
    var var_1 = Struct_2(arg_2, arg_1.b);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_0.a.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1304f)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(311f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.a.x, -1524f, arg_2.x)), var_0.a.x)))));
    return _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(max(-1423f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2, var_2)))))));
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_5(53285u, Struct_2(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(false, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true)), -(~u_input.b.zx)), func_4(vec4<bool>(false, any(vec3<bool>(true, true, true)), true, true), Struct_2(vec3<bool>(true, false, true), abs(u_input.b.yx)), true, _wgslsmith_mult_i32(func_3(Struct_2(vec3<bool>(false, true, false), vec2<i32>(u_input.d, u_input.b.x)), global1[_wgslsmith_index_u32(u_input.e.x, 9u)], vec4<f32>(-622f, 1054f, 599f, 481f)), u_input.c >> (u_input.e.x % 32u))))), 516f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(func_5(u_input.e.x, Struct_2(vec3<bool>(false, true, true), u_input.b.yy), vec3<bool>(false, true, true))))) * 1000f) + 1002f));
    var var_1 = u_input.d | 1i;
    return Struct_1(2147483647i);
}

fn func_6(arg_0: u32, arg_1: Struct_1) -> bool {
    global0 = array<Struct_3, 31>();
    var var_0 = vec3<f32>(_wgslsmith_div_f32(-1010f, 242f), -254f, _wgslsmith_f_op_f32(func_5(9257u, Struct_2(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), max(~u_input.b.zy, ~vec2<i32>(5887i, 17122i))), vec3<bool>(true, all(vec4<bool>(true, true, true, true)), ~11436i <= arg_1.a))));
    let var_1 = global1[_wgslsmith_index_u32(firstTrailingBit(~(~u_input.e.x)), 9u)];
    var var_2 = 1406f > _wgslsmith_f_op_f32(func_5(u_input.a.x, Struct_2(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), reverseBits(u_input.b.xz) >> (u_input.e % vec2<u32>(32u))), !vec3<bool>(true, true, 949f > var_0.x)));
    var var_3 = Struct_3(abs(arg_0), -336f > var_0.x, -577f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-100f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1984f)))))));
    return var_3.b;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec2<i32>, arg_3: bool) -> bool {
    let var_0 = vec3<i32>(_wgslsmith_div_i32(-43497i, 7498i), max(1i, u_input.b.x), arg_2.x);
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(sign(527f)), _wgslsmith_f_op_f32(445f + arg_1), _wgslsmith_div_f32(-1332f, -128f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(214f, 737f, arg_1, -1000f)))))));
    global2 = array<vec3<u32>, 18>();
    global1 = array<Struct_4, 9>();
    global1 = array<Struct_4, 9>();
    return func_6(max(~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) & min(u_input.e.x, 54646u), select(0u, max(~u_input.a.x, ~4294967295u), arg_3)), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!vec3<bool>(false, func_1(false, _wgslsmith_f_op_f32(sign(-2270f)), u_input.b.xy, true), !any(vec2<bool>(false, true))), u_input.b.yy ^ -u_input.b.xx);
    let var_1 = Struct_4(vec4<f32>(_wgslsmith_div_f32(1000f, -1000f), -964f, -194f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(137f, 1114f)), -180f))));
    let var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<u32>(u_input.e.x, 4294967295u, 24739u) ^ u_input.a.xzw) >> (_wgslsmith_mod_vec3_u32(countOneBits(global2[_wgslsmith_index_u32(abs(0u), 18u)]), ~vec3<u32>(u_input.e.x, u_input.a.x, 4294967295u)) % vec3<u32>(32u)), _wgslsmith_div_f32(var_2.a.x, _wgslsmith_f_op_f32(func_5(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.a.xxw, u_input.a.xwy), max(2039u, 1u), ~u_input.a.x), Struct_2(!var_0.a, _wgslsmith_mult_vec2_i32(u_input.b.zx, var_0.b)), select(vec3<bool>(true, var_0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, true, var_0.a.x), true)))), select(~firstLeadingBit(vec2<i32>(-32751i, var_0.b.x)), ~max(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, 970i), u_input.b.zy), vec2<i32>(var_0.b.x, var_0.b.x)), select(var_0.a.yy, vec2<bool>(all(vec3<bool>(true, var_0.a.x, var_0.a.x)), all(var_0.a.xz)), true)), -(reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(68i, -18440i, -47562i, var_0.b.x), vec4<i32>(var_0.b.x, var_0.b.x, var_0.b.x, 28838i))) & reverseBits(~vec4<i32>(-22427i, -14771i, var_0.b.x, var_0.b.x))));
}

