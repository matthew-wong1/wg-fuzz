struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 4>;

var<private> global2: array<Struct_1, 19>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32) -> f32 {
    let var_0 = 1i;
    var var_1 = global0.b;
    var var_2 = abs(vec4<i32>(-76190i, var_0, countOneBits(global0.e.x), -1i | -_wgslsmith_add_i32(1i, global0.e.x)));
    var_1 = global0.a.xz;
    var var_3 = arg_1;
    return -488f;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, -857f, global0.b.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.x, -317f, 635f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(arg_3.a)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.b.x, arg_0.a.x, 1022f))))) - arg_3.a), global0.a));
    let var_1 = arg_0;
    global2 = array<Struct_1, 19>();
    return false;
}

fn func_1(arg_0: f32) -> vec3<bool> {
    var var_0 = global2[_wgslsmith_index_u32(84081u, 19u)];
    global0 = global2[_wgslsmith_index_u32(reverseBits(u_input.a), 19u)];
    let var_1 = _wgslsmith_add_i32(global0.e.x, global0.e.x);
    let var_2 = Struct_1(vec3<f32>(-792f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<u32>(u_input.a, 1u, 16761u, u_input.a), u_input.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), var_0.b, _wgslsmith_f_op_f32(1000f - -1762f), vec2<bool>(true, false), abs(countOneBits(-vec4<i32>(var_1, global0.e.x, 1i, global0.e.x))));
    global2 = array<Struct_1, 19>();
    return vec3<bool>(all(vec2<bool>(var_0.d.x, true)), any(select(vec4<bool>(u_input.a > 0u, false, all(vec2<bool>(false, false)), func_3(Struct_1(var_2.a, global0.a.zz, var_2.a.x, global0.d, global0.e), Struct_1(vec3<f32>(global0.b.x, global0.a.x, -288f), vec2<f32>(var_0.a.x, global0.b.x), -1045f, vec2<bool>(var_2.d.x, var_2.d.x), vec4<i32>(-2147483647i, var_2.e.x, var_2.e.x, var_2.e.x)), vec4<bool>(global1[_wgslsmith_index_u32(41954u, 4u)], global0.d.x, global0.d.x, false), Struct_1(var_2.a, vec2<f32>(arg_0, 166f), -899f, vec2<bool>(true, global1[_wgslsmith_index_u32(55320u, 4u)]), global0.e))), !(!vec4<bool>(false, false, global0.d.x, var_2.d.x)), select(select(vec4<bool>(true, global0.d.x, var_2.d.x, false), vec4<bool>(true, false, var_2.d.x, false), false), select(vec4<bool>(var_0.d.x, true, true, var_2.d.x), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 4u)], false, global0.d.x), vec4<bool>(true, true, var_0.d.x, global0.d.x)), !vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 4u)], var_0.d.x, var_0.d.x)))), !all(var_0.d));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> i32 {
    var var_0 = arg_0;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.b.x, global0.c, 292f), arg_0.a))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -382f)) * arg_0.c), arg_0.a.x), _wgslsmith_f_op_f32(arg_0.b.x + 1000f), vec2<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(max(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(82413u, 47580u, 1u)), vec3<u32>(1u, u_input.a, 14340u) | vec3<u32>(u_input.a, 39359u, 4294967295u), all(vec3<bool>(false, arg_1.d.x, global1[_wgslsmith_index_u32(0u, 4u)]))), ~max(vec3<u32>(29768u, u_input.a, u_input.a), vec3<u32>(u_input.a, 4294967295u, 47889u))), 4u)], true), (vec4<i32>(-1i) * -(arg_0.e | vec4<i32>(u_input.b, arg_1.e.x, var_0.e.x, arg_0.e.x))) ^ arg_1.e);
    var_1 = arg_1;
    global1 = array<bool, 4>();
    var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(arg_1.c - -1387f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.b.x)) + _wgslsmith_f_op_f32(func_2(vec4<u32>(u_input.a, 1u, u_input.a, 4294967295u), u_input.a))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1832f))), arg_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(767f * arg_1.c) * 397f) - -152f)), !func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))).zz, vec4<i32>(u_input.b, 1i, u_input.b, arg_1.e.x));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(func_4(global2[_wgslsmith_index_u32(~select(u_input.a, u_input.a, false) & 65368u, 19u)], global2[_wgslsmith_index_u32(abs(u_input.a), 19u)], func_1(global0.a.x)), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(global0.e, _wgslsmith_mod_vec4_i32(global0.e, ~global0.e), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.e.x, 0i, global0.e.x, -2147483647i), vec4<i32>(u_input.b, u_input.b, global0.e.x, -2147483647i)), global0.e)), vec4<i32>(-2147483647i, -global0.e.x | 21653i, 0i, ~(~global0.e.x))), vec2<u32>(_wgslsmith_mult_u32(firstTrailingBit(28791u), u_input.a), 6726u), ~reverseBits(_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 38509u))));
}

