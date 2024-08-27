struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: f32,
    d: vec4<u32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

var<private> global1: array<Struct_1, 9>;

var<private> global2: Struct_2;

var<private> global3: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec4<bool>(false, true, false, false), true, -399f, vec4<u32>(32655u, 52162u, 1u, 1u), vec3<bool>(true, false, true)), Struct_1(vec4<bool>(true, false, true, false), true, -943f, vec4<u32>(83785u, 4294967295u, 1u, 1u), vec3<bool>(true, false, true)), Struct_1(vec4<bool>(false, true, false, false), true, -1162f, vec4<u32>(34980u, 32514u, 0u, 0u), vec3<bool>(true, false, false)), Struct_1(vec4<bool>(false, false, true, true), true, 1584f, vec4<u32>(1u, 37795u, 0u, 1u), vec3<bool>(false, false, true)), Struct_1(vec4<bool>(false, true, true, true), false, 1565f, vec4<u32>(7915u, 20021u, 22404u, 4294967295u), vec3<bool>(false, true, false)), Struct_1(vec4<bool>(true, true, true, true), false, -1000f, vec4<u32>(25756u, 1186u, 4294967295u, 4294967295u), vec3<bool>(false, false, true)), Struct_1(vec4<bool>(true, true, true, false), true, -1000f, vec4<u32>(85564u, 8004u, 0u, 1u), vec3<bool>(true, false, false)), Struct_1(vec4<bool>(false, false, false, false), false, 263f, vec4<u32>(4294967295u, 44778u, 45493u, 10197u), vec3<bool>(true, true, false)), Struct_1(vec4<bool>(false, true, true, true), false, 149f, vec4<u32>(23461u, 78515u, 4294967295u, 8036u), vec3<bool>(true, true, false)), Struct_1(vec4<bool>(false, false, true, false), false, -191f, vec4<u32>(4294967295u, 22509u, 27743u, 0u), vec3<bool>(false, false, false)), Struct_1(vec4<bool>(false, true, false, true), false, -603f, vec4<u32>(4294967295u, 1u, 1u, 42562u), vec3<bool>(true, false, true)));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: i32, arg_3: vec2<i32>) -> u32 {
    var var_0 = any(select(global2.a.a, global2.a.a, global2.a.a));
    global1 = array<Struct_1, 9>();
    global1 = array<Struct_1, 9>();
    global0 = array<u32, 10>();
    var var_1 = arg_1.x;
    return countOneBits(~(~_wgslsmith_div_u32(5493u, global0[_wgslsmith_index_u32(17168u, 10u)])) ^ 30519u);
}

fn func_3(arg_0: vec4<bool>, arg_1: i32) -> bool {
    var var_0 = vec4<i32>(9648i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(14765i, select(-1i, -45806i, false), ~(-2147483647i), _wgslsmith_sub_i32(-48284i, -1i)), vec4<i32>(min(u_input.a, 103356i), _wgslsmith_add_i32(arg_1, arg_1), arg_1, -1i)), abs(firstTrailingBit(min(select(2147483647i, -2147483647i, false), arg_1 & 9930i))), min(abs(7511i), u_input.a), i32(-1i) * -(~(-1i)));
    var var_1 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(-1i, -_wgslsmith_add_i32(-2147483647i >> (u_input.b.x % 32u), -2147483647i), -31450i), 15534i);
    global0 = array<u32, 10>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.c, -1917f, -2264f, 662f) + vec4<f32>(global2.a.c, global2.b.x, 1679f, 145f)), global2.b)), vec4<f32>(583f, _wgslsmith_f_op_f32(min(-176f, global2.a.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-990f, global2.a.c))), _wgslsmith_f_op_f32(round(global2.a.c)))));
    var var_3 = Struct_2(Struct_1(vec4<bool>(arg_1 != -30070i, true, arg_0.x, select(u_input.a, u_input.a, arg_0.x) != (1i << (global2.a.d.x % 32u))), any(global2.a.a), global2.b.x, min(~_wgslsmith_mult_vec4_u32(global2.a.d, global2.a.d), u_input.b), !(!vec3<bool>(false, true, arg_0.x))), _wgslsmith_f_op_vec4_f32(global2.b - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(global2.a.c - -1266f), var_2.x, _wgslsmith_f_op_f32(300f * -713f), _wgslsmith_f_op_f32(-var_2.x))))));
    return arg_0.x;
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> Struct_1 {
    global3 = array<Struct_1, 11>();
    var var_0 = global1[_wgslsmith_index_u32(func_2(!(358f <= global2.b.x) & arg_0, vec2<i32>(reverseBits(-u_input.a), u_input.a), _wgslsmith_mod_i32(select(1i, u_input.a, all(global2.a.a)), -u_input.a << (global2.a.d.x % 32u)), vec2<i32>(-u_input.a, -30177i)) >> (_wgslsmith_mod_u32(func_2(func_3(global2.a.a, 1i), ~vec2<i32>(u_input.a, 9284i), reverseBits(max(1i, u_input.a)), _wgslsmith_mod_vec2_i32(vec2<i32>(9720i, 62638i), vec2<i32>(37103i, u_input.a))), 1u) % 32u), 9u)];
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b.x, 22452u), 1u), 9u)];
    var var_2 = arg_1.x;
    global3 = array<Struct_1, 11>();
    return global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(true && (-1i <= u_input.a), global2.a.a.wyy);
    var var_1 = global2.a;
    let var_2 = ~u_input.a;
    var var_3 = var_1.c;
    let var_4 = ~(firstLeadingBit(reverseBits(vec2<i32>(1i, -61936i)) & vec2<i32>(var_2, u_input.a)) << (global2.a.d.yy % vec2<u32>(32u)));
    let var_5 = global1[_wgslsmith_index_u32(u_input.b.x, 9u)];
    global0 = array<u32, 10>();
    var var_6 = select(_wgslsmith_add_vec3_i32(countOneBits(countOneBits(vec3<i32>(var_2, 0i, 0i))) | select(vec3<i32>(-186i, 46314i, -2147483647i), ~vec3<i32>(0i, -34146i, var_4.x), func_1(true, var_0.e).e), _wgslsmith_mult_vec3_i32(-min(vec3<i32>(var_2, -1i, 2147483647i), vec3<i32>(0i, var_2, 4762i)), -(~vec3<i32>(17522i, u_input.a, 9476i)))), ~(-countOneBits(vec3<i32>(u_input.a, var_4.x, 47402i) & vec3<i32>(var_4.x, var_4.x, var_2))), any(!(!var_1.e.zx)));
    var var_7 = vec3<u32>(~global2.a.d.x, global2.a.d.x, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(55746u, global2.a.d.x, var_5.d.x), ~(~var_5.d.xxz)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global2.b.zz, _wgslsmith_f_op_vec2_f32(-global2.b.zw), vec2<bool>(true, true))))), -_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_2, -1i) & vec2<i32>(-1i, 2147483647i), vec2<i32>(var_4.x, 45269i)), abs(vec2<i32>(var_2, -2823i)) >> (vec2<u32>(69818u, u_input.b.x) % vec2<u32>(32u))));
}

