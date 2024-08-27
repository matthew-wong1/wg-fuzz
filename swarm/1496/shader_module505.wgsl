struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

var<private> global1: array<i32, 13>;

var<private> global2: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(vec3<u32>(35150u, 21945u, 0u)), Struct_3(vec3<u32>(1u, 1139u, 64201u)), Struct_3(vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_3(vec3<u32>(972u, 8541u, 59402u)), Struct_3(vec3<u32>(1u, 4294967295u, 1u)), Struct_3(vec3<u32>(0u, 104688u, 4294967295u)), Struct_3(vec3<u32>(116728u, 1u, 1u)), Struct_3(vec3<u32>(136005u, 19734u, 101880u)), Struct_3(vec3<u32>(29644u, 4294967295u, 4294967295u)), Struct_3(vec3<u32>(0u, 4294967295u, 34783u)), Struct_3(vec3<u32>(0u, 12077u, 25759u)), Struct_3(vec3<u32>(1u, 18731u, 54508u)), Struct_3(vec3<u32>(23995u, 60731u, 1u)), Struct_3(vec3<u32>(0u, 46407u, 1u)), Struct_3(vec3<u32>(87260u, 49909u, 1u)), Struct_3(vec3<u32>(24937u, 0u, 6548u)), Struct_3(vec3<u32>(4294967295u, 17328u, 14190u)), Struct_3(vec3<u32>(4294967295u, 1u, 4294967295u)), Struct_3(vec3<u32>(4294967295u, 1u, 63309u)), Struct_3(vec3<u32>(4294967295u, 16044u, 1u)), Struct_3(vec3<u32>(65816u, 29405u, 47674u)), Struct_3(vec3<u32>(73352u, 0u, 0u)), Struct_3(vec3<u32>(85149u, 0u, 41632u)), Struct_3(vec3<u32>(4821u, 4294967295u, 0u)), Struct_3(vec3<u32>(14568u, 1423u, 4294967295u)), Struct_3(vec3<u32>(1u, 7696u, 1u)), Struct_3(vec3<u32>(7353u, 45588u, 33902u)), Struct_3(vec3<u32>(21616u, 11042u, 0u)), Struct_3(vec3<u32>(0u, 28169u, 51272u)), Struct_3(vec3<u32>(4294967295u, 26188u, 1u)), Struct_3(vec3<u32>(0u, 21254u, 0u)), Struct_3(vec3<u32>(785u, 39469u, 1u)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1() -> i32 {
    return firstLeadingBit(-(~firstLeadingBit(~0i)));
}

fn func_3() -> u32 {
    let var_0 = !(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)));
    global0 = array<i32, 5>();
    var var_1 = ~u_input.d.x ^ u_input.a.x;
    global2 = array<Struct_3, 32>();
    let var_2 = 1000f;
    return 1u;
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d.x >> (u_input.c.x % 32u), max(35062u, 0u)), firstLeadingBit(~u_input.c), _wgslsmith_sub_vec2_u32(u_input.a.xy, ~u_input.a.zz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -545f) * _wgslsmith_f_op_f32(step(-2546f, 1197f))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-203f, 742f))))), select(vec2<bool>(true, true), vec2<bool>(any(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), false), !(!select(vec2<bool>(false, false), vec2<bool>(true, false), false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1711f, -353f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(379f, 921f), vec2<f32>(1000f, -1514f), vec2<bool>(false, false))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-960f, 1000f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(430f, 160f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(266f, 1217f)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_div_u32(1u, u_input.c.x), ~1u, min(abs(u_input.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 0u, 43173u), vec3<u32>(3232u, 0u, 112518u))), _wgslsmith_sub_u32(~16255u, 41332u)), vec4<u32>(0u, 1u, 38129u, func_3() >> (max(u_input.d.x, 70238u) % 32u)), vec4<u32>(u_input.c.x, select(u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.a.x), vec2<u32>(84751u, u_input.d.x)), any(vec3<bool>(false, false, true))), select(func_3(), min(61118u, u_input.a.x), true), _wgslsmith_mult_u32(~u_input.d.x, ~1u))));
    global2 = array<Struct_3, 32>();
    let var_1 = -1080f;
    let var_2 = var_0.a;
    return select(!(!select(vec3<bool>(true, true, true), !vec3<bool>(true, true, var_0.b.x), var_2.b > var_2.b)), !(!(!(!vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)))), vec3<bool>(select(var_0.b.x, all(vec4<bool>(var_0.b.x, var_0.b.x, true, false)), false), var_0.b.x, all(vec3<bool>(true & var_0.b.x, var_0.b.x, global0[_wgslsmith_index_u32(21939u, 5u)] >= u_input.b.x))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: Struct_3) -> Struct_3 {
    return Struct_3(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(firstTrailingBit(u_input.d.x), _wgslsmith_add_u32(arg_2.x, 1u), 45856u), arg_2.x), u_input.c.x, ~(~(~arg_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(firstLeadingBit(~(~(~u_input.a))));
    var_0 = func_4(select(~(u_input.b >> (var_0.a % vec3<u32>(32u))), vec3<i32>(max(global1[_wgslsmith_index_u32(countOneBits(32158u), 13u)], global1[_wgslsmith_index_u32(14101u, 13u)] | 1i), ~(-2147483647i) & _wgslsmith_div_i32(global1[_wgslsmith_index_u32(u_input.d.x, 13u)], global0[_wgslsmith_index_u32(38555u, 5u)]), firstTrailingBit(func_1())), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), func_2(), true), vec3<bool>(true, true, true))), Struct_2(Struct_1(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.a.x, u_input.a.x), u_input.c, vec2<u32>(u_input.c.x, 0u)), var_0.a.xz), _wgslsmith_f_op_f32(min(1836f, 1069f))), vec2<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), false), _wgslsmith_f_op_vec2_f32(vec2<f32>(-933f, _wgslsmith_f_op_f32(abs(-385f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1476f, 1073f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(724f, 700f)))), ~(~vec4<u32>(u_input.d.x, u_input.c.x, 18679u, var_0.a.x))), ~_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_div_u32(10943u, var_0.a.x), var_0.a.x, ~28502u), u_input.a), Struct_3(_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(u_input.d.x, u_input.d.x, var_0.a.x)), vec3<u32>(var_0.a.x & 1u, ~var_0.a.x, func_3()), _wgslsmith_mod_vec3_u32(~var_0.a, reverseBits(vec3<u32>(var_0.a.x, u_input.d.x, 4294967295u))))));
    var_0 = global2[_wgslsmith_index_u32(countOneBits(var_0.a.x) | var_0.a.x, 32u)];
    var var_1 = ~_wgslsmith_mod_vec2_i32(vec2<i32>((global1[_wgslsmith_index_u32(1u, 13u)] << (u_input.a.x % 32u)) << (4294967295u % 32u), _wgslsmith_clamp_i32(~(-1i), 1i, i32(-1i) * -30583i)), _wgslsmith_mod_vec2_i32(~vec2<i32>(u_input.b.x, global1[_wgslsmith_index_u32(var_0.a.x, 13u)]), u_input.b.xz) << (~vec2<u32>(var_0.a.x, 87595u) % vec2<u32>(32u)));
    let var_2 = vec3<i32>(global1[_wgslsmith_index_u32(~0u, 13u)], ~u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_add_i32(firstLeadingBit(-2147483647i), global1[_wgslsmith_index_u32(u_input.a.x, 13u)] << (u_input.d.x % 32u)))) ^ vec3<i32>(7521i, min(~func_1(), ~(-u_input.b.x)), select(~firstLeadingBit(15910i), _wgslsmith_div_i32(_wgslsmith_clamp_i32(-10652i, -2147483647i, global0[_wgslsmith_index_u32(1u, 5u)]), u_input.b.x), true));
    let var_3 = func_4(-select(var_2, var_2, func_2().x), Struct_2(Struct_1(var_0.a.zx, 105f), !(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(321f * -875f), 697f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(542f, -263f))), ~max(vec4<u32>(u_input.a.x, 0u, u_input.d.x, u_input.d.x) | vec4<u32>(var_0.a.x, var_0.a.x, u_input.a.x, var_0.a.x), min(vec4<u32>(u_input.a.x, 47213u, 47713u, u_input.d.x), vec4<u32>(22361u, 1u, 70717u, 4294967295u)))), vec3<u32>(21297u, (u_input.d.x ^ u_input.d.x) ^ var_0.a.x, 4294967295u), func_4(_wgslsmith_mult_vec3_i32(u_input.b, u_input.b), Struct_2(Struct_1(~u_input.c, _wgslsmith_f_op_f32(1058f * 1616f)), func_2().zx, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2040f, 1080f)))), _wgslsmith_clamp_vec4_u32(vec4<u32>(42992u, 23647u, 4294967295u, 1u), select(vec4<u32>(var_0.a.x, u_input.a.x, u_input.d.x, u_input.c.x), vec4<u32>(var_0.a.x, u_input.c.x, var_0.a.x, var_0.a.x), vec4<bool>(true, false, false, false)), ~vec4<u32>(var_0.a.x, 1u, 41254u, 0u))), vec3<u32>(abs(var_0.a.x >> (4294967295u % 32u)), max(~4294967295u, 1u), ~u_input.d.x ^ (16207u | var_0.a.x)), func_4(~_wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, var_2.x), u_input.b), Struct_2(Struct_1(vec2<u32>(u_input.a.x, var_0.a.x), -770f), select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<f32>(-729f, -2179f), firstLeadingBit(vec4<u32>(var_0.a.x, 11922u, u_input.c.x, 4294967295u))), vec3<u32>(_wgslsmith_mod_u32(1u, u_input.c.x), var_0.a.x, u_input.c.x), func_4(vec3<i32>(1i, -40172i, var_2.x), Struct_2(Struct_1(vec2<u32>(0u, 48416u), 230f), vec2<bool>(false, true), vec2<f32>(826f, 506f), vec4<u32>(8910u, 98491u, 92128u, var_0.a.x)), ~vec3<u32>(u_input.a.x, 36537u, 234u), Struct_3(var_0.a)))));
    var var_4 = firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(firstLeadingBit(var_0.a.xx), vec2<u32>(31947u, var_3.a.x)), u_input.c.x), u_input.c.x));
    var var_5 = vec2<bool>(true, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1730f, -800f))))), -587f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-446f, -1488f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(621f, 570f))))));
}

