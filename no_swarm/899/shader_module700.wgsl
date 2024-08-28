struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 4> = array<vec4<bool>, 4>(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true));

var<private> global1: vec3<u32>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<f32>) -> vec2<u32> {
    let var_0 = Struct_1(!(!global0[_wgslsmith_index_u32(u_input.a.x << (_wgslsmith_div_u32(64785u, 43859u) % 32u), 4u)]), 554f, -(min(u_input.b, 43687i ^ u_input.b) << (~_wgslsmith_add_u32(global1.x, 26033u) % 32u)), select(select(select(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 1u), 4u)], select(global0[_wgslsmith_index_u32(global1.x, 4u)], global0[_wgslsmith_index_u32(global1.x, 4u)], false), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(2356u, global1.x), 4u)]), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(u_input.a.x, 4u)], global0[_wgslsmith_index_u32(countOneBits(global1.x), 4u)])), !global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~global1.x, 4294967295u), 4u)], global0[_wgslsmith_index_u32(~(~1u) << (countOneBits(global1.x) % 32u), 4u)]));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(-arg_0.x)))) * arg_0.x));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b), -481f)));
    var var_2 = _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.a.x, ~global1.x, 53960u, ~1u), u_input.a, u_input.a), _wgslsmith_mod_vec4_u32((vec4<u32>(1u, 1u, 31649u, 689u) & (u_input.a & vec4<u32>(4294967295u, 89140u, 57100u, global1.x))) << ((select(vec4<u32>(global1.x, global1.x, global1.x, 59733u), u_input.a, var_0.a.x) | u_input.a) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(~u_input.c, 58728u, ~global1.x, ~4294967295u), (vec4<u32>(1u, u_input.a.x, 0u, global1.x) << (vec4<u32>(4964u, 0u, u_input.c, 50571u) % vec4<u32>(32u))) | u_input.a)));
    let var_3 = select(select(!var_0.a, vec4<bool>(all(select(vec2<bool>(false, true), vec2<bool>(var_0.d.x, var_0.a.x), var_0.d.x)), false, any(!vec3<bool>(true, var_0.a.x, var_0.a.x)), !(var_0.d.x & var_0.a.x)), var_0.a), vec4<bool>(true, true, var_0.a.x, true), vec4<bool>(true, false, var_0.a.x, true));
    return _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(min(24243u, 1u), firstTrailingBit(var_2.x)), global1.zz) & _wgslsmith_div_vec2_u32(vec2<u32>(0u, 4817u) ^ global1.xz, firstLeadingBit(firstLeadingBit(vec2<u32>(4294967295u, 0u)))), firstTrailingBit(select(vec2<u32>(1u, min(u_input.c, global1.x)), global1.xx, false)));
}

fn func_2() -> vec4<bool> {
    var var_0 = _wgslsmith_mod_vec2_i32(~u_input.e.yx, ~u_input.e.yx);
    var_0 = -u_input.e.yz;
    global0 = array<vec4<bool>, 4>();
    let var_1 = Struct_3(abs(_wgslsmith_mult_vec2_u32(global1.yy, ~func_3(vec4<f32>(-1354f, -1608f, -277f, -1000f)))));
    var_0 = _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.e.x, -27242i), u_input.e.zz), (vec2<i32>(-var_0.x, u_input.e.x) >> ((firstTrailingBit(u_input.a.xz) << (~vec2<u32>(0u, 1u) % vec2<u32>(32u))) % vec2<u32>(32u))) ^ (-abs(u_input.e.xx) << (global1.xz % vec2<u32>(32u))));
    return !vec4<bool>(true, _wgslsmith_mult_i32(-u_input.d, firstLeadingBit(var_0.x)) < -_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, -1i), u_input.e.xy), true, true);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: f32, arg_3: vec4<f32>) -> Struct_1 {
    global1 = u_input.a.zxy;
    global1 = countOneBits(_wgslsmith_add_vec3_u32(arg_1.c.zzx, vec3<u32>(~global1.x, 1u, ~(~global1.x))));
    global0 = array<vec4<bool>, 4>();
    var var_0 = (2147483647i & -_wgslsmith_div_i32(_wgslsmith_sub_i32(arg_0.x, -22334i), arg_0.x & u_input.e.x)) | ~arg_0.x;
    let var_1 = u_input.e.xy;
    return Struct_1(vec4<bool>(!(_wgslsmith_f_op_f32(arg_1.b.b + -468f) == _wgslsmith_f_op_f32(round(arg_2))), !(!arg_1.a), any(!select(arg_1.b.a.wwy, arg_1.b.d.yww, true)), !(true && arg_1.a)), -304f, -(-1585i << (arg_1.c.x % 32u)), func_2());
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<f32>) -> bool {
    global1 = vec3<u32>(~global1.x, u_input.a.x, ~4294967295u);
    var var_0 = !vec3<bool>(true, any(arg_1.a.zx), u_input.a.x > _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, 4294967295u, 11769u, arg_2.c.x), select(arg_2.c, u_input.a, arg_1.d)));
    var_0 = func_1(u_input.e ^ (min(-u_input.e, firstLeadingBit(u_input.e)) | u_input.e), arg_2, -381f, arg_3).a.zxz;
    global0 = array<vec4<bool>, 4>();
    var var_1 = Struct_4(Struct_3(vec2<u32>(_wgslsmith_sub_u32(~62149u, 1u), ~0u)), Struct_3(vec2<u32>(func_3(_wgslsmith_div_vec4_f32(arg_2.d, vec4<f32>(arg_1.b, arg_3.x, arg_3.x, 489f))).x, ~(arg_2.c.x | 52075u))));
    return !(arg_2.b.b >= _wgslsmith_f_op_f32(sign(arg_3.x)));
}

fn func_5(arg_0: bool, arg_1: vec4<u32>, arg_2: f32, arg_3: u32) -> vec3<f32> {
    global1 = u_input.a.wwx;
    let var_0 = 1u;
    let var_1 = vec3<u32>(~12854u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_1.x, 27855u, 60409u), vec3<u32>(arg_3, u_input.c, global1.x)), var_0), ~abs(~arg_3)) | _wgslsmith_div_vec3_u32(u_input.a.wxz, _wgslsmith_div_vec3_u32(min(u_input.a.yyx, vec3<u32>(3268u, 1u, 1u)), vec3<u32>(0u, u_input.a.x, 1u) << (vec3<u32>(112198u, 63964u, 15219u) % vec3<u32>(32u))) ^ max(arg_1.yyy, select(arg_1.xyw, vec3<u32>(0u, global1.x, u_input.c), arg_0)));
    let var_2 = !vec3<bool>(!(!(!arg_0)), any(select(vec4<bool>(arg_0, arg_0, false, false), func_1(u_input.e, Struct_2(arg_0, Struct_1(global0[_wgslsmith_index_u32(14870u, 4u)], arg_2, u_input.d, global0[_wgslsmith_index_u32(arg_1.x, 4u)]), arg_1, vec4<f32>(-1483f, 1347f, 1000f, arg_2)), -638f, vec4<f32>(arg_2, arg_2, arg_2, 1452f)).d, var_1.x >= global1.x)), true);
    let var_3 = select(vec3<bool>(all(var_2), any(var_2.zx), true), vec3<bool>(func_4(firstTrailingBit(-16019i), Struct_1(global0[_wgslsmith_index_u32(global1.x, 4u)], _wgslsmith_f_op_f32(-arg_2), _wgslsmith_mult_i32(1i, u_input.b), !vec4<bool>(true, var_2.x, true, arg_0)), Struct_2(true, Struct_1(vec4<bool>(arg_0, false, arg_0, true), arg_2, u_input.e.x, global0[_wgslsmith_index_u32(arg_3, 4u)]), vec4<u32>(1u, u_input.a.x, 28299u, 12856u) >> (vec4<u32>(arg_3, 4294967295u, arg_1.x, var_0) % vec4<u32>(32u)), vec4<f32>(arg_2, arg_2, -1461f, arg_2)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2, arg_2, -1135f, arg_2), vec4<f32>(1000f, 973f, -1366f, 262f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_2, 744f, arg_2))))), false, !(!any(vec4<bool>(arg_0, true, false, arg_0)))), select(func_2().xyy, !(!(!vec3<bool>(arg_0, false, true))), func_2().zxz));
    return vec3<f32>(_wgslsmith_f_op_f32(-1418f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(234f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2, arg_2)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-337f + _wgslsmith_f_op_f32(max(173f, -812f))) * arg_2))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(733f + arg_2), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * func_1(vec4<i32>(u_input.e.x, 50211i, 2147483647i, 34158i), Struct_2(var_3.x, Struct_1(vec4<bool>(var_3.x, true, true, var_3.x), 700f, -1i, vec4<bool>(false, var_2.x, true, true)), u_input.a, vec4<f32>(arg_2, -1769f, arg_2, 1000f)), arg_2, vec4<f32>(-1241f, 320f, arg_2, arg_2)).b), _wgslsmith_f_op_f32(f32(-1f) * -622f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(select(u_input.e.wz, u_input.e.zw, vec2<bool>(true, true)), -vec2<i32>(u_input.d, u_input.b) << (u_input.a.wz % vec2<u32>(32u))), u_input.d, u_input.e.x, -_wgslsmith_clamp_i32((u_input.d >> (17722u % 32u)) << (_wgslsmith_add_u32(39077u, 1u) % 32u), _wgslsmith_mult_i32(-u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), u_input.e.yy)), -1i));
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-616f, _wgslsmith_div_f32(-185f, -588f), _wgslsmith_f_op_f32(1985f * _wgslsmith_f_op_f32(ceil(1000f)))) * _wgslsmith_f_op_vec3_f32(func_5(func_4(_wgslsmith_sub_i32(-44225i, -25516i), func_1(u_input.e, Struct_2(true, Struct_1(global0[_wgslsmith_index_u32(global1.x, 4u)], -110f, var_0.x, global0[_wgslsmith_index_u32(global1.x, 4u)]), vec4<u32>(4294967295u, u_input.a.x, 40347u, u_input.a.x), vec4<f32>(584f, -2529f, -782f, 436f)), 452f, vec4<f32>(-667f, 1034f, -118f, 1592f)), Struct_2(false, Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 926f, u_input.b, global0[_wgslsmith_index_u32(global1.x, 4u)]), u_input.a, vec4<f32>(-1112f, -898f, 867f, -653f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1464f, -1279f, 1000f, 636f), vec4<f32>(494f, -117f, 1738f, 1257f)))), vec4<u32>(0u, countOneBits(global1.x), abs(3843u), u_input.a.x), func_1(~u_input.e, Struct_2(true, Struct_1(vec4<bool>(true, false, true, false), 1000f, var_0.x, global0[_wgslsmith_index_u32(1u, 4u)]), u_input.a, vec4<f32>(-816f, -1369f, 490f, -787f)), _wgslsmith_f_op_f32(step(-1322f, 2556f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -246f, 1383f, 1063f) - vec4<f32>(1593f, 399f, -856f, 681f))).b, abs(~u_input.c)))));
    let var_2 = vec2<bool>(false, true);
    let var_3 = _wgslsmith_div_f32(var_1.x, 122f);
    var var_4 = Struct_2(!var_2.x, Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], _wgslsmith_f_op_f32(-914f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * 855f) + _wgslsmith_f_op_f32(-var_1.x))), 1i, vec4<bool>(true, _wgslsmith_div_f32(611f, var_1.x) != _wgslsmith_f_op_f32(f32(-1f) * -1173f), !var_2.x, any(func_2().zzy))), ~vec4<u32>(~global1.x >> (_wgslsmith_sub_u32(global1.x, u_input.a.x) % 32u), ~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 4294967295u, 1u), ~u_input.a), _wgslsmith_add_u32(u_input.c | global1.x, 15869u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(753f, 676f, -1000f, var_1.x), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-288f, var_3, 294f, -294f)))))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 706f, -1323f, var_1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(984f, var_1.x, var_3, -180f)))))));
    var var_5 = Struct_2(any(select(select(vec4<bool>(true, false, var_2.x, true), vec4<bool>(true, true, true, var_4.b.a.x), var_4.a), global0[_wgslsmith_index_u32(~u_input.c, 4u)], u_input.d != -24066i)) && func_1(vec4<i32>(2147483647i, var_4.b.c, 0i, u_input.b) & u_input.e, Struct_2(var_4.a, func_1(vec4<i32>(9540i, 58595i, u_input.e.x, u_input.e.x), Struct_2(true, var_4.b, vec4<u32>(33247u, global1.x, u_input.a.x, 4294967295u), var_4.d), var_3, vec4<f32>(var_4.d.x, -504f, var_1.x, var_1.x)), firstTrailingBit(vec4<u32>(global1.x, 4294967295u, global1.x, 2825u)), vec4<f32>(var_4.d.x, var_1.x, var_3, 401f)), var_1.x, _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_4.b.b, 1438f, 1631f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.b.b, -407f, -261f, var_4.b.b), vec4<f32>(-881f, 1348f, -3710f, var_3), vec4<bool>(false, var_4.a, false, false))))).d.x, Struct_1(vec4<bool>(!var_4.b.d.x, false, var_2.x, var_2.x), 436f, var_0.x, !func_1(vec4<i32>(var_4.b.c, -2147483647i, -72252i, u_input.b), Struct_2(false, Struct_1(var_4.b.d, var_3, -29962i, global0[_wgslsmith_index_u32(0u, 4u)]), u_input.a, vec4<f32>(var_1.x, -783f, 1099f, -799f)), _wgslsmith_f_op_f32(var_3 - var_3), vec4<f32>(-398f, -514f, var_3, -333f)).d), u_input.a, vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -2392f)), _wgslsmith_f_op_f32(ceil(var_1.x)))), -363f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), var_3));
    let var_6 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.zyx);
}

