struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(false, -2056f, vec3<bool>(true, false, true)), Struct_2(true, -1734f, vec3<bool>(true, true, true)), Struct_2(true, -510f, vec3<bool>(true, false, false)), Struct_2(true, 520f, vec3<bool>(true, true, false)), Struct_2(true, 116f, vec3<bool>(false, true, true)), Struct_2(false, 235f, vec3<bool>(true, true, true)), Struct_2(true, 227f, vec3<bool>(true, true, true)), Struct_2(true, 565f, vec3<bool>(false, false, true)), Struct_2(true, 708f, vec3<bool>(false, false, true)), Struct_2(false, 156f, vec3<bool>(false, true, true)), Struct_2(false, -150f, vec3<bool>(false, true, true)), Struct_2(false, 1000f, vec3<bool>(true, true, false)), Struct_2(true, 2867f, vec3<bool>(false, false, false)), Struct_2(true, -142f, vec3<bool>(true, false, false)), Struct_2(true, -351f, vec3<bool>(false, true, true)), Struct_2(false, 1000f, vec3<bool>(false, false, false)), Struct_2(true, 759f, vec3<bool>(false, false, true)), Struct_2(false, -629f, vec3<bool>(false, true, false)), Struct_2(false, -999f, vec3<bool>(false, true, false)), Struct_2(true, 657f, vec3<bool>(false, true, false)), Struct_2(false, 361f, vec3<bool>(false, false, true)), Struct_2(true, -943f, vec3<bool>(false, true, false)), Struct_2(false, -392f, vec3<bool>(false, false, false)), Struct_2(false, -1222f, vec3<bool>(true, false, false)), Struct_2(false, 675f, vec3<bool>(true, true, true)), Struct_2(true, -303f, vec3<bool>(true, false, false)), Struct_2(true, 713f, vec3<bool>(true, true, true)), Struct_2(false, -443f, vec3<bool>(true, true, true)), Struct_2(true, 101f, vec3<bool>(true, true, false)), Struct_2(true, -203f, vec3<bool>(false, false, true)));

var<private> global1: array<vec3<bool>, 12> = array<vec3<bool>, 12>(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false));

var<private> global2: vec3<u32> = vec3<u32>(6574u, 1u, 0u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_2, arg_3: vec3<bool>) -> vec3<u32> {
    var var_0 = 1u;
    global2 = abs(reverseBits(u_input.a.ywx));
    var_0 = 0u;
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-275f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_1, arg_1, arg_2.c.x))))), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b)), 228f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -189f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(arg_1, 1000f)))), -581f) + vec4<f32>(773f, _wgslsmith_f_op_f32(685f * arg_2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-800f)))))), select(vec4<bool>(true, all(vec4<bool>(arg_3.x, arg_2.a, true, true)), arg_3.x, !arg_3.x), !select(select(vec4<bool>(arg_3.x, true, false, false), vec4<bool>(false, true, false, arg_3.x), vec4<bool>(true, false, true, false)), vec4<bool>(arg_2.c.x, arg_2.a, arg_2.c.x, false), !vec4<bool>(false, false, true, arg_3.x)), !(arg_3.x & true))));
    var var_2 = arg_2;
    return abs(~vec3<u32>(8309u, 44437u, arg_0));
}

fn func_2(arg_0: bool, arg_1: vec3<f32>) -> vec3<bool> {
    global1 = array<vec3<bool>, 12>();
    let var_0 = vec3<u32>(global2.x, 0u, reverseBits(_wgslsmith_mod_u32(_wgslsmith_add_u32(93375u, u_input.a.x) & 47670u, 74319u)));
    let var_1 = vec4<bool>(true, u_input.a.x >= 26815u, true, ~(u_input.a.x | (var_0.x >> (var_0.x % 32u))) >= firstTrailingBit(0u));
    let var_2 = (global2.x ^ _wgslsmith_mod_u32(_wgslsmith_mult_u32(var_0.x, global2.x), _wgslsmith_dot_vec3_u32(max(var_0, vec3<u32>(61642u, 0u, 20243u)), func_3(0u, 2630f, Struct_2(false, arg_1.x, vec3<bool>(arg_0, true, false)), vec3<bool>(false, var_1.x, arg_0))))) << (firstLeadingBit(20336u) % 32u);
    var var_3 = Struct_3(33911i, 2147483647i >= _wgslsmith_sub_i32(u_input.b, 26889i), 31987u);
    return vec3<bool>(564f <= arg_1.x, !((_wgslsmith_mult_i32(u_input.b, var_3.a) == ~5051i) & !var_1.x), var_1.x);
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: bool, arg_3: vec3<bool>) -> Struct_3 {
    var var_0 = global0[_wgslsmith_index_u32(global2.x, 30u)];
    global2 = vec3<u32>(~(_wgslsmith_dot_vec4_u32(u_input.a | u_input.a, ~u_input.a) << (~abs(22608u) % 32u)), countOneBits(u_input.a.x), 24565u);
    global2 = abs(abs(_wgslsmith_add_vec3_u32(vec3<u32>(global2.x, 5757u, u_input.a.x) | u_input.a.xyy, _wgslsmith_mult_vec3_u32(u_input.a.yyx, u_input.a.zxy)))) >> (u_input.a.zxz % vec3<u32>(32u));
    var var_1 = vec2<i32>(u_input.b, u_input.b);
    var_0 = global0[_wgslsmith_index_u32(~u_input.a.x, 30u)];
    return Struct_3(var_1.x, true, ~(~4294967295u));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-1717f * _wgslsmith_f_op_f32(-779f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_1.c.x, 1257f)), _wgslsmith_f_op_f32(-arg_1.b), any(vec3<bool>(true, true, arg_2.x))))))));
    var var_1 = global0[_wgslsmith_index_u32(func_3(arg_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -203f), Struct_2(all(func_2(func_4(arg_1.c.xz, false, true, vec3<bool>(false, true, arg_0.b)).b, vec3<f32>(arg_1.b, arg_1.b, -1481f)).xy), arg_1.c.x, !func_2(arg_0.b, _wgslsmith_div_vec3_f32(arg_1.c, vec3<f32>(-1515f, arg_1.c.x, -1461f)))), !func_2(!(arg_0.b && arg_2.x), vec3<f32>(-667f, _wgslsmith_f_op_f32(max(arg_1.c.x, -110f)), _wgslsmith_f_op_f32(f32(-1f) * -1013f)))).x, 30u)];
    var_1 = global0[_wgslsmith_index_u32(146629u, 30u)];
    var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 30u)];
    let var_2 = Struct_1(u_input.a & select(~(~vec4<u32>(arg_0.c, arg_1.a.x, 0u, 1u)), ~u_input.a, any(vec3<bool>(false, arg_2.x, false))), -1397f, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_1.b, 1517f)), _wgslsmith_f_op_f32(-540f - -1078f)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(ceil(-202f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.c.x, arg_1.c.x, false)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_1.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(383f, var_1.b, 364f))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.b, arg_1.b, -251f), arg_1.c))), func_4(vec2<f32>(-1699f, var_1.b), arg_0.b, !var_1.c.x, func_2(false, arg_1.c)).b))));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(~func_3(1u, _wgslsmith_f_op_f32(-1011f - -1000f), Struct_2(false, -337f, global1[_wgslsmith_index_u32(var_2.a.x, 12u)]), !vec3<bool>(arg_3.b, arg_0.b, true)).x, 30063u), _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(arg_1.a.yx, _wgslsmith_add_vec2_u32(~u_input.a.xw, _wgslsmith_clamp_vec2_u32(u_input.a.wx, var_2.a.yw, u_input.a.zw))), ~(~(vec2<u32>(1u, arg_1.a.x) ^ arg_1.a.wy))));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec4<i32>) -> vec3<u32> {
    let var_0 = (false || all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true))) & true;
    let var_1 = !vec3<bool>(!(!var_0), ~(~arg_2.x) < _wgslsmith_dot_vec3_i32(arg_2.yzx, _wgslsmith_add_vec3_i32(arg_2.zzz, vec3<i32>(arg_2.x, -25259i, -2147483647i))), all(select(vec2<bool>(true, true), vec2<bool>(false, var_0), true)));
    global2 = vec3<u32>(~(~1u), global2.x, max(func_5(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-177f, 985f)), var_0, var_0, func_2(true, vec3<f32>(arg_1, arg_1, arg_1))), Struct_1(vec4<u32>(4294967295u, 0u, u_input.a.x, global2.x), arg_1, vec3<f32>(arg_1, -777f, arg_1)), !select(vec4<bool>(true, var_0, var_0, var_1.x), vec4<bool>(true, true, true, var_1.x), true), Struct_3(i32(-1i) * -90i, arg_1 == arg_1, reverseBits(27048u))), 1u));
    let var_2 = countOneBits(26177u);
    let var_3 = arg_2.x;
    return min(_wgslsmith_add_vec3_u32((~u_input.a.zxw | ~vec3<u32>(33525u, u_input.a.x, 41593u)) << (~(~u_input.a.zyx) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(~u_input.a.wxz, u_input.a.wzw)), u_input.a.xxx & countOneBits(firstLeadingBit(u_input.a.xyx ^ u_input.a.zwy)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~(select(vec3<u32>(~u_input.a.x, _wgslsmith_mult_u32(global2.x, 0u), u_input.a.x), u_input.a.xzw, global1[_wgslsmith_index_u32(u_input.a.x | ~1u, 12u)]) >> (select(_wgslsmith_mod_vec3_u32(vec3<u32>(28969u, u_input.a.x, u_input.a.x), func_1(global2.x, -1046f, vec4<i32>(u_input.b, -77016i, u_input.b, -2147483647i))), vec3<u32>(18616u, 4294967295u, global2.x), all(vec4<bool>(true, true, true, true))) % vec3<u32>(32u)));
    let var_0 = vec4<f32>(1076f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) * 1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1370f + _wgslsmith_f_op_f32(1518f + -877f)))), 1f);
    let var_1 = global0[_wgslsmith_index_u32(~max(~0u, _wgslsmith_mod_u32(~1u, ~(~1u))), 30u)];
    global1 = array<vec3<bool>, 12>();
    global2 = ~(~(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), u_input.a.zxx)) | _wgslsmith_sub_vec3_u32(~vec3<u32>(11978u, global2.x, 1u), ~u_input.a.zxx ^ abs(u_input.a.wxx)));
    let var_2 = var_0.zz;
    let var_3 = Struct_2(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.zz + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(835f, var_2.x))))), var_1.c.x, var_1.c.x, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(~u_input.a.x, 5577u), ~u_input.a.x), 12u)]).b, -186f, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(9649u, 1u), 12u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -592f), abs(vec4<u32>(62207u, ~4974u, u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, 0u)) ^ reverseBits(vec4<u32>(0u, u_input.a.x, u_input.a.x, 82955u))), ~func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, -1000f)), _wgslsmith_f_op_f32(var_1.b + var_0.x) < 606f, !any(var_1.c.zz), var_1.c).a, firstTrailingBit(select(-(vec3<i32>(-620i, 1i, u_input.b) | vec3<i32>(-10401i, -1i, 1i)), firstTrailingBit(select(vec3<i32>(u_input.b, u_input.b, -58599i), vec3<i32>(u_input.b, u_input.b, -17430i), var_1.c.x)), func_2(true, var_0.xwz).x | var_1.c.x)));
}

