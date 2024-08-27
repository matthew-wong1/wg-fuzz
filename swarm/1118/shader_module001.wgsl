struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_3,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12> = array<i32, 12>(-1i, -1i, 21658i, 2147483647i, 40496i, i32(-2147483648), -45917i, -6056i, -1i, 33780i, 22568i, -31248i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: f32) -> vec2<bool> {
    var var_0 = arg_1;
    var var_1 = select(firstTrailingBit(25108i) > -arg_0, false, all(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    global0 = array<i32, 12>();
    let var_2 = vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), 4294967295u) << (~abs(25039u) % 32u), u_input.b | ~u_input.a.x);
    var var_3 = Struct_4(-216f, any(vec4<bool>(true, true, true, true)), Struct_3(false, 1106f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -112f) - _wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(687f, arg_2, arg_2, 283f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-184f, arg_2, -777f, -1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2, 179f, 138f, arg_2), vec4<f32>(arg_2, arg_2, arg_2, -1752f), false)))))));
    return select(!vec2<bool>(true, !all(vec3<bool>(var_3.c.b, true, var_3.b))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, var_3.c.b), select(vec2<bool>(var_3.c.b, var_3.b), vec2<bool>(false, var_3.c.a), true)), true), !var_3.b & any(select(vec3<bool>(var_3.b, true, var_3.b), !vec3<bool>(var_3.b, true, false), !var_3.c.a)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: f32, arg_3: vec2<bool>) -> bool {
    let var_0 = arg_3.x;
    var var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(min(vec3<u32>(u_input.a.x, 2392u, u_input.a.x), vec3<u32>(47651u, u_input.a.x, u_input.b)), vec3<u32>(u_input.b, u_input.a.x, 46497u)), ~vec3<u32>(u_input.b, 1u, u_input.b)) | countOneBits(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, u_input.b, 1u)), vec3<u32>(u_input.b, u_input.a.x, u_input.a.x), ~vec3<u32>(0u, 104718u, 4294967295u))), _wgslsmith_mod_vec3_u32(vec3<u32>(select(~48065u, reverseBits(0u), arg_3.x), _wgslsmith_mult_u32(u_input.a.x, u_input.b), _wgslsmith_dot_vec2_u32(u_input.a, _wgslsmith_sub_vec2_u32(u_input.a, u_input.a))), _wgslsmith_mod_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 28761u, 4294967295u), vec3<u32>(u_input.a.x, u_input.b, u_input.b)), vec3<u32>(_wgslsmith_mult_u32(u_input.b, 1u), _wgslsmith_mult_u32(u_input.a.x, 1u), 24267u))));
    var_1 = 48530u;
    var var_2 = select(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(0u, select(4294967295u, 4294967295u, true)), ~max(u_input.b, u_input.b), ~67615u), 12u)], _wgslsmith_div_i32(min(~(-17761i), -3226i), max(arg_1.x, -2147483647i & arg_1.x)), any(vec2<bool>(u_input.a.x >= u_input.a.x, any(vec3<bool>(true, var_0, arg_3.x))))) | 1i;
    var_1 = u_input.b;
    return var_0 | arg_3.x;
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: u32, arg_3: Struct_1) -> bool {
    var var_0 = Struct_3(!(!arg_3.a), func_4(vec2<i32>(arg_3.b.x, _wgslsmith_add_i32(-arg_3.b.x, global0[_wgslsmith_index_u32(u_input.b, 12u)] << (4294967295u % 32u))), vec2<i32>(~_wgslsmith_div_i32(-10687i, global0[_wgslsmith_index_u32(u_input.b, 12u)]), -1i), _wgslsmith_f_op_f32(-arg_1.a), func_3(-345i, -countOneBits(global0[_wgslsmith_index_u32(33910u, 12u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1196f + 938f) + arg_0))));
    var_0 = arg_1.c;
    let var_1 = Struct_2(arg_3, arg_3, arg_3, _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_3.d, ~_wgslsmith_clamp_vec3_u32(arg_3.d, arg_3.d, vec3<u32>(arg_2, arg_2, 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(3694u, arg_3.d.x, 0u), ~vec3<u32>(1u, arg_3.d.x, arg_2))), countOneBits(vec3<u32>(arg_2, 17333u, u_input.a.x))), vec2<u32>(arg_3.d.x, ~(~(~32599u))));
    let var_2 = ~global0[_wgslsmith_index_u32(~arg_2, 12u)];
    var var_3 = arg_3.b.xz;
    return true;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec3<u32>) -> Struct_3 {
    let var_0 = select(func_3(-66914i, global0[_wgslsmith_index_u32(arg_3.x, 12u)], arg_2.a), vec2<bool>(false, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(643f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a + -1399f) - _wgslsmith_f_op_f32(arg_2.d.x - 890f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) + 506f));
    var var_1 = true;
    var_1 = 46338u > countOneBits(arg_3.x);
    return Struct_3(_wgslsmith_f_op_f32(ceil(-1114f)) != 468f, arg_0 & arg_0);
}

fn func_6(arg_0: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(2013f, 273f), 1000f));
    global0 = array<i32, 12>();
    let var_1 = vec3<bool>(true, arg_0.a, arg_0.b);
    var var_2 = 17208i;
    var var_3 = _wgslsmith_add_vec4_u32(vec4<u32>(~(~(u_input.b << (4294967295u % 32u))), u_input.b, ~(~(4294967295u << (u_input.b % 32u))), _wgslsmith_mod_u32(reverseBits(u_input.a.x << (u_input.b % 32u)), u_input.a.x)), _wgslsmith_div_vec4_u32(~min(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.a.x, 4294967295u, u_input.b, 4294967295u)), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 757u, 10921u, u_input.b), vec4<u32>(u_input.a.x, u_input.a.x, u_input.b, 6022u)), vec4<u32>(0u, 33911u, 25977u, 19405u))) << (vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 29718u), vec2<u32>(4294967295u, u_input.b)), ~4294967295u, 1u, 0u) % vec4<u32>(32u)));
    return Struct_2(Struct_1(false, countOneBits(-_wgslsmith_div_vec4_i32(vec4<i32>(-5660i, -7897i, -31271i, global0[_wgslsmith_index_u32(var_3.x, 12u)]), vec4<i32>(0i, global0[_wgslsmith_index_u32(0u, 12u)], 20420i, global0[_wgslsmith_index_u32(5325u, 12u)]))), vec3<i32>(-2027i, ~global0[_wgslsmith_index_u32(~89701u, 12u)], 0i), abs(var_3.wzw)), Struct_1(true, (_wgslsmith_mult_vec4_i32(vec4<i32>(-47370i, -42305i, -32331i, -1364i), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(var_3.x, 12u)], 1103i, -1i)) << (~vec4<u32>(var_3.x, u_input.a.x, 0u, u_input.b) % vec4<u32>(32u))) >> (vec4<u32>(0u, var_3.x, ~var_3.x, u_input.b) % vec4<u32>(32u)), firstTrailingBit(countOneBits(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], 1i, global0[_wgslsmith_index_u32(u_input.b, 12u)]))), ~(var_3.xww >> (countOneBits(vec3<u32>(1u, 0u, u_input.a.x)) % vec3<u32>(32u)))), Struct_1(any(var_1), vec4<i32>(_wgslsmith_div_i32(-7015i, -global0[_wgslsmith_index_u32(u_input.b, 12u)]), -81863i, reverseBits(~(-27469i)), (global0[_wgslsmith_index_u32(7629u, 12u)] ^ -25435i) | 0i), abs(max(vec3<i32>(global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(var_3.x, 12u)], global0[_wgslsmith_index_u32(var_3.x, 12u)]), vec3<i32>(-22005i, -13816i, global0[_wgslsmith_index_u32(var_3.x, 12u)]))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(49509u, 4294967295u, var_3.x), _wgslsmith_mult_vec3_u32(var_3.xzw, vec3<u32>(u_input.b, 21458u, 4294967295u)), var_3.xyx ^ vec3<u32>(u_input.b, 1u, 86314u))), var_3.wxz, vec2<u32>(var_3.x, ~52867u));
}

fn func_7(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(!select(!any(vec3<bool>(arg_0, false, arg_1.b.a)), true, false), _wgslsmith_mult_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(~(~arg_1.e.x), 12u)], 53245i, arg_1.a.b.x, ~_wgslsmith_dot_vec3_i32(arg_2.c, vec3<i32>(-2147483647i, arg_1.c.c.x, arg_2.c.x))), countOneBits(countOneBits(-arg_1.b.b))), arg_2.c | vec3<i32>(arg_2.b.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(global0[_wgslsmith_index_u32(arg_1.c.d.x, 12u)], global0[_wgslsmith_index_u32(35260u, 12u)])), _wgslsmith_dot_vec3_i32(arg_2.c, arg_1.b.c)), _wgslsmith_mult_i32(-arg_2.b.x, -87446i)), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(arg_2.d, min(vec3<u32>(arg_1.c.d.x, 4294967295u, 8483u), vec3<u32>(46353u, arg_1.c.d.x, 60191u))), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.a.d.x << (arg_1.e.x % 32u), 1u, countOneBits(arg_2.d.x)), arg_2.d), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.d.x, 32902u, min(41775u, 13243u)), ~func_6(Struct_3(arg_1.a.a, true)).a.d, vec3<u32>(arg_2.d.x & 0u, ~1u, arg_2.d.x))));
    let var_1 = arg_1.a.b.zxy;
    let var_2 = -729f;
    global0 = array<i32, 12>();
    global0 = array<i32, 12>();
    return arg_2;
}

fn func_1(arg_0: f32) -> vec4<f32> {
    var var_0 = Struct_2(func_7(!select(true, true, true), func_6(func_5(func_2(arg_0, Struct_4(-1086f, false, Struct_3(false, true), vec4<f32>(arg_0, -1235f, 686f, 1075f)), 0u, Struct_1(false, vec4<i32>(global0[_wgslsmith_index_u32(16700u, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)]), vec3<i32>(global0[_wgslsmith_index_u32(13368u, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)], global0[_wgslsmith_index_u32(30236u, 12u)]), vec3<u32>(1u, u_input.b, 16377u))), Struct_1(true, vec4<i32>(global0[_wgslsmith_index_u32(0u, 12u)], -1i, 0i, -2147483647i), vec3<i32>(global0[_wgslsmith_index_u32(65189u, 12u)], 2147483647i, 8745i), vec3<u32>(u_input.a.x, 4294967295u, 0u)), Struct_4(arg_0, false, Struct_3(false, false), vec4<f32>(496f, 1444f, 1022f, arg_0)), _wgslsmith_mod_vec3_u32(vec3<u32>(79765u, 8341u, u_input.b), vec3<u32>(u_input.b, u_input.a.x, u_input.b)))), func_6(func_5(false, Struct_1(false, vec4<i32>(28508i, global0[_wgslsmith_index_u32(u_input.a.x, 12u)], global0[_wgslsmith_index_u32(0u, 12u)], 2147483647i), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], -81754i, global0[_wgslsmith_index_u32(45247u, 12u)]), vec3<u32>(u_input.b, u_input.b, 61712u)), Struct_4(arg_0, false, Struct_3(true, true), vec4<f32>(-1104f, arg_0, -1011f, -1533f)), vec3<u32>(u_input.b, u_input.a.x, 12495u))).c), Struct_1(true, ~vec4<i32>(global0[_wgslsmith_index_u32(abs(u_input.b), 12u)], 2147483647i & global0[_wgslsmith_index_u32(u_input.b, 12u)], abs(0i), firstTrailingBit(global0[_wgslsmith_index_u32(18065u, 12u)])), func_6(func_5(false, func_6(Struct_3(false, true)).b, Struct_4(arg_0, false, Struct_3(true, false), vec4<f32>(1000f, -310f, arg_0, arg_0)), vec3<u32>(u_input.a.x, 96740u, 37420u) >> (vec3<u32>(32153u, u_input.a.x, 26869u) % vec3<u32>(32u)))).a.b.wzy, vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(13553u, 1u, 0u), vec3<u32>(1u, 90302u, 0u)), _wgslsmith_mod_u32(u_input.b, u_input.b)), _wgslsmith_sub_u32(~4294967295u, ~u_input.a.x), u_input.a.x)), func_6(func_5(func_6(Struct_3(true, true)).c.c.x >= firstLeadingBit(global0[_wgslsmith_index_u32(u_input.a.x, 12u)]), func_6(Struct_3(true, false)).c, Struct_4(1164f, select(false, false, false), func_5(false, Struct_1(true, vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)], 70471i), vec3<i32>(0i, global0[_wgslsmith_index_u32(u_input.b, 12u)], -426i), vec3<u32>(0u, u_input.b, u_input.b)), Struct_4(arg_0, true, Struct_3(false, false), vec4<f32>(327f, 1860f, arg_0, arg_0)), vec3<u32>(541u, 1u, 26751u)), vec4<f32>(832f, -255f, arg_0, -849f)), select(~vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<u32>(0u, u_input.a.x, 0u), true))).a, ~(~(~select(vec3<u32>(u_input.a.x, 0u, 1u), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), vec3<bool>(true, false, false)))), u_input.a);
    var_0 = Struct_2(Struct_1(var_0.c.a, -var_0.a.b, var_0.a.b.xzy, countOneBits(vec3<u32>(63004u, ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.d.x, 1u, 4294967295u), vec4<u32>(0u, 4294967295u, u_input.a.x, var_0.d.x))))), var_0.b, func_7(!func_3(i32(-1i) * -17724i, abs(-10570i), arg_0).x, func_6(Struct_3(var_0.b.a, var_0.b.a)), Struct_1(func_3(var_0.a.b.x, -5165i, -745f).x | true, ~reverseBits(vec4<i32>(-4914i, -11910i, 0i, -61412i)), vec3<i32>(select(8868i, -21004i, var_0.a.a), -23263i & var_0.b.b.x, _wgslsmith_sub_i32(var_0.a.c.x, -18886i)), var_0.a.d)), ~var_0.b.d, (firstTrailingBit(var_0.c.d.yz) >> (~(u_input.a >> (vec2<u32>(0u, 57067u) % vec2<u32>(32u))) % vec2<u32>(32u))) & (_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 0u), var_0.a.d.xy), ~vec2<u32>(var_0.a.d.x, 66046u)) << (vec2<u32>(select(u_input.a.x, u_input.b, true), 2282u) % vec2<u32>(32u))));
    global0 = array<i32, 12>();
    global0 = array<i32, 12>();
    var_0 = Struct_2(func_7(!var_0.c.a, func_6(Struct_3(any(vec3<bool>(var_0.c.a, var_0.a.a, var_0.b.a)), var_0.b.a)), func_7(any(func_3(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)], -1442f)), Struct_2(func_7(var_0.c.a, Struct_2(Struct_1(var_0.b.a, vec4<i32>(1i, 2147483647i, global0[_wgslsmith_index_u32(0u, 12u)], -21047i), var_0.a.b.zzz, vec3<u32>(u_input.b, 52044u, u_input.a.x)), var_0.b, Struct_1(var_0.b.a, vec4<i32>(54046i, var_0.c.c.x, -2147483647i, var_0.b.b.x), vec3<i32>(-2147483647i, -2922i, var_0.c.b.x), vec3<u32>(4294967295u, 28837u, 61073u)), var_0.d, vec2<u32>(u_input.b, u_input.b)), Struct_1(false, var_0.a.b, vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], 2147483647i, -2147483647i), vec3<u32>(u_input.a.x, 4294967295u, var_0.e.x))), func_6(Struct_3(false, var_0.a.a)).a, func_7(var_0.a.a, Struct_2(Struct_1(true, var_0.b.b, vec3<i32>(var_0.c.c.x, -20216i, 31024i), vec3<u32>(50708u, 4294967295u, var_0.e.x)), Struct_1(false, vec4<i32>(-1i, 12124i, global0[_wgslsmith_index_u32(1u, 12u)], -34482i), vec3<i32>(-1i, -2147483647i, global0[_wgslsmith_index_u32(116536u, 12u)]), vec3<u32>(u_input.a.x, 4294967295u, 25361u)), Struct_1(var_0.a.a, var_0.a.b, var_0.b.c, vec3<u32>(u_input.b, 112295u, 113898u)), var_0.b.d, vec2<u32>(4294967295u, 0u)), var_0.c), abs(vec3<u32>(59652u, var_0.c.d.x, 1u)), _wgslsmith_mult_vec2_u32(var_0.d.xz, vec2<u32>(0u, 30353u))), var_0.b)), func_6(func_5(!func_4(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], -1i), vec2<i32>(global0[_wgslsmith_index_u32(72610u, 12u)], 8479i), 297f, vec2<bool>(var_0.c.a, var_0.a.a)), var_0.a, Struct_4(_wgslsmith_f_op_f32(floor(arg_0)), u_input.b >= 0u, func_5(var_0.c.a, Struct_1(false, var_0.c.b, vec3<i32>(-1i, global0[_wgslsmith_index_u32(3744u, 12u)], -4486i), vec3<u32>(20132u, 32780u, 0u)), Struct_4(-385f, var_0.b.a, Struct_3(var_0.c.a, var_0.c.a), vec4<f32>(-370f, 628f, -735f, arg_0)), vec3<u32>(var_0.e.x, var_0.e.x, u_input.a.x)), vec4<f32>(arg_0, arg_0, 1165f, arg_0)), _wgslsmith_div_vec3_u32(var_0.d, ~vec3<u32>(u_input.a.x, var_0.b.d.x, 4294967295u)))).b, var_0.b, _wgslsmith_mult_vec3_u32(abs(_wgslsmith_div_vec3_u32(~vec3<u32>(40230u, u_input.a.x, 56498u), vec3<u32>(39073u, u_input.b, var_0.a.d.x) ^ vec3<u32>(0u, u_input.a.x, var_0.c.d.x))), ~vec3<u32>(_wgslsmith_mod_u32(4294967295u, var_0.b.d.x), _wgslsmith_sub_u32(1u, var_0.b.d.x), func_6(Struct_3(true, false)).a.d.x)), firstTrailingBit(var_0.b.d.zy));
    return vec4<f32>(arg_0, arg_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * 361f) + 2227f), -1126f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) * 1000f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) - -1203f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) - _wgslsmith_f_op_f32(arg_0 + 115f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 12>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1072f)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1236f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(1307f, _wgslsmith_f_op_f32(f32(-1f) * -169f), var_0) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-706f, var_0, -192f) + vec3<f32>(var_0, 392f, -1063f)))))), 0u, ~u_input.a.x & 78254u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1176f, 1000f, var_0, 1281f), vec4<f32>(var_0, -331f, var_0, var_0)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, 207f) - vec4<f32>(var_0, 1381f, 592f, var_0)))))));
}

