struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 28>;

var<private> global1: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(10580u, 4294967295u, 12661u, 1u), vec4<u32>(0u, 0u, 1u, 103946u), vec4<u32>(1u, 0u, 86894u, 0u), vec4<u32>(14135u, 0u, 1u, 46539u), vec4<u32>(0u, 62909u, 4294967295u, 1u), vec4<u32>(23806u, 0u, 1u, 0u), vec4<u32>(0u, 1u, 18529u, 22079u), vec4<u32>(57511u, 4294967295u, 1u, 937u), vec4<u32>(14093u, 1u, 70260u, 63201u), vec4<u32>(1u, 1u, 26544u, 1u), vec4<u32>(29048u, 26987u, 28410u, 10605u), vec4<u32>(0u, 0u, 59468u, 1u));

var<private> global2: Struct_2;

var<private> global3: Struct_1 = Struct_1(-943f, 41159u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> f32 {
    global2 = Struct_2(_wgslsmith_f_op_vec4_f32(global2.a + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1030f, global3.a, global2.a.x, _wgslsmith_f_op_f32(823f - 258f))))), _wgslsmith_mult_u32(global3.b, _wgslsmith_clamp_u32(global2.b & 32317u, global2.b, 1u ^ global3.b)) ^ ~firstTrailingBit(1u), vec2<u32>(~53809u, ~_wgslsmith_sub_u32(firstTrailingBit(67569u), 1u)));
    global0 = array<Struct_4, 28>();
    let var_0 = abs(vec4<i32>(u_input.b.x, -681i, -1i, _wgslsmith_add_i32(_wgslsmith_mult_i32(-47178i, 1i ^ u_input.b.x), -(~0i))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a)), firstLeadingBit(global3.b));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.a)))), global3.b, select(vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_1.b, 1u), vec3<u32>(global3.b, global3.b, global2.c.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global3.b, var_1.b), ~vec3<u32>(23380u, 1u, 15383u))), _wgslsmith_add_vec2_u32(global2.c, global2.c), !select(vec2<bool>(arg_0, true), vec2<bool>(false, true), !vec2<bool>(arg_0, arg_0))));
    return _wgslsmith_div_f32(-627f, -662f);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_5, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = 10992i;
    let var_1 = vec3<i32>(-18708i, -countOneBits(2147483647i), firstLeadingBit(~(-1i)));
    var var_2 = Struct_1(global2.a.x, _wgslsmith_clamp_u32(abs(global3.b), max(1u, abs(_wgslsmith_mult_u32(arg_1.a, 46834u))), _wgslsmith_div_u32(_wgslsmith_mod_u32(abs(global2.c.x), arg_2.b), abs(4294967295u) >> (~arg_1.a % 32u))));
    var_0 = ~0i;
    var_0 = -1i;
    return select(!vec3<bool>(_wgslsmith_div_f32(1344f, -1254f) >= _wgslsmith_f_op_f32(sign(var_2.a)), false, any(vec4<bool>(false, false, false, false)) || true), vec3<bool>(_wgslsmith_dot_vec4_u32(arg_0.a & vec4<u32>(var_2.b, 1u, global3.b, 5861u), global1[_wgslsmith_index_u32(arg_0.a.x, 12u)] & arg_0.a) <= arg_1.a, false, !(!select(true, false, false))), !vec3<bool>(true, !(-1689f <= var_2.a), any(vec4<bool>(true, true, true, true))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_3) -> vec2<f32> {
    let var_0 = func_4(arg_1, Struct_5(firstLeadingBit(~arg_1.a.x) >> (max(_wgslsmith_add_u32(35946u, arg_1.a.x), global2.c.x) % 32u), -_wgslsmith_mult_i32(_wgslsmith_mod_i32(42611i, arg_0.x), _wgslsmith_mod_i32(u_input.a, u_input.a)), _wgslsmith_mod_vec3_i32(~_wgslsmith_mod_vec3_i32(arg_0.xxz, arg_0.yxy), arg_0.wxy)), Struct_2(vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(global3.a + global3.a), _wgslsmith_f_op_f32(func_3(true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(535f)) * global2.a.x)), arg_1.a.x, arg_1.a.yx));
    var var_1 = Struct_4(all(select(!(!vec4<bool>(false, var_0.x, var_0.x, var_0.x)), !select(vec4<bool>(true, true, var_0.x, true), vec4<bool>(var_0.x, true, true, false), vec4<bool>(var_0.x, var_0.x, true, var_0.x)), false)));
    global3 = Struct_1(_wgslsmith_f_op_f32(-global2.a.x), ~firstLeadingBit(global2.b));
    var var_2 = max(countOneBits(1i) | arg_0.x, -arg_0.x);
    var var_3 = !func_4(arg_1, Struct_5(abs(_wgslsmith_add_u32(1u, global3.b)), (u_input.c ^ arg_0.x) >> (u_input.d % 32u), vec3<i32>(1i ^ arg_0.x, 1i, -1i)), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-global2.a.x), 1816f, -1915f, _wgslsmith_f_op_f32(-global3.a)), _wgslsmith_dot_vec2_u32(countOneBits(arg_1.a.xw), vec2<u32>(arg_1.a.x, 1u)), global2.c)).zy;
    return _wgslsmith_f_op_vec2_f32(-global2.a.xw);
}

fn func_1() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global2.a.x + _wgslsmith_f_op_f32(f32(-1f) * -1520f)), global3.a) - _wgslsmith_f_op_vec2_f32(func_2(select(vec4<i32>(u_input.a, u_input.b.x, u_input.b.x, u_input.a), ~vec4<i32>(u_input.a, u_input.c, 37544i, 5574i), global3.a > global3.a), Struct_3(~global1[_wgslsmith_index_u32(u_input.d, 12u)])))));
    global0 = array<Struct_4, 28>();
    let var_1 = -(~(-firstTrailingBit(abs(vec4<i32>(2147483647i, 2147483647i, -4181i, u_input.c)))));
    let var_2 = max(vec4<i32>(2147483647i, var_1.x, u_input.c, _wgslsmith_mod_i32(1i, ~(-2147483647i) >> (1u % 32u))), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.b.x, 1i, 0i), vec4<i32>(var_1.x, 45908i, u_input.a, var_1.x)), -var_1), var_1) << (firstTrailingBit(global1[_wgslsmith_index_u32(~global3.b, 12u)]) % vec4<u32>(32u)));
    let var_3 = abs(_wgslsmith_dot_vec4_i32(-(~(~vec4<i32>(u_input.b.x, -2147483647i, -1i, 9759i))), _wgslsmith_sub_vec4_i32(vec4<i32>(16739i, -u_input.c, -u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_2.x, var_1.x), vec3<i32>(var_2.x, var_1.x, 0i))), vec4<i32>(var_1.x, var_2.x, u_input.b.x, u_input.a) << (~global1[_wgslsmith_index_u32(0u, 12u)] % vec4<u32>(32u)))));
    return select(select(vec2<bool>(true, !any(vec3<bool>(true, false, true))), !select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), func_4(Struct_3(vec4<u32>(4294967295u, 1u, global3.b, 4294967295u)), Struct_5(14269u, var_1.x, vec3<i32>(1i, -14399i, var_2.x)), Struct_2(vec4<f32>(global3.a, 570f, -112f, global3.a), u_input.d, vec2<u32>(0u, global3.b))).zz), vec2<bool>(true, true)), vec2<bool>(true, false), !(1000f == var_0.x));
}

fn func_5(arg_0: f32, arg_1: bool) -> Struct_1 {
    global1 = array<vec4<u32>, 12>();
    var var_0 = vec4<i32>(-73979i, u_input.c, -1i, u_input.a);
    var var_1 = _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(420f * -991f), all(!func_4(Struct_3(vec4<u32>(28173u, global3.b, global2.c.x, 7929u)), Struct_5(global3.b, -9277i, var_0.wzy), Struct_2(global2.a, 1u, global2.c)))));
    global1 = array<vec4<u32>, 12>();
    let var_2 = global0[_wgslsmith_index_u32(~54047u, 28u)];
    return Struct_1(_wgslsmith_f_op_f32(-global2.a.x), select(global3.b, 4294967295u, arg_1) << (min(firstTrailingBit(_wgslsmith_add_u32(5666u, 1u)), 0u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.a.xw)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.a.zw) * vec2<f32>(global2.a.x, global2.a.x)))), global2.a.xz, global3.a > 1000f));
    let var_1 = Struct_5(global3.b, abs(_wgslsmith_sub_i32(0i, _wgslsmith_clamp_i32(19749i, u_input.b.x, u_input.c))) ^ u_input.a, vec3<i32>(-u_input.c, _wgslsmith_add_i32(~u_input.c, _wgslsmith_mult_i32(u_input.a, -41995i)), abs(-u_input.a)));
    global1 = array<vec4<u32>, 12>();
    global1 = array<vec4<u32>, 12>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.a, -1798f) + 211f), _wgslsmith_add_u32(var_1.a, 37669u));
    global3 = func_5(439f, any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), select(func_1(), vec2<bool>(true, true), false))));
    var var_3 = _wgslsmith_clamp_vec2_i32(select(vec2<i32>(0i, -1i), vec2<i32>(var_1.c.x, u_input.a) & u_input.b, select(vec2<bool>(false, true), vec2<bool>(false, true), false)) | _wgslsmith_sub_vec2_i32(~u_input.b, _wgslsmith_add_vec2_i32(var_1.c.yz, var_1.c.xx)), vec2<i32>(-u_input.a, 2147483647i), _wgslsmith_div_vec2_i32(vec2<i32>(firstLeadingBit(-5810i), var_1.c.x ^ -48529i), vec2<i32>(u_input.b.x, u_input.a) ^ _wgslsmith_sub_vec2_i32(u_input.b, var_1.c.zz))) >> (reverseBits(abs(global2.c)) % vec2<u32>(32u));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1174f + 2135f), -679f) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-766f, 341f)), var_0))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_2(max(vec4<i32>(u_input.a, -59339i, 1i, var_3.x), vec4<i32>(u_input.a, -2147483647i, var_3.x, 23184i)), Struct_3(vec4<u32>(18761u, var_1.a, 1u, var_2.b))))))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.x, var_2.a)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.x, global2.a.x))) + _wgslsmith_f_op_vec2_f32(-var_0)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global2.a.xw))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.a, var_2.a), vec2<f32>(-293f, -1000f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(411f, 1000f))), vec2<f32>(_wgslsmith_f_op_f32(426f * -639f), var_2.a)))), ~_wgslsmith_mult_u32(~59958u, abs(~global2.b)));
}

