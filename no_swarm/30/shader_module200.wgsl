struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec4<f32>,
    d: vec3<u32>,
    e: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_1, 21>;

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(false, 0u, vec4<bool>(true, false, true, true), 701f), Struct_1(true, 4294967295u, vec4<bool>(true, false, false, true), 671f), Struct_1(false, 66343u, vec4<bool>(true, false, true, true), 1674f), Struct_1(false, 1u, vec4<bool>(true, false, true, false), 1481f), Struct_1(true, 0u, vec4<bool>(true, true, false, false), 744f), Struct_1(true, 58787u, vec4<bool>(false, true, false, false), -104f), Struct_1(true, 1u, vec4<bool>(true, false, true, false), 1000f), Struct_1(false, 53968u, vec4<bool>(true, true, false, true), -500f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: Struct_5) -> vec4<bool> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.d.a.d + 1787f), -513f) >= 1f;
    var var_1 = abs(arg_2.d.a.b);
    var var_2 = ~arg_1.x;
    let var_3 = _wgslsmith_mod_i32(~(i32(-1i) * -(arg_2.a << (2528u % 32u))), abs(arg_2.a));
    let var_4 = _wgslsmith_dot_vec2_u32(arg_2.b.b.yx >> (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, arg_0.a.b.x), arg_0.a.b.zy) % vec2<u32>(32u)), vec2<u32>(arg_2.d.b.x, ~countOneBits(arg_2.c.b))) <= u_input.a.x;
    return !select(select(!select(vec4<bool>(var_4, arg_2.c.c.x, true, var_0), arg_0.b.c.a.c, arg_0.b.b.c.x), select(arg_2.b.a.c, !vec4<bool>(true, false, var_0, arg_2.c.a), var_0), vec4<bool>(all(vec3<bool>(arg_2.b.d.x, var_0, false)), true, false, all(arg_0.b.c.a.c))), arg_2.b.a.c, true);
}

fn func_2() -> Struct_3 {
    global1 = array<Struct_1, 21>();
    global0 = ~_wgslsmith_mod_vec2_i32(select(select(vec2<i32>(global0.x, global0.x) ^ vec2<i32>(0i, -34438i), _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.x, -1i), vec2<i32>(global0.x, -9491i), vec2<i32>(-1i, -1i)), vec2<bool>(true, false)), vec2<i32>(global0.x, 44151i ^ global0.x), vec2<bool>(false, true)), vec2<i32>(~(-2147483647i), ~max(global0.x, global0.x)));
    let var_0 = Struct_5(global0.x, Struct_2(global1[_wgslsmith_index_u32(~countOneBits(u_input.a.x), 21u)], vec3<u32>(~u_input.a.x, 68532u, ~u_input.a.x), 1u, func_3(Struct_4(Struct_2(Struct_1(false, u_input.a.x, vec4<bool>(false, true, true, false), 918f), vec3<u32>(1u, u_input.a.x, 39264u), u_input.a.x, vec4<bool>(false, false, true, false)), Struct_3(4294967295u, Struct_1(true, 1u, vec4<bool>(true, false, true, false), 1000f), Struct_2(global2[_wgslsmith_index_u32(u_input.a.x, 8u)], vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), 45531u, vec4<bool>(true, false, true, false)), u_input.a.yyx), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(936f, 1379f, 742f, 264f))), ~vec3<u32>(u_input.a.x, 0u, 0u), Struct_2(Struct_1(true, 23173u, vec4<bool>(false, false, true, false), -102f), vec3<u32>(u_input.a.x, u_input.a.x, 12188u), 23390u, vec4<bool>(true, false, true, false))), -vec2<i32>(global0.x, 41020i), Struct_5(~0i, Struct_2(Struct_1(false, 21057u, vec4<bool>(true, true, false, false), 227f), u_input.a.xzx, 1u, vec4<bool>(true, true, true, true)), global1[_wgslsmith_index_u32(0u, 21u)], Struct_2(Struct_1(false, 22541u, vec4<bool>(false, true, true, false), -1000f), u_input.a.xxy, 4294967295u, vec4<bool>(true, false, true, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1226f, -1122f, -1000f))))), global1[_wgslsmith_index_u32(1u, 21u)], Struct_2(Struct_1(any(vec3<bool>(true, true, true)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, 1u, 0u), u_input.a.x), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(1367f - -325f)), u_input.a.zxy, ~0u, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(false, true, false)), true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(923f, -2592f, -1102f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, -764f, -747f), vec3<f32>(-627f, -138f, -2378f))), select(false, false, true)))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-595f - 907f)))) + 141f));
    var var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(-(global0.x ^ 16667i), global0.x, i32(-1i) * -20857i), -(-vec3<i32>(44347i, var_0.a, var_0.a) & countOneBits(vec3<i32>(global0.x, -33033i, 0i)))) << (u_input.a.wwz % vec3<u32>(32u));
    return Struct_3(var_0.b.a.b, Struct_1(false, countOneBits(0u), !var_0.c.c, 1201f), var_0.b, var_0.b.b);
}

fn func_1() -> vec2<f32> {
    global1 = array<Struct_1, 21>();
    global2 = array<Struct_1, 8>();
    let var_0 = global2[_wgslsmith_index_u32(1u, 8u)];
    var var_1 = func_2();
    var_1 = func_2();
    return vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d), -548f), var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -24332i;
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(401f, 827f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-580f, 181f) - vec2<f32>(-1974f, 1000f)), true)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-919f, -1646f))), _wgslsmith_f_op_vec2_f32(func_1()))), -1604f == _wgslsmith_f_op_f32(select(135f, -1620f, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(705f, 1000f))))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-618f, 908f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-631f, -1000f) * vec2<f32>(1648f, 652f))))))));
    var var_2 = Struct_4(func_2().c, Struct_3(select(_wgslsmith_dot_vec3_u32(countOneBits(u_input.a.wzw), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 22532u), u_input.a.yxz)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, 39109u), vec3<u32>(0u, u_input.a.x, u_input.a.x)), 4294967295u), (-1i >> (0u % 32u)) > (var_0 ^ global0.x)), global1[_wgslsmith_index_u32(~u_input.a.x, 21u)], Struct_2(func_2().c.a, vec3<u32>(~u_input.a.x, ~u_input.a.x, ~u_input.a.x), u_input.a.x, vec4<bool>(true, true, true, true)), reverseBits(select(u_input.a.zxz, vec3<u32>(1u, 0u, u_input.a.x), any(vec4<bool>(true, false, true, true))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1544f), -1035f))), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1001f + _wgslsmith_f_op_f32(var_1.x + var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x) - _wgslsmith_f_op_f32(-1269f * -1135f)))), abs((u_input.a.wzx << ((u_input.a.yxw << (u_input.a.zwy % vec3<u32>(32u))) % vec3<u32>(32u))) & firstLeadingBit(vec3<u32>(0u, 0u, u_input.a.x))), func_2().c);
    var var_3 = var_2.a;
    var var_4 = countOneBits(-1i);
    var_2 = Struct_4(Struct_2(func_2().b, vec3<u32>(1u, 79886u, firstLeadingBit(var_2.d.x)) << (vec3<u32>(~9116u, _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), ~var_3.b.x) % vec3<u32>(32u)), max(~(~var_2.d.x), ~42865u), !(!vec4<bool>(var_3.a.c.x, var_2.a.d.x, var_3.a.a, false))), Struct_3(1u, func_2().c.a, Struct_2(Struct_1(false, u_input.a.x, !vec4<bool>(var_2.a.d.x, var_2.e.d.x, false, false), _wgslsmith_f_op_f32(f32(-1f) * -1600f)), vec3<u32>(var_3.a.b, func_2().d.x, 0u), ~86912u, !(!var_2.a.a.c)), firstTrailingBit(u_input.a.yyw)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(1724f, -197f), _wgslsmith_f_op_f32(step(-581f, var_2.a.a.d)), -281f, var_2.b.c.a.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.c)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.c) - var_2.c)), vec3<u32>(func_2().d.x, var_2.d.x, 0u | u_input.a.x), Struct_2(Struct_1(true, ~4294967295u | ~var_2.a.a.b, func_3(Struct_4(var_2.a, var_2.b, vec4<f32>(134f, -1567f, 840f, -1267f), var_2.b.c.b, Struct_2(Struct_1(var_3.d.x, 4294967295u, vec4<bool>(var_2.a.d.x, false, false, false), -621f), vec3<u32>(u_input.a.x, var_2.e.a.b, 1u), u_input.a.x, vec4<bool>(var_3.a.a, var_3.d.x, var_3.a.c.x, false))), min(vec2<i32>(-2783i, var_0), vec2<i32>(var_0, -15267i)), Struct_5(17410i, Struct_2(Struct_1(var_2.e.d.x, u_input.a.x, vec4<bool>(true, false, true, false), 742f), u_input.a.zwz, var_2.a.c, vec4<bool>(true, var_3.d.x, true, false)), global1[_wgslsmith_index_u32(var_3.b.x, 21u)], Struct_2(global1[_wgslsmith_index_u32(4294967295u, 21u)], var_3.b, 21477u, vec4<bool>(var_3.d.x, false, false, var_2.a.a.a)), var_2.c.xzy)), 1450f), var_3.b, _wgslsmith_add_u32(~var_2.d.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.a.a.b, u_input.a.x, 21543u, 0u), _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(var_3.a.b, 45195u, 0u, u_input.a.x)))), !vec4<bool>(true, var_3.a.a, false, var_2.a.d.x)));
    let var_5 = !(51807u >= max(~(~u_input.a.x), _wgslsmith_mod_u32(select(0u, 1u, var_3.a.c.x), ~var_3.c)));
    let var_6 = ~(_wgslsmith_clamp_i32(_wgslsmith_div_i32(var_0, -73061i), var_0, ~1i) | -2147483647i) << (var_2.e.a.b % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(func_1()).x, _wgslsmith_f_op_f32(var_3.a.d * var_2.a.a.d), vec3<i32>(abs(_wgslsmith_clamp_i32(59322i, -76043i, _wgslsmith_clamp_i32(var_6, 7343i, -1648i))), abs(abs(_wgslsmith_add_i32(var_6, global0.x))), firstLeadingBit(-1i)), var_6, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_2.c)) * var_2.c) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, -813f, var_3.a.d, -332f), var_2.c)), _wgslsmith_f_op_vec4_f32(trunc(var_2.c)), true))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.c) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1303f, 1086f, -912f, 254f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-567f, -1272f, 754f, 375f), vec4<f32>(1733f, -729f, 1167f, 1721f), vec4<bool>(true, false, true, true)))))));
}

