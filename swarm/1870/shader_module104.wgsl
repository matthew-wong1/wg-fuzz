struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec4<i32>,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29> = array<u32, 29>(4294967295u, 67673u, 32195u, 10853u, 955u, 31381u, 30744u, 0u, 1u, 1u, 7040u, 77024u, 90400u, 27122u, 28645u, 43643u, 1u, 1u, 4294967295u, 8527u, 4294967295u, 4294967295u, 141853u, 0u, 0u, 3918u, 4294967295u, 4294967295u, 15465u);

var<private> global1: array<Struct_2, 15>;

var<private> global2: array<vec2<f32>, 17>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> bool {
    let var_0 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~((_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 48870u, 17798u, global0[_wgslsmith_index_u32(4294967295u, 29u)]), vec4<u32>(1u, global0[_wgslsmith_index_u32(1957u, 29u)], arg_2, u_input.a.x)), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(15997u, 29u)], arg_2)) | global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~30035u, arg_2), 29u)]) | ~(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.a.x), u_input.a) << (arg_2 % 32u))), 29u)], 15u)];
    global1 = array<Struct_2, 15>();
    var var_1 = arg_1.a;
    let var_2 = (~1i < _wgslsmith_div_i32(_wgslsmith_div_i32(min(var_0.c.x, arg_1.a), arg_1.a), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a, 2147483647i, arg_1.e, 15367i), arg_1.c), ~48169i))) && all(!(!vec3<bool>(arg_1.b.x, arg_1.d.x, arg_0.b.x)));
    let var_3 = ~(~(~0u));
    return arg_1.d.x;
}

fn func_2(arg_0: i32) -> i32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-410f, 393f, false)), -1449f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1479f, _wgslsmith_f_op_f32(round(783f))) + 2054f)), Struct_1(min(~(arg_0 ^ u_input.d.x), abs(min(arg_0, 33291i))), select(vec3<bool>(true, all(vec4<bool>(false, false, true, true)), true), vec3<bool>(true, false, func_3(Struct_1(-1i, vec3<bool>(false, false, true), u_input.d, vec3<bool>(false, false, false), -15307i), Struct_1(u_input.b.x, vec3<bool>(true, true, false), vec4<i32>(-1i, arg_0, 2147483647i, arg_0), vec3<bool>(true, true, false), u_input.d.x), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(57071u, 29u)], 29u)])), true), u_input.d, select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), all(vec3<bool>(true, false, true))), true), u_input.d.x), vec4<f32>(-230f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-494f + 161f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-170f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -145f), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-448f, 326f)))), -132f), Struct_1(-28702i, !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), any(vec4<bool>(true, false, true, true))), vec4<i32>(u_input.d.x, _wgslsmith_div_i32(~u_input.d.x, _wgslsmith_sub_i32(-39314i, -46299i)), -2465i, 1i), vec3<bool>(false, false, true), 1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1570f) - -298f));
    var var_1 = vec3<i32>(u_input.b.x, u_input.c, -_wgslsmith_add_i32(firstLeadingBit(var_0.d.c.x) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(69422u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)], 1u, 86772u), vec4<u32>(31943u, 0u, 4294967295u, 4294967295u)) % 32u), (arg_0 & arg_0) ^ arg_0));
    var_1 = -vec3<i32>(reverseBits(u_input.b.x), var_0.b.e, _wgslsmith_mult_i32(1i, ~var_0.b.c.x)) >> (max(u_input.a, ~u_input.a) % vec3<u32>(32u));
    var var_2 = global1[_wgslsmith_index_u32(countOneBits(abs(~36872u)) & _wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_sub_u32(u_input.a.x, ~global0[_wgslsmith_index_u32(1u, 29u)])), global0[_wgslsmith_index_u32(1u, 29u)]), 15u)];
    let var_3 = -1i;
    return abs(min(countOneBits(_wgslsmith_add_i32(var_3, 1i)), ~(-2147483647i ^ _wgslsmith_mult_i32(29203i, arg_0))));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    global2 = array<vec2<f32>, 17>();
    var var_0 = func_2(-25957i);
    var var_1 = Struct_2(Struct_1(~(arg_3.c.x | -u_input.d.x), vec3<bool>(true, true, true), ~select(-vec4<i32>(56064i, u_input.b.x, -1i, arg_1.x), select(vec4<i32>(u_input.d.x, arg_3.c.x, arg_3.c.x, u_input.b.x), vec4<i32>(arg_1.x, u_input.c, arg_3.c.x, 54418i), arg_3.b.x), !vec4<bool>(arg_3.d.x, arg_3.b.x, arg_3.d.x, arg_3.d.x)), select(vec3<bool>(!arg_3.b.x, !arg_3.d.x, true), vec3<bool>(!arg_3.d.x, true, true), true), 0i), 0i & (i32(-1i) * -(4861i >> (global0[_wgslsmith_index_u32(u_input.a.x, 29u)] % 32u))), select(arg_3.c >> (vec4<u32>(min(62373u, u_input.a.x), 16863u, ~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(43689u, 47148u, 1u), u_input.a)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 3372i, -14805i, 12624i) >> (vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(4294967295u, 29u)], 4294967295u, 0u) % vec4<u32>(32u)), -vec4<i32>(8449i, 58160i, 762i, arg_1.x)), false), firstTrailingBit(reverseBits(abs(arg_3.c))), reverseBits(_wgslsmith_add_vec3_u32(u_input.a, ~vec3<u32>(10079u, global0[_wgslsmith_index_u32(4294967295u, 29u)], 53678u)) << (u_input.a % vec3<u32>(32u))));
    var_0 = max(_wgslsmith_mult_i32(firstLeadingBit(arg_1.x) >> (19134u % 32u), firstTrailingBit(-70776i)) | 2147483647i, -23787i);
    global1 = array<Struct_2, 15>();
    return Struct_1(_wgslsmith_sub_i32(2157i, ~(-_wgslsmith_mod_i32(u_input.c, -8274i))), select(select(!var_1.a.b, vec3<bool>(true || arg_3.b.x, func_3(var_1.a, Struct_1(1i, var_1.a.b, u_input.d, arg_3.b, arg_3.a), 7209u), true), vec3<bool>(true, false, arg_3.b.x || true)), arg_3.d, true), vec4<i32>(-1i) * -min(var_1.d, vec4<i32>(-50861i, 2147483647i, -2147483647i, var_1.d.x)), vec3<bool>(true, false, !((4294967295u > u_input.a.x) || all(vec2<bool>(false, true)))), _wgslsmith_div_i32(-abs(_wgslsmith_mult_i32(-2147483647i, -1i)), abs(_wgslsmith_add_i32(var_1.c.x, -1i))));
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> bool {
    global1 = array<Struct_2, 15>();
    global2 = array<vec2<f32>, 17>();
    var var_0 = abs(global0[_wgslsmith_index_u32(~4294967295u, 29u)]) & u_input.a.x;
    var var_1 = global1[_wgslsmith_index_u32(~24204u, 15u)];
    let var_2 = Struct_1(44394i, vec3<bool>(any(var_1.a.b), !func_3(Struct_1(arg_0.d.a, vec3<bool>(arg_0.b.b.x, var_1.a.b.x, true), vec4<i32>(-2147483647i, 1i, 0i, arg_0.d.c.x), var_1.a.d, u_input.b.x), func_1(u_input.d.x, var_1.d.ww, arg_0.c.x, Struct_1(15891i, var_1.a.b, vec4<i32>(arg_1, u_input.c, -1i, 1i), vec3<bool>(false, arg_0.b.b.x, true), 2147483647i)), global0[_wgslsmith_index_u32(0u, 29u)]), false), func_1(arg_1, vec2<i32>(u_input.c, 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), var_1.a).c, !select(arg_0.d.d, var_1.a.d, true), ~_wgslsmith_sub_i32(arg_1, max(i32(-1i) * -2147483647i, ~var_1.b)));
    return all(arg_0.d.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_4(Struct_3(-1000f, func_1(31845i, -vec2<i32>(u_input.b.x, 12737i), _wgslsmith_f_op_f32(f32(-1f) * -2857f), Struct_1(62882i, vec3<bool>(true, true, false), u_input.d, vec3<bool>(true, true, true), 1i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(759f, 1406f, -1103f, -880f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(856f, 458f, -1000f, 129f))), Struct_1(~0i, vec3<bool>(false, false, true), _wgslsmith_clamp_vec4_i32(u_input.d, vec4<i32>(u_input.c, 29850i, u_input.d.x, 5500i), u_input.d), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), -1i ^ u_input.b.x), -1344f), _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(-10710i, 0i), -1i), 43875i, ~(-u_input.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~global0[_wgslsmith_index_u32(4294967295u, 29u)] & abs(~global0[_wgslsmith_index_u32(u_input.a.x, 29u)] & countOneBits(u_input.a.x)), ~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(61475u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(46282u, 29u)], 29u)]) & _wgslsmith_dot_vec2_u32(u_input.a.zx, u_input.a.yz), 29u)] & ~global0[_wgslsmith_index_u32(4294967295u, 29u)]);
}

