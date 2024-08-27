struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(59718i, -46953i), vec2<i32>(-1i, -11139i), -297f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> f32 {
    global0 = array<Struct_1, 32>();
    global1 = Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(firstLeadingBit(_wgslsmith_clamp_vec2_i32(global1.a, global1.a, global1.b)), global1.a), vec2<i32>(-36116i, _wgslsmith_sub_i32(i32(-1i) * -35512i, firstTrailingBit(global1.b.x)))), vec2<i32>(global1.a.x, _wgslsmith_add_i32(0i, _wgslsmith_mult_i32(global1.a.x, global1.b.x)) >> (~1u % 32u)), 690f);
    global1 = Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(global1.b.x, global1.b.x), abs(global1.b), global1.b), global1.b, 138f);
    var var_0 = any(select(vec3<bool>(all(vec2<bool>(true, true)), true, 1u <= _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), vec3<bool>((u_input.a.x >> (1u % 32u)) >= ~0u, u_input.a.x > select(u_input.a.x, 38540u, true), u_input.a.x == u_input.a.x), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~((26188u & u_input.a.x) & ~4294967295u)), abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 332u, 1u), u_input.a.zwz))), 32u)];
    return -1000f;
}

fn func_2() -> bool {
    var var_0 = Struct_1(abs(vec2<i32>(-17166i, abs(~(-28978i)))), min(global1.b, _wgslsmith_mult_vec2_i32(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(global1.a.x, -10268i), global1.b)), global1.a)), global1.c);
    var var_1 = vec4<f32>(var_0.c, _wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.c, _wgslsmith_f_op_f32(-1516f + global1.c))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1719f)) - -369f)), _wgslsmith_f_op_f32(func_3())), -590f);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-840f, var_0.c, global1.c, var_1.x)))))));
    global0 = array<Struct_1, 32>();
    global1 = global0[_wgslsmith_index_u32(4294967295u, 32u)];
    return any(vec4<bool>(true, true, true, (_wgslsmith_f_op_f32(select(var_2.x, var_1.x, true)) < var_2.x) & true));
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = vec3<bool>(true, !func_2() && true, arg_0.b.x < global1.a.x);
    global1 = global0[_wgslsmith_index_u32(u_input.a.x, 32u)];
    let var_1 = arg_0;
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~65765u), 32u)];
    let var_2 = _wgslsmith_mod_vec3_u32(min(reverseBits(select(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.a.x), vec3<u32>(9534u, u_input.a.x, 4374u)), vec3<u32>(29296u, 1u, u_input.a.x), var_0.x)), vec3<u32>(1u, ~u_input.a.x, reverseBits(10372u))), min(~vec3<u32>(u_input.a.x, 1u, 1u), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), u_input.a.zy), 0u, ~26997u) >> ((firstLeadingBit(vec3<u32>(20142u, u_input.a.x, 0u)) ^ u_input.a.xzw) % vec3<u32>(32u))));
    return Struct_2(vec4<bool>(!(var_0.x || true), true, var_0.x, func_2()), countOneBits(_wgslsmith_mod_i32(_wgslsmith_mult_i32(0i, 0i), var_1.b.x)), abs(~11055u));
}

fn func_4(arg_0: Struct_2) -> i32 {
    let var_0 = select(!all(arg_0.a.yz) & !func_2(), func_2(), arg_0.a.x);
    let var_1 = 0i;
    global1 = global0[_wgslsmith_index_u32(arg_0.c, 32u)];
    let var_2 = ~(~u_input.a.zyx) | vec3<u32>(36512u, ~(~arg_0.c << (19092u % 32u)), 1u);
    global1 = Struct_1(vec2<i32>(global1.b.x, _wgslsmith_sub_i32(-2147483647i, global1.b.x)), _wgslsmith_clamp_vec2_i32(vec2<i32>(23587i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.b.x, arg_0.b, -2147483647i), vec3<i32>(-19582i, var_1, -26174i)), 1i)), select(-global1.b, firstTrailingBit(_wgslsmith_mult_vec2_i32(global1.b, vec2<i32>(0i, 0i))), !vec2<bool>(arg_0.a.x, arg_0.a.x)), global1.b), 588f);
    return -abs(~var_1);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 32>();
    let var_0 = -func_4(func_1(Struct_1(vec2<i32>(32964i, 0i), -vec2<i32>(global1.b.x, 0i), _wgslsmith_div_f32(333f, 170f))));
    let var_1 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, 11785u, 1u), firstTrailingBit(_wgslsmith_sub_vec4_u32(~u_input.a, vec4<u32>(0u, 1233u, 34364u, 0u))), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a << (vec4<u32>(u_input.a.x, u_input.a.x, 7081u, u_input.a.x) % vec4<u32>(32u)), vec4<bool>(true, true, true, true)), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 69155u, u_input.a.x, 1u), vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 4294967295u), u_input.a), vec4<u32>(33559u, 30934u, u_input.a.x, u_input.a.x), func_2()), vec4<u32>(_wgslsmith_mod_u32(51714u, u_input.a.x), 17584u, u_input.a.x ^ u_input.a.x, ~13920u)));
    let var_2 = true;
    var var_3 = Struct_2(vec4<bool>(1i > firstTrailingBit(firstTrailingBit(55230i)), true, -var_0 <= ~func_1(global0[_wgslsmith_index_u32(43357u, 32u)]).b, false), 24778i, abs(_wgslsmith_dot_vec2_u32(var_1.yy, vec2<u32>(4294967295u, var_1.x))) | _wgslsmith_add_u32(17615u, firstLeadingBit(u_input.a.x & u_input.a.x)));
    let var_4 = global0[_wgslsmith_index_u32(4294967295u, 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(36404i, var_0, 2147483647i), vec3<i32>(var_3.b, var_0, 1i)), vec3<i32>(var_0, global1.b.x, _wgslsmith_clamp_i32(global1.a.x, -1577i, 18442i)) | reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, var_4.b.x, var_3.b), vec3<i32>(-40701i, var_4.a.x, var_0))), var_2), _wgslsmith_f_op_f32(-var_4.c), _wgslsmith_sub_u32(var_1.x, var_3.c), ~(firstLeadingBit(var_1.x) >> (_wgslsmith_clamp_u32(var_1.x, max(var_1.x, var_3.c), _wgslsmith_mult_u32(u_input.a.x, 1u)) % 32u)));
}

