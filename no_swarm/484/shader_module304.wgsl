struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(57751i, vec4<u32>(1u, 35731u, 0u, 37304u), true), Struct_1(7064i, vec4<u32>(24935u, 9548u, 10463u, 38104u), true), Struct_1(-46510i, vec4<u32>(90932u, 76534u, 1u, 44980u), false), Struct_1(i32(-2147483648), vec4<u32>(0u, 31580u, 1u, 4294967295u), true), Struct_1(30422i, vec4<u32>(0u, 4294967295u, 4294967295u, 0u), true), Struct_1(0i, vec4<u32>(4294967295u, 22024u, 1u, 0u), false), Struct_1(0i, vec4<u32>(20246u, 4294967295u, 9059u, 19698u), true), Struct_1(2147483647i, vec4<u32>(30354u, 1u, 4294967295u, 4294967295u), true), Struct_1(-34868i, vec4<u32>(0u, 21468u, 4294967295u, 14196u), false), Struct_1(0i, vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), false), Struct_1(-14726i, vec4<u32>(1u, 1u, 0u, 26158u), false), Struct_1(2147483647i, vec4<u32>(4294967295u, 4294967295u, 54398u, 1u), true), Struct_1(33641i, vec4<u32>(0u, 0u, 4294967295u, 0u), false), Struct_1(44827i, vec4<u32>(18724u, 3489u, 0u, 5129u), true), Struct_1(5858i, vec4<u32>(5500u, 10684u, 1u, 0u), false), Struct_1(35954i, vec4<u32>(0u, 4309u, 1u, 36307u), false), Struct_1(i32(-2147483648), vec4<u32>(3205u, 1u, 43438u, 6972u), true), Struct_1(18901i, vec4<u32>(39990u, 6222u, 0u, 1u), true), Struct_1(18174i, vec4<u32>(0u, 1u, 11856u, 0u), false), Struct_1(23697i, vec4<u32>(1u, 1u, 90700u, 43528u), false), Struct_1(1i, vec4<u32>(9107u, 0u, 15917u, 0u), false), Struct_1(-1i, vec4<u32>(15660u, 0u, 4294967295u, 40598u), true), Struct_1(2147483647i, vec4<u32>(4294967295u, 59465u, 1u, 1u), false), Struct_1(-10752i, vec4<u32>(54114u, 4294967295u, 4294967295u, 0u), false), Struct_1(28104i, vec4<u32>(46916u, 28018u, 1u, 1u), true));

var<private> global1: array<vec2<u32>, 7>;

var<private> global2: array<vec2<u32>, 1>;

var<private> global3: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(-1i, vec4<u32>(4294967295u, 127955u, 61034u, 36866u), true), 2147483647i), Struct_2(Struct_1(-1i, vec4<u32>(4294967295u, 0u, 8737u, 1u), false), 2147483647i), Struct_2(Struct_1(-1i, vec4<u32>(4294967295u, 38338u, 1u, 19689u), false), i32(-2147483648)), Struct_2(Struct_1(45188i, vec4<u32>(5930u, 21097u, 40669u, 1u), false), 1i), Struct_2(Struct_1(33381i, vec4<u32>(36309u, 994u, 13364u, 10715u), true), 2147483647i), Struct_2(Struct_1(-1i, vec4<u32>(0u, 49723u, 27245u, 36484u), false), 4269i), Struct_2(Struct_1(-12460i, vec4<u32>(0u, 0u, 4294967295u, 19907u), true), 16129i), Struct_2(Struct_1(2147483647i, vec4<u32>(1u, 31017u, 4294967295u, 0u), true), 0i), Struct_2(Struct_1(1i, vec4<u32>(20793u, 0u, 52715u, 21447u), true), 0i), Struct_2(Struct_1(1i, vec4<u32>(0u, 44186u, 0u, 24626u), true), -11277i), Struct_2(Struct_1(8152i, vec4<u32>(2048u, 4294967295u, 29072u, 1u), true), 2147483647i));

var<private> global4: array<u32, 26> = array<u32, 26>(1u, 10671u, 1u, 1u, 1u, 68954u, 4294967295u, 0u, 4294967295u, 0u, 4294967295u, 0u, 38574u, 22145u, 1550u, 0u, 16711u, 3426u, 0u, 4294967295u, 30767u, 28793u, 94047u, 29467u, 34849u, 22600u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: i32, arg_3: bool) -> vec3<i32> {
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(51630u, 25u)], -2147483647i);
    var var_1 = Struct_2(var_0.a, _wgslsmith_mod_i32(_wgslsmith_add_i32(~arg_2 << (~u_input.a % 32u), -2147483647i), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(0i, var_0.a.a), max(vec2<i32>(arg_2, arg_2), vec2<i32>(1i, 0i))), _wgslsmith_mult_vec2_i32(select(vec2<i32>(arg_2, arg_2), vec2<i32>(-2147483647i, -1i), var_0.a.c), -vec2<i32>(1i, arg_2)))));
    let var_2 = _wgslsmith_f_op_f32(-arg_0);
    global2 = array<vec2<u32>, 1>();
    let var_3 = arg_1;
    return firstTrailingBit(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(-34692i, arg_2, 1i)) << (vec3<u32>(~arg_1.a.b.x, 63941u & u_input.a, _wgslsmith_clamp_u32(39738u, 1u, 50982u)) % vec3<u32>(32u)), vec3<i32>(var_3.b, -13355i, -6740i)));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_2) -> i32 {
    global2 = array<vec2<u32>, 1>();
    let var_0 = Struct_2(Struct_1(countOneBits(_wgslsmith_dot_vec3_i32(func_3(-1944f, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 26u)], 11u)], arg_1.a.a, arg_1.a.c), vec3<i32>(arg_1.a.a, 652i, 2147483647i) >> (vec3<u32>(global4[_wgslsmith_index_u32(4294967295u, 26u)], u_input.a, arg_0.x) % vec3<u32>(32u)))), _wgslsmith_clamp_vec4_u32(arg_1.a.b, select(_wgslsmith_mod_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(u_input.a, 26u)], 1u, 33580u, global4[_wgslsmith_index_u32(u_input.a, 26u)]), vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_0.x, 26u)], 26u)], 60092u, arg_0.x, 58402u)), ~arg_1.a.b, 1i <= arg_1.b), max(_wgslsmith_add_vec4_u32(arg_1.a.b, vec4<u32>(arg_1.a.b.x, arg_1.a.b.x, 16296u, 63797u)), _wgslsmith_mod_vec4_u32(vec4<u32>(8141u, 1u, arg_1.a.b.x, u_input.a), vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(55702u, 26u)], 26u)], arg_0.x, 0u, 36465u)))), !((arg_1.a.c && false) & all(vec4<bool>(arg_1.a.c, arg_1.a.c, arg_1.a.c, true)))), 7888i);
    global4 = array<u32, 26>();
    var var_1 = arg_1.a;
    let var_2 = -(~(~var_1.a & var_1.a));
    return -39547i;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_2) -> i32 {
    global1 = array<vec2<u32>, 7>();
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-758f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -426f)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(ceil(-1000f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1608f, -567f, true))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-185f, 1304f), _wgslsmith_f_op_f32(-432f + -383f), _wgslsmith_div_f32(2772f, 808f), _wgslsmith_f_op_f32(sign(-2283f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-102f, 657f, 218f, 1800f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-307f, 511f, -804f, 869f) + vec4<f32>(110f, 799f, -803f, 814f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(382f, -1262f, -1000f, -1000f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) * vec4<f32>(-1258f, 1f, -1239f, _wgslsmith_f_op_f32(max(-270f, 1000f))))));
    var var_1 = !arg_1.a.c;
    global0 = array<Struct_1, 25>();
    let var_2 = 937f;
    return 2175i;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> vec3<f32> {
    global1 = array<vec2<u32>, 7>();
    let var_0 = arg_0.a.a;
    var var_1 = arg_0.a;
    var var_2 = _wgslsmith_sub_vec3_i32(~reverseBits(max(vec3<i32>(var_1.a, -1i, arg_0.a.a) & vec3<i32>(arg_1.a.a, arg_0.a.a, var_0), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0, -2147483647i, 0i), vec3<i32>(arg_0.a.a, -27392i, arg_0.a.a)))), vec3<i32>(func_4(~func_2(arg_0.a.b.wwz, arg_0), arg_1, ~(~global1[_wgslsmith_index_u32(arg_0.a.b.x, 7u)]), arg_1), _wgslsmith_dot_vec2_i32(~(~vec2<i32>(arg_0.a.a, 50688i)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b, var_1.a), vec2<i32>(37436i, var_0)), reverseBits(arg_0.b))), 1i));
    global3 = array<Struct_2, 11>();
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(min(-694f, -1567f)), _wgslsmith_f_op_f32(min(1232f, -1000f)), _wgslsmith_div_f32(554f, 336f)))))), _wgslsmith_div_vec3_f32(vec3<f32>(1f, 396f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1750f * -738f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(638f, 210f, -365f)), vec3<f32>(-1000f, -1000f, _wgslsmith_f_op_f32(-1151f + 1629f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 25>();
    let var_0 = global0[_wgslsmith_index_u32(u_input.a, 25u)];
    let var_1 = !(!(!(!(!vec2<bool>(false, var_0.c)))));
    let var_2 = global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 25u)];
    global3 = array<Struct_2, 11>();
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-848f, -1295f, -129f), vec3<f32>(-811f, 1200f, 1572f), vec3<bool>(var_0.c, false, true))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(905f, -557f, -1017f))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(130f, 1843f, -715f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_2(global0[_wgslsmith_index_u32(var_2.b.x, 25u)], 90822i), Struct_2(Struct_1(var_0.a, vec4<u32>(u_input.a, var_0.b.x, global4[_wgslsmith_index_u32(var_0.b.x, 26u)], 29064u), true), -44642i)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(510f, 724f, 393f))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1068f, -551f, 383f)))))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1399f))))), 695f, _wgslsmith_f_op_f32(step(925f, -687f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, vec3<i32>(_wgslsmith_add_i32(~var_2.a, i32(-1i) * -16399i), -var_0.a, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(37386i, var_0.a), vec2<i32>(-2147483647i, 6634i)), vec2<i32>(var_0.a, 34343i) << (var_0.b.xx % vec2<u32>(32u)))) >> (_wgslsmith_sub_vec3_u32(~(~vec3<u32>(0u, 37798u, 28815u)), var_2.b.wyw) % vec3<u32>(32u)));
}

