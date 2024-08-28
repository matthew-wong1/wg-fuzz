struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec2<bool> {
    global0 = array<Struct_2, 23>();
    global0 = array<Struct_2, 23>();
    let var_0 = arg_0;
    var var_1 = min(max(abs(arg_0.a), vec2<i32>(~18091i, 0i)) << (~(vec2<u32>(1u, 1u) << (vec2<u32>(var_0.b.x, arg_0.b.x) % vec2<u32>(32u))) % vec2<u32>(32u)), -arg_0.a);
    let var_2 = (_wgslsmith_div_i32(countOneBits(var_0.a.x), -u_input.a) > 13864i) & ((-2147483647i << (~arg_0.b.x % 32u)) != 2147483647i);
    return !select(select(vec2<bool>(arg_1, all(vec2<bool>(var_2, arg_1))), !select(vec2<bool>(var_2, var_2), vec2<bool>(arg_1, true), vec2<bool>(true, arg_1)), !vec2<bool>(var_2, arg_1)), select(!(!vec2<bool>(true, arg_1)), vec2<bool>(true, true), !(!vec2<bool>(arg_1, false))), vec2<bool>(true, true));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: u32) -> vec4<bool> {
    var var_0 = Struct_1(max(-(~vec2<i32>(-713i, u_input.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, u_input.a), -vec2<i32>(u_input.a, u_input.a))) >> (select(vec2<u32>(~25807u, _wgslsmith_dot_vec4_u32(vec4<u32>(33789u, arg_1, arg_2, arg_1), vec4<u32>(arg_2, 1u, 1u, 33020u))), ~reverseBits(vec2<u32>(1u, arg_2)), select(vec2<bool>(true, true), func_3(Struct_1(vec2<i32>(-13619i, -43795i), vec3<u32>(4784u, arg_2, 1u), u_input.a), true), vec2<bool>(true, true))) % vec2<u32>(32u)), abs(vec3<u32>(max(abs(arg_2), _wgslsmith_sub_u32(1u, arg_1)), arg_2, 22196u)), u_input.a);
    global0 = array<Struct_2, 23>();
    var_0 = Struct_1(min(vec2<i32>(min(-1i, var_0.c), var_0.c) << (vec2<u32>(var_0.b.x, 22463u) % vec2<u32>(32u)), ~var_0.a), ~abs(var_0.b), _wgslsmith_dot_vec2_i32(var_0.a, countOneBits(vec2<i32>(0i, u_input.a))));
    var var_1 = countOneBits(min(~(~vec4<u32>(0u, arg_1, 0u, arg_1)), vec4<u32>(_wgslsmith_div_u32(3903u, 13192u), var_0.b.x | 1826u, var_0.b.x, 4294967295u)) << (firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2, arg_1, 73290u, 13195u), min(vec4<u32>(arg_1, 4294967295u, arg_2, 21035u), vec4<u32>(37157u, 13415u, arg_2, 4294967295u)))) % vec4<u32>(32u)));
    var var_2 = Struct_2(Struct_1(vec2<i32>(-20166i, 1i), var_0.b, 63168i), _wgslsmith_f_op_vec4_f32(trunc(arg_0)), false, _wgslsmith_sub_i32(max(~40778i, countOneBits(33525i) & _wgslsmith_mod_i32(u_input.a, var_0.c)), ~var_0.a.x));
    return vec4<bool>(false, !(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(var_2.a.a, var_0.a, var_2.a.a), vec2<i32>(-2147483647i, -13840i)) >= -12444i), !(!all(select(vec3<bool>(true, var_2.c, var_2.c), vec3<bool>(var_2.c, false, var_2.c), var_2.c))), _wgslsmith_f_op_f32(-1541f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), -1137f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1000f, -634f, true)))) - _wgslsmith_div_f32(-512f, _wgslsmith_f_op_f32(-arg_0.x))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<f32>) -> f32 {
    var var_0 = ~_wgslsmith_add_vec3_i32(-(~vec3<i32>(0i, 2147483647i, u_input.a)), abs(_wgslsmith_div_vec3_i32(vec3<i32>(-11863i, 1i, u_input.a), vec3<i32>(-1i, 1i, -2147483647i))) ^ firstLeadingBit(vec3<i32>(104576i, u_input.a, 0i)));
    let var_1 = func_2(_wgslsmith_f_op_vec4_f32(arg_1 * arg_1), 1u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 0u), vec2<u32>(46696u, 4294967295u)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 55219u)), _wgslsmith_sub_u32(4294967295u, 1u)), ~firstTrailingBit(0u), ~1u))).zyz;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.yx + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.x, arg_1.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_1.wy)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_1.x)))))));
    var var_3 = vec4<i32>(var_0.x, reverseBits(_wgslsmith_mod_i32(max(-1766i, u_input.a), -15874i)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, var_0.x), vec3<i32>(2147483647i, u_input.a, var_0.x) & vec3<i32>(var_0.x, 97705i, var_0.x)), 1i), max(~_wgslsmith_dot_vec2_i32(vec2<i32>(11545i, -17254i), vec2<i32>(u_input.a, var_0.x)), u_input.a)) | vec4<i32>(_wgslsmith_add_i32(var_0.x, i32(-1i) * -1i), firstTrailingBit(~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -12838i, -2147483647i, var_0.x), vec4<i32>(2147483647i, 0i, -68299i, -33568i))), 43133i, reverseBits(7032i));
    var_3 = countOneBits(select(-_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, var_0.x, -65976i, var_3.x), vec4<i32>(u_input.a, 1i, -2147483647i, var_0.x) >> (vec4<u32>(28877u, 93123u, 18175u, 15039u) % vec4<u32>(32u))), -vec4<i32>(1i, i32(-1i) * -8352i, var_0.x, -1i >> (1u % 32u)), vec4<bool>(true, !arg_0.x, true, !func_3(Struct_1(var_0.zy, vec3<u32>(27867u, 4294967295u, 23362u), 2147483647i), true).x)));
    return var_2.x;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(firstTrailingBit(vec2<i32>(~u_input.a, ~u_input.a)), vec3<u32>(50569u, 1u, ~38652u << (~4294967295u % 32u)) >> (countOneBits(_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(1u, 4294967295u, 4294967295u)), ~vec3<u32>(51393u, 18013u, 28834u), vec3<u32>(34475u, 4294967295u, 4294967295u))) % vec3<u32>(32u)), _wgslsmith_sub_i32(~_wgslsmith_clamp_i32(abs(u_input.a), min(u_input.a, 7008i), i32(-1i) * -9700i), -2147483647i));
    global0 = array<Struct_2, 23>();
    global0 = array<Struct_2, 23>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2(vec4<f32>(-767f, -1222f, 1006f, 436f), 6909u, var_0.b.x), vec4<f32>(-898f, 1124f, 1479f, 701f))) + 1000f))));
    var_0 = Struct_1(vec2<i32>(_wgslsmith_div_i32(var_0.a.x, ~_wgslsmith_mult_i32(2147483647i, var_0.c)), -min(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c, 55875i, var_0.a.x), vec3<i32>(u_input.a, u_input.a, 1i)), _wgslsmith_sub_i32(var_0.a.x, -22342i))), max(abs(reverseBits(vec3<u32>(var_0.b.x, 35739u, 4294967295u)) << (min(var_0.b, var_0.b) % vec3<u32>(32u))), var_0.b), i32(-1i) * -select(-2147483647i, -u_input.a, false));
    return Struct_1(reverseBits(min(select(vec2<i32>(var_0.c, u_input.a), var_0.a << (var_0.b.yx % vec2<u32>(32u)), vec2<bool>(true, true)), var_0.a)), abs(vec3<u32>(4294967295u, ~var_0.b.x, 46957u)), var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 23>();
    let var_0 = Struct_2(func_1(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-211f, _wgslsmith_f_op_f32(f32(-1f) * -422f), -683f, -342f)))), select(true, true, true), ~reverseBits(2147483647i));
    var var_1 = func_1();
    let var_2 = var_0.a.a.x == ~_wgslsmith_clamp_i32(-(5005i << (var_1.b.x % 32u)), u_input.a | var_0.a.a.x, 0i);
    var var_3 = global0[_wgslsmith_index_u32(4294967295u, 23u)];
    let var_4 = vec4<i32>(var_0.d, _wgslsmith_dot_vec3_i32(abs(firstTrailingBit(~vec3<i32>(42284i, 1i, var_0.d))), firstLeadingBit(min(countOneBits(vec3<i32>(var_0.d, u_input.a, u_input.a)), vec3<i32>(var_0.a.c, -2147483647i, -2147483647i)))), 0i, var_1.c);
    var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(max(firstLeadingBit(~vec3<i32>(1i, 2147483647i, 3537i)), -var_4.wwz >> (var_1.b % vec3<u32>(32u))), _wgslsmith_f_op_f32(232f - var_0.b.x), _wgslsmith_f_op_f32(-var_0.b.x), vec4<f32>(-1420f, var_3.b.x, -696f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-var_3.b.x)))), ~max(var_1.b, vec3<u32>(var_3.a.b.x, func_1().b.x, var_1.b.x)));
}

