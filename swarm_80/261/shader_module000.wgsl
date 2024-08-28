struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_1, 28>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_2) -> bool {
    global0 = abs(~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(11515u, 23389u, 1u), ~vec3<u32>(arg_0.a.x, global0.x, 21591u)), u_input.a.xyx));
    let var_0 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~u_input.a, ~(~reverseBits(u_input.a))), 28u)], Struct_2(u_input.a.xy, Struct_1(firstLeadingBit(i32(-1i) * -1i)), -7718i, vec2<u32>(55284u, ~arg_0.d.x)));
    global0 = vec3<u32>(firstTrailingBit(~max(0u, ~1u)), 51596u, var_0.b.d.x);
    let var_1 = -(vec2<i32>(_wgslsmith_add_i32(~var_0.b.b.a, -1925i), var_0.b.b.a) >> ((min(~vec2<u32>(40001u, 1u), var_0.b.d) << (vec2<u32>(countOneBits(47447u), max(var_0.b.d.x, 0u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    global1 = array<Struct_1, 28>();
    return any(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), false)), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true)));
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_2 {
    let var_0 = !(_wgslsmith_f_op_f32(step(-974f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -913f)))) < _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0 - arg_0), arg_1))));
    let var_1 = select(select(!(!vec3<bool>(var_0, true, var_0)), vec3<bool>(all(vec2<bool>(true, var_0)) || (var_0 && var_0), true, true), true | !func_3(Struct_2(vec2<u32>(1u, 1u), global1[_wgslsmith_index_u32(u_input.a.x, 28u)], -13563i, global0.yx))), select(select(vec3<bool>(true, all(vec4<bool>(true, var_0, var_0, var_0)), !var_0), vec3<bool>(!var_0, true, var_0), select(vec3<bool>(true, true, true), vec3<bool>(var_0, var_0, false), true)), vec3<bool>(true, var_0, !var_0), vec3<bool>(true, select(!var_0, true, 2978f >= arg_1), var_0)), !(!select(!var_0, var_0, var_0)));
    var var_2 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, countOneBits(56509u)) >> ((~firstTrailingBit(4294967295u) | 51252u) % 32u), 28u)], Struct_2(vec2<u32>(0u, ~(~52466u)), global1[_wgslsmith_index_u32(32607u, 28u)], -_wgslsmith_clamp_i32(abs(2147483647i), u_input.c, countOneBits(-34259i)), global0.xy));
    var var_3 = vec3<bool>(var_1.x, u_input.b != u_input.b, all(select(select(vec4<bool>(true, var_1.x, false, false), !vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(false, var_1.x, var_0, true)), vec4<bool>(var_1.x, var_0, 45016u == global0.x, var_0), select(select(vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(var_0, false, var_0, var_0), var_0), select(vec4<bool>(false, var_0, var_0, var_0), vec4<bool>(false, true, false, var_1.x), vec4<bool>(false, var_0, var_0, var_1.x)), select(vec4<bool>(true, var_1.x, var_1.x, true), vec4<bool>(var_0, false, true, var_0), true)))));
    var var_4 = ~(~(~abs(~1u)));
    return var_2.b;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: f32) -> i32 {
    let var_0 = Struct_2(vec2<u32>(arg_2.a.x, ~u_input.a.x), Struct_1(arg_2.b.a), ~(-2147483647i), arg_2.d);
    var var_1 = vec2<i32>(32493i, _wgslsmith_clamp_i32(select(_wgslsmith_div_i32(_wgslsmith_mult_i32(arg_0.b.c, arg_0.b.c), arg_0.b.b.a | u_input.c), -32910i, true && any(vec3<bool>(true, true, true))), (_wgslsmith_add_i32(-19549i, arg_2.c) & arg_0.a.a) >> (2254u % 32u), i32(-1i) * -2147483647i));
    global0 = u_input.a.yxw;
    var_1 = -(~(~max(min(vec2<i32>(var_1.x, -33171i), vec2<i32>(-2147483647i, 1i)), countOneBits(vec2<i32>(-1i, 18620i)))));
    var var_2 = var_0;
    return _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i | arg_2.c, countOneBits(u_input.c), ~(-305i)) & -max(vec3<i32>(0i, u_input.b, var_0.b.a), vec3<i32>(0i, 3720i, u_input.c)), _wgslsmith_sub_vec3_i32(vec3<i32>(-33646i, -2147483647i, var_0.c) ^ -vec3<i32>(2147483647i, -2147483647i, var_2.c), -_wgslsmith_sub_vec3_i32(vec3<i32>(1i, arg_0.b.c, 2147483647i), vec3<i32>(25844i, arg_0.a.a, u_input.b)))), vec3<i32>(-3195i << (1u % 32u), abs(var_1.x), min(8678i, _wgslsmith_div_i32(arg_2.b.a, u_input.b))));
}

fn func_1(arg_0: vec4<bool>) -> bool {
    let var_0 = 54321i;
    global1 = array<Struct_1, 28>();
    var var_1 = ~var_0;
    var var_2 = vec4<i32>(-1i) * -((~vec4<i32>(2147483647i, -2147483647i, 2147483647i, -13333i) << (~vec4<u32>(global0.x, 71570u, 4294967295u, 16179u) % vec4<u32>(32u))) & vec4<i32>(32618i, _wgslsmith_dot_vec4_i32(vec4<i32>(-9275i, u_input.c, -4877i, 18223i), vec4<i32>(u_input.c, u_input.b, var_0, u_input.b)), u_input.b | -41490i, var_0));
    var var_3 = func_4(Struct_3(global1[_wgslsmith_index_u32(1u, 28u)], func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2305f * 1977f) - 796f), _wgslsmith_f_op_f32(-489f + -1079f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1000f)), -886f))), 1000f), Struct_2(max(_wgslsmith_mod_vec2_u32(func_2(-204f, -564f).a, vec2<u32>(global0.x, 1u) << (vec2<u32>(56580u, u_input.a.x) % vec2<u32>(32u))), u_input.a.wz), func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(606f)))), _wgslsmith_div_f32(-1595f, _wgslsmith_f_op_f32(-542f - 124f))).b, -2147483647i, ~global0.xx), -516f);
    return select(!(!arg_0.x), !(countOneBits(max(u_input.b, -2147483647i)) <= (~var_0 & abs(2147483647i))), all(vec3<bool>(true, false, any(!vec3<bool>(false, false, arg_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mod_vec3_u32(select(u_input.a.ywz, abs(max(vec3<u32>(global0.x, u_input.a.x, global0.x), u_input.a.wyz)) | vec3<u32>(global0.x, 0u, u_input.a.x), vec3<bool>(true, func_1(vec4<bool>(true, false, true, true)), true)), vec3<u32>(0u, _wgslsmith_mod_u32(4294967295u, 18705u), ~global0.x));
    let var_0 = any(select(vec2<bool>(!any(vec2<bool>(true, false)), false), vec2<bool>(any(vec2<bool>(true, true)), !func_3(Struct_2(global0.xy, global1[_wgslsmith_index_u32(4348u, 28u)], u_input.b, global0.yz))), all(vec2<bool>(true, true))));
    var var_1 = vec2<u32>(u_input.a.x, reverseBits(global0.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1675f, -636f, -1768f)), vec3<f32>(_wgslsmith_f_op_f32(207f - -614f), _wgslsmith_f_op_f32(ceil(109f)), -1000f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-129f, -1232f, 940f), vec3<f32>(1650f, -115f, -756f))) * vec3<f32>(-543f, -502f, 2009f)))));
    var var_3 = u_input.c;
    global0 = abs(firstLeadingBit(min(u_input.a.ywx, vec3<u32>(0u, 54599u, ~u_input.a.x))));
    var var_4 = Struct_2(vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a.xyz, u_input.a.zyx ^ u_input.a.zzx), _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, var_1.x, 0u), vec3<u32>(1u, 27728u, 4155u)), u_input.a.wxx)), 9115u), func_2(-1734f, var_2.x).b, _wgslsmith_clamp_i32(u_input.c, 20102i, _wgslsmith_mult_i32(reverseBits(~u_input.c), 1i)), global0.yz);
    let x = u_input.a;
    s_output = StorageBuffer(-238f, abs(~abs(u_input.a.wyy) & reverseBits(u_input.a.xwy)), ~35654u, _wgslsmith_f_op_f32(549f * _wgslsmith_div_f32(525f, 1361f)), vec2<i32>(_wgslsmith_dot_vec2_i32(-(vec2<i32>(-38135i, var_4.c) ^ vec2<i32>(0i, var_4.c)), abs(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, var_4.b.a), vec2<i32>(u_input.b, var_4.b.a)))), 1i));
}

