struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<bool>;

var<private> global2: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(0i, 22294i, 13725i), vec3<i32>(-1i, -34059i, 16443i), vec3<i32>(2147483647i, 0i, -5094i), vec3<i32>(11742i, i32(-2147483648), 12498i), vec3<i32>(46300i, 0i, 2147483647i), vec3<i32>(-1i, -31055i, -1i), vec3<i32>(17813i, 2249i, 2147483647i), vec3<i32>(-60587i, 41951i, 27801i), vec3<i32>(-9584i, 15087i, 2147483647i), vec3<i32>(-2656i, 0i, 5842i), vec3<i32>(-22022i, 19925i, 18275i), vec3<i32>(-1i, 18326i, -25646i), vec3<i32>(1i, 1i, 33330i), vec3<i32>(i32(-2147483648), -1073i, 0i), vec3<i32>(-36910i, 0i, 32275i));

var<private> global3: vec2<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> vec4<u32> {
    global0 = arg_1.a;
    global2 = array<vec3<i32>, 15>();
    let var_0 = Struct_2(arg_1.a);
    let var_1 = arg_1.a.b;
    global3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1386f + _wgslsmith_div_f32(1041f, global3.x)))), -223f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-global3.x), global3.x))), global0.b.x));
    return vec4<u32>(global0.a, ~51815u, _wgslsmith_div_u32(1u >> (~(~arg_1.a.a) % 32u), ~0u), countOneBits(max(51365u, global0.a) | (global0.a >> (0u % 32u))) | _wgslsmith_sub_u32(~4294967295u, firstTrailingBit(_wgslsmith_add_u32(4294967295u, arg_1.a.a))));
}

fn func_2() -> u32 {
    var var_0 = u_input.c;
    var var_1 = select(_wgslsmith_div_vec4_u32(~(vec4<u32>(global0.a, global0.a, 63887u, u_input.a) >> (func_3(var_0.x, Struct_2(Struct_1(global0.a, global0.b))) % vec4<u32>(32u))), (firstLeadingBit(vec4<u32>(u_input.a, 10680u, 0u, global0.a)) | _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, global0.a, global0.a, u_input.a), vec4<u32>(21637u, global0.a, global0.a, global0.a))) & (vec4<u32>(global0.a, 1u, global0.a, 28114u) << (countOneBits(vec4<u32>(u_input.a, 4294967295u, 4294967295u, global0.a)) % vec4<u32>(32u)))), ~vec4<u32>(_wgslsmith_sub_u32(4294967295u, ~15049u), ~u_input.a, _wgslsmith_div_u32(1u, global0.a), _wgslsmith_div_u32(u_input.a, _wgslsmith_div_u32(4294967295u, u_input.a))), global1.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global3.x, _wgslsmith_div_f32(521f, -648f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(623f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1269f, -471f, 304f, 555f))))));
    global2 = array<vec3<i32>, 15>();
    let var_3 = Struct_1(~56733u, global0.b);
    return ~countOneBits(~(~(var_3.a ^ 4294967295u)));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> u32 {
    var var_0 = arg_1;
    let var_1 = ~45489i;
    global0 = arg_2.a;
    var var_2 = Struct_2(Struct_1(~11715u, vec2<bool>(select(!arg_2.a.b.x, true, true), global0.b.x)));
    let var_3 = func_2();
    return ~var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<bool>(_wgslsmith_div_u32(func_1(u_input.b, Struct_1(1u, vec2<bool>(true, false)), Struct_2(Struct_1(u_input.a, vec2<bool>(true, true))), global3.x), ~firstTrailingBit(global0.a)) == _wgslsmith_clamp_u32(global0.a, _wgslsmith_mod_u32(~20959u, global0.a), u_input.a), global0.a != _wgslsmith_dot_vec4_u32(vec4<u32>(~13905u, global0.a, ~global0.a, global0.a), firstLeadingBit(vec4<u32>(global0.a, 22372u, u_input.a, global0.a) ^ vec4<u32>(0u, u_input.a, 63973u, u_input.a))), all(select(!select(vec4<bool>(true, false, false, global1.x), vec4<bool>(global1.x, global0.b.x, global1.x, true), true), vec4<bool>(true, false, true, any(vec2<bool>(global0.b.x, global0.b.x))), !select(vec4<bool>(true, false, global1.x, true), vec4<bool>(true, global0.b.x, false, global0.b.x), global0.b.x))));
    let var_0 = !select(select(vec4<bool>(global1.x, global1.x != false, true, !global1.x), select(vec4<bool>(global1.x, false, false, global1.x), select(vec4<bool>(global0.b.x, false, true, global1.x), vec4<bool>(false, global1.x, false, global0.b.x), false), global0.a > 11104u), vec4<bool>(all(vec4<bool>(false, global1.x, false, false)), global1.x, any(vec4<bool>(false, global1.x, false, global1.x)), any(vec4<bool>(false, false, false, global1.x)))), select(vec4<bool>(all(vec3<bool>(false, true, global1.x)), all(vec3<bool>(true, global1.x, true)), true, u_input.b > -4440i), !(!vec4<bool>(global0.b.x, true, true, false)), select(vec4<bool>(global1.x, false, false, global1.x), !vec4<bool>(global1.x, global0.b.x, global0.b.x, global0.b.x), select(vec4<bool>(global0.b.x, global0.b.x, global1.x, false), vec4<bool>(false, global1.x, false, global0.b.x), vec4<bool>(global0.b.x, global1.x, global1.x, global0.b.x)))), !global1.x);
    let var_1 = u_input.b;
    let var_2 = Struct_2(Struct_1(~42143u, !select(global0.b, global0.b, global1.xx)));
    global2 = array<vec3<i32>, 15>();
    let var_3 = var_2.a;
    var var_4 = !var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(global3.x)), _wgslsmith_mod_vec4_u32(countOneBits(_wgslsmith_div_vec4_u32(select(vec4<u32>(0u, var_2.a.a, 27673u, 22621u), vec4<u32>(var_3.a, 54056u, 1u, var_2.a.a), global0.b.x), select(vec4<u32>(var_3.a, u_input.a, global0.a, 73816u), vec4<u32>(var_3.a, u_input.a, 1u, 82336u), var_0))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, var_3.a, 0u, 36270u) << ((vec4<u32>(global0.a, 61725u, 5275u, u_input.a) << (vec4<u32>(global0.a, global0.a, 1u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)), min(vec4<u32>(u_input.a, 0u, global0.a, 577u), vec4<u32>(global0.a, var_2.a.a, 63652u, var_2.a.a)) | ~vec4<u32>(0u, var_2.a.a, 53347u, var_3.a))), var_3.a, 1u, firstTrailingBit(0u));
}

