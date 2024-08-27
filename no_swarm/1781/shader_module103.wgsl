struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20> = array<u32, 20>(30489u, 4294967295u, 98974u, 42222u, 1u, 93823u, 28923u, 0u, 0u, 1u, 4294967295u, 46014u, 64616u, 15819u, 48114u, 114612u, 1038u, 1u, 22902u, 108205u);

var<private> global1: Struct_1;

var<private> global2: vec3<u32> = vec3<u32>(68210u, 47123u, 47955u);

var<private> global3: vec3<f32> = vec3<f32>(284f, 257f, -854f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_1) -> vec4<i32> {
    return max(max(~max(vec4<i32>(16410i, 1i, -1i, arg_0.a) | vec4<i32>(arg_3.a, -2147483647i, arg_2, -25634i), u_input.d), -(~(-u_input.d))), firstTrailingBit(firstTrailingBit(vec4<i32>(global1.a, ~global1.a, ~12935i, -arg_0.a))));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: u32) -> vec4<i32> {
    let var_0 = arg_0.b;
    global1 = var_0;
    let var_1 = Struct_2(var_0, var_0);
    return _wgslsmith_div_vec4_i32(vec4<i32>(~(_wgslsmith_mult_i32(1i, 0i) | ~arg_0.b.a), -arg_0.b.a, var_1.a.a, (-10225i >> (_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(arg_1, 20u)], arg_2) % 32u)) | u_input.b.x), ((vec4<i32>(-1i) * -vec4<i32>(var_0.a, global1.a, var_1.b.a, -2147483647i)) ^ func_3(Struct_1(9858i, vec4<bool>(global1.b.x, arg_0.b.c, false, true), var_1.b.b.x), vec4<f32>(-1000f, 675f, -157f, global3.x), 2147483647i, var_1.b)) | vec4<i32>(reverseBits(-44491i), global1.a, countOneBits(-1i), reverseBits(_wgslsmith_mod_i32(2147483647i, -20674i))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(f32(-1f) * -135f)) + global3.x), -1053f)) == global3.x;
    var var_1 = arg_1.a;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global3.xx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1397f, _wgslsmith_f_op_f32(abs(-240f))))));
    var_2 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_2.x)), var_2.x), vec2<f32>(689f, var_2.x)));
    global1 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-17107i, countOneBits(1i)), _wgslsmith_clamp_i32(global1.a << (4294967295u % 32u), _wgslsmith_mod_i32(-34329i, 838i), arg_1.b.a), 1i), vec3<i32>(abs(reverseBits(-1i)), u_input.d.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.b.x, var_1.a), _wgslsmith_dot_vec2_i32(arg_0.ww, vec2<i32>(arg_0.x, arg_1.b.a))))), var_1.b, all(!select(!vec3<bool>(true, global1.c, false), select(global1.b.yxy, arg_1.a.b.xxz, vec3<bool>(var_1.c, false, true)), global1.b.xyw)));
    return arg_1.a;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(4162i, vec4<bool>(global1.b.x, true, abs(global0[_wgslsmith_index_u32(u_input.c.x, 20u)] >> (4294967295u % 32u)) >= 22038u, false), false);
    return func_4(-max(firstLeadingBit(vec4<i32>(global1.a, global1.a, 30186i, 7471i)), _wgslsmith_div_vec4_i32(func_2(Struct_2(var_0, Struct_1(u_input.b.x, var_0.b, true)), global0[_wgslsmith_index_u32(0u, 20u)], global2.x), u_input.d)), Struct_2(var_0, var_0));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(430f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-105f * -1304f) * _wgslsmith_div_f32(-1182f, -548f)), global3.x))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1458f, global3.x, 197f)))) - vec3<f32>(-1910f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)))));
    var var_1 = func_1();
    var var_2 = arg_2.b;
    var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-537f + 870f), 1f, _wgslsmith_f_op_f32(409f * var_0.x))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(var_0.x * -707f), _wgslsmith_f_op_f32(f32(-1f) * -1185f), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, global3.x, 520f) + vec3<f32>(var_0.x, global3.x, -1304f))), true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-1376f - -398f)), _wgslsmith_f_op_f32(1f * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) - 1452f)) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.x, -499f, var_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, -1275f, global3.x) - vec3<f32>(1000f, var_0.x, 1109f)), global1.c)))))));
    global1 = arg_2.a;
    return Struct_2(arg_1, arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec3<f32>(384f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(select(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-851f + global3.x)), u_input.d.x == 1i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2122f)));
    let var_0 = func_5(func_1(), Struct_1(u_input.d.x, global1.b, global1.c), Struct_2(func_1(), func_4(u_input.d, Struct_2(Struct_1(-1i, vec4<bool>(false, true, false, false), global1.b.x), Struct_1(global1.a, global1.b, true)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(round(global3.yy));
    var var_2 = func_5(var_0.a, func_4(_wgslsmith_div_vec4_i32(reverseBits(u_input.d ^ u_input.d), _wgslsmith_div_vec4_i32(-u_input.d, u_input.d)), var_0), func_5(func_5(var_0.b, func_5(Struct_1(var_0.b.a, vec4<bool>(var_0.b.c, true, true, global1.c), var_0.b.c), Struct_1(0i, var_0.a.b, global1.b.x), func_5(Struct_1(var_0.b.a, vec4<bool>(false, global1.c, false, true), var_0.b.c), Struct_1(-2147483647i, var_0.a.b, false), Struct_2(Struct_1(-385i, global1.b, true), Struct_1(2147483647i, vec4<bool>(false, false, var_0.b.b.x, false), var_0.b.c)))).a, func_5(func_1(), func_4(u_input.d, var_0), Struct_2(Struct_1(0i, vec4<bool>(false, false, true, global1.c), true), Struct_1(var_0.b.a, vec4<bool>(global1.b.x, global1.b.x, var_0.a.b.x, global1.c), global1.c)))).a, func_5(func_1(), Struct_1(-global1.a, !vec4<bool>(true, true, false, var_0.b.b.x), func_1().b.x), Struct_2(var_0.b, Struct_1(global1.a, vec4<bool>(global1.c, var_0.a.b.x, var_0.a.b.x, true), global1.b.x))).b, func_5(Struct_1(func_3(Struct_1(2147483647i, var_0.a.b, false), vec4<f32>(var_1.x, -679f, -1034f, global3.x), -2147483647i, var_0.a).x, vec4<bool>(false, global1.c, var_0.b.b.x, false), !global1.c), Struct_1(var_0.a.a, var_0.a.b, !var_0.a.c), Struct_2(var_0.a, Struct_1(-2147483647i, vec4<bool>(global1.b.x, global1.c, global1.c, global1.c), global1.b.x))))).b.b;
    let var_3 = var_0;
    global2 = _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(firstLeadingBit(u_input.c.xxz), vec3<u32>(u_input.a, 1u, 5675u) << (vec3<u32>(u_input.e.x, 4294967295u, 145607u) % vec3<u32>(32u))), ~u_input.c.zyy), ~u_input.c.zyx, ~(~(~u_input.c.wxx))) << (vec3<u32>(_wgslsmith_mult_u32(~1u, global2.x), 17323u, global2.x) % vec3<u32>(32u));
    let var_4 = Struct_1(~0i, var_0.b.b, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(758f - -149f)))));
}

