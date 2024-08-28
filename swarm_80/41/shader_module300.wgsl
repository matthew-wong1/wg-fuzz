struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_1 = Struct_1(44986u);

var<private> global2: array<f32, 8> = array<f32, 8>(-1321f, 1000f, -1915f, -904f, 608f, -677f, 352f, -507f);

var<private> global3: i32 = 2147483647i;

var<private> global4: vec3<u32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1() -> Struct_1 {
    var var_0 = vec4<u32>(1u, u_input.a, ~4294967295u, select(_wgslsmith_sub_u32(49297u, firstLeadingBit(51823u)), ~66172u, false));
    global2 = array<f32, 8>();
    var var_1 = false;
    global2 = array<f32, 8>();
    global4 = ~firstLeadingBit(var_0.xyz);
    return Struct_1(_wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, 4294967295u), 0u));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> vec2<bool> {
    global4 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 1u, 49562u), u_input.d)) | _wgslsmith_div_vec3_u32(u_input.d & arg_1.c.wzy, countOneBits(u_input.d)), u_input.d), _wgslsmith_add_vec3_u32(countOneBits(abs(~u_input.d)), vec3<u32>(11680u, ~arg_1.e.a << (arg_2.a % 32u), ~(~u_input.a))), vec3<u32>(0u, 0u, 86182u) | vec3<u32>(max(~0u, 3853u), abs(19132u), (global1.a >> (global1.a % 32u)) & arg_2.a));
    let var_0 = Struct_1(arg_2.a);
    var var_1 = ~min(arg_1.c, arg_1.c);
    global2 = array<f32, 8>();
    let var_2 = -1037f;
    return vec2<bool>(true, global0.x);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>) -> f32 {
    let var_0 = 1u;
    let var_1 = arg_0;
    global0 = !select(select(select(select(vec2<bool>(true, true), vec2<bool>(global0.x, false), vec2<bool>(global0.x, true)), !vec2<bool>(global0.x, true), global0.x), select(!vec2<bool>(global0.x, true), !vec2<bool>(global0.x, global0.x), func_3(true, var_1, Struct_1(global1.a))), select(select(true, true, global0.x), global0.x && false, all(vec4<bool>(global0.x, false, false, false)))), vec2<bool>(any(!vec3<bool>(global0.x, true, global0.x)), !(global2[_wgslsmith_index_u32(41316u, 8u)] < var_1.a)), select(func_3(true, Struct_2(var_1.a, arg_0.b, vec4<u32>(var_1.c.x, 78521u, arg_0.b.a, 1u), var_1.b, Struct_1(var_1.b.a)), func_1()), vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 8u)] < 937f), global0.x));
    var var_2 = Struct_2(arg_0.a, var_1.e, arg_0.c, func_1(), arg_0.b);
    let var_3 = arg_0.c.x;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    let var_1 = u_input.d.x;
    global4 = vec3<u32>(select(4294967295u, u_input.d.x, all(vec4<bool>(1i <= u_input.b.x, true, true, any(vec4<bool>(global0.x, true, global0.x, false))))), var_0, 1u);
    var var_2 = abs(~(u_input.b.yx << (abs(u_input.d.zy) % vec2<u32>(32u))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(Struct_2(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 8u)] + -439f), Struct_1(global4.x), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.a, global1.a, 91616u, var_0), vec4<u32>(u_input.d.x, 51967u, global1.a, global4.x)), func_1(), func_1()), vec2<u32>(0u, global1.a) ^ ~vec2<u32>(18373u, 4294967295u))))), _wgslsmith_f_op_f32(-605f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(188f - 818f), _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(58009u, 8u)])))), -184f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u ^ firstTrailingBit(var_0), 8u)])), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_add_u32(10871u, 1u)), 8u)]));
    let var_4 = vec3<u32>(~global1.a, firstLeadingBit(func_1().a), ~u_input.a);
    global2 = array<f32, 8>();
    var var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, -437f, global2[_wgslsmith_index_u32(global4.x, 8u)], -1000f) - var_3), vec4<f32>(var_3.x, -849f, _wgslsmith_f_op_f32(sign(-616f)), -1101f), true)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.a, 8u)]), _wgslsmith_f_op_f32(var_3.x + -1000f), 225f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_1, 8u)] * 647f)), var_3), vec4<bool>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(65983u, 8u)]) < -1779f, false, !all(vec3<bool>(false, global0.x, global0.x)), any(vec2<bool>(global0.x, global0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(countOneBits(vec3<u32>(global1.a, var_1, var_0))));
}

