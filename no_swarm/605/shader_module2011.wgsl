struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: i32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(12815i, -34650i, 2147483647i, -10063i, i32(-2147483648), 1i, 8847i, -53831i, -1i, 2147483647i, 19669i, 41540i, -26490i, 12167i, i32(-2147483648), i32(-2147483648), 5026i, 36536i, 0i, 2147483647i, 39962i, 1i, i32(-2147483648), 0i);

var<private> global1: i32;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: u32) -> vec4<bool> {
    let var_0 = vec4<bool>((max(~arg_1.a.b.d, global0[_wgslsmith_index_u32(arg_2, 24u)] | 5179i) | _wgslsmith_div_i32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_1.b, vec4<u32>(15951u, 39025u, 1u, 0u)), 24u)], global0[_wgslsmith_index_u32(21374u << (arg_2 % 32u), 24u)])) < 12615i, arg_1.d.b.b.x, true, arg_1.d.b.b.x);
    global0 = array<i32, 24>();
    let var_1 = -384f;
    global0 = array<i32, 24>();
    let var_2 = vec2<bool>(arg_1.a.b.b.x, _wgslsmith_f_op_f32(step(-712f, 1325f)) != _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x))));
    return vec4<bool>(false, any(vec3<bool>(!(!arg_1.d.b.b.x), true || arg_1.d.a.x, _wgslsmith_add_u32(arg_1.a.b.a, 9068u) < firstLeadingBit(arg_2))), arg_1.a.a.x, var_0.x);
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> i32 {
    global1 = 1i;
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), -678f)));
    let var_1 = Struct_2(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(257f, 1118f, -322f, 1322f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-440f, 1000f, arg_1, -1714f)), arg_0.e || arg_0.b.x))), Struct_3(Struct_2(select(vec4<bool>(arg_0.b.x, arg_0.e, arg_0.e, false), vec4<bool>(true, arg_0.e, arg_0.e, true), vec4<bool>(arg_0.e, true, false, arg_0.b.x)), arg_0, vec2<f32>(1f, 1f)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a, 5582u, 99986u, 4294967295u), vec4<u32>(25450u, 1u, arg_0.a, 4294967295u)), countOneBits(~arg_0.a), Struct_2(vec4<bool>(false, arg_0.b.x, false, true), arg_0, vec2<f32>(var_0.x, arg_1))), 0u), arg_0, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -906f) * vec2<f32>(310f, 1009f)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, -2443f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -1830f) - vec2<f32>(-356f, 858f))))));
    let var_2 = Struct_3(Struct_2(!(!func_3(vec4<f32>(var_0.x, var_0.x, var_1.c.x, 289f), Struct_3(var_1, vec4<u32>(111599u, 1u, 0u, arg_0.a), 0u, var_1), var_1.b.a)), Struct_1(45156u, select(vec2<bool>(true, arg_0.b.x), select(arg_0.b, arg_0.b, vec2<bool>(var_1.a.x, true)), select(vec2<bool>(true, false), arg_0.b, var_1.a.x)), ~(-28304i), i32(-1i) * -arg_0.d, true), _wgslsmith_div_vec2_f32(var_1.c, _wgslsmith_f_op_vec2_f32(-var_1.c))), abs(~(~firstTrailingBit(vec4<u32>(arg_0.a, var_1.b.a, 40158u, 16319u)))), ~4540u, var_1);
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1565f, var_1.c.x), vec2<f32>(469f, 1090f), arg_0.b)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(var_1.c, vec2<f32>(var_2.a.c.x, var_0.x)))), select(!arg_0.b, var_1.b.b, -737f >= arg_1))))));
    return _wgslsmith_div_i32(5860i, ~(-(~firstTrailingBit(arg_0.d))));
}

fn func_1() -> vec4<bool> {
    let var_0 = -2073f;
    var var_1 = Struct_3(Struct_2(!vec4<bool>(select(true, true, true), true, false, true), Struct_1(0u, vec2<bool>(true, false), func_2(Struct_1(12550u, vec2<bool>(false, false), global0[_wgslsmith_index_u32(15085u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], false), _wgslsmith_f_op_f32(-var_0)), min(-global0[_wgslsmith_index_u32(1u, 24u)], -u_input.a), select(true, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 1627f), vec2<f32>(531f, -1613f))) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-864f, var_0)))))), select(select(vec4<u32>(1u, 1u, 1u, 1u), abs(vec4<u32>(76726u, 79741u, 1u, 58932u)), vec4<bool>(true, true, true, true)) | firstTrailingBit(vec4<u32>(25831u, 18588u, 28943u, 27727u)), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(55691u, 4294967295u, 2748u, 20630u))), true), firstLeadingBit(1u), Struct_2(vec4<bool>(all(vec4<bool>(true, true, true, false)), true, _wgslsmith_f_op_f32(-1050f * 663f) != _wgslsmith_f_op_f32(max(var_0, 613f)), true), Struct_1(~25691u, select(vec2<bool>(true, false), vec2<bool>(true, true), all(vec3<bool>(true, true, false))), _wgslsmith_mult_i32(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(45067u, 24u)], 22192i), 15988i | global0[_wgslsmith_index_u32(1u, 24u)]), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(-30717i, global0[_wgslsmith_index_u32(54713u, 24u)], 3745i)), -vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(0u, 24u)], u_input.a)), true), _wgslsmith_div_vec2_f32(vec2<f32>(var_0, var_0), vec2<f32>(_wgslsmith_f_op_f32(-var_0), -383f))));
    let var_2 = var_1.a;
    let var_3 = select(!(!var_2.a), var_1.d.a, vec4<bool>(any(!(!var_1.d.a.zzw)), false, false, true));
    let var_4 = var_3.x;
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(select(vec4<bool>(true, true, true, true), !select(func_1(), vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false))), any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), true))), Struct_1(_wgslsmith_mult_u32(1u, reverseBits(~65061u)), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1209f, -1145f, -1000f, 392f)), Struct_3(Struct_2(vec4<bool>(false, false, false, true), Struct_1(33042u, vec2<bool>(false, false), global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(43335u, 24u)], false), vec2<f32>(-304f, 207f)), vec4<u32>(1u, 1u, 1u, 1u), 1u, Struct_2(vec4<bool>(true, false, true, false), Struct_1(4214u, vec2<bool>(false, true), 10777i, 1i, false), vec2<f32>(1797f, 120f))), _wgslsmith_div_u32(~0u, 1u)).yz, u_input.a, -_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(61940u, 24u)], u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(30118i, 16987i, global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(90518u, 24u)]), vec4<i32>(global0[_wgslsmith_index_u32(26353u, 24u)], global0[_wgslsmith_index_u32(62480u, 24u)], -1i, u_input.a), vec4<i32>(4560i, 33983i, u_input.a, u_input.a))), any(vec4<bool>(true, true, true, true))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(558f, 172f) * _wgslsmith_f_op_f32(ceil(1927f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-440f, -2070f))))));
    var var_1 = Struct_2(vec4<bool>(var_0.b.b.x, var_0.b.e | false, false, !(!var_0.a.x)), Struct_1(var_0.b.a, select(!vec2<bool>(var_0.a.x, var_0.a.x), func_3(vec4<f32>(600f, var_0.c.x, var_0.c.x, var_0.c.x), Struct_3(Struct_2(vec4<bool>(false, var_0.a.x, true, var_0.b.e), var_0.b, vec2<f32>(1091f, 655f)), vec4<u32>(4294967295u, 4294967295u, 48043u, 22280u), var_0.b.a, Struct_2(vec4<bool>(false, true, var_0.b.e, false), Struct_1(var_0.b.a, var_0.b.b, var_0.b.d, -28158i, var_0.a.x), var_0.c)), var_0.b.a).yx, func_1().xy), var_0.b.c & (-2147483647i << (_wgslsmith_mult_u32(var_0.b.a, 0u) % 32u)), 2147483647i, true), vec2<f32>(1f, 1254f));
    let var_2 = Struct_3(Struct_2(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, var_1.c.x, var_0.c.x, -1000f) + vec4<f32>(var_1.c.x, -1168f, var_1.c.x, -1404f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(852f, -457f, var_0.c.x, -1139f) - vec4<f32>(802f, -1465f, var_1.c.x, -1651f))), Struct_3(Struct_2(var_0.a, var_0.b, vec2<f32>(1000f, var_1.c.x)), countOneBits(vec4<u32>(var_1.b.a, var_0.b.a, 37198u, 1u)), 36912u, Struct_2(vec4<bool>(var_0.b.b.x, true, true, true), Struct_1(0u, var_1.b.b, 1i, 2147483647i, var_0.a.x), vec2<f32>(var_1.c.x, 1000f))), 0u >> (var_1.b.a % 32u)), var_0.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-391f)), _wgslsmith_f_op_f32(var_0.c.x * var_0.c.x)) * vec2<f32>(_wgslsmith_f_op_f32(-1295f * 115f), _wgslsmith_f_op_f32(var_0.c.x - 615f)))), vec4<u32>(var_1.b.a, var_0.b.a, var_0.b.a, abs(reverseBits(var_0.b.a | var_1.b.a))), ~(~var_0.b.a), Struct_2(var_1.a, var_0.b, _wgslsmith_f_op_vec2_f32(-var_1.c)));
    var var_3 = var_1.b.b;
    var_1 = Struct_2(vec4<bool>(false, all(var_0.a.ww), func_3(vec4<f32>(_wgslsmith_f_op_f32(-1224f - 284f), -1292f, -540f, -231f), Struct_3(var_2.a, _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.b.a, 4294967295u, 0u, var_0.b.a), vec4<u32>(1u, var_1.b.a, 1u, 45115u)), ~19963u, Struct_2(var_0.a, Struct_1(var_2.b.x, vec2<bool>(true, false), var_2.d.b.d, -15307i, var_0.a.x), var_0.c)), firstLeadingBit(var_0.b.a)).x, var_1.a.x), Struct_1(select(countOneBits(var_0.b.a), ~var_1.b.a, true), func_1().xx, abs(-1i), -_wgslsmith_clamp_i32(u_input.a, -2147483647i, -42807i) & -global0[_wgslsmith_index_u32(var_0.b.a | var_0.b.a, 24u)], !(select(global0[_wgslsmith_index_u32(16450u, 24u)], var_1.b.d, var_1.a.x) <= -103875i)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.c.x + 267f))) - var_1.c.x), -1250f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_1.c.x, -151f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.c.x))) * var_0.c.x))));
}

