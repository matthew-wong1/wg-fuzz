struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: array<Struct_5, 8>;

var<private> global2: u32 = 1u;

var<private> global3: array<f32, 22>;

var<private> global4: array<vec4<bool>, 18>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: i32, arg_3: vec3<f32>) -> u32 {
    return 4294967295u;
}

fn func_3(arg_0: bool, arg_1: vec2<u32>) -> u32 {
    var var_0 = arg_1.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -913f), _wgslsmith_f_op_f32(sign(-1853f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-402f)), global3[_wgslsmith_index_u32(arg_1.x, 22u)], arg_0))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(arg_1.x, 22u)], global3[_wgslsmith_index_u32(20063u, 22u)], global3[_wgslsmith_index_u32(arg_1.x, 22u)]) - vec3<f32>(global3[_wgslsmith_index_u32(18367u, 22u)], 342f, global3[_wgslsmith_index_u32(13141u, 22u)])))))));
    let var_2 = vec3<bool>(u_input.b > (i32(-1i) * -(u_input.b & -32184i)), false, arg_0);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(ceil(-859f)), global3[_wgslsmith_index_u32(u_input.c, 22u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-842f * 766f) - _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(max(var_1.x, var_1.x)), false && var_2.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2521f * 1535f))), _wgslsmith_f_op_f32(f32(-1f) * -1523f));
    let var_4 = 1u;
    return u_input.a.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_5) -> bool {
    global0 = 1u;
    let var_0 = arg_0.x != (true | arg_0.x);
    global4 = array<vec4<bool>, 18>();
    global1 = array<Struct_5, 8>();
    global0 = abs(1u);
    return any(global4[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(func_3(true, u_input.d.yx), _wgslsmith_add_u32(64503u, 66748u))) | u_input.c, 18u)]);
}

fn func_4(arg_0: u32, arg_1: vec2<bool>) -> i32 {
    let var_0 = ~abs(-14956i >> (_wgslsmith_sub_u32(arg_0 >> (arg_0 % 32u), _wgslsmith_div_u32(u_input.c, u_input.a.x)) % 32u));
    var var_1 = ~(~arg_0);
    var var_2 = Struct_2(!((true && all(vec3<bool>(true, arg_1.x, true))) & all(select(vec4<bool>(arg_1.x, false, false, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), arg_1.x))), ~abs(u_input.a.zy));
    var var_3 = global3[_wgslsmith_index_u32(max(_wgslsmith_clamp_u32(~(~max(u_input.a.x, 9180u)), ~(~var_2.b.x), firstTrailingBit(~u_input.a.x << (u_input.c % 32u))), 52751u), 22u)];
    var var_4 = firstLeadingBit(var_0);
    return firstLeadingBit(u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(~func_1(abs(max(vec4<i32>(0i, -34640i, -27570i, 0i), vec4<i32>(u_input.b, -9762i, -47861i, u_input.b))), Struct_5(-vec3<i32>(6098i, -1i, u_input.b), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-901f, global3[_wgslsmith_index_u32(4294967295u, 22u)], global3[_wgslsmith_index_u32(0u, 22u)])))), u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global3[_wgslsmith_index_u32(u_input.c, 22u)], 1044f, global3[_wgslsmith_index_u32(u_input.c, 22u)]))))), select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(false, true, false)), true), vec2<bool>(func_2(global4[_wgslsmith_index_u32(u_input.a.x | u_input.c, 18u)], ~2147483647i, global1[_wgslsmith_index_u32(~u_input.d.x, 8u)]), true)));
    var var_1 = !vec3<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, false))), true, (_wgslsmith_div_i32(u_input.b, -34515i) | _wgslsmith_clamp_i32(-86i, -30695i, var_0)) > _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.b, u_input.b, -4494i, u_input.b)), ~vec4<i32>(var_0, -2147483647i, var_0, -1i)));
    global2 = u_input.c << (((u_input.d.x | _wgslsmith_mod_u32(1u, ~u_input.a.x)) | ~reverseBits(0u << (u_input.c % 32u))) % 32u);
    let var_2 = Struct_4(Struct_1(_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(u_input.c, 22u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~u_input.c, 22u)]))), u_input.d), Struct_2(var_1.x, u_input.d.xy), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(var_0, u_input.b, 56479i, var_0), vec4<i32>(_wgslsmith_clamp_i32(-1i, var_0, u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(9887i, u_input.b, u_input.b, var_0), vec4<i32>(var_0, var_0, u_input.b, 42492i)), ~u_input.b, ~(-1495i))), vec4<i32>(firstLeadingBit(-1i), ~u_input.b | var_0, ~_wgslsmith_div_i32(-1153i, var_0), i32(-1i) * -40752i)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3[_wgslsmith_index_u32(u_input.d.x, 22u)], 1282f, 1762f), vec3<f32>(3018f, 529f, global3[_wgslsmith_index_u32(35390u, 22u)]), vec3<bool>(var_1.x, false, true))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(u_input.d.x, 22u)], global3[_wgslsmith_index_u32(4294967295u, 22u)], global3[_wgslsmith_index_u32(u_input.d.x, 22u)]))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 22u)], 3089f, global3[_wgslsmith_index_u32(2808u, 22u)]), vec3<f32>(global3[_wgslsmith_index_u32(18709u, 22u)], -715f, -831f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(273f, 1290f, global3[_wgslsmith_index_u32(1u, 22u)]) * vec3<f32>(global3[_wgslsmith_index_u32(u_input.a.x, 22u)], global3[_wgslsmith_index_u32(u_input.d.x, 22u)], 2654f)))), vec3<bool>(var_1.x, false, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 17929i, var_0), vec3<i32>(-1i, var_0, -1i)) > var_0))));
    var var_3 = var_2.b;
    global4 = array<vec4<bool>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(-35839i);
}

