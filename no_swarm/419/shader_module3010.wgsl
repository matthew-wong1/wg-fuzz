struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(129745u, 69074u), vec2<u32>(3535u, 29343u), vec2<u32>(61105u, 16203u), vec2<u32>(0u, 38592u), vec2<u32>(70314u, 88233u), vec2<u32>(14016u, 0u), vec2<u32>(71555u, 1u), vec2<u32>(0u, 49016u), vec2<u32>(19532u, 0u), vec2<u32>(1u, 1u), vec2<u32>(46078u, 4294967295u), vec2<u32>(11205u, 29152u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 13030u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 71482u), vec2<u32>(51616u, 4294967295u), vec2<u32>(0u, 13035u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 61948u), vec2<u32>(34453u, 38273u), vec2<u32>(86241u, 46739u), vec2<u32>(42450u, 19760u));

var<private> global2: Struct_1;

var<private> global3: f32;

var<private> global4: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3() -> u32 {
    let var_0 = ~_wgslsmith_mod_u32(u_input.b & 0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(39989u, 25257u, 1u))) > ~(~u_input.b);
    let var_1 = _wgslsmith_dot_vec4_i32(min(vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(u_input.a, u_input.a), u_input.a), reverseBits(vec4<i32>(~global2.d.x, ~global0.b.x, -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, -2147483647i), vec3<i32>(global0.b.x, -45350i, global2.d.x)))) ^ ~u_input.a);
    var var_2 = ~vec3<u32>(4294967295u, u_input.b, ~abs(0u));
    global1 = array<vec2<u32>, 24>();
    var var_3 = Struct_1(-702f, vec2<i32>(1i, -14910i), select(vec3<bool>(_wgslsmith_f_op_f32(-global0.a) > _wgslsmith_f_op_f32(-1275f + global0.a), !(!var_0), false), select(global0.c, select(!global0.c, !global2.c, var_0), select(!global0.c, vec3<bool>(false, true, true), global2.c.x | global0.c.x)), global2.c), vec2<i32>(var_1 ^ global0.b.x, global2.d.x));
    return _wgslsmith_sub_u32(u_input.b, var_2.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: i32) -> vec3<i32> {
    var var_0 = -56116i;
    global4 = 21952u;
    let var_1 = vec3<u32>(u_input.b, u_input.c.x, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~(~u_input.c), vec4<u32>(func_3(), ~u_input.b, abs(u_input.b), u_input.c.x)), select(vec4<u32>(33310u, ~u_input.c.x, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c), _wgslsmith_dot_vec3_u32(u_input.c.yzz, vec3<u32>(u_input.c.x, 46227u, 66139u))), ~vec4<u32>(u_input.b, u_input.c.x, u_input.c.x, u_input.c.x) ^ ~u_input.c, !vec4<bool>(false, global0.c.x, false, global0.c.x))));
    let var_2 = _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(12113u, _wgslsmith_add_u32(var_1.x, var_1.x) | _wgslsmith_add_u32(u_input.c.x, var_1.x)), u_input.c.x ^ u_input.b), select(62289u, _wgslsmith_dot_vec3_u32(var_1, var_1), global0.c.x));
    global1 = array<vec2<u32>, 24>();
    return u_input.a.wyz;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<i32>) -> vec3<bool> {
    var var_0 = true;
    global4 = ~0u;
    global1 = array<vec2<u32>, 24>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-671f, -820f, 869f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1073f, 578f, -156f) - vec3<f32>(-1000f, -1387f, global0.a)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.a, -564f, global2.a))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1725f, global0.a, 1340f)))))));
    let var_2 = true;
    return global0.c;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>) -> f32 {
    var var_0 = global0.b.x;
    global4 = 22682u;
    global2 = Struct_1(1031f, _wgslsmith_mult_vec2_i32(vec2<i32>(firstTrailingBit(arg_0.d.x), max(0i << (u_input.c.x % 32u), -u_input.a.x)), vec2<i32>(select(u_input.d.x, firstLeadingBit(global0.d.x), true), reverseBits(_wgslsmith_div_i32(1i, -1928i)))), func_4(func_2(_wgslsmith_f_op_vec3_f32(-arg_1), 1i), u_input.a.zxy), countOneBits(vec2<i32>(reverseBits(-2147483647i), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, arg_0.a, arg_0.a) * arg_1), global0.d.x).x)));
    var var_1 = !(!vec4<bool>(!global0.c.x, false, !(true == arg_0.c.x), true));
    let var_2 = Struct_1(467f, min(countOneBits(abs(vec2<i32>(global2.b.x, global2.b.x))), vec2<i32>(_wgslsmith_div_i32(-1i, arg_0.d.x) & _wgslsmith_mod_i32(1651i, arg_0.d.x), ~(~15262i))), vec3<bool>(!all(var_1.zx), global2.c.x, all(!vec4<bool>(global0.c.x, arg_0.c.x, global0.c.x, true)) | var_1.x), -global0.b);
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    var var_1 = 49042i;
    global3 = global2.a;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(global2.a * -481f), ~(~u_input.a.yz), !vec3<bool>(-231f <= _wgslsmith_f_op_f32(func_1(Struct_1(1535f, vec2<i32>(-19739i, global2.d.x), vec3<bool>(global2.c.x, true, global0.c.x), vec2<i32>(0i, u_input.a.x)), vec3<f32>(1340f, global2.a, global2.a))), false, !(global2.c.x & global2.c.x)), firstTrailingBit(vec2<i32>(global2.b.x, global0.b.x)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, var_2.a, 1139f, global0.a)) * vec4<f32>(global2.a, -1000f, 312f, 602f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a, -1356f, -1000f, -228f) - vec4<f32>(-937f, var_2.a, global0.a, -159f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-165f, var_2.a, -437f, -1920f) + vec4<f32>(global0.a, var_2.a, global2.a, -858f))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, 3304f, 1831f, 1016f))))))));
    var var_4 = _wgslsmith_dot_vec4_u32(~(u_input.c >> (~(vec4<u32>(var_0.x, u_input.c.x, var_0.x, var_0.x) << (vec4<u32>(u_input.c.x, u_input.b, u_input.c.x, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u))), max(vec4<u32>(u_input.b, 18068u, 1u, 4294967295u) & ~(~vec4<u32>(var_0.x, 79594u, 1u, var_0.x)), countOneBits(abs(u_input.c))));
    global4 = func_3();
    var var_5 = select(select(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(global2.c.x, global0.c.x, var_2.c.x, global0.c.x), global0.c.x), select(vec4<bool>(global2.c.x, true, global0.c.x, var_2.c.x), vec4<bool>(false, true, global0.c.x, true), vec4<bool>(global2.c.x, true, var_2.c.x, true)), var_2.c.x && true), !(!select(vec4<bool>(global2.c.x, global2.c.x, true, var_2.c.x), vec4<bool>(true, true, global2.c.x, false), vec4<bool>(global0.c.x, global2.c.x, false, true))), vec4<bool>(select(true, global0.c.x || var_2.c.x, true), true | all(var_2.c.yz), global2.c.x, false)), !(!(!select(vec4<bool>(global2.c.x, global2.c.x, true, true), vec4<bool>(global0.c.x, true, true, true), vec4<bool>(false, global2.c.x, global2.c.x, global0.c.x)))), true);
    var var_6 = Struct_1(global2.a, _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(var_2.d | global2.d, u_input.d), -vec2<i32>(var_2.d.x, global2.b.x)) >> (firstLeadingBit(u_input.c.zw) % vec2<u32>(32u)), var_2.c, vec2<i32>(-18167i, -1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2186f)) * -433f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-536f, 1857f, var_3.x, 497f) * vec4<f32>(-589f, -196f, 1173f, global2.a)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, 1161f, 249f, var_6.a))))), _wgslsmith_f_op_f32(-var_2.a), ~(~u_input.c.zy));
}

