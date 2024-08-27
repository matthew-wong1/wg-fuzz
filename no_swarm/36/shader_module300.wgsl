struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<u32>,
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

var<private> global0: array<bool, 31>;

var<private> global1: u32 = 4294967295u;

var<private> global2: Struct_2;

var<private> global3: array<i32, 16> = array<i32, 16>(i32(-2147483648), 0i, 35598i, i32(-2147483648), -14124i, 31040i, -1i, 1i, -15035i, -2825i, 2147483647i, 2147483647i, 73531i, 1i, 53273i, 17869i);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(-global2.a), arg_0) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, -354f, arg_0))))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1308f, 927f, -1584f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-338f, global2.a, 845f), vec3<f32>(global2.a, global2.a, -1452f), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 31u)], global0[_wgslsmith_index_u32(u_input.d.x, 31u)], global0[_wgslsmith_index_u32(u_input.b, 31u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1409f, arg_0, -1154f) - vec3<f32>(637f, 570f, arg_0)))), global0[_wgslsmith_index_u32(u_input.b, 31u)]))));
    let var_1 = max(min(~(vec4<u32>(u_input.d.x, u_input.b, u_input.b, u_input.b) ^ u_input.d), ~_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(u_input.d.x, u_input.b, u_input.b, u_input.b)), vec4<u32>(1070u, 40769u, 13472u, 1u))), u_input.d);
    let var_2 = vec2<bool>(global0[_wgslsmith_index_u32(0u, 31u)], !global0[_wgslsmith_index_u32(49115u, 31u)]);
    global0 = array<bool, 31>();
    let var_3 = ~countOneBits(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(64116u, var_1.x, var_1.x, u_input.b) & u_input.d, _wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, var_1.x, 27576u, 0u), vec4<u32>(19737u, 4170u, var_1.x, 1u))), countOneBits(~var_1)));
    return ~(~(~(~select(vec2<u32>(97470u, u_input.b), var_3.wy, false))));
}

fn func_2(arg_0: vec4<f32>, arg_1: f32) -> u32 {
    global1 = _wgslsmith_dot_vec2_u32(u_input.d.zw, u_input.d.yz);
    var var_0 = vec4<u32>(u_input.d.x, u_input.b, _wgslsmith_dot_vec2_u32(~func_3(arg_1), u_input.d.zx), ~max(u_input.b, 12086u));
    let var_1 = !all(select(vec2<bool>(var_0.x != var_0.x, true), select(vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 31u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 31u)], false), vec2<bool>(global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(18829u, 31u)]), false), !global0[_wgslsmith_index_u32(32941u, 31u)]), select(vec2<bool>(true, true), !vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 31u)], false), vec2<bool>(true, true))));
    let var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~(~u_input.d.yyw), max(var_0.wxx, u_input.d.wyx | vec3<u32>(var_0.x, u_input.d.x, 11688u))), var_0.wxz);
    global2 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(911f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) - _wgslsmith_f_op_f32(global2.a + -1361f)), !(var_1 | true))))));
    return firstLeadingBit(var_0.x);
}

fn func_1() -> vec2<u32> {
    global0 = array<bool, 31>();
    global1 = _wgslsmith_mult_u32(~((4294967295u >> ((u_input.d.x << (4294967295u % 32u)) % 32u)) ^ ~u_input.b), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(882f, global2.a, -408f, global2.a) - vec4<f32>(1524f, -336f, -1740f, 967f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, 842f, -678f, -2333f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.a, global2.a, global2.a, global2.a))))), _wgslsmith_f_op_f32(-global2.a)));
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)));
    global2 = Struct_2(-266f);
    var var_1 = var_0;
    return ~min(reverseBits(~countOneBits(vec2<u32>(30556u, u_input.d.x))), ~select(abs(vec2<u32>(53716u, 1u)), ~vec2<u32>(u_input.d.x, u_input.d.x), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 31>();
    let var_0 = Struct_1(u_input.d.xy | ~func_1(), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(234f, global2.a), vec2<f32>(global2.a, -1000f)), vec2<f32>(global2.a, global2.a), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 31u)], true))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a, global2.a) - vec2<f32>(-1154f, 298f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a, -1310f) + vec2<f32>(788f, -1402f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(606f)), -1000f) + vec2<f32>(_wgslsmith_f_op_f32(2089f + -1000f), _wgslsmith_f_op_f32(global2.a - global2.a))), select(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 31u)]), !select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 31u)], global0[_wgslsmith_index_u32(u_input.d.x, 31u)]), vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 31u)], global0[_wgslsmith_index_u32(83533u, 31u)])), !vec2<bool>(false, global0[_wgslsmith_index_u32(37166u, 31u)])))), _wgslsmith_mod_vec4_u32(u_input.d, ~(~(~u_input.d))));
    global3 = array<i32, 16>();
    let var_1 = ~(-(~(-reverseBits(vec4<i32>(global3[_wgslsmith_index_u32(1u, 16u)], global3[_wgslsmith_index_u32(7642u, 16u)], u_input.c, 23740i)))));
    let var_2 = var_0;
    global1 = 18157u;
    let var_3 = 25648i;
    global2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_f_op_f32(sign(-351f)))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1211f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + var_0.b.x), _wgslsmith_div_f32(1891f, global2.a))))) + 1609f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.a), -154f, !global0[_wgslsmith_index_u32(var_0.c.x, 31u)])));
}

