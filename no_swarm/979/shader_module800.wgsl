struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_3, 15>;

var<private> global2: array<Struct_1, 32>;

var<private> global3: array<vec2<bool>, 24> = array<vec2<bool>, 24>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global4: array<u32, 1>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(abs(23120u), 32u)];
    var var_1 = Struct_3(_wgslsmith_sub_i32(firstTrailingBit(2147483647i), _wgslsmith_div_i32(abs(u_input.b.x), -(~u_input.b.x))), 1425f, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(1u), ~abs(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 1u)], 1u)])) >> (4294967295u % 32u), 32u)], select(vec3<bool>(!var_0.a, _wgslsmith_f_op_f32(sign(-953f)) >= 426f, var_0.a), vec3<bool>(true, any(vec2<bool>(true, true)), select(false, var_0.a, any(vec2<bool>(true, false)))), var_0.a));
    var_1 = Struct_3(var_1.a, 167f, Struct_1(any(var_1.d.zz), var_1.c.b), !vec3<bool>(any(select(var_1.d, vec3<bool>(false, false, var_1.c.b), var_0.a)), any(select(vec3<bool>(true, true, var_1.c.a), var_1.d, var_1.d)), false));
    var var_2 = Struct_3(~_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a, -36713i)), u_input.b.xz), 2050f, var_1.c, var_1.d);
    let var_3 = Struct_3(-1i & (i32(-1i) * -var_2.a), _wgslsmith_f_op_f32(var_1.b - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.b * var_1.b))), 332f)), Struct_1(!all(!vec4<bool>(true, false, true, var_2.d.x)), true), !vec3<bool>(true, var_2.d.x, var_0.a));
    return _wgslsmith_sub_u32(~4294967295u, countOneBits(global4[_wgslsmith_index_u32(~_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(~0u, 1u)], 1u), 1u)]));
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_1 {
    global1 = array<Struct_3, 15>();
    global4 = array<u32, 1>();
    var var_0 = vec2<u32>(_wgslsmith_mult_u32(1u, 56147u), _wgslsmith_add_u32(func_3(), ~firstLeadingBit(4294967295u))) << (select(_wgslsmith_div_vec2_u32(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(2779u, 1u)], 1u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(49298u, 1u)], 1u)]), vec2<u32>(global4[_wgslsmith_index_u32(23142u, 1u)], 0u), vec2<u32>(55528u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 1u)], 1u)])), vec2<u32>(11289u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(37720u, 1u)], 1u)], 1u)]), select(global3[_wgslsmith_index_u32(71155u, 24u)], vec2<bool>(true, false), global3[_wgslsmith_index_u32(1u, 24u)])), ~(~vec2<u32>(31336u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(38272u, 1u)], 1u)]))), vec2<u32>(select(global4[_wgslsmith_index_u32(0u, 1u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 1u)], 1u)], true) >> (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], 1u)], 1u)] % 32u), _wgslsmith_div_u32(global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u | global4[_wgslsmith_index_u32(35606u, 1u)])), !global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~1u, 1u), 24u)]) % vec2<u32>(32u));
    var var_1 = (_wgslsmith_mult_i32(16187i, abs(_wgslsmith_clamp_i32(-2147483647i, arg_1, u_input.a))) >> (var_0.x % 32u)) << (1u % 32u);
    global3 = array<vec2<bool>, 24>();
    return Struct_1(true, true && any(vec3<bool>(true, true, true)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>) -> vec3<f32> {
    global0 = u_input.a;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1179f, -798f, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(277f * 465f), -293f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1987f - -331f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1953f * 124f) + _wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(520f, -677f), _wgslsmith_f_op_f32(-865f - -667f))), 2466f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(639f, _wgslsmith_f_op_f32(sign(2440f)), 1000f))));
}

fn func_1() -> u32 {
    global2 = array<Struct_1, 32>();
    let var_0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1572f)))), _wgslsmith_f_op_f32(step(-1000f, 1f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(595f)), _wgslsmith_f_op_f32(f32(-1f) * -253f))), 1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(func_4(func_2(u_input.a, u_input.b.x), vec3<bool>(true, false, false))))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-972f, 1933f, -486f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(170f, -345f, -638f)))))))));
    global4 = array<u32, 1>();
    global4 = array<u32, 1>();
    let var_1 = Struct_1(593f == _wgslsmith_f_op_f32(-var_0.x), func_2(1i, 36814i).b);
    return _wgslsmith_mod_u32(13931u, _wgslsmith_dot_vec3_u32(min(firstLeadingBit(vec3<u32>(0u, global4[_wgslsmith_index_u32(0u, 1u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)])), min(vec3<u32>(global4[_wgslsmith_index_u32(0u, 1u)], 4294967295u, 0u), vec3<u32>(global4[_wgslsmith_index_u32(1u, 1u)], 68270u, 1u))) ^ ~vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], 1u)], 1u, global4[_wgslsmith_index_u32(12138u, 1u)]), _wgslsmith_sub_vec3_u32(select(vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 3536u, global4[_wgslsmith_index_u32(12815u, 1u)]) & vec3<u32>(48168u, 4294967295u, 85918u), abs(vec3<u32>(4294967295u, global4[_wgslsmith_index_u32(7933u, 1u)], global4[_wgslsmith_index_u32(16355u, 1u)])), vec3<bool>(var_1.b, var_1.a, true)), countOneBits(select(vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)], 1u)], 36562u, 4294967295u), vec3<u32>(122580u, global4[_wgslsmith_index_u32(81736u, 1u)], 100738u), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_u32(func_1(), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)], 1u)], global4[_wgslsmith_index_u32(1u, 1u)], 4294967295u), vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 1u)], 1u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(56871u, 1u)], 1u)], 1u)], 1u)], 17534u, 8382u)), ~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(15390u, 1u)], 1u)], 0u), min(firstTrailingBit(vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)], global4[_wgslsmith_index_u32(4294967295u, 1u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(32434u, 1u)], 1u)])) | firstTrailingBit(vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(6530u, 1u)], 1u)], 1u, 0u)), ~select(vec3<u32>(90606u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)], 1u)], 122580u), vec3<u32>(21998u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], global4[_wgslsmith_index_u32(4294967295u, 1u)]), true))), 1u)]);
    global2 = array<Struct_1, 32>();
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(~(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(7748u, 1u)], 1u)]), global4[_wgslsmith_index_u32(max(global4[_wgslsmith_index_u32(abs(global4[_wgslsmith_index_u32(1u, 1u)]), 1u)], ~global4[_wgslsmith_index_u32(50672u, 1u)]), 1u)], (global4[_wgslsmith_index_u32(1u, 1u)] | 4294967295u) & global4[_wgslsmith_index_u32(max(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(89977u, 1u)], 1u)], 1u)], 1u)], 4294967295u), 1u)]), countOneBits(~(~(vec3<u32>(24262u, 15767u, 67651u) | vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(30070u, 1u)], 1u)], 1u, global4[_wgslsmith_index_u32(42769u, 1u)]))))), 15u)];
    let var_2 = ~9131i;
    var var_3 = abs(vec3<i32>(u_input.a, abs(u_input.a), i32(-1i) * -6214i)) ^ select(-countOneBits(vec3<i32>(2147483647i, var_1.a, var_1.a)), _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.b.x, u_input.b.x, -16096i), u_input.b.zxw), select(vec3<bool>(any(var_1.d.yx), false, select(var_1.d.x, true, var_1.d.x)), !select(vec3<bool>(false, var_1.c.a, var_1.d.x), vec3<bool>(false, false, false), vec3<bool>(true, var_1.d.x, false)), false));
    let var_4 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(abs(func_1()), _wgslsmith_mod_vec3_i32(vec3<i32>(countOneBits(-1i), _wgslsmith_dot_vec3_i32(u_input.b.xyy, ~u_input.b.wxy), -4457i), u_input.b.zxw), min(reverseBits(-var_3.x), _wgslsmith_mult_i32(reverseBits(u_input.a), 60759i)));
}

