struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(i32(-2147483648), -533f, vec3<bool>(true, true, true), vec2<u32>(75241u, 76500u)), Struct_1(11707i, -1532f, vec3<bool>(true, true, true), vec2<u32>(28930u, 4294967295u)));

var<private> global1: vec2<i32>;

var<private> global2: u32;

var<private> global3: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(Struct_1(14528i, 910f, vec3<bool>(true, true, true), vec2<u32>(92172u, 88258u)), Struct_1(38430i, -461f, vec3<bool>(false, false, true), vec2<u32>(4294967295u, 4294967295u))), Struct_2(Struct_1(35562i, -1590f, vec3<bool>(false, false, false), vec2<u32>(0u, 29594u)), Struct_1(16966i, -573f, vec3<bool>(false, true, true), vec2<u32>(14471u, 4294967295u))), Struct_2(Struct_1(2147483647i, -1000f, vec3<bool>(false, true, false), vec2<u32>(4294967295u, 7760u)), Struct_1(1708i, 954f, vec3<bool>(false, false, true), vec2<u32>(28737u, 1u))), Struct_2(Struct_1(i32(-2147483648), 364f, vec3<bool>(true, true, true), vec2<u32>(50452u, 0u)), Struct_1(16549i, -144f, vec3<bool>(false, true, false), vec2<u32>(0u, 354u))), Struct_2(Struct_1(23092i, -1775f, vec3<bool>(true, false, false), vec2<u32>(38876u, 37534u)), Struct_1(19302i, -211f, vec3<bool>(true, false, true), vec2<u32>(71955u, 4294967295u))), Struct_2(Struct_1(-41928i, 240f, vec3<bool>(true, true, false), vec2<u32>(14167u, 28376u)), Struct_1(2147483647i, 129f, vec3<bool>(true, true, false), vec2<u32>(17500u, 60752u))), Struct_2(Struct_1(0i, 473f, vec3<bool>(true, true, false), vec2<u32>(1u, 42019u)), Struct_1(32441i, 591f, vec3<bool>(true, false, false), vec2<u32>(25607u, 7148u))), Struct_2(Struct_1(27644i, -1000f, vec3<bool>(false, true, true), vec2<u32>(24431u, 4294967295u)), Struct_1(2147483647i, -1889f, vec3<bool>(true, false, true), vec2<u32>(4294967295u, 4294967295u))), Struct_2(Struct_1(i32(-2147483648), -292f, vec3<bool>(false, true, false), vec2<u32>(4294967295u, 4294967295u)), Struct_1(19162i, -123f, vec3<bool>(false, true, true), vec2<u32>(1u, 1u))), Struct_2(Struct_1(-43932i, -468f, vec3<bool>(true, false, true), vec2<u32>(13544u, 60163u)), Struct_1(-46776i, 710f, vec3<bool>(true, false, false), vec2<u32>(32707u, 0u))), Struct_2(Struct_1(-32831i, -1419f, vec3<bool>(false, true, true), vec2<u32>(83835u, 0u)), Struct_1(29773i, -1724f, vec3<bool>(true, true, true), vec2<u32>(4294967295u, 4294967295u))), Struct_2(Struct_1(-3967i, -1960f, vec3<bool>(false, false, false), vec2<u32>(0u, 4294967295u)), Struct_1(i32(-2147483648), -782f, vec3<bool>(true, true, false), vec2<u32>(0u, 4294967295u))));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.a.b, global0.a.b)) * 757f)))));
    global3 = array<Struct_2, 12>();
    var var_1 = _wgslsmith_div_i32(-70373i, _wgslsmith_sub_i32(u_input.c.x, 1i)) == (i32(-1i) * -global1.x);
    let var_2 = global0.a;
    let var_3 = vec2<f32>(global0.b.b, _wgslsmith_div_f32(1054f, _wgslsmith_f_op_f32(ceil(-1459f))));
    return Struct_2(global0.a, Struct_1(-u_input.c.x, global0.a.b, vec3<bool>(global0.b.c.x, var_2.a > 2147483647i, true), global0.b.d));
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    global0 = Struct_2(func_2(u_input.c.x).b, func_2(-u_input.c.x).b);
    return reverseBits(-(-countOneBits(vec2<i32>(23754i, 0i)) & (~vec2<i32>(u_input.c.x, global1.x) & min(u_input.c.wx, vec2<i32>(global0.b.a, global0.b.a)))));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = firstLeadingBit(0u);
    var var_1 = func_2(firstLeadingBit(-2714i));
    global1 = (_wgslsmith_mod_vec2_i32(func_3(Struct_1(1i, global0.a.b, arg_1, vec2<u32>(1u, 0u))), u_input.c.yx) ^ -_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.c.xx, vec2<i32>(global1.x, global0.b.a)), firstTrailingBit(u_input.c.xw))) << (arg_2.a.d % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -290f, _wgslsmith_f_op_f32(f32(-1f) * -573f), _wgslsmith_f_op_f32(var_1.b.b * var_1.b.b)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_2.a.b, 947f, -277f) + vec4<f32>(global0.a.b, 1000f, arg_0.x, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(286f, 817f, 383f, -258f)))), true))));
    let var_3 = global0.b;
    return Struct_2(Struct_1(-_wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_1.a.a, u_input.c.x, 23268i)), u_input.c.yxy), _wgslsmith_f_op_f32(step(var_2.x, arg_0.x)), select(select(select(arg_2.a.c, var_1.a.c, vec3<bool>(false, global0.a.c.x, var_3.c.x)), vec3<bool>(true, var_1.a.c.x, true), any(vec4<bool>(false, arg_1.x, true, true))), select(select(arg_2.b.c, vec3<bool>(false, true, false), vec3<bool>(var_3.c.x, arg_1.x, true)), vec3<bool>(var_3.c.x, true, true), !global0.a.c), arg_2.a.c), arg_2.a.d), var_1.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<u32>) -> f32 {
    let var_0 = vec2<bool>(select(global0.a.c.x, global0.a.c.x, global1.x == -45373i), (global0.b.c.x & any(!vec3<bool>(global0.a.c.x, true, arg_0.b.c.x))) & func_2(func_3(func_1(vec2<f32>(arg_0.a.b, arg_0.a.b), vec3<bool>(false, false, arg_1.a.c.x), arg_1).b).x).a.c.x);
    global3 = array<Struct_2, 12>();
    global0 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1.a.d.x, ~1u), 12u)];
    var var_1 = func_2(~1i).a;
    var var_2 = all(select(select(select(select(vec4<bool>(var_1.c.x, arg_0.b.c.x, global0.b.c.x, arg_1.a.c.x), vec4<bool>(true, arg_1.a.c.x, false, arg_1.b.c.x), vec4<bool>(arg_0.b.c.x, false, var_1.c.x, global0.b.c.x)), !vec4<bool>(false, true, false, var_1.c.x), !arg_1.a.c.x), !vec4<bool>(false, true, true, var_0.x), all(func_1(vec2<f32>(global0.a.b, arg_0.a.b), global0.a.c, arg_1).b.c)), !select(select(vec4<bool>(true, true, arg_1.b.c.x, false), vec4<bool>(var_0.x, global0.a.c.x, var_1.c.x, global0.b.c.x), vec4<bool>(var_0.x, true, arg_0.a.c.x, arg_1.b.c.x)), vec4<bool>(true, true, true, global0.b.c.x), vec4<bool>(true, true, true, true)), vec4<bool>(!all(arg_0.b.c), all(arg_1.a.c.yx), global0.a.c.x & var_1.c.x, true)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-981f - _wgslsmith_f_op_f32(global0.b.b * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_0.b.b, -784f)), _wgslsmith_f_op_f32(-155f * -972f)))) + global0.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(718f * global0.b.b) - _wgslsmith_f_op_f32(-global0.a.b)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(global3[_wgslsmith_index_u32(u_input.a, 12u)], func_1(vec2<f32>(506f, global0.a.b), vec3<bool>(global0.b.c.x, global0.b.c.x, global0.a.c.x), global3[_wgslsmith_index_u32(0u, 12u)]), ~vec4<u32>(u_input.a, 31628u, 0u, 4294967295u))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.b.b - global0.b.b), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-205f, _wgslsmith_f_op_f32(f32(-1f) * -672f)));
}

