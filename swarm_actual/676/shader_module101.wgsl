struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<f32>(-1177f, -559f, -596f), vec4<bool>(false, true, true, false), vec2<i32>(-19119i, -22712i), vec3<u32>(16255u, 4294967295u, 44041u), vec3<u32>(37402u, 0u, 62948u)), Struct_1(vec3<f32>(682f, 1130f, -580f), vec4<bool>(true, false, false, true), vec2<i32>(6378i, -39033i), vec3<u32>(4294967295u, 39085u, 1u), vec3<u32>(0u, 0u, 28959u)), Struct_1(vec3<f32>(-457f, -140f, 1000f), vec4<bool>(true, false, true, false), vec2<i32>(8150i, 1i), vec3<u32>(0u, 4294967295u, 49903u), vec3<u32>(37110u, 0u, 45913u)), Struct_1(vec3<f32>(-1543f, -1036f, 703f), vec4<bool>(false, false, false, false), vec2<i32>(2788i, 0i), vec3<u32>(1u, 43704u, 0u), vec3<u32>(23131u, 0u, 4294967295u)), Struct_1(vec3<f32>(1041f, 920f, -667f), vec4<bool>(true, true, false, true), vec2<i32>(i32(-2147483648), -15772i), vec3<u32>(7611u, 21765u, 9910u), vec3<u32>(4294967295u, 72649u, 4294967295u)), Struct_1(vec3<f32>(249f, 1535f, -1000f), vec4<bool>(false, false, true, true), vec2<i32>(-54370i, 2147483647i), vec3<u32>(0u, 4294967295u, 46926u), vec3<u32>(0u, 3054u, 39736u)), Struct_1(vec3<f32>(226f, -152f, 702f), vec4<bool>(false, false, false, true), vec2<i32>(-38321i, 32341i), vec3<u32>(0u, 49274u, 4294967295u), vec3<u32>(4294967295u, 1u, 29624u)), Struct_1(vec3<f32>(793f, 979f, -1138f), vec4<bool>(false, false, true, true), vec2<i32>(-51003i, i32(-2147483648)), vec3<u32>(1u, 50271u, 12986u), vec3<u32>(1u, 870u, 4294967295u)), Struct_1(vec3<f32>(1200f, 1186f, 1306f), vec4<bool>(true, true, true, true), vec2<i32>(1i, -1i), vec3<u32>(6695u, 52878u, 1085u), vec3<u32>(18365u, 37618u, 4294967295u)), Struct_1(vec3<f32>(-1000f, -1000f, 1691f), vec4<bool>(true, false, false, false), vec2<i32>(-1i, 2147483647i), vec3<u32>(55917u, 1u, 1u), vec3<u32>(51543u, 0u, 20136u)), Struct_1(vec3<f32>(-464f, 1811f, 696f), vec4<bool>(false, true, true, true), vec2<i32>(1i, -1723i), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(50623u, 0u, 18486u)), Struct_1(vec3<f32>(-182f, -299f, -523f), vec4<bool>(false, false, true, true), vec2<i32>(2147483647i, -19279i), vec3<u32>(11934u, 29267u, 1u), vec3<u32>(1u, 57498u, 1u)), Struct_1(vec3<f32>(-1986f, -1747f, 948f), vec4<bool>(true, false, true, true), vec2<i32>(-29921i, 53453i), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(15181u, 4294967295u, 0u)), Struct_1(vec3<f32>(1600f, -441f, -258f), vec4<bool>(false, true, true, false), vec2<i32>(1i, 1i), vec3<u32>(0u, 56191u, 0u), vec3<u32>(0u, 29909u, 4294967295u)), Struct_1(vec3<f32>(-2563f, -626f, 1000f), vec4<bool>(true, true, true, false), vec2<i32>(2147483647i, i32(-2147483648)), vec3<u32>(1u, 13617u, 1u), vec3<u32>(4294967295u, 35058u, 40880u)), Struct_1(vec3<f32>(485f, -388f, -914f), vec4<bool>(true, false, true, false), vec2<i32>(45753i, 2147483647i), vec3<u32>(4294967295u, 92107u, 1u), vec3<u32>(9209u, 1u, 4294967295u)), Struct_1(vec3<f32>(-1000f, -231f, -623f), vec4<bool>(true, false, false, false), vec2<i32>(i32(-2147483648), 1i), vec3<u32>(79445u, 1u, 10414u), vec3<u32>(18110u, 14716u, 1u)), Struct_1(vec3<f32>(279f, -683f, -268f), vec4<bool>(false, false, false, true), vec2<i32>(2147483647i, 54466i), vec3<u32>(26760u, 0u, 0u), vec3<u32>(0u, 1u, 12538u)), Struct_1(vec3<f32>(391f, 1210f, -365f), vec4<bool>(true, false, true, false), vec2<i32>(-21374i, -46925i), vec3<u32>(4294967295u, 28255u, 38022u), vec3<u32>(23708u, 294u, 0u)), Struct_1(vec3<f32>(274f, -594f, 205f), vec4<bool>(true, false, false, false), vec2<i32>(1i, 34540i), vec3<u32>(4294967295u, 13386u, 85867u), vec3<u32>(1947u, 15981u, 0u)), Struct_1(vec3<f32>(-774f, -1000f, -1000f), vec4<bool>(true, false, false, true), vec2<i32>(25729i, -13933i), vec3<u32>(82442u, 30759u, 1741u), vec3<u32>(0u, 1u, 36021u)), Struct_1(vec3<f32>(210f, -423f, -723f), vec4<bool>(true, false, true, true), vec2<i32>(1i, -1i), vec3<u32>(31546u, 64257u, 0u), vec3<u32>(88012u, 885u, 9652u)), Struct_1(vec3<f32>(2597f, 1105f, 105f), vec4<bool>(true, true, true, true), vec2<i32>(-1i, -1i), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(28694u, 7737u, 1u)), Struct_1(vec3<f32>(-826f, 948f, -295f), vec4<bool>(false, false, false, true), vec2<i32>(27191i, 2147483647i), vec3<u32>(4294967295u, 64982u, 1u), vec3<u32>(21477u, 1u, 19829u)), Struct_1(vec3<f32>(-1000f, 1864f, -685f), vec4<bool>(false, true, false, false), vec2<i32>(-1i, -50666i), vec3<u32>(6762u, 10512u, 4294967295u), vec3<u32>(11424u, 0u, 44318u)), Struct_1(vec3<f32>(-240f, 1329f, 1755f), vec4<bool>(true, true, false, false), vec2<i32>(1i, 0i), vec3<u32>(0u, 2814u, 13185u), vec3<u32>(108315u, 52558u, 0u)), Struct_1(vec3<f32>(259f, 403f, 836f), vec4<bool>(false, true, false, true), vec2<i32>(i32(-2147483648), 6075i), vec3<u32>(47005u, 40681u, 74578u), vec3<u32>(4294967295u, 3086u, 1u)), Struct_1(vec3<f32>(-638f, 1000f, -1016f), vec4<bool>(true, false, false, true), vec2<i32>(i32(-2147483648), 1i), vec3<u32>(43286u, 80391u, 14144u), vec3<u32>(19831u, 115592u, 14001u)));

var<private> global1: array<Struct_1, 8>;

var<private> global2: Struct_1;

var<private> global3: vec3<f32> = vec3<f32>(-1358f, -482f, -2443f);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> vec3<f32> {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(select(811u, 0u, arg_1.b.x), 4294967295u, ~1u), 1u), 1u, _wgslsmith_dot_vec2_u32((vec2<u32>(77457u, arg_1.e.x) ^ global2.e.xz) ^ vec2<u32>(global2.e.x, global2.d.x), arg_1.d.xz), select(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 37677u, 1u, global2.e.x), vec4<u32>(1u, var_0.e.x, var_0.d.x, 0u)), max(u_input.b, 15944u), !(true || var_0.b.x))), ~abs((vec4<u32>(var_0.e.x, 0u, u_input.b, var_0.d.x) >> (vec4<u32>(4294967295u, 4294967295u, global2.e.x, u_input.b) % vec4<u32>(32u))) << (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 85248u, global2.e.x, arg_1.d.x), vec4<u32>(1u, global2.d.x, 0u, 1u)) % vec4<u32>(32u))));
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a.x))), global3.x, arg_1.a.x), vec4<bool>(arg_1.b.x, select(global2.b.x, global3.x < 550f, true) | any(!vec4<bool>(true, false, arg_2.b.x, global2.b.x)), (global2.b.x || (true | var_0.b.x)) | true, !select(!arg_2.b.x, global2.b.x, all(global2.b.yw))), firstTrailingBit(~vec2<i32>(arg_1.c.x, arg_2.c.x)) | vec2<i32>(-49393i, -31028i), var_1.xww, vec3<u32>(~u_input.b, 0u, ~0u & (~30732u >> (arg_1.e.x % 32u))));
    let var_3 = !arg_1.b.xw;
    global2 = Struct_1(vec3<f32>(_wgslsmith_div_f32(global2.a.x, _wgslsmith_f_op_f32(step(global2.a.x, _wgslsmith_f_op_f32(global2.a.x - var_0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * 588f), arg_1.a.x), arg_2.b, arg_2.c, var_2.d, _wgslsmith_mod_vec3_u32(~(vec3<u32>(0u, 0u, 12285u) << (select(vec3<u32>(arg_2.e.x, u_input.b, u_input.b), vec3<u32>(0u, var_0.d.x, 55961u), arg_1.b.xxw) % vec3<u32>(32u))), ~_wgslsmith_add_vec3_u32(var_0.d, ~arg_1.e)));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_2.a.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-2121f))))), _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.a.x)) + arg_0)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1336f - _wgslsmith_f_op_f32(-arg_2.a.x)), arg_2.a.x, -1628f)));
}

fn func_2(arg_0: bool) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-460f - _wgslsmith_f_op_f32(ceil(global2.a.x)))) * _wgslsmith_f_op_f32(min(global2.a.x, global2.a.x))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(125f + _wgslsmith_f_op_f32(175f - global3.x)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, 1893f)), select(vec4<bool>(false, false, false, arg_0), vec4<bool>(global2.b.x, true, false, global2.b.x), global2.b), reverseBits(vec2<i32>(u_input.c.x, 1i)), global2.e, global2.e), Struct_1(vec3<f32>(-716f, global2.a.x, global3.x), !vec4<bool>(arg_0, global2.b.x, true, global2.b.x), _wgslsmith_mod_vec2_i32(global2.c, vec2<i32>(u_input.a.x, 44199i)), ~vec3<u32>(global2.e.x, u_input.b, 43690u), global2.e & vec3<u32>(global2.e.x, 1u, u_input.b)), !vec4<bool>(arg_0, global2.b.x, true, true))))), !global2.b, min(countOneBits(~global2.c) & (vec2<i32>(u_input.c.x, global2.c.x) << (~vec2<u32>(13643u, global2.d.x) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(-firstTrailingBit(global2.c), vec2<i32>(-8655i, reverseBits(-30887i)), global2.c)), _wgslsmith_sub_vec3_u32(~global2.d, vec3<u32>(1u, firstTrailingBit(~global2.d.x), _wgslsmith_clamp_u32(0u, global2.e.x, ~global2.e.x))), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.b, 31623u), global2.e.x), u_input.b, _wgslsmith_add_u32(1u, _wgslsmith_sub_u32(global2.e.x, 0u))) & select(~global2.d << (vec3<u32>(global2.d.x, 47285u, u_input.b) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2.e.x, global2.d.x), global2.e), 16512u, 90824u), all(vec3<bool>(false, global2.b.x, global2.b.x)) != !global2.b.x));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.a.x * -167f), global2.a.x, any(var_1.b.zx))), global2.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-346f * -1000f), -1662f)))), !(!select(global2.b, global2.b, arg_0)), -select(vec2<i32>(global2.c.x, select(global2.c.x, -1i, global2.b.x)), abs(var_1.c ^ u_input.a.yx), global2.b.x), ~(~(~(~vec3<u32>(var_1.e.x, u_input.b, var_1.e.x)))), vec3<u32>(u_input.b, ~firstTrailingBit(1037u), ~_wgslsmith_dot_vec2_u32(global2.e.xy, vec2<u32>(23613u, var_1.d.x))));
    var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1099f, global3.x, global2.a.x) * vec3<f32>(_wgslsmith_div_f32(756f, var_1.a.x), var_2.a.x, _wgslsmith_f_op_f32(min(-160f, -646f))))), vec4<bool>(global2.b.x, !(select(true, arg_0, var_2.b.x) && global2.b.x), true, (var_1.e.x <= firstLeadingBit(1u)) & any(vec3<bool>(var_1.b.x, false, false))), _wgslsmith_mult_vec2_i32(-vec2<i32>(~var_1.c.x, -7154i), vec2<i32>(i32(-1i) * -36867i, 2147483647i) & ~_wgslsmith_clamp_vec2_i32(u_input.c, vec2<i32>(u_input.c.x, global2.c.x), var_1.c)), ~vec3<u32>(1u, 39885u, u_input.b), vec3<u32>(u_input.b, var_2.d.x, var_2.e.x));
    return firstLeadingBit(-_wgslsmith_mod_vec3_i32(abs(-u_input.a), u_input.a));
}

fn func_1(arg_0: bool) -> u32 {
    global1 = array<Struct_1, 8>();
    let var_0 = u_input.a;
    var var_1 = func_2(global2.b.x);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-global2.a), !select(select(vec4<bool>(global2.b.x, global2.b.x, global2.b.x, true), !global2.b, select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, global2.b.x, true), global2.b.x)), global2.b, !global2.b), vec2<i32>(var_1.x, countOneBits(_wgslsmith_mult_i32(879i, abs(0i)))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_div_u32(1u, global2.d.x), u_input.b, u_input.b), vec3<u32>(1u, ~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global2.e.x, global2.d.x), global2.d))), global2.d);
    global2 = Struct_1(global2.a, select(global2.b, vec4<bool>(global2.b.x, !(19726u >= u_input.b), var_2.b.x, !(u_input.b <= 33293u)), !(!global2.b.x)), max(~((vec2<i32>(-2147483647i, 0i) | global2.c) & vec2<i32>(global2.c.x, 10581i)), -firstTrailingBit(vec2<i32>(var_1.x, 4746i))), vec3<u32>(max(1u, u_input.b) & var_2.d.x, countOneBits(firstLeadingBit(global2.d.x | u_input.b)), _wgslsmith_sub_u32(abs(var_2.d.x), ~(~2849u))), _wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.b, _wgslsmith_mod_u32(u_input.b, 1873u), _wgslsmith_dot_vec4_u32(vec4<u32>(15141u, var_2.d.x, var_2.e.x, var_2.d.x), vec4<u32>(1u, 1u, global2.d.x, var_2.d.x))) & ~vec3<u32>(global2.d.x, var_2.d.x, global2.d.x), vec3<u32>(16631u, abs(_wgslsmith_add_u32(var_2.e.x, var_2.e.x)), min(41017u, 1u))));
    return 13084u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(countOneBits(max(abs(25519u), func_1(true))), 8u)];
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a.x)))), select(vec4<bool>(true, var_0.b.x, global2.b.x, !any(var_0.b.xx)), !select(select(vec4<bool>(true, var_0.b.x, false, var_0.b.x), global2.b, var_0.b.x), !global2.b, var_0.b), global2.b.x), vec2<i32>(1i, u_input.a.x), abs(~vec3<u32>(~var_0.e.x, select(10658u, 110859u, var_0.b.x), abs(var_0.d.x))), vec3<u32>(u_input.b, global2.e.x, u_input.b) >> (_wgslsmith_add_vec3_u32(var_0.e, vec3<u32>(_wgslsmith_mult_u32(global2.e.x, 0u), ~var_0.e.x, 13096u)) % vec3<u32>(32u)));
    global0 = array<Struct_1, 28>();
    let var_2 = 0i;
    global3 = _wgslsmith_f_op_vec3_f32(abs(var_0.a));
    global0 = array<Struct_1, 28>();
    var var_3 = var_0.b.xxy;
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 0u, 4294967295u, var_1.d.x) | (vec4<u32>(0u, global2.e.x, 42143u, 4294967295u) | vec4<u32>(1u, 3702u, 41325u, var_1.d.x))), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(global2.e.x, u_input.b, u_input.b, 24317u), vec4<u32>(u_input.b, 4294967295u, 21845u, 0u)))), 0u), 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(290f, ~(~vec4<u32>(~var_4.e.x, 15776u, 52427u, firstLeadingBit(43294u))));
}

