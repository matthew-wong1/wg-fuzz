struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 21>;

var<private> global2: Struct_1 = Struct_1(vec2<u32>(4294967295u, 1u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), 31267u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec3<u32> {
    global2 = global1[_wgslsmith_index_u32(global2.c, 21u)];
    var var_0 = global1[_wgslsmith_index_u32(global2.c, 21u)];
    global1 = array<Struct_1, 21>();
    global1 = array<Struct_1, 21>();
    var var_1 = global1[_wgslsmith_index_u32(var_0.a.x, 21u)];
    return ~_wgslsmith_clamp_vec3_u32(reverseBits(var_1.b), global2.b, ~vec3<u32>(_wgslsmith_clamp_u32(global2.a.x, u_input.b, 0u), countOneBits(0u), var_1.a.x));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> vec2<u32> {
    let var_0 = global2.b.xx;
    var var_1 = u_input.a;
    global0 = arg_1;
    global0 = arg_1;
    var_1 = ~select(~reverseBits(max(vec2<i32>(1i, 1i), u_input.a)), ~vec2<i32>(~(-2147483647i), -1i), vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), _wgslsmith_f_op_f32(116f - -168f) > _wgslsmith_f_op_f32(floor(arg_1))));
    return select(abs(~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.a.x, 30345u) ^ arg_0.b.zz, _wgslsmith_add_vec2_u32(global2.a, vec2<u32>(8761u, 115009u)))), vec2<u32>(abs(~_wgslsmith_add_u32(0u, var_0.x)), abs((global2.a.x & var_0.x) ^ _wgslsmith_div_u32(global2.a.x, u_input.b))), select(!select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(false, all(vec3<bool>(true, false, false))), select(vec2<bool>(all(vec3<bool>(false, false, false)), any(vec2<bool>(false, false))), select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true), true))));
}

fn func_2() -> Struct_1 {
    global2 = Struct_1(func_4(Struct_1(reverseBits(vec2<u32>(4294967295u, global2.b.x)) << (_wgslsmith_mod_vec2_u32(global2.b.zx, global2.a) % vec2<u32>(32u)), func_3(), ~(~33833u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1428f, -1826f))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), global2.b, _wgslsmith_dot_vec2_u32(min(vec2<u32>(~global2.a.x, global2.c), _wgslsmith_mod_vec2_u32(min(global2.a, vec2<u32>(u_input.b, u_input.b)), global2.a)), global2.a));
    global1 = array<Struct_1, 21>();
    global1 = array<Struct_1, 21>();
    global2 = Struct_1(vec2<u32>(global2.b.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(global2.a.x, 0u, 4294967295u, 1u)), vec4<u32>(u_input.b, global2.a.x, 53946u, u_input.b)), _wgslsmith_add_vec4_u32(vec4<u32>(global2.c, 28446u, 1u, u_input.b), reverseBits(vec4<u32>(1u, 0u, u_input.b, global2.a.x))))), _wgslsmith_mult_vec3_u32(global2.b, ~vec3<u32>(38590u, countOneBits(1u), _wgslsmith_clamp_u32(85574u, u_input.b, 19010u))), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(22887u, 9498u, 4294967295u, u_input.b) | vec4<u32>(52871u, 0u, u_input.b, 0u)), ~vec4<u32>(u_input.b, 0u, 1u, u_input.b)), 6502u));
    var var_0 = global1[_wgslsmith_index_u32(10667u, 21u)];
    return Struct_1(var_0.a, ~vec3<u32>(min(var_0.a.x & u_input.b, _wgslsmith_mod_u32(4294967295u, 4294967295u)), global2.c, _wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, global2.c), _wgslsmith_mult_u32(global2.a.x, u_input.b))), 14541u);
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: u32) -> vec3<u32> {
    let var_0 = false;
    global0 = _wgslsmith_f_op_f32(max(-812f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -319f))), 1152f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 1179f) - -1062f), _wgslsmith_f_op_f32(sign(795f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1048f, -916f)) - -708f));
    global1 = array<Struct_1, 21>();
    var var_1 = func_2();
    return ~vec3<u32>(var_1.a.x, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(21995u, arg_2, var_1.c, 4294967295u)), vec4<u32>(~69877u, _wgslsmith_mod_u32(37787u, arg_1.x), _wgslsmith_clamp_u32(global2.a.x, global2.c, 4294967295u), select(42966u, 21612u, false))), arg_1.x | _wgslsmith_dot_vec2_u32(abs(global2.b.yy), _wgslsmith_clamp_vec2_u32(global2.a, vec2<u32>(arg_1.x, arg_1.x), arg_1.zy)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(vec2<u32>(u_input.b, 45886u), ~(firstTrailingBit(func_1(-1i, vec3<u32>(31429u, u_input.b, 15670u), 1u)) | vec3<u32>(u_input.b, 0u, ~u_input.b)), global2.c);
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-978f, -437f, true)), -1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-413f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1936f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-141f + 1810f) * _wgslsmith_f_op_f32(-665f - -293f)))))));
    let var_0 = select(!vec3<bool>(all(vec4<bool>(true, true, true, true)), false, true), select(!vec3<bool>(true, false, any(vec4<bool>(false, false, false, true))), select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), false), false), true);
    var var_1 = -vec2<i32>((_wgslsmith_mod_i32(-2147483647i, u_input.a.x) | u_input.d.x) << (~0u % 32u), ~(~(-2169i)));
    var_1 = vec2<i32>(min(-25866i, var_1.x), 1i);
    var var_2 = vec3<i32>(reverseBits(_wgslsmith_div_i32(var_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, -37598i, var_1.x), u_input.c))), 1i, (-6317i & (abs(var_1.x) ^ min(var_1.x, var_1.x))) << ((func_2().c & func_3().x) % 32u));
    var var_3 = ~(~vec4<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.b, u_input.b, u_input.b), global2.b, false), abs(vec3<u32>(0u, u_input.b, global2.a.x))), 56790u, 4294967295u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1f, 1f, 1f), global2.b);
}

