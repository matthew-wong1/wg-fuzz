struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32>;

var<private> global1: array<Struct_3, 22>;

var<private> global2: Struct_1 = Struct_1(vec3<u32>(0u, 0u, 17150u));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    let var_0 = Struct_3(Struct_1(arg_0.a.a), Struct_1((min(global2.a, vec3<u32>(arg_0.a.a.x, global2.a.x, arg_0.b.a.x)) & _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 69644u, u_input.b), vec3<u32>(0u, global2.a.x, 0u))) & select(arg_0.b.a, ~arg_0.a.a, vec3<bool>(false, false, false))));
    let var_1 = vec3<bool>(true, false, !(!all(select(vec2<bool>(false, true), vec2<bool>(true, false), true))));
    let var_2 = !vec3<bool>(var_1.x, any(!var_1) || var_1.x, false);
    global0 = array<Struct_3, 32>();
    let var_3 = vec2<u32>(0u, ~(~arg_0.b.a.x));
    return !vec3<bool>(var_1.x, true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(945f - 2199f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-307f, 1276f))));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    global1 = array<Struct_3, 22>();
    var var_0 = all(vec3<bool>(true, true, true)) || true;
    global2 = Struct_1(select(max(arg_0.a, ~(~arg_0.a)), ~global2.a, func_3(Struct_3(Struct_1(vec3<u32>(arg_0.a.x, arg_0.a.x, 26429u)), Struct_1(vec3<u32>(56634u, u_input.a.x, u_input.a.x))))));
    global1 = array<Struct_3, 22>();
    global2 = Struct_1(global2.a & _wgslsmith_div_vec3_u32(reverseBits(arg_0.a) | vec3<u32>(40483u, 1u, arg_0.a.x), _wgslsmith_mult_vec3_u32(abs(arg_0.a), global2.a)));
    return Struct_2(vec3<i32>(_wgslsmith_sub_i32(select(-1i, 56482i, true), firstTrailingBit(2147483647i)), 1i, countOneBits(countOneBits(23350i))) >> (_wgslsmith_clamp_vec3_u32(global2.a, arg_0.a, firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<u32>(u_input.a.x, 28887u, 42202u)))) % vec3<u32>(32u)), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.a.x < 16989u), vec2<bool>(true, true), true), _wgslsmith_dot_vec4_u32(vec4<u32>(select(~global2.a.x, global2.a.x, true), 39345u, ~arg_0.a.x, u_input.a.x), select(~vec4<u32>(global2.a.x, global2.a.x, 0u, u_input.b), firstLeadingBit(vec4<u32>(global2.a.x, u_input.b, 4294967295u, 1u) | vec4<u32>(u_input.a.x, u_input.b, 1u, arg_0.a.x)), vec4<bool>(true, true, true, true))), 0u, _wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(13985i, -2147483647i) & (vec2<i32>(29634i, 21776i) >> (vec2<u32>(55458u, u_input.a.x) % vec2<u32>(32u)))), vec2<i32>(667i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -29490i, -2147483647i, -46644i), vec4<i32>(-1i, 30400i, 1076i, -11527i))) | -vec2<i32>(1i, 1i)));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: i32, arg_3: vec2<f32>) -> Struct_1 {
    return Struct_1(~_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(global2.a, vec3<u32>(14816u, 4294967295u, 0u)), global2.a) | ~global2.a);
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> vec2<bool> {
    global1 = array<Struct_3, 22>();
    var var_0 = arg_2;
    let var_1 = 1000f;
    global2 = func_4(func_2(arg_2), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(879f + -1115f)), 331f))), func_2(Struct_1(vec3<u32>(arg_2.a.x, u_input.a.x, var_0.a.x))).e.x ^ arg_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-283f, _wgslsmith_f_op_f32(round(var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2058f))))));
    var var_2 = func_2(func_4(Struct_2(max(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, arg_0, -1i), vec3<i32>(42320i, arg_0, -25360i)), vec3<i32>(0i, arg_0, arg_0) << (vec3<u32>(4294967295u, arg_1, 59531u) % vec3<u32>(32u))), func_3(global1[_wgslsmith_index_u32(reverseBits(39468u), 22u)]).yx, ~(~5058u), 0u, _wgslsmith_mod_vec2_i32(vec2<i32>(-17142i, arg_0), -vec2<i32>(arg_0, -26336i))), -357f, arg_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(546f, -475f) * vec2<f32>(var_1, var_1))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1)))));
    return !vec2<bool>(var_2.b.x, true | var_2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(_wgslsmith_f_op_f32(floor(1f)) > _wgslsmith_div_f32(643f, _wgslsmith_f_op_f32(1090f - 634f)), true), !select(select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, false), false), select(vec2<bool>(false, true), vec2<bool>(true, true), false)), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, false), func_1(34840i, global2.a.x, Struct_1(global2.a))), vec2<bool>(true, true)), _wgslsmith_f_op_f32(-1f) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -191f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2185f)))));
    var var_1 = !vec3<bool>(false, true || !func_2(Struct_1(global2.a)).b.x, !var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-22383i, 0i, 0i, -17610i)), ~vec4<i32>(2147483647i, -1i, -1i, -18460i)), _wgslsmith_div_i32(1i, i32(-1i) * -2147483647i))), vec4<u32>(_wgslsmith_add_u32(1u, countOneBits(1u)), _wgslsmith_mod_u32(u_input.a.x << (53020u % 32u), 1u), 1u, _wgslsmith_mult_u32(44266u, min(55437u, 4294967295u))) ^ ~vec4<u32>(_wgslsmith_dot_vec2_u32(global2.a.yy, u_input.a), ~33364u, _wgslsmith_clamp_u32(0u, u_input.a.x, 1u), ~u_input.b), firstTrailingBit(1i) >> (6779u % 32u));
}

