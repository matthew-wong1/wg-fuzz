struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<f32>(-438f, -207f, -956f, 1000f), Struct_1(vec2<u32>(855u, 1u), vec3<bool>(false, true, false)));

var<private> global1: array<f32, 20> = array<f32, 20>(495f, 1747f, 945f, 323f, 517f, 769f, -549f, -1123f, -1740f, -1110f, -649f, -574f, 2116f, -316f, -570f, 1318f, 191f, 621f, -656f, 835f);

var<private> global2: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(42041u, Struct_1(vec2<u32>(59479u, 4294967295u), vec3<bool>(false, false, false)), 526i), Struct_3(41601u, Struct_1(vec2<u32>(63359u, 20383u), vec3<bool>(false, true, true)), -17085i), Struct_3(38655u, Struct_1(vec2<u32>(13138u, 38456u), vec3<bool>(true, false, true)), 0i), Struct_3(0u, Struct_1(vec2<u32>(0u, 6861u), vec3<bool>(true, true, false)), 35226i), Struct_3(24181u, Struct_1(vec2<u32>(28231u, 33279u), vec3<bool>(true, false, true)), -31426i), Struct_3(4294967295u, Struct_1(vec2<u32>(70264u, 35982u), vec3<bool>(true, false, false)), 9675i), Struct_3(45997u, Struct_1(vec2<u32>(12948u, 25379u), vec3<bool>(true, true, false)), -1i), Struct_3(87686u, Struct_1(vec2<u32>(1u, 43642u), vec3<bool>(false, true, false)), 2147483647i), Struct_3(0u, Struct_1(vec2<u32>(0u, 68220u), vec3<bool>(false, true, false)), -102790i), Struct_3(53467u, Struct_1(vec2<u32>(1u, 4294967295u), vec3<bool>(false, true, false)), -33138i), Struct_3(0u, Struct_1(vec2<u32>(40749u, 0u), vec3<bool>(true, true, true)), -2303i), Struct_3(79525u, Struct_1(vec2<u32>(0u, 1u), vec3<bool>(false, true, true)), 1i), Struct_3(103232u, Struct_1(vec2<u32>(4294967295u, 0u), vec3<bool>(true, false, false)), -14772i), Struct_3(1u, Struct_1(vec2<u32>(21118u, 0u), vec3<bool>(false, true, false)), -101868i), Struct_3(132520u, Struct_1(vec2<u32>(4294967295u, 0u), vec3<bool>(true, false, true)), 2147483647i), Struct_3(28734u, Struct_1(vec2<u32>(14970u, 17014u), vec3<bool>(false, true, false)), 37180i), Struct_3(0u, Struct_1(vec2<u32>(33334u, 4294967295u), vec3<bool>(true, true, true)), -25772i), Struct_3(0u, Struct_1(vec2<u32>(98711u, 29953u), vec3<bool>(true, true, false)), -20984i), Struct_3(4152u, Struct_1(vec2<u32>(4294967295u, 1u), vec3<bool>(true, false, false)), i32(-2147483648)), Struct_3(0u, Struct_1(vec2<u32>(24085u, 4294967295u), vec3<bool>(false, false, false)), 1i), Struct_3(1u, Struct_1(vec2<u32>(0u, 7140u), vec3<bool>(false, true, true)), 36689i));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>) -> Struct_1 {
    return arg_0.b;
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-596f - 483f)) + global0.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1456f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a.x), 563f)), arg_0 >= abs(18057i))), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -170f))), _wgslsmith_f_op_f32(global0.a.x * 923f)), Struct_1(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(global0.b.a.x, 4294967295u), global0.b.a)), global0.b.b));
    let var_1 = u_input.d.x << (var_0.b.a.x % 32u);
    global1 = array<f32, 20>();
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(select(firstTrailingBit(28033u), 40051u, var_0.b.b.x)), ~4294967295u) & ~var_1, 21u)];
    global2 = array<Struct_3, 21>();
    return _wgslsmith_f_op_f32(-global0.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> Struct_2 {
    let var_0 = ~global0.b.a.x;
    global0 = arg_2;
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.a - vec4<f32>(arg_2.a.x, 2276f, arg_2.a.x, -696f))), vec4<f32>(543f, arg_2.a.x, -1201f, -1425f)))), Struct_1(func_2(global2[_wgslsmith_index_u32(countOneBits(u_input.d.x), 21u)], !arg_2.b.b.zx).a, !vec3<bool>(false || arg_0.b.x, global0.b.b.x, any(vec4<bool>(false, arg_0.b.x, true, false)))));
    var var_2 = vec3<f32>(-959f, -921f, -1256f);
    var var_3 = abs(countOneBits(vec2<i32>(_wgslsmith_sub_i32(arg_1, u_input.c) | u_input.a, ~(~arg_1))));
    return arg_2;
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = global0.a.yx;
    global0 = func_4(func_2(Struct_3(0u, global0.b, u_input.b.x), global0.b.b.yy), -_wgslsmith_sub_i32(1i, min(countOneBits(-18688i), u_input.a << (15602u % 32u))), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2287f) - _wgslsmith_f_op_f32(global0.a.x - global0.a.x)), global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(global0.b.a.x, 20u)], -1474f))), _wgslsmith_f_op_f32(func_3(u_input.a))), func_2(Struct_3(u_input.d.x, global0.b, 57640i), func_2(global2[_wgslsmith_index_u32(func_2(Struct_3(global0.b.a.x, global0.b, u_input.c), global0.b.b.xy).a.x, 21u)], vec2<bool>(global0.b.b.x, global0.b.b.x)).b.yz)));
    global0 = func_4(global0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c << (_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(4294967295u, global0.b.a.x, arg_0, arg_0)) % 32u), reverseBits(u_input.c), -firstLeadingBit(-1i)), _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.b.x, -35831i, u_input.c), vec3<i32>(u_input.c & u_input.c, ~u_input.c, firstLeadingBit(2147483647i)))), func_4(func_4(func_4(func_4(Struct_1(vec2<u32>(u_input.d.x, 0u), vec3<bool>(true, true, global0.b.b.x)), u_input.a, Struct_2(vec4<f32>(401f, global1[_wgslsmith_index_u32(arg_0, 20u)], -349f, 1164f), Struct_1(u_input.d.xy, vec3<bool>(false, true, true)))).b, min(-46255i, u_input.c), Struct_2(vec4<f32>(-381f, -698f, -253f, global1[_wgslsmith_index_u32(global0.b.a.x, 20u)]), global0.b)).b, 61519i, Struct_2(_wgslsmith_f_op_vec4_f32(sign(global0.a)), func_2(global2[_wgslsmith_index_u32(arg_0, 21u)], global0.b.b.yx))).b, -25924i, func_4(global0.b, -select(u_input.a, u_input.a, true), func_4(Struct_1(vec2<u32>(global0.b.a.x, 74185u), global0.b.b), -1762i, Struct_2(vec4<f32>(global0.a.x, global1[_wgslsmith_index_u32(41684u, 20u)], var_0.x, global0.a.x), global0.b)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1449f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.a.x + global0.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(64848i)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-1388f, _wgslsmith_f_op_f32(round(global0.a.x))))))) * global0.a);
    global2 = array<Struct_3, 21>();
    return func_4(global0.b, firstTrailingBit(-1i), func_4(global0.b, u_input.a, Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.a.x, global0.a.x, -609f, 2399f)))), func_4(func_2(global2[_wgslsmith_index_u32(8235u, 21u)], global0.b.b.xy), u_input.a << (global0.b.a.x % 32u), Struct_2(global0.a, global0.b)).b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (true | (all(!global0.b.b) | false)) | (!(!global0.b.b.x) | !global0.b.b.x);
    global0 = func_1(~(~(global0.b.a.x << (global0.b.a.x % 32u))) & _wgslsmith_dot_vec3_u32(u_input.d.yxx, ~vec3<u32>(global0.b.a.x, 8982u, global0.b.a.x) & u_input.d.yzz));
    var var_1 = !func_4(func_2(Struct_3(4294967295u, func_2(Struct_3(46505u, global0.b, u_input.b.x), global0.b.b.yy), abs(0i)), global0.b.b.xz), u_input.a, func_4(func_4(global0.b, _wgslsmith_sub_i32(u_input.b.x, u_input.a), Struct_2(global0.a, Struct_1(vec2<u32>(41629u, global0.b.a.x), vec3<bool>(true, true, global0.b.b.x)))).b, _wgslsmith_mult_i32(u_input.a, ~u_input.b.x), Struct_2(_wgslsmith_f_op_vec4_f32(max(global0.a, vec4<f32>(-1561f, global0.a.x, 972f, -452f))), Struct_1(global0.b.a, vec3<bool>(global0.b.b.x, var_0, global0.b.b.x))))).b.b.xx;
    let var_2 = func_1(60528u).a.x;
    global0 = Struct_2(global0.a, func_4(Struct_1(~(~vec2<u32>(45109u, u_input.d.x)), global0.b.b), u_input.b.x, Struct_2(vec4<f32>(1831f, _wgslsmith_div_f32(global1[_wgslsmith_index_u32(21929u, 20u)], -126f), -994f, _wgslsmith_f_op_f32(abs(var_2))), Struct_1(global0.b.a, func_1(u_input.d.x).b.b))).b);
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.a, global0.a.zy);
}

