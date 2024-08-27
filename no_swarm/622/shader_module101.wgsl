struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(53755u, 0u);

var<private> global1: i32 = 6882i;

var<private> global2: array<vec3<u32>, 26>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    let var_0 = any(select(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true))), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), !all(vec4<bool>(false, false, true, true))));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-927f)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-144f))) - _wgslsmith_f_op_f32(min(1766f, _wgslsmith_f_op_f32(round(-1928f)))))), 1000f));
    var var_2 = select(vec4<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1)) + _wgslsmith_f_op_f32(f32(-1f) * -648f)) < -2040f, true, select(any(!vec2<bool>(var_0, true)), true, any(!vec4<bool>(var_0, false, var_0, false)))), !select(select(select(vec4<bool>(true, var_0, var_0, false), vec4<bool>(var_0, true, true, var_0), vec4<bool>(var_0, var_0, true, false)), select(vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(var_0, false, false, false), false), vec4<bool>(false, var_0, var_0, true)), select(vec4<bool>(var_0, var_0, true, false), select(vec4<bool>(var_0, true, var_0, true), vec4<bool>(var_0, false, false, true), vec4<bool>(true, var_0, var_0, var_0)), all(vec3<bool>(true, false, var_0))), !var_0), select(select(!(!vec4<bool>(false, var_0, false, false)), vec4<bool>(all(vec4<bool>(var_0, var_0, true, true)), var_0, var_0, true), var_0 & true), vec4<bool>(false, any(vec4<bool>(true, var_0, false, false)), true, true), var_0));
    var_2 = vec4<bool>(true, !all(select(select(vec4<bool>(false, var_2.x, var_0, var_0), vec4<bool>(true, var_0, true, var_2.x), vec4<bool>(false, var_2.x, var_0, false)), vec4<bool>(var_0, var_0, false, var_2.x), all(vec3<bool>(false, var_0, true)))), !all(select(vec4<bool>(var_2.x, var_0, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(var_0, false, false, var_0), true), select(vec4<bool>(false, true, true, true), vec4<bool>(var_2.x, var_0, var_0, var_0), false))), var_0);
    let var_3 = vec2<u32>(global0.x, abs(global0.x));
    return 653f;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec3<bool>, arg_3: f32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(func_3());
    let var_1 = _wgslsmith_add_u32(77624u, ~max(4294967295u >> (0u % 32u), global0.x));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1496f);
    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-290f * arg_3), _wgslsmith_f_op_f32(-793f * arg_3)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, arg_3), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1049f, 1259f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3, arg_3))))))));
    var_0 = arg_3;
    return arg_0;
}

fn func_1() -> Struct_2 {
    let var_0 = 57702u;
    var var_1 = any(vec4<bool>(func_2(true, select(var_0, global0.x, true), vec3<bool>(false, true, true), -1000f), true, false, true)) | all(!vec3<bool>(true, any(vec4<bool>(true, true, true, true)), true));
    let var_2 = -206f;
    let var_3 = select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true), !vec4<bool>(all(vec4<bool>(false, true, false, false)), true, all(vec3<bool>(true, false, false)), true)), select(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true)), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, false, true, false)), all(vec3<bool>(any(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true)), true & any(vec2<bool>(true, true)))));
    global1 = u_input.c.x;
    return Struct_2(Struct_1(~(abs(vec3<u32>(global0.x, 4897u, 4294967295u)) | global2[_wgslsmith_index_u32(min(4294967295u, u_input.d.x), 26u)])), vec4<f32>(_wgslsmith_f_op_f32(-var_2), var_2, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1735f, var_2)), _wgslsmith_f_op_f32(f32(-1f) * -291f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1017f, var_2, var_3.x)))))), countOneBits(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, u_input.d.x, 1u), select(vec3<u32>(30602u, 30123u, var_0), vec3<u32>(4294967295u, 36805u, u_input.d.x), vec3<bool>(var_3.x, var_3.x, var_3.x))), 1u, _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(~global0.x, 26u)], firstTrailingBit(vec3<u32>(var_0, 29383u, 1u))), 1u)), _wgslsmith_add_vec4_i32(select(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.c.x), vec4<i32>(0i, u_input.c.x, -14147i, -35935i)) ^ vec4<i32>(59822i, u_input.a.x, 8904i, u_input.c.x), -vec4<i32>(0i, u_input.a.x, u_input.a.x, -1i), true | !var_3.x), vec4<i32>(~select(u_input.a.x, u_input.a.x, var_3.x), u_input.a.x, u_input.a.x, select(u_input.c.x, 0i, all(var_3)))), vec3<f32>(_wgslsmith_f_op_f32(min(110f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2))))), -1952f, -249f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<u32>, 26>();
    let var_0 = func_1();
    global0 = u_input.b.xz;
    let var_1 = -select(func_1().d.x, _wgslsmith_dot_vec3_i32(var_0.d.zzx, u_input.a.yyw), true) == ~(-11402i);
    let var_2 = var_0.b;
    var var_3 = _wgslsmith_mult_u32(~_wgslsmith_div_u32(4294967295u, u_input.d.x) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, global0.x), vec2<u32>(var_0.c.x, 1u)) % 32u), 85447u);
    let var_4 = _wgslsmith_f_op_f32(395f * 407f);
    global1 = (u_input.c.x & max(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d.x, var_0.d.x, 0i), min(vec3<i32>(u_input.c.x, 18778i, u_input.a.x), u_input.a.wyw)), _wgslsmith_div_i32(max(-23705i, var_0.d.x), countOneBits(var_0.d.x)))) & var_0.d.x;
    global2 = array<vec3<u32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(i32(-1i) * -u_input.a.x, u_input.c.x >> ((~u_input.d.x & 1u) % 32u), abs(i32(-1i) * -40401i)));
}

