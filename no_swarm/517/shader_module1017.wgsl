struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(i32(-2147483648), -6320i, -25815i, 0i, 2744i, -38926i, 1i, -1i, 41105i, 2147483647i);

var<private> global1: array<vec4<i32>, 20> = array<vec4<i32>, 20>(vec4<i32>(-12140i, -1i, -1i, 10747i), vec4<i32>(27513i, 46457i, 52253i, 56277i), vec4<i32>(-1i, 2820i, -1i, 1i), vec4<i32>(18913i, 38861i, -1i, -4281i), vec4<i32>(2147483647i, -10454i, -7513i, -8913i), vec4<i32>(1i, 47180i, -2807i, 0i), vec4<i32>(-1i, 1i, -1i, 61647i), vec4<i32>(1i, i32(-2147483648), -37138i, -1i), vec4<i32>(-1i, -65258i, -1585i, 0i), vec4<i32>(0i, -6681i, 22930i, 27850i), vec4<i32>(0i, i32(-2147483648), -14819i, -30777i), vec4<i32>(i32(-2147483648), 1i, -68405i, -1i), vec4<i32>(0i, 2147483647i, -1i, 16927i), vec4<i32>(14578i, -1i, -1i, -27026i), vec4<i32>(-1i, 1i, 13767i, 12452i), vec4<i32>(14482i, -1i, 5164i, 38586i), vec4<i32>(18210i, 0i, 2147483647i, i32(-2147483648)), vec4<i32>(5571i, 105933i, -13733i, -44085i), vec4<i32>(-1i, 2147483647i, 57030i, -19576i), vec4<i32>(12701i, 2147483647i, i32(-2147483648), -31542i));

var<private> global2: Struct_1 = Struct_1(9532u, i32(-2147483648), 1u, -1079f, vec4<u32>(8046u, 4545u, 4294967295u, 0u));

var<private> global3: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(48128u, 2147483647i, 89256u, 596f, vec4<u32>(54921u, 37537u, 4294967295u, 1u)), Struct_1(1u, 16616i, 1u, 669f, vec4<u32>(39939u, 58777u, 1u, 4294967295u)), Struct_1(1784u, 0i, 109639u, 594f, vec4<u32>(15476u, 31858u, 1u, 4294967295u)), Struct_1(60756u, -43822i, 4294967295u, -1872f, vec4<u32>(1u, 0u, 1961u, 1u)), Struct_1(0u, 0i, 4294967295u, -1635f, vec4<u32>(4688u, 4294967295u, 56959u, 56436u)), Struct_1(16345u, 0i, 12332u, 324f, vec4<u32>(1u, 1u, 5696u, 4294967295u)), Struct_1(29856u, 1i, 1u, 1000f, vec4<u32>(0u, 259u, 8350u, 4294967295u)), Struct_1(1u, 15366i, 1u, -421f, vec4<u32>(24377u, 1u, 1u, 6532u)), Struct_1(32990u, -1i, 9320u, 1313f, vec4<u32>(60307u, 0u, 20539u, 83821u)), Struct_1(0u, -1i, 21719u, 211f, vec4<u32>(37093u, 4294967295u, 7624u, 1u)), Struct_1(1u, -25111i, 0u, 750f, vec4<u32>(4294967295u, 0u, 32205u, 1u)), Struct_1(4294967295u, -53506i, 6638u, -147f, vec4<u32>(4294967295u, 6802u, 1u, 34549u)), Struct_1(9014u, -18302i, 76308u, 2121f, vec4<u32>(0u, 0u, 1u, 4294967295u)), Struct_1(4294967295u, 74669i, 4294967295u, 1233f, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u)), Struct_1(39488u, 2147483647i, 119464u, -751f, vec4<u32>(7560u, 67861u, 5294u, 8513u)), Struct_1(72962u, 0i, 0u, 1509f, vec4<u32>(14502u, 46666u, 0u, 36458u)), Struct_1(47283u, -1i, 4294967295u, -1003f, vec4<u32>(9179u, 28790u, 1u, 47085u)), Struct_1(56363u, -15814i, 28651u, -442f, vec4<u32>(0u, 3330u, 0u, 12202u)), Struct_1(49487u, 1i, 58799u, 161f, vec4<u32>(0u, 4294967295u, 63388u, 11433u)), Struct_1(0u, 0i, 21881u, 1000f, vec4<u32>(17155u, 64778u, 58111u, 0u)), Struct_1(34849u, 8336i, 1u, 569f, vec4<u32>(39932u, 17058u, 75522u, 66743u)), Struct_1(4294967295u, 0i, 36117u, -316f, vec4<u32>(9435u, 13061u, 73782u, 2661u)), Struct_1(79533u, 0i, 0u, 1260f, vec4<u32>(0u, 0u, 12799u, 35600u)), Struct_1(34919u, -41961i, 21658u, -200f, vec4<u32>(1u, 6979u, 0u, 17184u)), Struct_1(1u, -32499i, 6737u, 127f, vec4<u32>(23340u, 40402u, 0u, 4294967295u)), Struct_1(0u, 1i, 33176u, -1860f, vec4<u32>(7579u, 0u, 1u, 0u)), Struct_1(38781u, -1i, 4294967295u, -347f, vec4<u32>(62730u, 1u, 30902u, 4294967295u)), Struct_1(15361u, -12685i, 7956u, -522f, vec4<u32>(1u, 0u, 56199u, 4294967295u)), Struct_1(1u, 0i, 45962u, 1153f, vec4<u32>(1u, 52709u, 0u, 4294967295u)), Struct_1(86263u, 16394i, 11104u, -1000f, vec4<u32>(4294967295u, 4294967295u, 22224u, 4294967295u)), Struct_1(67607u, 24703i, 35552u, -731f, vec4<u32>(4294967295u, 0u, 0u, 80095u)), Struct_1(13828u, i32(-2147483648), 59588u, 1673f, vec4<u32>(15840u, 0u, 49748u, 1u)));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> bool {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.d), arg_3.a.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -234f))), _wgslsmith_f_op_f32(-global2.d));
    let var_1 = _wgslsmith_sub_i32(abs(_wgslsmith_dot_vec4_i32(reverseBits(global1[_wgslsmith_index_u32(firstLeadingBit(global2.c), 20u)]), ~global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2.c, 38306u), 20u)])), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], 30411i, global2.b, global0[_wgslsmith_index_u32(u_input.a.x, 10u)]), _wgslsmith_div_vec4_i32(~global1[_wgslsmith_index_u32(global2.a, 20u)], firstTrailingBit(global1[_wgslsmith_index_u32(0u, 20u)]))), -(~global1[_wgslsmith_index_u32(arg_1.a, 20u)])));
    global2 = Struct_1(u_input.a.x, 31794i, 21242u, arg_0.x, u_input.a);
    let var_2 = abs(-15387i | _wgslsmith_dot_vec2_i32(select(vec2<i32>(global2.b, 0i) >> (global2.e.zw % vec2<u32>(32u)), vec2<i32>(arg_1.b, 1816i) >> (vec2<u32>(26721u, 14918u) % vec2<u32>(32u)), !vec2<bool>(arg_3.b, arg_3.b)), (vec2<i32>(-10189i, global2.b) ^ vec2<i32>(-2635i, 2147483647i)) << (_wgslsmith_mult_vec2_u32(u_input.a.yz, vec2<u32>(4969u, 4294967295u)) % vec2<u32>(32u))));
    global3 = array<Struct_1, 32>();
    return (arg_3.b || select(select(false, false, true), all(!vec2<bool>(arg_3.b, arg_3.b)), !(arg_1.c >= 4294967295u))) && all(select(!(!vec2<bool>(arg_3.b, true)), !(!vec2<bool>(true, arg_3.b)), !(!vec2<bool>(false, arg_3.b))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    let var_0 = global3[_wgslsmith_index_u32(abs(global2.c), 32u)];
    let var_1 = 23679u;
    var var_2 = arg_3;
    global2 = Struct_1(firstTrailingBit(_wgslsmith_sub_u32(46871u, global2.e.x ^ 67799u)), reverseBits(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global2.b, global2.b, global2.b), vec3<i32>(-31495i, -21872i, var_2.b)), vec3<i32>(global0[_wgslsmith_index_u32(arg_3.c, 10u)], var_2.b, -2147483647i)), _wgslsmith_add_i32(_wgslsmith_sub_i32(-16492i, var_0.b), arg_3.b))), max(0u, arg_3.c), var_0.d, min(global2.e, ~vec4<u32>(_wgslsmith_sub_u32(arg_3.e.x, 7329u), _wgslsmith_dot_vec4_u32(var_2.e, arg_3.e), var_0.e.x, 1u)));
    global2 = Struct_1(arg_3.e.x, (22037i | min(global2.b, ~51016i)) << (var_1 % 32u), u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-337f))) - 550f), arg_3.e);
    return all(vec4<bool>(any(!vec2<bool>(arg_2.b, arg_1.b)), true, true, !arg_2.b));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: vec3<i32>) -> u32 {
    let var_0 = !vec2<bool>(func_4(Struct_2(vec4<f32>(-143f, global2.d, 790f, global2.d), all(vec3<bool>(false, true, true))), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d, global2.d, -441f, global2.d) - vec4<f32>(1483f, -2662f, global2.d, -131f)), func_3(vec3<f32>(1000f, -738f, global2.d), global3[_wgslsmith_index_u32(71667u, 32u)], global2.d, Struct_2(vec4<f32>(global2.d, 1003f, global2.d, 114f), true))), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d, -980f, 1250f, global2.d) * vec4<f32>(global2.d, -1070f, global2.d, global2.d)), true), Struct_1(firstTrailingBit(arg_0.x), -global0[_wgslsmith_index_u32(46399u, 10u)], ~44689u, -470f, ~u_input.a)), func_3(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.d, global2.d, global2.d))), Struct_1(1u, abs(46762i), arg_1 & 23555u, _wgslsmith_f_op_f32(468f * global2.d), ~u_input.a), global2.d, Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(-962f, -240f, global2.d, -1000f), vec4<f32>(-375f, 161f, global2.d, -286f)), true)));
    global1 = array<vec4<i32>, 20>();
    let var_1 = abs(arg_2);
    let var_2 = global1[_wgslsmith_index_u32(global2.a, 20u)];
    var var_3 = !any(!var_0);
    return _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a.x, arg_1), ~1u);
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_1(~u_input.a.x, ~global2.b, func_2(u_input.a, 31899u, ~_wgslsmith_mult_vec3_i32(abs(vec3<i32>(1i, -2147483647i, global0[_wgslsmith_index_u32(global2.e.x, 10u)])), _wgslsmith_add_vec3_i32(vec3<i32>(-31701i, global2.b, 0i), vec3<i32>(global2.b, -24966i, global0[_wgslsmith_index_u32(global2.a, 10u)])))), _wgslsmith_f_op_f32(-136f + global2.d), select(u_input.a, ~global2.e, all(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.d), -724f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global2.d))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.d, 3080f)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2.d, var_0.d))))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.d, 244f), vec2<f32>(var_0.d, var_0.d), vec2<bool>(false, true))))) + vec2<f32>(404f, var_0.d)));
    global1 = array<vec4<i32>, 20>();
    global0 = array<i32, 10>();
    global2 = global3[_wgslsmith_index_u32(4294967295u, 32u)];
    return Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, global2.d, _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(max(-1324f, var_1.x))), _wgslsmith_f_op_f32(-global2.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1135f), 1076f, _wgslsmith_f_op_f32(round(-819f)), -448f)), select(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true))), false);
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: vec4<u32>) -> f32 {
    global0 = array<i32, 10>();
    var var_0 = global3[_wgslsmith_index_u32(89457u, 32u)];
    var var_1 = _wgslsmith_mult_vec2_i32(select(_wgslsmith_add_vec2_i32(-vec2<i32>(arg_0.x, 0i), arg_0.zy << (vec2<u32>(var_0.a, 34552u) % vec2<u32>(32u))), arg_0.zz, !(arg_1.b & false)) & vec2<i32>(_wgslsmith_div_i32(i32(-1i) * -1i, 1i), 1i), arg_0.xz);
    var var_2 = arg_1.b;
    global0 = array<i32, 10>();
    return _wgslsmith_f_op_f32(-arg_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1036f * _wgslsmith_f_op_f32(func_5(vec3<i32>(min(global0[_wgslsmith_index_u32(global2.a, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)]), 13238i, select(global2.b, global0[_wgslsmith_index_u32(global2.e.x, 10u)], false)), func_1(), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d, global2.d, global2.d, global2.d)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-789f, 219f, global2.d, 941f) + vec4<f32>(1000f, 311f, global2.d, -467f)), vec4<bool>(true, false, true, false))), vec4<u32>(~u_input.a.x, ~global2.a, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(global2.c, u_input.a.x, 4294967295u, global2.a)), 4294967295u << (global2.e.x % 32u))))));
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(43407u, 4294967295u), 32u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-func_1().a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1948f, 639f)), _wgslsmith_f_op_f32(ceil(var_1.d)))), global2.d)), var_1.d) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 348f, 872f) - vec3<f32>(1089f, -601f, -104f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(475f, var_1.d, var_1.d))) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-851f, 330f, -2283f), vec3<f32>(var_0, -1409f, var_1.d)))))));
    global3 = array<Struct_1, 32>();
    var var_3 = Struct_1(~(~u_input.a.x | ~22394u) & _wgslsmith_mult_u32(firstLeadingBit(0u), 1u), 51242i, (_wgslsmith_mult_u32(37569u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, var_1.e.x), global2.e.yzx)) | global2.c) << ((((var_1.a & 0u) << (4294967295u % 32u)) << (abs(_wgslsmith_dot_vec4_u32(vec4<u32>(17669u, u_input.a.x, u_input.a.x, 14923u), vec4<u32>(4294967295u, 1u, 4294967295u, 1u))) % 32u)) % 32u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.d + var_1.d), _wgslsmith_f_op_f32(ceil(var_2.x)))), ~global2.e);
    var var_4 = global2.e.x;
    var_1 = Struct_1(1u, _wgslsmith_mod_i32(var_3.b | global2.b, -8122i), abs(select(~u_input.a.x, var_3.e.x, true) >> (func_2(vec4<u32>(39650u, 63837u, var_3.a, 4294967295u), _wgslsmith_div_u32(1u, 43498u), -vec3<i32>(-2147483647i, var_3.b, global0[_wgslsmith_index_u32(global2.e.x, 10u)])) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(vec3<i32>(10532i, var_3.b, var_3.b) ^ vec3<i32>(-1i, -17987i, global0[_wgslsmith_index_u32(71960u, 10u)]), func_1(), _wgslsmith_f_op_vec4_f32(vec4<f32>(-462f, 900f, global2.d, -905f) * vec4<f32>(-1085f, 2679f, -705f, 1000f)), global2.e)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_3.d)) + 364f))), select(vec4<u32>(_wgslsmith_mult_u32(14482u, 1u), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(global2.a, 57050u, var_1.e.x)), select(u_input.a.xyy, global2.e.wzz, vec3<bool>(false, false, false))), 1u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(47534u, u_input.a.x), var_1.a, abs(30103u))), _wgslsmith_div_vec4_u32(var_3.e, global2.e), select(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), false)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(38412u | _wgslsmith_clamp_u32(58878u, _wgslsmith_div_u32(var_1.c, global2.a), var_1.c)), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_3.c, 92349u, u_input.a.x) << (vec3<u32>(1u, var_3.c, 4294967295u) % vec3<u32>(32u)), ~u_input.a.wzz, ~vec3<u32>(111037u, u_input.a.x, u_input.a.x)), firstTrailingBit(~var_1.e.xwx)), vec3<u32>(4294967295u, global2.c, 0u)), -vec4<i32>(_wgslsmith_add_i32(var_1.b >> (var_3.a % 32u), _wgslsmith_div_i32(0i, -37686i)), countOneBits(global0[_wgslsmith_index_u32(1u, 10u)]), ~(-25837i), -_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(4294967295u, 10u)], global2.b)));
}

