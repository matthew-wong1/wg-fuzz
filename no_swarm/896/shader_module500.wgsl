struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: bool,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec4<f32>, 10>;

var<private> global2: array<bool, 13> = array<bool, 13>(false, false, true, true, false, false, false, false, false, false, false, false, true);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_1) -> i32 {
    var var_0 = ~4745u;
    let var_1 = ~select(_wgslsmith_dot_vec4_u32(arg_2.a, select(max(vec4<u32>(arg_0.x, 26111u, 20657u, 1u), vec4<u32>(arg_0.x, 4294967295u, 1492u, 32834u)), _wgslsmith_add_vec4_u32(arg_2.a, arg_2.e), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 13u)], global2[_wgslsmith_index_u32(u_input.b, 13u)], false, false))), ~arg_0.x, !(arg_0.x >= _wgslsmith_div_u32(global0.x, global0.x)));
    global0 = arg_2.a.yy;
    var var_2 = !vec4<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.d.x * arg_2.d.x), _wgslsmith_f_op_f32(f32(-1f) * -513f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d.x - -865f)), any(vec3<bool>(global2[_wgslsmith_index_u32(~19654u, 13u)], global2[_wgslsmith_index_u32(~global0.x, 13u)], true)), arg_2.c, (~var_1 | ~arg_2.a.x) < 0u);
    return ~(abs(_wgslsmith_mult_i32(0i, arg_1)) | arg_1);
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> i32 {
    global1 = array<vec4<f32>, 10>();
    var var_0 = -(-_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 10257i, arg_1), vec3<i32>(arg_1, 1i, arg_1), vec3<i32>(arg_1, -21772i, -16086i)) & ~(vec3<i32>(arg_1, arg_1, arg_1) << (arg_0.a.wzw % vec3<u32>(32u)))) | max(-vec3<i32>(0i, arg_1 | arg_1, arg_1), -(min(vec3<i32>(arg_1, -2147483647i, 958i), vec3<i32>(1i, arg_1, -14101i)) << (min(vec3<u32>(u_input.b, global0.x, 21541u), arg_0.a.xzx) % vec3<u32>(32u))));
    let var_1 = arg_0;
    global1 = array<vec4<f32>, 10>();
    var var_2 = arg_0.b;
    return var_0.x;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> vec4<bool> {
    let var_0 = vec4<i32>(_wgslsmith_dot_vec3_i32(~(vec3<i32>(0i, 0i, -22027i) >> (arg_0.e.yyw % vec3<u32>(32u))) ^ _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -1i, -5945i), vec3<i32>(35719i, 28064i, -27763i)), vec3<i32>(1i, -1i, 801i)), _wgslsmith_add_vec3_i32(~max(vec3<i32>(0i, 0i, -52313i), vec3<i32>(-62887i, -4857i, 2147483647i)), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 1i, 1i), vec3<i32>(1i, 1i, 1i)))), func_4(arg_0, -_wgslsmith_mod_i32(i32(-1i) * -2147483647i, func_3(arg_0.a, -21625i, arg_0))), 31547i, 3727i);
    let var_1 = all(vec2<bool>(select(1u <= firstTrailingBit(25597u), true, all(arg_0.b) != (true & global2[_wgslsmith_index_u32(u_input.a.x, 13u)])), arg_0.b.x));
    let var_2 = -max(_wgslsmith_mod_vec3_i32(~(~vec3<i32>(var_0.x, 11109i, 0i)), vec3<i32>(2147483647i, var_0.x, abs(-2147483647i))), vec3<i32>(func_3(_wgslsmith_div_vec4_u32(arg_0.a, arg_0.e), 0i, Struct_1(arg_0.a, arg_0.b, true, arg_0.d, vec4<u32>(arg_0.e.x, 4294967295u, arg_0.a.x, global0.x))), _wgslsmith_add_i32(var_0.x, -var_0.x), select(var_0.x, var_0.x, var_1) ^ (var_0.x >> (9843u % 32u))));
    global2 = array<bool, 13>();
    let var_3 = global0.x;
    return vec4<bool>(var_1, all(select(!(!arg_0.b.zz), !arg_0.b.wz, ~var_2.x < (3654i ^ var_2.x))), false, arg_0.b.x);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global2 = array<bool, 13>();
    let var_0 = ~select(_wgslsmith_mult_i32(-12620i, _wgslsmith_dot_vec3_i32(vec3<i32>(1255i, 21458i, -16620i), vec3<i32>(-27811i, 46457i, -33388i))) << (~_wgslsmith_dot_vec4_u32(arg_0.e, arg_0.a) % 32u), 0i, !global2[_wgslsmith_index_u32(global0.x, 13u)]);
    let var_1 = ~vec4<u32>(u_input.b, 4294967295u << (u_input.a.x % 32u), 0u, arg_0.a.x);
    global1 = array<vec4<f32>, 10>();
    var var_2 = arg_0;
    return arg_0;
}

fn func_1() -> vec2<f32> {
    let var_0 = func_5(Struct_1(vec4<u32>(firstTrailingBit(40003u), global0.x, ~24887u, ~(u_input.b << (26023u % 32u))), !func_2(Struct_1(vec4<u32>(global0.x, 19590u, 0u, global0.x), vec4<bool>(false, false, true, true), false, vec3<f32>(226f, -1269f, 583f), vec4<u32>(9716u, global0.x, global0.x, 76086u)), _wgslsmith_f_op_f32(min(-462f, 486f))), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(203f, -992f, 1000f))), _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(u_input.b, 65323u, 0u, 0u)), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, global0.x)) >> (_wgslsmith_add_vec4_u32(select(vec4<u32>(1u, global0.x, 0u, global0.x), vec4<u32>(u_input.b, u_input.a.x, 20683u, global0.x), vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 13u)], global2[_wgslsmith_index_u32(4294967295u, 13u)], true)), min(vec4<u32>(global0.x, 4056u, 1606u, u_input.a.x), vec4<u32>(global0.x, 0u, global0.x, 80415u))) % vec4<u32>(32u))));
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec2_f32(var_0.d.zx + vec2<f32>(var_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-2113f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2586f * 1076f)))));
    global1 = array<vec4<f32>, 10>();
    var var_3 = 47659u;
    return vec2<f32>(-1294f, 860f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1()));
    var var_1 = func_5(func_5(Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, global0.x, 4294967295u, 19269u), vec4<u32>(4294967295u, 44273u, 29134u, 42277u)) >> (reverseBits(vec4<u32>(global0.x, global0.x, global0.x, global0.x)) % vec4<u32>(32u)), vec4<bool>(global2[_wgslsmith_index_u32(647u, 13u)], select(global2[_wgslsmith_index_u32(33303u, 13u)], false, false), false, func_2(Struct_1(vec4<u32>(global0.x, 23366u, global0.x, global0.x), vec4<bool>(false, false, true, global2[_wgslsmith_index_u32(0u, 13u)]), global2[_wgslsmith_index_u32(u_input.a.x, 13u)], vec3<f32>(var_0.x, -410f, var_0.x), vec4<u32>(4294967295u, global0.x, global0.x, global0.x)), -513f).x), global2[_wgslsmith_index_u32(global0.x, 13u)], vec3<f32>(_wgslsmith_div_f32(-167f, var_0.x), -1139f, _wgslsmith_div_f32(-1159f, var_0.x)), countOneBits(firstLeadingBit(vec4<u32>(21u, global0.x, 3035u, 43721u))))));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -162f, -758f) * var_1.d) - vec3<f32>(707f, -1632f, 790f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -1525f))), var_1.d), var_1.d);
    var var_3 = Struct_1(vec4<u32>(u_input.a.x, u_input.b, 96307u, 4294967295u), var_1.b, true, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(543f))), -1261f, 1f))), max(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(16480u, 76126u, var_1.a.x, var_1.e.x), ~vec4<u32>(19319u, 2900u, var_1.a.x, 4294967295u)), var_1.a, _wgslsmith_mod_vec4_u32(var_1.a, vec4<u32>(global0.x, global0.x, 26382u, 1u) >> (var_1.e % vec4<u32>(32u)))), vec4<u32>(global0.x, global0.x, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, var_1.a.x), vec2<u32>(1u, var_1.e.x))), ~(~45027u))));
    let var_4 = Struct_1(vec4<u32>(0u, 1u, _wgslsmith_dot_vec4_u32(abs(~var_1.e), vec4<u32>(_wgslsmith_sub_u32(58527u, u_input.b), firstLeadingBit(0u), _wgslsmith_clamp_u32(26525u, 0u, 0u), ~45445u)), abs(~0u) | ~var_3.a.x), vec4<bool>(false, true, all(func_5(func_5(Struct_1(vec4<u32>(4294967295u, var_1.e.x, u_input.b, 0u), var_3.b, var_3.c, var_3.d, var_1.a))).b.yxy), true), all(func_2(func_5(Struct_1(var_3.e, var_1.b, global2[_wgslsmith_index_u32(16009u, 13u)], var_1.d, vec4<u32>(global0.x, var_3.a.x, 4294967295u, global0.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_2.x) - _wgslsmith_f_op_f32(-1660f - var_2.x))).yx), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(var_1.d, vec3<f32>(-782f, _wgslsmith_f_op_f32(1194f * -1583f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec3<f32>(_wgslsmith_f_op_f32(trunc(var_2.x)), 688f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x - var_3.d.x)))))), _wgslsmith_mod_vec4_u32(var_1.a, abs(vec4<u32>(abs(global0.x), abs(67905u), func_5(Struct_1(var_3.e, var_3.b, global2[_wgslsmith_index_u32(var_1.a.x, 13u)], var_1.d, vec4<u32>(var_3.a.x, global0.x, var_3.e.x, global0.x))).a.x, ~u_input.a.x))));
    var var_5 = Struct_1(~select(firstLeadingBit(vec4<u32>(var_1.a.x, 4294967295u, global0.x, 4294967295u)), ~_wgslsmith_sub_vec4_u32(var_3.a, var_3.a), !all(var_4.b.wwy)), vec4<bool>(true | var_3.c, !func_5(func_5(var_4)).b.x, global2[_wgslsmith_index_u32(42723u ^ var_4.e.x, 13u)], _wgslsmith_dot_vec3_i32(select(vec3<i32>(2147483647i, 24879i, -13330i), vec3<i32>(0i, -78422i, -1i), false), reverseBits(vec3<i32>(-44996i, -1i, 2668i))) <= max(~0i, -34961i)), !(!(func_3(vec4<u32>(0u, 31905u, var_4.e.x, var_1.a.x), 12358i, var_4) != countOneBits(1i))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.x, -174f), _wgslsmith_f_op_f32(f32(-1f) * -779f)), _wgslsmith_f_op_f32(var_1.d.x - -686f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1()).x)) + vec3<f32>(var_1.d.x, _wgslsmith_f_op_f32(-var_0.x), 1f)), var_4.a);
    let var_6 = reverseBits(u_input.a.x ^ _wgslsmith_dot_vec4_u32(~select(vec4<u32>(var_3.e.x, 89292u, 1u, 4294967295u), vec4<u32>(52451u, var_3.a.x, 116350u, 50903u), false), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(var_1.e, vec4<u32>(u_input.a.x, 2545u, 51230u, var_4.a.x)), vec4<u32>(var_3.a.x, 62423u, u_input.b, 4294967295u) << (var_1.a % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, countOneBits(vec3<i32>(-2147483647i, 9729i, abs(~1i))), vec4<f32>(-289f, _wgslsmith_f_op_f32(sign(644f)), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.d.x))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(func_5(Struct_1(vec4<u32>(1u, global0.x, var_3.e.x, global0.x), var_3.b, global2[_wgslsmith_index_u32(0u, 13u)], var_3.d, var_4.a)).d)))));
}

