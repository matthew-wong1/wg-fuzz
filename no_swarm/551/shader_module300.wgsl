struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7> = array<f32, 7>(-942f, -990f, 487f, 1927f, 354f, 2538f, 541f);

var<private> global1: vec3<i32> = vec3<i32>(i32(-2147483648), i32(-2147483648), 1i);

var<private> global2: Struct_3 = Struct_3(true, Struct_1(424f, -1i, true));

var<private> global3: bool;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = global2.a;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-global2.b.a), global2.b.b, all(select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), global2.b.c), select(vec2<bool>(false, true), vec2<bool>(true, global2.b.c), false), select(vec2<bool>(true, false), vec2<bool>(global2.a, arg_0), arg_0)))), global2.b, u_input.a.x);
    global3 = any(vec4<bool>(any(vec2<bool>(var_1.a.c, true)) || true, all(!vec3<bool>(global2.a, false, global2.b.c)), any(vec2<bool>(false, var_1.b.c)) != true, all(select(vec4<bool>(var_1.a.c, global2.b.c, var_1.b.c, true), vec4<bool>(false, var_1.a.c, false, true), false)))) && (min(countOneBits(-21326i), global2.b.b) < global2.b.b);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(276f, -543f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global2.b.a, global0[_wgslsmith_index_u32(var_1.c, 7u)]), var_1.b.a))))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<f32>) -> f32 {
    let var_0 = global1.yx;
    global1 = _wgslsmith_clamp_vec3_i32(-(~_wgslsmith_add_vec3_i32(max(vec3<i32>(var_0.x, global2.b.b, 0i), vec3<i32>(-1i, global1.x, -2147483647i)), ~vec3<i32>(2147483647i, -25825i, -1i))), -min(_wgslsmith_mult_vec3_i32(vec3<i32>(19062i, var_0.x, var_0.x), vec3<i32>(2147483647i, var_0.x, var_0.x)), select(vec3<i32>(global1.x, var_0.x, global1.x), -vec3<i32>(1i, 1i, -1i), vec3<bool>(global2.a, global2.a, true))), vec3<i32>((i32(-1i) * -83908i) & ~select(-38703i, 0i, global2.a), 40192i, ~global1.x));
    var var_1 = false;
    var var_2 = global2.b.a;
    var var_3 = Struct_3(false, global2.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.a) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -274f) * 1386f)));
}

fn func_2() -> vec3<bool> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.a.x), 7u)])) * global2.b.a), _wgslsmith_f_op_f32(func_4(vec3<u32>(~u_input.a.x, 4294967295u, 4294967295u) | u_input.b, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(false)) + _wgslsmith_f_op_f32(-global2.b.a)), -1815f, _wgslsmith_f_op_f32(func_3(select(global2.b.c, false, global2.b.c)))))), _wgslsmith_f_op_f32(-1237f - _wgslsmith_f_op_f32(-global2.b.a)));
    let var_1 = u_input.b.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xx)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_0.zx))), _wgslsmith_f_op_vec2_f32(step(var_0.xz, _wgslsmith_f_op_vec2_f32(var_0.zz - var_0.yy))))));
    var var_3 = reverseBits(~abs(abs(max(vec4<u32>(var_1, u_input.b.x, 1u, 66962u), vec4<u32>(4294967295u, 0u, u_input.a.x, 6043u)))));
    var var_4 = Struct_3(any(!select(vec4<bool>(global2.b.c, false, global2.a, false), select(vec4<bool>(global2.a, global2.a, true, global2.a), vec4<bool>(global2.a, false, false, global2.a), vec4<bool>(true, global2.a, false, false)), vec4<bool>(global2.a, true, global2.a, true))), global2.b);
    return vec3<bool>(global2.a, false, !(global1.x < reverseBits(var_4.b.b)));
}

fn func_1() -> vec3<bool> {
    global1 = vec3<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(global2.b.b << (1u % 32u)), _wgslsmith_div_i32(i32(-1i) * -13417i, -global2.b.b)), -global1.yx), max(global1.x, global1.x) << (_wgslsmith_sub_u32(u_input.a.x, ~0u) % 32u));
    let var_0 = -(~_wgslsmith_dot_vec2_i32(-vec2<i32>(global2.b.b, 2147483647i), vec2<i32>(global1.x, 2147483647i)));
    global3 = global2.a;
    var var_1 = global2.b;
    var var_2 = vec2<bool>(!var_1.c, !(!(-var_1.b == max(26108i, 1i))));
    return !select(!(!select(vec3<bool>(global2.b.c, var_2.x, true), vec3<bool>(false, var_2.x, true), vec3<bool>(true, true, true))), vec3<bool>(false, select(any(vec4<bool>(true, var_2.x, true, true)), var_1.b == var_0, true), !var_2.x), select(select(vec3<bool>(true, global2.a, false), select(vec3<bool>(global2.b.c, true, true), vec3<bool>(global2.a, var_1.c, var_1.c), var_2.x), !global2.b.c), select(func_2(), vec3<bool>(global2.a, true, true), func_2()), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 7>();
    global3 = any(vec2<bool>(!global2.b.c, all(func_1())));
    global2 = Struct_3(all(select(vec4<bool>(global2.b.c & global2.b.c, global2.a, global2.b.a <= global2.b.a, any(vec2<bool>(global2.a, global2.a))), vec4<bool>(true, global2.b.c, global2.b.c, !global2.b.c), global2.a)), Struct_1(-1611f, select(global1.x, -(~global2.b.b), func_1().x), all(vec4<bool>(global2.b.c, global2.a, false, global2.b.c)) | true));
    global0 = array<f32, 7>();
    let var_0 = u_input.b.xy;
    let var_1 = vec3<bool>(global2.b.c, global2.b.c, true);
    global0 = array<f32, 7>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global2.b.a, global2.b.a, !global2.b.c)))) + _wgslsmith_f_op_f32(global2.b.a + 560f));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec2<u32>(reverseBits(var_0.x), abs(2228u))) & vec2<u32>(71372u, 68094u));
}

