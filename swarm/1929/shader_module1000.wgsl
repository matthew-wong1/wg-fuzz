struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 9>;

var<private> global1: array<bool, 14>;

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec4<f32>(-660f, 798f, 393f, 887f), 1174f, vec3<bool>(false, false, true)), Struct_1(vec4<f32>(1310f, -214f, -1105f, -698f), 1311f, vec3<bool>(false, false, false)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1) -> vec4<u32> {
    global2 = array<Struct_1, 2>();
    let var_0 = Struct_2(~min(~(~vec4<u32>(98909u, 4294967295u, 4294967295u, u_input.a)), ~vec4<u32>(u_input.e.x, u_input.c.x, u_input.e.x, u_input.e.x)), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(arg_0.a.x)), _wgslsmith_f_op_f32(-638f - -102f), arg_0.b, _wgslsmith_f_op_f32(f32(-1f) * -946f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, 1175f)))), 1000f, !select(!vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.e.x, 14u)], false), select(vec3<bool>(arg_0.c.x, arg_0.c.x, global1[_wgslsmith_index_u32(u_input.e.x, 14u)]), arg_0.c, true), arg_0.c)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, -1992f, _wgslsmith_f_op_f32(trunc(1056f)), -302f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a.x)))), arg_0.c));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-450f))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(arg_0.b, arg_0.a.x)), arg_0.a.x))), _wgslsmith_f_op_f32(ceil(arg_0.b)), true)) * 801f);
    var var_2 = Struct_2(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(var_0.a.x, u_input.c.x) << (~u_input.a % 32u), ~_wgslsmith_mult_u32(16299u, 33219u), ~(~u_input.c.x), _wgslsmith_sub_u32(u_input.a, u_input.e.x)), ~(reverseBits(vec4<u32>(1u, var_0.a.x, 1u, var_0.a.x)) | var_0.a)), arg_0, var_0.b);
    global2 = array<Struct_1, 2>();
    return var_0.a;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: f32) -> Struct_3 {
    global1 = array<bool, 14>();
    let var_0 = Struct_2(~(~func_3(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1350u, 12080u), 2u)])), global2[_wgslsmith_index_u32(arg_1, 2u)], global2[_wgslsmith_index_u32(~24754u, 2u)]);
    let var_1 = reverseBits(select(~firstLeadingBit(var_0.a), max(countOneBits(var_0.a), vec4<u32>(28015u, 4294967295u, 18357u, arg_1)), select(vec4<bool>(var_0.b.c.x, true, var_0.b.c.x, false), vec4<bool>(global1[_wgslsmith_index_u32(82631u, 14u)], global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(23791u, 14u)], false), select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.c.x, 14u)], var_0.c.c.x), vec4<bool>(true, var_0.b.c.x, true, global1[_wgslsmith_index_u32(0u, 14u)]), vec4<bool>(false, global1[_wgslsmith_index_u32(17404u, 14u)], var_0.b.c.x, var_0.b.c.x))))) >> (reverseBits(vec4<u32>(_wgslsmith_dot_vec4_u32(var_0.a, vec4<u32>(4834u, 17983u, 842u, u_input.e.x)), _wgslsmith_div_u32(arg_1, arg_1), u_input.c.x, reverseBits(41785u)) | firstLeadingBit(var_0.a)) % vec4<u32>(32u));
    let var_2 = countOneBits(var_1.zz << (vec2<u32>(select(_wgslsmith_sub_u32(1u, var_0.a.x), 0u, true), 1u ^ _wgslsmith_mod_u32(4294967295u, arg_1)) % vec2<u32>(32u)));
    return global0[_wgslsmith_index_u32(var_1.x >> (~4294967295u % 32u), 9u)];
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: bool, arg_3: Struct_3) -> Struct_1 {
    global0 = array<Struct_3, 9>();
    let var_0 = !(u_input.d.x < u_input.b);
    global1 = array<bool, 14>();
    global2 = array<Struct_1, 2>();
    global2 = array<Struct_1, 2>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(sign(arg_1.b.a)), -576f, vec3<bool>(true, 54053u >= _wgslsmith_clamp_u32(_wgslsmith_add_u32(11179u, u_input.a), 0u, arg_1.a.x), all(!vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(0u, 14u)])) | (_wgslsmith_f_op_f32(select(arg_1.b.a.x, -1542f, false)) == arg_1.c.b)));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<bool>) -> u32 {
    global0 = array<Struct_3, 9>();
    var var_0 = func_4(i32(-1i) * -2147483647i, Struct_2(arg_2.a, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(3420u, 4294967295u, 1539u, arg_1.a.x), ~arg_2.a) >> (63689u % 32u), 2u)], arg_2.b), any(select(select(arg_1.b.c, vec3<bool>(false, arg_3.x, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 14u)], global1[_wgslsmith_index_u32(arg_2.a.x, 14u)], true)), !(!vec3<bool>(arg_3.x, arg_1.c.c.x, false)), arg_2.b.c)), func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.c.b * _wgslsmith_f_op_f32(sign(-767f))), _wgslsmith_f_op_f32(arg_1.c.b + arg_2.c.b))), ~arg_2.a.x << (0u % 32u), arg_1.b.a.x));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-944f, arg_1.b.a.x, arg_1.b.b, -755f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1831f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.b))) - _wgslsmith_f_op_f32(floor(arg_1.b.a.x))), vec3<bool>(true, true, true));
    var var_1 = Struct_2(arg_1.a, Struct_1(arg_2.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.b)), !vec3<bool>(arg_1.b.b > var_0.a.x, all(arg_1.b.c.zy), false)), func_4(-u_input.d.x, Struct_2(arg_1.a, arg_2.b, func_4(u_input.b, arg_2, true, Struct_3(vec2<i32>(arg_0.x, -36932i)))), any(vec2<bool>(true, true)), Struct_3(u_input.d.xw)));
    var_1 = arg_1;
    return _wgslsmith_clamp_u32(~arg_2.a.x, ~(~u_input.e.x), ~firstTrailingBit(19574u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.c.x, u_input.e.x, 0u)), u_input.c) ^ vec3<u32>(~min(1u >> (u_input.a % 32u), _wgslsmith_mod_u32(1u, 25537u)), u_input.c.x << ((func_1(vec2<i32>(-16164i, u_input.d.x), Struct_2(vec4<u32>(31880u, 135200u, u_input.e.x, u_input.e.x), Struct_1(vec4<f32>(-1000f, -596f, 117f, 973f), 266f, vec3<bool>(false, true, global1[_wgslsmith_index_u32(4294967295u, 14u)])), Struct_1(vec4<f32>(444f, -1558f, 1000f, -1040f), 438f, vec3<bool>(true, false, true))), Struct_2(vec4<u32>(u_input.e.x, 69941u, 4294967295u, u_input.c.x), Struct_1(vec4<f32>(1173f, -796f, 121f, 1000f), -1564f, vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 14u)], global1[_wgslsmith_index_u32(22514u, 14u)])), Struct_1(vec4<f32>(1440f, 284f, 518f, 929f), 460f, vec3<bool>(global1[_wgslsmith_index_u32(63625u, 14u)], false, false))), vec2<bool>(global1[_wgslsmith_index_u32(74368u, 14u)], false)) << (~u_input.e.x % 32u)) % 32u), reverseBits(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.e.x, 4294967295u), vec3<u32>(u_input.c.x, u_input.c.x, 1u)), _wgslsmith_mult_u32(u_input.a, 64829u))));
    global0 = array<Struct_3, 9>();
    let var_1 = _wgslsmith_f_op_f32(step(1485f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(826f, -1688f))))))));
    var var_2 = _wgslsmith_f_op_f32(var_1 * -221f);
    var var_3 = vec4<f32>(var_1, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * -276f)))), _wgslsmith_f_op_f32(var_1 + -449f));
    var var_4 = select(vec4<bool>(true, all(select(!vec3<bool>(true, global1[_wgslsmith_index_u32(29656u, 14u)], global1[_wgslsmith_index_u32(4294967295u, 14u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 14u)], true, global1[_wgslsmith_index_u32(u_input.a, 14u)]), vec3<bool>(global1[_wgslsmith_index_u32(1u, 14u)], true, false), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 14u)], true, global1[_wgslsmith_index_u32(4294967295u, 14u)])), vec3<bool>(global1[_wgslsmith_index_u32(18456u, 14u)], global1[_wgslsmith_index_u32(6545u, 14u)], false))), _wgslsmith_f_op_f32(func_4(u_input.b, Struct_2(vec4<u32>(u_input.e.x, var_0.x, 1u, 70095u), Struct_1(vec4<f32>(-703f, var_1, var_3.x, -1000f), var_1, vec3<bool>(false, true, false)), global2[_wgslsmith_index_u32(u_input.a, 2u)]), global1[_wgslsmith_index_u32(0u, 14u)], Struct_3(u_input.d.zw)).b + _wgslsmith_div_f32(var_1, var_1)) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1 - var_1))), global1[_wgslsmith_index_u32(9940u & _wgslsmith_dot_vec3_u32(u_input.c >> (var_0 % vec3<u32>(32u)), reverseBits(u_input.c)), 14u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 14u)], all(!vec4<bool>(false, true, global1[_wgslsmith_index_u32(4294967295u, 14u)], global1[_wgslsmith_index_u32(u_input.c.x, 14u)])), true, false), vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(1u, 14u)], true), !any(vec2<bool>(false, global1[_wgslsmith_index_u32(var_0.x, 14u)]))), all(!select(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 14u)], true, global1[_wgslsmith_index_u32(var_0.x, 14u)], false), select(vec4<bool>(global1[_wgslsmith_index_u32(21543u, 14u)], global1[_wgslsmith_index_u32(45527u, 14u)], global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(80425u, 14u)]), vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(4294967295u, 14u)]), global1[_wgslsmith_index_u32(0u, 14u)]), any(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 14u)], global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(16672u, 14u)])))));
    var var_5 = 0u;
    var var_6 = global0[_wgslsmith_index_u32(4188u, 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_0, i32(-1i) * -(i32(-1i) * -1i), u_input.e | abs(~(~var_0.xz)), _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(~0u, ~u_input.c.x, u_input.a ^ 1u), 1u));
}

