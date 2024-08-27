struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec3<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 74914i;

var<private> global1: array<vec3<u32>, 18>;

var<private> global2: vec3<i32> = vec3<i32>(0i, 0i, -30512i);

var<private> global3: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(-1919f, vec3<i32>(-1i, 1i, i32(-2147483648)), vec2<i32>(-1i, 39385i)), Struct_1(-555f, vec3<i32>(0i, 2147483647i, -37240i), vec2<i32>(20417i, 58174i)), Struct_1(-1336f, vec3<i32>(1i, -1i, -1i), vec2<i32>(46201i, 2147483647i)), Struct_1(-843f, vec3<i32>(42493i, 1i, 0i), vec2<i32>(8546i, -1i)), Struct_1(-141f, vec3<i32>(-6310i, 1i, 56037i), vec2<i32>(i32(-2147483648), 1i)), Struct_1(1000f, vec3<i32>(-66046i, 8490i, -54335i), vec2<i32>(-44985i, 1i)), Struct_1(653f, vec3<i32>(57262i, 0i, 33113i), vec2<i32>(22036i, i32(-2147483648))));

var<private> global4: vec2<f32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> f32 {
    global0 = u_input.c.x;
    global4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global4.x, 407f), vec2<f32>(-301f, 2216f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(371f, -2526f), vec2<f32>(1000f, 302f)))), _wgslsmith_div_vec2_f32(vec2<f32>(global4.x, 514f), vec2<f32>(-823f, 182f))))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, -533f) * vec2<f32>(global4.x, 1322f))))), vec2<f32>(2789f, 1f))));
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(64398u, u_input.a.x), 0u), (u_input.a.x >> (u_input.a.x % 32u)) | _wgslsmith_sub_u32(13445u, u_input.a.x)), 103215u | select(_wgslsmith_mod_u32(1u, u_input.a.x), ~33492u, true)), _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(0u, 13280u) ^ vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a.yx, abs(reverseBits(vec2<u32>(36284u, 34026u) | u_input.a.yz)))), 7u)];
    var var_1 = u_input.b.yy;
    var var_2 = global3[_wgslsmith_index_u32(var_1.x, 7u)];
    return _wgslsmith_f_op_f32(round(-804f));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> i32 {
    var var_0 = any(!(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)))));
    global4 = vec2<f32>(arg_1, _wgslsmith_f_op_f32(func_2()));
    let var_1 = vec3<bool>(!(!any(vec3<bool>(true, false, true))), select(false, true, !(!any(vec3<bool>(false, true, true)))), !(!(abs(u_input.a.x) >= _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, 1u), vec3<u32>(u_input.a.x, u_input.b.x, u_input.b.x)))));
    let var_2 = _wgslsmith_f_op_f32(-108f - _wgslsmith_f_op_f32(func_2()));
    var var_3 = _wgslsmith_mult_u32(~24826u << (_wgslsmith_add_u32(61303u, u_input.a.x) % 32u), u_input.a.x);
    return arg_2.c.x;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3) -> Struct_1 {
    global1 = array<vec3<u32>, 18>();
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(var_0.b.a * _wgslsmith_f_op_f32(abs(573f)))) * _wgslsmith_f_op_f32(var_0.b.a + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f - 808f))))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(625f, var_0.b.a) - _wgslsmith_f_op_f32(-var_0.b.a)) + -590f));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(865f + -1040f), vec3<i32>(35562i, _wgslsmith_dot_vec3_i32(arg_1.c, _wgslsmith_mod_vec3_i32(abs(u_input.c.zwy), abs(vec3<i32>(2147483647i, -7060i, global2.x)))), abs(11522i)), _wgslsmith_add_vec2_i32(min((global2.xy ^ global2.zy) | arg_1.b.b.xx, select(_wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.c.x, global2.x), var_0.b.c, global2.yz), abs(vec2<i32>(global2.x, arg_1.b.c.x)), !var_0.d)), global2.zy));
    global1 = array<vec3<u32>, 18>();
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b.a + -1035f), global4.x))), ~(~vec3<i32>(~global2.x, reverseBits(global2.x), ~(-2147483647i))), arg_1.c.xx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_3(~(~u_input.a), Struct_3(reverseBits(u_input.b.x) <= ~countOneBits(1u), global3[_wgslsmith_index_u32(u_input.a.x, 7u)], vec3<i32>(global2.x, (u_input.c.x & -2147483647i) | func_1(global3[_wgslsmith_index_u32(0u, 7u)], global4.x, global3[_wgslsmith_index_u32(u_input.b.x, 7u)], 1313f), 8504i), false));
    global3 = array<Struct_1, 7>();
    let var_1 = u_input.b.x;
    var var_2 = !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true));
    var var_3 = u_input.b.yy;
    let var_4 = u_input.b.xy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) - 504f))), vec2<i32>(17455i, _wgslsmith_dot_vec2_i32(var_0.c, -vec2<i32>(6706i, global2.x) & func_3(vec3<u32>(88195u, 1945u, 1u), Struct_3(var_2.x, Struct_1(global4.x, var_0.b, global2.xz), var_0.b, var_2.x)).c)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1340f, -1427f), vec2<f32>(-1492f, global4.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1633f, -838f) * vec2<f32>(var_0.a, global4.x))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1798f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -390f), var_0.a)), select(all(vec3<bool>(false, var_2.x, true)) == (var_3.x > var_1), any(vec2<bool>(true, false)), var_2.x))), _wgslsmith_div_u32(40719u, ~10016u));
}

