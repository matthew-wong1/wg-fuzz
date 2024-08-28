struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_2,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(2147483647i, -63254i, -27875i, -27167i, 0i, 18040i, 2147483647i, 44441i, -41392i, -1i, 67266i, 40705i, 0i, -1i, 2147483647i, i32(-2147483648), 12121i, 5134i);

var<private> global1: u32;

var<private> global2: Struct_5;

var<private> global3: i32;

var<private> global4: i32 = -28528i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: vec3<i32>) -> u32 {
    global2 = Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-468f, _wgslsmith_f_op_f32(select(global2.a.x, global2.a.x, true)), global2.a.x, global2.a.x)));
    let var_0 = Struct_3(any(vec3<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true))), true)), Struct_1(u_input.b.wz), Struct_2(Struct_1(u_input.b.zx), Struct_1(~u_input.b.wz)), firstLeadingBit(~reverseBits(u_input.b) | select(countOneBits(u_input.b), vec4<u32>(u_input.a, 1u, 0u, 2476u), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)))), Struct_1(u_input.b.zy));
    var var_1 = firstLeadingBit(~(~vec3<u32>(~1u, 4294967295u << (u_input.b.x % 32u), var_0.c.a.a.x)));
    var var_2 = u_input.b.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global2.a.wx, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-159f, global2.a.x))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2223f, global2.a.x))), _wgslsmith_f_op_vec2_f32(-global2.a.xx)))));
    return ~(~4294967295u);
}

fn func_4(arg_0: Struct_3) -> vec2<u32> {
    global4 = reverseBits(33455i);
    let var_0 = false;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.a.x - global2.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(451f, global2.a.x), _wgslsmith_f_op_f32(trunc(-345f)))) * _wgslsmith_f_op_f32(abs(global2.a.x))), -1000f, -1770f);
    return vec2<u32>(countOneBits(arg_0.c.a.a.x), _wgslsmith_dot_vec4_u32(u_input.b, arg_0.d));
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2.a.x + _wgslsmith_f_op_f32(-1669f + arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1041f)), -266f, global2.a.x));
    global2 = Struct_5(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-422f, -1091f, 1354f, -608f), global2.a)));
    global2 = Struct_5(_wgslsmith_f_op_vec4_f32(-var_0.a));
    let var_1 = _wgslsmith_f_op_vec2_f32(global2.a.yy + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, global2.a.x)), _wgslsmith_f_op_vec2_f32(round(global2.a.yx)), vec2<bool>(true, true)))))));
    var var_2 = Struct_4(arg_0 != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x * 1727f)) * var_1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_0.a))));
    return Struct_1(func_4(Struct_3(var_2.a, Struct_1(~vec2<u32>(u_input.b.x, 0u)), Struct_2(Struct_1(vec2<u32>(1u, u_input.a)), Struct_1(u_input.b.zx)), vec4<u32>(func_3(vec2<i32>(-7884i, u_input.c), vec2<f32>(arg_0, var_0.a.x), vec3<i32>(-14899i, 11599i, u_input.c)), 32351u, _wgslsmith_div_u32(u_input.a, u_input.a), _wgslsmith_sub_u32(u_input.a, u_input.a)), Struct_1(reverseBits(vec2<u32>(u_input.b.x, 7305u))))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_5) -> f32 {
    var var_0 = 21523u > func_2(arg_1.a.x, -(~global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 18u)])).a.x;
    let var_1 = Struct_2(Struct_1(~vec2<u32>(~arg_0.a.x, arg_0.a.x & arg_0.a.x)), Struct_1(select(_wgslsmith_mult_vec2_u32(arg_0.a, vec2<u32>(u_input.a, 1u) >> (vec2<u32>(arg_0.a.x, 4294967295u) % vec2<u32>(32u))), (vec2<u32>(0u, u_input.a) >> (u_input.b.xx % vec2<u32>(32u))) & vec2<u32>(u_input.b.x, u_input.b.x), true)));
    let var_2 = Struct_5(_wgslsmith_f_op_vec4_f32(-arg_1.a));
    var var_3 = -3984i;
    var var_4 = Struct_5(_wgslsmith_f_op_vec4_f32(arg_1.a + _wgslsmith_f_op_vec4_f32(-var_2.a)));
    return 101f;
}

fn func_1(arg_0: Struct_5, arg_1: f32) -> i32 {
    global4 = abs(~14579i);
    var var_0 = _wgslsmith_f_op_vec4_f32(-global2.a);
    var var_1 = vec3<bool>(!(!any(vec2<bool>(true, true))) & true, true, true);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_5(func_2(arg_1, u_input.c), arg_0)), arg_1)));
    let var_3 = -30703i;
    return global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, ~(~4294967295u)), 18u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(all(vec2<bool>(true, true)), vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -130f), _wgslsmith_f_op_f32(global2.a.x * global2.a.x), 544f));
    global0 = array<i32, 18>();
    let var_1 = select(vec3<u32>(~min(_wgslsmith_add_u32(0u, 20624u), _wgslsmith_clamp_u32(39613u, 18507u, 58427u)), reverseBits(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, u_input.a), u_input.b))), ~14742u), u_input.b.xzx, !select(vec3<bool>(false, false, var_0.a | var_0.a), !select(vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(false, var_0.a, var_0.a)), vec3<bool>(select(var_0.a, false, false), any(vec2<bool>(true, var_0.a)), select(var_0.a, true, true))));
    let var_2 = var_1.x;
    var var_3 = !vec4<bool>(!(func_1(Struct_5(global2.a), var_0.b.x) >= 22438i), select(!var_0.a != var_0.a, true, false), var_0.a, var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, ~abs(abs(_wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(4294967295u, 4294967295u, var_2, 4294967295u)))), _wgslsmith_mod_u32(reverseBits(~1u), 4294967295u));
}

