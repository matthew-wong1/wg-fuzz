struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec3<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(false, 2070f, vec3<bool>(false, false, true), 31265u), Struct_2(false, -424f, vec3<bool>(true, false, false), 15632u), Struct_2(false, -570f, vec3<bool>(false, false, true), 4294967295u), Struct_2(true, -445f, vec3<bool>(true, false, false), 4294967295u), Struct_2(false, 387f, vec3<bool>(false, true, true), 1688u), Struct_2(false, 606f, vec3<bool>(false, true, false), 0u), Struct_2(false, 711f, vec3<bool>(false, true, false), 20983u), Struct_2(true, -1194f, vec3<bool>(false, false, true), 1u), Struct_2(true, -829f, vec3<bool>(true, false, false), 0u), Struct_2(true, 1840f, vec3<bool>(true, false, true), 4294967295u), Struct_2(true, -287f, vec3<bool>(true, true, false), 0u), Struct_2(false, -1603f, vec3<bool>(false, true, true), 11429u), Struct_2(true, 554f, vec3<bool>(false, true, true), 4294967295u), Struct_2(false, -1137f, vec3<bool>(true, true, true), 0u), Struct_2(true, -570f, vec3<bool>(true, true, false), 1u), Struct_2(true, -1065f, vec3<bool>(false, false, false), 9154u), Struct_2(false, 573f, vec3<bool>(true, true, true), 5277u), Struct_2(false, 284f, vec3<bool>(false, false, false), 41032u), Struct_2(false, -557f, vec3<bool>(true, false, true), 4738u), Struct_2(true, 1582f, vec3<bool>(false, false, false), 64237u));

var<private> global1: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(true, 2092f, vec3<bool>(false, true, true), 42199u), Struct_2(true, 235f, vec3<bool>(false, true, true), 0u), Struct_2(false, 628f, vec3<bool>(true, false, false), 1u), Struct_2(false, 1000f, vec3<bool>(true, false, false), 1u), Struct_2(true, 181f, vec3<bool>(true, false, true), 1u));

var<private> global2: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>) -> u32 {
    global2 = array<vec3<bool>, 8>();
    global0 = array<Struct_2, 20>();
    var var_0 = vec4<bool>(all(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true))), select(any(select(select(vec3<bool>(false, false, false), global2[_wgslsmith_index_u32(27852u, 8u)], vec3<bool>(true, true, true)), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), !(!select(false, false, true)), true), all(!vec2<bool>(true, all(vec4<bool>(false, false, false, true)))), any(global2[_wgslsmith_index_u32(arg_0.d.x, 8u)]));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1460f - arg_0.b)), -201f, all(!global2[_wgslsmith_index_u32(arg_0.a, 8u)]))) - arg_0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.b - 1308f)))), arg_0.b);
    global1 = array<Struct_2, 5>();
    return _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.d.x, (82620u & arg_1.x) | ~75094u, ~arg_1.x), firstLeadingBit(~vec3<u32>(2890u, 4294967295u, arg_0.a)) << (arg_0.d.ywx % vec3<u32>(32u))), ~arg_1);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<f32>) -> bool {
    global0 = array<Struct_2, 20>();
    global0 = array<Struct_2, 20>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, 1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(sign(arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(277f * arg_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - arg_1.x) * arg_1.x));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(floor(arg_1.x)));
    let var_2 = Struct_1(~(~countOneBits(arg_0.x)), var_0.x, _wgslsmith_add_vec3_i32(u_input.a.xyz, -(~u_input.a.xyw)), ~vec4<u32>(arg_0.x, ~(arg_0.x << (arg_0.x % 32u)), 4294967295u, func_3(Struct_1(arg_0.x, var_0.x, vec3<i32>(u_input.a.x, -2147483647i, 1i), vec4<u32>(0u, 0u, 70961u, arg_0.x)), vec3<u32>(arg_0.x, 15813u, 175u) ^ vec3<u32>(arg_0.x, arg_0.x, 14294u))));
    return true;
}

fn func_1(arg_0: Struct_1) -> bool {
    global0 = array<Struct_2, 20>();
    var var_0 = u_input.a.xwx;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1840f, _wgslsmith_f_op_f32(trunc(1728f)), arg_0.b) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.b - arg_0.b), -534f, -838f), vec3<f32>(-125f, _wgslsmith_f_op_f32(arg_0.b + arg_0.b), arg_0.b)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1315f, 1905f, arg_0.b) - vec3<f32>(-697f, arg_0.b, arg_0.b))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-267f, 192f, 557f)))));
    var var_2 = abs(arg_0.d.yzw);
    var var_3 = !all(select(vec2<bool>(false, func_2(var_2.zy, var_1.zy)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true)), vec2<bool>(true, true)));
    return all(!select(!select(vec3<bool>(false, true, false), global2[_wgslsmith_index_u32(var_2.x, 8u)], false), select(global2[_wgslsmith_index_u32(~arg_0.a, 8u)], !global2[_wgslsmith_index_u32(0u, 8u)], true), any(vec2<bool>(true, true))));
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: i32) -> f32 {
    global0 = array<Struct_2, 20>();
    let var_0 = Struct_1(38715u, arg_2.b, u_input.a.zyx >> (firstLeadingBit(_wgslsmith_mult_vec3_u32(~vec3<u32>(arg_2.d, 1u, arg_2.d), vec3<u32>(27609u, 19624u, 69607u))) % vec3<u32>(32u)), (firstTrailingBit(~vec4<u32>(91546u, 4294967295u, 1u, arg_2.d)) & vec4<u32>(countOneBits(arg_2.d), 0u, 4294967295u, ~arg_2.d)) | ~vec4<u32>(24186u, ~arg_2.d, ~arg_2.d, 73307u));
    global1 = array<Struct_2, 5>();
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, arg_2.d, _wgslsmith_sub_u32(~var_0.d.x, var_0.a & var_0.a)) >> ((0u | firstTrailingBit(73601u)) % 32u), _wgslsmith_div_u32(var_0.a, _wgslsmith_add_u32(max(_wgslsmith_sub_u32(1u, arg_2.d), 14093u), ~min(arg_2.d, 24502u))));
    let var_2 = firstLeadingBit(u_input.a.x);
    return _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(-arg_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 20>();
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(2421f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(func_1(Struct_1(4294967295u, -1454f, vec3<i32>(-1i, 21110i, 47501i), vec4<u32>(1u, 1u, 0u, 52515u))), select(u_input.a.zz, vec2<i32>(-1i, u_input.a.x), vec2<bool>(true, true)), Struct_2(false, -790f, global2[_wgslsmith_index_u32(0u, 8u)], 61995u), ~2147483647i)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-730f)), _wgslsmith_f_op_f32(floor(-1208f)))))))));
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-283f))))))));
    var var_3 = ~_wgslsmith_add_vec3_i32(~(u_input.a.yyy >> (reverseBits(vec3<u32>(14349u, 1u, 19917u)) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(u_input.a.yzz, countOneBits(u_input.a.zxy) ^ _wgslsmith_div_vec3_i32(u_input.a.xzy, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.a.x, -2147483647i, 31847i), ~u_input.a.zyx)));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -(~u_input.a.x), u_input.a.xwz, max(u_input.a, u_input.a));
}

