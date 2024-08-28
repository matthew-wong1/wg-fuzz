struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(56783u, 0u, 0u, 61493u), vec4<u32>(0u, 1u, 89982u, 0u), vec4<u32>(4294967295u, 0u, 37733u, 1u), vec4<u32>(16862u, 0u, 34353u, 4294967295u), vec4<u32>(1u, 1u, 0u, 0u), vec4<u32>(4294967295u, 2123u, 77980u, 17502u), vec4<u32>(0u, 28155u, 28800u, 40846u), vec4<u32>(75203u, 92201u, 26984u, 0u), vec4<u32>(4562u, 1u, 0u, 6052u), vec4<u32>(5048u, 42513u, 2774u, 32396u), vec4<u32>(35930u, 0u, 4294967295u, 0u), vec4<u32>(4294967295u, 6251u, 4294967295u, 32786u), vec4<u32>(67360u, 0u, 4294967295u, 53348u), vec4<u32>(5458u, 1u, 0u, 0u), vec4<u32>(1u, 18908u, 4294967295u, 1u));

var<private> global1: Struct_1 = Struct_1(5263i);

var<private> global2: Struct_2;

var<private> global3: vec4<i32> = vec4<i32>(0i, -1i, 61953i, -16997i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> i32 {
    var var_0 = Struct_2(!vec4<bool>(all(global2.a.xxx), -28292i < _wgslsmith_div_i32(arg_0.a, arg_0.a), (u_input.a < 4294967295u) | true, _wgslsmith_dot_vec2_u32(arg_1, arg_1) <= u_input.b), _wgslsmith_sub_i32(~_wgslsmith_sub_i32(-2147483647i, global1.a | -1i), 1i), Struct_1(~_wgslsmith_clamp_i32(-1i, arg_0.a, global1.a)));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(150f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1551f, _wgslsmith_f_op_f32(-573f - -169f)))), -113f)));
    var_0 = Struct_2(var_0.a, ~0i, Struct_1(1i));
    global0 = array<vec4<u32>, 15>();
    let var_2 = Struct_2(select(select(vec4<bool>(any(vec4<bool>(true, false, true, false)), true, true, true), select(vec4<bool>(var_0.a.x, true, var_0.a.x, global2.a.x), !vec4<bool>(true, false, global2.a.x, false), true), vec4<bool>(all(var_0.a), u_input.a <= 1u, !global2.a.x, global2.a.x)), select(global2.a, select(global2.a, vec4<bool>(global2.a.x, global2.a.x, global2.a.x, false), true), var_0.a.x), !vec4<bool>(any(vec3<bool>(false, true, var_0.a.x)), true, true, true)), global3.x, global2.c);
    return -max(~(-_wgslsmith_dot_vec4_i32(vec4<i32>(-40809i, global3.x, var_2.c.a, var_2.c.a), vec4<i32>(2147483647i, -8470i, global2.b, 15344i))), global1.a);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec4<f32>) -> u32 {
    let var_0 = vec3<i32>(_wgslsmith_sub_i32(-global3.x, _wgslsmith_sub_i32(-arg_1.a >> (12275u % 32u), global1.a)), global2.b, ~(~arg_0));
    var var_1 = -global2.c.a;
    global3 = ~(~vec4<i32>(-1i, _wgslsmith_sub_i32(_wgslsmith_div_i32(arg_1.a, 1i), -20230i), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, 2147483647i, -170i), vec3<i32>(-27876i, global1.a, -4399i) ^ var_0)));
    global3 = -_wgslsmith_div_vec4_i32(~vec4<i32>(var_0.x, global2.c.a, -9609i, global3.x) & vec4<i32>(global1.a, -18861i, _wgslsmith_add_i32(var_0.x, global1.a), global1.a), -firstLeadingBit(~vec4<i32>(-2147483647i, -1i, var_0.x, arg_1.a)));
    var var_2 = global0[_wgslsmith_index_u32(u_input.a, 15u)];
    return u_input.a;
}

fn func_2() -> Struct_2 {
    global0 = array<vec4<u32>, 15>();
    let var_0 = -max(-abs(vec4<i32>(global3.x, 2147483647i, global3.x, global1.a)), vec4<i32>(-2147483647i, 0i, -1i, global1.a) >> (vec4<u32>(u_input.b, u_input.a, u_input.a, u_input.b) % vec4<u32>(32u))) >> (vec4<u32>(reverseBits(func_4(func_3(global2.c, vec2<u32>(102823u, u_input.a)), Struct_1(global2.c.a), global2.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(225f, 1018f, 1144f, 738f)))), ~44441u, u_input.a, u_input.a) % vec4<u32>(32u));
    global1 = Struct_1(-7384i);
    return Struct_2(vec4<bool>(true, global2.a.x, any(select(!vec3<bool>(true, global2.a.x, false), global2.a.zzx, all(vec4<bool>(global2.a.x, global2.a.x, true, global2.a.x)))), all(global2.a.wwy)), 2147483647i, global2.c);
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    return Struct_1(~global3.x);
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = false;
    global3 = reverseBits(vec4<i32>(_wgslsmith_dot_vec3_i32(~global3.yyx & ~global3.wyz, vec3<i32>(~global3.x, 2147483647i, -1i)), -(~global3.x), -arg_0, arg_3.a));
    let var_1 = vec2<u32>(u_input.a, ~u_input.a);
    global1 = Struct_1(-firstLeadingBit(i32(-1i) * -27485i));
    global2 = Struct_2(select(func_2().a, vec4<bool>(var_1.x == firstTrailingBit(15517u), _wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, arg_3.a, 24407i), global3.wwx) < reverseBits(18562i), any(vec2<bool>(false, var_0)), true), global2.a), _wgslsmith_add_i32(global2.b, arg_1.a), func_2().c);
    return func_2().c;
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>, arg_3: vec4<f32>) -> vec4<i32> {
    var var_0 = 1i;
    let var_1 = func_2();
    global0 = array<vec4<u32>, 15>();
    global1 = global2.c;
    let var_2 = arg_3.x;
    return ~abs(vec4<i32>(arg_0.a, -1i, global1.a, 64i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    var var_1 = Struct_1(~(~0i));
    let var_2 = ~vec3<u32>(1u, _wgslsmith_div_u32(53932u, 39280u) & var_0, var_0) >> (vec3<u32>(~u_input.a, min(0u, var_0), 2594u) % vec3<u32>(32u));
    let var_3 = global2.a.x;
    global0 = array<vec4<u32>, 15>();
    global3 = vec4<i32>(abs(global1.a), _wgslsmith_dot_vec4_i32(func_6(func_5(_wgslsmith_add_i32(global3.x, 43542i), Struct_1(global1.a), true, func_1()), 29397u, global2.a.zw, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-607f, -686f, 943f, 100f), vec4<f32>(-157f, 737f, -573f, -1000f))))), vec4<i32>(1i, select(global2.c.a, 0i, global2.a.x), global3.x, global1.a) << (global0[_wgslsmith_index_u32(abs(46109u), 15u)] % vec4<u32>(32u))), 2147483647i, abs(global2.b));
    var var_4 = 4294967295u;
    var_4 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-121f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(187f)), -724f)) - _wgslsmith_f_op_f32(ceil(-1030f)))), global3.zx, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, ~_wgslsmith_div_u32(0u, 4294967295u), ~(4294967295u << (u_input.b % 32u)), var_0), vec4<u32>(35344u, _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(max(var_2.x, 0u), 15u)], global0[_wgslsmith_index_u32(~63960u, 15u)]), var_0, ~_wgslsmith_clamp_u32(var_2.x, 0u, 20746u))));
}

