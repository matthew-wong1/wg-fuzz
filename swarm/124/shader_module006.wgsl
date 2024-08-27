struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 404f;

var<private> global1: array<f32, 5> = array<f32, 5>(1545f, -1000f, 1615f, -803f, 963f);

var<private> global2: Struct_3;

var<private> global3: array<vec4<u32>, 10>;

var<private> global4: array<bool, 7> = array<bool, 7>(true, false, false, false, false, false, false);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: Struct_4) -> vec2<i32> {
    let var_0 = vec3<i32>(15534i, global2.a.a.c.x, arg_1.a.c.x);
    global1 = array<f32, 5>();
    let var_1 = Struct_4(Struct_1(_wgslsmith_mod_u32(~(4294967295u >> (arg_1.b % 32u)), ~_wgslsmith_sub_u32(12043u, 0u)), global2.b.b, vec2<i32>(var_0.x, 22362i), u_input.d), u_input.b.x);
    var var_2 = Struct_3(global2.a, global2.b, -arg_1.a.c.x, arg_1.a.b);
    var var_3 = arg_1.a.b;
    return var_1.a.c;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>) -> u32 {
    var var_0 = Struct_3(Struct_2(Struct_1(u_input.b.x, global2.d, select(vec2<i32>(u_input.c, global2.b.c.x), vec2<i32>(-31820i, global2.c), global4[_wgslsmith_index_u32(16051u, 7u)] != global2.a.a.b.x), ~arg_0.wy)), global2.b, global2.c, select(global2.a.a.b, vec2<bool>(global2.d.x, true), global2.b.b));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1143f + global1[_wgslsmith_index_u32(1u, 5u)])));
    global3 = array<vec4<u32>, 10>();
    let var_2 = Struct_5(0u, Struct_2(global2.b), Struct_1(23805u, global2.d, func_3(-11120i, Struct_4(global2.b, 81652u)) | ~global2.b.c, ~vec2<u32>(var_0.a.a.a << (arg_1.x % 32u), countOneBits(global2.b.a))));
    global2 = Struct_3(var_0.a, Struct_1(~(var_0.a.a.a | _wgslsmith_dot_vec2_u32(var_2.c.d, vec2<u32>(4294967295u, global2.a.a.d.x))), !select(select(var_2.c.b, var_0.d, var_2.b.a.b), !vec2<bool>(global2.a.a.b.x, false), !vec2<bool>(global2.a.a.b.x, global2.d.x)), _wgslsmith_div_vec2_i32(select(countOneBits(vec2<i32>(global2.c, var_2.c.c.x)), vec2<i32>(2147483647i, var_0.c), any(vec4<bool>(true, global2.d.x, global4[_wgslsmith_index_u32(44826u, 7u)], false))), _wgslsmith_div_vec2_i32(-global2.b.c, vec2<i32>(0i, 1i))), firstLeadingBit(max(~arg_0.zz, vec2<u32>(arg_0.x, 53679u)))), i32(-1i) * -(0i << (~var_0.a.a.d.x % 32u)), var_2.b.a.b);
    return _wgslsmith_clamp_u32(abs(58053u), countOneBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(global2.b.a, 24344u, 19221u, 49410u), countOneBits(global3[_wgslsmith_index_u32(var_0.b.a, 10u)]))), u_input.b.x);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<u32>) -> vec2<bool> {
    let var_0 = countOneBits(reverseBits(~(-vec3<i32>(1i, global2.c, global2.b.c.x)))) & (reverseBits(vec3<i32>(u_input.c, u_input.c, global2.c)) ^ ((vec3<i32>(-32060i, -22120i, u_input.c) | vec3<i32>(u_input.c, u_input.c, -12525i)) ^ (vec3<i32>(-1i) * -vec3<i32>(1i, global2.a.a.c.x, global2.c))));
    let var_1 = max(vec4<u32>(28099u, _wgslsmith_div_u32(arg_1.x, _wgslsmith_clamp_u32(min(74047u, u_input.d.x), min(1u, 19048u), 1u)), 4294967295u, ~(~45554u)), ~reverseBits(~(~global3[_wgslsmith_index_u32(83403u, 10u)])));
    let var_2 = -67485i;
    let var_3 = Struct_2(Struct_1(arg_1.x, !global2.d, countOneBits(abs(countOneBits(var_0.xx))), vec2<u32>(~4294967295u, ~firstLeadingBit(u_input.d.x))));
    global3 = array<vec4<u32>, 10>();
    return var_3.a.b;
}

fn func_1() -> vec4<i32> {
    var var_0 = any(select(!vec3<bool>(all(vec3<bool>(true, global2.a.a.b.x, global2.b.b.x)), all(vec3<bool>(global2.a.a.b.x, global4[_wgslsmith_index_u32(1u, 7u)], true)), true), select(select(vec3<bool>(global2.d.x, global4[_wgslsmith_index_u32(global2.a.a.d.x, 7u)], global4[_wgslsmith_index_u32(global2.b.d.x, 7u)]), !vec3<bool>(true, false, global2.b.b.x), true), vec3<bool>(true, true, true), !any(vec4<bool>(true, global4[_wgslsmith_index_u32(global2.a.a.a, 7u)], global4[_wgslsmith_index_u32(u_input.a, 7u)], true))), any(vec3<bool>(true, any(vec2<bool>(global4[_wgslsmith_index_u32(u_input.d.x, 7u)], true)), true))));
    var_0 = all(func_4(vec3<bool>(func_2(vec4<u32>(7449u, 4294967295u, u_input.d.x, 89363u), u_input.b.ww) <= global2.a.a.d.x, _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.d.x, 5u)], 1742f, global4[_wgslsmith_index_u32(u_input.d.x, 7u)])) <= _wgslsmith_f_op_f32(-1450f * -662f), true), abs(_wgslsmith_div_vec2_u32(global2.b.d, ~vec2<u32>(1u, global2.b.a)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-212f, -326f, !(!(35074u >= global2.b.a)))));
    let var_1 = Struct_5(0u, global2.a, Struct_1(62296u, vec2<bool>(1u != reverseBits(u_input.d.x), global2.a.a.b.x), global2.b.c, ~max(vec2<u32>(global2.a.a.d.x, 4294967295u), vec2<u32>(global2.b.a, 17702u))));
    let var_2 = global2.b;
    return vec4<i32>(-_wgslsmith_sub_i32(_wgslsmith_mod_i32(-var_1.b.a.c.x, 1i), 0i), countOneBits(var_2.c.x) ^ (abs(8052i) << (var_2.a % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -(vec4<i32>(52959i, -1i, global2.a.a.c.x, -1i) | vec4<i32>(global2.a.a.c.x, global2.c, var_1.b.a.c.x, global2.a.a.c.x)), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.c.x, var_2.c.x, global2.b.c.x, u_input.c), min(vec4<i32>(var_1.c.c.x, u_input.c, u_input.c, var_1.b.a.c.x), vec4<i32>(15776i, 0i, global2.b.c.x, -17695i))))), u_input.c);
}

fn func_5(arg_0: vec2<f32>, arg_1: vec4<i32>) -> Struct_3 {
    global4 = array<bool, 7>();
    let var_0 = ~abs(global2.b.a | global2.b.a) & 17336u;
    var var_1 = Struct_3(Struct_2(Struct_1((u_input.b.x << (0u % 32u)) & 1u, select(vec2<bool>(false, global2.b.b.x), select(global2.b.b, global2.d, global2.d), false), vec2<i32>(i32(-1i) * -1614i, global2.b.c.x), global2.a.a.d)), global2.a.a, 17204i, global2.a.a.b);
    global4 = array<bool, 7>();
    global3 = array<vec4<u32>, 10>();
    return Struct_3(Struct_2(var_1.b), var_1.a.a, _wgslsmith_dot_vec3_i32(select(arg_1.xzz, firstTrailingBit(arg_1.yyz), vec3<bool>(true, false, 1100f != arg_0.x)), vec3<i32>(u_input.c, ~13619i, -1i)), func_4(!vec3<bool>(all(vec2<bool>(false, true)), global4[_wgslsmith_index_u32(global2.b.a, 7u)], true), countOneBits(~u_input.d ^ (var_1.b.d << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -462f;
    let var_0 = _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, ~64872u), global2.b.d, global2.a.a.b.x), abs(u_input.b.zx) >> (global2.a.a.d % vec2<u32>(32u))), ~1u);
    var var_1 = func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d.x, u_input.a), 5u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0, 5u)])), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(9311u, global2.b.d.x), 1u), 5u)])), func_1());
    global2 = func_5(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(var_1.b.d.x, 5u)]))), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(firstLeadingBit(~var_1.a.a.d.x), 5u)], -1020f))), func_1());
    var var_2 = _wgslsmith_mod_vec2_i32(global2.a.a.c, ~var_1.b.c);
    var_2 = func_1().xz ^ ~var_1.b.c;
    var var_3 = global2.a;
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(vec2<u32>(0u, u_input.b.x), global2.b.d, var_1.d.x)), vec2<u32>(~firstLeadingBit(var_3.a.d.x), 1u));
}

