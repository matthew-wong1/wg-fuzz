struct Struct_1 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1106f, vec2<bool>(true, true));

var<private> global1: array<vec3<i32>, 32>;

var<private> global2: Struct_1 = Struct_1(1000f, vec2<bool>(true, false));

var<private> global3: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global4: array<vec4<f32>, 27>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<f32>) -> vec3<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-global2.a), select(global3.xy, !vec2<bool>(!global3.x, true), vec2<bool>(all(global3.yyy), global3.x)));
    var var_1 = Struct_2(u_input.b.x, arg_0.x, Struct_1(global2.a, !var_0.b), _wgslsmith_add_i32(_wgslsmith_mult_i32(-u_input.b.x >> ((u_input.a.x >> (0u % 32u)) % 32u), -(~u_input.b.x)), u_input.b.x));
    return vec3<bool>(any(vec4<bool>(any(vec4<bool>(true, var_1.c.b.x, global0.b.x, var_0.b.x)) && var_1.c.b.x, all(vec2<bool>(global3.x, false)), true, global3.x)), !all(!select(global3.xyz, vec3<bool>(false, var_0.b.x, true), var_0.b.x)), true);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(global0.a, vec2<bool>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-1i, u_input.b.x), firstTrailingBit(u_input.b.x)) <= 30506i, any(!global3.yw)));
    global2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-567f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-400f - -122f)))), vec2<bool>(all(func_3(vec4<f32>(var_0.a, global0.a, -180f, -471f), vec3<f32>(global0.a, -1039f, global2.a))), false && !global2.b.x));
    let var_1 = u_input.a;
    let var_2 = all(!vec4<bool>(all(vec3<bool>(true, true, true)), !global3.x, any(!vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.b.x)), any(global2.b)));
    global2 = Struct_1(global0.a, global0.b);
    return Struct_1(_wgslsmith_f_op_f32(trunc(835f)), global0.b);
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = Struct_1(-530f, !(!vec2<bool>(any(vec2<bool>(false, arg_0)), global3.x == false)));
    let var_1 = 1u;
    var var_2 = var_0.b.x;
    var var_3 = Struct_1(var_0.a, !global3.xy);
    let var_4 = func_2();
    return Struct_2(firstTrailingBit(-(~u_input.b.x)), _wgslsmith_f_op_f32(-global0.a), var_4, -10908i);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2) -> vec3<f32> {
    let var_0 = arg_1;
    global2 = func_2();
    let var_1 = -5267i;
    global2 = var_0.c;
    global0 = var_0.c;
    return arg_0.wxz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.x;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(global0.a * global2.a), !(!vec2<bool>(!global3.x, global3.x)));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1242f, 218f, var_1.a) * vec3<f32>(-615f, var_1.a, 1353f)) * vec3<f32>(global2.a, global2.a, 221f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(-1821f, 165f), _wgslsmith_f_op_f32(575f - global2.a), _wgslsmith_f_op_f32(step(2540f, global0.a))))), global0.b.x))));
    global4 = array<vec4<f32>, 27>();
    var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_4(global4[_wgslsmith_index_u32(abs(34870u), 27u)], func_1(global0.b.x))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(521f, var_1.a, 1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, var_2.x, global0.a) + vec3<f32>(var_1.a, global0.a, global2.a)), vec3<bool>(global3.x, global0.b.x, true))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, -532f, global2.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, global2.a, var_1.a)))))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, -1281f, global0.a))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1857f - -429f) * _wgslsmith_f_op_f32(global0.a * -521f)), _wgslsmith_f_op_f32(abs(518f)), _wgslsmith_f_op_f32(-global2.a))));
    global4 = array<vec4<f32>, 27>();
    var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-320f, -742f, var_1.a) * vec3<f32>(global0.a, var_1.a, -345f))), vec3<f32>(_wgslsmith_f_op_f32(sign(1362f)), _wgslsmith_f_op_f32(-global0.a), 1f))))), _wgslsmith_f_op_vec3_f32(func_4(global4[_wgslsmith_index_u32(u_input.a.x, 27u)], Struct_2(-2147483647i, _wgslsmith_div_f32(global2.a, _wgslsmith_f_op_f32(trunc(-1000f))), Struct_1(func_1(true).c.a, !global0.b), ~(-1i)))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, global2.a, ~(_wgslsmith_clamp_u32(u_input.a.x, firstTrailingBit(u_input.a.x), u_input.a.x) & countOneBits(~u_input.a.x)));
}

