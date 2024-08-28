struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(0u, 35962u, 4294967295u, 4294967295u);

var<private> global1: array<vec4<u32>, 16>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec4<bool>) -> bool {
    global0 = global1[_wgslsmith_index_u32(u_input.a.x, 16u)];
    global1 = array<vec4<u32>, 16>();
    var var_0 = 37362u;
    var_0 = 5649u;
    global1 = array<vec4<u32>, 16>();
    return arg_0.x;
}

fn func_3() -> vec4<u32> {
    global1 = array<vec4<u32>, 16>();
    let var_0 = all(!(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-420f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -436f)), _wgslsmith_f_op_f32(min(1507f, -1534f)), 346f)), vec4<bool>(true, var_0 && select(all(vec3<bool>(var_0, true, var_0)), !var_0, true), !any(vec2<bool>(var_0, var_0)), 0u <= _wgslsmith_mult_u32(~global0.x, 10522u)), _wgslsmith_mult_vec3_i32(vec3<i32>(i32(-1i) * -42979i, 0i, -77725i), reverseBits(vec3<i32>(-2147483647i, -26924i, 48633i) << (vec3<u32>(global0.x, 14541u, 1u) % vec3<u32>(32u)))) & ~(~(-vec3<i32>(70153i, 2147483647i, 4263i))));
    var var_2 = Struct_2(var_1.b.x, vec4<i32>(i32(-1i) * -52608i, var_1.c.x, ~countOneBits(~var_1.c.x), 0i), Struct_1(!vec2<bool>(false, any(var_1.b))), Struct_1(vec2<bool>(true, !var_0)), _wgslsmith_f_op_vec4_f32(select(var_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.a.x, -579f, var_1.a.x, var_1.a.x)))), select(var_0, var_1.b.x & !var_0, true))));
    var var_3 = true;
    return _wgslsmith_mult_vec4_u32(select(min(vec4<u32>(1u, 1u, ~0u, _wgslsmith_dot_vec3_u32(global0.zyy, vec3<u32>(90790u, global0.x, 70784u))), ~abs(vec4<u32>(u_input.b.x, u_input.c, global0.x, global0.x))), abs(max(u_input.b, u_input.b & global1[_wgslsmith_index_u32(global0.x, 16u)])), select(!select(vec4<bool>(var_1.b.x, var_0, var_0, var_0), vec4<bool>(var_0, true, var_0, true), var_1.b.x), var_1.b, select(true, true, !var_0))), countOneBits(~(~vec4<u32>(global0.x, global0.x, 0u, u_input.b.x)) ^ (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, global0.x, u_input.b.x), vec4<u32>(0u, u_input.b.x, global0.x, 24068u)) >> ((u_input.b & global1[_wgslsmith_index_u32(u_input.c, 16u)]) % vec4<u32>(32u)))));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> vec4<i32> {
    global1 = array<vec4<u32>, 16>();
    var var_0 = _wgslsmith_sub_vec4_i32(~(-vec4<i32>(20207i, 0i, -1i, -38324i) >> (_wgslsmith_add_vec4_u32(func_3(), u_input.b) % vec4<u32>(32u))), -abs(vec4<i32>(1i, 1i, 1i, 1i)));
    var_0 = vec4<i32>(2147483647i, var_0.x, _wgslsmith_div_i32(~4051i | firstTrailingBit(-var_0.x), ~(~(~var_0.x))), -abs(var_0.x));
    var var_1 = true;
    var var_2 = (abs(vec3<u32>(global0.x, global0.x, 0u) ^ u_input.b.xww) | u_input.a) << (~(~vec3<u32>(countOneBits(18936u), countOneBits(50995u), 16200u)) % vec3<u32>(32u));
    return _wgslsmith_mult_vec4_i32(-vec4<i32>(var_0.x, ~var_0.x, _wgslsmith_div_i32(0i, 1i), _wgslsmith_sub_i32(var_0.x, var_0.x)), ~(abs(vec4<i32>(60852i, -2147483647i, 2147483647i, var_0.x)) & max(vec4<i32>(16220i, var_0.x, 2147483647i, var_0.x), vec4<i32>(-71349i, var_0.x, -18912i, var_0.x)))) >> (countOneBits(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(~u_input.b.x), _wgslsmith_dot_vec2_u32(u_input.b.wy, abs(vec2<u32>(global0.x, u_input.a.x)))), 16u)]) % vec4<u32>(32u));
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_2) -> StorageBuffer {
    let var_0 = Struct_3(arg_3.e, !(!select(select(vec4<bool>(arg_1.x, false, true, true), vec4<bool>(arg_1.x, arg_1.x, true, true), arg_3.c.a.x), select(vec4<bool>(arg_1.x, arg_1.x, false, arg_3.d.a.x), vec4<bool>(arg_1.x, true, true, arg_3.d.a.x), vec4<bool>(true, true, false, arg_3.d.a.x)), select(vec4<bool>(arg_1.x, arg_3.a, true, arg_3.c.a.x), vec4<bool>(true, true, true, false), arg_3.c.a.x))), ~(arg_3.b.yzw ^ max(vec3<i32>(arg_0, -22355i, arg_0), vec3<i32>(arg_3.b.x, arg_0, 2147483647i))) << (abs(~global0.xwz) % vec3<u32>(32u)));
    global1 = array<vec4<u32>, 16>();
    let var_1 = arg_3;
    let var_2 = ~(~arg_3.b.x << (_wgslsmith_add_u32(arg_2, _wgslsmith_mult_u32(32541u, abs(35244u))) % 32u));
    let var_3 = Struct_2(true, vec4<i32>(-2147483647i, (0i >> ((82065u & arg_2) % 32u)) & ((-36451i << (global0.x % 32u)) | ~46302i), var_1.b.x | 8867i, -1i), Struct_1(!(!select(vec2<bool>(var_1.a, false), var_0.b.yx, false))), Struct_1(select(arg_3.d.a, !var_1.c.a, arg_3.d.a.x)), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.e.x), -126f, any(vec3<bool>(true, true, var_1.a)))))), _wgslsmith_f_op_f32(-arg_3.e.x), -693f, var_1.e.x));
    return StorageBuffer(-(~(~vec2<i32>(-2147483647i, 2147483647i))), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, 1u), global0.wy), min(_wgslsmith_dot_vec2_u32(global0.wx, u_input.b.ww) & ~u_input.b.x, 4294967295u), arg_2, func_3().x ^ (u_input.c | _wgslsmith_mult_u32(22408u, arg_2))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(reverseBits(~(-6893i)), !select(vec3<bool>(true, select(true, false, true), true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, false, false), all(vec3<bool>(false, false, true))), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), ~_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.c, 35068u), reverseBits(1u)) | u_input.b.x, Struct_2(func_1(vec4<bool>(true, true, true, true)) && true, _wgslsmith_div_vec4_i32(max(-vec4<i32>(-2147483647i, 1i, 16218i, 2147483647i), func_2(Struct_1(vec2<bool>(true, false)), false, 641f)), countOneBits(vec4<i32>(-2147483647i, 6310i, -2147483647i, -2147483647i))), Struct_1(select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), true)), Struct_1(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(458f, -1339f), _wgslsmith_f_op_f32(round(750f)), _wgslsmith_f_op_f32(ceil(460f)), _wgslsmith_f_op_f32(313f + 371f)) * vec4<f32>(1f, 1f, 1f, 1f))));
}

