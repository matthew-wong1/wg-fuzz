struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4>;

var<private> global1: array<u32, 11> = array<u32, 11>(94827u, 14432u, 0u, 7440u, 81383u, 1u, 1u, 1u, 4294967295u, 4294967295u, 4294967295u);

var<private> global2: Struct_3;

var<private> global3: array<vec4<bool>, 8> = array<vec4<bool>, 8>(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true));

var<private> global4: vec4<u32> = vec4<u32>(4294967295u, 0u, 47238u, 95434u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool) -> vec4<i32> {
    global2 = Struct_3(global2.a, ~vec3<u32>(~(~1u), abs(global1[_wgslsmith_index_u32(40185u, 11u)]) | _wgslsmith_clamp_u32(45924u, global2.b.x, 86549u), _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.c.x, 21776u), global2.b.x)), _wgslsmith_f_op_vec4_f32(step(global2.c, vec4<f32>(_wgslsmith_f_op_f32(-global2.d.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(global2.d.a)))), _wgslsmith_div_f32(682f, -1413f), global2.d.a))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -995f), (_wgslsmith_mult_i32(u_input.b.x, global2.d.b) | global2.d.b) ^ -global2.a.a.b));
    global2 = Struct_3(global2.a, select(_wgslsmith_add_vec3_u32(u_input.c, _wgslsmith_mult_vec3_u32(abs(global2.b), _wgslsmith_mult_vec3_u32(u_input.c, u_input.c))), vec3<u32>(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global4.x, 11u)], 0u), vec2<u32>(global4.x, 81801u)), 11u)], global4.x, ~abs(u_input.c.x)), arg_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1188f, -3336f, global2.a.a.a, -227f)))), global2.a.a);
    var var_0 = -(global2.d.b << (global2.b.x % 32u));
    global3 = array<vec4<bool>, 8>();
    return firstLeadingBit(~(u_input.b << ((_wgslsmith_sub_vec4_u32(vec4<u32>(global2.b.x, global1[_wgslsmith_index_u32(u_input.c.x, 11u)], 4294967295u, 33968u), vec4<u32>(18621u, u_input.c.x, 4294967295u, global4.x)) | abs(vec4<u32>(global4.x, 0u, 4294967295u, global1[_wgslsmith_index_u32(33975u, 11u)]))) % vec4<u32>(32u))));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: f32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 - -1000f) + _wgslsmith_f_op_f32(sign(global2.c.x))));
    global0 = array<Struct_2, 4>();
    let var_1 = func_3(_wgslsmith_f_op_f32(-300f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_2)) - _wgslsmith_f_op_f32(f32(-1f) * -1596f))) < global2.d.a);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1028f, global2.a.a.a, _wgslsmith_f_op_f32(max(-1204f, _wgslsmith_f_op_f32(arg_1.b.a.a.a * arg_1.b.a.a.a))), global2.a.a.a)) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1337f, global2.a.a.a) - _wgslsmith_f_op_f32(min(arg_1.b.a.a.a, -1000f))), -900f), _wgslsmith_div_f32(1f, arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.b.c.x))), -811f));
    global2 = arg_1.b;
    return vec4<bool>(true, true, all(vec3<bool>(true, true, true)), (any(vec3<bool>(true, true, true)) == true) || (!all(vec4<bool>(true, false, false, true)) && true));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: vec4<bool>) -> vec3<bool> {
    var var_0 = arg_2;
    var_0 = arg_2;
    var var_1 = arg_3;
    var var_2 = var_1.x & var_1.x;
    var_1 = !select(!vec4<bool>(all(global3[_wgslsmith_index_u32(4294967295u, 8u)]), true, any(vec3<bool>(var_1.x, arg_1.x, false)), false), !select(!global3[_wgslsmith_index_u32(1129u, 8u)], func_2(vec4<u32>(45803u, 34567u, arg_2.b.b.x, 0u), arg_2, var_0.b.a.a.a), all(var_1.yw)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(89699u, arg_2.b.b.x, 31629u) >> (~vec3<u32>(var_0.b.b.x, 16732u, 87765u) % vec3<u32>(32u)), ~(~arg_2.b.b)), 8u)]);
    return arg_3.www;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(u_input.a.x, 104038i, -9787i) << (_wgslsmith_mult_vec3_u32(u_input.c, reverseBits(vec3<u32>(49069u, ~global2.b.x, 4294967295u))) % vec3<u32>(32u));
    var var_1 = firstTrailingBit(_wgslsmith_clamp_i32(firstTrailingBit(1i) | (u_input.a.x ^ -24633i), _wgslsmith_div_i32(-var_0.x, ~(-57740i)), global2.a.a.b)) > 1i;
    var var_2 = all(vec2<bool>(true, all(!func_1(u_input.a, vec2<bool>(false, false), Struct_4(u_input.b, Struct_3(global2.a, global2.b, global2.c, Struct_1(global2.d.a, global2.d.b))), vec4<bool>(false, true, true, true)))));
    let var_3 = !all(vec3<bool>(true, true, true)) && !(!(_wgslsmith_mod_i32(global2.a.a.b, var_0.x) >= abs(var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global2.b.zz);
}

