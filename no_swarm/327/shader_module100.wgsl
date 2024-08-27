struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
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

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_4) -> f32 {
    var var_0 = vec2<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0 * 790f)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-795f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-124f, _wgslsmith_f_op_f32(var_0.x * 314f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1559f - var_0.x), var_0.x)))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(236f, var_0.x) * vec2<f32>(arg_2.c.a, 423f)) * vec2<f32>(-454f, _wgslsmith_f_op_f32(sign(var_0.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, arg_0) * vec2<f32>(-504f, arg_0)), vec2<f32>(-944f, 294f), arg_1.x)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(1326f, arg_0), vec2<f32>(1833f, arg_2.c.a))))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1023f * arg_0) - var_0.x);
}

fn func_2() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2582f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1594f * 732f) + _wgslsmith_f_op_f32(func_3(-1259f, vec3<bool>(true, true, true), Struct_4(Struct_2(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), 0u), u_input.a.x, Struct_1(2140f, vec3<i32>(2147483647i, -21246i, u_input.a.x)), vec4<u32>(58513u, 1u, 17019u, 4294967295u), vec4<u32>(0u, 4294967295u, 32789u, 116871u)))))), firstLeadingBit(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, -2147483647i, 2147483647i), vec3<i32>(2147483647i, u_input.a.x, -22919i))) >> (~(~vec3<u32>(57839u, 83111u, 60604u)) % vec3<u32>(32u))));
    var var_1 = 4314u;
    let var_2 = Struct_5(reverseBits(abs(~vec4<u32>(1u, 1u, 1u, 1u))));
    var_1 = ~_wgslsmith_sub_u32(var_2.a.x, var_2.a.x);
    var_1 = abs(_wgslsmith_mult_u32(~(~var_2.a.x), ~var_2.a.x));
    return 0u;
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: f32, arg_3: vec3<u32>) -> i32 {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(-165f + var_0);
    let var_2 = vec4<u32>(abs(func_2()), _wgslsmith_sub_u32(~arg_0 >> (~arg_0 % 32u), arg_3.x), abs(0u), max(34692u, abs(~(~arg_0))));
    let var_3 = !((arg_1.x && arg_1.x) && all(select(vec3<bool>(false, false, arg_1.x), arg_1, select(arg_1, vec3<bool>(arg_1.x, false, arg_1.x), true))));
    var var_4 = Struct_5(var_2);
    return 0i;
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: f32, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-464f)), 1f)), arg_3.a);
    let var_1 = arg_3;
    let var_2 = vec3<u32>(select(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(var_1.b, arg_3.b)), _wgslsmith_mult_vec2_u32(vec2<u32>(var_1.b, arg_3.b), vec2<u32>(1u, 4294967295u))), false), var_1.b, var_1.b) << (select(vec3<u32>(var_1.b >> (26785u % 32u), ~14324u, ~(var_1.b >> (arg_3.b % 32u))), abs(~vec3<u32>(58969u, 23376u, 117136u)), arg_0.x == true) % vec3<u32>(32u));
    let var_3 = firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(firstTrailingBit(2147483647i), firstLeadingBit(var_1.a.x), ~27551i, -arg_1) | vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(21363i, 2147483647i), var_0.b.zx), -var_1.a.x, _wgslsmith_mod_i32(23316i, var_0.b.x), -2147483647i), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_3.a.x, u_input.a.x, arg_3.a.x, 9395i), _wgslsmith_mult_vec4_i32(vec4<i32>(18416i, 29563i, -23982i, arg_3.a.x), vec4<i32>(-24402i, -9472i, 15031i, -6857i)), vec4<i32>(var_0.b.x, -13726i, 13029i, 1i)), -min(vec4<i32>(u_input.a.x, arg_1, arg_3.a.x, var_0.b.x), vec4<i32>(arg_3.a.x, -1i, arg_3.a.x, 2147483647i)), !all(vec3<bool>(arg_0.x, false, true)))));
    var var_4 = var_1;
    return var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (u_input.a.x ^ (u_input.a.x | func_4(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), func_1(94940u, vec3<bool>(true, true, false), 868f, vec3<u32>(4294967295u, 18772u, 0u)), -998f, Struct_2(vec3<i32>(0i, u_input.a.x, -1i), 56125u)))) == _wgslsmith_clamp_i32(-min(31908i, abs(-47212i)), ~(~(i32(-1i) * -1i)), u_input.a.x);
    var var_1 = Struct_5(vec4<u32>(1u, 1u, 0u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 4294967295u, 4294967295u, 0u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(25376u, 77080u, 0u), vec3<u32>(45387u, 33032u, 0u)))));
    let var_2 = (~_wgslsmith_sub_vec4_i32(select(vec4<i32>(889i, 853i, 1i, 0i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i), true), ~vec4<i32>(u_input.a.x, -1i, -1i, 1i)) << (select(~vec4<u32>(var_1.a.x, 37992u, var_1.a.x, 1u), _wgslsmith_mult_vec4_u32(var_1.a >> (var_1.a % vec4<u32>(32u)), ~var_1.a), vec4<bool>(true, true, true, true)) % vec4<u32>(32u))) << (vec4<u32>(abs(66807u), firstLeadingBit(_wgslsmith_clamp_u32(var_1.a.x, var_1.a.x, 85221u)) | min(var_1.a.x, 38057u), ~_wgslsmith_mult_u32(var_1.a.x, var_1.a.x), var_1.a.x) % vec4<u32>(32u));
    let var_3 = ~(~max((var_1.a.xxy ^ vec3<u32>(var_1.a.x, var_1.a.x, 0u)) & (vec3<u32>(var_1.a.x, 0u, 1u) << (var_1.a.wwy % vec3<u32>(32u))), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.a.x, var_1.a.x, 111474u), vec3<u32>(var_1.a.x, var_1.a.x, 4294967295u)))));
    var var_4 = true;
    let var_5 = Struct_3(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(390f, vec3<bool>(true, false, true), Struct_4(Struct_2(var_2.yzw, var_3.x), 1i, Struct_1(-1124f, var_2.wxz), var_1.a, vec4<u32>(var_1.a.x, 23327u, 0u, 48407u)))) + 1f), _wgslsmith_f_op_f32(-200f - _wgslsmith_f_op_f32(-165f + 2232f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-717f * 812f), -468f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1143f, -190f) - -791f)))), 319f, !any(vec3<bool>(true, true, true)) | false);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, var_5.a.x);
}

