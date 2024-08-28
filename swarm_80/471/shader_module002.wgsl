struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = Struct_3(_wgslsmith_mod_i32(2147483647i, -40000i), ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 53185u >> (arg_0.a % 32u), arg_0.a), ~(vec3<u32>(15148u, u_input.b.x, 33552u) & vec3<u32>(0u, u_input.b.x, u_input.a.x))));
    var var_1 = !vec2<bool>(any(vec2<bool>(true, true)) != !(var_0.a < 24062i), all(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    var var_2 = abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, 2147483647i << (arg_0.a % 32u), _wgslsmith_sub_i32(var_0.a, -5530i)), vec3<i32>(var_0.a | var_0.a, _wgslsmith_mod_i32(38751i, var_0.a), var_0.a))) > select(0i, ~2147483647i, var_1.x);
    let var_3 = Struct_1(0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b)));
    var var_4 = min(var_3.a, countOneBits(~arg_0.a));
    return !select(vec2<bool>(false, false), !select(vec2<bool>(true, false), !vec2<bool>(var_1.x, true), var_1.x), vec2<bool>(any(vec4<bool>(var_1.x, false, false, var_1.x)) == true, false));
}

fn func_3(arg_0: Struct_3) -> vec3<bool> {
    var var_0 = _wgslsmith_div_f32(335f, _wgslsmith_div_f32(-2160f, 962f));
    return select(vec3<bool>(true, any(vec4<bool>(true, true, true, true)) && true, true), vec3<bool>(true, 4294967295u < ~(~u_input.b.x), true), true);
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> Struct_3 {
    let var_0 = Struct_2(arg_1.d.zy, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(select(arg_1.b, arg_1.e.x, !(arg_1.c.a > arg_1.c.a))), arg_0)), arg_1.c, vec3<bool>(false, true, arg_1.a.x), arg_1.c.b.zy);
    var var_1 = _wgslsmith_div_i32(-2147483647i, 1i);
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(arg_1.c.b.xz))));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(711f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -337f)))), -1000f);
    var_2 = vec2<f32>(arg_1.e.x, _wgslsmith_div_f32(486f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.c.b.x)))));
    return Struct_3(-1i, ~(~firstLeadingBit(vec3<u32>(var_0.c.a, 4294967295u, 10018u)) | reverseBits(vec3<u32>(68409u, 4294967295u, 1938u))));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_add_vec2_i32(reverseBits(~abs(~vec2<i32>(-52935i, -5034i))), -_wgslsmith_div_vec2_i32(-select(vec2<i32>(-2147483647i, -8558i), vec2<i32>(-2147483647i, 0i), vec2<bool>(true, false)), -countOneBits(vec2<i32>(0i, 1i))));
    var var_1 = func_4(any(select(!select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(var_0.x < var_0.x, 4312i >= var_0.x), select(func_2(Struct_1(u_input.b.x, vec4<f32>(2004f, 1000f, 137f, 344f))), select(vec2<bool>(false, false), vec2<bool>(false, false), false), func_2(Struct_1(u_input.a.x, vec4<f32>(410f, 419f, 1000f, -137f)))))), Struct_2(!(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(425f - 602f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-204f, -642f))))), Struct_1(u_input.a.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-112f, 1096f, -1467f, 1411f) * vec4<f32>(-545f, -1172f, -773f, 247f)), vec4<f32>(-1000f, 614f, 491f, 1624f))), select(func_3(Struct_3(var_0.x, vec3<u32>(u_input.b.x, 41727u, u_input.c.x))), vec3<bool>(true, true, true), !func_3(Struct_3(-1i, vec3<u32>(64635u, 31624u, 0u))).x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1138f, -594f)), -338f)));
    var var_2 = -(~((vec4<i32>(-18098i, -28736i, var_0.x, -53430i) >> (~vec4<u32>(4294967295u, 52782u, var_1.b.x, u_input.c.x) % vec4<u32>(32u))) & _wgslsmith_mod_vec4_i32(~vec4<i32>(-13031i, var_1.a, -15642i, 3486i), _wgslsmith_div_vec4_i32(vec4<i32>(var_1.a, var_0.x, -2147483647i, var_1.a), vec4<i32>(var_0.x, -1i, 1i, var_0.x)))));
    var_1 = Struct_3(var_2.x | 1i, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, select(_wgslsmith_mod_u32(u_input.a.x, u_input.b.x), 24039u, true), _wgslsmith_mod_u32(u_input.c.x, ~u_input.b.x)), firstTrailingBit(firstTrailingBit(var_1.b))));
    var var_3 = func_4(any(vec3<bool>(true, true, true)), Struct_2(vec2<bool>(false, true), _wgslsmith_f_op_f32(ceil(-1238f)), Struct_1(0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1012f, 1000f, 264f, 328f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(581f, 865f, -426f, -1176f), vec4<f32>(1818f, 429f, 787f, 1246f))))), vec3<bool>(true, true, func_3(Struct_3(var_2.x, vec3<u32>(var_1.b.x, u_input.b.x, var_1.b.x))).x), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-544f, -1000f), vec2<f32>(-117f, 791f)))))));
    return Struct_2(func_3(Struct_3(var_3.a, ~vec3<u32>(u_input.a.x, var_3.b.x, 40159u))).zx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -700f))), Struct_1(var_1.b.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1000f, 184f, 1000f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(524f, -782f, 2102f, 656f))), vec4<f32>(_wgslsmith_f_op_f32(-466f * 1000f), 217f, _wgslsmith_f_op_f32(321f + -456f), 989f), vec4<bool>(all(vec3<bool>(true, false, false)), true, var_3.a < var_1.a, var_3.a >= var_3.a)))), !vec3<bool>(true, true, select(true, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-395f, 670f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-276f, 2180f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_1();
    var_0 = Struct_2(var_0.d.yz, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.e.x * -1318f), _wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-172f)))))), var_0.c, !var_0.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.b.x, var_0.b)) - vec2<f32>(var_0.b, var_0.b)))));
    var_0 = Struct_2(select(var_0.a, func_3(func_4(any(vec3<bool>(false, true, var_0.a.x)), func_1())).xy, vec2<bool>(-149f == var_0.e.x, var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(525f * var_0.b)), var_0.c, vec3<bool>(!any(func_3(Struct_3(-42100i, vec3<u32>(1u, 83979u, 101355u))).yx), true, false), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1564f, var_0.b)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.c.b.x))), var_0.e.x), vec2<bool>(false, !(-318f < var_0.b)))));
    var var_1 = vec2<bool>(true, !(!func_3(Struct_3(5403i, vec3<u32>(30213u, u_input.c.x, var_0.c.a))).x));
    let var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(-1i, vec4<i32>(~(-1i), _wgslsmith_add_i32(-13884i, -max(-11545i, -2147483647i)), ~(-1i), max(1i, reverseBits(_wgslsmith_div_i32(-33228i, -10231i)))), ~reverseBits(~u_input.a.x), u_input.c | firstLeadingBit(~u_input.a), _wgslsmith_sub_vec3_i32(-min(countOneBits(vec3<i32>(-2147483647i, 2147483647i, -2147483647i)), vec3<i32>(10153i, 2147483647i, 2147483647i)), ~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, 0i), vec3<i32>(-2147483647i, 0i, 0i)), 10205i, 2147483647i)));
}

