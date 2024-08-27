struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec2<i32>) -> i32 {
    let var_0 = u_input.a;
    let var_1 = 1f;
    let var_2 = ~vec2<u32>(21882u, _wgslsmith_mult_u32(~3331u, 7454u ^ var_0));
    return -12439i;
}

fn func_3(arg_0: u32, arg_1: bool) -> f32 {
    let var_0 = !(!vec3<bool>(select(arg_1, true, all(vec2<bool>(true, arg_1))), arg_1, !select(arg_1, true, true)));
    let var_1 = Struct_1(~(((-1i >> (u_input.a % 32u)) << (u_input.a % 32u)) & 62908i), ~44587i);
    var var_2 = Struct_3(_wgslsmith_clamp_vec4_i32(firstTrailingBit(-_wgslsmith_div_vec4_i32(vec4<i32>(-2692i, var_1.a, -30719i, var_1.b), vec4<i32>(-35033i, var_1.b, var_1.b, -2147483647i))), _wgslsmith_sub_vec4_i32(-vec4<i32>(-11564i, -12558i, -2147483647i, 0i), vec4<i32>(var_1.b, var_1.b, var_1.b, var_1.a) << (vec4<u32>(4294967295u, 0u, 0u, u_input.a) % vec4<u32>(32u))) >> (vec4<u32>(arg_0, _wgslsmith_mult_u32(arg_0, 32079u), ~90806u, 4294967295u) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(-1i) * -vec4<i32>(1i, 15531i, 0i, 2147483647i))), Struct_2(abs(~firstLeadingBit(u_input.a)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1123f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -262f))), var_1, var_1, false));
    var var_3 = var_1.b;
    let var_4 = var_0.zz;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-837f, _wgslsmith_f_op_f32(trunc(var_2.b.b.x)), !(arg_1 || var_0.x))))));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: bool) -> Struct_2 {
    let var_0 = vec2<f32>(arg_0.x, arg_0.x);
    var var_1 = vec4<bool>(firstTrailingBit(2147483647i) < _wgslsmith_add_i32(_wgslsmith_mult_i32(-32720i, i32(-1i) * -21859i), max(func_2(vec2<i32>(61207i, 2147483647i)), 1i)), var_0.x >= _wgslsmith_f_op_f32(func_3(u_input.a, 1u != (4294967295u ^ u_input.a))), arg_2, any(select(!select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(true, false, arg_2), vec3<bool>(arg_2, true, arg_2)), !(!vec3<bool>(arg_2, true, arg_2)), true)));
    let var_2 = Struct_2(~52735u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 + var_0) * vec2<f32>(308f, 677f)), Struct_1(-1i, ~_wgslsmith_dot_vec4_i32(~vec4<i32>(48560i, -1i, 41654i, -1i), vec4<i32>(-2147483647i, 2147483647i, 0i, 2147483647i) << (vec4<u32>(u_input.a, 4294967295u, 4294967295u, 23876u) % vec4<u32>(32u)))), Struct_1(firstTrailingBit(~reverseBits(-40823i)), _wgslsmith_sub_i32(-19370i, ~min(19531i, -69315i))), any(vec4<bool>(!arg_2, false, true | (false && arg_2), arg_2)));
    let var_3 = min(~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 50199u, 0u, 34041u), ~vec4<u32>(var_2.a, 17567u, 4294967295u, u_input.a)), ~(~vec4<u32>(59735u, arg_1, 86539u, 1u)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, 1u, 1u, var_2.a), vec4<u32>(0u, 1u, 28781u, 808u)) << (~vec4<u32>(82289u, arg_1, arg_1, var_2.a) % vec4<u32>(32u))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(30385u, ~arg_1, ~arg_1, u_input.a), ~select(vec4<u32>(102130u, 0u, 4294967295u, 4294967295u), vec4<u32>(216u, 55261u, 33990u, var_2.a), true)));
    let var_4 = _wgslsmith_f_op_f32(trunc(var_2.b.x));
    return Struct_2(reverseBits(~4294967295u), vec2<f32>(-757f, 597f), var_2.d, var_2.c, arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(~reverseBits(vec4<i32>(_wgslsmith_sub_i32(1i, 7368i), _wgslsmith_mod_i32(1i, -1i), ~35959i, -1i)), func_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(746f, 859f) * vec2<f32>(-3220f, -1000f)))))), abs(u_input.a), !(~(-1712i) != (-35053i >> (u_input.a % 32u)))));
    var_0 = Struct_3(vec4<i32>(var_0.b.c.b >> (4294967295u % 32u), min(_wgslsmith_sub_i32(-var_0.a.x, countOneBits(var_0.b.d.b)), _wgslsmith_mult_i32(var_0.a.x, ~2147483647i)), _wgslsmith_div_i32(-2147483647i, 18513i), firstTrailingBit(_wgslsmith_add_i32(1i, var_0.a.x | 2147483647i))), var_0.b);
    let var_1 = Struct_3(_wgslsmith_div_vec4_i32(var_0.a, -firstTrailingBit(vec4<i32>(0i, 76613i, -1i, var_0.a.x))) & -_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.b.c.b, 1i, var_0.b.d.a, var_0.b.c.b), -var_0.a), func_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(var_0.b.b, var_0.b.b), var_0.b.b)), ~1u, var_0.b.e));
    var var_2 = _wgslsmith_f_op_vec2_f32(-var_1.b.b);
    let var_3 = vec4<f32>(3491f, _wgslsmith_f_op_f32(-var_1.b.b.x), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.b.b.x)) * _wgslsmith_f_op_f32(round(-1082f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.a >> (4294967295u % 32u), var_2.x);
}

