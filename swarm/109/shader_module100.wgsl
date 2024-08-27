struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<i32, 28> = array<i32, 28>(-44991i, 0i, 31672i, -1i, 34951i, -1i, -8867i, 0i, -1i, 12105i, -21919i, 1i, -23587i, 2147483647i, 46534i, -11358i, -118i, 3816i, 0i, 22602i, 0i, 1i, -1i, 2147483647i, -1i, -55492i, 2147483647i, 2147483647i);

var<private> global2: array<vec3<u32>, 15>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: bool, arg_3: vec3<bool>) -> bool {
    global0 = any(vec4<bool>(true, false != (!arg_0 | !arg_3.x), arg_3.x, !(true || !arg_0)));
    global1 = array<i32, 28>();
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(366f - _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(sign(arg_1)))), arg_1));
    global2 = array<vec3<u32>, 15>();
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, _wgslsmith_f_op_f32(min(1033f, -1394f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(195f + 1365f))), arg_3.zx)));
    return arg_2;
}

fn func_3(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = vec2<f32>(2219f, _wgslsmith_f_op_f32(f32(-1f) * -1030f));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * var_0.x) * -304f))) - var_0.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(var_0.x - 700f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x + 1735f))))), _wgslsmith_f_op_f32(-var_0.x))));
    let var_2 = _wgslsmith_mod_i32(-1i, _wgslsmith_div_i32(global1[_wgslsmith_index_u32(u_input.c.x, 28u)] | global1[_wgslsmith_index_u32(u_input.c.x, 28u)], global1[_wgslsmith_index_u32(firstLeadingBit(0u), 28u)]) >> (1u % 32u)) ^ max(-_wgslsmith_mod_i32(1i, 1i), min(~u_input.a.x, global1[_wgslsmith_index_u32(u_input.c.x >> (u_input.c.x % 32u), 28u)]) | countOneBits(~global1[_wgslsmith_index_u32(59119u, 28u)]));
    var var_3 = true;
    global0 = any(vec4<bool>(var_2 == global1[_wgslsmith_index_u32(1u, 28u)], !func_2(true, _wgslsmith_f_op_f32(abs(-340f)), arg_0.x & false, vec3<bool>(arg_0.x, true, arg_0.x)), false, arg_0.x));
    return Struct_1(var_1);
}

fn func_4(arg_0: Struct_1) -> u32 {
    global1 = array<i32, 28>();
    global2 = array<vec3<u32>, 15>();
    return u_input.c.x;
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: vec3<bool>) -> i32 {
    var var_0 = _wgslsmith_dot_vec2_i32(-u_input.a.wx, select(-firstLeadingBit(vec2<i32>(global1[_wgslsmith_index_u32(29285u, 28u)], 522i)), min(vec2<i32>(global1[_wgslsmith_index_u32(1u, 28u)], -2147483647i), u_input.a.yz & vec2<i32>(u_input.a.x, 0i)), true)) & ~(~abs(0i));
    let var_1 = func_4(func_3(vec4<bool>(true, any(!vec3<bool>(true, arg_3.x, arg_1.x)), all(select(arg_3.zx, arg_3.yx, arg_1.zx)), func_2(arg_3.x & true, _wgslsmith_f_op_f32(f32(-1f) * -272f), any(vec2<bool>(true, false)), !arg_1))));
    let var_2 = func_3(!vec4<bool>(arg_1.x, arg_1.x, any(select(arg_3, vec3<bool>(arg_1.x, arg_1.x, arg_3.x), arg_1.x)), func_2(all(vec3<bool>(false, false, false)), func_3(vec4<bool>(false, true, arg_1.x, false)).a, arg_1.x, vec3<bool>(true, arg_1.x, true))));
    var_0 = 0i;
    var var_3 = var_2;
    return _wgslsmith_dot_vec2_i32(select(min(abs(_wgslsmith_div_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(61461u, 28u)], -20899i), vec2<i32>(-53385i, u_input.a.x))), u_input.a.zx), _wgslsmith_sub_vec2_i32(firstLeadingBit(u_input.a.xy), u_input.a.yx) | vec2<i32>(1i, -global1[_wgslsmith_index_u32(51440u, 28u)]), min(_wgslsmith_add_u32(u_input.c.x, 17661u), var_1) != _wgslsmith_div_u32(var_1, countOneBits(249u))), _wgslsmith_add_vec2_i32(vec2<i32>(67416i, i32(-1i) * -2147483647i), vec2<i32>(-1i, u_input.a.x) ^ vec2<i32>(1i, -6639i ^ u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<i32>(func_1(_wgslsmith_f_op_f32(sign(-271f)), vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(379f, 1216f, 982f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1984f, -703f, -1448f))), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)), u_input.b, 1i), -(~_wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(-11174i, 2147483647i, global1[_wgslsmith_index_u32(u_input.c.x, 28u)])), vec3<i32>(15926i, -34585i, global1[_wgslsmith_index_u32(51750u, 28u)]), firstLeadingBit(vec3<i32>(u_input.b, global1[_wgslsmith_index_u32(1u, 28u)], 59306i)))), any(vec4<bool>(true, true, true, true)));
    let var_1 = func_3(vec4<bool>(!(!(var_0.x > u_input.a.x)), !(any(vec4<bool>(true, true, true, false)) | func_2(false, -785f, true, vec3<bool>(false, false, true))), false, false));
    var var_2 = func_3(!vec4<bool>(_wgslsmith_div_f32(var_1.a, var_1.a) >= var_1.a, true, true, all(vec2<bool>(true, false))));
    var var_3 = _wgslsmith_add_i32((i32(-1i) * -2147483647i) & ~_wgslsmith_dot_vec3_i32(-vec3<i32>(1i, 5462i, 1i), u_input.a.xxz), _wgslsmith_add_i32(~(-3558i), _wgslsmith_mult_i32(~abs(u_input.b), 1i)));
    global1 = array<i32, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~u_input.a) >> (vec4<u32>(u_input.c.x, 22157u, u_input.c.x, reverseBits(~u_input.c.x)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(abs(vec4<u32>(countOneBits(0u), _wgslsmith_mod_u32(69665u, 47034u), u_input.c.x, 28161u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.c.x, 44074u, u_input.c.x), vec4<u32>(24886u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(0u, u_input.c.x, u_input.c.x, 0u)) ^ vec4<u32>(_wgslsmith_mod_u32(u_input.c.x, 1u), ~4294967295u, _wgslsmith_sub_u32(u_input.c.x, 45466u), _wgslsmith_sub_u32(u_input.c.x, 0u))), abs(countOneBits(firstTrailingBit(firstLeadingBit(vec4<u32>(u_input.c.x, 16530u, u_input.c.x, 61u))))), var_2.a, u_input.c.x & u_input.c.x);
}

