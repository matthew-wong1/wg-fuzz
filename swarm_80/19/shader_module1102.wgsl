struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: bool,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec4<u32>(2558u, 46794u, 4294967295u, 53538u), false, 112f, 2147483647i);

var<private> global1: array<vec3<bool>, 26> = array<vec3<bool>, 26>(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false));

var<private> global2: array<Struct_1, 21>;

var<private> global3: bool = false;

var<private> global4: bool = false;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> u32 {
    global1 = array<vec3<bool>, 26>();
    var var_0 = Struct_2(!select(!vec2<bool>(global0.c, global0.a), select(select(vec2<bool>(global0.a, true), vec2<bool>(global0.a, global0.c), vec2<bool>(true, global0.a)), vec2<bool>(true, true), select(vec2<bool>(global0.c, global0.c), vec2<bool>(global0.a, false), global0.a)), select(select(vec2<bool>(false, global0.a), vec2<bool>(true, global0.c), vec2<bool>(false, true)), vec2<bool>(global0.c, global0.c), select(vec2<bool>(global0.a, false), vec2<bool>(false, false), vec2<bool>(global0.a, global0.c)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(global0.d * global0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d + global0.d)), -1701f, _wgslsmith_f_op_f32(-global0.d)))), max(-42126i, -25701i), global2[_wgslsmith_index_u32(firstLeadingBit(abs(abs(0u))), 21u)], Struct_1(select(all(!vec2<bool>(global0.a, true)), !(global0.e == 0i), true), ~vec4<u32>(u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, 4294967295u), ~4294967295u, global0.b.x), false, _wgslsmith_f_op_f32(abs(global0.d)), 0i));
    var_0 = Struct_2(select(!(!var_0.a), !var_0.a, select(!(!var_0.a), select(var_0.a, !vec2<bool>(true, global0.c), true), select(vec2<bool>(true, false), !vec2<bool>(false, var_0.d.a), true))), _wgslsmith_f_op_vec4_f32(-var_0.b), -33168i, Struct_1(var_0.a.x && false, vec4<u32>(~4294967295u, 0u, _wgslsmith_div_u32(firstTrailingBit(global0.b.x), global0.b.x), ~_wgslsmith_sub_u32(4294967295u, 1u)), !(any(vec3<bool>(var_0.d.a, false, true)) != (true & var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-105f))), -global0.e ^ global0.e), Struct_1(all(select(vec2<bool>(var_0.e.c, var_0.a.x), !var_0.a, !var_0.a)), ~_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, 52015u, global0.b.x, global0.b.x)), vec4<u32>(2555u, var_0.e.b.x, 11694u, 0u)), true, global0.d, var_0.c));
    var var_1 = Struct_2(vec2<bool>(global0.a, !all(vec4<bool>(global0.c, false, var_0.d.c, global0.a)) | any(vec4<bool>(true, true, global0.c, false))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(853f - _wgslsmith_f_op_f32(f32(-1f) * -1928f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.e.d, 896f) * _wgslsmith_f_op_f32(-760f + var_0.d.d)), -795f, global0.d), var_0.b), select(-1i, -var_0.d.e, global0.c), Struct_1(global0.e == 16091i, ~_wgslsmith_sub_vec4_u32(global0.b, _wgslsmith_sub_vec4_u32(vec4<u32>(37373u, 1u, global0.b.x, var_0.e.b.x), vec4<u32>(19619u, u_input.a, 7917u, 13848u))), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, var_0.d.c, true, global0.a), vec4<bool>(global0.c, true, global0.a, global0.c), vec4<bool>(var_0.a.x, true, global0.a, global0.a)), vec4<bool>(false, global0.a, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.e.d, _wgslsmith_f_op_f32(f32(-1f) * -233f)))), -13180i), var_0.d);
    var var_2 = 4294967295u;
    return 16312u;
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    let var_0 = arg_2.d;
    var var_1 = arg_2;
    var var_2 = (var_0.b.yy | global0.b.yx) >> (vec2<u32>(~_wgslsmith_clamp_u32(39080u, ~4294967295u, ~46631u), _wgslsmith_add_u32(countOneBits(~4294967295u), func_3())) % vec2<u32>(32u));
    global4 = -2147483647i != _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(~arg_3.e, -2147483647i), arg_2.e.e), -5107i);
    let var_3 = reverseBits(func_3());
    return select(34205u, 17159u, false);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<i32>) -> vec3<i32> {
    global0 = Struct_1(!(func_2(reverseBits(global0.b.x), arg_3 >> (global0.b.yz % vec2<u32>(32u)), Struct_2(vec2<bool>(arg_1.a, true), vec4<f32>(-845f, arg_1.d, arg_1.d, 553f), global0.e, Struct_1(arg_0.a, vec4<u32>(47808u, arg_0.b.x, global0.b.x, 24705u), global0.c, 2000f, 5288i), arg_2.d), Struct_1(arg_0.c, vec4<u32>(0u, arg_1.b.x, 24289u, u_input.b.x), true, -583f, -20569i)) <= u_input.a), countOneBits(~max(~vec4<u32>(1u, global0.b.x, 10308u, arg_2.e.b.x), ~arg_0.b)), arg_1.c, -1034f, _wgslsmith_dot_vec2_i32(arg_3, _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(arg_1.e, arg_0.e), 1i), ~vec2<i32>(-22651i, -28282i))));
    global2 = array<Struct_1, 21>();
    let var_0 = arg_3;
    var var_1 = arg_1;
    let var_2 = !arg_2.a;
    return (vec3<i32>(-1i) * -abs(vec3<i32>(global0.e, -35578i, 0i) ^ vec3<i32>(-13950i, var_0.x, 0i))) << (arg_1.b.yzz % vec3<u32>(32u));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<u32>) -> StorageBuffer {
    global0 = Struct_1(false, max(countOneBits(vec4<u32>(arg_1.x, 0u, arg_1.x, 39812u)) & vec4<u32>(u_input.b.x, _wgslsmith_clamp_u32(arg_1.x, 68292u, 4294967295u), arg_1.x, 0u), vec4<u32>(~arg_1.x, ~select(0u, u_input.a, false), 1u, ~0u)), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.d)))) + _wgslsmith_f_op_f32(-global0.d)), _wgslsmith_dot_vec3_i32(vec3<i32>(~_wgslsmith_div_i32(global0.e, global0.e), i32(-1i) * -1i, -1i), func_1(global2[_wgslsmith_index_u32(select(19538u, 1u, global0.a), 21u)], global2[_wgslsmith_index_u32(global0.b.x, 21u)], Struct_2(vec2<bool>(true, true), vec4<f32>(1000f, 1508f, global0.d, global0.d), ~(-2147483647i), Struct_1(global0.c, vec4<u32>(u_input.a, 34778u, arg_1.x, global0.b.x), false, global0.d, global0.e), Struct_1(true, global0.b, true, global0.d, arg_0.x)), ~(-arg_0.xz))));
    var var_0 = 12529u;
    var var_1 = reverseBits(firstTrailingBit(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(arg_0.x, -1i, 1i, arg_0.x), ~vec4<i32>(31595i, arg_0.x, -2147483647i, arg_0.x)), vec4<i32>(-1i, 1i, arg_0.x, firstTrailingBit(15766i)))));
    var_0 = 55723u;
    let var_2 = vec2<i32>(arg_0.x, _wgslsmith_sub_i32(-global0.e ^ reverseBits(_wgslsmith_clamp_i32(0i, var_1.x, global0.e)), ~_wgslsmith_mod_i32(-4919i, ~arg_0.x)));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d, global0.d) - _wgslsmith_div_vec2_f32(vec2<f32>(global0.d, -186f), vec2<f32>(global0.d, global0.d))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-188f, -601f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global0.d) * vec2<f32>(global0.d, global0.d)))))), u_input.b.yz);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(~(func_1(Struct_1(global0.a, vec4<u32>(global0.b.x, 4598u, 0u, 4294967295u), false, global0.d, global0.e), Struct_1(global0.a, global0.b, global0.c, -176f, -1i), Struct_2(vec2<bool>(false, global0.a), vec4<f32>(global0.d, 595f, global0.d, -462f), global0.e, Struct_1(false, vec4<u32>(28861u, 0u, global0.b.x, 41706u), global0.c, 147f, global0.e), global2[_wgslsmith_index_u32(u_input.a, 21u)]), vec2<i32>(1i, global0.e) & vec2<i32>(global0.e, -2147483647i)) & vec3<i32>(global0.e ^ global0.e, -33850i, global0.e)), vec2<u32>(~global0.b.x, _wgslsmith_dot_vec2_u32(global0.b.yw, max(firstTrailingBit(vec2<u32>(2206u, 22265u)), global0.b.zy))));
}

