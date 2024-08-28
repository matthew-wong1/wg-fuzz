struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 11257i;

var<private> global1: array<bool, 9>;

var<private> global2: Struct_2;

var<private> global3: array<Struct_2, 12>;

var<private> global4: Struct_1 = Struct_1(vec2<bool>(true, false), -330f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> i32 {
    let var_0 = min(vec3<u32>(u_input.b.x, 1u, u_input.a), u_input.d);
    global2 = Struct_2(Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.x - 1f), -1000f, select(false, any(vec4<bool>(false, true, true, global4.a.x)), !global1[_wgslsmith_index_u32(var_0.x, 9u)])))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.a.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1230f - _wgslsmith_f_op_f32(floor(-731f))))), arg_0.a.x)) - -1000f);
    let var_2 = vec2<bool>(any(vec4<bool>(arg_2.a.x, true, select(arg_2.a.x, arg_0.a.x, true) && global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(28795u, var_0.x), 9u)], any(select(vec3<bool>(true, arg_2.a.x, global2.a.a.x), vec3<bool>(false, false, true), vec3<bool>(global1[_wgslsmith_index_u32(1u, 9u)], arg_0.a.x, true))))), global2.a.a.x);
    let var_3 = arg_0;
    return u_input.c;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = ~(~(~countOneBits(vec4<u32>(arg_1, arg_1, 64074u, 41288u))));
    var var_1 = abs(~(reverseBits(vec3<i32>(28830i, u_input.c, u_input.c)) ^ vec3<i32>(u_input.c, 1i, u_input.c)) ^ (_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, -2147483647i, u_input.c), vec3<i32>(u_input.c, -39048i, 1i)), _wgslsmith_add_vec3_i32(vec3<i32>(0i, -32843i, u_input.c), vec3<i32>(0i, 2147483647i, 1900i))) | vec3<i32>(_wgslsmith_clamp_i32(u_input.c, u_input.c, u_input.c), u_input.c, -1i)));
    var var_2 = func_3(arg_2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1322f, global2.a.b, 725f, global2.a.b)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-874f, global2.a.b, 132f, global4.b))))), arg_0);
    let var_3 = -1808f;
    var var_4 = vec4<i32>(-abs(u_input.c | 14736i), -_wgslsmith_mult_i32(_wgslsmith_add_i32(~u_input.c, var_1.x), _wgslsmith_mod_i32(_wgslsmith_sub_i32(17895i, var_1.x), _wgslsmith_div_i32(u_input.c, -1i))), _wgslsmith_dot_vec3_i32(~vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(42763i, var_1.x), vec2<i32>(var_1.x, u_input.c)), ~u_input.c, var_1.x), ~vec3<i32>(firstTrailingBit(-25471i), _wgslsmith_add_i32(-25437i, var_1.x), var_1.x & 0i)), -(-12089i >> (arg_1 % 32u)));
    return global3[_wgslsmith_index_u32(0u, 12u)];
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_1(arg_0.a.a, _wgslsmith_f_op_f32(-1024f + _wgslsmith_f_op_f32(f32(-1f) * -719f)));
    return Struct_1(select(vec2<bool>(var_0.a.x, arg_0.a.a.x), vec2<bool>(!select(arg_1.x, global1[_wgslsmith_index_u32(13444u, 9u)], global2.a.a.x), false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 9u)], global4.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(-global4.b)) * global4.b) - -1906f));
}

fn func_1() -> f32 {
    var var_0 = 0u;
    var var_1 = Struct_2(func_4(func_2(global2.a, u_input.a, global3[_wgslsmith_index_u32(u_input.d.x, 12u)]), !(!select(vec3<bool>(global4.a.x, false, global1[_wgslsmith_index_u32(4294967295u, 9u)]), vec3<bool>(true, global2.a.a.x, true), vec3<bool>(false, true, false)))));
    var var_2 = vec2<i32>(u_input.c, 14664i);
    var_2 = -_wgslsmith_div_vec2_i32(-vec2<i32>(-1761i, u_input.c), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, 0i, -10673i), vec4<i32>(0i, var_2.x, 28603i, 4080i)), _wgslsmith_clamp_i32(-14829i, var_2.x, 1i))) ^ reverseBits(_wgslsmith_add_vec2_i32(max(reverseBits(vec2<i32>(u_input.c, u_input.c)), vec2<i32>(u_input.c, 2147483647i) << (vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u))), vec2<i32>(398i | u_input.c, var_2.x)));
    global0 = _wgslsmith_mult_i32(~var_2.x, ~1i);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1730f, _wgslsmith_f_op_f32(trunc(var_1.a.b)), global2.a.a.x || var_1.a.a.x)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1240f)))))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-250f, arg_0.b, -737f))))));
    let var_1 = func_4(arg_1, !vec3<bool>(!func_4(Struct_2(Struct_1(vec2<bool>(true, true), global2.a.b)), vec3<bool>(true, global4.a.x, global4.a.x)).a.x, true, global2.a.a.x));
    var var_2 = arg_1;
    var var_3 = global1[_wgslsmith_index_u32(u_input.b.x, 9u)];
    global4 = arg_0;
    return func_2(func_4(Struct_2(Struct_1(vec2<bool>(arg_0.a.x, true), _wgslsmith_f_op_f32(arg_1.a.b * var_2.a.b))), vec3<bool>(!arg_3.a.x, arg_0.a.x, all(!arg_0.a))), _wgslsmith_mod_u32(~19075u, u_input.a), func_2(Struct_1(select(vec2<bool>(arg_3.a.x, true), arg_3.a, var_2.a.a), arg_3.b), 4294967295u, global3[_wgslsmith_index_u32(4294967295u, 12u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_5(Struct_1(!global2.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))), global3[_wgslsmith_index_u32(~0u, 12u)], _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(~(-vec3<i32>(26087i, 19693i, 17510i)), countOneBits(vec3<i32>(-1i, 8283i, 24015i) & vec3<i32>(-1i, u_input.c, u_input.c))), _wgslsmith_sub_vec3_i32(-vec3<i32>(2147483647i, -34862i, 38937i), vec3<i32>(-1i) * -vec3<i32>(2403i, u_input.c, u_input.c))), func_4(Struct_2(global2.a), select(!select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 9u)], global2.a.a.x, true), vec3<bool>(global1[_wgslsmith_index_u32(1u, 9u)], false, global1[_wgslsmith_index_u32(5013u, 9u)]), vec3<bool>(false, global4.a.x, global1[_wgslsmith_index_u32(u_input.a, 9u)])), vec3<bool>(!global4.a.x, true, false), func_2(global2.a, 0u, func_2(global2.a, u_input.d.x, Struct_2(global2.a))).a.a.x)));
    global3 = array<Struct_2, 12>();
    global0 = u_input.c | -u_input.c;
    let var_0 = func_2(global2.a, countOneBits(max(_wgslsmith_mult_u32(~0u, ~u_input.d.x), u_input.d.x)), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, _wgslsmith_add_u32(abs(u_input.d.x) >> (~4294967295u % 32u), abs(u_input.a))), 12u)]).a;
    var var_1 = vec4<bool>(!(!all(!vec4<bool>(true, var_0.a.x, global1[_wgslsmith_index_u32(u_input.d.x, 9u)], true))), true, u_input.c > _wgslsmith_add_i32(u_input.c, u_input.c), !all(global4.a));
    var var_2 = _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(~(~u_input.a), ~0u, ~(~0u)), ~(~countOneBits(vec3<u32>(72952u, 4294967295u, 48796u)))), _wgslsmith_mult_vec3_u32(firstLeadingBit(max(u_input.b.zyx, u_input.d & u_input.d)), vec3<u32>(17965u << (u_input.b.x % 32u), firstTrailingBit(u_input.d.x), 25851u)));
    let x = u_input.a;
    s_output = StorageBuffer(1000f, vec2<i32>(-2222i, _wgslsmith_mult_i32((u_input.c & -34379i) >> (~4294967295u % 32u), abs(u_input.c & -18820i))), abs(u_input.b.xwz), _wgslsmith_dot_vec4_u32(min(~vec4<u32>(u_input.b.x, 66986u, 53094u, 5306u), ~(~u_input.b)), _wgslsmith_div_vec4_u32(u_input.b, _wgslsmith_mult_vec4_u32(select(u_input.b, u_input.b, vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 9u)], false, global4.a.x)), u_input.b))), vec4<u32>(u_input.d.x, _wgslsmith_div_u32(_wgslsmith_add_u32(~var_2.x, select(var_2.x, 4294967295u, var_0.a.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, var_2.x), firstTrailingBit(vec3<u32>(0u, 36433u, u_input.a)))), abs(~(var_2.x ^ 0u)), _wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(select(var_2.x, 10366u, global2.a.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(3993u, 20847u, var_2.x, var_2.x), u_input.b)))));
}

