struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: f32,
    d: u32,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: bool,
    d: u32,
    e: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec3<u32>, 27> = array<vec3<u32>, 27>(vec3<u32>(0u, 94900u, 1u), vec3<u32>(4294967295u, 1u, 7163u), vec3<u32>(6809u, 4294967295u, 86065u), vec3<u32>(1u, 1u, 444u), vec3<u32>(17063u, 0u, 4294967295u), vec3<u32>(28556u, 0u, 4294967295u), vec3<u32>(1u, 4294967295u, 124455u), vec3<u32>(0u, 52605u, 59354u), vec3<u32>(68030u, 1u, 45533u), vec3<u32>(0u, 48228u, 7803u), vec3<u32>(1u, 4294967295u, 27988u), vec3<u32>(1350u, 1u, 0u), vec3<u32>(4294967295u, 4294967295u, 19487u), vec3<u32>(42466u, 4294967295u, 4294967295u), vec3<u32>(1u, 1u, 12008u), vec3<u32>(31623u, 52508u, 47599u), vec3<u32>(33063u, 1u, 26069u), vec3<u32>(4294967295u, 4294967295u, 54006u), vec3<u32>(27340u, 0u, 111760u), vec3<u32>(4294967295u, 16716u, 110643u), vec3<u32>(32332u, 4294967295u, 1u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(0u, 1u, 0u), vec3<u32>(1u, 71567u, 2226u), vec3<u32>(23508u, 4294967295u, 43246u), vec3<u32>(8412u, 5316u, 26802u), vec3<u32>(10736u, 22786u, 134546u));

var<private> global2: i32 = -26467i;

var<private> global3: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<bool>(false, true), vec2<f32>(1157f, -575f)), Struct_1(vec2<bool>(false, true), vec2<f32>(321f, -476f)), Struct_1(vec2<bool>(true, true), vec2<f32>(589f, -763f)), Struct_1(vec2<bool>(false, true), vec2<f32>(2980f, -702f)), Struct_1(vec2<bool>(true, true), vec2<f32>(-814f, 110f)), Struct_1(vec2<bool>(true, false), vec2<f32>(-151f, -1205f)), Struct_1(vec2<bool>(true, false), vec2<f32>(1273f, 293f)), Struct_1(vec2<bool>(false, false), vec2<f32>(1271f, 997f)), Struct_1(vec2<bool>(true, true), vec2<f32>(-2058f, -666f)), Struct_1(vec2<bool>(false, false), vec2<f32>(1292f, 509f)), Struct_1(vec2<bool>(false, false), vec2<f32>(-318f, 1308f)), Struct_1(vec2<bool>(true, false), vec2<f32>(864f, -2019f)), Struct_1(vec2<bool>(true, false), vec2<f32>(1519f, 1426f)), Struct_1(vec2<bool>(false, false), vec2<f32>(-1304f, 1000f)), Struct_1(vec2<bool>(false, false), vec2<f32>(-807f, 1414f)), Struct_1(vec2<bool>(true, true), vec2<f32>(1000f, 1000f)), Struct_1(vec2<bool>(false, false), vec2<f32>(-296f, 885f)), Struct_1(vec2<bool>(true, false), vec2<f32>(447f, -721f)), Struct_1(vec2<bool>(true, true), vec2<f32>(1086f, -580f)), Struct_1(vec2<bool>(false, true), vec2<f32>(-137f, -1000f)), Struct_1(vec2<bool>(false, false), vec2<f32>(898f, 1000f)), Struct_1(vec2<bool>(false, false), vec2<f32>(-519f, 691f)));

var<private> global4: array<Struct_1, 25>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: i32) -> i32 {
    let var_0 = firstTrailingBit(vec3<i32>(global0.x, ~(-_wgslsmith_div_i32(global0.x, -65705i)), global0.x));
    let var_1 = true;
    let var_2 = arg_1;
    global3 = array<Struct_1, 22>();
    global4 = array<Struct_1, 25>();
    return 0i;
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: Struct_3) -> f32 {
    global1 = array<vec3<u32>, 27>();
    global4 = array<Struct_1, 25>();
    var var_0 = u_input.c.ww;
    let var_1 = ~(~(firstLeadingBit(var_0.x) ^ 0u)) | min(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 41063u, 4294967295u, 0u), vec4<u32>(u_input.b.x, 40977u, arg_3.d, 2516u), u_input.c), ~vec4<u32>(25091u, 0u, 37565u, 0u)) | 0u, 0u);
    var var_2 = _wgslsmith_clamp_u32(63321u, _wgslsmith_dot_vec2_u32(~firstLeadingBit(select(vec2<u32>(0u, var_0.x), u_input.e.xy, arg_3.a)), countOneBits(firstLeadingBit(u_input.c.yx) >> (vec2<u32>(arg_3.b, arg_3.d) % vec2<u32>(32u)))), 4294967295u);
    return _wgslsmith_f_op_f32(abs(arg_1.c));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: f32, arg_3: vec2<u32>) -> Struct_4 {
    return Struct_4(-22450i, select(u_input.a.zxw, vec3<i32>(min(firstLeadingBit(2147483647i), -u_input.a.x), select(39609i, -1i, arg_1.x) & -arg_0, u_input.a.x), !select(arg_1, vec3<bool>(arg_1.x, true, arg_1.x), arg_1)), arg_1.x, 1u, Struct_3(true && any(!vec2<bool>(true, arg_1.x)), 86502u, _wgslsmith_f_op_f32(func_3(firstLeadingBit(arg_0), Struct_3(all(vec4<bool>(false, true, true, arg_1.x)), 0u, _wgslsmith_f_op_f32(-arg_2), 4294967295u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-115f, 1218f)), vec2<f32>(arg_2, -1000f), true)), Struct_3(all(vec4<bool>(true, true, arg_1.x, arg_1.x)), 31875u, _wgslsmith_f_op_f32(-arg_2), 0u))), firstTrailingBit(arg_3.x) | _wgslsmith_dot_vec4_u32(u_input.b, ~u_input.c)));
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    return Struct_2(vec3<u32>(~_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.e.x, 1u, u_input.d), ~u_input.b.x), u_input.b.x, ~_wgslsmith_clamp_u32(u_input.c.x, _wgslsmith_mod_u32(0u, arg_0.e.b), arg_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -2147483647i << (0u % 32u);
    global2 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(global0.zx, vec2<i32>(firstTrailingBit(_wgslsmith_add_i32(u_input.a.x, u_input.a.x)), 0i)), u_input.a.x);
    let var_0 = Struct_2(u_input.b.www);
    global0 = reverseBits(vec4<i32>(~u_input.a.x & min(-2941i, global0.x), ~(~global0.x), -(-48758i | u_input.a.x), global0.x) ^ u_input.a);
    let var_1 = func_4(func_2(_wgslsmith_dot_vec3_i32(u_input.a.xwy, vec3<i32>(func_1(var_0.a, 1352f, 7224i), -29314i, _wgslsmith_mod_i32(-10733i, u_input.a.x))), select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, 15422i >= u_input.a.x), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(step(-358f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-587f)) + 1f))), _wgslsmith_mult_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.e.x, 27173u), var_0.a.zz), var_0.a.zy)));
    global4 = array<Struct_1, 25>();
    global1 = array<vec3<u32>, 27>();
    global3 = array<Struct_1, 22>();
    let var_2 = func_2(_wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(u_input.a >> (u_input.c % vec4<u32>(32u)), vec4<i32>(u_input.a.x, 8520i, global0.x, u_input.a.x) & u_input.a), abs(abs(u_input.a))), vec3<bool>(all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), false)), !(2147483647i <= ~global0.x), true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(333f * -425f)))))), ~max(u_input.e.xy, u_input.c.zy)).e;
    let x = u_input.a;
    s_output = StorageBuffer(0u >> (_wgslsmith_div_u32(_wgslsmith_clamp_u32(var_2.b, 83315u, 4294967295u) ^ countOneBits(93784u), 21805u) % 32u), countOneBits(~u_input.c), ~vec2<i32>(u_input.a.x | ~u_input.a.x, global0.x));
}

