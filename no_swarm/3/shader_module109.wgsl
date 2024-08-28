struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: Struct_2) -> u32 {
    let var_0 = !((true && arg_0.a.a) || (_wgslsmith_dot_vec4_i32(u_input.c, firstLeadingBit(u_input.c)) < ((10804i | u_input.b) ^ min(-1i, u_input.d))));
    global0 = array<Struct_3, 8>();
    global0 = array<Struct_3, 8>();
    global0 = array<Struct_3, 8>();
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a.b), -546f), -1000f, 711f, 183f);
    return u_input.a.x;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_1 {
    global0 = array<Struct_3, 8>();
    let var_0 = Struct_2(arg_3.a);
    let var_1 = ~(~62227u);
    let var_2 = arg_1;
    let var_3 = arg_3.a;
    return Struct_1(all(select(!(!vec3<bool>(arg_1, true, arg_3.a.a)), select(!vec3<bool>(true, var_3.a, true), vec3<bool>(true, true, true), select(vec3<bool>(false, var_3.a, false), vec3<bool>(false, false, false), var_2)), all(select(vec4<bool>(false, var_3.a, false, var_2), vec4<bool>(false, arg_3.a.a, false, false), false)))), _wgslsmith_f_op_f32(step(1245f, arg_3.a.b)), ~1u & _wgslsmith_dot_vec3_u32(~(~vec3<u32>(var_0.a.d.x, arg_2.x, arg_2.x)), vec3<u32>(~arg_2.x, _wgslsmith_div_u32(0u, 26444u), ~u_input.a.x)), min(~(~arg_3.a.d) | ~var_3.d, firstTrailingBit(select(vec3<u32>(arg_2.x, arg_3.a.c, 1u), vec3<u32>(var_3.d.x, 16221u, 4294967295u), !arg_3.a.a))));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(0u, 8u)];
    var var_1 = Struct_2(func_2(_wgslsmith_dot_vec3_i32(u_input.c.wzy, u_input.c.wyw & u_input.c.wzw), any(vec2<bool>(true, true)), vec3<u32>(_wgslsmith_clamp_u32(u_input.a.x, ~arg_1.c, arg_1.c), arg_1.d.x, _wgslsmith_clamp_u32(~u_input.a.x, arg_1.d.x | arg_1.c, 0u)), Struct_2(arg_1)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_2, vec2<f32>(234f, 273f)))));
    let var_3 = -351f;
    global0 = array<Struct_3, 8>();
    return arg_1.c;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: Struct_3) -> i32 {
    var var_0 = false;
    var var_1 = 1u;
    global0 = array<Struct_3, 8>();
    var var_2 = -vec3<i32>(arg_0.x, _wgslsmith_mod_i32(~(1i & u_input.d), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.c.x, u_input.b, arg_0.x) | vec4<i32>(arg_0.x, -23686i, arg_0.x, -1i), min(arg_0, arg_0))), _wgslsmith_dot_vec3_i32(~u_input.c.yxx, select(vec3<i32>(2147483647i, arg_0.x, -1i) << (u_input.a % vec3<u32>(32u)), vec3<i32>(-1i, 1i, arg_0.x), select(vec3<bool>(arg_2.a, false, false), vec3<bool>(arg_3.a, arg_2.a, true), vec3<bool>(true, arg_2.a, arg_2.a)))));
    var var_3 = true;
    return -2147483647i;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> Struct_2 {
    let var_0 = arg_0.a;
    let var_1 = Struct_2(Struct_1(max(_wgslsmith_sub_i32(arg_2, -2147483647i), 9768i) >= (arg_2 ^ abs(0i)), _wgslsmith_div_f32(_wgslsmith_div_f32(-2282f, _wgslsmith_f_op_f32(ceil(639f))), -397f), ~arg_3.d.x, abs(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(49581u, arg_3.d.x, 1286u), arg_0.d), ~vec3<u32>(0u, arg_0.c, 21142u)))));
    let var_2 = var_1;
    let var_3 = var_1;
    global0 = array<Struct_3, 8>();
    return Struct_2(Struct_1(any(vec2<bool>(var_2.a.a, !var_1.a.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(146f * arg_1), _wgslsmith_f_op_f32(var_3.a.b + -679f))), func_2(-8843i, any(!vec2<bool>(arg_0.a, arg_3.a)), vec3<u32>(arg_3.c, ~var_3.a.c, 1u), var_3).d.x, ~_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(var_3.a.d, var_1.a.d, vec3<u32>(u_input.a.x, 1u, 4294967295u)), ~vec3<u32>(var_2.a.d.x, u_input.a.x, 4258u), ~vec3<u32>(u_input.a.x, arg_0.c, var_1.a.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-391f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), 71199u, vec3<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), ~func_1(Struct_2(Struct_1(false, 2347f, u_input.a.x, vec3<u32>(u_input.a.x, u_input.a.x, 14275u)))), _wgslsmith_add_u32(u_input.a.x << (u_input.a.x % 32u), u_input.a.x))), -549f, func_4(~u_input.c, ~vec3<u32>(4294967295u, 4255u, 0u), Struct_3(true), global0[_wgslsmith_index_u32(~func_3(107u == u_input.a.x, func_2(u_input.c.x, true, u_input.a, Struct_2(Struct_1(true, -1779f, 4294967295u, u_input.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(110f, 1362f))), 8u)]), func_2(reverseBits(-9180i), all(vec2<bool>(true, true)), select(countOneBits(_wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(24324u, u_input.a.x, 1u), vec3<u32>(2771u, 67357u, 0u))), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 6305u, 12158u), u_input.a), all(select(vec2<bool>(false, true), vec2<bool>(false, false), false))), Struct_2(func_2(u_input.c.x, true, u_input.a << (vec3<u32>(u_input.a.x, 1u, u_input.a.x) % vec3<u32>(32u)), Struct_2(Struct_1(false, -1000f, 31233u, vec3<u32>(1u, 20510u, 45583u)))))));
    let var_1 = max(1i, u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(u_input.c.zy, countOneBits(vec2<i32>(u_input.b << (0u % 32u), var_1 & var_1))), vec2<i32>(_wgslsmith_mod_i32(u_input.b, _wgslsmith_div_i32(~(-1i), _wgslsmith_mult_i32(0i, var_1))), -var_1), -502f);
}

