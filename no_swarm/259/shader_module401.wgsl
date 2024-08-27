struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_2, 9>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = min(84884u, 1u);
    var var_1 = Struct_3(u_input.e.x, Struct_1(_wgslsmith_f_op_vec3_f32(-arg_0.a), arg_0.b, 2113u, var_0));
    let var_2 = 0u;
    var var_3 = vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(var_1.a, 1i), ~(var_1.a | -1i) | select(~u_input.d.x, u_input.d.x, 63002u < var_1.b.c)), ~1i, 2147483647i, -1i);
    var var_4 = vec3<i32>(select(-11805i, ~1010i, var_1.b.b), _wgslsmith_dot_vec4_i32((~vec4<i32>(2147483647i, u_input.e.x, var_1.a, -2147483647i) >> (vec4<u32>(4659u, 1u, var_2, u_input.c) % vec4<u32>(32u))) >> (vec4<u32>(~u_input.c, max(4294967295u, 30044u), 4294967295u ^ u_input.a, ~0u) % vec4<u32>(32u)), vec4<i32>(0i, 3643i, 39984i, 2147483647i)), -u_input.e.x);
    return any(!(!vec4<bool>(true, var_1.b.c >= arg_0.c, all(vec2<bool>(false, false)), true)));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: vec2<bool>, arg_3: bool) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, -1565f), arg_0.x)), -487f)));
    var var_1 = !arg_1 | true;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), -192f, arg_0.x)), arg_2.x, u_input.c, u_input.c);
    let var_3 = false;
    let var_4 = false;
    return Struct_3(u_input.e.x, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(var_2.a))), !func_3(Struct_1(vec3<f32>(arg_0.x, arg_0.x, 1022f), false, u_input.b, 39495u)), _wgslsmith_add_u32(0u, abs(1u)), u_input.c));
}

fn func_1(arg_0: Struct_2) -> StorageBuffer {
    global1 = array<Struct_2, 9>();
    let var_0 = func_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.a.a.x, 311f), vec2<f32>(-807f, 296f)))))))), !arg_0.a.b, select(vec2<bool>(!all(vec2<bool>(true, arg_0.a.b)), u_input.d.x < _wgslsmith_sub_i32(u_input.e.x, -2147483647i)), vec2<bool>(true && arg_0.a.b, arg_0.a.b), vec2<bool>(true, !arg_0.a.b)), arg_0.a.b);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.a.x), 391f, -2115f, _wgslsmith_f_op_f32(select(arg_0.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + var_0.b.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-410f)))), true)));
    global0 = _wgslsmith_mult_i32(~(-135i), -countOneBits(~(-27432i)));
    var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1212f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 700f)) + var_1.x), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(654f))))));
    return StorageBuffer(~1i, -vec4<i32>(2147483647i, _wgslsmith_mult_i32(u_input.d.x, var_0.a & var_0.a), ~min(-2147483647i, -10221i), u_input.e.x | 1i), vec2<i32>(-51925i, 2147483647i), firstLeadingBit(~vec3<u32>(firstTrailingBit(25439u), ~var_0.b.c, firstTrailingBit(u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f))))));
    let var_1 = false || (_wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(sign(-1181f))) <= var_0);
    var var_2 = !(!(!var_1));
    global1 = array<Struct_2, 9>();
    var var_3 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0), -351f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(971f, -864f))))), -340f, _wgslsmith_f_op_f32(min(-341f, 910f)), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0, 1000f))))));
    let x = u_input.a;
    s_output = func_1(global1[_wgslsmith_index_u32(countOneBits(70273u), 9u)]);
}

