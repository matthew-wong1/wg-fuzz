struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec3<f32>(256f, -1806f, -481f), 389f);

var<private> global2: array<vec3<f32>, 2>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = all(select(select(vec3<bool>(false & arg_0, 398f <= global1.a.x, true), vec3<bool>(!arg_0, true, u_input.c.x > 3296u), abs(-9810i) < u_input.a), vec3<bool>(true, any(select(vec4<bool>(arg_0, false, arg_0, true), vec4<bool>(arg_0, false, false, false), false)), true), !vec3<bool>(any(vec2<bool>(arg_0, arg_0)), any(vec4<bool>(arg_0, true, arg_0, arg_0)), !arg_0)));
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.a + global1.a) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(u_input.d, 2u)]), _wgslsmith_f_op_vec3_f32(select(global1.a, vec3<f32>(539f, -2070f, global0.a.x), vec3<bool>(true, false, var_0)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.a.x, 215f, 1004f), global2[_wgslsmith_index_u32(u_input.b.x, 2u)]))))))), -1194f);
    return global0.a.x;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: i32) -> vec4<i32> {
    var var_0 = Struct_1(vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(func_3(!(global0.b > global1.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1219f, arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.a.x)) * _wgslsmith_div_f32(142f, -1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -721f));
    var var_1 = Struct_1(global0.a, 757f);
    global1 = Struct_1(vec3<f32>(937f, var_0.b, _wgslsmith_f_op_f32(trunc(global1.a.x))), var_0.b);
    var var_2 = _wgslsmith_add_vec4_i32(-vec4<i32>(-1346i, firstTrailingBit(6450i), -27266i, firstTrailingBit(-2147483647i)), _wgslsmith_div_vec4_i32((vec4<i32>(u_input.a, 59998i, u_input.a, u_input.a) & vec4<i32>(arg_2, -63121i, 65098i, -51179i)) ^ -vec4<i32>(u_input.a, -23806i, 1i, 1i), ~(-vec4<i32>(-25444i, arg_2, arg_2, u_input.a)))) >> (select(vec4<u32>(arg_1, u_input.c.x | (u_input.b.x | 0u), 94410u, firstLeadingBit(u_input.c.x)), ~countOneBits(vec4<u32>(4294967295u, u_input.b.x, 1u, 35197u)), select(vec4<bool>(all(vec2<bool>(false, false)), true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))) % vec4<u32>(32u));
    global1 = Struct_1(var_0.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -521f))));
    return vec4<i32>(var_2.x, 0i, -1470i, _wgslsmith_mod_i32(arg_2 & _wgslsmith_add_i32(_wgslsmith_mod_i32(var_2.x, u_input.a), 1i >> (arg_1 % 32u)), abs(_wgslsmith_dot_vec3_i32(var_2.xzy, -var_2.wzw))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: i32) -> Struct_1 {
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.b, global0.b, global1.b), vec3<f32>(global0.a.x, global1.b, global0.b)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.b, 411f, 1339f)))))), global1.b);
    var var_0 = countOneBits(2147483647i);
    global2 = array<vec3<f32>, 2>();
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(474f, -1158f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b * 716f) * _wgslsmith_f_op_f32(-global1.a.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global0.b)))), _wgslsmith_f_op_f32(func_3(true)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-204f))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.b), -366f)), 240f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a.x))))), _wgslsmith_f_op_f32(max(-443f, _wgslsmith_f_op_f32(f32(-1f) * -1061f))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    global2 = array<vec3<f32>, 2>();
    global1 = arg_0;
    var var_0 = Struct_1(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 1183f) * _wgslsmith_f_op_f32(floor(arg_0.b))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.a.x))))) - _wgslsmith_f_op_f32(-1593f - _wgslsmith_f_op_f32(floor(global0.b)))));
    var var_1 = u_input.b.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a.x, global0.b, -244f), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1194f, global0.a.x, arg_0.a.x)))))), _wgslsmith_f_op_vec3_f32(func_4(vec4<i32>(_wgslsmith_add_i32(u_input.a, -22859i), 0i >> (arg_1.x % 32u), _wgslsmith_sub_i32(u_input.a, -5967i), _wgslsmith_mult_i32(-2147483647i, u_input.a)), vec4<u32>(8689u, ~4294967295u, u_input.b.x, _wgslsmith_add_u32(14874u, arg_1.x)), u_input.a).a - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(262f, global0.a.x, global0.b) * vec3<f32>(arg_0.a.x, 503f, -620f)) * var_0.a))), !any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(select(func_4(vec4<i32>(-1i) * -vec4<i32>(u_input.a, 0i, u_input.a, 1i), vec4<u32>(u_input.d, ~18869u, 1u, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(arg_1.x, 33417u))), min(-2646i, u_input.a)).a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(461f + var_2.x), 1f, -708f) - global0.a), vec3<bool>(true | any(vec2<bool>(true, true)), false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(2687f * -2306f)))));
}

fn func_1() -> u32 {
    var var_0 = func_5(func_4((func_2(global0.b, u_input.d, u_input.a) >> (vec4<u32>(0u, u_input.c.x, 28859u, 24612u) % vec4<u32>(32u))) | func_2(global0.a.x, ~0u, ~(-19426i)), _wgslsmith_div_vec4_u32(select(~vec4<u32>(u_input.b.x, u_input.d, 93756u, u_input.d), ~vec4<u32>(62166u, 0u, u_input.b.x, 14506u), true), ~(~vec4<u32>(u_input.b.x, 26469u, u_input.b.x, u_input.c.x))), abs(u_input.a)), vec4<u32>(6715u, u_input.d, u_input.d, min(1u, _wgslsmith_mult_u32(28021u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 1u), vec3<u32>(u_input.d, u_input.b.x, 1u))))));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, 323f, 172f) * global0.a)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.a.x, global1.a.x, -255f), global1.a, true)) * _wgslsmith_f_op_vec3_f32(-var_0.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1270f, global1.b, global0.a.x) + vec3<f32>(var_0.b, 1391f, global0.b)) * vec3<f32>(-135f, global1.b, global0.b)))), -229f);
    var var_1 = Struct_1(var_0.a, 602f);
    var_1 = func_5(func_5(Struct_1(vec3<f32>(_wgslsmith_div_f32(var_1.b, 1868f), _wgslsmith_f_op_f32(var_1.a.x * -1966f), func_5(Struct_1(global0.a, -791f), vec4<u32>(4294967295u, u_input.d, u_input.d, 5282u)).a.x), 291f), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c.x, u_input.b.x, 71877u, u_input.c.x), ~vec4<u32>(u_input.d, 4294967295u, 4294967295u, u_input.c.x))), firstLeadingBit(abs(abs(vec4<u32>(u_input.c.x, u_input.b.x, u_input.b.x, 59459u)) & ~vec4<u32>(24046u, 21827u, u_input.c.x, 17668u))));
    var var_2 = Struct_1(vec3<f32>(global1.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -518f), _wgslsmith_f_op_f32(floor(166f))))), _wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(func_3(true)))), _wgslsmith_div_f32(-291f, 1266f));
    return u_input.b.x;
}

fn func_6(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_i32(func_2(-901f, select(_wgslsmith_sub_u32(50157u, 30583u) << (firstTrailingBit(arg_0.x) % 32u), 1u, all(vec2<bool>(true, true))), -56805i).x, ~(abs(6512i) ^ (-u_input.a >> (arg_0.x % 32u))));
    let var_1 = false || (arg_2.b >= _wgslsmith_f_op_f32(arg_2.a.x * _wgslsmith_f_op_f32(-1300f + global0.a.x)));
    let var_2 = _wgslsmith_mult_vec2_i32(select(select(-(~vec2<i32>(2812i, arg_1.x)), arg_1.zz, true & var_1), vec2<i32>(-1i) * -(~arg_1.yw), var_1 || var_1), arg_1.yx);
    global0 = func_4(min(arg_1, arg_1), arg_0, 47057i);
    let var_3 = -_wgslsmith_clamp_vec3_i32(-arg_1.yzy, ~reverseBits(-vec3<i32>(var_0, -31374i, 48583i)), ((vec3<i32>(5692i, -28427i, var_0) ^ vec3<i32>(arg_1.x, var_2.x, arg_1.x)) | countOneBits(arg_1.zxw)) ^ vec3<i32>(0i, var_2.x >> (u_input.c.x % 32u), abs(-2147483647i)));
    return func_4(firstTrailingBit(vec4<i32>((1i & u_input.a) | (var_0 >> (5498u % 32u)), ~(u_input.a << (0u % 32u)), ~26650i, 1i)), firstLeadingBit(~vec4<u32>(u_input.c.x, select(arg_0.x, arg_0.x, var_1), u_input.d, _wgslsmith_dot_vec4_u32(arg_0, arg_0))), -14003i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(min(~vec4<u32>(u_input.c.x >> (73719u % 32u), ~1u, func_1(), 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, func_1(), select(u_input.b.x, u_input.c.x, false), ~u_input.c.x), firstLeadingBit(reverseBits(vec4<u32>(u_input.d, 30613u, 1u, 45591u))), ~vec4<u32>(48632u, u_input.b.x, 85857u, 1u) & (vec4<u32>(u_input.c.x, 48063u, 25448u, u_input.b.x) ^ vec4<u32>(u_input.b.x, u_input.d, u_input.c.x, u_input.b.x)))), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -51071i, 7454i, firstTrailingBit(29417i)), vec4<i32>(_wgslsmith_add_i32(46102i, u_input.a) << ((u_input.b.x << (4294967295u % 32u)) % 32u), 0i, 5751i, u_input.a | u_input.a)), func_5(func_4(_wgslsmith_sub_vec4_i32(~vec4<i32>(17228i, u_input.a, -1i, u_input.a), firstTrailingBit(vec4<i32>(u_input.a, 0i, u_input.a, -1i))), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.c.x, 31900u), vec4<u32>(u_input.d, u_input.d, 71606u, u_input.c.x) & vec4<u32>(u_input.c.x, u_input.d, 4294967295u, 12481u)), u_input.a), ~_wgslsmith_mod_vec4_u32(vec4<u32>(31951u, u_input.b.x, u_input.c.x, 0u), firstTrailingBit(vec4<u32>(1u, 55163u, u_input.b.x, 2793u)))));
    global2 = array<vec3<f32>, 2>();
    let var_0 = (~(~u_input.c.x) <= u_input.d) | false;
    var var_1 = 23681u;
    var var_2 = !(!(false & var_0));
    global2 = array<vec3<f32>, 2>();
    let var_3 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-_wgslsmith_div_i32(-11081i, select(0i, 0i, var_0)), _wgslsmith_sub_i32(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 12323i, 1679i, 0i), ~vec4<i32>(u_input.a, u_input.a, 8054i, 1i))), max(~(u_input.a & -66245i), -1i), ~(~abs(u_input.a))));
}

