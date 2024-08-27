struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> f32 {
    global0 = _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -countOneBits(_wgslsmith_div_vec4_i32(arg_1.b, vec4<i32>(u_input.a.x, 1i, u_input.a.x, -26408i))), firstTrailingBit(vec4<i32>(firstLeadingBit(arg_1.b.x), -2147483647i, 2147483647i, -arg_0) << (select(select(vec4<u32>(5780u, 23517u, 0u, 1u), vec4<u32>(18514u, 44291u, 11813u, 28843u), arg_1.a), vec4<u32>(1u, 1u, 1u, 1u), all(vec3<bool>(true, false, true))) % vec4<u32>(32u))));
    let var_0 = max(-(-_wgslsmith_mod_vec2_i32(vec2<i32>(0i, u_input.a.x), arg_1.b.yw) << (~vec2<u32>(1u, 1u) % vec2<u32>(32u))), -vec2<i32>(1i, ~1i));
    var var_1 = -933f;
    var_1 = _wgslsmith_f_op_f32(769f + 460f);
    let var_2 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1216f * 404f), -200f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(797f, 1000f)) + _wgslsmith_f_op_f32(max(1227f, -538f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1016f - 1121f) * _wgslsmith_f_op_f32(max(1717f, 852f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1400f))))));
    return var_2.x;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_dot_vec4_i32(-vec4<i32>(1797i, -26949i, -18158i, u_input.a.x), -vec4<i32>(-37549i, 0i, arg_2.e.b.x, u_input.a.x)), arg_2.c.a))) * _wgslsmith_f_op_f32(f32(-1f) * -440f));
    let var_1 = vec4<f32>(arg_1.a, -254f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.a - arg_1.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(823f)))), 539f));
    var var_2 = Struct_5(Struct_2(Struct_1(true, _wgslsmith_mult_vec4_i32(vec4<i32>(30641i, arg_0.b.x, u_input.a.x, arg_0.b.x), ~vec4<i32>(2147483647i, arg_0.b.x, -2147483647i, u_input.a.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))), arg_1);
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -807f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-469f * -340f))), arg_1.a) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(825f, _wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.a, var_2.b), var_2.c.a), var_1.x, _wgslsmith_f_op_f32(round(var_2.b)))));
    global0 = var_2.a.a.b;
    return -187f;
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-1i, Struct_1(true, vec4<i32>(global0.x, -39627i, 2147483647i, 1i))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(false, vec4<i32>(-15991i, 0i, u_input.a.x, global0.x)), Struct_4(1051f), Struct_3(Struct_2(Struct_1(false, vec4<i32>(global0.x, 19088i, -43025i, 0i))), Struct_1(false, vec4<i32>(global0.x, 9639i, 1i, global0.x)), Struct_2(Struct_1(true, vec4<i32>(global0.x, global0.x, -2147483647i, global0.x))), 1u, Struct_1(false, vec4<i32>(global0.x, u_input.a.x, 0i, u_input.a.x))))))));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -132f);
    global0 = select(_wgslsmith_mod_vec4_i32(-countOneBits(vec4<i32>(0i, u_input.a.x, u_input.a.x, global0.x) & vec4<i32>(1i, 20607i, global0.x, u_input.a.x)), ~(~min(vec4<i32>(u_input.a.x, global0.x, global0.x, u_input.a.x), vec4<i32>(global0.x, 72097i, 36336i, global0.x)))), ~vec4<i32>(min(u_input.a.x, -34167i) ^ -1i, global0.x, global0.x, u_input.a.x), any(select(vec3<bool>(select(false, true, false), true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-902f, 3130f, true)))), -866f, -279f)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.zz)));
    return -40559i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(true, true), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), true)), select(vec2<bool>(-2147483647i == func_1(), false), select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), all(vec4<bool>(false, false, false, true))), vec2<bool>(true, true), !any(vec2<bool>(true, true))), vec2<bool>(false, false)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1746f), 943f)));
    global0 = firstLeadingBit(-(reverseBits(vec4<i32>(u_input.a.x, -11993i, -803i, global0.x)) & (vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, 33351i, u_input.a.x, 0i))));
    global0 = _wgslsmith_add_vec4_i32(vec4<i32>(-_wgslsmith_mod_i32(~(-1i), _wgslsmith_clamp_i32(global0.x, 2147483647i, -30308i)), 2147483647i, (i32(-1i) * -global0.x) ^ u_input.a.x, global0.x), firstTrailingBit(vec4<i32>(_wgslsmith_sub_i32(-1i, 2147483647i), -2147483647i, 2147483647i, -2147483647i)));
    let var_2 = 416f;
    var var_3 = 1i >> (1u % 32u);
    let var_4 = _wgslsmith_mod_i32(0i, 1i);
    let var_5 = abs(vec2<u32>(_wgslsmith_mod_u32(0u, 4294967295u), _wgslsmith_sub_u32(3531u, firstTrailingBit(select(4294967295u, 4294967295u, var_0.x)))));
    let var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(2397f)), -1448f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.x - -363f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * -470f) * _wgslsmith_f_op_f32(round(-1355f))))))), select(firstTrailingBit(vec3<i32>(func_1(), 5075i, _wgslsmith_mult_i32(u_input.a.x, 2147483647i))), select(global0.zyw, vec3<i32>(-34656i, global0.x, 2147483647i >> (var_5.x % 32u)), select(!vec3<bool>(var_0.x, var_6, var_6), vec3<bool>(true, var_0.x, var_0.x), !vec3<bool>(var_6, var_6, var_0.x))), select(!(!vec3<bool>(false, var_0.x, false)), select(select(vec3<bool>(var_6, var_6, true), vec3<bool>(false, true, var_0.x), vec3<bool>(false, var_6, var_6)), vec3<bool>(true, true, true), true), !var_6)), _wgslsmith_f_op_f32(-var_2));
}

