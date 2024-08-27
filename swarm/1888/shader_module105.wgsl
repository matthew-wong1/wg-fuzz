struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

var<private> global1: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(27302i, i32(-2147483648), 6702i), vec3<i32>(1i, 2147483647i, -1i), vec3<i32>(-2923i, 53147i, 0i), vec3<i32>(-20291i, -524i, -13376i), vec3<i32>(-4381i, -27516i, 0i));

var<private> global2: array<bool, 18>;

var<private> global3: array<bool, 8> = array<bool, 8>(true, false, false, true, false, false, true, true);

var<private> global4: Struct_4;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global4.d.x, -1316f, global4.d.x, global4.d.x), vec4<f32>(global4.d.x, global4.d.x, -526f, global4.d.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-422f, global4.d.x, -806f, -1803f) + vec4<f32>(-1643f, 1000f, 1032f, global4.d.x))))));
    let var_1 = Struct_1(1u);
    global2 = array<bool, 18>();
    let var_2 = Struct_3(reverseBits(0i), !vec2<bool>(false, global3[_wgslsmith_index_u32(var_1.a, 8u)]));
    var var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(-297f, 694f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.d.x))), global4.d.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(743f, 346f, -504f, -492f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(225f, -1000f, var_0.x, var_0.x)), vec4<f32>(_wgslsmith_f_op_f32(165f + 398f), _wgslsmith_f_op_f32(525f - -1000f), -233f, _wgslsmith_f_op_f32(min(global4.d.x, var_0.x))), vec4<bool>(var_2.b.x & true, true, -336f < global4.d.x, true))), vec4<bool>(false, any(vec3<bool>(global3[_wgslsmith_index_u32(global4.c.x, 8u)], true, global3[_wgslsmith_index_u32(global4.c.x, 8u)])) | all(vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.c, 8u)], var_2.b.x, global2[_wgslsmith_index_u32(15248u, 18u)])), all(vec2<bool>(var_2.b.x, true)), var_2.b.x))));
    return max(global4.c.xw, ~global4.c.zw);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: u32) -> vec4<i32> {
    let var_0 = !global3[_wgslsmith_index_u32(select((min(u_input.b.x, 26560u) << (~arg_2 % 32u)) | 69968u, ~_wgslsmith_dot_vec2_u32(global4.c.zw, abs(arg_1)), !(!global2[_wgslsmith_index_u32(global4.c.x, 18u)] || !global3[_wgslsmith_index_u32(1u, 8u)])), 8u)];
    global4 = Struct_4(-vec4<i32>(abs(66423i), u_input.d, u_input.d, (global4.a.x >> (52447u % 32u)) & _wgslsmith_sub_i32(global4.b, -2147483647i)), u_input.d, vec4<u32>(~max(0u, ~25952u), reverseBits(_wgslsmith_mult_u32(1u, 12138u) & global4.c.x), 0u, _wgslsmith_add_u32(~u_input.c, 1u) << (_wgslsmith_mod_u32(_wgslsmith_clamp_u32(arg_1.x, u_input.c, global4.c.x), arg_2) % 32u)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(global4.d, _wgslsmith_f_op_vec3_f32(floor(global4.d))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4.d)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.d.x, -802f, global4.d.x) * vec3<f32>(global4.d.x, global4.d.x, -672f)))))));
    var var_1 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(arg_1.x, global4.c.x), 1u) | 47811u, 1413u);
    var var_2 = -140f;
    var var_3 = 30480u;
    return vec4<i32>(-1i) * -(global4.a >> (select(global4.c << (global4.c % vec4<u32>(32u)), global4.c, vec4<bool>(var_0, arg_0.b.x, false, arg_0.b.x)) % vec4<u32>(32u)));
}

fn func_2() -> Struct_1 {
    global4 = Struct_4(_wgslsmith_mult_vec4_i32(vec4<i32>(-31560i, _wgslsmith_mod_i32(~(-1497i), 2147483647i), u_input.a.x, min(-2147483647i, -u_input.d)), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, global4.a.x, global4.b, global4.a.x), vec4<i32>(global4.a.x, 35027i, 2147483647i, global4.a.x)), global4.a)), _wgslsmith_mod_i32(~u_input.d, 0i), ~(~(~select(global4.c, global4.c, global3[_wgslsmith_index_u32(31903u, 8u)]))), vec3<f32>(_wgslsmith_f_op_f32(1000f + global4.d.x), _wgslsmith_f_op_f32(f32(-1f) * -288f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.d.x, global4.d.x) * 472f))));
    global3 = array<bool, 8>();
    global3 = array<bool, 8>();
    let var_0 = 81305u;
    var var_1 = func_4(Struct_3((-43991i ^ ~u_input.d) ^ abs(-global4.a.x), !select(!vec2<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 8u)], true), !vec2<bool>(global2[_wgslsmith_index_u32(17388u, 18u)], global3[_wgslsmith_index_u32(global4.c.x, 8u)]), !vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.c, 8u)]))), vec2<u32>(1u, 1u), _wgslsmith_dot_vec2_u32(func_3(), vec2<u32>(countOneBits(var_0), 4294967295u & global0[_wgslsmith_index_u32(u_input.c, 1u)])) | ~_wgslsmith_mod_u32(~1507u, 1u));
    return Struct_1(u_input.b.x);
}

fn func_1(arg_0: bool) -> Struct_2 {
    global2 = array<bool, 18>();
    global3 = array<bool, 8>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(737f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-154f * -1000f), -666f)))) - _wgslsmith_f_op_f32(f32(-1f) * -758f));
    global1 = array<vec3<i32>, 5>();
    global1 = array<vec3<i32>, 5>();
    return Struct_2(Struct_1(~(~(~global4.c.x))), 0u, func_2());
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2) -> Struct_4 {
    let var_0 = vec3<u32>(14091u, arg_1.b, ~0u);
    global3 = array<bool, 8>();
    var var_1 = global4.c.x;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-global4.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(global4.d.x)))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-504f))))));
    let var_3 = Struct_4(global4.a, ~u_input.d, global4.c, vec3<f32>(569f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(f32(-1f) * -177f)) * _wgslsmith_f_op_f32(var_2.x + var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2661f, global4.d.x)) + _wgslsmith_f_op_f32(select(323f, _wgslsmith_f_op_f32(f32(-1f) * -657f), all(vec3<bool>(true, false, arg_0.b.x)))))));
    return Struct_4(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(-var_3.a, var_3.a), abs(vec4<i32>(2147483647i, var_3.b, u_input.d, _wgslsmith_mod_i32(34432i, var_3.a.x)))), _wgslsmith_dot_vec2_i32(u_input.a, min(vec2<i32>(41673i ^ arg_0.a, _wgslsmith_mod_i32(-1i, -2147483647i)), firstTrailingBit(vec2<i32>(var_3.b, var_3.a.x)))), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(arg_1.a.a, 1u, 4294967295u, ~18057u)), countOneBits(select(~vec4<u32>(53051u, var_3.c.x, 0u, 21744u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, var_0.x, 4294967295u, arg_1.c.a), var_3.c), false && global3[_wgslsmith_index_u32(0u, 8u)]))), vec3<f32>(var_2.x, var_2.x, 340f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.d;
    var var_1 = func_5(Struct_3(i32(-1i) * -26950i, !vec2<bool>(global3[_wgslsmith_index_u32(19198u, 8u)] && global3[_wgslsmith_index_u32(4294967295u, 8u)], any(vec2<bool>(true, false)))), func_1(false));
    let var_2 = Struct_2(func_1(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(66006u, 1u)], 8u)]).a, func_3().x, Struct_1(1u ^ firstLeadingBit(var_1.c.x)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_1.d.x)), -531f, _wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(global4.d.x - global4.d.x)) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(407f, global4.d.x, global4.d.x, 1296f)), vec4<f32>(-679f, global4.d.x, global4.d.x, var_1.d.x)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.d.x, var_1.d.x, global4.d.x, -541f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-688f, global4.d.x, var_1.d.x, var_1.d.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global4.d.x, global4.d.x, -796f, -399f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, -379f, -1895f, var_1.d.x)), true)), _wgslsmith_f_op_f32(max(global4.d.x, global4.d.x)) < var_1.d.x))));
    let var_4 = Struct_4(~var_1.a, _wgslsmith_dot_vec3_i32(select(var_1.a.yyx, vec3<i32>(-61655i, var_0, var_0), global2[_wgslsmith_index_u32(reverseBits(125595u), 18u)]), ~(vec3<i32>(2147483647i, 25861i, -28439i) ^ vec3<i32>(var_1.b, global4.a.x, u_input.a.x))) << (1u % 32u), ~(~vec4<u32>(~global4.c.x, _wgslsmith_add_u32(75273u, global4.c.x), ~0u, ~4294967295u)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-var_1.d.x)), vec3<f32>(-451f, _wgslsmith_f_op_f32(f32(-1f) * -1236f), 374f))));
    var var_5 = select(vec4<bool>(global3[_wgslsmith_index_u32(var_2.c.a, 8u)], global3[_wgslsmith_index_u32(~global4.c.x ^ _wgslsmith_mod_u32(1u, 1u), 8u)], global3[_wgslsmith_index_u32(func_2().a, 8u)], true), select(select(vec4<bool>(false, global2[_wgslsmith_index_u32(1u << (1u % 32u), 18u)], global2[_wgslsmith_index_u32(var_1.c.x, 18u)] != global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 18u)], global3[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.b.x, 1u)], 8u)]), select(!vec4<bool>(true, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 8u)], global2[_wgslsmith_index_u32(68104u, 18u)], global3[_wgslsmith_index_u32(u_input.c, 8u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(77785u, 18u)], global2[_wgslsmith_index_u32(var_2.c.a, 18u)], false, true), vec4<bool>(global3[_wgslsmith_index_u32(var_4.c.x, 8u)], true, false, global2[_wgslsmith_index_u32(var_4.c.x, 18u)]), global3[_wgslsmith_index_u32(19206u, 8u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(2537u, 18u)], true, global3[_wgslsmith_index_u32(var_2.a.a, 8u)])), all(select(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 18u)]), vec2<bool>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.a.a, 1u)], 18u)], global3[_wgslsmith_index_u32(11116u, 8u)]), vec2<bool>(global2[_wgslsmith_index_u32(var_4.c.x, 18u)], global2[_wgslsmith_index_u32(43755u, 18u)])))), select(select(!vec4<bool>(true, false, false, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.c.x, 1u)], 18u)]), !vec4<bool>(true, global3[_wgslsmith_index_u32(0u, 8u)], false, global3[_wgslsmith_index_u32(global4.c.x, 8u)]), true), !vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 18u)], global2[_wgslsmith_index_u32(1u, 18u)], global2[_wgslsmith_index_u32(var_1.c.x, 18u)], false), vec4<bool>(global2[_wgslsmith_index_u32(~4294967295u, 18u)], any(vec3<bool>(global3[_wgslsmith_index_u32(342u, 8u)], global3[_wgslsmith_index_u32(47545u, 8u)], global3[_wgslsmith_index_u32(17610u, 8u)])), true, all(vec2<bool>(global2[_wgslsmith_index_u32(1u, 18u)], false)))), select(select(vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_1.c.x, 1u)], 18u)]), vec4<bool>(false, true, true, false), !vec4<bool>(global3[_wgslsmith_index_u32(0u, 8u)], true, true, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.c.a, 1u)], 8u)])), vec4<bool>(any(vec2<bool>(true, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 18u)])), true, !global2[_wgslsmith_index_u32(4294967295u, 18u)], !global3[_wgslsmith_index_u32(4294967295u, 8u)]), !select(vec4<bool>(true, global2[_wgslsmith_index_u32(32874u, 18u)], true, global2[_wgslsmith_index_u32(0u, 18u)]), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 18u)], true, global2[_wgslsmith_index_u32(1u, 18u)], global2[_wgslsmith_index_u32(41344u, 18u)]), vec4<bool>(global3[_wgslsmith_index_u32(var_1.c.x, 8u)], global2[_wgslsmith_index_u32(u_input.b.x, 18u)], true, true)))), select(!select(vec4<bool>(global3[_wgslsmith_index_u32(1u, 8u)], false, global3[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(104776u, 18u)]), select(vec4<bool>(true, global3[_wgslsmith_index_u32(86811u, 8u)], global3[_wgslsmith_index_u32(0u, 8u)], global3[_wgslsmith_index_u32(1u, 8u)]), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 8u)], false, global2[_wgslsmith_index_u32(23888u, 18u)], true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 18u)], true, true, true)), !vec4<bool>(false, global3[_wgslsmith_index_u32(var_4.c.x, 8u)], false, false)), vec4<bool>(any(!vec2<bool>(global2[_wgslsmith_index_u32(var_2.b, 18u)], global2[_wgslsmith_index_u32(1u, 18u)])), false, true, global2[_wgslsmith_index_u32(12994u, 18u)]), select(!vec4<bool>(true, global3[_wgslsmith_index_u32(global4.c.x, 8u)], global2[_wgslsmith_index_u32(var_1.c.x, 18u)], global2[_wgslsmith_index_u32(16209u, 18u)]), vec4<bool>(u_input.b.x <= 52060u, any(vec2<bool>(false, true)), global3[_wgslsmith_index_u32(select(63846u, var_2.c.a, false), 8u)], global2[_wgslsmith_index_u32(global4.c.x, 18u)]), vec4<bool>(global4.a.x >= var_0, global3[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(~var_2.c.a, 18u)], true))));
    global4 = func_5(Struct_3(~reverseBits(reverseBits(2147483647i)), vec2<bool>(!var_5.x, !var_5.x)), var_2);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(~(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -12323i, var_0), vec3<i32>(-24191i, u_input.d, u_input.d)))), u_input.a);
}

