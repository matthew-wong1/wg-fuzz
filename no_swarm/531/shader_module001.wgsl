struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: array<bool, 26> = array<bool, 26>(true, true, false, true, false, false, true, true, true, true, true, true, false, true, false, false, false, false, true, true, false, true, false, true, true, true);

var<private> global2: Struct_3 = Struct_3(vec3<bool>(false, true, true), Struct_1(vec2<bool>(false, true)), Struct_2(-607f, 832f), Struct_1(vec2<bool>(false, false)));

var<private> global3: array<Struct_2, 8>;

var<private> global4: f32 = 2824f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = countOneBits(1i);
    let var_1 = ~firstTrailingBit(min(_wgslsmith_dot_vec4_u32(arg_1, u_input.a), ~19707u) >> (u_input.b.x % 32u));
    global3 = array<Struct_2, 8>();
    var var_2 = global2.c.b;
    global3 = array<Struct_2, 8>();
    return global2.d;
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_4, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = 38105u;
    var var_1 = min(-vec3<i32>(23721i, ~(-2147483647i), 1i), ~vec3<i32>(_wgslsmith_add_i32(-2147483647i, 0i), firstTrailingBit(2147483647i), -1i)) >> (~u_input.a.yyx % vec3<u32>(32u));
    global0 = !select(global2.a, !(!global2.a), !select(vec3<bool>(arg_3.a.x, false, arg_0.a.x), select(global2.a, arg_0.a, false), true));
    var var_2 = true;
    global0 = global2.a;
    return -(~max(min(vec2<i32>(var_1.x, -37646i), var_1.zz), firstLeadingBit(vec2<i32>(var_1.x, var_1.x))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec3<bool>) -> bool {
    var var_0 = -func_3(Struct_3(arg_3, global2.d, global2.c, func_2(select(vec3<bool>(arg_3.x, false, arg_2.a.x), vec3<bool>(true, arg_0.a.x, true), arg_3), _wgslsmith_div_vec4_u32(arg_1, vec4<u32>(u_input.b.x, 1906u, 157074u, u_input.a.x)), Struct_2(1000f, -581f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.a) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global2.c.b, global2.c.a)), _wgslsmith_div_f32(global2.c.b, 1494f))), Struct_4(301f), arg_0);
    let var_1 = global2.c.b;
    var var_2 = Struct_3(!vec3<bool>(select(false, !arg_0.a.x, arg_1.x > 41080u), arg_0.a.x, true), Struct_1(vec2<bool>(_wgslsmith_add_u32(1u, arg_1.x) == ~9204u, arg_0.a.x)), Struct_2(global2.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.b) + _wgslsmith_f_op_f32(-global2.c.b)))), global2.b);
    var var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(global2.c.b, _wgslsmith_f_op_f32(336f + var_2.c.a), _wgslsmith_f_op_f32(step(var_2.c.b, -450f)), var_2.c.a), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global2.c.b, var_2.c.b, global2.c.b) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_2.c.b, global2.c.a, global2.c.b)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.c.a, -1000f, var_2.c.a, -107f), vec4<f32>(global2.c.a, 317f, global2.c.a, 121f), true)))), vec4<f32>(1f, 1f, 1f, 1f))));
    var var_4 = ~firstLeadingBit(select(u_input.b.x, u_input.a.x, 16818u != _wgslsmith_mod_u32(0u, u_input.a.x)));
    return !global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(1u), countOneBits(_wgslsmith_add_u32(4608u, u_input.b.x) << (u_input.a.x % 32u))), 26u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~0i;
    let var_1 = ~_wgslsmith_div_vec2_u32(u_input.b.zw & u_input.b.wx, vec2<u32>(43032u, reverseBits(u_input.b.x)));
    var var_2 = _wgslsmith_div_vec3_u32(firstTrailingBit(~(~(~u_input.b.yyx))), ~u_input.a.xzw);
    var var_3 = global2.d.a;
    var_3 = select(vec2<bool>(true, true), vec2<bool>(func_1(Struct_1(select(global2.b.a, global0.xz, vec2<bool>(true, false))), u_input.a >> ((vec4<u32>(1121u, 4294967295u, 42894u, var_1.x) & vec4<u32>(26526u, var_2.x, var_1.x, u_input.b.x)) % vec4<u32>(32u)), Struct_1(global2.d.a), select(!vec3<bool>(var_3.x, var_3.x, var_3.x), global2.a, global2.a)), 144f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-195f, global2.c.a)) - global2.c.a)), all(vec3<bool>(true, !(!var_3.x), _wgslsmith_f_op_f32(-global2.c.b) == _wgslsmith_f_op_f32(1241f - global2.c.b))));
    var var_4 = func_3(Struct_3(select(select(!global2.a, select(global2.a, global2.a, true), true), !select(vec3<bool>(global2.d.a.x, global2.b.a.x, true), global2.a, true), false), Struct_1(select(vec2<bool>(global0.x, global0.x), global2.b.a, vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 26u)], false))), global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_add_u32(9274u, 65488u | u_input.a.x)), 8u)], Struct_1(global0.zz)), _wgslsmith_f_op_f32(min(-1274f, -356f)), Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(821f, global2.c.a) + 655f), -165f))), global2.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.c.a, -1542f), vec2<f32>(1261f, 959f), false))), vec2<f32>(1f, 1f), !select(false, global2.d.a.x, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2.c.a, 821f), vec2<f32>(1464f, global2.c.a))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1098f, global2.c.a)))))));
}

