struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec2<f32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(6813i, -94950i, -4816i, i32(-2147483648), 0i, -19139i, -22688i, -18867i, 0i, 0i);

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-1433f, -1415f, 289f, -952f), 0i, vec2<f32>(-1392f, 170f), 523f, true);

var<private> global2: vec4<i32>;

var<private> global3: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec2<f32> {
    global1 = arg_0;
    global3 = _wgslsmith_mult_u32(u_input.d.x, ~(~u_input.b)) << (abs(86866u & u_input.a) % 32u);
    return global1.a.yz;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = Struct_2(vec2<bool>(global1.e, true));
    let var_1 = vec3<bool>(true, (~(~0u) | ~u_input.b) < _wgslsmith_sub_u32(firstTrailingBit(1u), _wgslsmith_add_u32(u_input.a, u_input.d.x)), any(!vec4<bool>(true | global1.e, arg_2.b != -36937i, true, !global1.e)));
    var var_2 = vec2<u32>(u_input.d.x, _wgslsmith_mod_u32(reverseBits(u_input.d.x), 95091u));
    var var_3 = vec4<i32>(1i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(select(~vec3<i32>(62361i, 38212i, -43874i), ~global2.yyw, var_0.a.x), global2.xzz), global2.yyz), global2.x, _wgslsmith_mod_i32(global2.x, -65767i));
    var_2 = vec2<u32>(1u, reverseBits(_wgslsmith_div_u32(select(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.a, 4294967295u), vec3<u32>(10829u, 25392u, 0u)), !global1.e), 76332u)));
    return select(var_1.xx, select(vec2<bool>(!(!arg_2.e), arg_1.e), vec2<bool>(!(arg_2.e || var_1.x), any(vec4<bool>(arg_1.e, true, global1.e, true))), false), any(vec2<bool>(arg_2.e, var_1.x & true)));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(875f * global1.c.x)) + -562f) + _wgslsmith_f_op_f32(-global1.a.x)));
    var var_1 = Struct_2(!func_4(-26793i, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.x, -501f, 685f, global1.c.x)), global2.x, _wgslsmith_f_op_vec2_f32(func_3(Struct_1(global1.a, 3852i, vec2<f32>(global1.d, -143f), global1.a.x, global1.e), global1.e)), -1794f, global1.e || false), Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.d, -1523f, global1.c.x, -1409f))), global0[_wgslsmith_index_u32(u_input.b, 10u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(-127f, 518f) + global1.c), -1644f, true)));
    global3 = 1u;
    global3 = ~(~(~73182u));
    var var_2 = -921f;
    return Struct_2(select(!vec2<bool>(!var_1.a.x, !global1.e), vec2<bool>(true, false), select(!vec2<bool>(global1.e, true), var_1.a, select(vec2<bool>(false, var_1.a.x), select(var_1.a, var_1.a, var_1.a), !var_1.a))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    var var_0 = u_input.c;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global1.a - global1.a), global1.a, false)))))));
    global2 = vec4<i32>(-abs(~(-37198i)), ~(-global0[_wgslsmith_index_u32(u_input.b, 10u)]) & _wgslsmith_sub_i32(firstTrailingBit(global2.x) ^ -30524i, _wgslsmith_dot_vec4_i32(select(vec4<i32>(global2.x, u_input.c, global1.b, -1i), vec4<i32>(2147483647i, 2147483647i, -10739i, 28186i), false), vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.a, 10u)], global2.x, 0i))), global2.x & -1i, _wgslsmith_dot_vec3_i32(global2.xzx, global2.wzy));
    global1 = Struct_1(global1.a, _wgslsmith_mult_i32(-2147483647i, _wgslsmith_sub_i32(-10910i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(1u, 10u)], global2.x), global2.yx, vec2<i32>(34898i, 2147483647i)), vec2<i32>(-18755i, 20474i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-567f, var_1.x)))), _wgslsmith_f_op_f32(global1.c.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(global1.a, u_input.c, var_1.wx, -141f, false), arg_1.a.x)).x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)))), !(arg_0.a.x && (global1.e & (33590u == u_input.b))));
    var var_2 = u_input.d;
    return func_4(global0[_wgslsmith_index_u32(4294967295u, 10u)], Struct_1(_wgslsmith_f_op_vec4_f32(global1.a * global1.a), u_input.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1071f, 327f)))), 920f, arg_1.a.x), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a)), _wgslsmith_dot_vec3_i32(global2.yxz >> (_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(var_2.x, var_2.x, 4294967295u)) % vec3<u32>(32u)), vec3<i32>(-1i) * -global2.yzw), _wgslsmith_f_op_vec2_f32(min(var_1.zz, _wgslsmith_div_vec2_f32(vec2<f32>(-616f, var_1.x), var_1.yz))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(max(var_1.x, 481f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), !arg_0.a.x)).x;
}

fn func_1() -> Struct_2 {
    global3 = _wgslsmith_clamp_u32(39006u, 4294967295u, ~(~(_wgslsmith_add_u32(u_input.d.x, 4294967295u) ^ reverseBits(u_input.b))));
    var var_0 = Struct_2(!vec2<bool>(global1.e, !global1.e));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global1.d + _wgslsmith_f_op_f32(-global1.c.x)), -205f));
    var_0 = Struct_2(vec2<bool>(!func_5(func_2(), func_2()), true));
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_1.x, -1292f, true))))), 218f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(547f)), _wgslsmith_f_op_f32(695f * 2334f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x * -291f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(var_1.x - global1.a.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -784f))))), u_input.c, _wgslsmith_f_op_vec2_f32(-global1.a.xw), -267f, true);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(972f, 793f, -1266f, global1.a.x) - vec4<f32>(global1.a.x, 971f, global1.a.x, global1.d))) + global1.a), global1.a, !global1.e)), ~countOneBits(0i), global1.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a.x))), false);
    let var_1 = func_1();
    var var_2 = vec4<bool>(false || var_1.a.x, any(var_1.a), func_5(func_2(), func_1()) & (32152u != u_input.b), true);
    var var_3 = var_0.a.xzx;
    let var_4 = vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -105f), -1000f, _wgslsmith_f_op_f32(-global1.a.x));
    var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(abs(var_0.a)), global1.b, _wgslsmith_f_op_vec2_f32(global1.a.yz * var_0.c), _wgslsmith_f_op_f32(min(-240f, 414f)), false), var_1.a.x)).x, var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1255f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(global1.a.x + 364f), 1303f))));
    var var_5 = select(~(~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d.x, u_input.a, u_input.d.x, 4294967295u), select(vec4<u32>(1758u, 1u, u_input.a, 10089u), vec4<u32>(u_input.b, u_input.d.x, u_input.b, u_input.d.x), vec4<bool>(var_1.a.x, var_0.e, true, true)))), ~(vec4<u32>(4294967295u, ~u_input.a, u_input.d.x, 4294967295u) & ~_wgslsmith_div_vec4_u32(vec4<u32>(5018u, u_input.a, u_input.b, 0u), vec4<u32>(u_input.a, u_input.b, 21224u, 21449u))), var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)), 1165f))), select(vec3<u32>(59930u, ~10070u, u_input.b), abs(~vec3<u32>(var_5.x, 74680u, u_input.a)) | vec3<u32>(countOneBits(0u), select(u_input.a, var_5.x, global1.e), 3335u), !(!var_0.e)), min(max(~global1.b, var_0.b), 11158i));
}

