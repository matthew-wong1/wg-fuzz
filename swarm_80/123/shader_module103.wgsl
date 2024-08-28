struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_3;

var<private> global2: array<bool, 32>;

var<private> global3: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = Struct_3(vec4<u32>(_wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.a.x, global1.a.x, 15184u, global1.a.x), vec4<u32>(u_input.d.x, 36738u, u_input.c.x, 48153u))), 70426u, select(global1.a.x, ~global1.a.x, !global2[_wgslsmith_index_u32(1u, 32u)]), u_input.c.x) << (vec4<u32>(_wgslsmith_clamp_u32(u_input.d.x | 0u, ~4294967295u, global1.a.x), 12741u, 72120u, countOneBits(1u)) % vec4<u32>(32u)), global1.b);
    global1 = Struct_3(vec4<u32>(var_0.a.x, min(u_input.c.x, _wgslsmith_add_u32(~34922u, abs(0u))), select(u_input.c.x, ~_wgslsmith_dot_vec2_u32(u_input.c.yx, var_0.a.zw), !(var_0.b.a < var_0.b.a)), 45884u), var_0.b);
    var var_1 = Struct_3(reverseBits(vec4<u32>(3420u, u_input.c.x, ~u_input.d.x, global1.a.x)), Struct_2(~(-2147483647i)));
    let var_2 = var_0.b;
    let var_3 = global1.a.x;
    return global1.a.x;
}

fn func_2(arg_0: bool, arg_1: i32) -> f32 {
    let var_0 = !select(select(vec4<bool>(any(vec3<bool>(true, arg_0, false)), !global2[_wgslsmith_index_u32(1u, 32u)], arg_0, global1.b.a < global1.b.a), !(!vec4<bool>(arg_0, true, false, global2[_wgslsmith_index_u32(u_input.d.x, 32u)])), _wgslsmith_f_op_f32(step(global3.b, -123f)) < 1000f), vec4<bool>(!all(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 32u)], global2[_wgslsmith_index_u32(u_input.c.x, 32u)], false, global2[_wgslsmith_index_u32(117298u, 32u)])), any(vec4<bool>(arg_0, false, arg_0, true)), true, false), global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, 11673u) ^ firstTrailingBit(_wgslsmith_add_u32(24857u, global1.a.x)), 32u)]);
    let var_1 = Struct_1(_wgslsmith_mod_i32(select(global3.a << (2994u % 32u), -19694i, global2[_wgslsmith_index_u32(func_3(), 32u)]), min(global1.b.a, global1.b.a)), _wgslsmith_f_op_f32(sign(global3.b)));
    let var_2 = global3.b;
    global0 = all(var_0);
    var var_3 = var_1.a;
    return 149f;
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3.b * _wgslsmith_f_op_f32(step(2151f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(263f, -1378f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_2.a >= 2147483647i, arg_2.a))))));
    var var_1 = ~_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(global3.a, 1i)), countOneBits(vec2<i32>(34495i, 1i) << (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u)))), vec2<i32>(-(~u_input.e), max(~20310i, -1i)));
    var var_2 = Struct_3(global1.a | countOneBits(_wgslsmith_add_vec4_u32(global1.a >> (global1.a % vec4<u32>(32u)), ~vec4<u32>(u_input.d.x, 1u, 13666u, 1u))), Struct_2(arg_0.a));
    let var_3 = vec4<bool>(false, any(!select(!vec3<bool>(true, global2[_wgslsmith_index_u32(79165u, 32u)], global2[_wgslsmith_index_u32(1u, 32u)]), !vec3<bool>(false, global2[_wgslsmith_index_u32(var_2.a.x, 32u)], false), global2[_wgslsmith_index_u32(u_input.d.x, 32u)])), false, false);
    let var_4 = Struct_1(arg_1, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(global3.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b) + global3.b))));
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(min(global1.a.x, 1u));
    let var_1 = func_1(Struct_2(-u_input.b), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.a, global1.b.a, global3.a, 10840i) & vec4<i32>(-52001i, -7335i, u_input.b, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(-5727i, u_input.b, -15557i, -2147483647i) << (vec4<u32>(global1.a.x, 4294967295u, global1.a.x, 0u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.b.a, global3.a, global3.a, global3.a), vec4<i32>(u_input.a, u_input.b, u_input.e, global3.a)))), reverseBits(1i)), global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.x);
}

