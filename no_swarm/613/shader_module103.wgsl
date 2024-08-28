struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec4<i32>,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec2<i32>, 10>;

var<private> global2: array<Struct_1, 31>;

var<private> global3: array<bool, 24> = array<bool, 24>(false, false, true, true, false, true, false, false, true, true, true, true, true, true, true, false, true, true, false, true, false, true, false, true);

var<private> global4: i32;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_4, arg_1: u32) -> f32 {
    global0 = any(vec4<bool>(arg_0.e.x, false, true, false)) || all(!select(!arg_0.e, !vec3<bool>(false, true, global3[_wgslsmith_index_u32(u_input.b, 24u)]), vec3<bool>(true, global3[_wgslsmith_index_u32(41426u, 24u)], arg_0.e.x)));
    global1 = array<vec2<i32>, 10>();
    var var_0 = Struct_2(!vec2<bool>(global3[_wgslsmith_index_u32(arg_0.a.c.x, 24u)], false), 27695u < countOneBits(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, 4294967295u, arg_1), 1u)), 53268u);
    var var_1 = arg_0;
    let var_2 = ~countOneBits(firstTrailingBit(_wgslsmith_div_i32(u_input.e, 0i) & abs(u_input.a)));
    return -184f;
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    global4 = ~(-24813i);
    global0 = true;
    global0 = false;
    var var_0 = global2[_wgslsmith_index_u32(u_input.b, 31u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1157f, 406f))))));
    return _wgslsmith_f_op_f32(func_3(Struct_4(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, ~(14577u >> (u_input.b % 32u))), 31u)], _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x), vec3<f32>(-340f, -651f, var_1.x)) + _wgslsmith_div_vec3_f32(vec3<f32>(-566f, var_1.x, 1337f), vec3<f32>(var_1.x, -1051f, -863f))))), arg_0, 10879i, vec3<bool>(any(vec2<bool>(true, true)), reverseBits(9110u) < ~u_input.b, any(vec2<bool>(true, global3[_wgslsmith_index_u32(var_0.c.x, 24u)])))), 1u));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = ~u_input.c.xx;
    var var_1 = !select(!(!vec4<bool>(true, true, false, global3[_wgslsmith_index_u32(u_input.b, 24u)])), vec4<bool>(true, !(!global3[_wgslsmith_index_u32(1u, 24u)]), ~var_0.x == select(1u, 1u, global3[_wgslsmith_index_u32(var_0.x, 24u)]), all(!vec3<bool>(false, arg_0.a.x, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec4<i32>(u_input.e, u_input.e, 33311i, 0i))), _wgslsmith_div_f32(-1000f, -657f)) > 1499f);
    var_1 = vec4<bool>(true, false, all(!select(!vec4<bool>(arg_0.b, true, arg_0.a.x, var_1.x), select(vec4<bool>(false, false, arg_0.b, global3[_wgslsmith_index_u32(arg_0.c, 24u)]), vec4<bool>(arg_0.a.x, true, false, true), vec4<bool>(false, false, arg_0.a.x, true)), select(vec4<bool>(true, false, arg_0.b, global3[_wgslsmith_index_u32(arg_0.c, 24u)]), vec4<bool>(arg_0.a.x, false, true, global3[_wgslsmith_index_u32(7546u, 24u)]), vec4<bool>(false, false, true, arg_0.a.x)))), global3[_wgslsmith_index_u32(~34576u, 24u)]);
    let var_2 = select(vec3<bool>(true, all(!select(vec4<bool>(true, true, var_1.x, arg_0.a.x), vec4<bool>(true, arg_0.b, var_1.x, false), arg_0.b)), var_1.x), vec3<bool>(!arg_0.b, true, true), vec3<bool>(false, any(vec3<bool>(arg_0.b, arg_0.a.x, true)), any(vec3<bool>(all(var_1.xwy), true, true))));
    var var_3 = var_0;
    return Struct_1(-50414i, !any(select(!var_2, var_1.wzz, select(vec3<bool>(true, var_1.x, true), var_2, vec3<bool>(global3[_wgslsmith_index_u32(53135u, 24u)], var_1.x, var_1.x)))), ~(~select(var_0 | vec2<u32>(arg_0.c, 28244u), var_0, !vec2<bool>(global3[_wgslsmith_index_u32(arg_0.c, 24u)], false))));
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    global2 = array<Struct_1, 31>();
    let var_0 = _wgslsmith_add_u32(1u, _wgslsmith_div_u32(1u, ~arg_0.a.c.x));
    global0 = true;
    var var_1 = func_1(Struct_2(arg_0.e.yz, !select(true, arg_0.e.x, true), u_input.c.x));
    global0 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c.x, 1u), vec2<u32>(var_0, ~var_1.c.x)) != _wgslsmith_sub_u32(4294967295u, 62429u);
    return Struct_2(select(arg_0.e.xy, arg_0.e.zx, !func_1(Struct_2(arg_0.e.yy, true, var_0)).b), true, u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.e;
    var var_1 = Struct_3(u_input.e, ~firstLeadingBit(vec4<i32>(~var_0, ~11475i, var_0 >> (u_input.c.x % 32u), abs(30174i))));
    global3 = array<bool, 24>();
    global3 = array<bool, 24>();
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(~(~u_input.b)), 1u), 24u)];
    global2 = array<Struct_1, 31>();
    var var_3 = func_4(Struct_4(func_1(Struct_2(vec2<bool>(global3[_wgslsmith_index_u32(u_input.b, 24u)], false), global3[_wgslsmith_index_u32(~0u, 24u)], 1u)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-617f, 1058f, 130f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(265f, -1398f, -906f) + vec3<f32>(203f, -448f, 870f))))), min(var_1.b, -_wgslsmith_mod_vec4_i32(vec4<i32>(var_0, var_0, -30479i, 0i), vec4<i32>(-10581i, var_1.b.x, var_1.b.x, 29844i))), u_input.a, select(!select(vec3<bool>(global3[_wgslsmith_index_u32(0u, 24u)], true, global3[_wgslsmith_index_u32(u_input.b, 24u)]), vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 24u)], true, false), global3[_wgslsmith_index_u32(29202u, 24u)]), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), !select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 24u)], global3[_wgslsmith_index_u32(765u, 24u)], true), vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.c.x, 24u)], global3[_wgslsmith_index_u32(938u, 24u)]), global3[_wgslsmith_index_u32(u_input.c.x, 24u)]))));
    var_1 = Struct_3(min(u_input.e, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(abs(var_1.b.zx), global1[_wgslsmith_index_u32(48905u, 10u)]), countOneBits(countOneBits(var_1.b.yx)))), ~countOneBits(var_1.b));
    global3 = array<bool, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(1f);
}

