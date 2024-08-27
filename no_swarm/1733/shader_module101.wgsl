struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-431f, -458f);

var<private> global1: array<vec4<u32>, 21> = array<vec4<u32>, 21>(vec4<u32>(52420u, 64244u, 67781u, 53235u), vec4<u32>(56938u, 1u, 30004u, 114415u), vec4<u32>(47529u, 4294967295u, 1u, 0u), vec4<u32>(1u, 37487u, 0u, 30061u), vec4<u32>(25453u, 87343u, 1499u, 12141u), vec4<u32>(1u, 4294967295u, 4294967295u, 70984u), vec4<u32>(0u, 0u, 26458u, 23803u), vec4<u32>(64643u, 44417u, 0u, 1u), vec4<u32>(4294967295u, 57909u, 32455u, 20459u), vec4<u32>(20734u, 4294967295u, 37240u, 4294967295u), vec4<u32>(30081u, 4294967295u, 19484u, 30648u), vec4<u32>(54481u, 1u, 60464u, 0u), vec4<u32>(4294967295u, 65522u, 1u, 10517u), vec4<u32>(4294967295u, 1u, 33457u, 4359u), vec4<u32>(384u, 18403u, 46569u, 0u), vec4<u32>(4294967295u, 52266u, 0u, 4294967295u), vec4<u32>(64418u, 22306u, 1u, 0u), vec4<u32>(0u, 38918u, 1u, 25800u), vec4<u32>(1u, 22238u, 41572u, 30908u), vec4<u32>(1907u, 4294967295u, 0u, 0u), vec4<u32>(0u, 31403u, 1u, 65114u));

var<private> global2: array<vec3<i32>, 3>;

var<private> global3: array<vec2<u32>, 20>;

var<private> global4: array<f32, 15>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> f32 {
    let var_0 = u_input.e;
    let var_1 = !vec2<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1517f), _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-431f, -724f)) + arg_0.b), _wgslsmith_f_op_f32(-arg_2)));
    let var_3 = (u_input.a | 1i) < abs(0i << (abs(reverseBits(u_input.e)) % 32u));
    let var_4 = arg_3;
    return -1000f;
}

fn func_2(arg_0: i32, arg_1: vec2<bool>) -> vec3<f32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -200f), _wgslsmith_f_op_f32(f32(-1f) * -1375f), -712f);
    global2 = array<vec3<i32>, 3>();
    return vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_0.x)))) + global4[_wgslsmith_index_u32(u_input.b ^ firstLeadingBit(903u), 15u)]), _wgslsmith_f_op_f32(select(1300f, _wgslsmith_f_op_f32(func_3(Struct_1(vec3<f32>(-1613f, var_0.x, global4[_wgslsmith_index_u32(68170u, 15u)]), 680f), Struct_1(vec3<f32>(-104f, -227f, global0.x), -108f), -724f, Struct_1(vec3<f32>(-2727f, global4[_wgslsmith_index_u32(u_input.e, 15u)], var_0.x), global0.x))), arg_1.x))), _wgslsmith_f_op_f32(-1336f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1494f) * _wgslsmith_f_op_f32(sign(global0.x)))), var_0.x);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<u32>, arg_3: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_0.a.yx);
    var var_1 = vec3<i32>(i32(-1i) * -17197i, arg_3.x, 0i);
    let var_2 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(min(30037u, u_input.e), 15u)] - _wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-861f)))), vec3<f32>(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2.x, 13477u), 15u)]), var_0.x, -497f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x + 1184f)))));
    let var_3 = _wgslsmith_f_op_f32(max(global0.x, 1000f));
    var var_4 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(373f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, var_3)) * _wgslsmith_f_op_f32(func_3(var_2, Struct_1(arg_0.a, -960f), -1000f, arg_0))))), var_2.a));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_4.x, _wgslsmith_f_op_f32(-var_3)))), 228f)));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1, 1301f, arg_2), _wgslsmith_f_op_vec3_f32(arg_0.a - arg_0.a)))))), global0.x);
    global4 = array<f32, 15>();
    let var_1 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.a, arg_0.a, select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a * vec3<f32>(-1138f, 1130f, -741f)), var_0.a)), _wgslsmith_f_op_vec3_f32(floor(arg_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - -243f) + arg_1));
    global4 = array<f32, 15>();
    let var_2 = var_0;
    return (_wgslsmith_sub_u32(~u_input.b, 28u) ^ 33416u) & 5806u;
}

fn func_1(arg_0: bool, arg_1: i32) -> u32 {
    var var_0 = 23890u;
    let var_1 = ~0i >> (u_input.e % 32u);
    var var_2 = vec4<u32>(u_input.b, u_input.e, 26649u, u_input.b);
    global3 = array<vec2<u32>, 20>();
    global3 = array<vec2<u32>, 20>();
    return func_5(Struct_1(vec3<f32>(171f, -1121f, _wgslsmith_f_op_f32(floor(global4[_wgslsmith_index_u32(var_2.x, 15u)]))), _wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(func_2(u_input.a, vec2<bool>(false, arg_0))), 534f), u_input.c == _wgslsmith_mult_i32(var_1, 41266i), _wgslsmith_add_vec3_u32(var_2.xyy, var_2.zyw) << (_wgslsmith_mod_vec3_u32(var_2.zwz, var_2.wyw) % vec3<u32>(32u)), ~(vec2<i32>(1i, u_input.d) >> (vec2<u32>(4294967295u, var_2.x) % vec2<u32>(32u)))))), global4[_wgslsmith_index_u32(var_2.x, 15u)], _wgslsmith_f_op_f32(step(-1294f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * 576f)) * global4[_wgslsmith_index_u32(var_2.x, 15u)]))));
}

fn func_6(arg_0: f32, arg_1: f32, arg_2: vec3<i32>, arg_3: i32) -> Struct_1 {
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-872f, 280f)) * -269f), 818f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4[_wgslsmith_index_u32(4294967295u, 15u)], global4[_wgslsmith_index_u32(u_input.e, 15u)]))))), _wgslsmith_f_op_f32(-1163f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.b, 15u)]) * -1757f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(-489f, _wgslsmith_f_op_f32(round(global0.x)), -(vec3<i32>(_wgslsmith_clamp_i32(u_input.c, -651i, 0i), abs(-21221i), -24983i) >> (vec3<u32>(u_input.e, func_1(false, u_input.a), ~u_input.e) % vec3<u32>(32u))), ~(countOneBits(u_input.c) >> (u_input.e % 32u)) & firstLeadingBit(~min(1i, 12521i)));
    let var_1 = var_0.a.xz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a.zx * vec2<f32>(-1000f, -1603f)))))), 1u, _wgslsmith_div_vec2_f32(func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-673f, -545f)) * _wgslsmith_f_op_f32(var_0.a.x * -289f)), -136f, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.e, u_input.b), 0u), 3u)], 2147483647i).a.xz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(sign(-727f))))), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.d, u_input.d, -1i, u_input.c), reverseBits(vec4<i32>(2147483647i, u_input.c, u_input.c, 2147483647i)), abs(vec4<i32>(1i, u_input.c, u_input.a, 9698i))) & _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.c, 1i, u_input.d, 1i), select(vec4<i32>(28739i, u_input.c, u_input.a, u_input.d), vec4<i32>(12088i, u_input.d, 0i, u_input.a), vec4<bool>(true, false, true, false))), -vec4<i32>(u_input.a << (0u % 32u), -u_input.a, i32(-1i) * -249i, u_input.c)));
}

