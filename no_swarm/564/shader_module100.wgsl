struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1>;

var<private> global1: array<bool, 26> = array<bool, 26>(true, true, false, true, true, false, true, false, true, false, true, true, true, false, true, true, true, true, true, true, false, false, false, true, true, true);

var<private> global2: Struct_3;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.a.xy - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-577f, 1938f), _wgslsmith_f_op_f32(-424f - global2.a.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.c.a, -600f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.a.a, _wgslsmith_f_op_f32(round(global2.d.b)))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.c.b, -314f)) * _wgslsmith_f_op_vec2_f32(-global2.a.zz))))));
    let var_1 = vec3<u32>(4294967295u ^ global2.b.b, _wgslsmith_mult_u32(~global2.b.b, global2.b.b), ~(~reverseBits(firstLeadingBit(47646u))));
    global0 = array<Struct_2, 1>();
    return arg_0;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_1 {
    global1 = array<bool, 26>();
    let var_0 = vec3<bool>(all(!(!select(vec4<bool>(true, global1[_wgslsmith_index_u32(global2.b.b, 26u)], false, global1[_wgslsmith_index_u32(1u, 26u)]), vec4<bool>(true, arg_1.x, global1[_wgslsmith_index_u32(94198u, 26u)], arg_1.x), vec4<bool>(global1[_wgslsmith_index_u32(1u, 26u)], arg_1.x, arg_1.x, false)))), true, 39973i >= u_input.a.x);
    global1 = array<bool, 26>();
    let var_1 = arg_0.b;
    global1 = array<bool, 26>();
    return global2.b.a;
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: f32, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_1(489f, _wgslsmith_f_op_f32(global2.a.x * 121f));
    let var_1 = global2.b.a.a;
    var var_2 = u_input.b & reverseBits(u_input.b << (reverseBits(reverseBits(4294967295u)) % 32u));
    let var_3 = Struct_2(global2.c, ~abs(0u), Struct_1(-797f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-225f + 281f)) - var_0.b)), Struct_1(-955f, -1151f));
    var_2 = _wgslsmith_mod_i32((i32(-1i) * -43136i) >> (abs(global2.b.b) % 32u), ~25186i);
    return func_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(26077u, countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0.b.b, arg_1), vec3<u32>(1u, arg_3.x, 1u)))), 1u)], select(vec2<bool>(any(vec3<bool>(false, true, false)), _wgslsmith_f_op_f32(-arg_2) > var_3.d.a), vec2<bool>((u_input.c != -2147483647i) & global1[_wgslsmith_index_u32(~4294967295u, 26u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 40952u), 26u)]), false));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<f32>) -> vec4<bool> {
    global0 = array<Struct_2, 1>();
    let var_0 = Struct_3(vec3<f32>(_wgslsmith_div_f32(-611f, arg_0.b), global2.b.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.x, 1109f, global1[_wgslsmith_index_u32(arg_1.b, 26u)]))) + _wgslsmith_f_op_f32(floor(arg_2.x)))), Struct_2(func_2(global0[_wgslsmith_index_u32(arg_1.b, 1u)], !(!vec2<bool>(global1[_wgslsmith_index_u32(5740u, 26u)], global1[_wgslsmith_index_u32(arg_1.b, 26u)]))), arg_1.b, arg_1.c, arg_1.d), global2.b.d, func_2(arg_1, select(select(select(vec2<bool>(false, global1[_wgslsmith_index_u32(arg_1.b, 26u)]), vec2<bool>(false, true), global1[_wgslsmith_index_u32(arg_1.b, 26u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 26u)], true), vec2<bool>(false, global1[_wgslsmith_index_u32(arg_1.b, 26u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(arg_1.b, 26u)])), vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 26u)])), vec2<bool>(global1[_wgslsmith_index_u32(arg_1.b, 26u)] && false, select(global1[_wgslsmith_index_u32(global2.b.b, 26u)], true, global1[_wgslsmith_index_u32(arg_1.b, 26u)])), any(!vec3<bool>(true, global1[_wgslsmith_index_u32(76278u, 26u)], false)))));
    var var_1 = 1i;
    var_1 = -(i32(-1i) * -15010i);
    let var_2 = var_0;
    return vec4<bool>(all(vec3<bool>(false, true, 4294967295u != (44503u | var_2.b.b))), u_input.b > u_input.a.x, any(select(vec3<bool>(true, true, true), !select(vec3<bool>(global1[_wgslsmith_index_u32(var_0.b.b, 26u)], false, global1[_wgslsmith_index_u32(0u, 26u)]), vec3<bool>(true, false, false), vec3<bool>(global1[_wgslsmith_index_u32(90658u, 26u)], false, false)), false)), global1[_wgslsmith_index_u32(firstLeadingBit(20382u), 26u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 1>();
    let var_0 = func_1(u_input.b | 44317i);
    var var_1 = ~countOneBits(~_wgslsmith_div_vec2_u32(~vec2<u32>(global2.b.b, 8529u), ~vec2<u32>(0u, 56918u)));
    let var_2 = vec4<u32>(60032u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, var_1.x, var_1.x), ~vec3<u32>(var_1.x, global2.b.b, global2.b.b)), _wgslsmith_add_u32(var_1.x, var_1.x)) >> (_wgslsmith_clamp_u32(31875u << (var_1.x % 32u), var_1.x & firstTrailingBit(4294967295u), var_1.x) % 32u), 1u, global2.b.b);
    var_1 = var_2.zx;
    let var_3 = global2.d;
    var var_4 = -115f;
    var var_5 = select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 26u)], true, true, _wgslsmith_f_op_f32(-global2.a.x) == -571f), !func_4(func_2(global2.b, select(vec2<bool>(false, global1[_wgslsmith_index_u32(26501u, 26u)]), vec2<bool>(false, false), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(7319u, 26u)]))), Struct_2(func_3(Struct_3(global2.a, global0[_wgslsmith_index_u32(1684u, 1u)], Struct_1(global2.d.a, var_3.a), Struct_1(732f, var_3.b)), var_2.x, 981f, vec2<u32>(global2.b.b, global2.b.b)), ~var_2.x, Struct_1(var_3.b, var_3.b), global2.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, global2.d.a, 2429f, global2.c.a))))), !(!(!func_4(Struct_1(global2.d.b, global2.b.c.a), global0[_wgslsmith_index_u32(1u, 1u)], vec4<f32>(-1816f, -1000f, var_3.b, 276f)))));
    let x = u_input.a;
    s_output = StorageBuffer(10865u, _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(var_2.zwx, ~(var_2.zwx | var_2.wwy)), var_2.yyz), u_input.b, vec3<i32>(select(2147483647i, u_input.a.x, true), ~(~u_input.b), ~1i));
}

