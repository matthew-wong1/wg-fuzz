struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(vec3<u32>(4294967295u, 19733u, 1u)), Struct_3(vec3<u32>(47889u, 1u, 4294967295u)), Struct_3(vec3<u32>(4294967295u, 0u, 45723u)), Struct_3(vec3<u32>(10951u, 4294967295u, 41293u)), Struct_3(vec3<u32>(4294967295u, 89521u, 4294967295u)), Struct_3(vec3<u32>(28957u, 0u, 21082u)), Struct_3(vec3<u32>(4294967295u, 4294967295u, 10595u)), Struct_3(vec3<u32>(68138u, 9401u, 4294967295u)), Struct_3(vec3<u32>(4294967295u, 14193u, 0u)), Struct_3(vec3<u32>(228u, 37514u, 18461u)), Struct_3(vec3<u32>(20419u, 58277u, 8711u)), Struct_3(vec3<u32>(1u, 19704u, 32492u)), Struct_3(vec3<u32>(43175u, 4294967295u, 73342u)), Struct_3(vec3<u32>(22020u, 3390u, 1u)), Struct_3(vec3<u32>(1u, 14720u, 8335u)), Struct_3(vec3<u32>(4294967295u, 4294967295u, 50821u)), Struct_3(vec3<u32>(53033u, 1u, 1u)), Struct_3(vec3<u32>(19797u, 35139u, 48564u)), Struct_3(vec3<u32>(4294967295u, 26044u, 1u)), Struct_3(vec3<u32>(1u, 0u, 73569u)), Struct_3(vec3<u32>(4294967295u, 0u, 27517u)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec3<i32> {
    var var_0 = any(select(vec4<bool>(any(vec2<bool>(false, false)), all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))), false, true), select(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(false, u_input.a.x == u_input.a.x, true, false), true), false));
    let var_1 = Struct_1(!vec3<bool>(false, true, all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)))));
    var var_2 = u_input.a ^ max(u_input.a, ~_wgslsmith_div_vec2_i32(vec2<i32>(57403i, -25674i), vec2<i32>(-39136i, u_input.a.x)) ^ u_input.a);
    var_2 = _wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(i32(-1i) * -(u_input.a.x << (7360u % 32u)), _wgslsmith_add_i32(u_input.a.x, -1i)));
    var var_3 = var_1;
    return _wgslsmith_clamp_vec3_i32(vec3<i32>(~(~(-1i)), -(countOneBits(u_input.a.x) | (i32(-1i) * -1i)), -50315i ^ var_2.x), -(firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -69500i, 2147483647i), vec3<i32>(-77939i, var_2.x, u_input.a.x))) | -(~vec3<i32>(-1i, var_2.x, var_2.x))), -vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, 2974i, -1i, 55284i), min(vec4<i32>(var_2.x, 2147483647i, 0i, -2147483647i), vec4<i32>(37207i, 1450i, 46900i, var_2.x))), u_input.a.x));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: i32) -> f32 {
    global0 = array<Struct_3, 21>();
    var var_0 = ~vec3<i32>(firstLeadingBit(u_input.a.x), ~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, 1i, arg_2, arg_2), select(vec4<i32>(-3206i, arg_2, arg_2, u_input.a.x), vec4<i32>(2147483647i, -2147483647i, -15428i, arg_2), vec4<bool>(arg_0, arg_0, false, arg_0))), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -1i, arg_2, arg_2), vec4<i32>(-21578i, -30292i, -11668i, arg_2) >> (vec4<u32>(u_input.b.x, 74394u, 0u, 15268u) % vec4<u32>(32u))), _wgslsmith_div_i32(~(-37625i), -1i)));
    var_0 = -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -1i, -14054i), vec3<i32>(u_input.a.x, -var_0.x, -(i32(-1i) * -16866i)), -firstTrailingBit(vec3<i32>(-1499i, -26720i, u_input.a.x)));
    var_0 = reverseBits(func_3());
    var var_1 = select(select(vec3<bool>(true, select(true, all(vec4<bool>(false, arg_0, arg_0, arg_0)), arg_0), arg_0 || all(vec2<bool>(false, false))), !(!select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, false, true), true)), (any(vec4<bool>(false, arg_0, true, true)) | (arg_0 || false)) | any(select(vec3<bool>(true, arg_0, true), vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, true, arg_0)))), select(!(!vec3<bool>(arg_0, false, true)), vec3<bool>(true, !arg_0, !all(vec4<bool>(arg_0, true, true, false))), !vec3<bool>(arg_0, any(vec4<bool>(arg_0, arg_0, false, true)), arg_0 || true)), true);
    return -565f;
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = Struct_3(vec3<u32>(arg_0, firstTrailingBit(~arg_0 & 4294967295u), arg_0));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1647f * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -594f)), _wgslsmith_f_op_f32(-125f - _wgslsmith_f_op_f32(step(333f, 1180f))), _wgslsmith_f_op_f32(func_2(all(vec4<bool>(false, true, true, true)), 100f, u_input.a.x ^ 249i)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-514f, 957f, -1142f, 1175f)))));
    global0 = array<Struct_3, 21>();
    let var_2 = -3896i >> (arg_0 % 32u);
    var_0 = Struct_3(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(var_0.a.x, 33332u, 70330u)), var_0.a) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_add_u32(4294967295u, arg_0), var_0.a.x, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(1u, 1u))), vec3<u32>(27957u, u_input.b.x, arg_0) | abs(vec3<u32>(0u, 4294967295u, 0u))) % vec3<u32>(32u)));
    return Struct_3(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(var_0.a, var_0.a), ~vec3<u32>(1u, _wgslsmith_mult_u32(4294967295u, u_input.b.x), 4294967295u)));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: bool) -> i32 {
    let var_0 = arg_1.a.x;
    let var_1 = all(vec3<bool>((arg_0 <= -1176f) & arg_2, true, all(!vec3<bool>(arg_2, false, true)))) | true;
    let var_2 = _wgslsmith_dot_vec2_u32(max(~(~(vec2<u32>(u_input.b.x, 16855u) >> (u_input.b % vec2<u32>(32u)))), _wgslsmith_add_vec2_u32(vec2<u32>(588u & arg_1.a.x, _wgslsmith_sub_u32(u_input.b.x, 4294967295u)), vec2<u32>(firstTrailingBit(u_input.b.x), 58114u << (1u % 32u)))), select(~(~(~vec2<u32>(u_input.b.x, 1u))), ~arg_1.a.zz, vec2<bool>(true, !var_1)));
    global0 = array<Struct_3, 21>();
    let var_3 = any(select(select(vec4<bool>(any(vec3<bool>(false, false, false)), all(vec2<bool>(var_1, var_1)), true, any(vec4<bool>(false, true, false, true))), select(select(vec4<bool>(var_1, arg_2, var_1, true), vec4<bool>(arg_2, var_1, false, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(var_1, false, false, var_1), vec4<bool>(true, arg_2, var_1, false), true), select(vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(false, true, true, arg_2), vec4<bool>(false, false, arg_2, arg_2))), var_1), select(vec4<bool>(false, all(vec4<bool>(arg_2, false, true, arg_2)), false, all(vec2<bool>(true, false))), select(vec4<bool>(true, false, var_1, false), !vec4<bool>(false, false, var_1, true), all(vec2<bool>(arg_2, true))), vec4<bool>(true, 676f > arg_0, false, true)), false));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, true, true);
    global0 = array<Struct_3, 21>();
    var var_1 = u_input.b;
    let var_2 = var_0.x;
    var var_3 = ~var_1.x;
    var_3 = 41280u;
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -532f);
    var var_5 = ~func_4(1000f, func_1(u_input.b.x), var_0.x);
    var_5 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(~select(reverseBits(vec4<u32>(33625u, 1u, 4294967295u, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, 6246u, u_input.b.x, var_1.x), vec4<u32>(1u, u_input.b.x, 0u, u_input.b.x)), select(vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(var_0.x, true, false, var_0.x), false))), vec2<f32>(_wgslsmith_f_op_f32(trunc(-143f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1072f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-338f * -133f)))), _wgslsmith_clamp_vec3_i32(min(~reverseBits(vec3<i32>(1i, -16462i, 0i)), ~(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i) & vec3<i32>(0i, u_input.a.x, -5164i))), -((vec3<i32>(u_input.a.x, -17689i, -4975i) | vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)) | vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.a.x, 0i, -1i) << ((vec3<u32>(1u, var_1.x, var_1.x) ^ vec3<u32>(4294967295u, var_1.x, 26911u)) % vec3<u32>(32u)), func_3())), u_input.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, -1010f)) + -964f), 460f));
}

