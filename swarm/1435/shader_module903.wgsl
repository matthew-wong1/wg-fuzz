struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(10316u, 34100u);

var<private> global1: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false));

var<private> global2: u32;

var<private> global3: array<f32, 17>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1450f))));
    global2 = firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_add_u32(4294967295u, _wgslsmith_div_u32(global0.x, _wgslsmith_div_u32(60683u, 70412u))), ~(~4294967295u)));
    global1 = array<vec4<bool>, 28>();
    let var_2 = vec4<u32>(arg_2.a, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, ~arg_2.a, ~(~4294967295u), ~arg_2.a & arg_2.a), (vec4<u32>(global0.x, 4294967295u, global0.x, arg_2.a) >> (firstLeadingBit(vec4<u32>(5512u, arg_2.a, global0.x, 4294967295u)) % vec4<u32>(32u))) | vec4<u32>(arg_2.a, ~39195u, _wgslsmith_mod_u32(global0.x, global0.x), firstTrailingBit(0u))), arg_2.a, global0.x);
    return all(select(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true))), vec2<bool>(any(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), true), vec2<bool>(false, true))));
}

fn func_2(arg_0: vec4<bool>) -> i32 {
    var var_0 = Struct_2(global0.x, 251f, Struct_1(_wgslsmith_add_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(u_input.a, -2147483647i)), (vec2<i32>(u_input.a, 1i) | vec2<i32>(u_input.a, u_input.a)) << (~vec2<u32>(global0.x, 0u) % vec2<u32>(32u)))));
    global2 = ~0u;
    var var_1 = vec2<bool>(true == (_wgslsmith_dot_vec2_i32(-vec2<i32>(23989i, 2147483647i), var_0.c.a) <= _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(1i, -2147483647i, -1i)), ~vec3<i32>(0i, var_0.c.a.x, 29337i))), func_3(~vec4<i32>(31365i, var_0.c.a.x, u_input.a, -1i), Struct_1(vec2<i32>(-50673i, 0i)), Struct_2(~4294967295u, var_0.b, var_0.c)) || (_wgslsmith_f_op_f32(f32(-1f) * -396f) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + -1706f)));
    var_1 = select(vec2<bool>(var_1.x || false, var_1.x), select(select(!vec2<bool>(arg_0.x, true), select(arg_0.yz, select(vec2<bool>(true, true), arg_0.yy, var_1.x), !vec2<bool>(false, var_1.x)), var_1.x), arg_0.xz, false), all(select(arg_0, select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), !vec4<bool>(var_1.x, false, true, false), !var_1.x), !vec4<bool>(var_1.x, false, var_1.x, true))));
    let var_2 = select(vec2<bool>(!(arg_0.x & !var_1.x), var_1.x), arg_0.xy, arg_0.zx);
    return reverseBits(-_wgslsmith_div_i32(var_0.c.a.x, _wgslsmith_mod_i32(0i, -13570i << (global0.x % 32u))));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: i32, arg_3: f32) -> i32 {
    let var_0 = _wgslsmith_mod_i32(firstTrailingBit(func_2(global1[_wgslsmith_index_u32(max(global0.x | global0.x, ~global0.x), 28u)])), _wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_0, u_input.a), arg_1 | (-18278i >> ((global0.x & 17141u) % 32u))));
    let var_1 = vec3<u32>(global0.x, _wgslsmith_clamp_u32(~global0.x, 1u, min(global0.x & (global0.x ^ global0.x), global0.x)), global0.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-319f, arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global0.x, 17u)])) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-316f, -419f, false)), -1944f, select(true, false, true))))));
    let var_3 = false;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) + -323f)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1032f))));
    return ~arg_2;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, arg_1.a) << (~4294967295u % 32u), 17u)])), arg_1.c);
    global2 = 10572u;
    return Struct_1(_wgslsmith_clamp_vec2_i32(~vec2<i32>(_wgslsmith_add_i32(-1i, -29611i), -4771i), abs(reverseBits(vec2<i32>(37908i, 2147483647i))), vec2<i32>(-1i) * -select(arg_1.c.a, vec2<i32>(arg_1.c.a.x, 11718i), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 56642u;
    global0 = vec2<u32>(~(~(~57366u)), 4294967295u);
    var var_1 = _wgslsmith_div_u32(_wgslsmith_add_u32(global0.x, global0.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(max(var_0, 51610u), 4294967295u, ~var_0, global0.x), ~vec4<u32>(1u, ~global0.x, var_0 << (13627u % 32u), global0.x)));
    var_1 = ~4294967295u;
    var var_2 = func_4(func_1(50974i, ~_wgslsmith_div_i32(u_input.a, u_input.a), -1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 17u)]))) >> (global0.x % 32u), Struct_2(_wgslsmith_mod_u32(1u, global0.x), _wgslsmith_f_op_f32(max(1196f, 777f)), Struct_1(_wgslsmith_sub_vec2_i32(~vec2<i32>(2147483647i, -2147483647i), ~vec2<i32>(u_input.a, -2147483647i)))), Struct_1(select(_wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(-12242i, u_input.a)), vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -36132i)), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, 6321i), max(vec2<i32>(u_input.a, 35999i), vec2<i32>(20157i, u_input.a))), vec2<bool>(true, true))));
    global0 = abs(~(~(~_wgslsmith_add_vec2_u32(vec2<u32>(var_0, 88079u), vec2<u32>(4294967295u, var_0)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(_wgslsmith_mult_i32(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(var_2.a, vec2<i32>(-2147483647i, 1i)))) | (u_input.a & (select(-2147483647i, u_input.a, true) & u_input.a)), 44435u, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global0.x, 23975u), 17u)])) - global3[_wgslsmith_index_u32(var_0, 17u)]), global3[_wgslsmith_index_u32(global0.x, 17u)], 948f, -547f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1267f, -1083f, -448f, 627f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(var_0, 17u)], global3[_wgslsmith_index_u32(global0.x, 17u)], global3[_wgslsmith_index_u32(global0.x, 17u)], global3[_wgslsmith_index_u32(global0.x, 17u)])))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1124f, 1000f, global3[_wgslsmith_index_u32(global0.x, 17u)], global3[_wgslsmith_index_u32(var_0, 17u)]))))));
}

