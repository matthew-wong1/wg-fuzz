struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-806f, 742f), 1000f, 4294967295u, vec3<f32>(417f, 1869f, -629f));

var<private> global2: Struct_1 = Struct_1(vec2<f32>(-265f, 1714f), 2010f, 44271u, vec3<f32>(-273f, 559f, 1692f));

var<private> global3: bool;

var<private> global4: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(227f, -1182f), vec2<f32>(1188f, -585f), vec2<f32>(-858f, -1000f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> vec2<bool> {
    global0 = Struct_1(global2.d.xy, -732f, _wgslsmith_dot_vec4_u32(abs(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a.x, 47495u, 1u, 4294967295u), vec4<u32>(u_input.c, 1u, 38819u, global2.c))), ~(vec4<u32>(global1.c, 104076u, 1u, global1.c) >> (vec4<u32>(global1.c, global2.c, u_input.a.x, 707u) % vec4<u32>(32u))) ^ ~(vec4<u32>(global0.c, global1.c, 1u, 10313u) ^ vec4<u32>(0u, 1u, 4294967295u, 25939u))), global1.d);
    return vec2<bool>(true, true);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(~(~global0.c), u_input.a.x, 1u), vec3<u32>(28612u, ~_wgslsmith_mod_u32(u_input.a.x, 0u), global1.c)));
    global0 = arg_0;
    global2 = Struct_1(vec2<f32>(-102f, _wgslsmith_f_op_f32(select(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b, global0.b)), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.x + _wgslsmith_f_op_f32(select(209f, arg_0.a.x, false))))), min(~arg_2.c, abs(1u)), vec3<f32>(-576f, arg_2.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b - arg_2.b)), 294f))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global0.a, _wgslsmith_f_op_vec2_f32(abs(arg_0.d.zx)), arg_1.x)))), 1449f, firstTrailingBit(firstLeadingBit(arg_2.c) ^ ~4294967295u) << (0u % 32u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global0.b)))), global0.b, _wgslsmith_f_op_f32(global0.d.x + _wgslsmith_f_op_f32(-arg_2.b)))));
    let var_2 = arg_2;
    return Struct_1(global2.a, 836f, ~0u >> (1u % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(arg_2.a.x, 1548f), -1287f, _wgslsmith_f_op_f32(floor(arg_0.a.x))), vec3<f32>(_wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(-1000f * global2.d.x), global1.d.x)))));
}

fn func_1() -> Struct_1 {
    var var_0 = ~vec3<i32>(_wgslsmith_dot_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, u_input.b), vec2<i32>(-1i, 2147483647i)), ~(~vec2<i32>(1i, u_input.b))), 83839i, _wgslsmith_add_i32(53059i, u_input.b));
    global1 = func_3(Struct_1(global1.d.yy, global1.b, ~global0.c, global2.d), func_2(), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global4[_wgslsmith_index_u32(global1.c, 3u)]))), 818f, global2.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(global0.d, vec3<f32>(global0.b, -467f, 1485f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-780f, 242f, 726f)), true)))));
    var var_1 = func_3(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global2.b, global0.b), -126f)), 199f, 4294967295u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global0.d, _wgslsmith_f_op_vec3_f32(global0.d - vec3<f32>(global1.a.x, 630f, 442f)))) + global0.d)), !(!select(func_2(), vec2<bool>(true, true), vec2<bool>(true, true))), Struct_1(global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.x - _wgslsmith_div_f32(global0.b, global2.a.x))), min(_wgslsmith_mod_u32(1u, u_input.c), ~reverseBits(0u)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1158f, global1.b, global1.d.x), vec3<f32>(-593f, 791f, -657f), true)), vec3<f32>(-2888f, _wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(step(1055f, 537f)))))));
    global0 = func_3(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.a.x + global2.d.x), _wgslsmith_f_op_f32(-var_1.a.x)) + _wgslsmith_f_op_vec2_f32(floor(global1.d.zz))), _wgslsmith_f_op_f32(-global2.b), global2.c, vec3<f32>(-1424f, -326f, _wgslsmith_f_op_f32(1128f - _wgslsmith_f_op_f32(-1000f + global1.b)))), func_2(), func_3(func_3(func_3(Struct_1(vec2<f32>(951f, global1.d.x), global1.a.x, global1.c, vec3<f32>(411f, 540f, global1.d.x)), vec2<bool>(true, true), Struct_1(global1.a, global2.b, 4294967295u, vec3<f32>(global2.b, global0.a.x, global1.d.x))), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), false)), Struct_1(_wgslsmith_f_op_vec2_f32(var_1.a * vec2<f32>(global0.d.x, 528f)), _wgslsmith_f_op_f32(var_1.d.x * global2.b), var_1.c << (global2.c % 32u), vec3<f32>(var_1.d.x, global0.d.x, global2.b))), select(vec2<bool>(true, true), vec2<bool>(true, true), func_2().x), Struct_1(vec2<f32>(_wgslsmith_div_f32(global1.d.x, 282f), _wgslsmith_f_op_f32(-global2.a.x)), global0.a.x, _wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a), u_input.a), global0.d)));
    var var_2 = !select(select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.x >= u_input.b, select(false, true, false), false, false), false), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true)), !(any(vec4<bool>(false, true, false, true)) && true));
    return func_3(func_3(Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.d.x, 527f))), 550f, 63505u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.a.x, global1.d.x, -154f), vec3<f32>(global1.d.x, var_1.d.x, var_1.d.x))))), vec2<bool>(select(true, !var_2.x, true), var_2.x), func_3(func_3(func_3(Struct_1(global1.a, 697f, global1.c, global2.d), var_2.xz, Struct_1(var_1.d.yy, var_1.d.x, global2.c, vec3<f32>(global0.a.x, global1.a.x, 485f))), !var_2.yz, Struct_1(global1.a, global2.d.x, 0u, vec3<f32>(global2.b, var_1.b, 1342f))), select(!var_2.zz, vec2<bool>(true, var_2.x), var_2.x), func_3(Struct_1(global1.a, -1000f, global1.c, global1.d), func_2(), func_3(Struct_1(vec2<f32>(268f, -516f), global1.a.x, 4294967295u, var_1.d), vec2<bool>(true, false), Struct_1(global0.d.zy, global1.a.x, 12244u, vec3<f32>(global0.d.x, 1000f, global0.a.x)))))), var_2.zx, func_3(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global2.a)) * global0.d.yy), _wgslsmith_f_op_f32(-global1.b), global0.c & 22769u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global1.a.x, global0.b))), vec2<bool>(all(vec3<bool>(var_2.x, var_2.x, var_2.x)) || false, false), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(global1.a.x - global2.d.x), -808f), var_1.b, ~global0.c, vec3<f32>(-2083f, -334f, _wgslsmith_f_op_f32(var_1.b * 806f)))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global1 = Struct_1(arg_2.d.zz, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1738f - -1152f), 1000f), _wgslsmith_div_u32(_wgslsmith_add_u32(0u, 0u), arg_2.c), global0.d);
    global3 = func_2().x | all(select(vec4<bool>(true, u_input.c >= global1.c, true, false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true))), select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, false, false))));
    let var_0 = _wgslsmith_f_op_f32(round(func_3(arg_1, vec2<bool>(true, true), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, global2.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1969f, global1.d.x)), arg_2.b), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.c, 1u), firstTrailingBit(u_input.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, -1000f, arg_1.a.x)))).a.x));
    var var_1 = func_3(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global0.d.xx, vec2<f32>(global0.a.x, -1196f), vec2<bool>(false, true)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-474f, 753f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1926f, -778f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d.x) + arg_2.a.x), _wgslsmith_f_op_f32(sign(-116f)))), 42087u, global0.d), vec2<bool>(true, true), func_1());
    let var_2 = Struct_1(arg_2.a, -2750f, u_input.c, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-454f - global1.a.x))) + arg_2.d.x), -847f, func_3(func_1(), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true), true), Struct_1(global4[_wgslsmith_index_u32(u_input.a.x, 3u)], global1.d.x, 4294967295u, _wgslsmith_f_op_vec3_f32(-var_1.d))).a.x));
    return _wgslsmith_sub_u32(0u, func_3(func_1(), select(!func_2(), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true)), all(select(vec2<bool>(false, true), vec2<bool>(true, true), true))), Struct_1(vec2<f32>(_wgslsmith_div_f32(515f, -1717f), 696f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.d.x))), 0u, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_1.d), var_1.d, select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)))))).c);
}

fn func_5(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = vec2<bool>(u_input.b <= 4459i, u_input.b <= 1i);
    let var_1 = abs(vec2<i32>(u_input.b, _wgslsmith_div_i32(57173i, 2147483647i)));
    global0 = func_3(arg_0, !select(vec2<bool>(!var_0.x, !var_0.x), vec2<bool>(any(vec4<bool>(false, false, false, var_0.x)), var_0.x), var_0.x), arg_0);
    global2 = arg_0;
    var var_2 = vec4<bool>(var_0.x || all(!vec3<bool>(var_0.x, var_0.x, true)), true, !(!(_wgslsmith_f_op_f32(-global0.b) > 284f)), all(!(!(!vec2<bool>(true, var_0.x)))));
    return StorageBuffer(firstLeadingBit(var_1.x), -((vec3<i32>(6449i, -6469i, var_1.x) << (vec3<u32>(u_input.c, 0u, global0.c) % vec3<u32>(32u))) & _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, -5252i, -1i), vec3<i32>(2147483647i, var_1.x, -1i))) & (abs(firstTrailingBit(vec3<i32>(-1i, var_1.x, var_1.x))) | -vec3<i32>(u_input.b, var_1.x, u_input.b)), _wgslsmith_dot_vec2_u32(vec2<u32>(92846u, func_1().c), abs(countOneBits(vec2<u32>(global0.c, 55946u) | u_input.a))), countOneBits(vec2<u32>(~4294967295u >> (_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(9732u, 0u)) % 32u), global1.c)), vec2<u32>(select(92947u, ~_wgslsmith_mod_u32(global1.c, 4294967295u), any(!vec4<bool>(var_2.x, var_2.x, var_2.x, true))), _wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_mod_u32(~global0.c, 1u | arg_0.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.a * global1.a) * global1.d.yx))), 1000f, func_4(0u, func_1(), Struct_1(_wgslsmith_f_op_vec2_f32(-global0.d.zy), -630f, ~28591u, _wgslsmith_f_op_vec3_f32(global1.d * vec3<f32>(global2.a.x, 899f, global2.d.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(global0.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, 535f, 459f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.d.x, -200f, 922f))) * vec3<f32>(844f, global0.b, global0.a.x)), func_2().x))));
}

