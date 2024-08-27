struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -21850i;

var<private> global1: array<u32, 13>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-492f, 625f, -1732f) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(803f, -1558f, -116f)))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(456f, 981f, -143f) * vec3<f32>(1000f, 858f, 329f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(450f, 1760f, -789f), vec3<f32>(-1146f, -366f, 1000f))), vec3<f32>(255f, 673f, 263f), arg_0.d)) * vec3<f32>(-1080f, -643f, _wgslsmith_f_op_f32(f32(-1f) * -495f)))));
    global0 = 1i;
    var var_1 = Struct_1(max(abs(_wgslsmith_dot_vec4_i32(-u_input.b, -arg_1)), select(~_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(arg_1.x, 0i, 1i, arg_0.b)), 67010i, all(vec2<bool>(arg_0.d, arg_0.d)))), abs(abs(-(i32(-1i) * -2147483647i))), firstTrailingBit(~0u), true, ~(~global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.c ^ u_input.c, firstLeadingBit(u_input.d)), 13u)]));
    return _wgslsmith_dot_vec2_i32(~select(abs(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.b, var_1.b), vec2<i32>(2147483647i, -25846i))), u_input.b.yy, vec2<bool>(arg_0.d, arg_0.d)), vec2<i32>(_wgslsmith_mod_i32(-20717i, ~1i), 15090i));
}

fn func_2() -> f32 {
    var var_0 = ~vec4<i32>(_wgslsmith_add_i32(~u_input.b.x, -31307i), -1i, _wgslsmith_add_i32(select(2147483647i, -27373i, true), u_input.a), abs(u_input.b.x)) & vec4<i32>((0i | ~u_input.a) << (((u_input.c & global1[_wgslsmith_index_u32(6928u, 13u)]) & 0u) % 32u), u_input.b.x, 0i, u_input.b.x);
    global0 = -1i;
    global0 = -1i;
    var var_1 = -369f;
    let var_2 = Struct_1(_wgslsmith_clamp_i32(var_0.x, ~func_3(Struct_1(u_input.b.x, -1i, 1u, true, 1u), u_input.b), var_0.x) ^ ~(-27323i), _wgslsmith_mult_i32(_wgslsmith_div_i32(-u_input.a, reverseBits(~var_0.x)), -85182i), (global1[_wgslsmith_index_u32(1u, 13u)] << (u_input.d % 32u)) >> (select(_wgslsmith_mult_u32(~63035u, ~u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c, global1[_wgslsmith_index_u32(u_input.d, 13u)], global1[_wgslsmith_index_u32(50144u, 13u)]), vec4<u32>(1u, 0u, 717u, u_input.d)) >> ((global1[_wgslsmith_index_u32(u_input.c, 13u)] >> (global1[_wgslsmith_index_u32(u_input.c, 13u)] % 32u)) % 32u), true || all(vec3<bool>(true, true, true))) % 32u), !any(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true))), abs(~(~reverseBits(global1[_wgslsmith_index_u32(u_input.c, 13u)]))));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_1) -> bool {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(func_2()), -2697f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.c))) - -220f)));
    let var_1 = abs(abs(_wgslsmith_div_vec2_u32(max(~vec2<u32>(arg_0.x, global1[_wgslsmith_index_u32(39522u, 13u)]), ~arg_0), vec2<u32>(_wgslsmith_mult_u32(u_input.d, global1[_wgslsmith_index_u32(0u, 13u)]), 1u))));
    var var_2 = _wgslsmith_div_vec2_i32(~arg_1.b.yx, _wgslsmith_mult_vec2_i32(vec2<i32>(~arg_2.a, arg_2.b) << (arg_0 % vec2<u32>(32u)), vec2<i32>(arg_1.d.a.b, 32699i)));
    var var_3 = ~52439u;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(var_0.xx)))) * var_0.xy));
    return !select(!all(vec2<bool>(true, true)), -1244f > _wgslsmith_f_op_f32(arg_1.c - 610f), arg_2.d);
}

fn func_4(arg_0: bool, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = vec2<bool>(true, true);
    let var_1 = -415f;
    let var_2 = Struct_1(43724i, ~(-_wgslsmith_div_i32(-21102i, select(u_input.b.x, 10870i, true))), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(4266u, 1348u, 4294967295u, global1[_wgslsmith_index_u32(0u, 13u)])) >> (((arg_1 & vec4<u32>(20611u, arg_1.x, u_input.d, global1[_wgslsmith_index_u32(u_input.d, 13u)])) << (vec4<u32>(global1[_wgslsmith_index_u32(u_input.d, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)], u_input.d, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)), select(abs(arg_1), vec4<u32>(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(16395u, 26445u), vec2<u32>(arg_1.x, global1[_wgslsmith_index_u32(1u, 13u)])), ~1u, _wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(global1[_wgslsmith_index_u32(arg_1.x, 13u)], global1[_wgslsmith_index_u32(1u, 13u)], u_input.d, 32563u))), select(var_0.x, false, var_0.x) | true)), var_0.x & !var_0.x, 0u);
    var var_3 = reverseBits(var_2.b << (var_2.e % 32u));
    global1 = array<u32, 13>();
    return Struct_1(~(-2147483647i), func_3(var_2, firstTrailingBit(vec4<i32>(u_input.a, ~1i, i32(-1i) * -2147483647i, u_input.b.x))), _wgslsmith_dot_vec2_u32(arg_1.ww, max(vec2<u32>(var_2.e, ~u_input.d), arg_1.yz)), any(vec2<bool>(var_2.c < ~4294967295u, !var_2.d & false)), ~var_2.e);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 13>();
    let var_0 = -875f;
    let var_1 = _wgslsmith_f_op_f32(var_0 * var_0);
    var var_2 = Struct_2(func_4(func_1(~firstTrailingBit(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 13u)], 13u)], 4294967295u)), Struct_3(true, ~vec4<i32>(-32647i, u_input.a, u_input.b.x, 19717i), var_1, Struct_2(Struct_1(u_input.a, u_input.a, 0u, false, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 13u)], 13u)], 13u)], 13u)]), u_input.d)), Struct_1(41567i, countOneBits(20511i), 116094u, true, _wgslsmith_mult_u32(4294967295u, u_input.c))), (abs(vec4<u32>(u_input.c, global1[_wgslsmith_index_u32(u_input.d, 13u)], u_input.d, global1[_wgslsmith_index_u32(47879u, 13u)])) | firstLeadingBit(vec4<u32>(u_input.c, global1[_wgslsmith_index_u32(u_input.d, 13u)], global1[_wgslsmith_index_u32(25787u, 13u)], 92338u))) | ~(~vec4<u32>(111132u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 13u)], 13u)], 13u)], 13u)], 109125u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 13u)], 13u)]))), u_input.d);
    let var_3 = 31099i;
    let var_4 = select(!(!vec3<bool>(false, var_2.a.d, any(vec2<bool>(var_2.a.d, false)))), vec3<bool>(false, !(11985u <= max(var_2.a.e, 4294967295u)), all(vec4<bool>(var_2.a.d, !var_2.a.d, false, var_2.a.d & false))), true);
    var var_5 = var_2.a.b;
    var var_6 = ~(countOneBits(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(1u, 57796u)), firstLeadingBit(vec2<u32>(u_input.c, 0u)), select(vec2<u32>(global1[_wgslsmith_index_u32(u_input.d, 13u)], 1u), vec2<u32>(1u, 0u), false))) ^ firstTrailingBit(~(vec2<u32>(24366u, 19737u) << (vec2<u32>(12645u, var_2.b) % vec2<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1257f, _wgslsmith_f_op_f32(func_2()))), var_1), _wgslsmith_f_op_f32(-var_0))), vec4<u32>(0u, firstTrailingBit(~48425u), 35430u, 0u), _wgslsmith_f_op_f32(step(var_0, 1f)), 1u);
}

