struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<bool>,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: vec3<f32>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<u32, 1> = array<u32, 1>(43164u);

var<private> global2: array<Struct_1, 14>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: u32) -> Struct_3 {
    let var_0 = global2[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(~1u, 1u)]), 14u)];
    var var_1 = 0u;
    let var_2 = global0.b.x;
    let var_3 = var_0.e;
    var_1 = 4294967295u;
    return Struct_3(global0.a, !select(vec2<bool>(0u < arg_0, false), !select(vec2<bool>(true, false), var_0.d.wy, vec2<bool>(global0.b.x, false)), vec2<bool>(true, var_0.d.x)));
}

fn func_1() -> Struct_3 {
    let var_0 = true;
    let var_1 = func_2(firstLeadingBit(_wgslsmith_div_u32(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41429u, 1u)], 1u)], 1u)], 1u)]), 1u)));
    let var_2 = 0i;
    global1 = array<u32, 1>();
    var var_3 = vec4<bool>(any(!(!select(vec3<bool>(global0.b.x, var_0, false), vec3<bool>(var_0, false, true), false))), var_0, true, true);
    return var_1;
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_4) -> vec2<u32> {
    var var_0 = global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(0u, 1u)], 14u)];
    var_0 = global2[_wgslsmith_index_u32(~select(17700u, 0u, !var_0.d.x), 14u)];
    let var_1 = Struct_2(arg_2.c.b, !(global0.b.x && (_wgslsmith_f_op_f32(var_0.b - -202f) != var_0.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1426f, var_0.b, -745f) * vec3<f32>(var_0.b, var_0.b, var_0.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1064f, -255f, 569f))))), global2[_wgslsmith_index_u32(4294967295u, 14u)], var_0.b);
    let var_2 = arg_2;
    let var_3 = !select(select(vec4<bool>(true, var_0.c.x, true, any(var_0.d)), var_1.d.d, var_1.d.c), !(!vec4<bool>(var_0.c.x, true, var_0.c.x, false)), select(select(vec4<bool>(global0.b.x, false, false, true), vec4<bool>(var_1.b, arg_2.c.b.x, true, true), false & arg_2.c.b.x), vec4<bool>(true, !var_2.c.b.x, -1i <= arg_2.b.a, var_0.d.x), !vec4<bool>(var_0.d.x, false, global0.b.x, false)));
    return arg_1.xx;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: bool, arg_3: vec4<u32>) -> i32 {
    var var_0 = Struct_2(vec2<bool>(func_1().b.x, global0.b.x), true | !(_wgslsmith_f_op_f32(779f * 482f) == _wgslsmith_f_op_f32(sign(993f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-853f, -366f, -208f)))), global2[_wgslsmith_index_u32(arg_3.x, 14u)], -443f);
    global0 = Struct_3(_wgslsmith_sub_i32(~(u_input.c.x | 1i), ~(~(-13261i))), vec2<bool>(var_0.a.x, global0.b.x));
    global1 = array<u32, 1>();
    var var_1 = arg_1;
    var var_2 = arg_3.x;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 1>();
    global0 = func_1();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1169f), _wgslsmith_f_op_f32(f32(-1f) * -441f), true)) + _wgslsmith_f_op_f32(f32(-1f) * -744f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1366f))));
    var var_1 = !(all(select(vec3<bool>(global0.b.x, true, global0.b.x), vec3<bool>(global0.b.x, global0.b.x, false), true)) | all(vec2<bool>(global0.b.x, global0.b.x))) && true;
    global1 = array<u32, 1>();
    var var_2 = Struct_3(1i, global0.b);
    var var_3 = _wgslsmith_dot_vec2_u32(~vec2<u32>(global1[_wgslsmith_index_u32(~reverseBits(global1[_wgslsmith_index_u32(55562u, 1u)]), 1u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~68653u >> (global1[_wgslsmith_index_u32(1u, 1u)] % 32u), 1u)], 1u)]), _wgslsmith_mod_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(1u, 1u)], _wgslsmith_mod_u32(select(4294967295u, 1u, var_2.b.x), 4294967295u)), vec2<u32>(1u, ~0u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-18940i, countOneBits(1i), func_4(_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(39149u, 1u)], 18445u), vec2<u32>(3429u, 1u)), func_3(var_2.a, vec4<u32>(111439u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(895u, 1u)], 1u)], 88436u), Struct_4(global0.b.x, Struct_3(var_2.a, global0.b), Struct_3(2147483647i, var_2.b), Struct_3(global0.a, var_2.b)))), Struct_4(all(var_2.b), Struct_3(u_input.a, vec2<bool>(var_2.b.x, false)), func_2(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 1u)], 1u)]), func_2(global1[_wgslsmith_index_u32(0u, 1u)])), true, select(vec4<u32>(global1[_wgslsmith_index_u32(20348u, 1u)], 4294967295u, global1[_wgslsmith_index_u32(0u, 1u)], 0u), vec4<u32>(global1[_wgslsmith_index_u32(14002u, 1u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14131u, 1u)], 1u)], global1[_wgslsmith_index_u32(16065u, 1u)], 89298u), global0.b.x))), _wgslsmith_f_op_f32(324f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1596f * -1122f))))), 24086u, vec3<u32>(_wgslsmith_clamp_u32(~global1[_wgslsmith_index_u32(23353u, 1u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], global1[_wgslsmith_index_u32(abs(12482u), 1u)]) << (abs(_wgslsmith_add_u32(1u, 82727u)) % 32u), 22625u << (_wgslsmith_dot_vec2_u32(~vec2<u32>(global1[_wgslsmith_index_u32(14314u, 1u)], 3919u), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(91696u, 1u)], 1u)], 0u) & vec2<u32>(89940u, 21805u)) % 32u), 3946u));
}

