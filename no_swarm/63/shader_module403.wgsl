struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27>;

var<private> global1: array<f32, 30>;

var<private> global2: vec4<i32> = vec4<i32>(2200i, 1i, 34627i, 2147483647i);

var<private> global3: array<vec2<u32>, 19>;

var<private> global4: Struct_3 = Struct_3(vec2<bool>(true, false), Struct_1(40010u));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: Struct_3) -> vec2<bool> {
    global4 = arg_3;
    let var_0 = Struct_3(vec2<bool>(~(0u >> (arg_0.b.a % 32u)) != ~(~80209u), !(!(!arg_1.x))), global4.b);
    let var_1 = arg_3;
    return arg_1;
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: bool) -> vec4<i32> {
    let var_0 = min(_wgslsmith_mod_vec3_u32(~((arg_1.yww << (vec3<u32>(arg_1.x, arg_1.x, arg_2.b.a) % vec3<u32>(32u))) << (arg_1.zwy % vec3<u32>(32u))), ~arg_1.xzy), firstTrailingBit(min(arg_1.zwz, ~select(vec3<u32>(global4.b.a, global4.b.a, 71095u), vec3<u32>(118603u, 1u, 4294967295u), vec3<bool>(global0[_wgslsmith_index_u32(arg_2.b.a, 27u)], false, global4.a.x)))));
    global4 = Struct_3(!(!global4.a), global4.b);
    var var_1 = 1u;
    var var_2 = global2.xxx;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~u_input.a.x, 30u)] * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1102f * arg_0.x), _wgslsmith_div_f32(arg_0.x, -510f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1733f))), _wgslsmith_f_op_f32(f32(-1f) * -476f), global4.a.x))));
    return vec4<i32>(_wgslsmith_div_i32(firstLeadingBit(11314i), max(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, 3456i, global2.x), select(global2.zzw, global2.yzx, vec3<bool>(false, false, arg_3))), countOneBits(-3809i))), 0i, ~firstTrailingBit(var_2.x), ~(~_wgslsmith_add_i32(select(var_2.x, global2.x, global0[_wgslsmith_index_u32(0u, 27u)]), reverseBits(20728i))));
}

fn func_1(arg_0: bool, arg_1: vec4<u32>) -> Struct_3 {
    global2 = select(reverseBits(-(_wgslsmith_mod_vec4_i32(vec4<i32>(global2.x, 1i, 19496i, global2.x), vec4<i32>(0i, global2.x, 14974i, global2.x)) << (_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a.x, 0u, 37670u), vec4<u32>(u_input.a.x, arg_1.x, 4294967295u, 31496u)) % vec4<u32>(32u)))), _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(0i, 0i, global2.x, 28188i), ~vec4<i32>(0i, -1i, -1i, global2.x)), select(_wgslsmith_sub_vec4_i32(vec4<i32>(global2.x, 2147483647i, -1i, global2.x), vec4<i32>(-20007i, global2.x, -18153i, -11976i)), vec4<i32>(global2.x, 0i, -410i, 16175i), vec4<bool>(true, global0[_wgslsmith_index_u32(44776u, 27u)], global0[_wgslsmith_index_u32(u_input.a.x, 27u)], arg_0))), func_3(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-127f, -332f, -1130f, 919f))), vec4<u32>(arg_1.x, u_input.a.x, 12231u, 0u) & vec4<u32>(33443u, arg_1.x, 3076u, 16154u), Struct_3(func_2(Struct_3(vec2<bool>(global0[_wgslsmith_index_u32(69232u, 27u)], global0[_wgslsmith_index_u32(arg_1.x, 27u)]), global4.b), vec2<bool>(false, arg_0), vec3<bool>(arg_0, global4.a.x, false), Struct_3(global4.a, Struct_1(25299u))), global4.b), true)), global4.a.x);
    global0 = array<bool, 27>();
    var var_0 = 2147483647i;
    global4 = Struct_3(vec2<bool>(true, any(vec2<bool>(global4.a.x, all(vec3<bool>(true, true, true))))), global4.b);
    let var_1 = _wgslsmith_mult_u32(67601u, ~(~select(u_input.a.x, u_input.a.x, arg_0)) & (_wgslsmith_div_u32(_wgslsmith_add_u32(38142u, u_input.a.x), ~global4.b.a) << (~(global4.b.a | u_input.a.x) % 32u)));
    return Struct_3(global4.a, global4.b);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_3(vec2<bool>(global0[_wgslsmith_index_u32(1u, 27u)], any(vec2<bool>(global4.a.x, true))), Struct_1(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a.x, global4.b.a) & 1u, u_input.a.x)));
    let var_0 = func_1(true, u_input.a);
    var var_1 = Struct_1(_wgslsmith_div_u32(~(func_1(var_0.a.x, vec4<u32>(20694u, 30284u, u_input.a.x, 35126u)).b.a | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 21330u, 44022u, 1u), u_input.a)), var_0.b.a));
    global0 = array<bool, 27>();
    var var_2 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(var_0.b.a, 30u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(621f, global1[_wgslsmith_index_u32(var_1.a, 30u)]) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global4.b.a, 30u)])), any(vec3<bool>(true, true, true)))))), global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(12711u, var_1.a, var_0.b.a, global4.b.a), select(vec4<u32>(0u, u_input.a.x, u_input.a.x, var_1.a), vec4<u32>(var_0.b.a, 3176u, 0u, 82025u), vec4<bool>(false, true, global4.a.x, global0[_wgslsmith_index_u32(0u, 27u)]))), ~u_input.a), 19u)], !all(!vec3<bool>(false, false, var_0.a.x)), Struct_1(~1u & select(~global4.b.a, 1u, global2.x != global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 30u)]) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.b.a, 30u)])), global1[_wgslsmith_index_u32(4294967295u >> (~var_1.a % 32u), 30u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(172f, var_2.a);
}

