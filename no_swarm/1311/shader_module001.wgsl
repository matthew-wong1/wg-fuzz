struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> i32 {
    return -1i;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<f32>) -> u32 {
    var var_0 = 59285u;
    let var_1 = !(true != !any(select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(arg_0.x, false, false), arg_0.x)));
    var var_2 = countOneBits(vec3<i32>(~(-2147483647i), -27358i, func_2()));
    let var_3 = vec4<i32>(-1i) * -vec4<i32>(-1i, firstLeadingBit(-23417i), _wgslsmith_mod_i32(-2147483647i, _wgslsmith_sub_i32(-1i, var_2.x)), -var_2.x);
    let var_4 = _wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-29695i, var_3.x, var_3.x), var_3.zxx | var_3.wyz, _wgslsmith_mult_vec3_i32(var_3.wzw, vec3<i32>(-1i, var_3.x, var_3.x))) & var_3.zxx), -vec3<i32>(-firstTrailingBit(var_3.x), _wgslsmith_div_i32(var_2.x >> (u_input.b.x % 32u), var_3.x), var_3.x));
    return 44224u;
}

fn func_3(arg_0: vec3<f32>, arg_1: i32) -> vec2<u32> {
    let var_0 = select(vec3<bool>(true & !all(vec3<bool>(false, true, false)), _wgslsmith_f_op_f32(arg_0.x - -2655f) < arg_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(940f + arg_0.x))) <= 2460f), select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), u_input.b.x > u_input.b.x), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), true), select(any(vec4<bool>(true, false, false, false)), select(true, true, true), true)), vec3<bool>((arg_1 & arg_1) > -1i, true, any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)))), vec3<bool>(true, true, false)), !all(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true))));
    let var_1 = arg_0.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1818f))));
    let var_2 = Struct_4(Struct_2(Struct_1(max(arg_1, arg_1)), ~reverseBits(u_input.a.x), Struct_1(firstTrailingBit(min(arg_1, arg_1)))), arg_1, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(533f + _wgslsmith_f_op_f32(max(350f, 2123f))) * _wgslsmith_f_op_f32(floor(1000f))))), countOneBits(min(vec2<u32>(u_input.a.x & u_input.a.x, 1u), vec2<u32>(~u_input.b.x, ~u_input.a.x))), Struct_1(_wgslsmith_dot_vec4_i32(~(vec4<i32>(arg_1, 2147483647i, arg_1, arg_1) & vec4<i32>(arg_1, arg_1, arg_1, -1i)), min(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1, arg_1, -1i, 29108i), vec4<i32>(arg_1, -59348i, -33652i, 2147483647i), vec4<i32>(-17019i, arg_1, 49214i, -23459i)), ~vec4<i32>(arg_1, 2147483647i, -60379i, arg_1)))));
    var var_3 = Struct_3(var_2.a.c, var_0, Struct_2(Struct_1(arg_1), 1u, Struct_1(-2147483647i)), false);
    return reverseBits(var_2.d);
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: vec2<u32>, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = 35412u;
    var var_1 = ~(~vec2<u32>(u_input.b.x, (arg_0 | 4294967295u) & ~4885u));
    let var_2 = Struct_4(Struct_2(Struct_1(18892i), 19159u, Struct_1(-67243i)), abs(32361i), _wgslsmith_f_op_f32(1f - -428f), ~vec2<u32>(~var_1.x, 0u), Struct_1(-(~min(arg_3.x, -1i))));
    var_1 = vec2<u32>(abs(var_1.x), ~arg_2.x);
    return Struct_2(var_2.a.a, abs(_wgslsmith_dot_vec2_u32(min(var_2.d, vec2<u32>(var_1.x, arg_1.x)), firstTrailingBit(vec2<u32>(1u, 25347u)))) << ((arg_1.x ^ (_wgslsmith_div_u32(var_0, 1u) << (abs(var_2.d.x) % 32u))) % 32u), Struct_1(~(i32(-1i) * -37387i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = var_0;
    var_1 = var_0;
    var var_2 = countOneBits(vec4<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(56700i, -2147483647i), 1i), -vec2<i32>(2147483647i, 0i) << (select(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(4294967295u, u_input.b.x), var_0) % vec2<u32>(32u))), _wgslsmith_div_i32(-firstTrailingBit(0i), 1i), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(0i, 24778i, -40949i)), vec3<i32>(-2147483647i, 1i, -1i)), -1i >> (1u % 32u))));
    var var_3 = func_4(_wgslsmith_div_u32(~u_input.a.x, func_1(vec2<bool>(true, true), vec2<f32>(1f, 1f))), _wgslsmith_mult_vec2_u32(max(~u_input.b.xx, u_input.b.yz), _wgslsmith_mod_vec2_u32(abs(firstTrailingBit(vec2<u32>(u_input.a.x, u_input.b.x))), (vec2<u32>(30498u, u_input.b.x) >> (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))) & func_3(vec3<f32>(-1000f, -715f, 893f), var_2.x))), vec2<u32>(abs(u_input.a.x), abs(_wgslsmith_add_u32(_wgslsmith_mod_u32(580u, u_input.a.x), 4294967295u))), ~_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(min(vec4<i32>(var_2.x, var_2.x, 1i, var_2.x), vec4<i32>(var_2.x, var_2.x, -9307i, var_2.x)), _wgslsmith_div_vec4_i32(vec4<i32>(var_2.x, -15139i, var_2.x, var_2.x), vec4<i32>(0i, var_2.x, var_2.x, var_2.x))), firstTrailingBit(select(vec4<i32>(2147483647i, -940i, var_2.x, var_2.x), vec4<i32>(var_2.x, -30776i, -1i, -2147483647i), vec4<bool>(true, false, false, false)))));
    var var_4 = Struct_2(Struct_1(-36901i), _wgslsmith_div_u32(u_input.b.x, ~1u), func_4(_wgslsmith_mult_u32(0u, 8430u), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.zx, ~u_input.a.xy), ~11761u), firstTrailingBit(u_input.b.xx), vec4<i32>(~_wgslsmith_dot_vec3_i32(var_2.xxx, var_2.xwz), var_2.x, 43662i, 1i)).a);
    let x = u_input.a;
    s_output = StorageBuffer(-1563f, countOneBits(firstTrailingBit(~vec4<u32>(u_input.b.x, u_input.a.x, var_4.b, 662u) ^ firstLeadingBit(vec4<u32>(var_4.b, 1u, 9592u, u_input.a.x)))), 125048u, firstTrailingBit(firstTrailingBit(var_2.wz)));
}

