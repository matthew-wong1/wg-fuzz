struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<u32, 18> = array<u32, 18>(47706u, 49243u, 1u, 4294967295u, 4294967295u, 100510u, 1552u, 9616u, 0u, 0u, 4294967295u, 31950u, 3558u, 51990u, 4294967295u, 4492u, 13786u, 0u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_2) -> i32 {
    let var_0 = arg_0;
    global0 = Struct_3(vec2<u32>(max(1u, u_input.c.x) & u_input.c.x, global0.a.x), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1491f, _wgslsmith_f_op_f32(arg_0.b * 192f), -1012f))), vec3<bool>(arg_1.x, any(vec3<bool>(arg_1.x, arg_1.x, false)), arg_1.x), _wgslsmith_div_u32(~103521u, global0.a.x) < (1u & select(36578u, firstLeadingBit(1u), !global0.c.x)), (vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, 29365i, 1i, -1i)) & select(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, var_0.a, global0.e.x, 17843i), -var_0.c), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 0i, arg_2.a.c.x), vec3<i32>(global0.e.x, global0.e.x, arg_0.a)), -var_0.a, _wgslsmith_mult_i32(var_0.a, var_0.c.x), _wgslsmith_clamp_i32(-1803i, arg_0.a, global0.e.x)), select(vec4<bool>(arg_1.x, true, true, arg_1.x), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, arg_1.x), arg_1.x), true)));
    let var_1 = !vec2<bool>(true, global0.c.x);
    global0 = Struct_3(~_wgslsmith_mult_vec2_u32(global0.a, u_input.c.xz) & (global0.a | _wgslsmith_add_vec2_u32(global0.a, ~global0.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(var_0.d)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(140f - 1084f), arg_2.a.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -126f) - -1070f))), !select(select(global0.c, select(vec3<bool>(true, true, false), vec3<bool>(var_1.x, true, true), global0.c), !vec3<bool>(arg_1.x, var_1.x, true)), !vec3<bool>(var_1.x, true, arg_1.x), true), true, abs(vec4<i32>(-u_input.b, ~(-arg_0.a), u_input.b, global0.e.x)));
    global0 = Struct_3(~countOneBits(vec2<u32>(~55663u, ~u_input.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.b.x, 1089f, 406f)))))))), vec3<bool>(!all(!vec4<bool>(arg_1.x, true, arg_1.x, true)), any(vec4<bool>(true, any(vec4<bool>(false, true, false, true)), true, global0.a.x > 0u)), any(select(vec4<bool>(arg_1.x, var_1.x, global0.d, arg_1.x), vec4<bool>(arg_1.x, var_1.x, global0.d, false), true))), !any(arg_1), vec4<i32>(29054i, -1i, arg_0.a, countOneBits(arg_0.a)));
    return global0.e.x;
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    global0 = Struct_3(vec2<u32>(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(~4294967295u, 18u)] << (_wgslsmith_dot_vec2_u32(u_input.c.yz, u_input.c.zy) % 32u), u_input.c.x), _wgslsmith_mod_u32(~_wgslsmith_div_u32(global0.a.x, 0u), firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.a.x, 18u)], 18u)]) >> (1u % 32u))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.b) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1279f + arg_0.b.b), _wgslsmith_f_op_f32(max(1695f, arg_0.b.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1025f)))), !global0.c, all(select(vec4<bool>(any(vec3<bool>(true, false, true)), true && global0.d, any(vec2<bool>(false, true)), false), !(!vec4<bool>(true, global0.d, true, global0.d)), global0.d)), -vec4<i32>(select(_wgslsmith_clamp_i32(arg_0.b.c.x, arg_0.b.c.x, 1i), func_3(arg_0.b, global0.c.xx, Struct_2(Struct_1(9996i, arg_0.b.b, vec4<i32>(arg_0.a.a, 0i, u_input.a.x, 43041i), -1595f), arg_0.a)), all(global0.c.yz)), -arg_0.a.c.x, -1i, -1i));
    global0 = Struct_3(u_input.c.zx, global0.b, global0.c, !(~_wgslsmith_div_i32(u_input.a.x, global0.e.x) > global0.e.x), max(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-11151i, -14421i, u_input.b), _wgslsmith_sub_i32(u_input.a.x, -1i)), select(func_3(arg_0.b, global0.c.zx, Struct_2(Struct_1(u_input.a.x, global0.b.x, global0.e, 510f), arg_0.a)), max(u_input.a.x, 2127i), global0.c.x), _wgslsmith_dot_vec4_i32(abs(u_input.a), ~arg_0.b.c), -global0.e.x), firstTrailingBit(-global0.e)));
    global1 = array<u32, 18>();
    let var_0 = 7587u;
    global1 = array<u32, 18>();
    return arg_0;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: i32) -> vec3<bool> {
    var var_0 = _wgslsmith_clamp_vec3_i32(u_input.a.yzx, vec3<i32>(~func_2(arg_1.c).b.a, arg_1.d.a, _wgslsmith_dot_vec3_i32(global0.e.xwx, vec3<i32>(60952i, 23478i, -10224i))), ~u_input.a.yxy) | vec3<i32>(-7943i, arg_1.d.a ^ min(22665i & global0.e.x, ~41014i), max(_wgslsmith_sub_i32(reverseBits(arg_2), ~26387i), 1i));
    var var_1 = ~(~(~_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global0.a.x, arg_0.x, 98499u), vec4<u32>(33882u, 37450u, arg_0.x, 40146u)), vec4<u32>(4294967295u, arg_0.x, 7067u, global1[_wgslsmith_index_u32(6825u, 18u)]))));
    let var_2 = !(!global0.c);
    var var_3 = _wgslsmith_div_vec3_f32(global0.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1029f, -164f, arg_1.d.b), vec3<f32>(168f, 1464f, global0.b.x))), _wgslsmith_f_op_vec3_f32(sign(global0.b))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_1.c.b.b)), _wgslsmith_f_op_f32(global0.b.x * global0.b.x), global0.c.x)), _wgslsmith_f_op_f32(floor(558f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(503f + 244f)))), !(!global0.c))));
    global0 = Struct_3(~u_input.c.yz >> (~vec2<u32>(firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.a.x, 18u)], 18u)]), var_1.x) % vec2<u32>(32u)), vec3<f32>(-1070f, -1022f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1883f + var_3.x) + -979f), func_2(Struct_2(arg_1.c.a, arg_1.c.b)).a.b))), var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(func_2(arg_1.c).a.d, _wgslsmith_div_f32(global0.b.x, 930f)))) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-287f)), -242f)), _wgslsmith_mod_vec4_i32(global0.e << (~(~vec4<u32>(1u, var_1.x, 20639u, var_1.x)) % vec4<u32>(32u)), -vec4<i32>(_wgslsmith_sub_i32(arg_1.d.a, 6329i), 0i, global0.e.x, 2147483647i)));
    return select(global0.c, select(var_2, vec3<bool>(false, any(select(global0.c, vec3<bool>(false, var_2.x, var_2.x), var_2)), global0.c.x), vec3<bool>(true, true | !global0.d, ~arg_0.x == ~0u)), any(global0.c.zy));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec2<i32>) -> vec4<u32> {
    global1 = array<u32, 18>();
    var var_0 = abs(vec2<i32>(-2147483647i, arg_1.a.a) ^ arg_2);
    var var_1 = -979f;
    global0 = Struct_3(~vec2<u32>(global1[_wgslsmith_index_u32(~(27285u << (global0.a.x % 32u)), 18u)], _wgslsmith_div_u32(global1[_wgslsmith_index_u32(u_input.c.x, 18u)], ~24794u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b * global0.b) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, arg_1.a.b, 1231f) + vec3<f32>(global0.b.x, -1000f, -354f))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(1407f, -566f)), -170f, 1000f) - global0.b)), select(func_4(_wgslsmith_add_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 18u)], global0.a.x) & global0.a, _wgslsmith_sub_vec2_u32(u_input.c.yy, vec2<u32>(88896u, 1u))), Struct_4(~vec2<i32>(u_input.b, -38801i), _wgslsmith_mult_i32(13021i, 0i), func_2(Struct_2(arg_1.a, Struct_1(global0.e.x, -580f, global0.e, arg_1.b.d))), arg_1.b), select(_wgslsmith_sub_i32(-44434i, u_input.b), select(14312i, 2147483647i, global0.c.x), 206f == global0.b.x)), global0.c, vec3<bool>(any(global0.c.yy), -2147483647i < (2147483647i ^ u_input.a.x), !global0.c.x != (arg_0.x >= arg_1.a.b))), global0.c.x, vec4<i32>(-min(u_input.b, arg_2.x), -1i, func_3(Struct_1(var_0.x, -166f, vec4<i32>(0i, var_0.x, u_input.b, -23177i), -221f), global0.c.yz, arg_1) >> (select(4294967295u, 0u, global0.d) % 32u), arg_2.x) | vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.b, arg_2.x), 5011i, 14894i), firstTrailingBit(9995i), global0.e.x, global0.e.x));
    var_1 = _wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1185f)));
    return vec4<u32>(~0u, min(~global1[_wgslsmith_index_u32(0u, 18u)], 1u & ~u_input.c.x), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(0u), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.c.yy, u_input.c.yz), _wgslsmith_dot_vec3_u32(~vec3<u32>(8134u, 34307u, global1[_wgslsmith_index_u32(global0.a.x, 18u)]), select(vec3<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 18u)], u_input.c.x, global0.a.x), vec3<u32>(global1[_wgslsmith_index_u32(68509u, 18u)], 20531u, 1u), vec3<bool>(global0.c.x, true, global0.d))))), 18u)], countOneBits(firstTrailingBit(1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_sub_vec4_u32(func_1(vec3<f32>(global0.b.x, global0.b.x, 946f), Struct_2(Struct_1(global0.e.x, global0.b.x, global0.e, 1219f), Struct_1(0i, global0.b.x, vec4<i32>(-1i, u_input.b, u_input.a.x, u_input.a.x), global0.b.x)), vec2<i32>(-2147483647i, u_input.a.x)), _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(86030u, u_input.c.x, global0.a.x, 100190u)), ~vec4<u32>(13710u, u_input.c.x, 25606u, 0u))));
    var var_1 = global0.d;
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-u_input.a.yy)) ^ u_input.a.zz);
}

