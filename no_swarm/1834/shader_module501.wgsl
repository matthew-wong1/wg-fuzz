struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(true, vec3<u32>(0u, 1u, 31657u), vec2<bool>(false, true), vec4<u32>(4294967295u, 13390u, 1u, 0u), 25890i), Struct_1(false, vec3<u32>(11992u, 4294967295u, 1u), vec2<bool>(true, false), vec4<u32>(73756u, 4294967295u, 112269u, 11619u), -1i), Struct_1(true, vec3<u32>(4294967295u, 34400u, 63349u), vec2<bool>(false, false), vec4<u32>(7391u, 1u, 0u, 1u), 0i), Struct_1(true, vec3<u32>(66877u, 0u, 34535u), vec2<bool>(true, true), vec4<u32>(4294967295u, 4294967295u, 53242u, 17173u), 1i), Struct_1(true, vec3<u32>(49630u, 0u, 72740u), vec2<bool>(true, false), vec4<u32>(815u, 6688u, 4489u, 4294967295u), -63576i), Struct_1(false, vec3<u32>(4294967295u, 9105u, 0u), vec2<bool>(true, true), vec4<u32>(79446u, 65627u, 33277u, 4294967295u), -6414i), Struct_1(false, vec3<u32>(63427u, 18809u, 1u), vec2<bool>(false, true), vec4<u32>(17941u, 92833u, 4294967295u, 4294967295u), -26703i), Struct_1(true, vec3<u32>(4294967295u, 1u, 1u), vec2<bool>(false, false), vec4<u32>(43616u, 99614u, 0u, 52022u), 0i), Struct_1(false, vec3<u32>(4520u, 40267u, 0u), vec2<bool>(true, true), vec4<u32>(1u, 0u, 50651u, 1u), 13296i), Struct_1(true, vec3<u32>(1u, 55985u, 53567u), vec2<bool>(true, true), vec4<u32>(26673u, 4294967295u, 40478u, 4294967295u), 0i), Struct_1(false, vec3<u32>(0u, 0u, 62513u), vec2<bool>(false, true), vec4<u32>(18429u, 1718u, 4294967295u, 3382u), 0i), Struct_1(true, vec3<u32>(0u, 15632u, 1u), vec2<bool>(true, true), vec4<u32>(4294967295u, 4294967295u, 7802u, 1u), 0i), Struct_1(true, vec3<u32>(33992u, 29620u, 3488u), vec2<bool>(true, false), vec4<u32>(22099u, 81409u, 0u, 0u), 2147483647i), Struct_1(false, vec3<u32>(4294967295u, 9798u, 81553u), vec2<bool>(true, true), vec4<u32>(1u, 36510u, 29528u, 1u), -5072i), Struct_1(true, vec3<u32>(4294967295u, 29315u, 4294967295u), vec2<bool>(false, false), vec4<u32>(0u, 4294967295u, 4294967295u, 50202u), 0i), Struct_1(true, vec3<u32>(12591u, 0u, 0u), vec2<bool>(false, false), vec4<u32>(4294967295u, 1u, 127u, 106970u), -6409i));

var<private> global1: array<Struct_1, 20>;

var<private> global2: f32;

var<private> global3: u32;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    let var_0 = (u_input.b >> (vec4<u32>(20573u, _wgslsmith_clamp_u32(4294967295u, u_input.d, firstLeadingBit(u_input.d)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 0u, 17718u), u_input.e & u_input.e), ~_wgslsmith_add_u32(52474u, u_input.d)) % vec4<u32>(32u))) >> (~_wgslsmith_sub_vec4_u32(countOneBits(~vec4<u32>(u_input.d, 44038u, u_input.e.x, 3491u)), ~vec4<u32>(u_input.d, u_input.e.x, u_input.d, 26259u)) % vec4<u32>(32u));
    global1 = array<Struct_1, 20>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(776f - 542f), _wgslsmith_f_op_f32(step(-1000f, -705f)))))) <= _wgslsmith_f_op_f32(select(538f, -569f, false)), _wgslsmith_mod_vec3_u32(vec3<u32>(43610u, _wgslsmith_sub_u32(~u_input.d, 0u), 0u >> (_wgslsmith_mult_u32(u_input.e.x, u_input.e.x) % 32u)), vec3<u32>(0u, _wgslsmith_add_u32(u_input.e.x, u_input.d), u_input.e.x) << (u_input.e % vec3<u32>(32u))), !(!select(select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true))), select(abs(max(min(vec4<u32>(11363u, u_input.d, 34733u, u_input.e.x), vec4<u32>(3558u, 1u, u_input.e.x, 4294967295u)), countOneBits(vec4<u32>(u_input.e.x, u_input.d, u_input.e.x, u_input.e.x)))), ~(~vec4<u32>(u_input.e.x, u_input.d, 4294967295u, 4294967295u)), vec4<bool>(false, false, true, false)), u_input.c.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-2053f, -240f)))))) * _wgslsmith_f_op_f32(floor(2162f)));
    let var_3 = _wgslsmith_add_vec4_u32(min(vec4<u32>(u_input.e.x, var_1.d.x, u_input.e.x << (u_input.d % 32u), max(var_1.d.x, reverseBits(27445u))), var_1.d), vec4<u32>(abs(~19226u), 4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, var_1.b.x, u_input.e.x), ~var_1.d.yyx), vec3<u32>(var_1.d.x, abs(57127u), _wgslsmith_add_u32(u_input.e.x, u_input.d))), ~_wgslsmith_mult_u32(u_input.d, var_1.b.x) >> (var_1.b.x % 32u)));
    return _wgslsmith_mod_i32(reverseBits(~var_1.e >> (_wgslsmith_sub_u32(78168u, ~4294967295u) % 32u)), var_1.e);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(!any(vec3<bool>(true, select(false, false, false), true)), vec3<u32>(reverseBits(~1u), ~_wgslsmith_div_u32(u_input.d, 1u), ~1u), vec2<bool>(false, true), vec4<u32>(u_input.d, 1u, 15351u, reverseBits(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.e.x, 1u, 0u), u_input.d))), _wgslsmith_mod_i32(firstTrailingBit(-2147483647i) << (u_input.d % 32u), func_3()));
    let var_1 = var_0;
    var var_2 = global0[_wgslsmith_index_u32(u_input.d, 16u)];
    let var_3 = _wgslsmith_dot_vec4_i32(u_input.b, -_wgslsmith_sub_vec4_i32(-vec4<i32>(-6619i, 1i, 55063i, 2147483647i), u_input.b << (var_1.d % vec4<u32>(32u)))) << (_wgslsmith_mod_u32(_wgslsmith_sub_u32(15364u, 1u), var_2.b.x) % 32u);
    var var_4 = var_1;
    return Struct_1(1u >= ~_wgslsmith_mult_u32(min(u_input.d, 0u), var_1.d.x), u_input.e, !(!select(!var_4.c, select(var_0.c, var_2.c, vec2<bool>(false, false)), vec2<bool>(var_1.a, true))), countOneBits(var_2.d), var_2.e);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool, arg_3: f32) -> f32 {
    var var_0 = func_2();
    var var_1 = arg_0;
    var_1 = arg_0;
    var var_2 = arg_1.xw;
    let var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.b.xzy, vec3<i32>(-arg_0.e, ~var_1.e, -15903i)), _wgslsmith_sub_i32(-func_3(), _wgslsmith_mult_i32(var_1.e >> (var_1.d.x % 32u), u_input.c.x)), var_0.e), _wgslsmith_mult_vec3_i32(vec3<i32>(-15449i, 38338i, 1i), vec3<i32>(abs(-1i), var_1.e, -96911i)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-858f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(204f)), _wgslsmith_f_op_f32(min(var_2.x, 161f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-483f, -950f, _wgslsmith_f_op_f32(func_1(Struct_1(true, u_input.e, vec2<bool>(true, true), vec4<u32>(u_input.d, u_input.d, 1u, u_input.d), 1i), vec4<f32>(707f, -734f, 1000f, 459f), true, -943f)), -2456f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1365f, -861f, -316f, -320f)) + vec4<f32>(891f, 608f, -1122f, 261f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1103f, -950f, 673f, 315f)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(922f, 1090f, 568f, -100f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-414f, -585f, -1097f, -953f) + vec4<f32>(1000f, -504f, 1631f, -508f)))), vec4<f32>(_wgslsmith_div_f32(-411f, -937f), _wgslsmith_f_op_f32(-104f - -1000f), _wgslsmith_f_op_f32(sign(666f)), _wgslsmith_f_op_f32(ceil(462f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(559f, 635f, -1489f, 564f) + vec4<f32>(-1000f, -222f, 1000f, -587f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(972f, 1000f, 895f, -1222f))))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<f32>(var_1.x, 972f, -749f, var_1.x), false)))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, var_1.x, 200f, -806f)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, var_1.x, -2525f, var_1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)))), 1f <= _wgslsmith_f_op_f32(1000f - var_1.x)))));
    var_0 = abs(-2147483647i) < _wgslsmith_sub_i32(~(u_input.b.x & select(1i, u_input.c.x, true)), reverseBits(i32(-1i) * -52385i));
    var var_2 = global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_sub_u32(func_2().b.x ^ 1u, u_input.d)), 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x);
}

