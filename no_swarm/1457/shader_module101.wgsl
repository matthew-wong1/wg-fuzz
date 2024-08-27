struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
    b: u32,
    c: Struct_3,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
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

var<private> global0: i32 = 1i;

var<private> global1: bool = false;

var<private> global2: array<i32, 10>;

var<private> global3: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32) -> vec3<u32> {
    global0 = ~(~(-2147483647i));
    var var_0 = vec2<bool>(any(vec3<bool>(_wgslsmith_f_op_f32(trunc(1105f)) != -240f, true, firstTrailingBit(u_input.a.x) >= _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.a.x), u_input.a.www))), true);
    global0 = _wgslsmith_div_i32(-_wgslsmith_add_i32(1i, 5323i), -1i) << (u_input.a.x % 32u);
    let var_1 = (_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-471f)))) >= -118f) && false;
    global2 = array<i32, 10>();
    return vec3<u32>(~32569u, _wgslsmith_sub_u32(abs(13081u) >> ((u_input.a.x & u_input.a.x) % 32u), _wgslsmith_sub_u32(~(0u >> (0u % 32u)), ~(~u_input.a.x))), u_input.a.x);
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    global0 = 71197i;
    return Struct_1(true, reverseBits(-(~vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(u_input.a.x, 10u)], global2[_wgslsmith_index_u32(arg_0.x, 10u)]))) << (func_3(-global2[_wgslsmith_index_u32(4294967295u, 10u)] ^ -u_input.b.x) % vec3<u32>(32u)), !select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), 4294967295u > u_input.a.x), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, false), true)), false);
}

fn func_1() -> i32 {
    var var_0 = 1u;
    var var_1 = all(vec2<bool>(true, true));
    let var_2 = func_2(firstLeadingBit(~_wgslsmith_mod_vec4_u32(u_input.a & u_input.a, select(vec4<u32>(1u, 1u, u_input.a.x, 0u), vec4<u32>(15806u, 58028u, 116423u, 4294967295u), false))));
    var_0 = 1u;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(ceil(-544f)), !var_2.c, all(select(select(!var_2.c, !var_2.c, true), !select(vec2<bool>(var_2.c.x, var_2.d), var_2.c, var_2.c), var_2.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(237f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-245f, -332f), 1f)))) * -211f));
    return _wgslsmith_mult_i32(u_input.d & var_2.b.x, _wgslsmith_div_i32(_wgslsmith_add_i32(0i, firstLeadingBit(-34315i)), -27665i));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(~u_input.a.x, 10u)], -1i);
    let var_0 = Struct_1(true, vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(~u_input.a.x, 10u)], func_1()), vec2<bool>(false, any(!func_2(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)).c)), true);
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 393f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1674f, 864f), vec2<f32>(1071f, 145f))))))) - vec2<f32>(1f, 1f));
    var_2 = vec2<f32>(var_2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-593f - _wgslsmith_f_op_f32(-244f - _wgslsmith_f_op_f32(floor(var_2.x)))))));
    let var_3 = vec4<bool>(!var_0.d | (_wgslsmith_f_op_f32(floor(var_2.x)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(726f * -1314f))), !(!var_1.d), !func_2(max(~vec4<u32>(u_input.a.x, u_input.a.x, 75529u, u_input.a.x), vec4<u32>(u_input.a.x, 41729u, u_input.a.x, 1u))).a, var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(565f)))));
}

