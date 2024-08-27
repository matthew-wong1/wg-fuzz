struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: u32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, 2147483647i, 2147483647i, -1i);

var<private> global1: vec2<u32>;

var<private> global2: array<f32, 24> = array<f32, 24>(1338f, 942f, -580f, 772f, -1194f, -466f, -1151f, -642f, -1304f, -1229f, 685f, -878f, -472f, -746f, 1463f, 2030f, -2886f, 1204f, 926f, -539f, 954f, -1000f, 1478f, -299f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: f32) -> vec3<bool> {
    let var_0 = vec4<bool>(!any(vec4<bool>(true, true, false, any(vec2<bool>(false, true)))), any(!select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), true), all(vec3<bool>(false, false, true)))), !select(any(vec2<bool>(false, false)), any(vec3<bool>(true, true, true)), select(true, true, u_input.a > global1.x)), any(select(!select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(false, all(vec2<bool>(false, true))), any(vec3<bool>(false, false, false)) | all(vec2<bool>(true, true)))));
    var var_1 = _wgslsmith_div_vec3_u32(min(abs(vec3<u32>(21444u, global1.x, u_input.a) & vec3<u32>(17639u, 1u, u_input.a)), ~(vec3<u32>(4294967295u, global1.x, u_input.a) ^ vec3<u32>(0u, 1u, u_input.a))) << (vec3<u32>(global1.x, 1u, 99334u) % vec3<u32>(32u)), vec3<u32>(1u, ~u_input.a, ~(~u_input.a)));
    global2 = array<f32, 24>();
    var var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(3863i, global0.x), firstLeadingBit(select(~vec2<i32>(global0.x, 87067i), vec2<i32>(1i, global0.x), vec2<bool>(false, var_0.x)))), max(min(max(vec2<i32>(1i, -10579i), min(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(global0.x, global0.x))), -min(global0.xx, vec2<i32>(1i, 0i))), _wgslsmith_add_vec2_i32(countOneBits(global0.xx), vec2<i32>(reverseBits(-2147483647i), u_input.b))));
    let var_3 = u_input.b;
    return !(!select(var_0.wyy, var_0.zwz, true));
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_1(select(select(select(vec3<bool>(true, false, true), func_3(global2[_wgslsmith_index_u32(global1.x, 24u)]), true), vec3<bool>(true, true, true), func_3(-1311f).x != true), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), vec3<bool>(false, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), true)), all(vec4<bool>(true, false, all(vec3<bool>(false, false, true)), (1787i << (1u % 32u)) > _wgslsmith_dot_vec2_i32(global0.xy, vec2<i32>(global0.x, global0.x)))));
    let var_1 = var_0.a.zy;
    var var_2 = global1.x;
    let var_3 = Struct_3(var_0, vec4<u32>(1u, 7860u, firstTrailingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(21430u, u_input.a), countOneBits(vec2<u32>(6169u, u_input.a)))), global1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(select(~41174u, countOneBits(157143u), !var_0.b), ~u_input.a, 1u), countOneBits(vec3<u32>(56058u, global1.x, 56280u)) >> ((_wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, u_input.a, 9162u), vec3<u32>(u_input.a, 21983u, 49745u)) & vec3<u32>(global1.x, 0u, global1.x)) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)], 379f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(12919u, 24u)], 1241f, 857f))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-327f, 577f, global2[_wgslsmith_index_u32(global1.x, 24u)]) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1030f, 1400f, global2[_wgslsmith_index_u32(global1.x, 24u)]) + vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 24u)], 214f, 1117f))))))));
    var_2 = ~abs(var_3.b.x);
    return var_0.a;
}

fn func_4(arg_0: vec3<f32>, arg_1: bool) -> Struct_4 {
    var var_0 = Struct_1(vec3<bool>(true, arg_1, !func_2().x || !arg_1), true);
    let var_1 = _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(select(~select(20225u, global1.x, var_0.a.x), _wgslsmith_mod_u32(69100u, global1.x) & 1u, var_0.a.x) | ~abs(13141u), 24u)] - global2[_wgslsmith_index_u32(0u, 24u)]);
    global2 = array<f32, 24>();
    global1 = abs(firstLeadingBit(vec2<u32>(_wgslsmith_sub_u32(600u, global1.x), 4294967295u) | abs(~vec2<u32>(4294967295u, 4294967295u))));
    var var_2 = Struct_3(Struct_1(select(!var_0.a, vec3<bool>(all(vec4<bool>(true, true, var_0.a.x, false)), arg_1, func_3(327f).x), vec3<bool>(true, true, true)), var_0.a.x && var_0.a.x), vec4<u32>(u_input.a, ~(1u << (global1.x % 32u)), min(4294967295u, _wgslsmith_div_u32(26834u, global1.x)), global1.x ^ 8875u) ^ (~(~vec4<u32>(68457u, 19411u, 0u, 1u)) << (~(~vec4<u32>(global1.x, global1.x, 45999u, 21574u)) % vec4<u32>(32u))), 47784u, arg_0);
    return Struct_4(Struct_3(var_2.a, vec4<u32>(_wgslsmith_mult_u32(1u, 7868u) ^ (30447u & u_input.a), ~(~44375u), 2663u, 122344u << ((1u << (u_input.a % 32u)) % 32u)), var_2.c << (_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(var_2.b.zy, vec2<u32>(31954u, 17366u)), var_2.c | 4294967295u, var_2.c) % 32u), arg_0));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = func_4(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-618f - global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 4294967295u), vec2<u32>(8820u, 1u)), 24u)]), global2[_wgslsmith_index_u32(4800u, 24u)]), -246f, _wgslsmith_div_f32(705f, global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(17209u, arg_1, arg_1, arg_1), vec4<u32>(u_input.a, global1.x, 61787u, 4294967295u)), 24u)])), any(func_2()));
    let var_1 = var_0.a.a.a.yx;
    var var_2 = true;
    global1 = var_0.a.b.wx;
    var var_3 = var_0.a.a;
    return func_4(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(2142f, 290f, global2[_wgslsmith_index_u32(13095u, 24u)])))), vec3<f32>(-909f, -597f, _wgslsmith_f_op_f32(floor(689f))))), var_1.x).a.a;
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_4) -> Struct_1 {
    let var_0 = u_input.b;
    global2 = array<f32, 24>();
    let var_1 = countOneBits(73213u);
    global0 = vec4<i32>(-_wgslsmith_dot_vec2_i32(global0.xw, -abs(vec2<i32>(global0.x, -2147483647i))), u_input.b, -(i32(-1i) * -_wgslsmith_mult_i32(global0.x, -1i)), 0i);
    let var_2 = Struct_2(arg_3.a.a, vec4<bool>(func_3(_wgslsmith_f_op_f32(exp2(arg_0.d.x))).x, !func_1(min(vec4<i32>(-1598i, -2147483647i, -1i, -2147483647i), vec4<i32>(u_input.b, 1i, -88674i, arg_2)), 1u, select(vec3<i32>(arg_2, u_input.b, 1i), vec3<i32>(-2147483647i, -1i, arg_2), arg_3.a.a.a.x)).b, arg_3.a.a.a.x, !arg_3.a.a.b));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_3(func_1(select(firstTrailingBit(vec4<i32>(u_input.b, -2147483647i, 0i, u_input.b)), -vec4<i32>(u_input.b, -1i, -1i, global0.x), vec4<bool>(false, false, false, false)), u_input.a, _wgslsmith_add_vec3_i32(-vec3<i32>(global0.x, global0.x, 2147483647i), vec3<i32>(-2147483647i, 1i, global0.x))), ~((vec4<u32>(global1.x, global1.x, global1.x, u_input.a) >> (vec4<u32>(0u, u_input.a, 4294967295u, 1u) % vec4<u32>(32u))) ^ _wgslsmith_div_vec4_u32(vec4<u32>(global1.x, 0u, u_input.a, global1.x), vec4<u32>(global1.x, 4294967295u, 3558u, u_input.a))), ~115268u, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(152f + global2[_wgslsmith_index_u32(1u, 24u)]), _wgslsmith_f_op_f32(f32(-1f) * -1296f), 540f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1661f, global2[_wgslsmith_index_u32(u_input.a, 24u)], global2[_wgslsmith_index_u32(global1.x, 24u)]), vec3<f32>(-746f, -496f, global2[_wgslsmith_index_u32(global1.x, 24u)]))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-714f, 1756f, global2[_wgslsmith_index_u32(u_input.a & 9916u, 24u)], -1336f))))), ~0i, func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(0u, 24u)], 486f, 1294f), vec3<f32>(global2[_wgslsmith_index_u32(58597u, 24u)], -1000f, global2[_wgslsmith_index_u32(1u, 24u)]), vec3<bool>(false, true, false))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(361f, -251f, 883f), vec3<f32>(1175f, -198f, global2[_wgslsmith_index_u32(4294967295u, 24u)]))))), true));
    var var_1 = Struct_2(Struct_1(vec3<bool>(true, true, false), !(min(-5958i, 0i) <= _wgslsmith_div_i32(u_input.b, 1i))), select(vec4<bool>(true, var_0.a.x, true, global2[_wgslsmith_index_u32(~1u, 24u)] <= -1042f), !select(!vec4<bool>(var_0.a.x, var_0.b, false, var_0.a.x), vec4<bool>(var_0.b, true, var_0.b, var_0.b), var_0.b), select(!select(vec4<bool>(var_0.a.x, true, false, true), vec4<bool>(var_0.b, var_0.b, var_0.b, false), var_0.a.x), select(select(vec4<bool>(var_0.b, false, true, true), vec4<bool>(true, var_0.a.x, var_0.b, var_0.b), var_0.b), vec4<bool>(var_0.a.x, var_0.a.x, var_0.b, false), var_0.a.x), !func_3(-1000f).x)));
    global1 = _wgslsmith_mod_vec2_u32(reverseBits(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 13744u), vec4<u32>(u_input.a, 4294967295u, global1.x, global1.x)), u_input.a)), ~(~countOneBits(~vec2<u32>(10084u, global1.x))));
    let var_2 = min(_wgslsmith_dot_vec2_i32(abs(_wgslsmith_mod_vec2_i32(global0.zy, global0.wy)) | vec2<i32>(global0.x, -global0.x), vec2<i32>(-(i32(-1i) * -1303i), firstTrailingBit(global0.x))), u_input.b);
    var_1 = Struct_2(var_0, var_1.b);
    global1 = min(vec2<u32>(1732u, global1.x), ~func_4(vec3<f32>(_wgslsmith_f_op_f32(sign(-712f)), _wgslsmith_f_op_f32(-1592f + 231f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global1.x, 24u)] - global2[_wgslsmith_index_u32(u_input.a, 24u)])), (u_input.b << (43048u % 32u)) >= _wgslsmith_div_i32(u_input.b, 2147483647i)).a.b.xy);
    global0 = _wgslsmith_div_vec4_i32(~_wgslsmith_mod_vec4_i32(min(vec4<i32>(-1i, var_2, -2147483647i, var_2) << (vec4<u32>(u_input.a, u_input.a, 37480u, global1.x) % vec4<u32>(32u)), ~vec4<i32>(-11917i, global0.x, -1i, var_2)), -(~vec4<i32>(var_2, 8673i, -6015i, -63634i))), select(vec4<i32>(-47749i, -(~0i), -26642i, 1i), vec4<i32>(-var_2, countOneBits(u_input.b), -19909i, _wgslsmith_add_i32(global0.x, 1i)), vec4<bool>(var_1.a.a.x & (global1.x > u_input.a), (2889u > u_input.a) != func_3(global2[_wgslsmith_index_u32(u_input.a, 24u)]).x, true, all(select(var_1.b, vec4<bool>(true, var_0.b, var_1.b.x, false), var_1.b)))));
    let var_3 = vec3<bool>(any(select(var_1.b, vec4<bool>(var_1.b.x, false, true || var_1.b.x, select(var_1.a.a.x, true, false)), vec4<bool>(var_0.a.x, func_5(Struct_3(var_1.a, vec4<u32>(u_input.a, u_input.a, 15169u, global1.x), u_input.a, vec3<f32>(779f, 698f, -698f)), vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 24u)], global2[_wgslsmith_index_u32(u_input.a, 24u)], global2[_wgslsmith_index_u32(global1.x, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)]), global0.x, Struct_4(Struct_3(Struct_1(vec3<bool>(true, true, var_1.b.x), true), vec4<u32>(global1.x, 1u, 36705u, global1.x), 9220u, vec3<f32>(global2[_wgslsmith_index_u32(0u, 24u)], global2[_wgslsmith_index_u32(0u, 24u)], global2[_wgslsmith_index_u32(u_input.a, 24u)])))).b, 0i <= u_input.b, false))), true, false);
    let x = u_input.a;
    s_output = StorageBuffer(-1i << (~(~_wgslsmith_mod_u32(1u, 51802u)) % 32u), _wgslsmith_add_vec3_u32(~vec3<u32>(0u, 79162u ^ u_input.a, u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(abs(1u), countOneBits(u_input.a), _wgslsmith_add_u32(0u, global1.x)), abs(vec3<u32>(1u, 1u, 0u)) << (reverseBits(vec3<u32>(global1.x, global1.x, 0u)) % vec3<u32>(32u)))));
}

