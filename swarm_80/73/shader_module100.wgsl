struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: u32,
    e: i32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec3<u32>, 25>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> vec4<bool> {
    let var_0 = select(false, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(896f, -1213f)))) <= global0.x, any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), true)));
    let var_1 = Struct_2(Struct_1(~min(u_input.b.x & 2453u, u_input.b.x), -1i, _wgslsmith_add_i32(~(-1i), 1i) >= (0i >> (u_input.b.x % 32u))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1000f)))), abs(_wgslsmith_dot_vec3_u32(~global1[_wgslsmith_index_u32(34295u, 25u)], vec3<u32>(1u, u_input.a, 1u)) & _wgslsmith_add_u32(select(17486u, u_input.b.x, false), ~53631u)), ~select(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), ~45111u), ~u_input.b.x, select(global0.x > -180f, all(vec3<bool>(var_0, true, false)), !var_0)), 1i);
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(exp2(var_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(min(global0.x, -431f)), _wgslsmith_f_op_f32(global0.x + -1143f)))), Struct_2(var_1.a, -492f, _wgslsmith_sub_u32(var_1.a.a, 5339u), _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(12069u, 0u), vec2<u32>(var_1.c, 1u), u_input.b), u_input.b), _wgslsmith_dot_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, var_1.a.b, 5082i), vec3<i32>(1i, var_1.e, 0i)), min(_wgslsmith_mod_vec3_i32(vec3<i32>(47705i, 25513i, var_1.a.b), vec3<i32>(var_1.a.b, -2147483647i, -2147483647i)), vec3<i32>(var_1.e, var_1.e, var_1.e)))));
    var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(699f, global0.x, var_1.b, var_2.b.b) - vec4<f32>(829f, global0.x, global0.x, 296f))))), Struct_2(Struct_1(55892u, firstLeadingBit(0i), select(select(true, false, var_1.a.c), !var_0, all(vec2<bool>(true, var_1.a.c)))), 494f, _wgslsmith_sub_u32(var_2.b.d, var_2.b.c), ~_wgslsmith_add_u32(1u, u_input.b.x), -abs(~var_2.b.a.b)));
    global0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(var_2.a.wyx, var_2.a.ywy)))))))), var_2.a.wyz));
    return vec4<bool>(var_1.a.c, select(!(!var_2.b.a.c), var_2.b.a.c, any(!vec4<bool>(var_0, var_2.b.a.c, var_0, var_1.a.c))), true, var_2.b.a.c);
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> bool {
    var var_0 = !(_wgslsmith_f_op_f32(274f + _wgslsmith_f_op_f32(-1045f - -446f)) == global0.x);
    var var_1 = vec4<bool>(arg_0.a <= ~u_input.b.x, true, any(vec2<bool>(false, true || arg_0.c)) & any(vec3<bool>(any(vec4<bool>(arg_0.c, true, arg_0.c, false)), !arg_0.c, arg_0.b < arg_1)), true);
    global1 = array<vec3<u32>, 25>();
    global1 = array<vec3<u32>, 25>();
    var var_2 = vec4<bool>(155f >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-644f)))), arg_0.c, select(all(func_3()), select(all(!vec2<bool>(var_1.x, arg_0.c)), arg_0.c, true), !all(vec2<bool>(true, var_1.x))), !(-reverseBits(-5275i) > (arg_0.b & _wgslsmith_clamp_i32(arg_1, arg_0.b, arg_1))));
    return select(false, _wgslsmith_sub_u32(~1u, _wgslsmith_div_u32(arg_0.a >> (u_input.b.x % 32u), 5503u)) == countOneBits(~59604u), arg_0.c);
}

fn func_1() -> Struct_3 {
    let var_0 = abs(select(_wgslsmith_mod_vec2_i32(~vec2<i32>(2147483647i, -9659i), -vec2<i32>(42789i, 23733i)), vec2<i32>(~23162i, _wgslsmith_add_i32(-61707i, 2147483647i)), vec2<bool>(true, func_2(Struct_1(u_input.b.x, -1i, true), -2147483647i)))) << ((vec2<u32>(1u, 33045u) >> (_wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, ~53247u)) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_1 = u_input.b.x;
    var var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-215f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - 2122f) + _wgslsmith_f_op_f32(abs(global0.x))), -1320f, _wgslsmith_f_op_f32(f32(-1f) * -1371f))), Struct_2(Struct_1(~(u_input.a << (1u % 32u)), var_0.x, true), 665f, u_input.a, _wgslsmith_dot_vec4_u32(~max(vec4<u32>(u_input.b.x, 1u, u_input.b.x, 90913u), vec4<u32>(1u, u_input.b.x, u_input.b.x, 62899u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, 0u), vec4<u32>(u_input.a, u_input.a, 29404u, 1u) >> (vec4<u32>(1u, u_input.b.x, u_input.a, u_input.b.x) % vec4<u32>(32u)))), max(var_0.x, _wgslsmith_add_i32(-2147483647i, var_0.x))));
    var var_3 = var_2.b.b;
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - var_2.b.b) * var_2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1572f)), _wgslsmith_f_op_f32(exp2(var_2.b.b))) * vec3<f32>(1951f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-1955f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -680f))))));
    return Struct_3(abs(vec3<i32>(var_2.b.e, var_0.x >> (u_input.a % 32u), _wgslsmith_add_i32(-23072i, 24236i)) & (vec3<i32>(5546i, 4960i, var_0.x) ^ ~vec3<i32>(var_2.b.a.b, var_2.b.a.b, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_1();
    var var_1 = Struct_2(Struct_1(0u, -44384i, !(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 2147483647i, -14409i), vec4<i32>(53488i, 16204i, var_0.a.x, var_0.a.x)) < ~(-16924i))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0.x, -386f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-942f - global0.x) - _wgslsmith_f_op_f32(global0.x + global0.x))))), 14082u, ~abs(_wgslsmith_add_u32(u_input.a, ~4294967295u)), -firstTrailingBit(8003i));
    let var_2 = var_1.a;
    global0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(259f))), _wgslsmith_f_op_f32(global0.x - -390f))), _wgslsmith_f_op_f32(trunc(global0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-417f, -1827f, global0.x) + vec3<f32>(2231f, global0.x, -1016f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(467f, var_1.b, var_1.b)), var_1.a.c))));
    var_1 = Struct_2(Struct_1(countOneBits(10682u), ~(-43231i), var_2.c), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2086f) + _wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_f32(-var_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * 727f))))), 27814u, ~(~var_2.a), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b);
}

