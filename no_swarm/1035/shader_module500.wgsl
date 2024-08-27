struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 13>;

var<private> global1: array<bool, 11> = array<bool, 11>(true, true, true, false, true, false, true, false, true, true, false);

var<private> global2: array<i32, 3> = array<i32, 3>(i32(-2147483648), 2147483647i, 41361i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: i32) -> i32 {
    global0 = array<vec3<u32>, 13>();
    let var_0 = ~(arg_0.b << (_wgslsmith_sub_u32(~_wgslsmith_div_u32(4294967295u, arg_1), 13258u) % 32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -431f), -178f), _wgslsmith_f_op_f32(f32(-1f) * -974f), -1162f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(116f))) * _wgslsmith_f_op_f32(step(-498f, -1218f)))));
    let var_2 = select(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(firstLeadingBit(vec3<i32>(-1i, 2147483647i, global2[_wgslsmith_index_u32(arg_1, 3u)])) ^ -vec3<i32>(16749i, -6703i, 13890i), vec3<i32>(-1i, _wgslsmith_add_i32(arg_2, global2[_wgslsmith_index_u32(u_input.a, 3u)]), global2[_wgslsmith_index_u32(arg_0.b, 3u)])), firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-7451i, global2[_wgslsmith_index_u32(arg_0.b, 3u)], global2[_wgslsmith_index_u32(20664u, 3u)]), vec3<i32>(0i, 28219i, global2[_wgslsmith_index_u32(4294967295u, 3u)]) & vec3<i32>(-34303i, global2[_wgslsmith_index_u32(arg_0.b, 3u)], 29999i)))), firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(0i, global2[_wgslsmith_index_u32(3804u, 3u)])), _wgslsmith_sub_vec2_i32(vec2<i32>(13737i, arg_2), vec2<i32>(-1i, arg_2))), ~_wgslsmith_add_i32(arg_2, 24434i), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, arg_0.b, 0u), global0[_wgslsmith_index_u32(1u, 13u)]), _wgslsmith_clamp_u32(90888u, u_input.a, var_0)), 3u)])), true);
    global2 = array<i32, 3>();
    return _wgslsmith_div_i32(0i, arg_2);
}

fn func_2(arg_0: vec2<bool>) -> Struct_3 {
    let var_0 = Struct_2(Struct_1(false, 4294967295u), select(~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 38648u), vec2<u32>(u_input.a, 7417u)), ~_wgslsmith_div_vec2_u32(vec2<u32>(17172u, u_input.a), vec2<u32>(0u, u_input.a)), any(vec4<bool>(false, arg_0.x, global1[_wgslsmith_index_u32(1u, 11u)], global1[_wgslsmith_index_u32(u_input.a, 11u)]))) << (abs(~(vec2<u32>(u_input.a, 39469u) << (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)))) % vec2<u32>(32u)), 11496i);
    let var_1 = ~0i;
    var var_2 = arg_0.x;
    var var_3 = Struct_1(false, u_input.a);
    var var_4 = Struct_3(_wgslsmith_mod_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 3u)], 0i), vec2<i32>(global2[_wgslsmith_index_u32(0u, 3u)], -7731i)), min(vec2<i32>(global2[_wgslsmith_index_u32(var_3.b, 3u)], -1i), vec2<i32>(var_0.c, var_0.c) >> (var_0.b % vec2<u32>(32u)))) | vec2<i32>(func_3(Struct_1(var_3.a, var_3.b), 1u, -global2[_wgslsmith_index_u32(u_input.a, 3u)]), firstTrailingBit(-11010i)), abs(~(~firstLeadingBit(vec3<i32>(var_1, 31397i, 4639i)))), Struct_1(select(true, arg_0.x, true), _wgslsmith_div_u32(_wgslsmith_add_u32(1u, max(var_0.a.b, 0u)), ~max(1u, u_input.a))), var_0);
    return Struct_3(_wgslsmith_clamp_vec2_i32(abs(var_4.b.yy), _wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(global2[_wgslsmith_index_u32(1u, 3u)], -9274i) & var_4.b.xx), vec2<i32>(~var_1, _wgslsmith_mult_i32(var_4.b.x, 2147483647i))), -vec2<i32>(var_1 << (u_input.a % 32u), _wgslsmith_add_i32(0i, 10449i))), ~(max(countOneBits(vec3<i32>(1i, 2147483647i, -44604i)), select(var_4.b, vec3<i32>(-27697i, var_0.c, var_0.c), vec3<bool>(var_3.a, var_0.a.a, global1[_wgslsmith_index_u32(var_3.b, 11u)]))) | vec3<i32>(_wgslsmith_dot_vec3_i32(var_4.b, var_4.b), -global2[_wgslsmith_index_u32(4294967295u, 3u)], _wgslsmith_div_i32(global2[_wgslsmith_index_u32(4294967295u, 3u)], var_1))), Struct_1(false, ~1u), Struct_2(Struct_1(_wgslsmith_mod_u32(var_0.b.x, u_input.a) > 1u, var_3.b), var_4.d.b | (~vec2<u32>(var_3.b, u_input.a) << (_wgslsmith_add_vec2_u32(var_0.b, var_0.b) % vec2<u32>(32u))), -1i));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: vec3<f32>) -> vec3<u32> {
    let var_0 = arg_2.xz;
    let var_1 = vec3<f32>(-1137f, _wgslsmith_f_op_f32(-var_0.x), 381f);
    let var_2 = func_2(!select(select(select(vec2<bool>(false, global1[_wgslsmith_index_u32(66503u, 11u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 11u)], true), global1[_wgslsmith_index_u32(4294967295u, 11u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 11u)]), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 11u)], global1[_wgslsmith_index_u32(32177u, 11u)])), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 11u)], 0i > global2[_wgslsmith_index_u32(u_input.a, 3u)]), vec2<bool>(true, !global1[_wgslsmith_index_u32(u_input.a, 11u)])));
    global2 = array<i32, 3>();
    let var_3 = -(~(~global2[_wgslsmith_index_u32(59901u, 3u)]));
    return ~global0[_wgslsmith_index_u32(108546u, 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_2(Struct_1(true, ~u_input.a), abs(vec2<u32>(24105u, abs(0u))), global2[_wgslsmith_index_u32(~14308u, 3u)]), ~u_input.a, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 20214u), ~_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 1u, 31273u), global0[_wgslsmith_index_u32(u_input.a, 13u)], global0[_wgslsmith_index_u32(u_input.a, 13u)]), func_1(vec3<i32>(global2[_wgslsmith_index_u32(6649u, 3u)], -25019i, global2[_wgslsmith_index_u32(4294967295u, 3u)]), 1000f, vec3<f32>(-884f, -1253f, 2706f)))));
    global0 = array<vec3<u32>, 13>();
    var var_1 = _wgslsmith_sub_vec2_i32(-_wgslsmith_mod_vec2_i32(~vec2<i32>(var_0.a.c, var_0.a.c), -vec2<i32>(-74825i, global2[_wgslsmith_index_u32(80200u, 3u)])), min(vec2<i32>(1i, 1i), ~(~vec2<i32>(global2[_wgslsmith_index_u32(var_0.c.x, 3u)], -32526i)))) | -_wgslsmith_add_vec2_i32(vec2<i32>(-1i, select(var_0.a.c, global2[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(37557u, 11u)])), vec2<i32>(~(-14430i), var_0.a.c));
    global1 = array<bool, 11>();
    global1 = array<bool, 11>();
    let var_2 = all(!vec4<bool>(true && !global1[_wgslsmith_index_u32(u_input.a, 11u)], false, any(vec2<bool>(var_0.a.a.a, global1[_wgslsmith_index_u32(947u, 11u)])), !(!var_0.a.a.a)));
    let var_3 = Struct_3(vec2<i32>(-1i) * -vec2<i32>(global2[_wgslsmith_index_u32(~4294967295u, 3u)], 19481i), -firstLeadingBit(~(-vec3<i32>(-7284i, global2[_wgslsmith_index_u32(u_input.a, 3u)], global2[_wgslsmith_index_u32(var_0.b, 3u)]))), func_2(!select(!vec2<bool>(false, var_2), select(vec2<bool>(var_0.a.a.a, var_0.a.a.a), vec2<bool>(var_2, true), vec2<bool>(true, var_0.a.a.a)), select(vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 11u)], var_0.a.a.a), vec2<bool>(var_0.a.a.a, true)))).d.a, Struct_2(var_0.a.a, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 125649u), var_0.a.b) | _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 0u), var_0.c.zx), ~(-1778i)));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(!vec2<bool>(var_3.d.c <= var_1.x, var_3.d.a.a | global1[_wgslsmith_index_u32(u_input.a, 11u)])).c.b, vec3<i32>(_wgslsmith_sub_i32(var_0.a.c ^ var_0.a.c, 1i), 1i, ~38074i) & _wgslsmith_mod_vec3_i32(-func_2(vec2<bool>(var_2, var_3.c.a)).b, var_3.b));
}

