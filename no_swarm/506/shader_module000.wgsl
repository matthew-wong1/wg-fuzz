struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: Struct_2,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b)) + 121f), arg_0.b.b)), _wgslsmith_f_op_f32(-874f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -306f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.b)), _wgslsmith_f_op_f32(min(arg_0.b.b, _wgslsmith_f_op_f32(arg_0.b.b + -1326f))), all(vec4<bool>(arg_2.c.x, arg_0.b.c.x, arg_0.b.c.x, arg_2.c.x))))));
    var var_1 = !(!arg_2.c.x);
    var var_2 = !arg_2.c.x;
    var var_3 = i32(-1i) * -27378i;
    var var_4 = Struct_3(arg_2.a, vec2<u32>(~reverseBits(_wgslsmith_mult_u32(4294967295u, u_input.a)), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(23289u, u_input.a, u_input.a)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(4294967295u, 22283u, u_input.a))), _wgslsmith_mod_u32(_wgslsmith_mod_u32(72833u, 130108u), firstLeadingBit(78281u)))), arg_0, _wgslsmith_div_vec3_u32(vec3<u32>(~8574u, ~54081u, _wgslsmith_add_u32(4294967295u >> (u_input.a % 32u), 0u)), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a) ^ vec3<u32>(1u, u_input.a, 25839u), vec3<u32>(u_input.a, 1u, 7936u)), (vec3<u32>(u_input.a, 0u, 69896u) | vec3<u32>(u_input.a, 21704u, u_input.a)) >> ((vec3<u32>(0u, 1u, 1u) & vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u)))));
    return arg_2.a;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_3) -> vec3<f32> {
    var var_0 = _wgslsmith_div_vec3_i32(~(~vec3<i32>(~arg_0.x, arg_2.a.x << (arg_2.b.x % 32u), 24376i)), (-(~vec3<i32>(2147483647i, -2147483647i, -13521i)) >> (((vec3<u32>(u_input.a, 18014u, 19333u) & vec3<u32>(u_input.a, arg_2.b.x, 0u)) & arg_2.d) % vec3<u32>(32u))) & _wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(arg_1.a, ~vec3<i32>(arg_0.x, -1i, arg_2.c.a.a.x)), func_3(Struct_2(Struct_1(arg_2.c.a.a, -1260f, arg_2.c.a.c), Struct_1(arg_2.c.a.a, arg_2.c.b.b, vec2<bool>(false, arg_1.c.x))), arg_2.a.x ^ -2147483647i, Struct_1(vec3<i32>(-1i, -2147483647i, arg_2.a.x), arg_1.b, vec2<bool>(true, true)))));
    let var_1 = Struct_1(select(vec3<i32>(-select(55369i, arg_0.x, true), -2147483647i >> (_wgslsmith_mult_u32(arg_2.b.x, arg_2.b.x) % 32u), ~27477i), -func_3(Struct_2(Struct_1(vec3<i32>(arg_1.a.x, arg_0.x, arg_0.x), 1000f, vec2<bool>(arg_2.c.b.c.x, true)), arg_1), -1i | arg_0.x, arg_1), !(!select(vec3<bool>(true, false, arg_1.c.x), vec3<bool>(arg_2.c.a.c.x, arg_1.c.x, arg_2.c.a.c.x), vec3<bool>(true, arg_1.c.x, arg_1.c.x)))), 482f, vec2<bool>(true, true));
    var_0 = abs(var_1.a);
    var var_2 = arg_1;
    let var_3 = _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_div_i32(arg_0.x, firstTrailingBit(-5391i)), 2147483647i), -_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.a.x, 1i), vec2<i32>(arg_2.a.x, arg_2.c.b.a.x)), vec2<i32>(1i, 25918i))), func_3(Struct_2(Struct_1(firstTrailingBit(vec3<i32>(arg_2.a.x, var_2.a.x, -2147483647i)), _wgslsmith_f_op_f32(min(-126f, arg_1.b)), arg_1.c), arg_1), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a.x, -1i, var_0.x), arg_2.c.a.a), abs(-1i)), _wgslsmith_mult_vec3_i32(firstTrailingBit(arg_1.a), -vec3<i32>(var_0.x, 0i, 39664i))), arg_2.c.b).yx);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.b, -145f, var_2.b), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1236f, -1420f, 945f), vec3<f32>(arg_2.c.a.b, -2460f, arg_2.c.b.b))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(510f, arg_2.c.a.b, _wgslsmith_f_op_f32(f32(-1f) * -1168f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.b, arg_2.c.b.b, -274f), vec3<f32>(214f, arg_1.b, arg_1.b))))) * vec3<f32>(arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3146f - _wgslsmith_f_op_f32(max(var_1.b, 751f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(376f, -734f))))))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(round(-2549f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1186f - arg_1.c.a.b))), -1069f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -2147483647i), ~arg_1.a.xz), arg_1.c.b, Struct_3(arg_2.a.a ^ vec3<i32>(0i, 14934i, arg_1.a.x), min(arg_1.d.xx, arg_0.d.xx), Struct_2(arg_2.a, Struct_1(arg_2.a.a, arg_1.c.a.b, vec2<bool>(arg_1.c.a.c.x, true))), arg_1.d >> (arg_1.d % vec3<u32>(32u))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.c.a.b, arg_1.c.a.b, -976f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c.b.b, 330f, arg_1.c.a.b) + vec3<f32>(367f, arg_0.c.b.b, arg_2.b.b))) * _wgslsmith_div_vec3_f32(vec3<f32>(-1067f, arg_2.b.b, arg_1.c.b.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.b, arg_1.c.a.b, 2450f) - vec3<f32>(arg_0.c.b.b, arg_0.c.a.b, arg_2.a.b))))), false));
    let var_1 = arg_1.c;
    var var_2 = arg_2.b;
    let var_3 = arg_0.c.b;
    var var_4 = arg_0.c;
    return var_3.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_div_vec2_i32(select(vec2<i32>(1616i, 0i), -vec2<i32>(2147483647i, 12695i), vec2<bool>(true, true)) >> (firstLeadingBit(vec2<u32>(u_input.a, 40201u) & vec2<u32>(u_input.a, 4294967295u)) % vec2<u32>(32u)), ~vec2<i32>(func_1(Struct_3(vec3<i32>(0i, 35681i, -1i), vec2<u32>(1u, u_input.a), Struct_2(Struct_1(vec3<i32>(-1i, 2147483647i, -9916i), 1040f, vec2<bool>(false, false)), Struct_1(vec3<i32>(1i, 0i, 1i), -1218f, vec2<bool>(false, true))), vec3<u32>(u_input.a, u_input.a, u_input.a)), Struct_3(vec3<i32>(1i, -31242i, 31609i), vec2<u32>(63596u, 0u), Struct_2(Struct_1(vec3<i32>(52427i, -1i, -2147483647i), 1061f, vec2<bool>(true, false)), Struct_1(vec3<i32>(0i, 27218i, 2147483647i), -1000f, vec2<bool>(true, false))), vec3<u32>(4294967295u, u_input.a, 1u)), Struct_2(Struct_1(vec3<i32>(2147483647i, 46126i, -1i), -129f, vec2<bool>(true, true)), Struct_1(vec3<i32>(13946i, 31414i, 0i), -628f, vec2<bool>(true, false)))), -1i << (u_input.a % 32u)));
    let var_1 = Struct_1(~(select(vec3<i32>(var_0.x, var_0.x, var_0.x), vec3<i32>(0i, var_0.x, var_0.x), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)) >> ((vec3<u32>(u_input.a, u_input.a, u_input.a) | _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, 4294967295u, u_input.a))) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1204f))), !(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), true))));
    var var_2 = ~firstLeadingBit(reverseBits(~vec4<i32>(-1i, var_1.a.x, var_1.a.x, var_1.a.x)) & (~vec4<i32>(2147483647i, -1i, var_0.x, 8965i) | vec4<i32>(0i, -5836i, var_0.x, -30008i)));
    let var_3 = var_1.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1065f, 317f))), _wgslsmith_div_vec2_f32(vec2<f32>(var_1.b, var_1.b), vec2<f32>(-1360f, var_1.b)), false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(465f, var_1.b))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1151f, var_1.b))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1275f, var_1.b) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-474f, -465f), vec2<f32>(var_1.b, 1229f), vec2<bool>(false, var_1.c.x)))))));
}

