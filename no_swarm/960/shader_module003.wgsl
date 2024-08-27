struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 26>;

var<private> global1: array<f32, 2> = array<f32, 2>(621f, 200f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>) -> vec2<bool> {
    return select(select(arg_1.xy, !arg_1.yw, arg_1.wz), select(select(vec2<bool>(42110u < u_input.b, !arg_1.x), select(vec2<bool>(false, arg_1.x), select(vec2<bool>(arg_1.x, false), arg_1.zz, true), vec2<bool>(true, true)), arg_1.x), vec2<bool>(true, false), select(arg_1.x, true, any(vec3<bool>(arg_1.x, arg_1.x, false))) & !arg_1.x), select(select(select(select(vec2<bool>(arg_1.x, arg_1.x), arg_1.wx, false), arg_1.yy, true), vec2<bool>(true, false), arg_1.xw), select(arg_1.yz, vec2<bool>(arg_1.x, true), false), !vec2<bool>(true, arg_1.x)));
}

fn func_2() -> bool {
    global1 = array<f32, 2>();
    let var_0 = Struct_1(!(!select(vec2<bool>(true, true), func_3(0u, vec4<bool>(false, false, false, true)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)))), vec2<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c, 2u)]))) >= global1[_wgslsmith_index_u32(~u_input.d, 2u)], true), -vec3<i32>(-u_input.a, u_input.a, u_input.a), vec2<bool>(false, all(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), ~(~vec4<u32>(38798u, 40452u, 0u, 1u) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, u_input.d, 1u, 0u), vec4<u32>(21117u, 4294967295u, u_input.d, 0u)) % vec4<u32>(32u))) ^ vec4<u32>(~28116u, _wgslsmith_mult_u32(u_input.c, _wgslsmith_mod_u32(296u, u_input.d)), u_input.d, 1u));
    let var_1 = Struct_2(Struct_1(select(select(var_0.b, !var_0.b, var_0.b.x), select(!var_0.b, func_3(28002u, vec4<bool>(false, true, false, true)), var_0.a), select(!vec2<bool>(true, var_0.b.x), var_0.d, false)), select(var_0.a, !vec2<bool>(false, var_0.d.x), vec2<bool>(var_0.c.x > -2147483647i, !var_0.b.x)), -var_0.c, func_3(u_input.b, vec4<bool>(var_0.d.x, true, true, true)), firstTrailingBit(~max(var_0.e, var_0.e))), var_0);
    var var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, 41578u), _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.e.x, 55676u), vec2<u32>(var_1.b.e.x, 1u)), ~1u, var_0.e.x)), vec2<u32>(19835u, var_0.e.x)));
    global1 = array<f32, 2>();
    return var_1.b.b.x;
}

fn func_1() -> vec3<u32> {
    global0 = array<vec3<f32>, 26>();
    var var_0 = _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.d, 2u)], 121f);
    var var_1 = _wgslsmith_f_op_f32(-1387f - global1[_wgslsmith_index_u32(80073u, 2u)]);
    let var_2 = Struct_1(select(vec2<bool>(true, func_2()), !vec2<bool>(true, func_3(0u, vec4<bool>(true, true, true, false)).x), false), !vec2<bool>(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(4294967295u, 2u)], 1000f)) == _wgslsmith_f_op_f32(2681f * global1[_wgslsmith_index_u32(1u, 2u)]), !any(vec3<bool>(true, false, true))), vec3<i32>(0i, -_wgslsmith_clamp_i32(-54426i, -32406i, u_input.a), 1i) << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 69521u, u_input.c) | _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.b, u_input.c), vec3<u32>(51654u, 0u, u_input.c)), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, u_input.d, 4294967295u), vec3<u32>(0u, u_input.d, u_input.b))) % vec3<u32>(32u)), select(!vec2<bool>(-368f != global1[_wgslsmith_index_u32(u_input.d, 2u)], true), !vec2<bool>(true, all(vec2<bool>(true, false))), select(false, true, !all(vec4<bool>(true, false, true, false)))), ~(~max(~vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), vec4<u32>(4294967295u, u_input.c, u_input.c, 84653u))));
    let var_3 = Struct_1(vec2<bool>(!(!(var_2.c.x == u_input.a)), false), vec2<bool>(all(select(vec2<bool>(true, false), func_3(var_2.e.x, vec4<bool>(var_2.d.x, var_2.b.x, true, false)), true)), !(var_2.d.x != func_3(4294967295u, vec4<bool>(false, true, true, true)).x)), ~(var_2.c << (_wgslsmith_sub_vec3_u32(var_2.e.yxz, max(vec3<u32>(var_2.e.x, 3049u, var_2.e.x), var_2.e.xzz)) % vec3<u32>(32u))), select(func_3(_wgslsmith_dot_vec2_u32(~var_2.e.zx, ~var_2.e.wy), vec4<bool>(true, true, true, true)), vec2<bool>(true, true), var_2.b), vec4<u32>(var_2.e.x, var_2.e.x, min(~59212u, _wgslsmith_sub_u32(firstLeadingBit(var_2.e.x), 4294967295u)), u_input.d));
    return countOneBits(reverseBits(vec3<u32>(~u_input.b, firstLeadingBit(7955u), 90246u) << (~var_3.e.zww % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_f32(-1582f + global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, _wgslsmith_add_u32(u_input.c, 1u), 4754u & u_input.c), func_1()), select(vec3<u32>(max(4294967295u, 4294967295u), _wgslsmith_div_u32(u_input.c, 25597u), u_input.d), ~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, 4294967295u, u_input.c), vec3<u32>(5260u, 1u, u_input.b)), select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), true))), 2u)]);
    var_0 = ~(~(~0u));
    let var_2 = Struct_2(Struct_1(select(vec2<bool>(true, true), vec2<bool>(func_3(u_input.c, vec4<bool>(false, false, false, false)).x, any(vec4<bool>(false, true, false, true))), (60982u >> (u_input.c % 32u)) >= 45944u), select(vec2<bool>(true, true), vec2<bool>(true, true), !func_3(4294967295u, vec4<bool>(false, true, true, false))), reverseBits(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(1i, 16186i, -20399i))), vec2<bool>(true, true), ((vec4<u32>(66394u, u_input.d, 83214u, u_input.b) | vec4<u32>(u_input.d, u_input.c, u_input.b, u_input.b)) >> (vec4<u32>(0u, 17918u, u_input.b, u_input.c) % vec4<u32>(32u))) | ~(~vec4<u32>(13662u, u_input.c, 1u, 21920u))), Struct_1(vec2<bool>(true, all(vec4<bool>(true, true, false, true))), !(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), max(_wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(u_input.a, u_input.a, 0i)), ~vec3<i32>(u_input.a, u_input.a, 2147483647i)), vec3<i32>(0i, u_input.a, u_input.a) | ~vec3<i32>(u_input.a, -34470i, u_input.a)), vec2<bool>(!(u_input.b < u_input.c), !func_2()), vec4<u32>(firstTrailingBit(1u), u_input.c, max(abs(u_input.b), u_input.b), 4294967295u)));
    var_0 = 1u;
    var_0 = 4294967295u;
    var_0 = 19866u;
    global0 = array<vec3<f32>, 26>();
    var var_3 = _wgslsmith_dot_vec3_i32(select(var_2.b.c, min(vec3<i32>(-1i, var_2.b.c.x, u_input.a), _wgslsmith_clamp_vec3_i32(var_2.b.c, vec3<i32>(-2147483647i, 2147483647i, 9117i), var_2.b.c)), select(vec3<bool>(var_2.a.d.x, var_2.b.d.x, var_2.a.a.x), select(vec3<bool>(true, true, var_2.b.a.x), vec3<bool>(var_2.b.a.x, var_2.b.a.x, true), var_2.b.b.x), true)), abs(~vec3<i32>(u_input.a, u_input.a, u_input.a))) <= _wgslsmith_dot_vec3_i32(var_2.a.c ^ ~(-var_2.b.c), vec3<i32>(-1i, u_input.a, ~(~var_2.a.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.b.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(473f, _wgslsmith_f_op_f32(-2359f - 500f))))), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(var_2.a.e.ywy, vec3<u32>(31162u, 4294967295u, 54668u)), reverseBits(vec3<u32>(var_2.a.e.x, 9513u, 56301u))), 1u, 1u, _wgslsmith_mod_u32(u_input.c << (78364u % 32u), ~var_2.b.e.x)) << (var_2.b.e % vec4<u32>(32u)), _wgslsmith_f_op_f32(min(var_1, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1), 267f, !var_2.a.a.x)))));
}

