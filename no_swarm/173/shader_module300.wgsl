struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(6037i, -1i), 1u);

var<private> global1: vec2<bool>;

var<private> global2: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(4294967295u, 88529u, 68573u, 9433u), vec4<u32>(31275u, 8229u, 4294967295u, 85513u), vec4<u32>(2315u, 4294967295u, 38181u, 15346u), vec4<u32>(0u, 1u, 4294967295u, 4294967295u), vec4<u32>(1u, 24730u, 1u, 39753u), vec4<u32>(0u, 15989u, 8142u, 1u), vec4<u32>(6414u, 13284u, 22171u, 17723u), vec4<u32>(1u, 0u, 51658u, 49508u), vec4<u32>(58893u, 92676u, 20630u, 0u), vec4<u32>(11894u, 4294967295u, 0u, 6647u), vec4<u32>(1u, 88380u, 4294967295u, 35829u), vec4<u32>(15693u, 0u, 0u, 24644u), vec4<u32>(4294967295u, 17022u, 47459u, 66436u), vec4<u32>(67191u, 0u, 0u, 29714u), vec4<u32>(0u, 22424u, 57851u, 0u), vec4<u32>(1u, 20484u, 1u, 9783u), vec4<u32>(39729u, 64691u, 4294967295u, 27848u), vec4<u32>(0u, 4294967295u, 0u, 47783u), vec4<u32>(1u, 0u, 6599u, 4294967295u), vec4<u32>(73455u, 0u, 13189u, 0u), vec4<u32>(1u, 4294967295u, 12075u, 0u), vec4<u32>(29174u, 1u, 1u, 0u), vec4<u32>(25019u, 4294967295u, 48580u, 0u), vec4<u32>(16098u, 0u, 4294967295u, 12557u), vec4<u32>(0u, 39075u, 37092u, 4294967295u), vec4<u32>(50828u, 1u, 7511u, 1u), vec4<u32>(1u, 0u, 36276u, 305u), vec4<u32>(0u, 1u, 1u, 0u));

var<private> global3: bool = false;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: f32) -> u32 {
    let var_0 = vec4<bool>(true, select(_wgslsmith_f_op_f32(-1000f + arg_3) < arg_3, all(select(arg_2, vec4<bool>(true, global1.x, arg_2.x, false), false)), abs(arg_1.x) == 32183u) || select(arg_2.x, !(-1036f > arg_3), !arg_2.x), _wgslsmith_f_op_f32(arg_3 * arg_3) < arg_3, arg_2.x);
    let var_1 = Struct_4(arg_3, 0i);
    global2 = array<vec4<u32>, 28>();
    global1 = select(!select(select(select(var_0.yw, vec2<bool>(false, var_0.x), arg_2.x), arg_2.xw, select(var_0.ww, vec2<bool>(true, true), vec2<bool>(arg_2.x, global1.x))), !arg_2.yz, var_0.x), vec2<bool>(!all(!arg_2), true), arg_2.xw);
    var var_2 = var_0;
    return min(21877u, ~arg_1.x);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(Struct_1(global0.a, func_3(Struct_3(Struct_1(global0.a, 24151u)), u_input.b.xwx, select(vec4<bool>(global1.x, true, false, global1.x), !vec4<bool>(global1.x, global1.x, global1.x, false), global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(257f * -341f)))));
    var var_1 = ~func_3(Struct_3(var_0.a), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.a, u_input.b.yw), u_input.a.x, _wgslsmith_add_u32(0u, var_0.a.b)), countOneBits(u_input.b.zxx)), !vec4<bool>(true, any(vec2<bool>(false, global1.x)), global1.x, true), _wgslsmith_f_op_f32(step(959f, -327f)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-831f + _wgslsmith_f_op_f32(round(1742f))) * _wgslsmith_div_f32(-258f, 768f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1232f * 1305f), -1393f, true & global1.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -461f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, -323f)) + 1044f)) * 1f), -574f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-641f, 331f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(100f))))));
    var var_3 = vec3<u32>(func_3(Struct_3(Struct_1(vec2<i32>(1i, global0.a.x), global0.b)), ~(~vec3<u32>(u_input.b.x, global0.b, global0.b)), vec4<bool>(true, false, global1.x, true), var_2.x), 0u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, var_0.a.b), vec3<u32>(u_input.a.x, 82363u, 32884u)), u_input.b.x) >> (reverseBits(var_0.a.b) % 32u)) ^ ~firstLeadingBit(vec3<u32>(4294967295u, _wgslsmith_clamp_u32(29072u, u_input.a.x, global0.b), _wgslsmith_add_u32(26466u, 21139u)));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_2.yxz, var_2.wxw, false)) + vec3<f32>(var_2.x, var_2.x, _wgslsmith_f_op_f32(785f - -654f)))));
    return var_0.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_mod_u32(firstTrailingBit(~firstLeadingBit(u_input.b.x)), _wgslsmith_mult_u32(arg_1.a.b, 87134u)) == _wgslsmith_div_u32(16788u, select(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0.b, arg_1.a.b, 24254u), vec4<u32>(global0.b, 94179u, arg_1.a.b, 4294967295u)), ~(~arg_1.a.b), true));
    global3 = var_0;
    return func_2();
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: Struct_3) -> Struct_1 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(arg_0.x)))) + arg_0.x))), ~abs(global0.a.x | -global0.a.x));
    var var_1 = arg_1;
    var var_2 = true;
    var_0 = Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-191f)), 105f))), 1291f)), -1i);
    let var_3 = arg_1;
    return arg_2.a;
}

fn func_1() -> Struct_1 {
    let var_0 = firstTrailingBit(~1i);
    global3 = false && global1.x;
    var var_1 = -845f;
    var var_2 = ~min(u_input.a.x, global0.b);
    var var_3 = Struct_3(func_5(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1457f, -1094f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(318f, -1268f) - vec2<f32>(-576f, 381f)), global1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1018f, -630f)))), vec3<u32>(98576u, reverseBits(22643u), _wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(global0.b, 28u)], u_input.b) ^ _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(37981u, u_input.c, 0u, global0.b))), Struct_3(func_4(func_2(), Struct_3(Struct_1(vec2<i32>(global0.a.x, var_0), 40902u)), Struct_3(Struct_1(vec2<i32>(1i, 1i), 113649u))))));
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global0.b;
    global3 = true;
    var var_1 = Struct_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-472f, _wgslsmith_f_op_f32(f32(-1f) * -619f))))), -global0.a.x);
    global1 = vec2<bool>(global1.x, !all(!select(vec4<bool>(true, global1.x, global1.x, false), vec4<bool>(global1.x, global1.x, true, true), global1.x)));
    var var_2 = global1.x;
    let var_3 = Struct_3(func_1());
    var var_4 = var_3.a;
    var var_5 = Struct_3(func_2());
    let x = u_input.a;
    s_output = StorageBuffer(4610i, _wgslsmith_div_vec4_i32(-firstTrailingBit(-vec4<i32>(var_1.b, global0.a.x, var_5.a.a.x, var_3.a.a.x)), vec4<i32>(-2147483647i, global0.a.x, ~var_4.a.x, ~2147483647i)), var_1.b & -18294i, -var_5.a.a);
}

