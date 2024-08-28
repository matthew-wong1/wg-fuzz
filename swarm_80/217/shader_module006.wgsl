struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: bool,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0u, 4294967295u);

var<private> global1: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec4<bool>(true, false, true, false), Struct_1(36783u, 1u)), Struct_2(vec4<bool>(false, true, true, false), Struct_1(4636u, 1u)), Struct_2(vec4<bool>(false, false, false, true), Struct_1(4294967295u, 1u)), Struct_2(vec4<bool>(true, true, true, true), Struct_1(1u, 124232u)), Struct_2(vec4<bool>(false, true, true, false), Struct_1(49994u, 9100u)), Struct_2(vec4<bool>(false, true, false, false), Struct_1(59153u, 4294967295u)), Struct_2(vec4<bool>(false, false, false, true), Struct_1(107218u, 4294967295u)), Struct_2(vec4<bool>(true, true, true, false), Struct_1(0u, 68952u)), Struct_2(vec4<bool>(true, true, true, true), Struct_1(1u, 10290u)), Struct_2(vec4<bool>(false, false, true, false), Struct_1(1u, 0u)), Struct_2(vec4<bool>(false, true, false, false), Struct_1(0u, 50900u)), Struct_2(vec4<bool>(false, false, true, false), Struct_1(1u, 4294967295u)), Struct_2(vec4<bool>(true, false, true, false), Struct_1(25851u, 56555u)), Struct_2(vec4<bool>(false, false, true, true), Struct_1(1u, 7806u)), Struct_2(vec4<bool>(false, false, true, false), Struct_1(0u, 4294967295u)), Struct_2(vec4<bool>(true, false, true, true), Struct_1(30319u, 4294967295u)), Struct_2(vec4<bool>(false, true, true, true), Struct_1(0u, 4294967295u)), Struct_2(vec4<bool>(true, true, true, false), Struct_1(54641u, 3409u)), Struct_2(vec4<bool>(false, true, true, false), Struct_1(1u, 0u)), Struct_2(vec4<bool>(false, true, false, true), Struct_1(1u, 64107u)), Struct_2(vec4<bool>(true, false, true, true), Struct_1(13624u, 1u)), Struct_2(vec4<bool>(false, false, false, true), Struct_1(4294967295u, 4294967295u)), Struct_2(vec4<bool>(false, false, true, false), Struct_1(23182u, 326u)), Struct_2(vec4<bool>(true, false, true, false), Struct_1(1u, 58669u)), Struct_2(vec4<bool>(true, true, true, false), Struct_1(1u, 7236u)), Struct_2(vec4<bool>(true, false, true, true), Struct_1(1u, 4294967295u)), Struct_2(vec4<bool>(false, false, true, true), Struct_1(105320u, 1u)));

var<private> global2: vec2<f32> = vec2<f32>(818f, 1864f);

var<private> global3: array<Struct_2, 12>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    return select(vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)) != _wgslsmith_f_op_f32(max(848f, global2.x)), arg_0.a.x, any(!select(vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, true), arg_0.a, arg_0.a.x)), false), select(select(vec4<bool>(arg_0.a.x, any(arg_0.a.yww), u_input.d > 4079i, false), arg_0.a, !arg_0.a), arg_0.a, any(select(select(vec2<bool>(arg_0.a.x, arg_0.a.x), arg_0.a.wx, vec2<bool>(arg_0.a.x, true)), select(vec2<bool>(false, arg_0.a.x), vec2<bool>(true, arg_0.a.x), arg_0.a.x), !arg_0.a.xx))), !select(select(arg_0.a, vec4<bool>(arg_0.a.x, arg_0.a.x, true, true), select(arg_0.a, arg_0.a, true)), !(!arg_0.a), vec4<bool>(global2.x >= -660f, true, all(vec4<bool>(true, arg_0.a.x, arg_0.a.x, arg_0.a.x)), all(vec2<bool>(arg_0.a.x, arg_0.a.x)))));
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1) -> Struct_3 {
    let var_0 = vec4<u32>(~(~34152u), ~(~0u), _wgslsmith_clamp_u32(17348u, ~(~(1u >> (u_input.b.x % 32u))), u_input.e), 0u);
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, arg_2.a), _wgslsmith_dot_vec3_u32(reverseBits(var_0.wyy), _wgslsmith_mult_vec3_u32(~var_0.zxw, vec3<u32>(_wgslsmith_sub_u32(arg_0, 0u), min(arg_1.d.b.b, arg_2.a), ~arg_1.d.b.b)))), 27u)];
    let var_2 = func_3(arg_1.d);
    global3 = array<Struct_2, 12>();
    global0 = Struct_1(4294967295u, var_1.b.a | ~_wgslsmith_clamp_u32(4294967295u, ~u_input.b.x, 54406u));
    return arg_1;
}

fn func_4(arg_0: Struct_3) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.a * arg_0.a), _wgslsmith_f_op_f32(-arg_0.a))))) * -2030f);
    global0 = func_2(u_input.b.x, arg_0, func_2(_wgslsmith_clamp_u32(global0.b, global0.a, ~(~u_input.e)), Struct_3(_wgslsmith_f_op_f32(-107f * _wgslsmith_f_op_f32(485f + 834f)), arg_0.b, arg_0.c, func_2(abs(14932u), func_2(0u, arg_0, arg_0.e), Struct_1(14499u, 15452u)).d, func_2(6195u, arg_0, Struct_1(u_input.e, global0.b)).d.b), func_2(~_wgslsmith_clamp_u32(u_input.b.x, u_input.c.x, 0u), func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, u_input.c.x), vec3<u32>(87630u, u_input.b.x, arg_0.d.b.b)), Struct_3(arg_0.a, arg_0.b, arg_0.c, global3[_wgslsmith_index_u32(u_input.c.x, 12u)], Struct_1(0u, arg_0.e.a)), Struct_1(u_input.c.x, 16720u)), Struct_1(_wgslsmith_div_u32(u_input.b.x, 31258u), 1u)).d.b).e).d.b;
    global1 = array<Struct_2, 27>();
    let var_1 = _wgslsmith_add_i32(-(~arg_0.b.x << (_wgslsmith_clamp_u32(1u, 30035u, arg_0.d.b.a >> (74068u % 32u)) % 32u)), i32(-1i) * -u_input.a.x);
    global1 = array<Struct_2, 27>();
    return _wgslsmith_add_i32(i32(-1i) * -51153i, 1i);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    let var_0 = vec2<i32>(u_input.d, u_input.a.x);
    var var_1 = arg_1;
    global3 = array<Struct_2, 12>();
    var var_2 = arg_2;
    var var_3 = Struct_3(global2.x, vec3<i32>(_wgslsmith_sub_i32(func_4(func_2(u_input.c.x, Struct_3(-892f, vec3<i32>(var_0.x, var_0.x, u_input.a.x), false, global1[_wgslsmith_index_u32(global0.a, 27u)], Struct_1(global0.a, 39687u)), Struct_1(50676u, var_1.a))), min(-1i, abs(u_input.d))), -_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.a.x, 0i), vec3<i32>(var_0.x, var_0.x, 0i))), i32(-1i) * -(u_input.d & -1i)), false, global1[_wgslsmith_index_u32(global0.a, 27u)], arg_1);
    return _wgslsmith_f_op_f32(sign(-1225f));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 12>();
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1000f, -2359f)));
    let var_1 = -21936i;
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-674f, _wgslsmith_f_op_f32(select(global2.x, -822f, true))))))) * vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.x)), 1367f));
    var var_2 = Struct_2(!vec4<bool>(true, any(vec2<bool>(true, true)), true, _wgslsmith_f_op_f32(func_1(792f, Struct_1(global0.b, global0.b), global1[_wgslsmith_index_u32(u_input.e, 27u)])) > _wgslsmith_f_op_f32(select(-716f, global2.x, true))), func_2(firstLeadingBit(firstTrailingBit(_wgslsmith_div_u32(global0.a, global0.a))), Struct_3(global2.x, vec3<i32>(var_1 ^ -2147483647i, var_1, 12310i), func_3(Struct_2(vec4<bool>(true, true, true, false), Struct_1(u_input.b.x, 1u))).x, func_2(reverseBits(u_input.e), Struct_3(global2.x, vec3<i32>(1i, -426i, var_1), true, Struct_2(vec4<bool>(true, true, false, true), Struct_1(18842u, u_input.b.x)), Struct_1(u_input.e, 0u)), Struct_1(27709u, global0.a)).d, func_2(_wgslsmith_sub_u32(u_input.e, 1u), Struct_3(-363f, vec3<i32>(-59016i, u_input.d, 19940i), false, global3[_wgslsmith_index_u32(u_input.b.x, 12u)], Struct_1(global0.b, 44927u)), Struct_1(u_input.c.x, 8509u)).e), Struct_1(func_2(u_input.e, func_2(0u, Struct_3(1750f, vec3<i32>(u_input.d, 0i, u_input.a.x), true, Struct_2(vec4<bool>(false, false, true, true), Struct_1(3097u, 144549u)), Struct_1(44216u, 44516u)), Struct_1(4294967295u, global0.b)), Struct_1(u_input.b.x, 0u)).e.a, select(_wgslsmith_sub_u32(0u, global0.b), ~6520u, true))).e);
    var var_3 = 31299u;
    let var_4 = Struct_2(vec4<bool>(any(var_2.a.yy) | (any(var_2.a.xy) || var_2.a.x), _wgslsmith_sub_u32(39833u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 12876u, u_input.c.x, 1u), vec4<u32>(56486u, 33122u, 104036u, 62948u))) != 10447u, true, var_2.a.x), func_2(7207u, func_2(54662u, func_2(~var_2.b.a, Struct_3(var_0.x, vec3<i32>(1i, -58301i, var_1), var_2.a.x, global1[_wgslsmith_index_u32(4294967295u, 27u)], Struct_1(var_2.b.a, global0.b)), Struct_1(global0.b, 4294967295u)), var_2.b), func_2(11112u, Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -475f), vec3<i32>(-17060i, u_input.a.x, -1i), !var_2.a.x, global3[_wgslsmith_index_u32(global0.a, 12u)], Struct_1(4294967295u, global0.b)), Struct_1(firstLeadingBit(u_input.e), ~1u)).d.b).e);
    global1 = array<Struct_2, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b.b);
}

