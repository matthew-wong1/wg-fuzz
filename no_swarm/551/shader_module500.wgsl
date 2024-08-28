struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_5) -> i32 {
    var var_0 = u_input.b << (reverseBits(min(firstTrailingBit(88462u), ~(~4294967295u))) % 32u);
    let var_1 = Struct_2(Struct_1(~u_input.a.x, ~vec4<u32>(~u_input.a.x, 1u, _wgslsmith_sub_u32(u_input.a.x, 3916u), 97084u)), countOneBits(-(~u_input.b)) | ~_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, 22856i, u_input.b, -2147483647i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)), vec4<i32>(u_input.b, u_input.b, 32071i, -24298i)));
    var_0 = reverseBits(var_1.b);
    var_0 = _wgslsmith_clamp_i32(var_1.b, ~u_input.b, u_input.b);
    let var_2 = vec3<bool>(true, all(vec2<bool>(all(vec2<bool>(true, false)), -1i < var_1.b)), any(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    return var_1.b;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: f32) -> u32 {
    let var_0 = func_3(Struct_5(Struct_3(_wgslsmith_f_op_f32(-arg_2)), 13136u));
    let var_1 = u_input.a.xy;
    var var_2 = vec2<bool>(false, min(0u | _wgslsmith_div_u32(10912u, var_1.x), abs(102877u & var_1.x)) > ~(arg_0 & ~u_input.a.x));
    var var_3 = !any(vec2<bool>(any(vec3<bool>(true, var_2.x, true)), true)) | true;
    var var_4 = Struct_5(Struct_3(_wgslsmith_f_op_f32(-arg_2)), 0u);
    return max(_wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.a), vec3<u32>(1u, 25333u, ~u_input.a.x) ^ ~(vec3<u32>(var_4.b, var_1.x, 8037u) << (vec3<u32>(var_1.x, var_1.x, 0u) % vec3<u32>(32u)))), firstTrailingBit((var_1.x >> (var_1.x % 32u)) >> ((_wgslsmith_add_u32(31273u, u_input.a.x) >> (u_input.a.x % 32u)) % 32u)));
}

fn func_1(arg_0: Struct_2) -> i32 {
    let var_0 = ~vec3<u32>(countOneBits(arg_0.a.a), ~_wgslsmith_mod_u32(4294967295u, 106865u), firstLeadingBit(func_2(78624u, arg_0.b, -204f))) & u_input.a;
    let var_1 = -u_input.b;
    var var_2 = Struct_4(var_0, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))))));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -897f)))));
    var_2 = Struct_4(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(~min(u_input.a, arg_0.a.b.zxz), arg_0.a.b.zxz), firstLeadingBit(vec3<u32>(arg_0.a.b.x, max(91627u, 0u), var_0.x)), reverseBits(~u_input.a)), var_2.b);
    return func_3(Struct_5(var_2.b, 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(-u_input.b, func_1(Struct_2(Struct_1(1u, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u)), u_input.b)), ~1i) >> (u_input.a % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(reverseBits(-24773i), _wgslsmith_mult_i32(14125i, u_input.b), u_input.b ^ u_input.b), -vec3<i32>(u_input.b, -5312i, -56928i))) & ~_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, 1i), min(vec3<i32>(u_input.b, u_input.b, 8740i), vec3<i32>(u_input.b, 1i, u_input.b))), vec3<i32>(u_input.b, 0i, i32(-1i) * -13254i));
    let var_1 = Struct_4(reverseBits(_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(78874u, 0u, 8848u)), ~_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 1u, 1u)))), Struct_3(503f));
    var var_2 = -select(i32(-1i) * -31596i, u_input.b, all(select(select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true))));
    var_2 = ~select(~_wgslsmith_div_i32(func_1(Struct_2(Struct_1(var_1.a.x, vec4<u32>(u_input.a.x, var_1.a.x, 1u, var_1.a.x)), var_0.x)), u_input.b | 22011i), func_3(Struct_5(Struct_3(1443f), var_1.a.x)), true);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1339f) * -869f);
    var_0 = abs(max(_wgslsmith_div_vec3_i32(-vec3<i32>(-1i, 1i, u_input.b), max(vec3<i32>(u_input.b, u_input.b, var_0.x), vec3<i32>(30651i, -2147483647i, -44677i)) >> (vec3<u32>(1u, 32908u, u_input.a.x) % vec3<u32>(32u))), vec3<i32>(max(-var_0.x, ~(-60814i)), max(u_input.b, 2147483647i | var_0.x), 1i)));
    let var_4 = firstTrailingBit(u_input.a.x) <= 4294967295u;
    let var_5 = ~1u;
    var var_6 = vec3<i32>(1i, 2147483647i, -1i);
    let x = u_input.a;
    s_output = StorageBuffer(~(0u | ~(~var_5)), 1u, _wgslsmith_mod_i32(reverseBits(~var_6.x), ~_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.b, var_6.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_6.x, 46149i, var_6.x, 22885i), vec4<i32>(28625i, var_0.x, 2147483647i, var_6.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) - -2736f)));
}

