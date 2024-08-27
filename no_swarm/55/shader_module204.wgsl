struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec4<i32>(-19290i, 41093i, -6687i, 67712i), vec4<bool>(true, true, true, false)), Struct_1(vec4<i32>(14447i, 0i, 0i, 24847i), vec4<bool>(true, true, true, true)), Struct_1(vec4<i32>(-64951i, -1i, -1i, 23377i), vec4<bool>(true, true, false, true)), Struct_1(vec4<i32>(-31659i, 2147483647i, 1i, -41079i), vec4<bool>(false, true, true, false)), Struct_1(vec4<i32>(-17348i, 11516i, -43114i, -35071i), vec4<bool>(false, false, false, true)), Struct_1(vec4<i32>(1i, 1i, -1i, 1i), vec4<bool>(false, true, true, false)), Struct_1(vec4<i32>(-3337i, 2147483647i, 0i, 20366i), vec4<bool>(false, false, false, false)), Struct_1(vec4<i32>(3897i, 0i, 38217i, 38932i), vec4<bool>(false, false, true, true)), Struct_1(vec4<i32>(2147483647i, 2147483647i, -1i, 33736i), vec4<bool>(false, false, false, false)), Struct_1(vec4<i32>(-29383i, 2814i, -70655i, -1i), vec4<bool>(false, false, false, false)), Struct_1(vec4<i32>(-47909i, -27071i, 19028i, i32(-2147483648)), vec4<bool>(false, true, false, true)), Struct_1(vec4<i32>(42282i, 32429i, 0i, i32(-2147483648)), vec4<bool>(true, false, false, true)), Struct_1(vec4<i32>(-13373i, 37388i, -3895i, 1i), vec4<bool>(true, true, true, true)), Struct_1(vec4<i32>(41739i, -39746i, -12427i, 2147483647i), vec4<bool>(false, true, true, false)), Struct_1(vec4<i32>(1i, -106i, 0i, -12554i), vec4<bool>(false, true, true, true)), Struct_1(vec4<i32>(0i, 16054i, -35462i, i32(-2147483648)), vec4<bool>(true, true, true, false)), Struct_1(vec4<i32>(0i, 3093i, -12642i, 38667i), vec4<bool>(false, true, false, false)));

var<private> global1: Struct_1;

var<private> global2: i32;

var<private> global3: array<vec2<u32>, 17>;

var<private> global4: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec4<i32>(-21624i, -27360i, -1i, i32(-2147483648)), vec4<bool>(false, false, false, true)), Struct_1(vec4<i32>(0i, -10423i, 2147483647i, 5448i), vec4<bool>(true, false, true, false)), Struct_1(vec4<i32>(30352i, -1i, -51291i, 2147483647i), vec4<bool>(true, true, true, false)), Struct_1(vec4<i32>(-8878i, 0i, i32(-2147483648), 11304i), vec4<bool>(true, true, true, true)), Struct_1(vec4<i32>(1i, 8041i, 8921i, -29713i), vec4<bool>(false, true, false, false)), Struct_1(vec4<i32>(-17454i, 2147483647i, -9887i, -3694i), vec4<bool>(true, false, true, true)), Struct_1(vec4<i32>(-1257i, -43723i, i32(-2147483648), i32(-2147483648)), vec4<bool>(true, true, false, true)), Struct_1(vec4<i32>(1i, -38486i, -21970i, 2147483647i), vec4<bool>(false, true, false, false)), Struct_1(vec4<i32>(2147483647i, -73970i, -3411i, 2147483647i), vec4<bool>(false, false, false, true)), Struct_1(vec4<i32>(59292i, -13476i, -5050i, -1i), vec4<bool>(false, true, true, true)), Struct_1(vec4<i32>(-61583i, i32(-2147483648), i32(-2147483648), -5176i), vec4<bool>(true, true, false, true)), Struct_1(vec4<i32>(-34983i, -32854i, -1i, i32(-2147483648)), vec4<bool>(true, false, true, true)), Struct_1(vec4<i32>(21985i, 11392i, -1i, 1379i), vec4<bool>(true, false, false, false)), Struct_1(vec4<i32>(1i, 11230i, -30978i, 59080i), vec4<bool>(true, false, true, true)), Struct_1(vec4<i32>(14086i, i32(-2147483648), 2147483647i, 1i), vec4<bool>(true, true, true, false)), Struct_1(vec4<i32>(8168i, 34576i, -3132i, 0i), vec4<bool>(true, false, true, true)), Struct_1(vec4<i32>(7547i, -25882i, 11167i, 0i), vec4<bool>(true, false, true, false)), Struct_1(vec4<i32>(28679i, 26279i, i32(-2147483648), 1i), vec4<bool>(true, false, true, false)), Struct_1(vec4<i32>(12909i, -7207i, 32927i, -36625i), vec4<bool>(true, false, false, false)), Struct_1(vec4<i32>(-37882i, 2492i, 0i, -53252i), vec4<bool>(false, false, false, false)), Struct_1(vec4<i32>(i32(-2147483648), -16428i, 7019i, 2147483647i), vec4<bool>(true, false, true, false)), Struct_1(vec4<i32>(70651i, 2147483647i, -24192i, -1i), vec4<bool>(true, false, false, true)), Struct_1(vec4<i32>(34321i, -36429i, -10678i, -15804i), vec4<bool>(true, true, false, false)), Struct_1(vec4<i32>(-42184i, 24747i, 0i, 14567i), vec4<bool>(true, true, true, true)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = global4[_wgslsmith_index_u32(u_input.b.x, 24u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-507f - _wgslsmith_div_f32(-125f, 587f)) * _wgslsmith_f_op_f32(f32(-1f) * -678f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1116f + -280f)))), -1378f, 1f));
    return arg_0;
}

fn func_3(arg_0: vec4<f32>) -> bool {
    var var_0 = global1.b.x;
    var_0 = global1.b.x;
    global0 = array<Struct_1, 17>();
    var var_1 = ~vec3<i32>(-global1.a.x, abs(_wgslsmith_add_i32(select(11975i, 2147483647i, true), global1.a.x)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(global1.a.x, global1.a.x) & -11674i, ~firstTrailingBit(global1.a.x)));
    let var_2 = reverseBits(~_wgslsmith_div_u32(firstTrailingBit(1u), abs(u_input.b.x)) | abs(~reverseBits(u_input.b.x)));
    return select(!global1.b.x, global1.b.x, all(vec3<bool>(select(global1.b.x, global1.b.x, global1.b.x) || any(vec2<bool>(false, global1.b.x)), true, true)));
}

fn func_1(arg_0: i32, arg_1: vec3<i32>) -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_mult_vec4_i32(reverseBits(global1.a), -global1.a), !vec4<bool>(true, true, global1.b.x, true || (false | global1.b.x)));
    var var_1 = Struct_1(_wgslsmith_mult_vec4_i32(~(~_wgslsmith_sub_vec4_i32(var_0.a, var_0.a)), vec4<i32>(min(_wgslsmith_dot_vec4_i32(var_0.a, global1.a), _wgslsmith_mult_i32(arg_1.x, 1i)), ~arg_1.x, global1.a.x, _wgslsmith_div_i32(select(arg_1.x, 2147483647i, false), arg_0))), vec4<bool>(all(!vec3<bool>(global1.b.x, var_0.b.x, false)), any(global1.b.xy) | (u_input.a.x < func_2(u_input.a.x, Struct_1(var_0.a, vec4<bool>(global1.b.x, var_0.b.x, false, global1.b.x)), global4[_wgslsmith_index_u32(4294967295u, 24u)], Struct_1(vec4<i32>(global1.a.x, -7280i, arg_1.x, 2147483647i), global1.b))), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-294f, -1000f, -449f, -1000f))), !(_wgslsmith_f_op_f32(step(-659f, 910f)) < _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    global3 = array<vec2<u32>, 17>();
    var_1 = Struct_1(var_1.a, vec4<bool>(!all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(f32(-1f) * -528f) == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(899f)))), !(true && (u_input.b.x != 21289u)), !func_3(vec4<f32>(1481f, -891f, 699f, -997f)) == false));
    let var_2 = vec2<bool>(any(!(!vec3<bool>(global1.b.x, true, false))), true);
    return countOneBits(-max(_wgslsmith_mult_vec2_i32(vec2<i32>(12238i, global1.a.x), arg_1.zy), -_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(var_1.a.x, var_0.a.x))));
}

fn func_4(arg_0: vec2<i32>, arg_1: u32) -> Struct_1 {
    global4 = array<Struct_1, 24>();
    let var_0 = Struct_1(max(_wgslsmith_sub_vec4_i32(vec4<i32>(~(-2268i), -arg_0.x, countOneBits(2147483647i), -global1.a.x), countOneBits(~global1.a)), select(global1.a, min(global1.a ^ global1.a, vec4<i32>(-275i, 2147483647i, -1170i, -2147483647i)), !(!global1.b.x))), !vec4<bool>(false, global1.b.x, -2147483647i < (17221i ^ global1.a.x), true));
    let var_1 = ~(~u_input.b.x) >= _wgslsmith_add_u32(arg_1, ~(4294967295u >> (arg_1 % 32u)));
    global4 = array<Struct_1, 24>();
    var var_2 = vec3<f32>(-1595f, _wgslsmith_f_op_f32(-1308f + -134f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1578f, 1422f))), -321f))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(-func_1(4839i, global1.a.ywz), reverseBits(~max(u_input.a.x ^ 4294967295u, _wgslsmith_mod_u32(79786u, 4294967295u))));
    global2 = 2147483647i;
    let var_1 = global0[_wgslsmith_index_u32(min(0u & u_input.b.x, ~_wgslsmith_div_u32(u_input.b.x, u_input.b.x ^ u_input.a.x) | reverseBits(countOneBits(~u_input.a.x))), 17u)];
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    let var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(-select(_wgslsmith_mod_i32(1i, 46983i), -var_0.a.x, var_1.b.x || false), _wgslsmith_mod_i32(~(-2147483647i), min(global1.a.x, -20889i)) ^ var_0.a.x, var_1.a.x << (~4294967295u % 32u), var_0.a.x), -var_0.a);
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(353f, _wgslsmith_f_op_f32(select(-1139f, 327f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1355f + 600f))))));
    var var_4 = abs(var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(46065u, _wgslsmith_add_vec2_u32(~(~(~u_input.a)), vec2<u32>(u_input.b.x, min(74273u, u_input.a.x))));
}

