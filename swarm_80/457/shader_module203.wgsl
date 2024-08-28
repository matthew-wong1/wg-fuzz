struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: bool,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<i32>(i32(-2147483648), 1i)), Struct_1(vec2<i32>(2147483647i, 2147483647i)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: u32, arg_3: bool) -> u32 {
    var var_0 = Struct_4(vec2<u32>(_wgslsmith_sub_u32(arg_2, 57802u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_2), vec2<u32>(u_input.a, 1u))), u_input.a), arg_3, ~(~vec4<u32>(58562u, u_input.a, u_input.a, 70815u)) ^ _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, u_input.b, arg_2, 4294967295u), reverseBits(vec4<u32>(46081u, arg_2, 32599u, 39148u)), vec4<u32>(arg_2, u_input.b, u_input.b, 0u) & vec4<u32>(80479u, 15248u, arg_2, arg_2)), ~reverseBits(vec4<u32>(44038u, arg_2, u_input.b, 23869u)), vec4<u32>(1u, ~0u, _wgslsmith_clamp_u32(u_input.a, 0u, arg_2), ~1u)), global0[_wgslsmith_index_u32(u_input.b | 4294967295u, 2u)], global0[_wgslsmith_index_u32(arg_2, 2u)]);
    let var_1 = select(var_0.a, _wgslsmith_div_vec2_u32(min(var_0.a, vec2<u32>(~31811u, u_input.b)), var_0.a), select(select(select(!vec2<bool>(arg_3, var_0.b), select(vec2<bool>(true, arg_3), vec2<bool>(true, arg_3), vec2<bool>(var_0.b, var_0.b)), any(vec3<bool>(var_0.b, true, var_0.b))), vec2<bool>(all(vec3<bool>(arg_3, true, var_0.b)), 651f != arg_1.x), select(vec2<bool>(arg_3, false), select(vec2<bool>(arg_3, var_0.b), vec2<bool>(false, true), vec2<bool>(true, var_0.b)), select(vec2<bool>(arg_3, true), vec2<bool>(var_0.b, true), vec2<bool>(true, false)))), select(select(select(vec2<bool>(false, false), vec2<bool>(true, var_0.b), var_0.b), !vec2<bool>(var_0.b, var_0.b), vec2<bool>(false, true)), vec2<bool>(true, any(vec3<bool>(false, arg_3, true))), max(arg_2, var_0.a.x) == 0u), !vec2<bool>(arg_3 & arg_3, any(vec3<bool>(var_0.b, arg_3, false)))));
    let var_2 = u_input.a;
    global0 = array<Struct_1, 2>();
    var var_3 = Struct_4(_wgslsmith_clamp_vec2_u32(~(~var_0.a) >> (var_0.c.yx % vec2<u32>(32u)), (~vec2<u32>(8387u, var_2) >> (vec2<u32>(1u, 3283u) % vec2<u32>(32u))) << (max(~var_0.c.wz, var_0.a) % vec2<u32>(32u)), var_1), !arg_3 & var_0.b, var_0.c, Struct_1(var_0.e.a), Struct_1(var_0.e.a));
    return max(countOneBits(1u), 4294967295u);
}

fn func_4(arg_0: u32) -> vec3<bool> {
    global0 = array<Struct_1, 2>();
    var var_0 = firstTrailingBit(_wgslsmith_sub_vec3_i32(~vec3<i32>(countOneBits(62401i), max(u_input.c, 59254i), ~u_input.c), ~firstTrailingBit(~vec3<i32>(-2147483647i, -2147483647i, u_input.c))));
    var var_1 = select(select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, false)), vec2<bool>(true, true), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), true)), vec2<bool>(!any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), true)), all(vec2<bool>(false, any(vec4<bool>(false, true, false, false))))), 0u >= _wgslsmith_dot_vec4_u32(abs(vec4<u32>(18213u, arg_0, arg_0, 1u)), vec4<u32>(u_input.b, 72543u, u_input.b, u_input.a) >> ((vec4<u32>(u_input.b, 4294967295u, 20239u, 1u) & vec4<u32>(arg_0, arg_0, 4294967295u, 34578u)) % vec4<u32>(32u))));
    var var_2 = !(!(max(_wgslsmith_mult_i32(var_0.x, 21404i), min(7742i, u_input.c)) != 0i));
    var_2 = all(!vec2<bool>(!(1u >= u_input.a), var_1.x));
    return !vec3<bool>(var_1.x & false, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-104f - 325f))) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), false);
}

fn func_2() -> u32 {
    let var_0 = select(select(vec3<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, false), true)), true, true), !select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), true), !vec3<bool>(true, select(true, true, false), true)), !func_4(_wgslsmith_div_u32(~21235u, func_3(u_input.c, vec3<f32>(1907f, 297f, -116f), u_input.a, false))), vec3<bool>(true, true, true));
    let var_1 = Struct_2(0u, u_input.c > 2147483647i);
    let var_2 = Struct_4(vec2<u32>(_wgslsmith_mult_u32(u_input.a << (firstTrailingBit(113185u) % 32u), var_1.a), max(var_1.a, _wgslsmith_add_u32(max(u_input.b, 1u), _wgslsmith_mult_u32(var_1.a, 5172u)))), var_0.x, ~_wgslsmith_sub_vec4_u32(~vec4<u32>(93774u, var_1.a, u_input.a, u_input.b), vec4<u32>(0u, u_input.b, var_1.a, var_1.a)) & vec4<u32>(min(var_1.a, u_input.a), var_1.a, countOneBits(u_input.a >> (93671u % 32u)), u_input.a), global0[_wgslsmith_index_u32(abs(reverseBits(_wgslsmith_clamp_u32(35079u, ~1u, 56731u))), 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)]);
    let var_3 = _wgslsmith_div_vec2_i32(var_2.d.a, var_2.d.a);
    var var_4 = vec2<bool>((abs(38315u) > var_1.a) & true, true);
    return ~abs(_wgslsmith_clamp_u32(firstTrailingBit(u_input.b) >> (1u % 32u), max(~0u, ~1u), 30278u));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: vec2<bool>) -> vec3<bool> {
    let var_0 = _wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, arg_0.x, arg_0.x, arg_0.x), vec4<i32>(u_input.c, u_input.c, -1i, -1i))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.c, arg_0.x, -7734i), arg_0), u_input.c, max(61134i, u_input.c), arg_0.x)), arg_0.x), 0i);
    var var_1 = Struct_2(func_2() << (arg_1.x % 32u), !arg_2.x);
    var_1 = Struct_2(~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.b), arg_1.yx), ~arg_1.yw), _wgslsmith_dot_vec4_u32(arg_1, arg_1) << (_wgslsmith_mult_u32(u_input.b, var_1.a) % 32u)), !all(select(select(vec3<bool>(true, var_1.b, true), vec3<bool>(false, arg_2.x, false), arg_2.x), vec3<bool>(true, arg_2.x, var_1.b), true)));
    var var_2 = vec4<i32>(1i, -reverseBits(~(-14968i)), u_input.c, _wgslsmith_div_i32(0i & var_0, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(arg_0, arg_0), -41447i))) << (select(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.x, 38862u, u_input.b, var_1.a), arg_1) | vec4<u32>(arg_1.x, 0u, arg_1.x, var_1.a)), ~vec4<u32>(0u, ~var_1.a, _wgslsmith_sub_u32(arg_1.x, var_1.a), arg_1.x), false & arg_2.x) % vec4<u32>(32u));
    var_1 = Struct_2(~max(firstTrailingBit(~24732u), ~(27073u | arg_1.x)), !arg_2.x);
    return vec3<bool>(true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(656f)))))) > -539f, arg_2.x);
}

fn func_5(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = select(!(!(!(!vec4<bool>(arg_0.x, arg_0.x, false, true)))), vec4<bool>(any(select(vec4<bool>(arg_0.x, true, true, arg_0.x), select(vec4<bool>(arg_0.x, true, false, false), vec4<bool>(true, true, false, arg_0.x), vec4<bool>(true, false, arg_0.x, false)), any(arg_0))), true, true, arg_0.x), vec4<bool>(true, true, false, false));
    var var_1 = Struct_3(abs(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(2765i, u_input.c), ~vec2<i32>(2147483647i, u_input.c)), ~vec2<i32>(5588i, -1i))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-423f))))))), Struct_1(vec2<i32>(min(_wgslsmith_mod_i32(u_input.c, 1i), -2147483647i), -7105i)));
    let var_2 = vec4<u32>(1u, _wgslsmith_sub_u32(75359u, u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b ^ (u_input.b | u_input.b), abs(1u), 1u, func_3(-2147483647i, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.b, -329f, var_1.b))), u_input.a, arg_0.x)), ~vec4<u32>(u_input.b, u_input.a, 28908u, ~3011u)), ~u_input.b);
    let var_3 = vec3<bool>(arg_0.x, !(u_input.c <= u_input.c), arg_0.x);
    global0 = array<Struct_1, 2>();
    return global0[_wgslsmith_index_u32(~func_3(_wgslsmith_mult_i32(var_1.c.a.x, reverseBits(2147483647i)), vec3<f32>(_wgslsmith_f_op_f32(1471f * 1608f), _wgslsmith_f_op_f32(sign(var_1.b)), _wgslsmith_f_op_f32(var_1.b - 293f)), 33331u, var_0.x) >> (u_input.b % 32u), 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-250f, 1230f))) - vec2<f32>(-1457f, -1043f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1069f, -288f))), vec2<f32>(736f, 755f)) - vec2<f32>(_wgslsmith_f_op_f32(max(450f, 747f)), -1329f)), true)));
    let var_1 = u_input.b;
    let var_2 = Struct_3(vec2<i32>(_wgslsmith_sub_i32(u_input.c, 2147483647i), ~(~(u_input.c << (1u % 32u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1149f - -913f))) - _wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(var_0.x, -760f)))), func_5(func_1(abs(vec4<i32>(u_input.c, u_input.c, u_input.c, -10639i) << (vec4<u32>(var_1, 1u, 8154u, var_1) % vec4<u32>(32u))), ~_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1534u, 26639u, var_1), vec4<u32>(4294967295u, u_input.b, 1u, 4294967295u)), vec2<bool>(45513u <= var_1, true))));
    var var_3 = ~4294967295u;
    let var_4 = vec4<u32>(func_2() ^ 0u, u_input.a, _wgslsmith_div_u32(6345u, 1u), var_1 >> (u_input.b % 32u));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.b))), 1835f)));
    let var_5 = vec4<bool>(!func_1(_wgslsmith_sub_vec4_i32(-vec4<i32>(0i, var_2.c.a.x, u_input.c, u_input.c), vec4<i32>(var_2.c.a.x, u_input.c, 814i, u_input.c)), vec4<u32>(~6780u, ~1u, var_4.x, firstTrailingBit(var_4.x)), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))).x, true, _wgslsmith_f_op_f32(-var_2.b) > var_0.x, _wgslsmith_f_op_f32(max(1418f, _wgslsmith_f_op_f32(f32(-1f) * -943f))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(-var_2.b)));
    var var_6 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_2.b + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x + 341f), _wgslsmith_f_op_f32(-var_2.b)))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-622f * _wgslsmith_f_op_f32(f32(-1f) * -603f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_6.x, 564f), var_4.zwz, var_4.zz, 852u);
}

