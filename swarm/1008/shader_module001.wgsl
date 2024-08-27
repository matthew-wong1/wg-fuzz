struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(1000f, vec2<f32>(2199f, 1414f)), Struct_2(813f, vec2<f32>(407f, 114f)), Struct_2(1270f, vec2<f32>(1000f, -272f)), Struct_2(-887f, vec2<f32>(-501f, -1384f)), Struct_2(-624f, vec2<f32>(329f, -801f)), Struct_2(2759f, vec2<f32>(-1000f, -460f)), Struct_2(-1875f, vec2<f32>(959f, 1000f)), Struct_2(-640f, vec2<f32>(1000f, -1479f)));

var<private> global1: array<i32, 29>;

var<private> global2: array<bool, 24>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    global1 = array<i32, 29>();
    let var_0 = ~40156u;
    let var_1 = reverseBits(47186i);
    global2 = array<bool, 24>();
    var var_2 = abs(~firstLeadingBit(-max(vec3<i32>(2147483647i, -1i, -1i), vec3<i32>(var_1, u_input.a.x, 16440i))));
    return var_0;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: f32) -> vec4<u32> {
    global0 = array<Struct_2, 8>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, arg_2, 485f, arg_2)))) - vec4<f32>(759f, _wgslsmith_f_op_f32(arg_2 + arg_2), _wgslsmith_f_op_f32(arg_2 * arg_2), 1103f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2, -397f, arg_2, -476f))))) * vec4<f32>(arg_2, -446f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1632f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))));
    var var_1 = _wgslsmith_mult_i32((reverseBits(firstLeadingBit(global1[_wgslsmith_index_u32(4294967295u, 29u)])) & ((20035i | global1[_wgslsmith_index_u32(arg_0.x, 29u)]) << (arg_0.x % 32u))) << ((0u & reverseBits(func_3(var_0.x, Struct_1(vec3<f32>(701f, 932f, var_0.x), vec4<bool>(arg_1.a, arg_1.a, global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(u_input.b.x, 24u)]))))) % 32u), global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(~0u, 4294967295u), 29u)] ^ global1[_wgslsmith_index_u32(func_3(1f, Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.wyw), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 24u)], false, arg_1.a))), 29u)]);
    var var_2 = vec2<bool>(all(select(vec4<bool>(true, arg_1.a, any(vec4<bool>(true, true, global2[_wgslsmith_index_u32(arg_0.x, 24u)], false)), all(vec2<bool>(false, arg_1.a))), !vec4<bool>(false, arg_1.a, global2[_wgslsmith_index_u32(arg_0.x, 24u)], true), !global2[_wgslsmith_index_u32(arg_0.x, 24u)])), arg_1.a);
    let var_3 = arg_1;
    return arg_0;
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-200f)), _wgslsmith_f_op_f32(-236f - 431f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -151f), _wgslsmith_f_op_f32(2278f + 401f)) - _wgslsmith_div_vec2_f32(vec2<f32>(1851f, 514f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1202f, 1508f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -467f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-402f - 177f)))));
    var var_1 = select(u_input.b, _wgslsmith_sub_vec4_u32(func_2(select(u_input.b, vec4<u32>(u_input.b.x, 0u, 4294967295u, 78314u), vec4<bool>(true, arg_0.a, arg_0.a, true)), Struct_3(false), _wgslsmith_f_op_f32(-var_0.x)) >> (abs(u_input.b | vec4<u32>(u_input.d, u_input.b.x, 344u, 4294967295u)) % vec4<u32>(32u)), vec4<u32>(~4294967295u, u_input.c, u_input.d & 1u, firstLeadingBit(25246u)) ^ u_input.b), vec4<bool>(-2147483647i == _wgslsmith_mod_i32(-7589i, -global1[_wgslsmith_index_u32(u_input.d, 29u)]), !(!(!arg_0.a)), all(!select(vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(false, true, arg_0.a), false)), any(select(vec2<bool>(false, true), vec2<bool>(true, arg_0.a), false))));
    let var_2 = !(!global2[_wgslsmith_index_u32(~((var_1.x << (46183u % 32u)) << (u_input.b.x % 32u)), 24u)]);
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), -438f, _wgslsmith_div_f32(var_0.x, var_0.x)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(492f, 1000f, var_0.x)))))), !vec4<bool>(any(!vec3<bool>(global2[_wgslsmith_index_u32(var_1.x, 24u)], false, var_2)), true, var_2, all(vec4<bool>(false, true, arg_0.a, false))));
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -215f);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 29>();
    global2 = array<bool, 24>();
    global0 = array<Struct_2, 8>();
    var var_0 = Struct_3(true);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-2304f, -398f, 427f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1066f, 432f, -1216f))))), select(select(vec4<bool>(false, false, !var_0.a, !var_0.a), select(vec4<bool>(global2[_wgslsmith_index_u32(72092u, 24u)], true, false, false), !vec4<bool>(var_0.a, true, global2[_wgslsmith_index_u32(27750u, 24u)], true), vec4<bool>(global2[_wgslsmith_index_u32(0u, 24u)], false, true, var_0.a)), any(vec4<bool>(global2[_wgslsmith_index_u32(1953u, 24u)], false, global2[_wgslsmith_index_u32(71047u, 24u)], var_0.a))), !vec4<bool>(global2[_wgslsmith_index_u32(1u, 24u)], !var_0.a, global2[_wgslsmith_index_u32(u_input.b.x, 24u)], true), all(vec4<bool>(u_input.d == u_input.c, all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 24u)], false)), all(vec2<bool>(false, false)), true))));
    var_0 = Struct_3(var_1.b.x);
    var var_2 = func_1(Struct_3(true));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(var_1.a, var_1.a)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-141f, var_1.a.x, var_1.a.x))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1746f, var_1.a.x, var_1.a.x)) - _wgslsmith_f_op_vec3_f32(-var_1.a))) * _wgslsmith_f_op_vec3_f32(var_1.a + vec3<f32>(var_1.a.x, -409f, -155f))), !(!(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], false, var_2.a, var_2.a))));
    global0 = array<Struct_2, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(1i, -11324i), 457f, vec3<f32>(_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(select(var_1.a.x, _wgslsmith_f_op_f32(var_1.a.x - var_1.a.x), true))), -149f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -199f))), var_1.a.x)));
}

