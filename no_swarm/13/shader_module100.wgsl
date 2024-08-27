struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: i32 = -18619i;

var<private> global2: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(Struct_1(1u, true, 71945u), -573f), Struct_2(Struct_1(47987u, true, 18742u), -1015f), Struct_2(Struct_1(0u, false, 19017u), -623f), Struct_2(Struct_1(9381u, false, 4294967295u), 174f), Struct_2(Struct_1(4294967295u, true, 0u), 159f), Struct_2(Struct_1(1u, true, 55934u), -896f), Struct_2(Struct_1(0u, true, 59394u), -1343f), Struct_2(Struct_1(4294967295u, false, 1u), -785f), Struct_2(Struct_1(0u, true, 1u), 428f), Struct_2(Struct_1(35253u, true, 74060u), -1907f), Struct_2(Struct_1(4294967295u, false, 8873u), 1027f), Struct_2(Struct_1(0u, false, 15669u), 201f), Struct_2(Struct_1(0u, false, 28248u), -1106f), Struct_2(Struct_1(4294967295u, true, 0u), 1165f), Struct_2(Struct_1(0u, false, 0u), -1080f), Struct_2(Struct_1(3672u, false, 21224u), -518f), Struct_2(Struct_1(47970u, true, 6430u), 852f), Struct_2(Struct_1(0u, true, 119747u), -2124f), Struct_2(Struct_1(56058u, false, 27746u), 1692f), Struct_2(Struct_1(26708u, false, 4294967295u), -655f), Struct_2(Struct_1(14630u, true, 39770u), -182f), Struct_2(Struct_1(1u, false, 0u), -678f), Struct_2(Struct_1(27150u, false, 0u), -1000f), Struct_2(Struct_1(0u, true, 1u), -448f), Struct_2(Struct_1(66826u, false, 0u), -302f), Struct_2(Struct_1(26093u, true, 42806u), -162f), Struct_2(Struct_1(80831u, false, 37156u), -935f), Struct_2(Struct_1(41290u, false, 22630u), -1928f), Struct_2(Struct_1(35540u, false, 48375u), 1804f));

var<private> global3: f32 = 1000f;

var<private> global4: u32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2() -> bool {
    global3 = -662f;
    var var_0 = 6327u;
    let var_1 = Struct_1(1u, true, ~(~_wgslsmith_add_u32(u_input.b, firstTrailingBit(1u))));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -498f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1088f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1710f, 535f) - vec2<f32>(636f, 1138f)))))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(713f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec2<f32>(_wgslsmith_f_op_f32(1286f - -552f), -1514f)))));
    let var_3 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.x, var_2.x))) * _wgslsmith_f_op_f32(step(-815f, _wgslsmith_f_op_f32(-var_2.x)))) > _wgslsmith_f_op_f32(min(174f, 1245f)));
    return all(!(!select(vec4<bool>(false, false, var_3, var_1.b), vec4<bool>(false, var_3, var_3, false), !vec4<bool>(true, true, var_3, var_3))));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: vec3<f32>) -> bool {
    global0 = 217f;
    var var_0 = _wgslsmith_div_vec2_u32(abs(vec2<u32>(97710u, ~48213u & _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a, u_input.b, 1u, 1u), vec4<u32>(28899u, 2280u, arg_2.a, 0u)))), ~_wgslsmith_mod_vec2_u32(firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.c, 30750u), vec2<u32>(arg_2.c, u_input.b))), vec2<u32>(0u, u_input.b) >> (_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 1157u), vec2<u32>(12301u, arg_2.c)) % vec2<u32>(32u))));
    let var_1 = select(select(vec2<bool>(all(vec3<bool>(arg_2.b, arg_2.b, arg_2.b)), true), vec2<bool>(true, true), !(all(vec4<bool>(arg_2.b, arg_2.b, arg_2.b, arg_2.b)) && any(vec3<bool>(arg_2.b, false, false)))), select(vec2<bool>(false, true), vec2<bool>(arg_2.b, arg_2.b), true), select(vec2<bool>(!arg_2.b, false), !select(select(vec2<bool>(arg_2.b, true), vec2<bool>(true, arg_2.b), arg_2.b), vec2<bool>(arg_2.b, arg_2.b), vec2<bool>(false, arg_2.b)), true));
    let var_2 = -(~_wgslsmith_mod_vec4_i32(-u_input.a, vec4<i32>(-1i) * -u_input.a));
    let var_3 = vec4<u32>(~5635u, var_0.x, arg_2.a, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 20203u) >> (vec2<u32>(var_0.x, 4294967295u) % vec2<u32>(32u)), vec2<u32>(u_input.b, arg_2.a)), firstTrailingBit(vec2<u32>(var_0.x, var_0.x)), ~vec2<u32>(38056u, var_0.x)), ~vec2<u32>(0u, u_input.b)));
    return arg_2.b;
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = func_2();
    var var_1 = vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(736f, -566f)), _wgslsmith_f_op_f32(-1789f * -2011f), arg_0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(395f)))) + -377f));
    var_0 = all(vec4<bool>(true, any(!vec4<bool>(true, false, false, arg_0.b)), func_3(_wgslsmith_f_op_f32(select(1000f, 1365f, arg_0.b)), 2798f, Struct_1(arg_0.a, arg_0.b, arg_0.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, 874f) + vec3<f32>(1126f, 1186f, var_1.x))) & arg_0.b, !(!all(vec2<bool>(arg_0.b, arg_0.b)))));
    var_0 = true;
    let var_2 = !(!vec4<bool>(!func_2(), -604f <= _wgslsmith_f_op_f32(sign(1545f)), select(-495f <= var_1.x, true, true), !all(vec4<bool>(false, false, arg_0.b, true))));
    return _wgslsmith_f_op_f32(1f + -1313f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(u_input.b, false, u_input.b))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * -184f)))) + 1f));
    global2 = array<Struct_2, 29>();
    global2 = array<Struct_2, 29>();
    global3 = _wgslsmith_f_op_f32(max(604f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2165f)) + _wgslsmith_f_op_f32(func_1(Struct_1(u_input.b, false, 0u)))))))));
    let var_0 = Struct_2(Struct_1(u_input.b, false, 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(-1200f + _wgslsmith_f_op_f32(sign(-500f))), false))));
    var var_1 = _wgslsmith_div_vec4_i32(-max(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-1i, -1i, u_input.a.x, -1i)), countOneBits(u_input.a)) << (select(vec4<u32>(var_0.a.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, 15045u), vec3<u32>(4294967295u, 581u, u_input.b)), 37642u & var_0.a.a, firstLeadingBit(u_input.b)), vec4<u32>(_wgslsmith_div_u32(0u, 4294967295u), u_input.b, u_input.b, firstLeadingBit(4294967295u)), !(u_input.a.x != u_input.a.x)) % vec4<u32>(32u)), vec4<i32>(~select(firstLeadingBit(-9418i), 1i, true), reverseBits(-1i), -u_input.a.x, u_input.a.x | u_input.a.x));
    var var_2 = countOneBits(_wgslsmith_mult_i32(var_1.x, var_1.x));
    var_2 = -27259i;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(var_0.b + 1066f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(Struct_1(abs(0u), true, var_0.a.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.b)) + var_3), _wgslsmith_f_op_f32(-1165f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -769f), var_0.b, var_0.a.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(939f, 2142f), _wgslsmith_f_op_f32(-var_0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1940f), _wgslsmith_f_op_f32(-var_3))))));
}

