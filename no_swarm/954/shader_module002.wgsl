struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<f32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29> = array<i32, 29>(i32(-2147483648), i32(-2147483648), i32(-2147483648), i32(-2147483648), 2147483647i, 27465i, 36278i, -1i, 1i, -76334i, 0i, 12494i, i32(-2147483648), 0i, -7071i, 1i, 1i, 28237i, 1i, 19824i, -1i, 18390i, 2147483647i, -1i, -53550i, 892i, 1i, i32(-2147483648), -45395i);

var<private> global1: array<vec3<u32>, 15>;

var<private> global2: Struct_3;

var<private> global3: vec3<bool>;

var<private> global4: array<Struct_5, 27>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> vec3<f32> {
    global4 = array<Struct_5, 27>();
    global1 = array<vec3<u32>, 15>();
    var var_0 = min(firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, global0[_wgslsmith_index_u32(u_input.a.x, 29u)]), global0[_wgslsmith_index_u32(~20770u, 29u)])) ^ reverseBits(_wgslsmith_add_i32(global2.a.b, abs(1623i))), -1i);
    var var_1 = global2.a.a.x;
    let var_2 = Struct_2(select(u_input.a, _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_add_u32(u_input.a.x, global2.a.a.x), u_input.a.x, 1u), vec3<u32>(u_input.a.x, firstLeadingBit(global2.a.a.x), 4294967295u)), true), 0i);
    return vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x)), global2.c.x)))), _wgslsmith_f_op_f32(386f + global2.c.x), global2.c.x);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_4) -> u32 {
    let var_0 = _wgslsmith_dot_vec2_i32(min(abs(firstTrailingBit(vec2<i32>(15249i, -21241i))) << (firstTrailingBit(vec2<u32>(global2.a.a.x, 1u)) % vec2<u32>(32u)), vec2<i32>(-1i, 0i)), vec2<i32>(arg_1, -_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global2.a.a.x, 19177u), 29u)], arg_1 << (27374u % 32u))));
    var var_1 = Struct_1(select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(arg_2.a, false, global2.b), vec3<bool>(arg_0, global2.b, true), false), select(vec3<bool>(arg_2.a, global3.x, false), vec3<bool>(true, global2.b, global3.x), vec3<bool>(false, false, false)), select(vec3<bool>(false, arg_2.a, global3.x), vec3<bool>(true, global2.b, false), vec3<bool>(false, global3.x, arg_0))), select(!vec3<bool>(true, false, arg_0), select(vec3<bool>(false, true, false), vec3<bool>(global3.x, arg_0, true), arg_2.a), arg_0), vec3<bool>(arg_2.a, any(vec4<bool>(true, arg_2.a, false, false)), !global2.b)), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -372f, -830f) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global2.c), vec3<f32>(global2.c.x, -598f, 788f), !vec3<bool>(false, global2.b, arg_2.a))))));
    global3 = select(select(var_1.a, var_1.a, var_1.a), vec3<bool>(var_1.a.x, true, _wgslsmith_dot_vec2_u32(global2.a.a.yz, select(u_input.a.xx, vec2<u32>(global2.a.a.x, 12235u), false)) != 37577u), var_1.a.x);
    global1 = array<vec3<u32>, 15>();
    let var_2 = !(all(vec2<bool>(false, arg_0)) & true);
    return _wgslsmith_div_u32(0u, _wgslsmith_clamp_u32(global2.a.a.x, 1u & (u_input.a.x | global2.a.a.x), ~_wgslsmith_dot_vec2_u32(u_input.a.zy, u_input.a.yz)) & _wgslsmith_clamp_u32(u_input.a.x, abs(1u), abs(~global2.a.a.x)));
}

fn func_1() -> Struct_5 {
    let var_0 = Struct_3(global2.a, !any(!vec4<bool>(true, global2.b, global2.b, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2())));
    global2 = var_0;
    global3 = vec3<bool>(abs(func_3(global3.x, global2.a.b, Struct_4(global3.x))) <= firstTrailingBit(var_0.a.a.x), true, !(!any(vec3<bool>(global3.x, global2.b, global2.b))));
    global0 = array<i32, 29>();
    let var_1 = global4[_wgslsmith_index_u32(~8398u, 27u)];
    return global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(u_input.a.xy, global2.a.a.yy, !var_0.b), ~var_1.a.a.xy), 27u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 15>();
    var var_0 = func_1();
    var var_1 = global2.a.b;
    var var_2 = all(select(select(!(!vec3<bool>(false, true, global3.x)), select(!vec3<bool>(var_0.b.x, global2.b, true), select(vec3<bool>(var_0.b.x, global3.x, global2.b), vec3<bool>(true, var_0.b.x, var_0.b.x), true), select(vec3<bool>(false, global2.b, var_0.b.x), vec3<bool>(false, global2.b, global2.b), vec3<bool>(true, var_0.b.x, global2.b))), !(!global3.x)), !select(select(vec3<bool>(true, global3.x, global2.b), vec3<bool>(false, global3.x, true), vec3<bool>(var_0.b.x, false, global2.b)), select(vec3<bool>(false, var_0.b.x, var_0.b.x), vec3<bool>(global2.b, true, true), vec3<bool>(global2.b, true, var_0.b.x)), select(vec3<bool>(var_0.b.x, false, global2.b), vec3<bool>(global3.x, false, false), global3.x)), var_0.b.x || var_0.b.x));
    global4 = array<Struct_5, 27>();
    let var_3 = vec2<bool>(true, !global2.b);
    let var_4 = Struct_3(func_1().a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.c.x), global2.c.x)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.c.x + global2.c.x), global2.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1335f, global2.c.x, 1000f), vec3<f32>(258f, 1771f, -1053f), global2.b)) - global2.c) - vec3<f32>(global2.c.x, -392f, 1000f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.c, global2.a.a.x, 44414u, 47381u), vec4<u32>(0u, 0u, u_input.a.x, 13687u)), vec4<u32>(global2.a.a.x, 0u, 38713u, global2.a.a.x) ^ vec4<u32>(1u, 133339u, u_input.a.x, var_0.a.a.x)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, global2.a.a.x, global2.a.a.x, 26560u), vec4<u32>(85493u, var_0.c, 0u, 4294967295u) & vec4<u32>(global2.a.a.x, global2.a.a.x, var_4.a.a.x, 27491u))));
}

