struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec4<i32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
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

var<private> global0: array<vec4<f32>, 1> = array<vec4<f32>, 1>(vec4<f32>(-654f, 122f, -790f, -749f));

var<private> global1: Struct_1;

var<private> global2: Struct_3 = Struct_3(vec3<bool>(false, false, true), Struct_2(false, vec4<bool>(false, false, true, true)), vec4<i32>(-2011i, 1i, -2606i, -1i), Struct_2(true, vec4<bool>(true, true, true, false)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> i32 {
    let var_0 = 1215f;
    let var_1 = -1i;
    global2 = Struct_3(select(vec3<bool>(global2.a.x, all(!vec2<bool>(global2.d.a, false)), true), vec3<bool>(all(vec4<bool>(false, global2.d.b.x, global2.d.a, global2.b.a)), global2.d.a, abs(234i) <= -global2.c.x), select(!select(global2.d.b.zyz, global2.b.b.wyz, true), select(global2.d.b.wyz, vec3<bool>(global2.d.b.x, global2.d.a, global2.b.b.x), global2.d.b.zyw), !(!global2.a.x))), Struct_2(-(global2.c.x | 2147483647i) <= -7646i, vec4<bool>(any(vec3<bool>(true, global2.d.a, true)), true, any(select(global2.b.b, global2.d.b, vec4<bool>(false, true, global2.b.a, false))), false)), ~_wgslsmith_mod_vec4_i32(~_wgslsmith_mod_vec4_i32(global2.c, global2.c), ~_wgslsmith_mod_vec4_i32(global2.c, vec4<i32>(global2.c.x, var_1, 28220i, var_1))), global2.b);
    global0 = array<vec4<f32>, 1>();
    var var_2 = global2.b;
    return global2.c.x;
}

fn func_2() -> u32 {
    let var_0 = Struct_2(false, vec4<bool>(select(select(!global2.b.a, any(global2.d.b.xww), true), _wgslsmith_f_op_f32(trunc(1000f)) == _wgslsmith_f_op_f32(floor(global1.a.x)), true), global2.b.a, all(select(global2.a, select(global2.a, global2.a, global2.b.b.x), global2.a.x)), any(select(vec2<bool>(global2.b.a, true), !global2.a.xx, !global2.a.x))));
    var var_1 = _wgslsmith_f_op_f32(-1489f * -996f);
    var_1 = -564f;
    var var_2 = global2.c.yzx;
    var var_3 = Struct_3(select(!(!(!vec3<bool>(true, var_0.b.x, global2.a.x))), global2.a, !global2.d.b.yzy), global2.b, ~vec4<i32>(func_3(), var_2.x, _wgslsmith_add_i32(-14021i, -var_2.x), min(reverseBits(-2147483647i), ~68953i)), global2.d);
    return ~u_input.a.x;
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    return _wgslsmith_add_u32(func_2(), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(func_1(~(~global2.c.zw)), 1u)] - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(809f, -149f, 900f, -1698f)))))));
    let var_1 = global2.d.b.wxw;
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global1.a), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(var_0.xw, vec2<f32>(-738f, 1169f)))))))));
    global1 = Struct_1(global1.a);
    global0 = array<vec4<f32>, 1>();
    let var_2 = u_input.a.x;
    global1 = Struct_1(global1.a);
    var var_3 = global2.b;
    let x = u_input.a;
    s_output = StorageBuffer(-413f);
}

