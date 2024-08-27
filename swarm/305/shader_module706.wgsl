struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3> = array<i32, 3>(7896i, 21742i, -26572i);

var<private> global1: array<u32, 23>;

var<private> global2: array<Struct_2, 19>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: bool, arg_3: Struct_2) -> vec2<i32> {
    let var_0 = countOneBits(4095u);
    global2 = array<Struct_2, 19>();
    let var_1 = global2[_wgslsmith_index_u32(arg_3.e, 19u)];
    global1 = array<u32, 23>();
    let var_2 = Struct_2(true, !vec2<bool>(!(!arg_0.x), any(select(arg_1, arg_1, vec3<bool>(var_1.a, true, arg_3.a)))), var_1.c, ~(-arg_3.d), _wgslsmith_dot_vec4_u32(max(~(~vec4<u32>(arg_3.e, 27524u, 23710u, 50539u)), vec4<u32>(var_1.e, 67863u, arg_3.e, global1[_wgslsmith_index_u32(0u, 23u)]) << (~vec4<u32>(var_0, 35466u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_3.e, 23u)], 23u)], 23u)], 23u)], 0u) % vec4<u32>(32u))), vec4<u32>(~_wgslsmith_div_u32(1u, 1u), 103002u, ~arg_3.e, ~_wgslsmith_dot_vec2_u32(vec2<u32>(24523u, 0u), vec2<u32>(1u, 49496u)))));
    return vec2<i32>(abs(-31355i) >> (max(~_wgslsmith_sub_u32(4294967295u, var_2.e), 1u) % 32u), _wgslsmith_dot_vec4_i32(~(~(-vec4<i32>(global0[_wgslsmith_index_u32(arg_3.e, 3u)], var_2.d.x, -65909i, u_input.a.x))), vec4<i32>(_wgslsmith_div_i32(-global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.e, 23u)], 3u)], 1i), var_2.c.c >> (1u % 32u), -abs(global0[_wgslsmith_index_u32(var_0, 3u)]), -36126i)));
}

fn func_2(arg_0: Struct_2) -> vec3<i32> {
    var var_0 = vec4<i32>(-arg_0.c.c, u_input.a.x, 0i, arg_0.d.x);
    let var_1 = _wgslsmith_add_vec2_i32(~(-func_3(vec2<bool>(arg_0.c.e, true), select(vec3<bool>(arg_0.b.x, arg_0.b.x, arg_0.a), vec3<bool>(arg_0.c.e, false, true), vec3<bool>(arg_0.a, false, true)), true, Struct_2(arg_0.c.e, vec2<bool>(false, arg_0.b.x), Struct_1(arg_0.c.a, arg_0.c.a.yy, 1i, 948f, false), arg_0.d, global1[_wgslsmith_index_u32(arg_0.e, 23u)]))), func_3(vec2<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1931f) <= arg_0.c.a.x, arg_0.a), vec3<bool>(false, select(all(vec3<bool>(arg_0.c.e, arg_0.a, false)), false, false), false), all(vec4<bool>(true, all(vec2<bool>(true, arg_0.b.x)), false, arg_0.a | false)), Struct_2(true, vec2<bool>(all(vec2<bool>(arg_0.b.x, true)), false), arg_0.c, vec3<i32>(-1i, var_0.x, arg_0.d.x) | vec3<i32>(arg_0.c.c, var_0.x, -2147483647i), countOneBits(_wgslsmith_mult_u32(arg_0.e, 7372u)))));
    global0 = array<i32, 3>();
    var var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(countOneBits(~1u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.e, 51786u), vec2<u32>(arg_0.e, 0u)), 1u) | min(~(vec3<u32>(0u, 1u, 62721u) >> (vec3<u32>(1u, 1u, arg_0.e) % vec3<u32>(32u))), _wgslsmith_div_vec3_u32(~vec3<u32>(arg_0.e, 1u, 15794u), ~vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(1u, 23u)], 18299u))), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(71603u, 46219u, 16116u), vec3<u32>(arg_0.e, 1u, arg_0.e))), vec3<u32>(~0u, arg_0.e ^ global1[_wgslsmith_index_u32(0u, 23u)], 34871u ^ arg_0.e)), vec3<u32>(_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.e, 1u), vec2<u32>(53171u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.e, 23u)], 23u)])), abs(arg_0.e)), _wgslsmith_mult_u32(min(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1714u, 23u)], 23u)], 17997u), 94163u), min(~arg_0.e, _wgslsmith_div_u32(arg_0.e, global1[_wgslsmith_index_u32(1u, 23u)]))), vec3<u32>(select(4294967295u, arg_0.e, false) & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.e, 23u)], 23u)], countOneBits(~arg_0.e), _wgslsmith_add_u32(arg_0.e, arg_0.e))));
    global2 = array<Struct_2, 19>();
    return firstLeadingBit(arg_0.d);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(arg_1.x >> (_wgslsmith_dot_vec2_u32(arg_1.yz, ~vec2<u32>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, 0u, arg_1.x), 23u)], firstLeadingBit(arg_1.x))) % 32u), 19u)];
    var var_1 = select(var_0.b, !vec2<bool>(var_0.b.x, true), var_0.b);
    let var_2 = -1000f;
    var var_3 = !(!select(!var_0.b, var_0.b, var_0.b));
    var var_4 = vec4<u32>(0u, _wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(~global1[_wgslsmith_index_u32(arg_1.x, 23u)], firstLeadingBit(1u), arg_1.x)) >> (reverseBits(_wgslsmith_dot_vec2_u32(arg_1.wx, vec2<u32>(25469u, arg_1.x))) % 32u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(arg_1.x), _wgslsmith_dot_vec4_u32(max(~arg_1, arg_1), vec4<u32>(41484u, ~6507u, ~global1[_wgslsmith_index_u32(var_0.e, 23u)], _wgslsmith_mod_u32(4294967295u, arg_1.x)))), 23u)], 23u)], ~(~(~arg_1.x)));
    return var_0.c;
}

fn func_1() -> bool {
    global2 = array<Struct_2, 19>();
    var var_0 = func_4(reverseBits(func_2(Struct_2(select(false, false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), Struct_1(vec3<f32>(-1715f, -2107f, 2526f), vec2<f32>(-751f, 1318f), 14214i, -782f, false), vec3<i32>(2147483647i, -1i, 107289i), 1u))), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(46563u, 23u)], 23u)]) ^ _wgslsmith_add_u32(11542u, 25736u), 23u)] >> (countOneBits(33412u | global1[_wgslsmith_index_u32(1u, 23u)]) % 32u), 23u)], ~global1[_wgslsmith_index_u32(~28362u, 23u)] ^ 4294967295u, firstTrailingBit(~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(0u, 23u)], 1u), 23u)]), ~(~43827u) ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5941u, 23u)], 23u)]));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -626f) + _wgslsmith_div_f32(var_0.a.x, -2355f));
    global1 = array<u32, 23>();
    global0 = array<i32, 3>();
    return var_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!(!vec3<bool>(func_1(), true, true)));
    var var_1 = select(!vec4<bool>(func_4(_wgslsmith_add_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 23u)], 3u)], 2778i, u_input.a.x), vec3<i32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 23u)], 3u)], 18131i, u_input.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18240u, 23u)], 23u)], 23u)], global1[_wgslsmith_index_u32(76968u, 23u)], global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 23u)], 23u)]), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11446u, 23u)], 23u)], 23u)], 41630u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 23u)], 23u)], 23u)], 23u)], 23u)], 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 23u)]))).e, true, any(vec3<bool>(true, true, true)), false), !(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)))), func_4(vec3<i32>(0i, _wgslsmith_div_i32(min(u_input.a.x, 51099i), 2147483647i), ~2147483647i), vec4<u32>(~4294967295u, ~(global1[_wgslsmith_index_u32(0u, 23u)] | 11953u), select(4294967295u, 1u, true), ~global1[_wgslsmith_index_u32(1u, 23u)] | (global1[_wgslsmith_index_u32(17366u, 23u)] | global1[_wgslsmith_index_u32(0u, 23u)]))).e);
    global1 = array<u32, 23>();
    let var_2 = Struct_2(true, !(!select(!var_1.xy, select(var_1.wx, var_1.yx, var_1.x), !var_1.x)), func_4(-(~max(vec3<i32>(u_input.a.x, u_input.a.x, 1i), vec3<i32>(u_input.a.x, -3862i, 2147483647i))), ~(abs(vec4<u32>(global1[_wgslsmith_index_u32(47645u, 23u)], 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4114u, 23u)], 23u)], 23u)], 28637u)) | min(vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 23u)], 23u)], 23u)], 23u)], 23u)], 23u)], 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 23u)], 23u)], 23u)], global1[_wgslsmith_index_u32(1u, 23u)]), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(58684u, 23u)], 23u)], 23u)], 23u)], 23u)], 23u)], 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11149u, 23u)], 23u)], global1[_wgslsmith_index_u32(1u, 23u)], 98644u)))), ~max(vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, -38624i), abs(u_input.a.x), func_3(vec2<bool>(false, var_1.x), var_1.zyx, var_1.x, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 23u)], 19u)]).x), (vec3<i32>(u_input.a.x, -27764i, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(99945u, 23u)], 23u)], 3u)]) << (vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 23u)], 23u)], 13166u, 0u) % vec3<u32>(32u))) & vec3<i32>(global0[_wgslsmith_index_u32(0u, 3u)], -34300i, u_input.a.x)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~global1[_wgslsmith_index_u32(10676u, 23u)], 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17572u, 23u)] & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(11493u, 23u)], 23u)], 23u)], 23u)], _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 0u, global1[_wgslsmith_index_u32(0u, 23u)])), reverseBits(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20848u, 23u)], 23u)], 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(66747u, 23u)], 23u)], 0u, 4294967295u) | vec4<u32>(43383u, 23095u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 23u)], 23u)], global1[_wgslsmith_index_u32(2525u, 23u)]))) & 54182u, 23u)]);
    global0 = array<i32, 3>();
    var var_3 = ~vec4<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(var_2.e, 3u)], var_2.d.x), -1i), vec2<i32>(u_input.a.x, -1i)), -5818i, _wgslsmith_mult_i32(-1i, _wgslsmith_mult_i32(var_2.d.x, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.e, 23u)], 3u)], u_input.a.x))));
    var var_4 = vec3<bool>(!all(!(!var_1.zwy)), var_1.x, false);
    var_1 = select(vec4<bool>(false, (~var_2.d.x ^ ~(-2147483647i)) >= -2147483647i, true, -(2147483647i ^ var_2.d.x) < _wgslsmith_mult_i32(max(global0[_wgslsmith_index_u32(1u, 3u)], -2147483647i), 1i)), select(!vec4<bool>(!var_4.x, var_2.b.x, all(vec4<bool>(false, var_1.x, var_1.x, true)), true), select(!vec4<bool>(false, var_4.x, var_4.x, var_2.c.e), !vec4<bool>(var_4.x, false, true, var_1.x), vec4<bool>(false && var_2.a, var_2.c.e, false, true)), any(vec2<bool>(true, any(vec2<bool>(false, var_1.x))))), !(any(vec2<bool>(true, var_4.x)) && var_4.x) || false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(abs(~(~vec4<u32>(41473u, 55132u, 8125u, global1[_wgslsmith_index_u32(1u, 23u)]))), max(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_2.e, 5019u, var_2.e), vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], var_2.e, 4294967295u, var_2.e), vec4<u32>(var_2.e, global1[_wgslsmith_index_u32(var_2.e, 23u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(27856u, 23u)], 23u)], 0u)) << (vec4<u32>(1u, var_2.e, 0u, global1[_wgslsmith_index_u32(var_2.e, 23u)]) % vec4<u32>(32u)), vec4<u32>(0u, 40029u, global1[_wgslsmith_index_u32(4294967295u, 23u)], _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(var_2.e, 23u)], global1[_wgslsmith_index_u32(0u, 23u)]), vec2<u32>(38912u, 50904u))))), (-3238i ^ (u_input.a.x >> (4294967295u % 32u))) & ~var_2.d.x);
}

