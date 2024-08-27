struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: f32,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -892f;

var<private> global1: array<bool, 5>;

var<private> global2: i32 = 2147483647i;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec4<bool>(true, false, false, true), vec2<u32>(1u, 4294967295u), -832f, vec4<bool>(false, false, true, true), vec2<f32>(351f, 1000f)));

var<private> global4: array<Struct_1, 16>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    global3 = Struct_2(Struct_1(global3.a.a, _wgslsmith_mod_vec2_u32(u_input.b.zz, ~(~vec2<u32>(global3.a.b.x, global3.a.b.x))), global3.a.c, vec4<bool>(global3.a.b.x > _wgslsmith_add_u32(u_input.b.x, global3.a.b.x), !(!global1[_wgslsmith_index_u32(6656u, 5u)]), select(select(global1[_wgslsmith_index_u32(0u, 5u)], global3.a.a.x, true), global1[_wgslsmith_index_u32(global3.a.b.x, 5u)], any(global3.a.a.wzz)), global1[_wgslsmith_index_u32(0u, 5u)]), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global3.a.e + vec2<f32>(global3.a.e.x, -324f)), _wgslsmith_div_vec2_f32(global3.a.e, global3.a.e), global1[_wgslsmith_index_u32(~4294967295u, 5u)])), global3.a.e)));
    var var_0 = 1000f;
    let var_1 = global3.a;
    let var_2 = var_1.d.x;
    let var_3 = Struct_2(global3.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1(!vec4<bool>(true, global1[_wgslsmith_index_u32(~1u, 5u)], true, true & !global3.a.a.x), vec2<u32>(abs(_wgslsmith_sub_u32(41993u, _wgslsmith_add_u32(u_input.b.x, 0u))), global3.a.b.x), _wgslsmith_f_op_f32(func_3()), select(select(!(!vec4<bool>(false, true, global1[_wgslsmith_index_u32(32487u, 5u)], global1[_wgslsmith_index_u32(10662u, 5u)])), !global3.a.d, _wgslsmith_f_op_f32(ceil(-797f)) > 954f), select(select(!vec4<bool>(global3.a.d.x, true, global3.a.a.x, true), global3.a.d, true), vec4<bool>(!global3.a.d.x, global3.a.a.x, true, all(vec2<bool>(global3.a.a.x, global3.a.d.x))), all(global3.a.d.yz)), all(vec3<bool>(global1[_wgslsmith_index_u32(77711u, 5u)], true, true))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(718f, global3.a.e.x)), _wgslsmith_f_op_f32(global3.a.e.x - global3.a.e.x)) - vec2<f32>(global3.a.c, _wgslsmith_f_op_f32(-global3.a.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.a.e))));
    let var_1 = Struct_2(Struct_1(!select(global3.a.d, !global3.a.a, global3.a.d), ~vec2<u32>(var_0.b.x, abs(69625u)), global3.a.e.x, select(select(var_0.a, !vec4<bool>(true, var_0.d.x, global1[_wgslsmith_index_u32(33740u, 5u)], false), global3.a.d.x), global3.a.a, all(!vec4<bool>(global3.a.a.x, true, global3.a.d.x, global3.a.d.x))), _wgslsmith_f_op_vec2_f32(sign(var_0.e))));
    var var_2 = _wgslsmith_div_vec3_u32(~u_input.b.xxx, ~vec3<u32>(15718u, ~var_0.b.x, ~var_0.b.x) & ~vec3<u32>(var_1.a.b.x, 45413u, var_0.b.x));
    var var_3 = Struct_1(global3.a.a, select(~vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 1u, 1u), ~var_2.x), vec2<u32>(~1u, ~var_0.b.x), global3.a.a.yy), -1000f, !select(global3.a.d, select(vec4<bool>(var_1.a.a.x, var_0.a.x, global3.a.a.x, global3.a.a.x), vec4<bool>(true, true, true, true), vec4<bool>(false, global1[_wgslsmith_index_u32(var_0.b.x, 5u)], true, false)), !(!global3.a.d)), var_0.e);
    global0 = var_3.e.x;
    return var_1;
}

fn func_1() -> vec4<f32> {
    let var_0 = max(vec2<i32>(-71623i, -1i & -_wgslsmith_sub_i32(u_input.c.x, 5170i)), u_input.c.ww);
    global0 = 385f;
    global3 = func_2();
    global2 = ~abs(~u_input.a.x);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(global3.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3()))))), global3.a.e.x);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.e.x, 743f, -567f, -748f) * vec4<f32>(global3.a.c, 259f, -396f, 1552f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.c, global3.a.c, -434f, 477f) + vec4<f32>(1248f, global3.a.c, global3.a.e.x, global3.a.e.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global3.a.c, 2731f, 161f), vec3<f32>(global3.a.c, global3.a.e.x, global3.a.e.x)) + vec3<f32>(1f, 1f, 1f)))), _wgslsmith_div_vec3_f32(vec3<f32>(global3.a.c, _wgslsmith_f_op_f32(-262f + global3.a.c), _wgslsmith_f_op_f32(-525f + global3.a.e.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-915f, 372f, global3.a.e.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-794f, 463f, global3.a.c, 118f)) - _wgslsmith_f_op_vec4_f32(func_1())))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1382f), 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global3.a.c), 1256f)));
}

