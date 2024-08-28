struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(-15294i, -4987i, -2164i, 2147483647i, 27958i, i32(-2147483648), 0i, 0i, 14439i, 1i, i32(-2147483648), 2147483647i, 2147483647i, 59264i, -11449i, i32(-2147483648), -18479i, 1i, -35320i, 15753i, -8554i, -50016i, 50696i, 2147483647i);

var<private> global1: bool = true;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3) -> bool {
    var var_0 = !arg_1.b.a;
    let var_1 = true;
    global0 = array<i32, 24>();
    let var_2 = Struct_3(arg_1.a, Struct_1(arg_1.a.b), arg_1.c);
    var var_3 = Struct_3(Struct_2(Struct_1(all(arg_0)), true), arg_1.a.a, -_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(12342i, 1868i, arg_1.c)), abs(vec3<i32>(0i, 6052i, var_2.c))));
    return arg_0.x;
}

fn func_2(arg_0: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(true), true);
    var var_1 = select(-_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(arg_0.x, 24u)]), 2147483647i), vec2<i32>(global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(arg_0.x, 24u)] >> (arg_0.x % 32u))), abs(max(~reverseBits(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 24u)], -2147483647i)), vec2<i32>(2043i, 0i) >> ((arg_0 | vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)))), vec2<bool>(var_0.a.a, func_3(!select(vec2<bool>(false, var_0.b), vec2<bool>(var_0.b, var_0.b), vec2<bool>(false, var_0.a.a)), Struct_3(Struct_2(var_0.a, true), var_0.a, -15558i))));
    global1 = true;
    var var_2 = Struct_3(var_0, var_0.a, 1i);
    var_2 = Struct_3(var_0, var_2.a.a, i32(-1i) * -1i);
    return var_0;
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> vec2<u32> {
    var var_0 = vec3<bool>(all(select(select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, false), arg_1), vec2<bool>(true, arg_1), !arg_1)) | any(vec4<bool>(arg_0.a.a, arg_1 == false, !arg_0.b, false)), select(_wgslsmith_add_u32(select(u_input.a, u_input.a, true), 89787u) > u_input.a, arg_1, any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), !vec3<bool>(false, arg_1, arg_0.b)))), any(!(!(!vec3<bool>(arg_0.a.a, arg_0.b, arg_0.b)))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(707f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-571f - 386f)))), 188f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1093f + -986f))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x * 1279f))), _wgslsmith_f_op_f32(ceil(var_1.x)), -1087f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))))));
    var var_2 = max(abs(_wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(-56687i, global0[_wgslsmith_index_u32(65384u, 24u)]) >> (vec2<u32>(u_input.a, 28682u) % vec2<u32>(32u))), abs(vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.a, 24u)])))), vec2<i32>(global0[_wgslsmith_index_u32(1u, 24u)], _wgslsmith_dot_vec2_i32(firstLeadingBit(abs(vec2<i32>(global0[_wgslsmith_index_u32(1u, 24u)], -1i))), reverseBits(reverseBits(vec2<i32>(-36070i, global0[_wgslsmith_index_u32(u_input.a, 24u)]))))));
    var_2 = ~firstLeadingBit(_wgslsmith_clamp_vec2_i32(-vec2<i32>(global0[_wgslsmith_index_u32(7476u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)]), firstTrailingBit(vec2<i32>(-14809i, 1i)), vec2<i32>(20133i, 55473i) ^ vec2<i32>(var_2.x, global0[_wgslsmith_index_u32(u_input.a, 24u)])) & _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_2.x, 0i), vec2<i32>(global0[_wgslsmith_index_u32(40910u, 24u)], var_2.x)), max(vec2<i32>(-58i, -4616i), vec2<i32>(-5306i, -1i)), min(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 24u)], var_2.x), vec2<i32>(var_2.x, global0[_wgslsmith_index_u32(u_input.a, 24u)]))));
    return _wgslsmith_mult_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(38603u, u_input.a, 1u), vec3<u32>(61364u, u_input.a, 1u) >> (vec3<u32>(u_input.a, u_input.a, 91293u) % vec3<u32>(32u))), reverseBits(u_input.a)), vec2<u32>(firstLeadingBit(_wgslsmith_add_u32(u_input.a, firstLeadingBit(u_input.a))), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.a | 33549u, 1u), 38095u, ~(~u_input.a))));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> vec3<f32> {
    var var_0 = (reverseBits(countOneBits(vec2<u32>(0u, 7939u)) >> (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))) ^ func_4(func_2(~vec2<u32>(u_input.a, u_input.a)), arg_0.a)) >> (vec2<u32>(_wgslsmith_mult_u32(4294967295u, u_input.a) & ~4489u, 39618u) % vec2<u32>(32u));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, 75918u << (~(~var_0.x) % 32u), ~(~525u)), abs(_wgslsmith_sub_vec3_u32(~vec3<u32>(6929u, var_0.x, var_0.x) & vec3<u32>(u_input.a, 33529u, 32082u), select(vec3<u32>(67107u, 4294967295u, u_input.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(44134u, 1u, 112263u), vec3<u32>(var_0.x, var_0.x, 5442u)), false)))), 24u)];
    global0 = array<i32, 24>();
    var_0 = abs(vec2<u32>(_wgslsmith_mod_u32(u_input.a, _wgslsmith_mod_u32(_wgslsmith_mult_u32(47877u, 82238u), u_input.a >> (u_input.a % 32u))), _wgslsmith_mod_u32(~1u, ~u_input.a << (4294967295u % 32u))));
    let var_2 = _wgslsmith_f_op_f32(224f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1)) - arg_1));
    return vec3<f32>(arg_1, _wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(f32(-1f) * -655f)), -1123f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 24>();
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_1(false), _wgslsmith_f_op_f32(f32(-1f) * -124f))) + vec3<f32>(_wgslsmith_div_f32(2042f, -1328f), _wgslsmith_f_op_f32(select(-282f, -348f, true)), _wgslsmith_f_op_f32(select(-805f, 375f, true)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1045f, -612f, _wgslsmith_f_op_f32(round(-526f))))));
    global0 = array<i32, 24>();
    global0 = array<i32, 24>();
    var var_1 = _wgslsmith_clamp_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 24u)], global0[_wgslsmith_index_u32(27796u, 24u)]), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 24u)], global0[_wgslsmith_index_u32(u_input.a, 24u)]), -vec2<i32>(1i, -34065i)), vec2<i32>(1i, _wgslsmith_mod_i32(~global0[_wgslsmith_index_u32(4294967295u, 24u)], -2147483647i)), vec2<i32>(-1i) * -(vec2<i32>(-15257i, 1i) >> (vec2<u32>(3648u, u_input.a) % vec2<u32>(32u)))) | _wgslsmith_mult_vec2_i32(abs(-(~vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 24u)], 2147483647i))), _wgslsmith_sub_vec2_i32(vec2<i32>(-24221i, ~global0[_wgslsmith_index_u32(30659u, 24u)]), ~_wgslsmith_mod_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(0u, 24u)], -1i), vec2<i32>(8347i, global0[_wgslsmith_index_u32(u_input.a, 24u)]))));
    var var_2 = Struct_3(func_2(_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a, u_input.a), vec2<u32>(2552u, u_input.a)), vec2<u32>(u_input.a, u_input.a))), func_2(abs(vec2<u32>(~u_input.a, ~39908u))).a, ~(-10735i));
    var var_3 = func_2(~func_4(func_2(~vec2<u32>(u_input.a, 59802u)), (var_1.x >= -1i) && (var_2.b.a || var_2.a.a.a))).a;
    var var_4 = Struct_1(var_2.a.b);
    let var_5 = func_2(vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(55312u, u_input.a), vec2<u32>(u_input.a, u_input.a)), ~vec2<u32>(46533u, 1u)), 1u) << (select(vec2<u32>(1u, func_4(var_2.a, true).x), ~func_4(var_2.a, false), select(select(vec2<bool>(true, var_3.a), vec2<bool>(var_4.a, var_2.a.a.a), vec2<bool>(true, var_4.a)), select(vec2<bool>(var_4.a, true), vec2<bool>(var_4.a, true), vec2<bool>(false, true)), vec2<bool>(false, false))) % vec2<u32>(32u))).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(floor(var_0.x)))), ~firstTrailingBit(u_input.a << (_wgslsmith_div_u32(u_input.a, u_input.a) % 32u)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -404f), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(11169u, 1u) & vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(0u, u_input.a)), ~(~vec2<u32>(u_input.a, u_input.a)) << (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(var_0.yx * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), 322f)))));
}

