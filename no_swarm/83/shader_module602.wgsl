struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: Struct_2,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

var<private> global1: u32;

var<private> global2: Struct_3 = Struct_3(vec2<bool>(false, false), 0u, Struct_2(Struct_1(vec3<f32>(-424f, -633f, 715f), -385f), -1i), vec2<i32>(-3234i, -1i));

var<private> global3: array<vec3<u32>, 3>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> u32 {
    global1 = 1u;
    global1 = u_input.e.x >> (~arg_0 % 32u);
    return ~36778u;
}

fn func_2() -> vec4<u32> {
    let var_0 = max(~(~reverseBits(15582u)), abs(~_wgslsmith_sub_u32(0u, 0u)));
    global0 = array<f32, 22>();
    let var_1 = vec4<u32>(26033u ^ u_input.e.x, 4300u, abs(u_input.c), _wgslsmith_dot_vec3_u32(~vec3<u32>(firstTrailingBit(u_input.e.x), _wgslsmith_mod_u32(22406u, 1u), ~u_input.e.x), vec3<u32>(min(u_input.b.x, ~95705u), ~20913u, 4294967295u)));
    var var_2 = 21401u;
    let var_3 = func_3(~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global2.b, u_input.b.x, 549u), global3[_wgslsmith_index_u32(abs(var_0), 3u)], u_input.b.yyw), ~global3[_wgslsmith_index_u32(16595u, 3u)]), global2.c.a);
    return ~vec4<u32>(47601u, abs(1u), 1u, 106876u);
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = _wgslsmith_div_vec4_u32(select(~u_input.b, u_input.b, select(vec4<bool>(true, false, global2.a.x, false), !vec4<bool>(global2.a.x, false, global2.a.x, global2.a.x), vec4<bool>(false, global2.a.x, arg_0, true))) & ~firstTrailingBit(vec4<u32>(u_input.e.x, 1u, u_input.c, 8544u) & u_input.b), select(abs(vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), _wgslsmith_clamp_u32(11047u, global2.b, 46442u), 4294967295u, ~u_input.b.x)), _wgslsmith_mod_vec4_u32(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(global2.b, 4294967295u, global2.b, 1u), vec4<u32>(u_input.b.x, global2.b, u_input.c, u_input.b.x))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.e.x, 1u, 16310u, 1u), func_2())), !select(!vec4<bool>(global2.a.x, global2.a.x, true, true), vec4<bool>(global2.a.x, arg_0, false, arg_0), vec4<bool>(global2.a.x, false, global2.a.x, arg_0))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(105f, global2.c.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1160f))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(238f, global2.c.a.b, _wgslsmith_f_op_f32(1147f + 1545f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(858f))))))));
    let var_3 = global0[_wgslsmith_index_u32(u_input.b.x, 22u)];
    var var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(1358f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.x))))));
    return global0[_wgslsmith_index_u32(global2.b, 22u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(-1051f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(941f)))) * 252f), !global2.a.x, _wgslsmith_f_op_f32(func_1(global2.a.x)) >= global0[_wgslsmith_index_u32(68674u, 22u)]);
    let var_1 = ~u_input.b.x > select(0u, u_input.e.x >> (abs(_wgslsmith_div_u32(u_input.e.x, 0u)) % 32u), select(global2.a.x, true, false));
    var var_2 = select(var_0, select(!var_0, var_0, var_0), select(select(select(var_0, select(vec3<bool>(true, true, false), vec3<bool>(true, var_0.x, false), vec3<bool>(false, var_1, var_1)), !global2.a.x), select(select(var_0, vec3<bool>(false, true, true), vec3<bool>(var_1, true, true)), vec3<bool>(false, true, global2.a.x), var_1), true), !(!select(vec3<bool>(global2.a.x, var_1, true), vec3<bool>(global2.a.x, global2.a.x, false), var_0)), !select(select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(false, var_1, global2.a.x))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(global2.c.a.a))))))), -1000f);
    let var_4 = select(vec2<u32>(~_wgslsmith_mod_u32(_wgslsmith_add_u32(0u, u_input.b.x), 1u), ~(~(~global2.b))), vec2<u32>(36574u, u_input.b.x), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -905f))), var_4.x, _wgslsmith_dot_vec2_i32(-_wgslsmith_clamp_vec2_i32(global2.d, vec2<i32>(2147483647i, -22742i), u_input.a.zz), vec2<i32>(_wgslsmith_add_i32(u_input.a.x, -11426i), -20526i)), _wgslsmith_f_op_vec2_f32(-var_3.a.xz));
}

