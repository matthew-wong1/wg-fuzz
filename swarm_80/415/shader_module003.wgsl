struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28>;

var<private> global1: array<Struct_1, 17>;

var<private> global2: Struct_1 = Struct_1(vec3<i32>(18109i, 2147483647i, 16768i), vec2<bool>(true, true));

var<private> global3: array<vec2<u32>, 9>;

var<private> global4: vec3<bool>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<u32>) -> vec2<bool> {
    let var_0 = vec3<f32>(-1838f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1262f * _wgslsmith_f_op_f32(-1551f - -1271f)), -1170f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1576f + -510f))), _wgslsmith_f_op_f32(round(464f)));
    let var_1 = _wgslsmith_div_vec2_i32(global2.a.zx, _wgslsmith_mod_vec2_i32(select(vec2<i32>(global2.a.x, 13676i), global2.a.yx, vec2<bool>(true, global2.b.x)) | vec2<i32>(-90788i, global2.a.x), global2.a.xy & min(u_input.c.yy, global2.a.zx)) & vec2<i32>(2147483647i, _wgslsmith_div_i32(global2.a.x, _wgslsmith_mod_i32(-2147483647i, u_input.c.x))));
    global0 = array<u32, 28>();
    var var_2 = global1[_wgslsmith_index_u32(0u, 17u)];
    return !var_2.b;
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> bool {
    global1 = array<Struct_1, 17>();
    global2 = Struct_1(~vec3<i32>(26325i, 11637i, _wgslsmith_mod_i32(u_input.c.x, u_input.c.x)) ^ (arg_1.a << (max(vec3<u32>(32362u, 36296u, 20625u) << (vec3<u32>(u_input.a, u_input.a, 5707u) % vec3<u32>(32u)), ~vec3<u32>(1u, global0[_wgslsmith_index_u32(u_input.b, 28u)], u_input.b)) % vec3<u32>(32u))), !select(vec2<bool>(global2.b.x == global2.b.x, true), func_3(_wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 28u)], 28u)], 26223u, 0u), vec4<u32>(1u, 1u, u_input.b, 19050u))), false));
    var var_0 = Struct_1(vec3<i32>(24472i, -12642i, ~global2.a.x), func_3(vec4<u32>(global0[_wgslsmith_index_u32(1u, 28u)], 26346u >> (countOneBits(1u) % 32u), 1u, _wgslsmith_sub_u32(min(2730u, 99683u), u_input.b >> (global0[_wgslsmith_index_u32(4294967295u, 28u)] % 32u)))));
    let var_1 = vec4<u32>(abs(_wgslsmith_dot_vec2_u32(min(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 9u)], vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(53163u, 28u)], 28u)], 28u)], 28u)])) << (global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(47366u, u_input.b), 9u)] % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(~vec2<u32>(27090u, global0[_wgslsmith_index_u32(62534u, 28u)]), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.a), 9u)]))), firstTrailingBit(min(abs(4294967295u), min(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 28u)], 28u)], 31341u))), ~(~global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(~u_input.a, 28u)], _wgslsmith_mult_u32(56372u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 28u)], 28u)])), 28u)]), global0[_wgslsmith_index_u32(23848u >> (~(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14258u, 28u)], 28u)], 44764u, 0u, 0u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 28u)], 2174u, 1u, u_input.b)), 28u)]) % 32u), 28u)]);
    global3 = array<vec2<u32>, 9>();
    return false;
}

fn func_1() -> Struct_1 {
    global3 = array<vec2<u32>, 9>();
    let var_0 = !select(select(vec4<bool>(all(vec3<bool>(true, global4.x, false)), true, true, func_2(false, global1[_wgslsmith_index_u32(42997u, 17u)])), !select(vec4<bool>(false, global2.b.x, global4.x, global4.x), vec4<bool>(global4.x, false, global2.b.x, false), vec4<bool>(global2.b.x, false, global4.x, global2.b.x)), global4.x), vec4<bool>(any(vec3<bool>(true, global2.b.x, false)) || global2.b.x, all(vec4<bool>(false, false, false, false)) != func_3(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], 0u, 0u, global0[_wgslsmith_index_u32(4294967295u, 28u)])).x, select(true, -25231i <= global2.a.x, true), func_2(global2.b.x == global2.b.x, Struct_1(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec2<bool>(global2.b.x, false)))), select(select(!vec4<bool>(global2.b.x, global4.x, global2.b.x, global4.x), vec4<bool>(global2.b.x, false, true, global4.x), global2.b.x), vec4<bool>(false, global4.x && global4.x, true, global2.b.x), global4.x));
    let var_1 = global1[_wgslsmith_index_u32(abs(~(((24307u << (u_input.a % 32u)) << (u_input.b % 32u)) ^ ~global0[_wgslsmith_index_u32(4294967295u, 28u)])), 17u)];
    let var_2 = true;
    global2 = Struct_1(vec3<i32>(var_1.a.x, 1i >> (u_input.b % 32u), -(~u_input.c.x)) & u_input.c.zxz, select(var_1.b, global2.b, !all(func_3(vec4<u32>(u_input.b, 0u, 0u, 1u)))));
    return Struct_1(abs(vec3<i32>(global2.a.x, _wgslsmith_mod_i32(-2147483647i, ~(-25765i)), global2.a.x)), vec2<bool>(global2.b.x, u_input.a >= _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(11176u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22960u, 28u)], 28u)], global0[_wgslsmith_index_u32(37195u, 28u)], 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 28u)], u_input.a, global0[_wgslsmith_index_u32(12745u, 28u)], 30240u)), vec4<u32>(28598u, 0u, global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(u_input.b, 28u)]) ^ vec4<u32>(33818u, global0[_wgslsmith_index_u32(u_input.b, 28u)], 20057u, global0[_wgslsmith_index_u32(u_input.b, 28u)]))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> i32 {
    global0 = array<u32, 28>();
    let var_0 = arg_1.x;
    let var_1 = func_1().b.x;
    var var_2 = arg_0;
    let var_3 = arg_1.zz;
    return arg_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(all(!(!vec3<bool>(false, global4.x, global2.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-783f)) * 1f) * _wgslsmith_f_op_f32(abs(-462f))) != -953f, false, u_input.c.x <= func_4(func_1(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2497f, -1531f, 293f, 1054f), vec4<f32>(438f, 1279f, 1000f, -759f), vec4<bool>(global4.x, global4.x, false, false)))), global1[_wgslsmith_index_u32(4294967295u, 17u)]));
    var var_1 = vec4<i32>(func_4(Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(9226i, u_input.c.x, -56512i), global2.a), func_1().b), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + vec4<f32>(1000f, -1275f, -380f, 1643f)), global1[_wgslsmith_index_u32(1u, 17u)]) ^ _wgslsmith_mult_i32(global2.a.x, -6341i), -func_4(Struct_1(firstLeadingBit(global2.a), !global2.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(942f, 1533f, 1000f, -1525f))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.b, _wgslsmith_sub_u32(4294967295u, 0u)), 17u)]), _wgslsmith_add_i32(0i, countOneBits(~31689i)), u_input.c.x);
    var var_2 = 23024u & u_input.a;
    var var_3 = vec4<bool>(false, false, global2.b.x || any(var_0.xy), any(!vec2<bool>(!var_0.x, var_0.x)));
    let var_4 = !(!((min(35707u, 16019u) < _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)]), vec2<u32>(9456u, u_input.a))) | var_0.x));
    let var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1418f, -755f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -479f))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-704f, -151f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, 809f)))))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-262f))), -292f) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2300f), -462f)));
    var var_6 = -u_input.c.yw;
    var var_7 = vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, var_6.x, var_6.x, -6094i), ~u_input.c) & _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.c, max(vec4<i32>(21715i, var_1.x, u_input.c.x, var_1.x), vec4<i32>(var_1.x, -12271i, -1i, -1i))), u_input.c), _wgslsmith_dot_vec2_i32(var_1.wx, _wgslsmith_mult_vec2_i32(vec2<i32>(3038i, global2.a.x), vec2<i32>(-2147483647i, global2.a.x)) & global2.a.zx));
    var var_8 = global1[_wgslsmith_index_u32(abs(select(~0u, firstTrailingBit(firstLeadingBit(global0[_wgslsmith_index_u32(0u, 28u)])), true)) ^ firstLeadingBit(u_input.a), 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.x)), _wgslsmith_div_i32(_wgslsmith_add_i32(-1i, var_1.x), var_8.a.x >> (u_input.b % 32u)), i32(-1i) * -firstLeadingBit(abs(var_7.x)));
}

