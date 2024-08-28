struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 27>;

var<private> global1: array<f32, 13> = array<f32, 13>(-539f, -775f, 666f, -544f, -1698f, 477f, -420f, 226f, 2790f, -1754f, 1831f, -773f, -621f);

var<private> global2: array<bool, 12> = array<bool, 12>(true, false, true, false, true, false, true, false, true, false, false, true);

var<private> global3: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(1000f), Struct_3(-614f), Struct_3(1473f), Struct_3(-829f), Struct_3(1532f), Struct_3(-1000f), Struct_3(513f), Struct_3(-685f), Struct_3(-185f), Struct_3(-1000f), Struct_3(-1582f), Struct_3(-420f), Struct_3(173f), Struct_3(-1844f), Struct_3(-1000f), Struct_3(-273f), Struct_3(371f), Struct_3(-1209f), Struct_3(336f), Struct_3(339f), Struct_3(180f), Struct_3(-788f), Struct_3(-870f), Struct_3(-230f));

var<private> global4: vec2<i32> = vec2<i32>(17342i, 1i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<u32> {
    global4 = -u_input.b.zx;
    global3 = array<Struct_3, 24>();
    global0 = array<Struct_2, 27>();
    let var_0 = u_input.a.x;
    let var_1 = Struct_4(u_input.a.x);
    return reverseBits(select(vec4<u32>(var_1.a, var_0, ~var_1.a, 1u) | reverseBits(~vec4<u32>(1u, 64628u, 1u, var_1.a)), ~reverseBits(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 60018u)) >> ((vec4<u32>(30563u, var_1.a, 4294967295u, 22244u) | ~vec4<u32>(49386u, 4294967295u, var_0, u_input.a.x)) % vec4<u32>(32u)), !(!select(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 12u)], global2[_wgslsmith_index_u32(36177u, 12u)], global2[_wgslsmith_index_u32(var_0, 12u)], false), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 12u)], true, true), global2[_wgslsmith_index_u32(67639u, 12u)]))));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: u32, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(~(-1i), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~func_3(), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2, 1u, arg_2, 1u) << (vec4<u32>(1u, u_input.a.x, u_input.a.x, 1u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(0u, arg_2, arg_2, 1u), vec4<u32>(2370u, arg_2, 64943u, arg_2)))), 13u)], _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a, _wgslsmith_div_vec3_u32(vec3<u32>(44893u, u_input.a.x, 4294967295u), u_input.a)), vec3<u32>(min(arg_2, 33703u), select(0u, 0u, arg_3), firstLeadingBit(u_input.a.x)))), !vec3<bool>(select(false, true & arg_3, true), arg_3, false));
    global3 = array<Struct_3, 24>();
    var var_1 = -vec4<i32>(-global4.x, _wgslsmith_clamp_i32(abs(global4.x), u_input.b.x, _wgslsmith_div_i32(-1i, 3076i) ^ firstTrailingBit(-2147483647i)), u_input.b.x, var_0.a.a);
    global2 = array<bool, 12>();
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_2, ~(~_wgslsmith_dot_vec3_u32(~u_input.a, select(vec3<u32>(arg_2, arg_2, var_0.a.c.x), vec3<u32>(var_0.a.c.x, 117847u, 0u), vec3<bool>(true, true, var_0.b.x))))), 27u)];
    return var_2.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: f32) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(arg_2.a.c.x, 27u)];
    global4 = vec2<i32>(-2147483647i, arg_1.x ^ abs(0i));
    global0 = array<Struct_2, 27>();
    var var_1 = arg_0.c.yx;
    var var_2 = vec4<i32>(-(i32(-1i) * -u_input.b.x), -18312i, _wgslsmith_clamp_i32(arg_2.a.a, -1i, arg_2.a.a), -16992i | max(arg_1.x, arg_0.a));
    return arg_2;
}

fn func_1(arg_0: u32, arg_1: f32) -> StorageBuffer {
    let var_0 = func_4(func_2((~vec2<i32>(0i, -17647i) >> (u_input.a.yx % vec2<u32>(32u))) & ~(u_input.b.zz | vec2<i32>(-26827i, 3845i)), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(19114u, u_input.a.x) ^ (arg_0 >> (7657u % 32u)), _wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.a), u_input.a | u_input.a)), 12u)], 66089u, !(140f == global1[_wgslsmith_index_u32(u_input.a.x, 13u)]) | any(vec2<bool>(true, global2[_wgslsmith_index_u32(49079u, 12u)]))), vec3<i32>(_wgslsmith_clamp_i32(~u_input.b.x, i32(-1i) * -2147483647i, select(global4.x, global4.x, false)), global4.x, ~(-3492i)) | u_input.b, global0[_wgslsmith_index_u32(arg_0, 27u)], 3194f);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1251f, global1[_wgslsmith_index_u32(u_input.a.x, 13u)], var_0.a.b, 132f)))), vec4<f32>(-893f, _wgslsmith_f_op_f32(-var_0.a.b), arg_1, _wgslsmith_f_op_f32(min(-1658f, var_0.a.b))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1166f, var_0.a.b, -146f, 727f))))))));
    global0 = array<Struct_2, 27>();
    var var_2 = abs(vec4<u32>(14520u, _wgslsmith_mult_u32(u_input.a.x, ~(~0u)), _wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a.x, var_0.a.c.x), func_4(Struct_1(-2147483647i, var_0.a.b, vec3<u32>(var_0.a.c.x, 1u, u_input.a.x)), vec3<i32>(var_0.a.a, 65812i, u_input.b.x), var_0, -113f).a.c.x)), abs(var_0.a.c.x | var_0.a.c.x)));
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_0.a.c.x, ~var_2.x, var_2.x), ~8811u), 24u)];
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b * var_0.a.b))))), vec2<u32>(u_input.a.x, _wgslsmith_dot_vec2_u32(reverseBits(select(u_input.a.zy, vec2<u32>(u_input.a.x, 0u), var_0.b.x)), _wgslsmith_mod_vec2_u32(var_2.wy ^ u_input.a.yx, _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 0u), u_input.a.zx)))), _wgslsmith_clamp_vec4_i32(-vec4<i32>(~u_input.b.x, global4.x, countOneBits(2147483647i), i32(-1i) * -4641i), -_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(u_input.b.x, u_input.b.x, -27794i, -2147483647i)), vec4<i32>(2147483647i, var_0.a.a, -9814i, global4.x) | vec4<i32>(global4.x, -2147483647i, var_0.a.a, 9688i)), select(select(vec4<i32>(1953i, 4561i, u_input.b.x, 34618i), vec4<i32>(-1i, 57315i, u_input.b.x, 2147483647i), global2[_wgslsmith_index_u32(var_0.a.c.x, 12u)]) & vec4<i32>(var_0.a.a, global4.x, 37944i, -24625i), min(_wgslsmith_mod_vec4_i32(vec4<i32>(37959i, -54097i, 12512i, -1i), vec4<i32>(2147483647i, 1i, u_input.b.x, 63198i)), vec4<i32>(2147483647i, var_0.a.a, 0i, 2147483647i)), var_0.b.x)), min(u_input.b.yz, max(vec2<i32>(27287i, u_input.b.x), reverseBits(vec2<i32>(u_input.b.x, 1i))) | u_input.b.xx));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(firstTrailingBit(~u_input.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 13u)], -518f))))));
}

