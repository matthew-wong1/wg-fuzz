struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<f32, 28>;

var<private> global2: array<i32, 30>;

var<private> global3: i32;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32) -> i32 {
    return u_input.a;
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    global1 = array<f32, 28>();
    global3 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(global2[_wgslsmith_index_u32(4518u, 30u)], -17574i, global2[_wgslsmith_index_u32(39551u, 30u)], u_input.a) & ~vec4<i32>(-4210i, global2[_wgslsmith_index_u32(global0.x, 30u)], global2[_wgslsmith_index_u32(51347u, 30u)], 58158i), _wgslsmith_add_vec4_i32(min(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 30u)], -9618i, u_input.a, 1i), vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(1u, 30u)], -1i, u_input.a)), -vec4<i32>(-82071i, 1i, global2[_wgslsmith_index_u32(global0.x, 30u)], -9493i))), vec4<i32>(_wgslsmith_div_i32(-2147483647i >> (global0.x % 32u), firstLeadingBit(global2[_wgslsmith_index_u32(47388u, 30u)])), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~44922u, 52022u | global0.x), 30u)], ~(1256i << (global0.x % 32u)), max(global2[_wgslsmith_index_u32(4294967295u, 30u)], -140i))), 1i, _wgslsmith_mult_i32(func_3(-global2[_wgslsmith_index_u32(4294967295u, 30u)]) | 2147483647i, _wgslsmith_mod_i32(select(-29347i, firstTrailingBit(2147483647i), true), _wgslsmith_div_i32(select(-46356i, -15032i, false), 1i))));
    let var_0 = i32(-1i) * -20162i;
    global1 = array<f32, 28>();
    var var_1 = any(!select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true), any(vec3<bool>(false, false, false)) & true));
    return Struct_2(Struct_1(select(vec2<bool>(false, any(vec2<bool>(false, false))), vec2<bool>(true, true), false), vec2<f32>(-331f, _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(global0.x << (0u % 32u), 28u)]))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(830f, global1[_wgslsmith_index_u32(51255u, 28u)], -489f, -535f), vec4<f32>(arg_0.x, arg_0.x, global1[_wgslsmith_index_u32(global0.x, 28u)], 1401f)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(462f, 477f, 238f, global1[_wgslsmith_index_u32(0u, 28u)]))), vec4<bool>(any(vec3<bool>(false, false, false)), true, true, all(vec3<bool>(true, true, true)))))), any(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), true)), countOneBits(_wgslsmith_div_vec4_u32(~abs(vec4<u32>(global0.x, global0.x, global0.x, 4294967295u)), ~(vec4<u32>(20189u, 0u, global0.x, 0u) >> (vec4<u32>(global0.x, global0.x, 38535u, global0.x) % vec4<u32>(32u))))));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = Struct_3(func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0.a.c.zxz, arg_0.a.c.wyz, true)) * vec3<f32>(arg_0.a.c.x, global1[_wgslsmith_index_u32(5907u, 28u)], 1350f)), vec3<f32>(_wgslsmith_f_op_f32(min(arg_0.a.c.x, global1[_wgslsmith_index_u32(global0.x, 28u)])), arg_0.a.c.x, arg_0.a.c.x))).a, 41729u, func_2(_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(~global0.x, 28u)], -291f, _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(107166u, 28u)]))), _wgslsmith_f_op_vec3_f32(-func_2(arg_0.a.c.ywz).a.c.yyz))));
    let var_1 = arg_0;
    var var_2 = var_0.c;
    var var_3 = arg_0.a;
    let var_4 = Struct_3(Struct_1(!var_3.a, _wgslsmith_f_op_vec2_f32(var_0.c.a.b * _wgslsmith_f_op_vec2_f32(-var_0.c.a.c.zw)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.a.b.x)) + _wgslsmith_f_op_f32(ceil(var_3.b.x))), _wgslsmith_f_op_f32(select(var_3.c.x, -1358f, func_2(var_3.c.yxz).b)), var_0.a.b.x, 1186f)), arg_0.c.x >> (var_1.c.x % 32u), var_1);
    return var_1;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<i32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(0u, 28u)]));
    global1 = array<f32, 28>();
    global3 = 1i;
    var var_1 = ~reverseBits(global0.x);
    let var_2 = func_4(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-448f, var_0, 235f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(2047f, 768f, global1[_wgslsmith_index_u32(0u, 28u)]))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1010f, -579f)) + vec3<f32>(global1[_wgslsmith_index_u32(global0.x, 28u)], 237f, 521f)))));
    return var_2.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = u_input.a;
    let var_0 = _wgslsmith_clamp_vec4_u32(select(vec4<u32>(global0.x >> (0u % 32u), global0.x, ~110473u, abs(global0.x)) | select(vec4<u32>(75672u, 82864u, global0.x, global0.x), abs(vec4<u32>(55755u, global0.x, 102478u, global0.x)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true))), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(44162u, 4294967295u, 4294967295u, global0.x), min(vec4<u32>(global0.x, 6009u, 1u, 0u), vec4<u32>(global0.x, 26947u, global0.x, 0u)), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 59306u, global0.x, 0u), vec4<u32>(global0.x, 4294967295u, 64337u, global0.x))), true), ~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(580u, 1u, 9639u, global0.x)), ~vec4<u32>(6374u, global0.x, global0.x, 6632u)), abs(select(~vec4<u32>(0u, 15250u, 61095u, global0.x), ~vec4<u32>(global0.x, global0.x, 32882u, global0.x), false) | _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, 0u, global0.x, 85313u), vec4<u32>(global0.x, 18621u, global0.x, 20108u)), _wgslsmith_add_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, 44190u), vec4<u32>(0u, global0.x, global0.x, global0.x)))));
    var var_1 = Struct_1(select(func_1(vec2<bool>(true, true), ~(vec3<i32>(u_input.a, -35622i, global2[_wgslsmith_index_u32(16949u, 30u)]) ^ vec3<i32>(global2[_wgslsmith_index_u32(global0.x, 30u)], global2[_wgslsmith_index_u32(30088u, 30u)], global2[_wgslsmith_index_u32(var_0.x, 30u)]))), vec2<bool>(false, (global1[_wgslsmith_index_u32(0u, 28u)] != global1[_wgslsmith_index_u32(45541u, 28u)]) && select(true, true, false)), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1[_wgslsmith_index_u32(var_0.x, 28u)], global1[_wgslsmith_index_u32(0u, 28u)]), vec2<f32>(global1[_wgslsmith_index_u32(50330u, 28u)], -262f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(var_0.x, 28u)], -475f)))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.x, 28u)]), _wgslsmith_f_op_f32(f32(-1f) * -221f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-451f, global1[_wgslsmith_index_u32(31097u, 28u)]) * vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], 397f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-472f, 1000f) - vec2<f32>(global1[_wgslsmith_index_u32(global0.x, 28u)], global1[_wgslsmith_index_u32(var_0.x, 28u)])), true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -923f), -100f, _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(92433u, 28u)])), -850f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2081f, global1[_wgslsmith_index_u32(var_0.x, 28u)], -619f, global1[_wgslsmith_index_u32(34601u, 28u)]))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-323f, -1273f, -1062f, global1[_wgslsmith_index_u32(var_0.x, 28u)]))))));
    var var_2 = Struct_3(Struct_1(vec2<bool>(!(!var_1.a.x), !any(vec2<bool>(true, false))), vec2<f32>(global1[_wgslsmith_index_u32(min(52537u, reverseBits(4294967295u)), 28u)], var_1.c.x), _wgslsmith_f_op_vec4_f32(-var_1.c)), (1u | _wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, var_0.x), firstLeadingBit(global0.x))) | ~92435u, func_2(_wgslsmith_f_op_vec3_f32(-var_1.c.wxw)));
    var var_3 = Struct_2(Struct_1(!select(vec2<bool>(true, true), !var_1.a, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1[_wgslsmith_index_u32(var_0.x, 28u)], global1[_wgslsmith_index_u32(global0.x, 28u)]))) - vec2<f32>(global1[_wgslsmith_index_u32(~var_0.x, 28u)], _wgslsmith_f_op_f32(720f * global1[_wgslsmith_index_u32(4294967295u, 28u)]))), var_1.c), func_4(Struct_2(func_2(vec3<f32>(-972f, -464f, -799f)).a, ~87609u == var_0.x, ~(~vec4<u32>(global0.x, var_0.x, var_2.c.c.x, 28012u)))).a.a.x, var_2.c.c & var_0);
    var var_4 = Struct_3(var_2.c.a, ~var_0.x, Struct_2(Struct_1(var_1.a, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(887f, var_3.a.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1389f, var_2.a.c.x, var_3.a.b.x, var_1.b.x))), _wgslsmith_f_op_f32(-var_2.a.c.x) > var_3.a.c.x, var_3.c));
    var_1 = func_4(var_4.c).a;
    var var_5 = _wgslsmith_dot_vec2_i32(~(~(-vec2<i32>(u_input.a, u_input.a))), vec2<i32>(-select(1i, u_input.a, var_1.a.x), 1i));
    let var_6 = func_4(var_4.c);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<u32>(319u & var_3.c.x, 36613u, var_2.b)) ^ var_0.wyz, vec4<i32>(u_input.a, u_input.a << (var_2.b % 32u), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~var_6.c.x, var_2.b ^ var_3.c.x), 30u)], ~(~(-26091i << (var_4.b % 32u)))), ~((~vec2<i32>(global2[_wgslsmith_index_u32(var_2.b, 30u)], -43708i) | vec2<i32>(1i, u_input.a)) ^ countOneBits(select(vec2<i32>(11307i, global2[_wgslsmith_index_u32(1u, 30u)]), vec2<i32>(5849i, 41317i), false))), var_3.c.x, select(_wgslsmith_div_i32(_wgslsmith_div_i32(-52057i, u_input.a), -30058i) >> (1u % 32u), abs(func_3(countOneBits(global2[_wgslsmith_index_u32(var_4.b, 30u)]))), var_4.c.b));
}

