struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15>;

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(Struct_1(vec3<bool>(false, true, true)), vec2<bool>(false, false), 4294967295u));

var<private> global3: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> i32 {
    var var_0 = vec3<i32>(min(u_input.c, u_input.c), u_input.c, 2147483647i);
    let var_1 = Struct_2(Struct_1(!vec3<bool>(any(vec4<bool>(true, true, true, false)), true, true)), vec2<bool>(true, true), 0u);
    var var_2 = Struct_1(select(var_1.a.a, !var_1.a.a, select(vec3<bool>(select(var_1.a.a.x, false, false), all(var_1.a.a), var_1.b.x), vec3<bool>(!var_1.a.a.x, false, true && var_1.b.x), var_1.b.x)));
    var var_3 = Struct_2(Struct_1(!(!var_2.a)), var_2.a.xz, 45464u);
    global0 = array<Struct_3, 15>();
    return ~_wgslsmith_sub_i32(_wgslsmith_mult_i32(~(-u_input.c), _wgslsmith_sub_i32(abs(-2147483647i), 40951i)), -2147483647i);
}

fn func_2() -> bool {
    let var_0 = vec4<i32>(u_input.c, ~func_3(), u_input.c, ~firstLeadingBit(1i));
    var var_1 = global1.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.a, 1071f, global3.a), vec3<f32>(global3.a, global3.a, 1932f), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a, global3.a, -847f) + vec3<f32>(1333f, -1000f, global3.a))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1195f, -1970f, 1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(930f, 1133f, 332f) + vec3<f32>(237f, 1127f, 384f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(2253f, -501f, global3.a), vec3<f32>(global3.a, global3.a, global3.a)) + vec3<f32>(global3.a, global3.a, global3.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-281f, global3.a, global3.a))))), !select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(false, true, true)))));
    let var_3 = Struct_1(select(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), true), vec3<bool>(true, true, true), var_2.x < _wgslsmith_div_f32(-492f, 652f)));
    var var_4 = Struct_3(var_2.x);
    return false;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: i32, arg_3: Struct_3) -> Struct_3 {
    var var_0 = u_input.c;
    var var_1 = all(!vec4<bool>(all(select(vec2<bool>(arg_0, false), vec2<bool>(true, false), arg_0)), _wgslsmith_sub_i32(2147483647i, arg_2) <= (u_input.c << (1u % 32u)), true, arg_0));
    var var_2 = func_2();
    let var_3 = !select(select(!select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(false, true), select(vec2<bool>(arg_0, arg_0), select(vec2<bool>(true, true), vec2<bool>(arg_0, true), true), !arg_0)), !select(select(vec2<bool>(true, true), vec2<bool>(true, arg_0), vec2<bool>(false, arg_0)), select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0)), vec2<bool>(false, arg_0)), !all(!vec2<bool>(arg_0, arg_0)));
    var_0 = i32(-1i) * -24184i;
    return Struct_3(-1307f);
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: vec2<u32>) -> vec4<f32> {
    let var_0 = Struct_1(select(arg_2, select(vec3<bool>(arg_2.x, true, !arg_2.x), !vec3<bool>(arg_2.x, arg_2.x, arg_2.x), arg_2.x), all(select(!vec4<bool>(arg_2.x, arg_2.x, true, true), select(vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x), vec4<bool>(true, false, arg_2.x, true), arg_2.x), !arg_2.x))));
    global3 = Struct_3(1047f);
    let var_1 = Struct_1(var_0.a);
    global2 = array<Struct_2, 1>();
    global1 = vec4<u32>(abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(23661u, arg_3.x, 1u, global1.x), min(vec4<u32>(u_input.a, arg_3.x, 8030u, 0u), u_input.b))), 4294967295u, _wgslsmith_add_u32(global1.x, ~_wgslsmith_clamp_u32(4294967295u, u_input.a, 0u) | (36985u ^ _wgslsmith_mod_u32(arg_3.x, u_input.a))), u_input.b.x);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2813f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.a)) * _wgslsmith_div_f32(arg_1.a, arg_0)), 371f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_0, global3.a)), -1283f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.a))), global3.a, _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1711f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a + arg_1.a)), false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.xy, _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u) ^ global1.zz, vec2<u32>(1u, u_input.b.x), u_input.b.wz | max(global1.yz, _wgslsmith_mult_vec2_u32(vec2<u32>(global1.x, global1.x), vec2<u32>(12510u, 1u))))), 15u)];
    global3 = global0[_wgslsmith_index_u32(global1.x, 15u)];
    let var_1 = ~firstTrailingBit(u_input.b.x << ((609u | u_input.a) % 32u));
    let var_2 = u_input.c;
    var var_3 = ~abs(-1i);
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(floor(-315f)), func_1(true, _wgslsmith_f_op_f32(-global3.a), u_input.c, global0[_wgslsmith_index_u32(reverseBits(3982u), 15u)]), select(vec3<bool>(select(false, true, true), true, any(vec4<bool>(true, true, false, false))), vec3<bool>(true, true, true), vec3<bool>(true, all(vec2<bool>(true, true)), false)), ~(~(~vec2<u32>(var_1, u_input.b.x))))));
    var_0 = func_1(!select(_wgslsmith_f_op_f32(967f + global3.a) == _wgslsmith_f_op_f32(max(var_0.a, 1007f)), any(vec4<bool>(true, true, false, false)), all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1544f) + _wgslsmith_f_op_f32(sign(global3.a))), min(1i, 24166i), Struct_3(_wgslsmith_f_op_f32(step(var_0.a, _wgslsmith_f_op_f32(abs(global3.a))))));
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

