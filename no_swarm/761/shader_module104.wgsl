struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31>;

var<private> global1: array<i32, 1>;

var<private> global2: Struct_2;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_sub_vec3_u32(~reverseBits(~u_input.a), reverseBits(~(~countOneBits(arg_1.yxz))));
    global2 = arg_2;
    var var_1 = min(_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(min(firstLeadingBit(min(var_0.x, arg_1.x)), firstLeadingBit(1u)), 1u)], _wgslsmith_mod_i32(41214i, ~(global1[_wgslsmith_index_u32(1u, 1u)] | u_input.b.x)), i32(-1i) * -arg_2.c.x), _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(abs(u_input.a.x), 1u)], -26748i, firstLeadingBit(_wgslsmith_mult_i32(-1i, i32(-1i) * -1i))));
    global1 = array<i32, 1>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-arg_2.b.a));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(682f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x * 1037f)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2) -> f32 {
    var var_0 = true;
    var var_1 = ~(_wgslsmith_mult_vec4_u32(vec4<u32>(select(4294967295u, 1u, false), select(82114u, u_input.a.x, arg_1.a), u_input.a.x, 81136u), vec4<u32>(1u, 2680u >> (0u % 32u), 1u, u_input.a.x)) << (_wgslsmith_add_vec4_u32(min(vec4<u32>(5441u, u_input.a.x, 46361u, u_input.a.x), reverseBits(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x))), _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(0u, 5881u, u_input.a.x, 1u)), firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 0u)))) % vec4<u32>(32u)));
    return global2.b.a.x;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b.a.yxw)), global2.b.a.wxy));
    let var_1 = global0[_wgslsmith_index_u32(1u, 31u)];
    var var_2 = arg_0.b;
    global2 = global0[_wgslsmith_index_u32(u_input.a.x, 31u)];
    global2 = arg_1;
    return _wgslsmith_f_op_f32(func_4(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-895f - _wgslsmith_f_op_f32(func_3(true, vec4<u32>(37902u, 19139u, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 31u)], vec2<f32>(var_1.b.a.x, global2.b.a.x)))))), _wgslsmith_f_op_f32(trunc(-240f))), arg_0));
}

fn func_1(arg_0: Struct_1) -> u32 {
    global1 = array<i32, 1>();
    var var_0 = global2.b;
    let var_1 = Struct_2(any(vec3<bool>(global2.a, any(vec4<bool>(global2.a, true, global2.a, true)), true)), Struct_1(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(func_2(Struct_2(global2.a, Struct_1(global2.b.a), global2.c), global0[_wgslsmith_index_u32(18719u, 31u)], Struct_1(var_0.a), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(21349u, u_input.a.x), 1u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global0[_wgslsmith_index_u32(1u, 31u)], Struct_2(global2.a, Struct_1(vec4<f32>(-157f, -912f, var_0.a.x, var_0.a.x)), vec3<i32>(u_input.b.x, 1i, global1[_wgslsmith_index_u32(0u, 1u)])), Struct_1(var_0.a), 2147483647i))), 400f)), reverseBits(global2.c));
    global2 = Struct_2(true, Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.a.x, arg_0.a.x, 1905f, -974f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1366f, arg_0.a.x, -984f, var_0.a.x)))))), var_1.c);
    var var_2 = true;
    return ~4294967295u;
}

fn func_5(arg_0: vec2<u32>, arg_1: bool, arg_2: i32, arg_3: u32) -> Struct_1 {
    var var_0 = Struct_2(global2.a, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global2.b.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global2.b.a.x)))), global2.b.a.x, _wgslsmith_f_op_f32(exp2(global2.b.a.x)))), vec3<i32>(1i, -35811i >> (~arg_3 % 32u), _wgslsmith_mult_i32(u_input.b.x, (2147483647i >> (0u % 32u)) >> (arg_0.x % 32u))));
    let var_1 = global0[_wgslsmith_index_u32(1u, 31u)];
    global0 = array<Struct_2, 31>();
    var_0 = global0[_wgslsmith_index_u32(~(~arg_0.x), 31u)];
    var var_2 = true;
    return Struct_1(global2.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.b;
    var var_1 = global2.b.a.x;
    global0 = array<Struct_2, 31>();
    var_0 = func_5(vec2<u32>(firstTrailingBit(_wgslsmith_div_u32(4294967295u, func_1(Struct_1(vec4<f32>(var_0.a.x, global2.b.a.x, -926f, var_0.a.x))))), u_input.a.x), all(vec2<bool>(global2.a, global2.b.a.x != -1969f)), global2.c.x, 67123u);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, var_0.a.x));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -757f);
    var var_3 = global2.b;
    let var_4 = abs(0i);
    var_0 = global2.b;
    let x = u_input.a;
    s_output = StorageBuffer(0u, var_0.a.x, ~(~vec2<u32>(~u_input.a.x, ~43866u)));
}

