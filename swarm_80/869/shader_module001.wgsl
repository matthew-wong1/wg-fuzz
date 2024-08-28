struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<i32>,
    d: u32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-23289i, i32(-2147483648), 0i);

var<private> global1: array<i32, 24>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    var var_0 = Struct_3(false, _wgslsmith_div_i32(1i, _wgslsmith_mod_i32(~global0.x, ~global0.x)) > _wgslsmith_add_i32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(11108u >> (1u % 32u), u_input.b.x ^ u_input.a), 24u)], global1[_wgslsmith_index_u32(1u, 24u)] ^ 24850i));
    let var_1 = _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(abs(arg_0.x), ~arg_0.x)), 24u)] | _wgslsmith_mod_i32(global0.x, 45413i), reverseBits(~abs(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(arg_0.x, 24u)], global1[_wgslsmith_index_u32(arg_0.x, 24u)]))), _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(51526u, 24u)], global1[_wgslsmith_index_u32(1u, 24u)]));
    global1 = array<i32, 24>();
    global0 = _wgslsmith_sub_vec3_i32(((_wgslsmith_mult_vec3_i32(vec3<i32>(9917i, global1[_wgslsmith_index_u32(0u, 24u)], 0i), vec3<i32>(-12337i, 56890i, 0i)) >> (arg_0 % vec3<u32>(32u))) ^ min(vec3<i32>(2147483647i, 2147483647i, global1[_wgslsmith_index_u32(1u, 24u)]) >> (vec3<u32>(0u, 7343u, u_input.a) % vec3<u32>(32u)), abs(vec3<i32>(-1i, -27401i, global1[_wgslsmith_index_u32(arg_0.x, 24u)])))) ^ _wgslsmith_mod_vec3_i32(~vec3<i32>(global1[_wgslsmith_index_u32(28130u, 24u)], global0.x, global1[_wgslsmith_index_u32(0u, 24u)]), _wgslsmith_div_vec3_i32(-vec3<i32>(global1[_wgslsmith_index_u32(52075u, 24u)], var_1, 12268i), -vec3<i32>(1i, global1[_wgslsmith_index_u32(u_input.a, 24u)], var_1))), vec3<i32>(var_1, global0.x, ~global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(4294967295u, 26028u), 24u)]));
    var_0 = Struct_3(!var_0.b, true);
    return 1u;
}

fn func_2() -> i32 {
    global1 = array<i32, 24>();
    let var_0 = vec3<i32>(global0.x, 1i, global0.x);
    var var_1 = ~(~(firstLeadingBit(-var_0) << (vec3<u32>(u_input.b.x ^ 73516u, u_input.b.x, func_3(vec3<u32>(0u, 0u, u_input.b.x))) % vec3<u32>(32u))));
    global1 = array<i32, 24>();
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2777f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-354f, _wgslsmith_f_op_f32(2635f - -314f)))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-818f + 612f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(337f)))))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(398f, 159f, 2410f, 1727f)), vec4<f32>(792f, -796f, 290f, 1139f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -1885f, -151f, 475f), vec4<f32>(965f, -1935f, -225f, -383f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(3062f, 348f, -1602f, -747f) + vec4<f32>(732f, -1162f, 359f, -1115f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1433f, -1720f, -836f, -647f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(593f, -331f, 1891f, -767f)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), false))), vec4<bool>(any(vec4<bool>(false, false, false, false)), true, true, any(vec2<bool>(true, true))))))));
    return _wgslsmith_dot_vec2_i32(~max(vec2<i32>(global1[_wgslsmith_index_u32(65051u, 24u)], global1[_wgslsmith_index_u32(1u, 24u)]) << (vec2<u32>(u_input.b.x, 4294967295u) % vec2<u32>(32u)), vec2<i32>(1i, -var_0.x)), _wgslsmith_add_vec2_i32(firstTrailingBit(firstLeadingBit(select(var_1.xz, vec2<i32>(39411i, -29682i), false))), firstLeadingBit(countOneBits(vec2<i32>(1i, global0.x)))));
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    global0 = vec3<i32>(-func_2(), reverseBits(_wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, arg_0.a), vec2<i32>(-7778i, -24305i) ^ vec2<i32>(arg_0.a, global1[_wgslsmith_index_u32(1u, 24u)])), -arg_0.c)), 11737i);
    var var_0 = !vec2<bool>(all(select(!vec4<bool>(arg_0.d.x, arg_0.d.x, false, true), !vec4<bool>(false, true, arg_0.d.x, arg_0.d.x), false)), arg_0.d.x);
    global1 = array<i32, 24>();
    let var_1 = (~_wgslsmith_clamp_vec3_i32(vec3<i32>(global0.x, global1[_wgslsmith_index_u32(u_input.b.x, 24u)], global0.x), ~vec3<i32>(arg_0.b, 1i, -38648i), firstTrailingBit(vec3<i32>(-2147483647i, -4915i, -58725i))) | -vec3<i32>(-arg_0.a, 0i, global0.x ^ 0i)) | select(vec3<i32>(i32(-1i) * -30030i, ~(global0.x & global0.x), global0.x), vec3<i32>(-1i) * -vec3<i32>(global0.x, global1[_wgslsmith_index_u32(u_input.a, 24u)], 6354i), var_0.x);
    global1 = array<i32, 24>();
    return max(_wgslsmith_mult_vec2_u32(u_input.b, u_input.b), u_input.b) | vec2<u32>(1u, 1u);
}

fn func_4(arg_0: vec2<u32>, arg_1: u32, arg_2: u32, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(countOneBits(-1i), _wgslsmith_sub_i32((global0.x << (arg_3.x % 32u)) << (104577u % 32u), 2147483647i), -26379i, select(vec2<bool>(true, all(vec2<bool>(false, false))), vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, true)), true))), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(arg_2, 24u)], global1[_wgslsmith_index_u32(34668u, 24u)]) ^ -vec2<i32>(global0.x, global0.x), -(~global0.zx)), _wgslsmith_dot_vec4_i32(select(-vec4<i32>(14237i, global1[_wgslsmith_index_u32(arg_0.x, 24u)], -2147483647i, -7616i), abs(vec4<i32>(global1[_wgslsmith_index_u32(1u, 24u)], global0.x, 9465i, 34424i)), vec4<bool>(true, true, true, true)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], global1[_wgslsmith_index_u32(1u, 24u)], global0.x, 4159i) >> (vec4<u32>(35817u, 57533u, 10196u, 11385u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, global1[_wgslsmith_index_u32(arg_2, 24u)], 2147483647i, -1i), vec4<i32>(-16595i, global1[_wgslsmith_index_u32(arg_3.x, 24u)], global1[_wgslsmith_index_u32(arg_2, 24u)], global1[_wgslsmith_index_u32(1u, 24u)])), reverseBits(vec4<i32>(-25796i, -1i, -1i, 67155i)))), -2147483647i, select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), true), true)), _wgslsmith_mod_u32(arg_1, 12219u));
    var var_1 = Struct_3((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(923f, 528f, true))) == 707f) | any(!vec2<bool>(var_0.b.d.x, false)), var_0.b.d.x);
    let var_2 = var_0.a;
    let var_3 = var_2;
    global0 = -vec3<i32>(firstLeadingBit(i32(-1i) * -2147483647i), 28009i, global0.x);
    return Struct_1(-var_2.a, select(-1i, 1i, all(vec3<bool>(var_1.b, select(var_2.d.x, var_1.a, false), true))), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(max(vec3<i32>(12480i, var_2.a, 15983i), vec3<i32>(global0.x, var_3.b, global0.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(9777u, 24u)], global1[_wgslsmith_index_u32(arg_1, 24u)], 1i), vec3<i32>(var_0.b.b, 2147483647i, var_2.b))) | -2147483647i, var_0.a.a), select(var_0.a.d, vec2<bool>(all(select(vec3<bool>(true, var_1.b, var_0.b.d.x), vec3<bool>(var_0.b.d.x, false, var_0.a.d.x), vec3<bool>(true, var_3.d.x, true))), true), vec2<bool>(true, (-68838i | global0.x) < _wgslsmith_add_i32(global0.x, 28776i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_4(vec2<u32>(_wgslsmith_sub_u32(~u_input.a, 31696u), ~firstTrailingBit(u_input.a)), 1u, ~_wgslsmith_dot_vec2_u32(func_1(Struct_1(global1[_wgslsmith_index_u32(42116u, 24u)], 2147483647i, global0.x, vec2<bool>(true, true))), max(vec2<u32>(34813u, u_input.b.x), vec2<u32>(u_input.a, u_input.a))), u_input.b), Struct_1(firstLeadingBit(1i), ~(-2147483647i), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, _wgslsmith_add_u32(~u_input.b.x, u_input.a)), 24u)], select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(func_4(u_input.b, 36077u, 67771u, vec2<u32>(0u, u_input.a)).d.x, true), true)), firstLeadingBit(_wgslsmith_clamp_u32(_wgslsmith_add_u32(~0u, ~u_input.b.x), u_input.b.x, 29130u)));
    global0 = abs(vec3<i32>(firstTrailingBit(max(44555i, _wgslsmith_mod_i32(var_0.a.c, var_0.b.a))), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(global0.x, 12248i, global1[_wgslsmith_index_u32(45822u, 24u)]), vec3<i32>(global0.x, var_0.b.c, 66155i) >> (vec3<u32>(u_input.a, var_0.c, var_0.c) % vec3<u32>(32u))), ~vec3<i32>(var_0.a.a, 0i, global1[_wgslsmith_index_u32(u_input.a, 24u)])), global0.x));
    global0 = _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-23095i, i32(-1i) * -18357i, 2147483647i), ~(~(vec3<i32>(global1[_wgslsmith_index_u32(15088u, 24u)], global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(var_0.c, 24u)]) ^ vec3<i32>(2147483647i, global0.x, global1[_wgslsmith_index_u32(33749u, 24u)])))), firstLeadingBit(~(~vec3<i32>(-15573i, global0.x, 23517i)) ^ select(vec3<i32>(global0.x, 30163i, var_0.b.a), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(var_0.c, 24u)], global1[_wgslsmith_index_u32(0u, 24u)]), vec3<i32>(4077i, -5117i, var_0.b.b)), !vec3<bool>(false, var_0.a.d.x, true))));
    let var_1 = Struct_4(var_0, var_0, vec4<i32>(max(21333i, firstLeadingBit(1i)) >> ((0u ^ var_0.c) % 32u), 1i, 1i, _wgslsmith_mult_i32(-(~global0.x), func_4(~vec2<u32>(var_0.c, u_input.b.x), firstTrailingBit(68074u), 0u, ~vec2<u32>(u_input.a, 3386u)).b)), _wgslsmith_mult_u32(var_0.c, var_0.c), vec2<bool>(any(!(!vec4<bool>(true, false, var_0.a.d.x, var_0.b.d.x))), true | all(!vec3<bool>(var_0.b.d.x, var_0.a.d.x, var_0.a.d.x))));
    let var_2 = _wgslsmith_clamp_vec3_i32(var_1.c.ywz, vec3<i32>(21056i, 0i, _wgslsmith_sub_i32(~(-1i | global0.x), func_2())), ~var_1.c.xzz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1747f + 736f)) + _wgslsmith_f_op_f32(f32(-1f) * -711f)), _wgslsmith_div_f32(190f, _wgslsmith_f_op_f32(floor(-133f)))), firstLeadingBit(max(vec4<u32>(u_input.a, 15547u, u_input.b.x, 0u) << (vec4<u32>(var_1.b.c, var_1.d, var_0.c, 0u) % vec4<u32>(32u)), ~vec4<u32>(72196u, 1u, 0u, var_0.c)) ^ vec4<u32>(var_0.c, 4294967295u, 58719u, 15510u >> (var_0.c % 32u))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(1000f * -812f), 1f, -193f, _wgslsmith_div_f32(-603f, -1229f)))))), vec2<u32>(1u, 0u), min(36562u, 23891u));
}

