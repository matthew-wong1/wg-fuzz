struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(2147483647i, -24532i, -1i, 293i, -6909i, i32(-2147483648), 9102i, 60780i);

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(vec2<u32>(46471u, 9361u)), Struct_2(vec2<u32>(0u, 77380u)), Struct_2(vec2<u32>(0u, 1u)), Struct_2(vec2<u32>(7404u, 4456u)), Struct_2(vec2<u32>(4294967295u, 0u)), Struct_2(vec2<u32>(0u, 132604u)), Struct_2(vec2<u32>(29489u, 4294967295u)), Struct_2(vec2<u32>(0u, 4294967295u)));

var<private> global3: i32 = i32(-2147483648);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>) -> vec2<u32> {
    let var_0 = select(arg_1.c.zx, !vec2<bool>(false, select(true, true, arg_2.x)), arg_2.xw);
    var var_1 = 1u;
    let var_2 = global1.a;
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, arg_1.b, arg_1.a, arg_0.b)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.a, -1033f, 403f, -289f), vec4<f32>(arg_0.b, arg_1.b, -1134f, 347f), vec4<bool>(true, false, true, false)))))))));
    global2 = array<Struct_2, 8>();
    return vec2<u32>(41227u, 4294967295u);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(vec2<u32>(_wgslsmith_dot_vec2_u32(func_3(Struct_1(-592f, 608f, vec3<bool>(true, false, true), 1u), Struct_1(-1518f, 1000f, vec3<bool>(true, false, true), 16100u), vec4<bool>(false, true, true, false)), ~vec2<u32>(u_input.a, 0u)) & ~u_input.a, ~u_input.a));
    let var_1 = countOneBits(abs(select(vec3<i32>(i32(-1i) * -44007i, global0[_wgslsmith_index_u32(u_input.a, 8u)] >> (u_input.a % 32u), ~40811i), _wgslsmith_div_vec3_i32(min(vec3<i32>(global0[_wgslsmith_index_u32(global1.a.x, 8u)], global0[_wgslsmith_index_u32(global1.a.x, 8u)], -15689i), vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(82877u, 8u)], 0i)), ~vec3<i32>(global0[_wgslsmith_index_u32(global1.a.x, 8u)], global0[_wgslsmith_index_u32(global1.a.x, 8u)], 23833i)), vec3<bool>(true, true, true))));
    let var_2 = Struct_1(713f, -366f, select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(false, true, false)), vec3<bool>(any(vec4<bool>(true, true, true, true)), true, any(vec4<bool>(true, true, false, false))), false), 4294967295u);
    global0 = array<i32, 8>();
    var var_3 = min(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, _wgslsmith_mult_u32(52308u, u_input.a), reverseBits(u_input.a)), firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(9616u, u_input.a, u_input.a), vec3<u32>(5485u, 37853u, var_0.a.x)) >> ((vec3<u32>(57113u, var_2.d, var_2.d) ^ vec3<u32>(4294967295u, 1u, 108086u)) % vec3<u32>(32u)))), firstTrailingBit(firstLeadingBit(~(~vec3<u32>(var_2.d, 55631u, var_0.a.x)))));
    return var_2;
}

fn func_1(arg_0: f32, arg_1: bool) -> f32 {
    let var_0 = -2147483647i;
    let var_1 = all(select(!select(!vec4<bool>(false, false, arg_1, true), !vec4<bool>(arg_1, false, arg_1, true), false), !vec4<bool>(arg_1 || false, true, arg_0 > arg_0, true), false));
    let var_2 = func_2();
    let var_3 = global2[_wgslsmith_index_u32(~global1.a.x, 8u)];
    global2 = array<Struct_2, 8>();
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(625f - _wgslsmith_f_op_f32(abs(var_2.a))))), -838f), _wgslsmith_div_f32(var_2.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-var_2.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 8>();
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(760f, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(sign(-775f)), true)), _wgslsmith_f_op_f32(f32(-1f) * -1429f), func_2().b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2083f, 1297f, 432f, -533f))) - vec4<f32>(-576f, -692f, -1430f, -126f)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-967f, 1000f, -1570f, -143f)))))));
    global2 = array<Struct_2, 8>();
    global0 = array<i32, 8>();
    var var_1 = !all(select(vec2<bool>(all(vec4<bool>(true, false, false, true)), true), select(vec2<bool>(true, false), func_2().c.zy, vec2<bool>(true, true)), true));
    var var_2 = Struct_1(var_0.x, var_0.x, select(select(vec3<bool>(true, true, all(vec2<bool>(false, false))), vec3<bool>(true, true, true), true), vec3<bool>(true, _wgslsmith_div_f32(var_0.x, var_0.x) >= _wgslsmith_f_op_f32(125f + 1122f), u_input.a <= abs(0u)), !vec3<bool>(select(true, true, true), true, true)), (func_2().d ^ firstTrailingBit(~4294967295u)) << (~_wgslsmith_add_u32(~u_input.a, u_input.a ^ 0u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(258f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -402f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -218f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.b * 1485f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_0)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, -546f, var_2.a, var_2.a), vec4<f32>(1466f, 2014f, var_0.x, -1496f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1000f, 1283f, var_2.b)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0) * _wgslsmith_f_op_vec4_f32(var_0 - var_0)), vec4<f32>(691f, _wgslsmith_f_op_f32(149f * var_0.x), 1396f, _wgslsmith_f_op_f32(floor(879f))))), vec4<bool>(var_2.c.x, select(!var_2.c.x, var_2.c.x, var_2.c.x), true, !(var_2.d < u_input.a)))));
}

