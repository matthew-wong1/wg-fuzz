struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec3<u32>(28333u, 4294967295u, 1u)));

var<private> global1: array<vec3<i32>, 12>;

var<private> global2: array<Struct_1, 22>;

var<private> global3: array<vec2<u32>, 10> = array<vec2<u32>, 10>(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 63325u), vec2<u32>(22327u, 1u), vec2<u32>(73325u, 12515u), vec2<u32>(16432u, 1u), vec2<u32>(0u, 0u), vec2<u32>(0u, 1u), vec2<u32>(4514u, 5295u), vec2<u32>(34638u, 4294967295u), vec2<u32>(4294967295u, 4294967295u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = (firstTrailingBit(_wgslsmith_dot_vec3_u32(global0.a.a | vec3<u32>(4294967295u, global0.a.a.x, 0u), _wgslsmith_div_vec3_u32(global0.a.a, vec3<u32>(global0.a.a.x, u_input.b, global0.a.a.x)))) ^ abs(~global0.a.a.x << ((76667u ^ arg_1.a.x) % 32u))) & firstLeadingBit(_wgslsmith_dot_vec2_u32(arg_1.a.xx, vec2<u32>(global0.a.a.x, _wgslsmith_dot_vec2_u32(arg_1.a.yx, arg_1.a.xy))));
    let var_1 = ~vec3<i32>(firstLeadingBit(firstLeadingBit(u_input.a & -31452i)), i32(-1i) * -1i, reverseBits(-countOneBits(arg_0)));
    let var_2 = Struct_5(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(283f, -222f), vec2<f32>(211f, -273f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-692f, 1037f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1020f, -1198f), vec2<f32>(-419f, -807f))), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-548f, 988f))))), !vec2<bool>(any(vec2<bool>(false, false)), false))));
    var var_3 = -_wgslsmith_sub_i32(var_1.x << (4294967295u % 32u), ~min(abs(var_1.x), 1i));
    let var_4 = arg_0;
    return vec2<bool>(true, true);
}

fn func_2(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: vec3<i32>) -> vec3<bool> {
    let var_0 = ~vec3<i32>(-abs(select(-22562i, arg_0.b.e, true)), 31168i, _wgslsmith_sub_i32(~(-2147483647i), 1i));
    let var_1 = ~(~4294967295u);
    global1 = array<vec3<i32>, 12>();
    let var_2 = vec4<bool>(false, ~(~(~var_1)) >= ~(~arg_0.b.c.a.x), false, arg_0.b.b);
    var var_3 = !all(select(select(!vec2<bool>(arg_0.b.b, arg_0.b.b), select(vec2<bool>(false, true), vec2<bool>(false, arg_0.b.b), vec2<bool>(arg_0.b.b, var_2.x)), vec2<bool>(var_2.x, false)), func_3(1i, arg_0.b.a), !func_3(1i, Struct_1(arg_0.b.a.a))));
    return var_2.xzw;
}

fn func_1() -> Struct_1 {
    let var_0 = 4294967295u;
    var var_1 = true & all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), func_2(Struct_4(true, Struct_2(global0.a, false, global2[_wgslsmith_index_u32(8711u, 22u)], global0.a, u_input.a)), vec3<f32>(709f, -1000f, -341f), global1[_wgslsmith_index_u32(43122u, 12u)]), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1353f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1605f * -1187f))), 776f));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -601f)));
    let var_4 = func_3(~5521i, global0.a);
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = -798f;
    global1 = array<vec3<i32>, 12>();
    var var_2 = vec2<f32>(-1564f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2216f - var_1) + var_1)) - var_1));
    let var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(abs(abs(abs(vec4<u32>(0u, u_input.b, 4294967295u, global0.a.a.x)))), u_input.a, _wgslsmith_div_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.a.x, u_input.b), min(vec2<u32>(var_0.a.x, var_0.a.x), vec2<u32>(35323u, 0u)), func_1().a.yx), abs(global0.a.a.zy)));
}

