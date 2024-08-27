struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<u32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18>;

var<private> global1: Struct_1;

var<private> global2: vec3<bool> = vec3<bool>(true, true, false);

var<private> global3: vec2<u32> = vec2<u32>(43892u, 1u);

var<private> global4: array<bool, 11> = array<bool, 11>(false, false, false, true, false, false, false, false, true, false, false);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = any(vec3<bool>(any(vec3<bool>(global1.b, true, false)), true, arg_0.b));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -193f) + _wgslsmith_f_op_f32(min(-574f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -607f) - -1899f)))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: f32) -> Struct_1 {
    global1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(-1499f - arg_0.a), true, vec3<u32>(1u, 0u, global3.x), 31431u))))), global1.b, vec3<u32>(countOneBits(global0[_wgslsmith_index_u32(10368u, 18u)]), 1u, min(min(~u_input.b.x, _wgslsmith_sub_u32(4294967295u, u_input.c)), 35688u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~arg_0.c, global1.c) & 17583u, 4294967295u));
    var var_0 = arg_0;
    return arg_0;
}

fn func_1() -> StorageBuffer {
    let var_0 = func_2(Struct_1(-1026f, true, countOneBits(_wgslsmith_div_vec3_u32(firstLeadingBit(u_input.b.xyw), vec3<u32>(30974u, 25186u, global0[_wgslsmith_index_u32(8098u, 18u)]))), 4294967295u ^ u_input.b.x), _wgslsmith_sub_vec4_i32(-abs(vec4<i32>(-13195i, -2147483647i, u_input.d.x, u_input.d.x) >> (vec4<u32>(1u, 17014u, global0[_wgslsmith_index_u32(u_input.c, 18u)], 67245u) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(-1i, 0i, -2147483647i, u_input.d.x), vec4<i32>(u_input.e, 8455i, u_input.d.x, -866i)), select(-vec4<i32>(0i, 7374i, u_input.e, -1i), firstLeadingBit(vec4<i32>(-1i, u_input.d.x, 0i, 2147483647i)), !vec4<bool>(global2.x, true, global1.b, global1.b)))), _wgslsmith_div_f32(-1108f, _wgslsmith_f_op_f32(-global1.a)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_div_f32(333f, var_0.a), -644f)))), !(!(!var_0.b)), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_div_u32(35375u, global1.c.x), var_0.c.x, ~global1.d), ~var_0.c) | (vec3<u32>(_wgslsmith_add_u32(10243u, 9502u), u_input.b.x ^ 31469u, ~global0[_wgslsmith_index_u32(global1.d, 18u)]) >> ((select(u_input.b.wxz, var_0.c, vec3<bool>(true, global1.b, global2.x)) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(global3.x, var_0.d, 10491u), u_input.b.wzx)) % vec3<u32>(32u))), _wgslsmith_add_u32(u_input.b.x, 4131u));
    let var_2 = func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.a)))), -1i != (countOneBits(u_input.d.x) << (1u % 32u)), ~(~vec3<u32>(u_input.c, 21427u, 4294967295u)), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_1.c.x, var_0.d) >> (var_0.c.yy % vec2<u32>(32u))), vec2<u32>(u_input.c ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.c.x, 18u)], 18u)], global3.x << (0u % 32u)))), -vec4<i32>(reverseBits(~u_input.d.x), -2147483647i, u_input.a, u_input.a), global1.a);
    global2 = !select(vec3<bool>(_wgslsmith_f_op_f32(round(-1000f)) <= _wgslsmith_div_f32(-499f, -1245f), true, any(select(global2.zx, global2.xz, true))), select(!vec3<bool>(false, global2.x, global1.b), !(!vec3<bool>(true, global1.b, var_0.b)), !(!vec3<bool>(false, var_2.b, var_1.b))), !(!(!vec3<bool>(var_1.b, global4[_wgslsmith_index_u32(var_2.c.x, 11u)], false))));
    var var_3 = reverseBits(countOneBits(77053u));
    return StorageBuffer(u_input.d.yz, vec2<f32>(_wgslsmith_f_op_f32(select(var_2.a, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1690f, -1000f), global1.a, false)), any(vec2<bool>(false, false)) && var_0.b)), -1957f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 18>();
    global2 = vec3<bool>(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(16318u, ~global3.x), 11u)], select(false, global2.x, any(select(vec3<bool>(global1.b, global2.x, global1.b), select(vec3<bool>(false, global1.b, global4[_wgslsmith_index_u32(54472u, 11u)]), vec3<bool>(global1.b, false, global4[_wgslsmith_index_u32(4294967295u, 11u)]), false), true))), false);
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.a, -1000f, 223f), vec3<f32>(global1.a, global1.a, global1.a), vec3<bool>(false, global4[_wgslsmith_index_u32(3804u, 11u)], global4[_wgslsmith_index_u32(u_input.b.x, 11u)])))))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a * 1747f)), -568f, global1.a) * vec3<f32>(_wgslsmith_f_op_f32(min(global1.a, 531f)), _wgslsmith_f_op_f32(f32(-1f) * -1026f), 1761f)));
    var var_1 = var_0.x;
    global0 = array<u32, 18>();
    global0 = array<u32, 18>();
    let x = u_input.a;
    s_output = func_1();
}

