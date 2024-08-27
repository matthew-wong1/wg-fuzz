struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 1u, 40587u, 36874u);

var<private> global1: bool = true;

var<private> global2: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(35971u, 79722u, 13957u, 1u), vec4<u32>(1u, 4294967295u, 1u, 5573u), vec4<u32>(4294967295u, 25937u, 4294967295u, 33479u), vec4<u32>(4294967295u, 19449u, 0u, 58128u), vec4<u32>(4294967295u, 1u, 0u, 1u), vec4<u32>(0u, 68815u, 16001u, 4294967295u), vec4<u32>(37942u, 4294967295u, 1u, 4544u), vec4<u32>(4294967295u, 31313u, 0u, 4294967295u), vec4<u32>(171599u, 0u, 83080u, 4294967295u), vec4<u32>(4294967295u, 0u, 1u, 1u), vec4<u32>(4294967295u, 22041u, 0u, 43533u), vec4<u32>(63417u, 1u, 1u, 0u), vec4<u32>(7108u, 19010u, 43253u, 0u), vec4<u32>(0u, 1u, 19622u, 1u), vec4<u32>(4294967295u, 4294967295u, 44294u, 1u));

var<private> global3: array<vec3<i32>, 6>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_2(false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - arg_1.c.x), -419f));
    var var_1 = true;
    let var_2 = arg_1;
    let var_3 = u_input.b;
    var var_4 = var_2;
    return firstLeadingBit(_wgslsmith_div_u32(select(_wgslsmith_dot_vec2_u32(abs(var_2.a), ~vec2<u32>(40783u, var_4.d)), abs(global0.x), !var_0.a && any(vec2<bool>(true, var_0.a))), ~max(19077u, ~24600u)));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> f32 {
    let var_0 = Struct_1(vec2<u32>(firstTrailingBit(~func_3(Struct_1(global0.wz, 2147483647i, vec4<f32>(788f, arg_2.b, arg_0.b, 1594f), global0.x), Struct_1(global0.xx, -7639i, vec4<f32>(-755f, arg_2.b, 706f, -1000f), global0.x))), 4294967295u), select(-u_input.a.x, u_input.a.x, !(!arg_0.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1140f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -274f))), global0.x);
    return var_0.c.x;
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: bool) -> Struct_1 {
    let var_0 = vec3<bool>(arg_2 || arg_2, true, arg_2);
    global3 = array<vec3<i32>, 6>();
    let var_1 = Struct_2(true, arg_0.x);
    let var_2 = vec4<u32>(func_3(Struct_1(vec2<u32>(63359u << (global0.x % 32u), _wgslsmith_mod_u32(global0.x, global0.x)), reverseBits(u_input.b), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.b, arg_1, var_1.b, arg_1))), 4294967295u), Struct_1(global0.wx, 63793i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-388f, arg_0.x, -480f, arg_1)))), 4294967295u)), _wgslsmith_clamp_u32(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(global0.x, 104572u, global0.x), global0.x), firstLeadingBit(~(global0.x | global0.x)), 567u), ~7586u, global0.x);
    global3 = array<vec3<i32>, 6>();
    return Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(abs(4294967295u) >> (global0.x % 32u), func_3(Struct_1(var_2.yw, 48019i, vec4<f32>(arg_0.x, var_1.b, 274f, -1193f), 60721u), Struct_1(global0.zx, u_input.a.x, vec4<f32>(var_1.b, arg_0.x, var_1.b, arg_1), 1u))), vec2<u32>(1884u, ~global0.x)), _wgslsmith_add_i32(u_input.b, u_input.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(820f, 214f, var_1.b, -978f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1403f, -775f, 1254f, -1558f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(648f, -1091f, arg_0.x, arg_1) - vec4<f32>(var_1.b, 976f, arg_0.x, arg_0.x))))), 1u);
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> vec2<bool> {
    var var_0 = arg_2.c.wy;
    var var_1 = arg_2;
    var var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_div_u32(firstTrailingBit(global0.x >> (var_1.a.x % 32u)), arg_0), firstTrailingBit(~1u), ~global0.x), ~vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(var_1.d, arg_2.a.x), func_3(Struct_1(vec2<u32>(0u, 4294967295u), arg_3, vec4<f32>(arg_2.c.x, arg_2.c.x, -1720f, var_1.c.x), var_1.a.x), arg_2), _wgslsmith_sub_u32(arg_0, 1u)), ~reverseBits(36897u), ~(~4294967295u)));
    let var_3 = arg_2;
    var_1 = arg_2;
    return !select(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true)), !select(vec2<bool>(true, false), vec2<bool>(true, true), any(vec4<bool>(false, false, false, false))), vec2<bool>(!(-6935i <= u_input.b), true));
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = (firstLeadingBit(u_input.b) >> (arg_0.x % 32u)) & (_wgslsmith_div_i32(-1i, abs(-2147483647i)) << (~(~_wgslsmith_div_u32(50405u, arg_0.x)) % 32u));
    var var_1 = -u_input.a.x;
    global3 = array<vec3<i32>, 6>();
    var var_2 = _wgslsmith_f_op_f32(-659f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-892f + 256f)))));
    global2 = array<vec4<u32>, 15>();
    return Struct_2(any(func_5(arg_0.x, 1i, func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(720f, 525f) + vec2<f32>(1000f, 1343f)), _wgslsmith_f_op_f32(func_2(Struct_2(true, 547f), global0.x, Struct_2(true, 265f))), false), u_input.b)), 1525f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2[_wgslsmith_index_u32(54534u, 15u)] | vec4<u32>(_wgslsmith_add_u32(0u >> (global0.x % 32u), 1u), 29908u, _wgslsmith_add_u32(~global0.x, _wgslsmith_mult_u32(global0.x, 12270u)), _wgslsmith_div_u32(1u, ~0u));
    var var_0 = func_1(vec2<u32>(0u, 42481u));
    var var_1 = false;
    global3 = array<vec3<i32>, 6>();
    var var_2 = func_1(_wgslsmith_mult_vec2_u32(firstTrailingBit(global0.xx), vec2<u32>(_wgslsmith_sub_u32(~global0.x, reverseBits(33277u)), ~(~global0.x))));
    var var_3 = true;
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, _wgslsmith_f_op_f32(-var_2.b), -1676f, _wgslsmith_div_f32(var_0.b, var_2.b))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(-314f - _wgslsmith_f_op_f32(-777f - 122f)), var_0.b, var_2.b)) * vec4<f32>(1000f, _wgslsmith_f_op_f32(round(var_2.b)), -1008f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, var_0.b)), func_1(global0.zx).a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.x, 0u, global0.x, 389u), firstLeadingBit(vec4<u32>(0u, 48048u, 0u, 49679u))), countOneBits(max(31271u, 0u))) & ~global0.x, _wgslsmith_f_op_f32(exp2(var_4.x)));
}

