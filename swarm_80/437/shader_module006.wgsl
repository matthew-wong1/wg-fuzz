struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_1,
    d: vec2<u32>,
    e: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

var<private> global1: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(vec4<bool>(false, false, false, true), Struct_2(Struct_1(vec3<bool>(false, true, false), 862f), Struct_1(vec3<bool>(true, false, true), -240f), Struct_1(vec3<bool>(false, false, true), 2597f), 55125i), Struct_1(vec3<bool>(true, true, false), 313f), vec2<u32>(108973u, 56910u), 2147483647i));

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<bool>(true, true, false), 312f), Struct_1(vec3<bool>(false, true, false), -1469f), Struct_1(vec3<bool>(true, true, true), -1685f), 2147483647i);

var<private> global3: Struct_4 = Struct_4(-774f, Struct_1(vec3<bool>(true, false, false), 1846f), true, -6079i);

var<private> global4: vec3<f32> = vec3<f32>(604f, 344f, 1392f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1() -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global4.x, global2.a.b, global2.c.b) + vec4<f32>(453f, global4.x, global4.x, global2.b.b)) * vec4<f32>(-1133f, global3.b.b, global3.b.b, global2.b.b)), vec4<f32>(_wgslsmith_f_op_f32(-global3.a), -872f, _wgslsmith_f_op_f32(select(312f, 651f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1292f)), (u_input.b ^ 0u) >= _wgslsmith_sub_u32(u_input.b, u_input.b)))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a, global3.b.b, 1000f, -1678f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(398f, global2.a.b, global2.b.b, -1004f), vec4<f32>(global4.x, global3.a, global2.a.b, -1296f), global3.c))))))));
}

fn func_3() -> vec3<bool> {
    global2 = Struct_2(global2.b, global3.b, Struct_1(!select(!vec3<bool>(false, global2.c.a.x, global2.c.a.x), global3.b.a, true), _wgslsmith_f_op_vec4_f32(func_1()).x), _wgslsmith_add_i32(_wgslsmith_add_i32(~32549i, 6910i | u_input.a) >> (u_input.b % 32u), -2147483647i));
    global0 = array<bool, 29>();
    global0 = array<bool, 29>();
    global2 = Struct_2(Struct_1(global2.c.a, 1290f), global3.b, global3.b, u_input.a << (abs(u_input.b) % 32u));
    global3 = Struct_4(global4.x, Struct_1(vec3<bool>(true, global2.a.a.x, false), global2.a.b), all(vec4<bool>(global2.b.a.x, true, global0[_wgslsmith_index_u32(70267u, 29u)], true)), firstTrailingBit(abs(-_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.a, -1i), vec4<i32>(u_input.a, global2.d, 0i, 1i)))));
    return vec3<bool>(select(false, global2.a.a.x, ~5672u == ((4294967295u >> (u_input.c % 32u)) << ((u_input.b | 14228u) % 32u))), !all(global2.a.a.yz), true);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2) -> u32 {
    var var_0 = vec4<i32>(i32(-1i) * -51118i, ~reverseBits(-(~u_input.a)), ~select(-(41336i & arg_1.d), 1i, false), ~(-21923i));
    var_0 = ((abs(max(vec4<i32>(global2.d, arg_1.d, u_input.a, u_input.a), vec4<i32>(8867i, global2.d, global2.d, -18147i))) & _wgslsmith_sub_vec4_i32(vec4<i32>(-47464i, arg_1.d, 0i, global2.d), abs(vec4<i32>(global3.d, arg_1.d, global3.d, 0i)))) >> (~arg_0 % vec4<u32>(32u))) & ~_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_0.x, arg_1.d, global2.d, 1i), _wgslsmith_sub_vec4_i32(select(vec4<i32>(-23936i, 28808i, -6165i, -1i), vec4<i32>(-2147483647i, 1i, 2524i, 42252i), false), abs(vec4<i32>(-23163i, -1i, -26439i, 2147483647i))));
    global2 = Struct_2(Struct_1(global2.a.a, 1935f), global3.b, Struct_1(func_3(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-146f)))), (select(~(-2147483647i), max(var_0.x, global3.d), select(arg_1.a.a.x, global0[_wgslsmith_index_u32(u_input.b, 29u)], true)) << (u_input.c % 32u)) << (((arg_0.x << (firstTrailingBit(u_input.c) % 32u)) >> (u_input.b % 32u)) % 32u));
    global3 = Struct_4(arg_1.b.b, Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.x, 32236u, 4294967295u), 29u)], !arg_1.a.a.x, true), _wgslsmith_f_op_vec4_f32(func_1()).x), !all(select(global2.c.a.xx, vec2<bool>(global3.c, global3.b.a.x), vec2<bool>(arg_1.a.a.x, true))), -reverseBits(_wgslsmith_mod_i32(u_input.a, max(-50319i, 10589i))));
    global0 = array<bool, 29>();
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_1()), vec4<f32>(-1209f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_1()).x - 210f)), -1025f, _wgslsmith_f_op_f32(trunc(global3.b.b))), 1u <= _wgslsmith_mod_u32(~func_2(vec4<u32>(58406u, 80670u, 38686u, 4294967295u), Struct_2(Struct_1(vec3<bool>(global3.c, global3.c, global3.b.a.x), -759f), Struct_1(vec3<bool>(global2.a.a.x, true, false), global3.a), Struct_1(global2.a.a, global2.c.b), 4812i)), ~(u_input.b << (0u % 32u)))));
    var var_1 = _wgslsmith_f_op_f32(var_0.x + global4.x);
    let var_2 = Struct_2(global3.b, Struct_1(select(vec3<bool>(!global2.a.a.x, global0[_wgslsmith_index_u32(firstLeadingBit(1u), 29u)], global0[_wgslsmith_index_u32(~4294967295u, 29u)]), func_3(), global2.b.a), _wgslsmith_f_op_f32(-global4.x)), global3.b, u_input.a);
    let var_3 = Struct_5(Struct_1(global2.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(107f * var_2.a.b))))), Struct_4(-307f, Struct_1(!func_3(), global2.c.b), global3.b.a.x, -(~_wgslsmith_add_i32(global2.d, var_2.d))), ~(~(-_wgslsmith_add_vec2_i32(vec2<i32>(1i, 4792i), vec2<i32>(var_2.d, u_input.a)))));
    var var_4 = Struct_5(global2.a, var_3.b, max(min(_wgslsmith_add_vec2_i32(var_3.c, var_3.c), vec2<i32>(firstLeadingBit(var_3.c.x), var_3.c.x)), vec2<i32>(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.d, u_input.a, u_input.a), vec3<i32>(global3.d, var_3.b.d, global3.d))), 0i)));
    var var_5 = Struct_3(vec4<bool>(!(u_input.b != _wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.c)), global0[_wgslsmith_index_u32(22962u, 29u)], var_3.a.a.x && true, global0[_wgslsmith_index_u32(u_input.b, 29u)]), Struct_2(Struct_1(vec3<bool>(true, !var_2.a.a.x, global3.b.b >= global4.x), 1f), Struct_1(global2.b.a, _wgslsmith_f_op_f32(428f - -1703f)), var_3.b.b, select(i32(-1i) * -5663i, ~(-2147483647i), -127f <= var_3.a.b)), var_4.a, ~(~(~vec2<u32>(0u, u_input.c))) << (~select(~vec2<u32>(64320u, u_input.c), vec2<u32>(31626u, 1u), true) % vec2<u32>(32u)), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.x, 1u);
}

