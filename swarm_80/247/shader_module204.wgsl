struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-890f, 314f, -249f, 851f);

var<private> global1: f32;

var<private> global2: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(67502u), Struct_2(1u), Struct_2(52064u), Struct_2(66747u), Struct_2(4294967295u), Struct_2(0u), Struct_2(4294967295u), Struct_2(34170u), Struct_2(7450u), Struct_2(4294967295u), Struct_2(4294967295u), Struct_2(4294967295u), Struct_2(21952u), Struct_2(1u), Struct_2(68030u), Struct_2(4294967295u), Struct_2(4294967295u), Struct_2(87462u), Struct_2(21034u), Struct_2(0u), Struct_2(96950u), Struct_2(1u), Struct_2(0u), Struct_2(86453u), Struct_2(38580u), Struct_2(0u), Struct_2(1u), Struct_2(17512u), Struct_2(1u), Struct_2(49740u));

var<private> global3: array<Struct_1, 32>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: bool, arg_3: Struct_5) -> vec4<f32> {
    global3 = array<Struct_1, 32>();
    global3 = array<Struct_1, 32>();
    var var_0 = arg_3;
    let var_1 = ~u_input.a;
    var var_2 = arg_2;
    return vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_3.a.a.x)), -1177f, -1388f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1644f + arg_3.a.a.x) * _wgslsmith_f_op_f32(trunc(arg_3.a.a.x)))))));
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    let var_0 = true;
    var var_1 = true;
    global0 = _wgslsmith_f_op_vec4_f32(func_3(select(var_0, true, true), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), select(vec2<u32>(18222u, 31319u), vec2<u32>(16269u, 69234u), true))), _wgslsmith_dot_vec3_i32(~countOneBits(vec3<i32>(u_input.a, u_input.a, u_input.a)), ~(vec3<i32>(2147483647i, 0i, -14074i) & vec3<i32>(1i, u_input.a, -33090i))) > reverseBits(u_input.a), Struct_5(Struct_1(global0.xyz, _wgslsmith_dot_vec4_u32(vec4<u32>(20113u, 34512u, 0u, 0u), vec4<u32>(4294967295u, 4294967295u, 10169u, 0u)) & ~0u))));
    var var_2 = arg_0.x;
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(497f, global0.x, -824f, global0.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, 2020f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))))), arg_0.x));
    return ~min(1u, 24095u);
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_mod_u32(firstTrailingBit(abs(43544u)) ^ min(~func_2(vec4<bool>(false, true, true, false)), 1u), firstLeadingBit(firstTrailingBit(1u)));
    let var_1 = global0.yw;
    let var_2 = vec2<i32>(2147483647i, 0i);
    var var_3 = var_2.x;
    var_3 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~countOneBits(vec4<i32>(var_2.x, var_2.x, -1i, 2851i) ^ vec4<i32>(68118i, u_input.a, -1i, 0i)), (_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.x, u_input.a, var_2.x, u_input.a), vec4<i32>(2147483647i, var_2.x, u_input.a, 11487i)) ^ max(vec4<i32>(1i, 1i, var_2.x, -51020i), vec4<i32>(var_2.x, 0i, var_2.x, -2147483647i))) >> ((_wgslsmith_sub_vec4_u32(vec4<u32>(4167u, var_0, var_0, var_0), vec4<u32>(var_0, 0u, var_0, var_0)) & (vec4<u32>(var_0, 0u, 1u, var_0) & vec4<u32>(53767u, var_0, var_0, 94166u))) % vec4<u32>(32u))), var_2.x);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2582f;
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(abs(-max(vec4<i32>(u_input.a, u_input.a, u_input.a, -40619i), vec4<i32>(0i, u_input.a, u_input.a, -1i))), -(vec4<i32>(-1i) * -vec4<i32>(-41098i, u_input.a, 1i, 2147483647i))), ~(-1i));
    let var_2 = firstLeadingBit(_wgslsmith_mod_u32(88512u, func_1()));
    var_0 = -1306f;
    global2 = array<Struct_2, 30>();
    var var_3 = true && !(0i >= u_input.a);
    let var_4 = Struct_5(global3[_wgslsmith_index_u32(select(_wgslsmith_dot_vec4_u32(abs(countOneBits(vec4<u32>(37598u, var_2, 55036u, 12842u))), ~select(vec4<u32>(var_2, var_2, var_2, var_2), vec4<u32>(24121u, 25613u, 23238u, 1u), false)), var_2, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 32607i), vec2<i32>(u_input.a, 26463i)) <= countOneBits(_wgslsmith_sub_i32(u_input.a, u_input.a))), 32u)]);
    let x = u_input.a;
    s_output = StorageBuffer(319f, _wgslsmith_sub_vec3_i32(max(vec3<i32>(-u_input.a, -1i, u_input.a), firstLeadingBit(-vec3<i32>(77001i, u_input.a, u_input.a))), abs(vec3<i32>(u_input.a, u_input.a, u_input.a)) & select(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(11079i, u_input.a, u_input.a), vec3<i32>(-1i, u_input.a, 1i)), select(vec3<i32>(51i, u_input.a, 1i), vec3<i32>(2147483647i, u_input.a, u_input.a), true), select(false, true, false))), firstLeadingBit(vec3<u32>(min(~var_2, var_4.a.b), 24536u >> (select(1u, 84340u, true) % 32u), 7735u)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(1172f, var_4.a.a.x), 1339f, var_4.a.a.x, 982f))), vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1223f)))), 390f, var_4.a.a.x));
}

