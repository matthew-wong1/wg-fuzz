struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_1;

var<private> global2: array<vec2<u32>, 14>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> bool {
    global2 = array<vec2<u32>, 14>();
    let var_0 = arg_0;
    global1 = Struct_1(var_0.a, var_0.b, any(vec2<bool>(any(vec2<bool>(false, var_0.d)), true)), global1.c);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) + _wgslsmith_f_op_f32(f32(-1f) * -628f)))), 1u, var_0.c, ((~35228i != u_input.c.x) & (-1471f == _wgslsmith_f_op_f32(-arg_0.a))) & arg_0.d);
    let var_2 = vec4<u32>(~(~_wgslsmith_sub_u32(var_0.b ^ u_input.b.x, _wgslsmith_mod_u32(0u, global0.x))), 28829u | (~var_0.b ^ ~global0.x), var_0.b, ~min(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(157771u, 0u, global0.x, var_1.b)), ~4294967295u) << (1u % 32u));
    return any(vec4<bool>(var_0.a == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-384f - arg_0.a))), false, true, true));
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: vec2<bool>) -> Struct_1 {
    global1 = Struct_1(-1301f, firstTrailingBit(1u), all(vec2<bool>(false, !(false & arg_2.x))), any(vec3<bool>(global1.d, !func_3(Struct_1(global1.a, u_input.a.x, global1.c, global1.c)), true)));
    let var_0 = ~vec3<u32>(global1.b, ~1u, global1.b) << (vec3<u32>(77072u, global1.b, 368u) % vec3<u32>(32u));
    var var_1 = Struct_1(global1.a, ~_wgslsmith_clamp_u32(27933u, 4294967295u, var_0.x), arg_2.x, true);
    global2 = array<vec2<u32>, 14>();
    var var_2 = vec3<u32>(_wgslsmith_mod_u32(~reverseBits(6538u), 1u), _wgslsmith_div_u32(~(~firstLeadingBit(var_1.b)), ~(~u_input.b.x)), min(max(1u, global0.x), 6452u));
    return Struct_1(var_1.a, reverseBits(var_1.b), false, any(vec4<bool>(var_1.d, global1.c, var_1.d, abs(var_0.x) > ~24318u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec2<u32> {
    return ~vec2<u32>(~1u, ~global1.b) << (_wgslsmith_add_vec2_u32(~_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, arg_1.b), abs(u_input.b.wz)), global2[_wgslsmith_index_u32(global0.x, 14u)]) % vec2<u32>(32u));
}

fn func_1() -> Struct_1 {
    global0 = reverseBits(~func_4(func_2(~vec4<i32>(u_input.c.x, 0i, -1i, -28897i), _wgslsmith_sub_i32(u_input.c.x, u_input.c.x), vec2<bool>(true, true)), func_2(-vec4<i32>(-9840i, u_input.c.x, u_input.c.x, -24262i), ~u_input.c.x, vec2<bool>(true, true))));
    var var_0 = func_2(vec4<i32>(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(u_input.c.x, 1i, u_input.c.x) & vec3<i32>(u_input.c.x, u_input.c.x, 0i)), vec3<i32>(~u_input.c.x, -1i, firstLeadingBit(u_input.c.x))), u_input.c.x, -(-u_input.c.x | ~(-1i)), firstLeadingBit(~_wgslsmith_clamp_i32(-1i, 2147483647i, 2147483647i))), ~select(-(i32(-1i) * -1i), 0i, true), !(!vec2<bool>(global1.d, true)));
    var_0 = Struct_1(var_0.a, global1.b, any(select(select(vec3<bool>(var_0.d, true, true), select(vec3<bool>(global1.d, global1.d, var_0.c), vec3<bool>(true, var_0.c, var_0.d), true), false), !select(vec3<bool>(var_0.c, global1.c, true), vec3<bool>(global1.d, false, false), vec3<bool>(false, false, false)), global1.d)), any(vec4<bool>(select(true, false, global1.c), true, true, _wgslsmith_f_op_f32(select(1738f, -1658f, false)) > _wgslsmith_div_f32(global1.a, global1.a))));
    let var_1 = select(select(!(!vec3<bool>(global1.d, true, global1.c)), !vec3<bool>(true, var_0.d, u_input.c.x <= u_input.c.x), true), vec3<bool>(true, all(select(vec4<bool>(false, var_0.c, true, false), vec4<bool>(global1.d, var_0.c, true, var_0.d), false)) & !(true && var_0.d), all(vec3<bool>(true, true, any(vec2<bool>(true, false))))), var_0.d && false);
    global1 = func_2(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, 19944i), ~vec4<i32>(2147483647i, 2147483647i, u_input.c.x, 0i), abs(vec4<i32>(-52749i, 18038i, u_input.c.x, u_input.c.x))), vec4<i32>(max(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 0i), u_input.c), 13419i), max(~(-8231i), 9355i ^ u_input.c.x), i32(-1i) * -31217i, ~(~0i))), ~_wgslsmith_mult_i32(max(_wgslsmith_div_i32(u_input.c.x, -1i), _wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, u_input.c.x)), u_input.c.x), var_1.yx);
    return func_2(abs(firstLeadingBit(-select(vec4<i32>(-1i, 10747i, -2147483647i, 1i), vec4<i32>(u_input.c.x, u_input.c.x, 7426i, u_input.c.x), vec4<bool>(var_1.x, var_1.x, var_0.c, global1.d)))), firstLeadingBit(max(~(i32(-1i) * -2147483647i), u_input.c.x)), vec2<bool>(var_1.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    var var_0 = func_2(~(((vec4<i32>(-2147483647i, 1i, 1i, u_input.c.x) ^ vec4<i32>(0i, 45400i, u_input.c.x, u_input.c.x)) & countOneBits(vec4<i32>(-1i, 2147483647i, -4787i, -1i))) & vec4<i32>(u_input.c.x, abs(-58058i), -u_input.c.x, ~(-1i))), -9634i, vec2<bool>(!global1.c, true));
    var var_1 = u_input.c;
    global2 = array<vec2<u32>, 14>();
    var var_2 = select(1i, reverseBits(-68555i), false);
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(427f, var_0.a, var_0.a)), _wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, -993f, global1.a), vec3<f32>(207f, global1.a, var_0.a)))))), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(min(-vec2<i32>(0i, 0i), select(vec2<i32>(-1357i, 0i), vec2<i32>(var_1.x, 1i), global1.d)), u_input.c, vec2<i32>(1i, min(-2147483647i, u_input.c.x))), ~select(vec2<i32>(var_1.x, var_1.x), u_input.c, vec2<bool>(true, false))), u_input.c.x);
}

