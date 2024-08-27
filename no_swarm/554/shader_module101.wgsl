struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_3;

var<private> global2: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(vec3<i32>(-24480i, 2147483647i, 0i)), Struct_4(vec3<i32>(i32(-2147483648), -1i, -1189i)));

var<private> global3: array<vec4<f32>, 19>;

var<private> global4: Struct_4 = Struct_4(vec3<i32>(-18394i, 1i, 21063i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_5, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> i32 {
    var var_0 = false;
    let var_1 = ~(-1i);
    var var_2 = ~(~vec2<u32>(u_input.c, ~(~18170u)));
    let var_3 = Struct_2(Struct_1(!select(arg_3.a, arg_3.a, true), any(vec3<bool>(true, true, arg_1)), firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(27780i, 2147483647i, var_1), global4.a)), -1121f), var_2.x, countOneBits(vec2<i32>(~u_input.b.x, countOneBits(59730i))));
    global3 = array<vec4<f32>, 19>();
    return ~_wgslsmith_mod_i32(global4.a.x, arg_3.c.x) & _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(u_input.b.x, var_3.a.c.x) << (1u % 32u), -u_input.b.x, -4772i), arg_3.c);
}

fn func_3(arg_0: vec2<bool>, arg_1: u32) -> f32 {
    return -704f;
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1126f + 422f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -691f))))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-794f, 385f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + vec2<f32>(var_0.x, 2104f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1312f, 482f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, var_0.x), vec2<f32>(141f, 808f))))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 216f)), var_0.x)));
    return Struct_2(Struct_1(!select(!vec4<bool>(global1.a, true, false, global1.a), !vec4<bool>(global1.a, false, false, false), select(vec4<bool>(false, true, global1.a, true), vec4<bool>(true, false, true, true), vec4<bool>(global1.a, global1.a, true, global1.a))), true, abs(vec3<i32>(~global4.a.x, func_2(Struct_5(u_input.b), global1.a, var_0.x, Struct_1(vec4<bool>(false, true, global1.a, false), false, vec3<i32>(u_input.b.x, -1i, u_input.b.x), var_0.x)), i32(-1i) * -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(select(vec2<bool>(true, false), vec2<bool>(true, false), global1.a), firstLeadingBit(u_input.a))))), _wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.e, max(u_input.e, u_input.d.xxy))), ~u_input.d.x), _wgslsmith_mod_vec2_i32(u_input.b, global4.a.yx));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_4(global4.a);
    var var_0 = _wgslsmith_f_op_f32(round(857f));
    var var_1 = func_1();
    var_0 = 250f;
    global4 = global2[_wgslsmith_index_u32(global1.b, 2u)];
    var var_2 = Struct_5(u_input.b);
    global3 = array<vec4<f32>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(select(1u, _wgslsmith_div_u32(_wgslsmith_div_u32(18328u, 30188u), global1.b >> (0u % 32u)), func_1().a.b), 19u)]), _wgslsmith_mod_u32(var_1.b, _wgslsmith_mult_u32(~global1.b << (min(u_input.e.x, 13014u) % 32u), ~var_1.b | _wgslsmith_div_u32(global1.b, 4294967295u))));
}

