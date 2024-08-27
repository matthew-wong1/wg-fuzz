struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_2,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

var<private> global1: array<u32, 22> = array<u32, 22>(0u, 81547u, 26688u, 1u, 20260u, 55871u, 48035u, 4294967295u, 4294967295u, 0u, 4962u, 29148u, 55695u, 1u, 15958u, 4294967295u, 26256u, 25625u, 4294967295u, 42471u, 7914u, 51574u);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3) -> bool {
    global1 = array<u32, 22>();
    let var_0 = arg_1;
    var var_1 = arg_0.a.a.d & ~(firstTrailingBit(~arg_1.c.d.d) & reverseBits(global1[_wgslsmith_index_u32(105710u, 22u)]));
    global0 = array<Struct_1, 29>();
    let var_2 = _wgslsmith_clamp_u32(~reverseBits(abs(82046u)), 47635u, global1[_wgslsmith_index_u32(~92790u, 22u)]);
    return true;
}

fn func_2(arg_0: bool) -> vec4<bool> {
    global0 = array<Struct_1, 29>();
    var var_0 = !vec2<bool>(all(select(select(vec4<bool>(arg_0, false, arg_0, true), vec4<bool>(false, false, true, false), vec4<bool>(arg_0, false, true, arg_0)), select(vec4<bool>(false, true, arg_0, arg_0), vec4<bool>(true, arg_0, false, arg_0), arg_0), select(vec4<bool>(false, arg_0, false, false), vec4<bool>(arg_0, arg_0, arg_0, arg_0), true))), true | any(!vec2<bool>(arg_0, true)));
    var_0 = select(!select(vec2<bool>(func_3(Struct_4(Struct_2(Struct_1(vec3<i32>(11943i, -2147483647i, 1i), -39402i, -435f, 32703u, -2250f), false, u_input.c.x, global0[_wgslsmith_index_u32(u_input.d, 29u)]), 0i), Struct_3(global0[_wgslsmith_index_u32(u_input.a.x, 29u)], vec3<u32>(0u, 18283u, u_input.a.x), Struct_2(Struct_1(vec3<i32>(0i, 1i, 1618i), -1862i, -1868f, u_input.d, -337f), false, u_input.d, Struct_1(vec3<i32>(-2147483647i, -2147483647i, 9942i), 2147483647i, 1146f, 66869u, 299f)), vec2<i32>(-19720i, 2754i), global0[_wgslsmith_index_u32(u_input.d, 29u)])), !arg_0), vec2<bool>(global1[_wgslsmith_index_u32(22251u, 22u)] != 6027u, true), !(!vec2<bool>(true, arg_0))), select(vec2<bool>(false, true), vec2<bool>(var_0.x, any(!vec4<bool>(arg_0, false, var_0.x, true))), vec2<bool>(true, any(vec3<bool>(false, var_0.x, true)))), any(vec4<bool>(any(vec3<bool>(arg_0, false, false)), 1i != _wgslsmith_clamp_i32(12610i, -5034i, -37330i), arg_0, !arg_0)));
    return select(select(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, arg_0), select(vec4<bool>(var_0.x, true, true, arg_0), vec4<bool>(var_0.x, true, true, true), false), vec4<bool>(var_0.x, false, true, false)), !vec4<bool>(var_0.x, all(vec4<bool>(arg_0, true, true, var_0.x)), true, true), select(select(select(vec4<bool>(false, true, true, var_0.x), vec4<bool>(arg_0, var_0.x, arg_0, false), vec4<bool>(arg_0, arg_0, false, true)), select(vec4<bool>(arg_0, arg_0, var_0.x, false), vec4<bool>(false, true, false, true), vec4<bool>(var_0.x, false, true, false)), all(vec2<bool>(arg_0, true))), !vec4<bool>(true, true, true, arg_0), vec4<bool>(!var_0.x, true, true, false))), select(vec4<bool>(true, true, any(!vec4<bool>(true, false, true, arg_0)), arg_0), !select(!vec4<bool>(true, false, true, arg_0), !vec4<bool>(var_0.x, arg_0, arg_0, arg_0), all(vec3<bool>(false, true, false))), true), !arg_0);
}

fn func_4(arg_0: vec4<bool>) -> vec3<i32> {
    return (vec3<i32>(~_wgslsmith_div_i32(59693i, -2147483647i), i32(-1i) * -1i, 1i) ^ _wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, -1i >> (u_input.c.x % 32u)), min(vec3<i32>(-37047i, -2147483647i, -6382i), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, 10935i, 17442i), vec3<i32>(10802i, 1i, 17614i))))) & _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(~(vec3<i32>(-2147483647i, -1i, 1i) >> (u_input.c % vec3<u32>(32u))), vec3<i32>(-13760i, abs(0i), i32(-1i) * -1i)), vec3<i32>(firstTrailingBit(2147483647i >> (global1[_wgslsmith_index_u32(1u, 22u)] % 32u)), -max(-26697i, -34562i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, 0i), vec3<i32>(1i, 1i, 1i))));
}

fn func_1(arg_0: vec4<f32>) -> Struct_3 {
    global0 = array<Struct_1, 29>();
    let var_0 = Struct_1(abs(func_4(select(func_2(false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), -41636i, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_0.x)))), abs(global1[_wgslsmith_index_u32(~u_input.d, 22u)]), _wgslsmith_f_op_f32(ceil(arg_0.x)));
    let var_1 = global1[_wgslsmith_index_u32(37186u, 22u)];
    global0 = array<Struct_1, 29>();
    let var_2 = !vec4<bool>(select(func_2(all(vec3<bool>(false, false, true))).x, var_0.c > -281f, false), !any(vec2<bool>(true, true)), true & (_wgslsmith_f_op_f32(-arg_0.x) >= _wgslsmith_div_f32(-461f, 1714f)), ((var_0.b < 19671i) == false) & (1u > ~u_input.b.x));
    return Struct_3(var_0, ~u_input.b, Struct_2(Struct_1(~(var_0.a & vec3<i32>(-1i, 15528i, var_0.b)), func_4(select(var_2, var_2, false)).x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(step(var_0.c, 1178f)), any(var_2.xw))), ~1u, var_0.e), !func_2(true).x, _wgslsmith_div_u32(1u, max(u_input.a.x | var_0.d, select(19438u, global1[_wgslsmith_index_u32(5228u, 22u)], var_2.x))), Struct_1(_wgslsmith_mod_vec3_i32(max(var_0.a, var_0.a), vec3<i32>(var_0.a.x, 1i, 2147483647i)), -(var_0.a.x << (12406u % 32u)), var_0.e, ~0u, -269f)), select(~_wgslsmith_div_vec2_i32(vec2<i32>(-69961i, var_0.b), vec2<i32>(var_0.b, var_0.b)) & ~vec2<i32>(var_0.b, 0i), min(countOneBits(vec2<i32>(-2147483647i, 49148i)), ~(~var_0.a.yx)), !(var_2.x || any(vec4<bool>(var_2.x, var_2.x, false, true)))), global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(reverseBits(var_0.d), 22u)], 22u)], 29u)]);
}

fn func_5(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_3) -> u32 {
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    global1 = array<u32, 22>();
    global1 = array<u32, 22>();
    var var_0 = ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_2.e.d, 22u)], 22u)];
    return arg_2.a.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 29>();
    var var_0 = 40077u;
    var_0 = countOneBits(_wgslsmith_mult_u32(func_5(u_input.b.yz, false, func_1(vec4<f32>(663f, 372f, 282f, 1846f))), 44498u));
    var var_1 = Struct_4(func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(591f, -415f, 1296f, -319f)), _wgslsmith_div_vec4_f32(vec4<f32>(1121f, 1864f, 622f, 816f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-234f, 136f, 418f, 901f))))).c, ~1i & -_wgslsmith_dot_vec3_i32(vec3<i32>(-8073i, 2147483647i, -1697i), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 48943i), vec3<i32>(-61113i, -27504i, 33216i))));
    let var_2 = vec4<bool>(all(!func_2(!var_1.a.b).wwz), false, !all(vec3<bool>(false, true, false)), any(vec2<bool>(var_1.a.b, !(true != var_1.a.b))));
    var_1 = Struct_4(var_1.a, ~(~2125i));
    var var_3 = -12956i;
    var var_4 = u_input.a;
    global0 = array<Struct_1, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(var_4.x, max(global1[_wgslsmith_index_u32(0u, 22u)], var_4.x)), var_1.a.a.a.x);
}

