struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec3<u32>;

var<private> global2: Struct_1 = Struct_1(vec3<bool>(true, false, true));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_4) -> bool {
    global2 = arg_3.d;
    let var_0 = arg_3;
    var var_1 = 1686i;
    let var_2 = ~arg_2.zz;
    global0 = vec3<bool>(!var_0.c.b, any(select(vec2<bool>(true, arg_3.d.a.x || global0.x), vec2<bool>(var_0.c.b, true), select(select(vec2<bool>(arg_0.b, global2.a.x), global0.xy, arg_3.c.b), select(arg_3.d.a.xx, vec2<bool>(true, true), var_0.d.a.x), 1723f < var_0.a.x))), !all(select(vec3<bool>(var_0.d.a.x, true, var_0.d.a.x), !vec3<bool>(arg_3.c.b, true, true), global2.a)));
    return var_2.x != -1i;
}

fn func_2(arg_0: i32) -> Struct_3 {
    global2 = Struct_1(!(!(!global2.a)));
    global1 = vec3<u32>(~_wgslsmith_sub_u32(4294967295u, _wgslsmith_mult_u32(u_input.b.x, ~u_input.b.x)), abs(~_wgslsmith_div_u32(0u, ~57550u)), 36689u);
    global1 = ~vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 32237u, u_input.a.x, 0u), vec4<u32>(81403u, global1.x, global1.x, u_input.b.x)), global1.x) << (max(~u_input.a.x, select(18980u, 1u, true)) % 32u), global1.x, 1u);
    global2 = Struct_1(vec3<bool>(global2.a.x, (select(2147483647i, 0i, false) & 1i) > _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-1i, -1i, -41207i)), ~vec3<i32>(arg_0, 2147483647i, arg_0)), !func_3(Struct_2(global1.xx, global2.a.x), _wgslsmith_f_op_f32(select(313f, -533f, global0.x)), vec4<i32>(arg_0, -35471i, -3759i, arg_0), Struct_4(vec2<f32>(154f, -253f), vec2<u32>(0u, global1.x), Struct_2(vec2<u32>(global1.x, 51991u), false), Struct_1(global2.a)))));
    global0 = !select(!select(global2.a, global2.a, global0.x), !vec3<bool>(global0.x, true, global0.x & global2.a.x), global0.x);
    return Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1168f));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: i32) -> Struct_4 {
    var var_0 = true;
    var var_1 = arg_0;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-669f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.a * var_1.a)))) - _wgslsmith_f_op_f32(abs(1f))));
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(floor(arg_1.xy)), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(~(~u_input.b.wz), abs(abs(vec2<u32>(u_input.b.x, u_input.b.x)))), u_input.b.yz), Struct_2(vec2<u32>(4294967295u, ~(u_input.a.x & global1.x)), any(global2.a.yy)), Struct_1(select(select(global2.a, vec3<bool>(global0.x, false, true), !global0.x), global2.a, true)));
    global0 = global2.a;
    return var_3;
}

fn func_1(arg_0: bool, arg_1: Struct_4) -> u32 {
    var var_0 = u_input.a.x;
    var var_1 = 350f;
    let var_2 = Struct_3(1f);
    let var_3 = func_4(func_2(_wgslsmith_div_i32(~(2147483647i >> (global1.x % 32u)), 1i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1222f, var_2.a, 685f) - _wgslsmith_div_vec4_f32(vec4<f32>(-752f, -1837f, arg_1.a.x, var_2.a), vec4<f32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x)))) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(339f - arg_1.a.x), _wgslsmith_f_op_f32(-var_2.a), 1635f, _wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-387f, 1319f, 1413f, arg_1.a.x), vec4<f32>(1054f, 165f, -1317f, 295f)))))), 1i);
    return arg_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(-651f);
    global1 = u_input.b.xxy;
    let var_1 = ~(_wgslsmith_mult_u32(~global1.x, func_1(any(vec4<bool>(false, global0.x, global2.a.x, false)), Struct_4(vec2<f32>(1134f, var_0.a), u_input.b.zy, Struct_2(vec2<u32>(u_input.a.x, 1u), global2.a.x), Struct_1(vec3<bool>(global2.a.x, global0.x, true))))) ^ max(u_input.b.x, firstTrailingBit(~49160u)));
    global0 = !(!func_4(func_2(-2147483647i), vec4<f32>(_wgslsmith_f_op_f32(abs(-1774f)), var_0.a, -813f, var_0.a), 2147483647i).d.a);
    var var_2 = vec2<i32>(_wgslsmith_div_i32(-firstLeadingBit(-2147483647i), ~(~2147483647i)), 1i) >> (_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_1, 40808u), ~vec2<u32>(global1.x, global1.x)), countOneBits(vec2<u32>(u_input.a.x, var_1)) >> ((u_input.b.zw << (~vec2<u32>(global1.x, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_3 = firstLeadingBit(_wgslsmith_sub_u32(~var_1, _wgslsmith_mod_u32(~0u, ~global1.x << (_wgslsmith_dot_vec4_u32(u_input.b, u_input.b) % 32u))));
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1883f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1174f, var_0.a, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(745f, 1675f, false)), _wgslsmith_f_op_f32(min(var_0.a, var_0.a)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1616f, _wgslsmith_f_op_f32(937f - var_0.a), any(vec4<bool>(false, false, global0.x, false)))), var_0.a, !global0.x & false)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(~(u_input.b | u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - var_0.a)), 1362f, var_1, (-2166i << (_wgslsmith_mult_u32(_wgslsmith_sub_u32(8812u, u_input.a.x), global1.x) % 32u)) ^ -_wgslsmith_mod_i32(var_2.x | 0i, 10100i));
}

