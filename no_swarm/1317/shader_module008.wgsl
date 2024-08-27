struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 19>;

var<private> global1: u32 = 0u;

var<private> global2: array<vec2<u32>, 1>;

var<private> global3: f32;

var<private> global4: array<u32, 21> = array<u32, 21>(17748u, 0u, 62903u, 10429u, 1u, 4294967295u, 1u, 63091u, 0u, 1u, 6192u, 1u, 15259u, 30617u, 40698u, 0u, 8156u, 1u, 1u, 90003u, 0u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_4) -> vec2<bool> {
    var var_0 = max(~_wgslsmith_div_i32(u_input.e, 0i), min(-firstTrailingBit(reverseBits(u_input.e)), u_input.b));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1, 649f, arg_1), vec3<f32>(arg_1, arg_1, -1000f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1023f - arg_1), arg_1, -2823f))) * vec3<f32>(554f, arg_1, _wgslsmith_f_op_f32(trunc(1f))));
    global1 = global4[_wgslsmith_index_u32(~_wgslsmith_add_u32(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.yw, vec2<u32>(global4[_wgslsmith_index_u32(54816u, 21u)], 0u)), 21u)] & _wgslsmith_add_u32(arg_0.x, 1u), ~(~arg_0.x)) & ~(~18688u), 21u)];
    let var_2 = u_input.d;
    var var_3 = arg_0.xz;
    return vec2<bool>(all(!(!vec3<bool>(arg_2.a.x, false, false))), any(vec4<bool>(all(arg_2.a), arg_2.b, all(!vec4<bool>(true, true, arg_2.b, arg_2.a.x)), !any(arg_2.a))));
}

fn func_2() -> u32 {
    let var_0 = Struct_4(select(!func_3(~u_input.a.yzw, _wgslsmith_f_op_f32(f32(-1f) * -1772f), Struct_4(vec2<bool>(true, true), false)), !func_3(vec3<u32>(4891u, 35764u, u_input.a.x), 899f, Struct_4(vec2<bool>(false, false), false)), vec2<bool>(true, false)), all(vec4<bool>(false, true, any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true))), true)));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.c, 21u)], 21u)], 57073u, 17653u)) >> (_wgslsmith_div_u32(1u, u_input.c) % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, _wgslsmith_mult_u32(u_input.a.x, 4294967295u)), ~abs(global2[_wgslsmith_index_u32(u_input.c, 1u)]))), vec2<u32>(~(4294967295u & (u_input.a.x << (global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 21u)], 21u)] % 32u))), _wgslsmith_dot_vec3_u32(countOneBits(_wgslsmith_mod_vec3_u32(u_input.a.wxy, vec3<u32>(u_input.a.x, 98135u, 9430u))), vec3<u32>(global4[_wgslsmith_index_u32(73374u, 21u)] >> (1u % 32u), 1u, abs(u_input.a.x)))));
}

fn func_1() -> Struct_2 {
    let var_0 = select(!vec3<bool>(true | all(vec2<bool>(false, true)), true, _wgslsmith_add_u32(u_input.a.x, 4294967295u) != global4[_wgslsmith_index_u32(func_2(), 21u)]), !(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))), vec3<bool>(false, !any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), true)), all(vec2<bool>(false, 1u <= global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.c, 21u)], 21u)]))));
    global0 = array<Struct_5, 19>();
    global4 = array<u32, 21>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-499f, -2280f), 1646f, false))), _wgslsmith_f_op_f32(select(476f, 789f, select(false, any(vec3<bool>(var_0.x, var_0.x, true)), !var_0.x))))), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -604f), -779f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1982f * 589f), _wgslsmith_f_op_f32(step(1655f, -585f)), -1062f) * vec3<f32>(_wgslsmith_f_op_f32(-127f - 2359f), _wgslsmith_f_op_f32(f32(-1f) * -1719f), _wgslsmith_f_op_f32(select(1546f, 909f, var_0.x))))), _wgslsmith_mod_u32(53008u & ~_wgslsmith_clamp_u32(u_input.c, global4[_wgslsmith_index_u32(89121u, 21u)], 27230u), _wgslsmith_dot_vec2_u32(firstTrailingBit(countOneBits(vec2<u32>(u_input.a.x, u_input.c))), u_input.a.yy)));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1());
    let var_1 = select(true, func_3(u_input.a.xxw, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a.b.a + var_0.a.a))))), Struct_4(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), any(vec3<bool>(true, true, true)))).x, !(~abs(0i) <= u_input.e));
    global0 = array<Struct_5, 19>();
    let var_2 = Struct_3(var_0.a);
    var var_3 = reverseBits(~(-78197i));
    let var_4 = vec3<u32>(u_input.a.x, var_0.a.c, global4[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 78949u, var_0.a.c, var_0.a.c), _wgslsmith_sub_vec4_u32(u_input.a, u_input.a)), 21u)]), 21u)]);
    let x = u_input.a;
    s_output = StorageBuffer(-247f);
}

