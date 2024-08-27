struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_3,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_5;

var<private> global2: vec3<u32> = vec3<u32>(4294967295u, 4294967295u, 10485u);

var<private> global3: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(0i, i32(-2147483648), -38361i), vec3<i32>(1i, 2147483647i, i32(-2147483648)), vec3<i32>(-1i, 10781i, 24809i), vec3<i32>(0i, -43809i, 0i), vec3<i32>(2147483647i, 12904i, 2147483647i), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec3<i32>(2147483647i, 2147483647i, 0i), vec3<i32>(-1689i, 1i, -14127i), vec3<i32>(-42154i, -1i, 2147483647i));

var<private> global4: array<Struct_4, 20>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec4<bool>) -> vec3<bool> {
    return select(vec3<bool>(arg_0.x, true, all(!vec4<bool>(arg_0.x, true, true, false))), select(arg_0.ywx, select(arg_0.yzz, !arg_0.xxx, vec3<bool>(global2.x <= global2.x, true, global0.x)), vec3<bool>(true, true, true)), arg_0.zyw);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: i32, arg_3: vec2<f32>) -> u32 {
    let var_0 = Struct_4(4294967295u, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_3.x)), 527f))), abs(arg_2), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.d.a.c - _wgslsmith_f_op_vec3_f32(global1.c.wyy - arg_0.b.c)) + arg_0.b.c)), Struct_2(Struct_1(2673f, firstTrailingBit(firstTrailingBit(u_input.a)), global1.c.wyw)), arg_0.b);
    global3 = array<vec3<i32>, 9>();
    var var_1 = true;
    var var_2 = vec4<f32>(-354f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - -298f) * -2685f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.c.x)))) - global1.b.a), 404f, _wgslsmith_f_op_f32(max(arg_3.x, _wgslsmith_div_f32(-930f, 1f))));
    var var_3 = var_0;
    return 46115u;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: vec4<f32>, arg_3: f32) -> StorageBuffer {
    var var_0 = -1276f == global1.c.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.wyw * arg_2.zzz) - _wgslsmith_f_op_vec3_f32(sign(global1.c.zww))) + arg_0), _wgslsmith_f_op_vec3_f32(ceil(arg_0)), func_1(!(!vec4<bool>(global0.x, arg_1.x, false, true))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_2.xww), vec3<f32>(1f, arg_3, _wgslsmith_f_op_f32(min(arg_2.x, global1.d.a.c.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.x, 1385f, global1.d.a.a), vec3<f32>(1460f, 155f, 494f))) + _wgslsmith_f_op_vec3_f32(-arg_2.wyy)), (abs(global2.x) < ~global2.x) && false))));
    var var_2 = vec4<u32>(global2.x, 4294967295u, global2.x, _wgslsmith_add_u32(firstTrailingBit(u_input.c.x ^ 49608u) & func_3(global1.d, -vec4<i32>(-46758i, global1.e.x, u_input.a, 0i), global1.b.b, _wgslsmith_f_op_vec2_f32(-arg_0.xx)), 4294967295u));
    global3 = array<vec3<i32>, 9>();
    global2 = u_input.d;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1.c, vec4<f32>(var_1.x, -836f, arg_3, arg_3))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_2(vec3<f32>(global1.d.a.c.x, -1208f, -318f), func_1(!vec4<bool>(global1.d.a.c.x <= global1.b.a, false, global0.x, true)), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -149f))), _wgslsmith_f_op_f32(f32(-1f) * -2750f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.a) - 203f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global1.b.c.x, 790f), global1.c.x), 1f)), global1.c.x);
}

