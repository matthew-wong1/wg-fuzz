struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: bool,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(vec3<i32>(28485i, -62413i, -12192i)), Struct_3(vec3<i32>(30105i, 0i, 28246i)), Struct_3(vec3<i32>(0i, -1i, 1i)), Struct_3(vec3<i32>(1i, 1i, i32(-2147483648))), Struct_3(vec3<i32>(0i, -33261i, 2147483647i)), Struct_3(vec3<i32>(48552i, 2147483647i, -1i)), Struct_3(vec3<i32>(i32(-2147483648), 68679i, 1i)), Struct_3(vec3<i32>(1i, -1i, 1i)), Struct_3(vec3<i32>(-1i, -1i, 0i)), Struct_3(vec3<i32>(1i, -11612i, 21587i)), Struct_3(vec3<i32>(35118i, i32(-2147483648), -23837i)), Struct_3(vec3<i32>(2147483647i, 0i, i32(-2147483648))), Struct_3(vec3<i32>(-33070i, -1i, 14741i)), Struct_3(vec3<i32>(-5476i, -1i, 1i)), Struct_3(vec3<i32>(1i, 1i, -15894i)));

var<private> global1: array<Struct_2, 14>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f - 1216f))))))));
    var var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -611f), vec2<bool>(-907f >= var_0, all(vec3<bool>(true, true, true))), (var_0 != 1019f) | true, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1674f, var_0) * vec2<f32>(1235f, var_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-323f, 728f) + vec2<f32>(var_0, 133f)), false))), var_0, Struct_1(var_0, vec2<bool>(true, true), true, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-483f, 507f))))), 1u));
    var_1 = Struct_4(global1[_wgslsmith_index_u32(max(1u, ~(_wgslsmith_sub_u32(var_1.a.d, 4294967295u) & ~var_1.a.d)), 14u)]);
    return !select(vec2<bool>(any(select(vec4<bool>(var_1.a.a.c, var_1.a.a.c, var_1.a.c.c, false), vec4<bool>(var_1.a.c.c, var_1.a.a.b.x, var_1.a.c.b.x, var_1.a.a.c), var_1.a.c.b.x)), false), var_1.a.a.b, var_1.a.a.b.x);
}

fn func_2(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = select(reverseBits(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a) & _wgslsmith_div_vec4_i32(vec4<i32>(-5440i, u_input.a, -32351i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i))) << (min(~(~vec4<u32>(4294967295u, 89547u, 4398u, 4294967295u)), vec4<u32>(1u, ~0u, ~4294967295u, ~0u)) % vec4<u32>(32u)), -(~(vec4<i32>(24638i, u_input.a, u_input.a, -17027i) ^ vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a))) ^ ~(~vec4<i32>(-2147483647i, u_input.a, u_input.a, -1i)), any(select(arg_0.b, !(!arg_0.b), func_3(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.a, u_input.a)), vec3<u32>(1u, 1u, 1u)))));
    global0 = array<Struct_3, 15>();
    let var_1 = Struct_3(select(abs(vec3<i32>(-var_0.x, min(-25693i, var_0.x), -5923i)), var_0.zxz, true));
    var_0 = -(vec4<i32>(_wgslsmith_add_i32(-16849i, 0i), -2147483647i, -(u_input.a >> (24874u % 32u)), 1i) | (vec4<i32>(firstLeadingBit(-2147483647i), _wgslsmith_mod_i32(1i, var_0.x), 1i, var_1.a.x) << (select(firstLeadingBit(vec4<u32>(113555u, 87459u, 19169u, 1u)), ~vec4<u32>(32070u, 1u, 776u, 0u), select(vec4<bool>(true, false, arg_0.c, false), vec4<bool>(arg_0.c, false, true, arg_0.b.x), false)) % vec4<u32>(32u))));
    return ~vec4<u32>(2253u, _wgslsmith_mult_u32(4294967295u, _wgslsmith_sub_u32(1u, 1u)), 1u, 0u);
}

fn func_1(arg_0: vec4<bool>, arg_1: bool) -> Struct_4 {
    var var_0 = vec4<i32>(-_wgslsmith_add_i32(u_input.a, ~u_input.a), u_input.a | 1i, -1i, u_input.a) ^ -((~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) >> (func_2(Struct_1(108f, arg_0.ww, true, vec2<f32>(1405f, 685f))) % vec4<u32>(32u))) << (_wgslsmith_add_vec4_u32(vec4<u32>(44100u, 4294967295u, 0u, 6051u), select(vec4<u32>(39389u, 1u, 4294967295u, 12552u), vec4<u32>(139702u, 1u, 15921u, 298u), arg_0)) % vec4<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -397f))))));
    var var_2 = Struct_1(1000f, !arg_0.wy, arg_0.x, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(325f, -360f) - vec2<f32>(var_1, 1617f)), vec2<f32>(var_1, -641f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 1633f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, var_1) - vec2<f32>(159f, var_1)))))));
    var var_3 = global1[_wgslsmith_index_u32(func_2(Struct_1(var_1, func_3(~var_0.xy, max(firstTrailingBit(vec3<u32>(4294967295u, 0u, 83501u)), vec3<u32>(24021u, 0u, 41949u))), any(!vec3<bool>(arg_0.x, arg_0.x, var_2.c)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(var_2.d)), var_2.d)))).x, 14u)];
    let var_4 = Struct_4(global1[_wgslsmith_index_u32(69916u, 14u)]);
    return Struct_4(global1[_wgslsmith_index_u32(~((var_3.d | var_4.a.d) ^ var_4.a.d), 14u)]);
}

fn func_4(arg_0: Struct_4, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(45850u, 15u)];
    let var_1 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -276f), !vec2<bool>(true, arg_0.a.c.c), arg_0.a.a.b.x, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.a.a.d.x, -2225f)))), _wgslsmith_f_op_f32(-arg_0.a.a.a), arg_0.a.a, firstLeadingBit(23293u)));
    global0 = array<Struct_3, 15>();
    global0 = array<Struct_3, 15>();
    var var_2 = var_1.a;
    return func_1(vec4<bool>(select(var_2.c.b.x, var_2.c.c, true), func_1(vec4<bool>(var_1.a.a.b.x, !arg_0.a.a.b.x, var_2.a.c, true), false).a.a.c, func_3(_wgslsmith_div_vec2_i32(arg_1.zx, var_0.a.zx) & min(vec2<i32>(var_0.a.x, arg_1.x), arg_1.zz), abs(firstLeadingBit(vec3<u32>(arg_0.a.d, 4294967295u, 25626u)))).x, all(select(vec3<bool>(true, arg_0.a.a.c, false), select(vec3<bool>(arg_0.a.a.c, true, false), vec3<bool>(var_1.a.c.c, false, arg_0.a.a.b.x), vec3<bool>(var_1.a.c.b.x, var_1.a.a.c, arg_0.a.a.b.x)), true))), select(~reverseBits(arg_0.a.d) == ~func_2(arg_0.a.a).x, (reverseBits(1i) & select(arg_1.x, 10875i, arg_0.a.c.b.x)) <= arg_1.x, true)).a;
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: vec4<f32>) -> vec2<bool> {
    var var_0 = arg_0;
    global0 = array<Struct_3, 15>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(567f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(arg_2.x)))))), !select(!arg_0.a.b, vec2<bool>(true, var_0.a.b.x), all(var_0.a.b) & all(vec4<bool>(arg_0.c.b.x, true, true, false))), true, arg_2.yw);
    return vec2<bool>(func_4(Struct_4(Struct_2(var_0.a, _wgslsmith_f_op_f32(448f + arg_2.x), func_4(Struct_4(global1[_wgslsmith_index_u32(arg_0.d, 14u)]), vec4<i32>(-27588i, 1i, -2147483647i, u_input.a)).c, min(arg_1, 0u))), ~(-firstTrailingBit(vec4<i32>(-1i, 1i, u_input.a, 2147483647i)))).c.b.x, func_1(select(vec4<bool>(any(vec3<bool>(var_1.b.x, true, var_1.c)), true, true, true), vec4<bool>(true, u_input.a < -1i, var_1.b.x, var_1.b.x), select(vec4<bool>(arg_0.c.c, var_0.a.b.x, true, arg_0.c.b.x), select(vec4<bool>(var_1.b.x, arg_0.c.b.x, true, true), vec4<bool>(var_0.c.c, arg_0.a.c, arg_0.c.b.x, true), vec4<bool>(var_1.c, var_0.c.b.x, var_0.c.b.x, false)), false)), true).a.c.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 15>();
    global0 = array<Struct_3, 15>();
    let var_0 = func_5(func_4(func_1(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true)), true), ~vec4<i32>(select(0i, 0i, false), u_input.a, 0i, 1i)), 27655u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-783f, -1101f, -888f, 590f) + vec4<f32>(-1285f, -419f, 592f, 984f)))))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -639f)) - _wgslsmith_f_op_f32(-333f + _wgslsmith_f_op_f32(select(1f, -1010f, false)))), _wgslsmith_f_op_f32(f32(-1f) * -105f));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(293f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -671f) * -1828f), false)) + var_1.x), _wgslsmith_f_op_f32(trunc(-1134f)));
    let var_3 = !(_wgslsmith_f_op_f32(-1167f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-230f * var_1.x))) != _wgslsmith_f_op_f32(floor(-575f)));
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32((_wgslsmith_div_u32(~14371u, 47894u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(10876u, 11727u, 0u, 0u), vec4<u32>(69997u, 29426u, 39629u, 19526u))) & max(1u, 21348u), select(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), 22746u, true)), 15u)];
    let var_5 = _wgslsmith_f_op_vec2_f32(select(var_2, vec2<f32>(var_2.x, var_1.x), false));
    var var_6 = abs(39815u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(var_4.a.x, 26571i));
}

