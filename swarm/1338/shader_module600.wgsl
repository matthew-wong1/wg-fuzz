struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: i32,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32) -> bool {
    let var_0 = vec2<i32>(arg_1.c.x, -1i);
    return !all(!(!(!vec3<bool>(arg_0.a.x, arg_0.d.d.b, arg_1.b))));
}

fn func_3() -> vec3<i32> {
    global0 = array<f32, 3>();
    let var_0 = u_input.b;
    global0 = array<f32, 3>();
    global0 = array<f32, 3>();
    let var_1 = Struct_2(-min(min(vec3<i32>(1i, -2147483647i, 2147483647i), vec3<i32>(13331i, -2147483647i, 1i)) >> (vec3<u32>(var_0.x, 40998u, var_0.x) % vec3<u32>(32u)), ~(~vec3<i32>(1i, -2147483647i, 0i))), vec2<f32>(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(2494u, 3u)], -1535f)), 887f), true, Struct_1(_wgslsmith_div_u32(~var_0.x, _wgslsmith_clamp_u32(84134u, u_input.a.x, 1u)) ^ ((u_input.a.x & 4294967295u) | ~u_input.a.x), func_1(Struct_3(vec2<bool>(false, true), vec2<f32>(global0[_wgslsmith_index_u32(var_0.x, 3u)], global0[_wgslsmith_index_u32(u_input.b.x, 3u)]), -22198i, Struct_2(vec3<i32>(0i, 2147483647i, -8313i), vec2<f32>(global0[_wgslsmith_index_u32(15664u, 3u)], -2049f), false, Struct_1(u_input.b.x, false, vec2<i32>(2057i, -49586i), u_input.b.x)), Struct_1(1u, true, vec2<i32>(1i, 4520i), u_input.a.x)), Struct_1(0u, true, _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, -47406i), vec2<i32>(-1i, -29282i)), 4294967295u), _wgslsmith_div_u32(_wgslsmith_mod_u32(var_0.x, var_0.x), ~var_0.x)), vec2<i32>(min(_wgslsmith_mod_i32(2147483647i, -8783i), _wgslsmith_sub_i32(1i, -1i)), 1i), _wgslsmith_dot_vec2_u32(u_input.a.yy, min(u_input.a.zy, ~vec2<u32>(1u, var_0.x)))));
    return var_1.a;
}

fn func_2(arg_0: vec2<i32>) -> Struct_3 {
    var var_0 = Struct_2(_wgslsmith_add_vec3_i32(abs(_wgslsmith_add_vec3_i32(func_3(), select(vec3<i32>(-2147483647i, arg_0.x, arg_0.x), vec3<i32>(arg_0.x, -1i, arg_0.x), false))), vec3<i32>(_wgslsmith_div_i32(-2147483647i, -1i), _wgslsmith_div_i32(6272i, ~2147483647i), arg_0.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(6189u, 3u)], 839f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-141f, -122f) * vec2<f32>(global0[_wgslsmith_index_u32(27723u, 3u)], -1525f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(286f, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 3u)], -452f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(0u, 3u)], 432f) - vec2<f32>(-784f, -1045f)))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), !(true && any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)))), Struct_1(~select(u_input.a.x, 0u, true) << (0u % 32u), true, _wgslsmith_div_vec2_i32(arg_0, arg_0) & arg_0, u_input.a.x));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -378f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -279f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1736f))))));
    let var_2 = vec2<i32>(arg_0.x, -var_0.d.c.x);
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_0.b.x, 1488f)), _wgslsmith_f_op_f32(round(var_0.b.x)), all(vec2<bool>(var_0.d.b, true)))))), var_0.b.x, all(!vec4<bool>(true || var_0.c, true, var_0.d.b, var_0.d.b && var_0.d.b))));
    var var_4 = vec4<bool>(!(!var_0.d.b), var_3 < -498f, true, var_0.d.b && true);
    return Struct_3(var_4.yx, vec2<f32>(_wgslsmith_f_op_f32(step(var_0.b.x, _wgslsmith_f_op_f32(515f * global0[_wgslsmith_index_u32(u_input.b.x, 3u)]))), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(var_0.b.x, -245f)), var_0.b.x)))), reverseBits(-22969i), Struct_2(vec3<i32>(~_wgslsmith_dot_vec2_i32(var_0.a.yz, vec2<i32>(0i, -1i)), var_2.x, 633i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(14295u, 3u)], var_0.b.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(386f, 544f), vec2<f32>(var_3, -781f), vec2<bool>(var_4.x, var_4.x))), var_4.wy)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, -594f))), all(var_4.zz), var_0.d), Struct_1(0u, select(false | any(vec2<bool>(false, var_4.x)), any(vec3<bool>(var_4.x, false, false)), true), vec2<i32>(-1i, -1i), min(~var_0.d.a, var_0.d.a) & ~(var_0.d.a ^ 31036u)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_3) -> vec4<i32> {
    global0 = array<f32, 3>();
    var var_0 = 1i;
    let var_1 = Struct_1(reverseBits(~36727u), arg_1.x == arg_1.x, arg_2.e.c, ~arg_0.d);
    var var_2 = func_2(_wgslsmith_add_vec2_i32(vec2<i32>(-33980i, 2147483647i), firstTrailingBit(arg_0.c))).d;
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0.a, 3u)] + -125f) * _wgslsmith_f_op_f32(f32(-1f) * -550f)))) - _wgslsmith_f_op_vec2_f32(-var_2.b));
    return vec4<i32>(-1i) * -abs(abs(vec4<i32>(var_2.a.x, -3127i, -2147483647i, arg_2.e.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 3>();
    global0 = array<f32, 3>();
    global0 = array<f32, 3>();
    var var_0 = _wgslsmith_dot_vec2_i32(~firstTrailingBit(min(~vec2<i32>(-5691i, 1i), vec2<i32>(-1i, -19304i))), -vec2<i32>(2147483647i, 0i));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 3u)]) - global0[_wgslsmith_index_u32(u_input.a.x, 3u)])), 991f)));
    var var_2 = ~max(func_4(Struct_1(firstTrailingBit(u_input.a.x), func_1(Struct_3(vec2<bool>(false, true), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], -974f), -40298i, Struct_2(vec3<i32>(-11495i, 1i, -14395i), vec2<f32>(1089f, -1000f), false, Struct_1(84432u, true, vec2<i32>(-28970i, 1i), 53228u)), Struct_1(4294967295u, true, vec2<i32>(-37144i, 8693i), u_input.a.x)), Struct_1(u_input.b.x, false, vec2<i32>(2147483647i, 22946i), u_input.a.x), u_input.a.x), -vec2<i32>(1i, 0i), 4294967295u), vec2<bool>(true, true), func_2(~vec2<i32>(-15043i, -2147483647i))), min(vec4<i32>(-1i) * -vec4<i32>(-1i, 4349i, -20653i, 2147483647i), -firstTrailingBit(vec4<i32>(-2147483647i, 2147483647i, -35278i, -3406i))));
    let var_3 = Struct_1(u_input.b.x, true, vec2<i32>(var_2.x, var_2.x) | _wgslsmith_mod_vec2_i32(var_2.xz, vec2<i32>(-2147483647i, reverseBits(var_2.x))), 1u);
    let var_4 = func_2(func_3().xz).d;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~_wgslsmith_div_u32(firstTrailingBit(u_input.b.x), ~33219u), select(_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_3.a, u_input.a.x), 1u), u_input.a.x, any(vec3<bool>(var_3.b, true, true))), ~u_input.b.x, 16269u), vec2<i32>(var_2.x, var_4.a.x));
}

