struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<bool>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: i32,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec2<f32>, 7>;

var<private> global2: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(-487f, true, -908i), Struct_3(-136f, false, -8922i), Struct_3(-407f, false, -32796i), Struct_3(1697f, true, i32(-2147483648)), Struct_3(184f, true, -7357i), Struct_3(-134f, true, 7748i), Struct_3(-728f, false, 24126i), Struct_3(1000f, true, -29025i), Struct_3(345f, true, -1i), Struct_3(2404f, false, 0i), Struct_3(-886f, false, -24774i), Struct_3(197f, false, 2147483647i), Struct_3(1344f, false, -62546i), Struct_3(972f, true, -31621i), Struct_3(512f, false, 25827i), Struct_3(1445f, false, 0i), Struct_3(233f, true, 1097i), Struct_3(875f, true, 7863i), Struct_3(-1087f, false, 10691i), Struct_3(-1000f, false, i32(-2147483648)), Struct_3(785f, true, 2147483647i), Struct_3(-457f, true, 18346i), Struct_3(-193f, true, -16577i), Struct_3(1267f, true, -85647i), Struct_3(-608f, false, 0i), Struct_3(1789f, true, 51202i), Struct_3(1451f, false, i32(-2147483648)));

var<private> global3: Struct_3 = Struct_3(401f, false, 3059i);

var<private> global4: array<i32, 19>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2() -> u32 {
    global4 = array<i32, 19>();
    global0 = ~(~u_input.d.yyz);
    var var_0 = !(!vec4<bool>(_wgslsmith_clamp_u32(4294967295u, global0.x, 52979u) != firstTrailingBit(global0.x), false, global3.b, global3.b));
    global2 = array<Struct_3, 27>();
    let var_1 = -vec3<i32>(u_input.a, -global3.c, -_wgslsmith_mult_i32(abs(global3.c), 2147483647i | global4[_wgslsmith_index_u32(u_input.b.x, 19u)]));
    return 0u & ~(~global0.x);
}

fn func_3() -> bool {
    let var_0 = ~abs(u_input.b.zxx) | reverseBits(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, global0.x, 0u), u_input.d.ywz) << (vec3<u32>(17286u, 38663u, 0u) % vec3<u32>(32u)), ~vec3<u32>(u_input.d.x, 49831u, 4294967295u)));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -286f), all(!(!(!vec3<bool>(global3.b, true, global3.b)))), abs(min(global3.c, ~max(4323i, u_input.a))));
    var var_2 = ~(~global0.x);
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, 32971u), 27u)];
    let var_4 = select(!(!select(select(vec2<bool>(true, false), vec2<bool>(global3.b, false), vec2<bool>(true, true)), vec2<bool>(var_3.b, true), vec2<bool>(true, global3.b))), select(vec2<bool>(true, true), select(select(select(vec2<bool>(false, false), vec2<bool>(var_3.b, false), global3.b), !vec2<bool>(true, var_3.b), vec2<bool>(global3.b, false)), !vec2<bool>(var_3.b, false), (global3.b | global3.b) && (false == global3.b)), !select(select(vec2<bool>(var_3.b, global3.b), vec2<bool>(false, var_1.b), vec2<bool>(var_3.b, false)), vec2<bool>(true, true), vec2<bool>(var_1.b, false))), false);
    return all(!(!vec3<bool>(!var_4.x, var_1.b, !var_4.x)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: i32, arg_3: u32) -> vec3<bool> {
    let var_0 = global0.x;
    var var_1 = vec4<u32>(24292u, ~func_2(), ~4294967295u, 4294967295u);
    global2 = array<Struct_3, 27>();
    var var_2 = any(select(select(select(vec3<bool>(global3.b, false, global3.b), !vec3<bool>(global3.b, true, false), global0.x != 68246u), !vec3<bool>(global3.b, false, false), vec3<bool>(func_3(), true, global3.b)), !(!select(vec3<bool>(false, global3.b, global3.b), vec3<bool>(global3.b, global3.b, false), vec3<bool>(false, true, global3.b))), true));
    global0 = var_1.wxx;
    return vec3<bool>(any(!(!(!vec4<bool>(global3.b, global3.b, global3.b, false)))), any(vec3<bool>(global3.b, any(select(vec2<bool>(false, global3.b), vec2<bool>(global3.b, global3.b), false)), !global3.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-106f, global3.a, global3.b))))) > -348f);
}

fn func_4(arg_0: bool, arg_1: Struct_4) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-143f - _wgslsmith_div_f32(-351f, arg_1.e.a)), -1000f, arg_0));
    global2 = array<Struct_3, 27>();
    global4 = array<i32, 19>();
    global3 = global2[_wgslsmith_index_u32(~func_2(), 27u)];
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a * _wgslsmith_f_op_f32(-global3.a)) * _wgslsmith_f_op_f32(step(arg_1.e.a, _wgslsmith_f_op_f32(f32(-1f) * -387f))))));
    return global4[_wgslsmith_index_u32(~15754u, 19u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global2[_wgslsmith_index_u32(1u, 27u)];
    var var_0 = ~(-((vec4<i32>(0i, global3.c, global4[_wgslsmith_index_u32(34290u, 19u)], u_input.a) >> (vec4<u32>(113788u, 16808u, 28636u, 1u) % vec4<u32>(32u))) << (u_input.b % vec4<u32>(32u)))) ^ vec4<i32>(-abs(_wgslsmith_clamp_i32(-2147483647i, u_input.a, -30094i)), 0i, global3.c << (~0u % 32u), -11482i);
    var_0 = vec4<i32>(-2147483647i, func_4(select(global3.b, global3.b, false), Struct_4(_wgslsmith_mult_u32(4294967295u, _wgslsmith_mod_u32(32783u, global0.x)), vec4<bool>(!global3.b, global3.b, global3.a <= 887f, all(vec3<bool>(true, global3.b, global3.b))), func_1(_wgslsmith_mod_vec2_u32(u_input.b.zx, global0.zy), -vec4<i32>(global3.c, 31271i, 1i, 1i), ~(-43882i), ~global0.x), Struct_1(select(false, global3.b, false), select(global3.b, true, true), vec3<bool>(false, global3.b, global3.b), var_0.x, ~vec2<u32>(1u, u_input.c)), Struct_3(global3.a, !global3.b, _wgslsmith_dot_vec3_i32(var_0.zwy, var_0.yxy)))), 0i, -global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.x << (~global0.x % 32u), 4294967295u), 19u)]);
    let var_1 = -924f;
    global4 = array<i32, 19>();
    var var_2 = _wgslsmith_f_op_f32(exp2(var_1));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_mult_vec3_u32(u_input.b.yyy, u_input.d.xzz), vec3<u32>(firstTrailingBit(u_input.b.x), 12304u, global0.x)));
}

