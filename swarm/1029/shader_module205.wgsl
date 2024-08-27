struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<bool>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global1: array<Struct_5, 32>;

var<private> global2: Struct_2;

var<private> global3: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: bool, arg_3: vec3<f32>) -> vec2<u32> {
    global1 = array<Struct_5, 32>();
    return vec2<u32>(~(~(~1u)), abs(~reverseBits(49152u))) | reverseBits((firstTrailingBit(vec2<u32>(42917u, 12070u)) ^ vec2<u32>(1u, 1u)) << (_wgslsmith_div_vec2_u32(~vec2<u32>(1u, 31549u), reverseBits(vec2<u32>(34829u, 1u))) % vec2<u32>(32u)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2) -> vec3<f32> {
    global3 = array<vec2<bool>, 20>();
    var var_0 = vec3<bool>(true, true, any(global0.yxz));
    var var_1 = u_input.a.x;
    var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(-select(u_input.a.x, -2147483647i, var_0.x), _wgslsmith_mod_i32(-2147483647i, -u_input.a.x)) >> (~reverseBits(func_3(vec4<f32>(arg_1.a.x, -719f, global2.a.x, global2.a.x), u_input.a.x, true, vec3<f32>(2741f, 650f, -1000f))) % vec2<u32>(32u)), u_input.a.zx);
    var var_2 = -vec3<i32>(u_input.a.x, u_input.a.x, -25514i);
    return _wgslsmith_f_op_vec3_f32(abs(arg_1.a));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> vec4<bool> {
    global2 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(floor(global2.a.x)), _wgslsmith_f_op_f32(step(-813f, arg_0.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-425f, 817f, global2.a.x)) + _wgslsmith_f_op_vec3_f32(func_2(vec4<u32>(1u, 23433u, 4294967295u, 30773u), Struct_2(global2.a))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -1457f, arg_0.x), vec3<f32>(-1953f, global2.a.x, 1000f)), _wgslsmith_f_op_vec3_f32(-global2.a)))));
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(max(global2.a, _wgslsmith_f_op_vec3_f32(abs(global2.a))))), Struct_1(false, -186f, u_input.a.x, _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1062f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a.x, -120f) * -960f) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) + -406f)), select(select(select(!vec4<bool>(global0.x, arg_1, false, true), vec4<bool>(arg_1, arg_1, arg_1, global0.x), !vec4<bool>(arg_1, true, true, false)), select(!vec4<bool>(global0.x, true, global0.x, arg_1), !vec4<bool>(arg_1, false, false, arg_1), vec4<bool>(true, arg_1, false, global0.x)), vec4<bool>(true, any(global3[_wgslsmith_index_u32(4294967295u, 20u)]), true, global0.x & true)), !select(vec4<bool>(global0.x, arg_1, true, arg_1), !vec4<bool>(false, false, arg_1, false), true), true || any(!vec4<bool>(true, arg_1, global0.x, global0.x))), ~countOneBits(abs(vec2<u32>(47267u, 8635u))), _wgslsmith_div_vec3_i32(countOneBits(u_input.a.yzy) | vec3<i32>(u_input.a.x, 28021i, u_input.a.x), vec3<i32>(0i, u_input.a.x, 34121i)) << (vec3<u32>(~(~1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(29175u, 18963u, 3574u, 42041u), min(vec4<u32>(23708u, 8252u, 1u, 0u), vec4<u32>(0u, 2867u, 1u, 40817u))), 1u) % vec3<u32>(32u)));
    let var_1 = Struct_4(var_0.b.e, select(vec3<bool>(any(var_0.c.yyx), true, true), select(select(vec3<bool>(arg_1, var_0.b.a, arg_1), !var_0.c.yyx, all(vec2<bool>(global0.x, global0.x))), select(!vec3<bool>(var_0.c.x, var_0.b.a, false), vec3<bool>(arg_1, global0.x, false), select(true, global0.x, var_0.b.e)), arg_1), global0.x), Struct_1(!global0.x, global2.a.x, var_0.e.x, _wgslsmith_f_op_f32(f32(-1f) * -864f), !all(var_0.c.zzy)));
    let var_2 = ~1u;
    let var_3 = var_1;
    return vec4<bool>(!global0.x, all(var_0.c.xzx), !arg_1, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2, 26497u) & vec2<u32>(0u, 88025u), vec2<u32>(var_2, 4294967295u)), var_2) != firstLeadingBit(min(1u, 92945u) >> (firstLeadingBit(var_2) % 32u)));
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> Struct_5 {
    var var_0 = -vec3<i32>(reverseBits(-17291i), arg_2.c | ~max(arg_2.c, 0i), 5733i);
    let var_1 = -2147483647i;
    var var_2 = _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32((firstTrailingBit(vec3<u32>(4943u, 86664u, 15098u)) | ~vec3<u32>(4294967295u, 0u, 17252u)) & _wgslsmith_clamp_vec3_u32(vec3<u32>(48885u, 0u, 4294967295u), vec3<u32>(16891u, 10217u, 0u), ~vec3<u32>(53358u, 59552u, 9573u)), vec3<u32>(1u, 1u, 1u)), max(vec3<u32>(~firstTrailingBit(63730u), countOneBits(~23098u), ~(1u >> (0u % 32u))), ~(~vec3<u32>(1u, 1u, 1u))));
    global2 = Struct_2(global2.a);
    global3 = array<vec2<bool>, 20>();
    return Struct_5(arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(u_input.a);
    let var_1 = func_4(global0.x, _wgslsmith_f_op_f32(-global2.a.x), Struct_1(any(select(!vec4<bool>(global0.x, global0.x, global0.x, global0.x), func_1(vec2<f32>(global2.a.x, global2.a.x), global0.x), all(global0.wxw))), -1318f, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a.yw, vec2<i32>(var_0.x, u_input.a.x)) << (reverseBits(vec2<u32>(69046u, 1u)) % vec2<u32>(32u)), vec2<i32>(-1i) * -u_input.a.xz), -1111f, false));
    global3 = array<vec2<bool>, 20>();
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(global2.a - vec3<f32>(global2.a.x, global2.a.x, global2.a.x)), global2.a))))), var_1.a, vec4<bool>(var_1.a.a, !select(true, false, true), global0.x, false), vec2<u32>(1u, 1u), u_input.a.xxz >> (~abs(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 11964u, 35663u), vec3<u32>(93121u, 5178u, 0u))) % vec3<u32>(32u)));
    global3 = array<vec2<bool>, 20>();
    let var_3 = -(u_input.a.x & u_input.a.x);
    global0 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_0, 0u, _wgslsmith_f_op_f32(ceil(2004f)), var_0.x);
}

