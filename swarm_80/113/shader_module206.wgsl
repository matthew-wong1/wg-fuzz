struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 28>;

var<private> global1: vec2<i32>;

var<private> global2: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global3: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(Struct_1(1i)), Struct_4(Struct_1(2147483647i)), Struct_4(Struct_1(1i)), Struct_4(Struct_1(47378i)), Struct_4(Struct_1(-19743i)), Struct_4(Struct_1(-1i)), Struct_4(Struct_1(-14218i)), Struct_4(Struct_1(-1i)), Struct_4(Struct_1(-26916i)), Struct_4(Struct_1(-29239i)), Struct_4(Struct_1(0i)), Struct_4(Struct_1(2147483647i)), Struct_4(Struct_1(i32(-2147483648))), Struct_4(Struct_1(6659i)), Struct_4(Struct_1(-1i)), Struct_4(Struct_1(28513i)), Struct_4(Struct_1(10797i)), Struct_4(Struct_1(31075i)), Struct_4(Struct_1(2147483647i)), Struct_4(Struct_1(2147483647i)), Struct_4(Struct_1(-1i)), Struct_4(Struct_1(1i)), Struct_4(Struct_1(65683i)), Struct_4(Struct_1(13023i)), Struct_4(Struct_1(-3155i)), Struct_4(Struct_1(i32(-2147483648))), Struct_4(Struct_1(-25849i)));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_2) -> vec2<i32> {
    var var_0 = vec4<bool>(arg_1.x, any(!vec3<bool>(global2.x, arg_1.x, all(arg_1.wwy))), !(all(vec2<bool>(arg_1.x, true)) && false), u_input.a.x != u_input.a.x);
    let var_1 = u_input.a.x;
    global3 = array<Struct_4, 27>();
    global1 = (~(~firstTrailingBit(vec2<i32>(-65985i, global1.x))) << (countOneBits(u_input.a.yx ^ u_input.a.xy) % vec2<u32>(32u))) >> (u_input.a.zx % vec2<u32>(32u));
    let var_2 = global3[_wgslsmith_index_u32(var_1, 27u)];
    return _wgslsmith_add_vec2_i32(vec2<i32>(global1.x, _wgslsmith_mult_i32(_wgslsmith_mult_i32(arg_2.d.a | 2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.a.a, 1i, arg_2.d.a, global1.x), vec4<i32>(1i, arg_2.b.a, arg_2.b.a, -3585i))), _wgslsmith_mod_i32(global1.x, countOneBits(arg_2.c.a)))), vec2<i32>(22009i, global1.x >> ((~u_input.a.x | firstLeadingBit(var_1)) % 32u)));
}

fn func_2() -> Struct_1 {
    global2 = !select(vec4<bool>(global2.x, all(global2.yzx), global2.x, (global1.x ^ global1.x) > ~(-40491i)), vec4<bool>(!global2.x, false, global2.x, ~u_input.a.x >= 826u), global2.x | !global2.x);
    let var_0 = Struct_2(_wgslsmith_dot_vec2_u32(u_input.a.yz, ~u_input.a.xy), Struct_1(global1.x), Struct_1(1i | ~select(1i, 2147483647i, global2.x)), Struct_1(5094i));
    global1 = ~select(_wgslsmith_mod_vec2_i32(countOneBits(firstLeadingBit(vec2<i32>(0i, global1.x))), vec2<i32>(global1.x, -10292i)), -func_3(_wgslsmith_f_op_f32(-255f - 520f), vec4<bool>(false, false, true, true), Struct_2(var_0.a, Struct_1(30970i), var_0.d, Struct_1(global1.x))), !any(vec4<bool>(false, true, false, global2.x)) & all(global2.xz));
    var var_1 = abs(_wgslsmith_mult_vec2_u32(u_input.a.xz, _wgslsmith_mod_vec2_u32(u_input.a.zy, select(vec2<u32>(var_0.a, 27552u), vec2<u32>(48069u, var_0.a), false) ^ u_input.a.yy)));
    global0 = array<vec4<u32>, 28>();
    return Struct_1(i32(-1i) * -(50021i & min(28686i, var_0.c.a)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec3<bool>) -> u32 {
    global0 = array<vec4<u32>, 28>();
    var var_0 = Struct_1(2147483647i);
    var_0 = Struct_1(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.x | global1.x, _wgslsmith_sub_i32(-44498i, 18496i)), vec2<i32>(_wgslsmith_clamp_i32(var_0.a, 0i, 1i), 0i))));
    var var_1 = Struct_1(~(-2147483647i));
    var var_2 = func_2();
    return 0u;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: i32) -> u32 {
    global1 = -_wgslsmith_div_vec2_i32((vec2<i32>(-1i) * -vec2<i32>(2147483647i, -8098i)) | ~arg_1.zz, arg_1.zx);
    global2 = select(vec4<bool>(abs(4294967295u) != u_input.a.x, true, false, true), select(!select(vec4<bool>(false, false, false, true), !vec4<bool>(global2.x, global2.x, global2.x, global2.x), global2.x), vec4<bool>(_wgslsmith_add_u32(u_input.a.x, u_input.a.x) < 4294967295u, !all(vec3<bool>(true, global2.x, false)), global2.x, !(false || global2.x)), vec4<bool>(any(global2.ywx), all(!global2.yyw), any(global2.zz), !(global2.x && true))), any(!global2.yw));
    global1 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(-2147483647i, 42634i), -arg_1.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_1.x, -2147483647i), vec3<i32>(18273i, global1.x, 12694i) & arg_1.yzy), _wgslsmith_sub_i32(_wgslsmith_add_i32(global1.x, global1.x), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, -34380i, arg_1.x), arg_1.yyx)), _wgslsmith_mod_i32(arg_2, 2147483647i) & arg_1.x), abs(vec4<i32>(~arg_1.x, -8909i, 57473i, -1i))), global1.x);
    let var_0 = Struct_1((_wgslsmith_sub_i32(~0i, i32(-1i) * -4155i) << ((_wgslsmith_add_u32(u_input.a.x, 80500u) | (u_input.a.x << (2723u % 32u))) % 32u)) ^ 51193i);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(521f, -651f)))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1908f, _wgslsmith_f_op_f32(-1604f - 494f)) - vec2<f32>(659f, _wgslsmith_f_op_f32(trunc(740f))))), ~vec4<i32>(~10033i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global1.x, global1.x), vec3<i32>(global1.x, -1i, -2147483647i)), select(62948i, global1.x, true), ~global1.x) ^ ~(-vec4<i32>(2147483647i, global1.x, -2147483647i, global1.x) >> (global0[_wgslsmith_index_u32(func_1(Struct_2(0u, Struct_1(global1.x), Struct_1(global1.x), Struct_1(37467i)), global3[_wgslsmith_index_u32(1u, 27u)], vec3<bool>(global2.x, global2.x, global2.x)), 28u)] % vec4<u32>(32u))), global1.x), 27u)];
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1186f) * _wgslsmith_f_op_f32(max(-125f, -1000f))))))));
    global3 = array<Struct_4, 27>();
    var_0 = global3[_wgslsmith_index_u32(54397u, 27u)];
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1))), 416f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 56571u, u_input.a.x), u_input.a << (vec3<u32>(u_input.a.x, 77047u, u_input.a.x) % vec3<u32>(32u)))), _wgslsmith_clamp_u32(49371u, ~24160u, ~u_input.a.x) & 1u), var_1, ~(82169u & u_input.a.x), vec3<i32>(-2147483647i, -reverseBits(~16820i), firstTrailingBit(-_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, -54890i, 1i), vec3<i32>(var_0.a.a, var_0.a.a, global1.x)))));
}

