struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec2<f32>(-492f, -1231f)), Struct_1(vec2<f32>(-1000f, -962f)), Struct_1(vec2<f32>(1173f, -238f)), Struct_1(vec2<f32>(-258f, -819f)), Struct_1(vec2<f32>(225f, 323f)), Struct_1(vec2<f32>(-1346f, 988f)), Struct_1(vec2<f32>(-444f, 298f)), Struct_1(vec2<f32>(174f, 222f)), Struct_1(vec2<f32>(-741f, 526f)), Struct_1(vec2<f32>(-1022f, -975f)), Struct_1(vec2<f32>(1051f, -1304f)), Struct_1(vec2<f32>(-812f, -326f)), Struct_1(vec2<f32>(1204f, -668f)));

var<private> global2: array<vec2<i32>, 22> = array<vec2<i32>, 22>(vec2<i32>(26867i, -60998i), vec2<i32>(-27385i, -1i), vec2<i32>(7878i, -1i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(33585i, -40812i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-67617i, i32(-2147483648)), vec2<i32>(1i, -1i), vec2<i32>(43442i, 27329i), vec2<i32>(0i, 1i), vec2<i32>(2147483647i, -1i), vec2<i32>(-20028i, -1i), vec2<i32>(-4927i, -5480i), vec2<i32>(6985i, -1i), vec2<i32>(-43162i, 2147483647i), vec2<i32>(2147483647i, 10677i), vec2<i32>(-36779i, 1i), vec2<i32>(i32(-2147483648), -61397i), vec2<i32>(30080i, 19390i), vec2<i32>(0i, 19622i), vec2<i32>(-35468i, -55887i), vec2<i32>(42324i, 76587i));

var<private> global3: Struct_1 = Struct_1(vec2<f32>(111f, -3017f));

var<private> global4: array<vec2<u32>, 29>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> vec3<i32> {
    let var_0 = 0u;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.a.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.a.x))))) - _wgslsmith_f_op_f32(-global3.a.x));
    return vec3<i32>(reverseBits(_wgslsmith_div_i32(2147483647i, _wgslsmith_add_i32(2147483647i, 0i))), 1i, _wgslsmith_mult_i32(1i >> (~var_0 % 32u), 0i)) & select(firstLeadingBit(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 2147483647i, -1i), vec3<i32>(53326i, -1i, 21683i)))), ~firstTrailingBit(vec3<i32>(-33345i, 1i, -1i)), all(vec4<bool>(true, var_1 < var_1, false, var_1 == 425f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<i32>, arg_2: f32) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(1u, firstTrailingBit(_wgslsmith_mult_u32(26933u, 12744u)), ~_wgslsmith_clamp_u32(abs(u_input.a), 1u, firstLeadingBit(1u)))), 13u)];
    global1 = array<Struct_1, 13>();
    let var_1 = true;
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_0, _wgslsmith_add_vec3_u32(abs(~firstLeadingBit(vec3<u32>(1u, 48990u, 573u))), select(_wgslsmith_mult_vec3_u32(global0.a, ~global0.a), abs(~global0.a), select(select(vec3<bool>(var_1, true, false), vec3<bool>(var_1, var_1, var_1), true), select(vec3<bool>(var_1, true, false), vec3<bool>(true, false, var_1), vec3<bool>(var_1, true, false)), select(vec3<bool>(true, false, var_1), vec3<bool>(true, false, var_1), vec3<bool>(true, false, false)))))), 13u)];
    var var_3 = any(!vec2<bool>(false, var_1));
    return -1084f;
}

fn func_1(arg_0: i32) -> Struct_2 {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(632f - 893f))), _wgslsmith_f_op_f32(global3.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1951f * global3.a.x)))));
    var var_1 = -func_2();
    let var_2 = ~_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(global0.b, 77619u, global0.a.x, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u)), (vec4<u32>(286u, 4294967295u, 4294967295u, 4294967295u) | vec4<u32>(28388u, global0.b, 13339u, 1u)) & ~vec4<u32>(global0.a.x, global0.b, global0.a.x, u_input.a)), _wgslsmith_mod_vec4_u32((vec4<u32>(global0.b, u_input.a, 30522u, global0.a.x) >> (vec4<u32>(44043u, 0u, u_input.a, 83199u) % vec4<u32>(32u))) ^ ~vec4<u32>(43675u, u_input.a, 7547u, 0u), abs(~vec4<u32>(u_input.a, global0.b, 1u, 94621u))));
    var var_3 = Struct_2(global0.a, _wgslsmith_mod_u32(u_input.a << (~max(27423u, 28295u) % 32u), 14385u));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - global3.a.x) - 324f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~vec3<u32>(global0.a.x, var_2.x, 13336u), vec3<i32>(var_1.x, 0i, arg_0) << (vec3<u32>(global0.b, var_3.b, 1u) % vec3<u32>(32u)), _wgslsmith_f_op_f32(ceil(var_0.a.x)))) + _wgslsmith_f_op_f32(sign(686f))) * -839f));
    return Struct_2(reverseBits(var_3.a), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_2.yw | vec2<u32>(var_3.a.x, 1u), var_3.a.yz) & max(vec2<u32>(var_2.x, 1u), _wgslsmith_mult_vec2_u32(var_2.zy, vec2<u32>(var_2.x, var_2.x))), global0.a.yz));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 22>();
    global2 = array<vec2<i32>, 22>();
    let var_0 = func_1(~(-(~_wgslsmith_dot_vec4_i32(vec4<i32>(51621i, 7186i, -101480i, 2147483647i), vec4<i32>(-1i, -20643i, -125938i, -34612i)))));
    global3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(global3.a)))))) + _wgslsmith_f_op_vec2_f32(-global3.a)));
    var var_1 = Struct_2(vec3<u32>(_wgslsmith_clamp_u32(~min(u_input.a, global0.b), 55670u, 4294967295u << (countOneBits(0u) % 32u)), ~global0.a.x, 1u), 1u);
    var var_2 = var_0;
    global2 = array<vec2<i32>, 22>();
    let var_3 = Struct_2(var_0.a, _wgslsmith_add_u32(1u, var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(vec4<u32>(select(~var_1.a.x, ~u_input.a, true), u_input.a, ~0u, global0.b), firstTrailingBit(~(~vec4<u32>(0u, var_2.a.x, 41459u, var_0.a.x)))), select(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, global0.b, 0u, 4294967295u) << (vec4<u32>(var_0.b, 41043u, 1017u, global0.b) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mult_u32(u_input.a, 76363u), ~28273u, var_0.b, 4294967295u)), ~6882u, true), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a.x), 1029f))), global3.a.x, !(any(vec2<bool>(false, true)) & false))));
}

