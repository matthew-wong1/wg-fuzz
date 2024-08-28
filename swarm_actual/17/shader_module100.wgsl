struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: bool,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(796f, 1630f, 1802f);

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<f32, 31>;

var<private> global3: i32 = 20671i;

var<private> global4: f32 = -860f;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> vec4<i32> {
    let var_0 = ~arg_1;
    return arg_0.d;
}

fn func_3() -> vec3<f32> {
    return vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 31u)] * global2[_wgslsmith_index_u32(0u, 31u)]))), _wgslsmith_f_op_f32(abs(-393f)), (false & (global0.x > -355f)) == false)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(1u, 31u)])))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~0u, 31u)]), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(301f)), _wgslsmith_f_op_f32(trunc(696f)))))))));
}

fn func_2() -> Struct_1 {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1015f - _wgslsmith_f_op_f32(-global0.x))))), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -741f));
    let var_0 = Struct_1(~vec3<i32>(u_input.a.x, firstTrailingBit(~u_input.a.x), ~(-32102i)), reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(~1u, ~43401u, 0u), ~select(vec3<u32>(61145u, 23143u, 0u), vec3<u32>(1u, 40497u, 1u), false))), select(u_input.a.x >> (_wgslsmith_div_u32(31147u, 9570u) % 32u), -_wgslsmith_add_i32(1i, 0i), false) < abs(u_input.a.x), abs(~(-select(vec4<i32>(u_input.a.x, 1i, -1i, u_input.a.x), vec4<i32>(2147483647i, u_input.a.x, 2147483647i, -43410i), vec4<bool>(true, false, false, false)))));
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1601f * _wgslsmith_f_op_f32(min(-400f, global0.x))), -808f, -1131f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3()))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -989f) + -1408f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.b.x, 31u)] - _wgslsmith_f_op_f32(1473f * -134f)), _wgslsmith_f_op_f32(409f + _wgslsmith_f_op_f32(select(-831f, -551f, var_0.c))))), select(select(vec3<bool>(true, !var_0.c, true), select(!vec3<bool>(var_0.c, var_0.c, var_0.c), vec3<bool>(true, true, true), select(vec3<bool>(true, var_0.c, true), vec3<bool>(var_0.c, false, false), var_0.c)), vec3<bool>(true, false, true)), select(vec3<bool>(any(vec3<bool>(var_0.c, true, var_0.c)), !var_0.c, any(vec4<bool>(var_0.c, true, var_0.c, var_0.c))), select(select(vec3<bool>(var_0.c, var_0.c, true), vec3<bool>(false, var_0.c, false), true), vec3<bool>(var_0.c, var_0.c, true), -26616i <= var_0.a.x), !vec3<bool>(true, true, var_0.c)), var_0.c)));
    let var_1 = ~(~(~_wgslsmith_mult_u32(1u, var_0.b.x))) << (firstLeadingBit(firstLeadingBit(4294967295u)) % 32u);
    let var_2 = select(vec4<bool>(all(vec3<bool>(false, !var_0.c, var_0.c)), var_0.c, false, true), !vec4<bool>(!(!var_0.c), var_0.c, true, !(var_0.c | var_0.c)), !select(!(!vec4<bool>(var_0.c, false, var_0.c, false)), vec4<bool>(true, !var_0.c, var_0.c, var_0.b.x < var_0.b.x), !select(vec4<bool>(true, true, var_0.c, var_0.c), vec4<bool>(true, var_0.c, true, var_0.c), vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c))));
    return var_0;
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: u32) -> u32 {
    global2 = array<f32, 31>();
    var var_0 = Struct_1(arg_2.d.xxz, abs(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 4294967295u, arg_2.b.x), vec3<u32>(81353u, 62222u, 44110u)), arg_2.b)) | abs(arg_2.b), false, arg_2.d);
    let var_1 = -437f;
    let var_2 = vec4<i32>(u_input.a.x, -(~_wgslsmith_sub_i32(firstTrailingBit(-14734i), min(u_input.a.x, 8090i))), abs(_wgslsmith_div_i32(func_2().a.x, _wgslsmith_sub_i32(-1i, -u_input.a.x))), _wgslsmith_dot_vec3_i32(func_1(func_2(), arg_2.b.x, ~(-17263i)).xxw, ~max(var_0.a, vec3<i32>(17090i, 1i, -1i))));
    let var_3 = -1047f;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~(-2147483647i);
    var var_0 = !(!vec2<bool>(true, !any(vec4<bool>(false, true, false, false))));
    var var_1 = -func_1(Struct_1(firstLeadingBit(vec3<i32>(5621i, -2147483647i, -23363i)), select(firstLeadingBit(vec3<u32>(77086u, 88459u, 43065u)), ~vec3<u32>(0u, 53727u, 1u), vec3<bool>(false, var_0.x, false)), !(var_0.x && var_0.x), -vec4<i32>(u_input.a.x, -35739i, -1i, u_input.a.x)), ~1u >> (0u % 32u), 1i);
    global3 = _wgslsmith_add_i32(_wgslsmith_div_i32(-56813i & (u_input.a.x >> (106248u % 32u)), _wgslsmith_add_i32(u_input.a.x, i32(-1i) * -1i)) ^ (u_input.a.x << (func_4(global2[_wgslsmith_index_u32(~1u, 31u)], !vec2<bool>(var_0.x, var_0.x), func_2(), 116068u) % 32u)), -u_input.a.x);
    let var_2 = func_2();
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-240f, -229f, global0.x, global2[_wgslsmith_index_u32(4294967295u, 31u)]));
    var var_4 = var_2.b.zy;
    global3 = min(u_input.a.x, ~(_wgslsmith_dot_vec3_i32(-var_2.a, vec3<i32>(var_1.x, 66950i, u_input.a.x)) >> (var_4.x % 32u)));
    var var_5 = select(select(!select(select(vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(var_2.c, var_0.x, true, false), false), !vec4<bool>(false, var_0.x, true, var_0.x), var_0.x), select(!(!vec4<bool>(var_0.x, var_0.x, false, true)), !select(vec4<bool>(var_0.x, false, var_2.c, var_2.c), vec4<bool>(true, var_2.c, var_2.c, false), vec4<bool>(var_2.c, var_0.x, var_0.x, var_0.x)), true), !(2147483647i <= abs(var_2.d.x))), !select(vec4<bool>(false, global0.x >= 149f, true, var_2.c), vec4<bool>(true, false, true, true), true), vec4<bool>(var_2.c, true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_f32(-1232f + global2[_wgslsmith_index_u32(78545u, 31u)]))) <= global0.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.wyz) - vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.x + 998f), -1000f), _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(31238u, 31u)])))), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, var_1.x, -1i, 42091i), ~abs(vec4<i32>(-14012i, 2147483647i, -29397i, -2147483647i))) << (vec4<u32>(abs(6236u), _wgslsmith_dot_vec3_u32(var_2.b, ~var_2.b), reverseBits(reverseBits(40002u)), 1u >> (0u % 32u)) % vec4<u32>(32u)));
}

