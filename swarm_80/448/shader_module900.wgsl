struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global2: array<vec2<f32>, 2> = array<vec2<f32>, 2>(vec2<f32>(-697f, 1839f), vec2<f32>(655f, -1005f));

var<private> global3: array<i32, 21>;

var<private> global4: array<Struct_4, 2> = array<Struct_4, 2>(Struct_4(vec4<f32>(214f, -400f, -879f, 975f), 1554f, Struct_2(Struct_1(vec4<u32>(13837u, 1u, 17358u, 4294967295u), 0u, 0u, vec2<bool>(false, true)), -8289i)), Struct_4(vec4<f32>(-545f, -711f, 724f, -212f), 1010f, Struct_2(Struct_1(vec4<u32>(4294967295u, 43u, 0u, 0u), 10952u, 2403u, vec2<bool>(true, false)), i32(-2147483648))));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: i32) -> bool {
    global4 = array<Struct_4, 2>();
    global1 = vec4<bool>(global1.x, !(!(!(global1.x | global1.x))), true, global1.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * arg_1) + -1311f)))) < _wgslsmith_f_op_f32(f32(-1f) * -1055f);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3) -> Struct_2 {
    var var_0 = ~(-arg_1.a.ww);
    return Struct_2(arg_1.d, u_input.b.x);
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = func_2(!vec2<bool>(all(select(vec4<bool>(true, global1.x, arg_0.a.d.x, false), vec4<bool>(arg_0.a.d.x, false, global1.x, true), arg_0.a.d.x)), !global1.x), Struct_3(select(vec4<i32>(global3[_wgslsmith_index_u32(global0.x, 21u)], 1i, u_input.b.x, global3[_wgslsmith_index_u32(arg_0.a.c, 21u)]) | _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, 2147483647i, global3[_wgslsmith_index_u32(4294967295u, 21u)], arg_0.b), u_input.b), u_input.b, any(!vec4<bool>(global1.x, arg_0.a.d.x, true, true))), abs(~global0.x) << (_wgslsmith_clamp_u32(1u | arg_0.a.c, global0.x, global0.x) % 32u), select(arg_0.a.a, arg_0.a.a, any(select(arg_0.a.d, vec2<bool>(true, false), false))), func_2(vec2<bool>(arg_0.b < u_input.b.x, false), Struct_3(-u_input.b, 1u, _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global0.x, 0u, 53847u), arg_0.a.a), func_2(global1.xw, Struct_3(u_input.b, u_input.a, vec4<u32>(0u, 22569u, 4294967295u, 1108u), arg_0.a)).a)).a)).b;
    var var_1 = Struct_2(arg_0.a, -u_input.b.x);
    global4 = array<Struct_4, 2>();
    var var_2 = Struct_4(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1288f * 222f)), _wgslsmith_f_op_f32(-1665f - _wgslsmith_f_op_f32(step(-395f, 379f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -147f)), 1000f, var_1.a.c < 50670u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-828f)) * 606f) - _wgslsmith_f_op_f32(-788f + _wgslsmith_f_op_f32(abs(-1000f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(292f + -868f) * _wgslsmith_f_op_f32(select(-1000f, 1185f, false)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-444f - 493f))), -549f)) * -2249f), func_2(var_1.a.d, Struct_3(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.b, arg_0.b, u_input.b.x, global3[_wgslsmith_index_u32(arg_0.a.a.x, 21u)]), u_input.b)), firstTrailingBit(1u), vec4<u32>(var_1.a.b << (21194u % 32u), select(12545u, 5493u, global1.x), _wgslsmith_sub_u32(12376u, 1u), firstTrailingBit(arg_0.a.c)), var_1.a)));
    global0 = vec2<u32>(firstLeadingBit(95965u >> (~arg_0.a.a.x % 32u)), 6051u);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_2.a.x)), var_2.a.x));
}

fn func_4(arg_0: vec2<f32>) -> Struct_1 {
    global4 = array<Struct_4, 2>();
    global4 = array<Struct_4, 2>();
    let var_0 = -241f;
    let var_1 = firstLeadingBit(vec2<u32>(_wgslsmith_mod_u32(~60755u, u_input.a & 4294967295u), ~1u) ^ ~(~vec2<u32>(u_input.a, 19762u) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 1u)) % vec2<u32>(32u))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0.x)), 1391f, -235f)));
    return func_2(!vec2<bool>(all(vec3<bool>(true, true, false)) & true, global1.x), Struct_3(max(u_input.b, firstLeadingBit(u_input.b)), ~global0.x, countOneBits(vec4<u32>(var_1.x, 25775u, 91091u, 0u) ^ vec4<u32>(var_1.x, 1u, global0.x, var_1.x)) & ((vec4<u32>(global0.x, 4697u, u_input.a, var_1.x) << (vec4<u32>(global0.x, var_1.x, 1u, var_1.x) % vec4<u32>(32u))) >> (~vec4<u32>(global0.x, u_input.a, u_input.a, var_1.x) % vec4<u32>(32u))), func_2(vec2<bool>(false, func_1(vec2<i32>(global3[_wgslsmith_index_u32(4294967295u, 21u)], 65726i), -1267f, global3[_wgslsmith_index_u32(17098u, 21u)])), Struct_3(-u_input.b, 4294967295u, vec4<u32>(var_1.x, global0.x, 1u, global0.x) << (vec4<u32>(0u, u_input.a, var_1.x, u_input.a) % vec4<u32>(32u)), func_2(global1.wx, Struct_3(u_input.b, 0u, vec4<u32>(69159u, u_input.a, var_1.x, u_input.a), Struct_1(vec4<u32>(u_input.a, 4294967295u, 11452u, 17675u), 4294967295u, 9102u, global1.zw))).a)).a)).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec4<u32>(reverseBits(u_input.a << (49320u % 32u)), global0.x, u_input.a, 0u));
    global2 = array<vec2<f32>, 2>();
    global2 = array<vec2<f32>, 2>();
    global4 = array<Struct_4, 2>();
    let var_1 = ~(~_wgslsmith_div_vec3_i32(~(~u_input.b.xzw), _wgslsmith_mult_vec3_i32(-u_input.b.wwy, select(vec3<i32>(-2147483647i, u_input.b.x, global3[_wgslsmith_index_u32(global0.x, 21u)]), u_input.b.yxw, false))));
    global1 = vec4<bool>(select(select(all(vec2<bool>(false, global1.x)), global1.x, global1.x), var_0.x > firstTrailingBit(global0.x), func_1(var_1.zy, 581f, 1i)) || select(any(vec4<bool>(false, global1.x, global1.x, true)), global1.x, false), !global1.x, true, false);
    var var_2 = func_4(vec2<f32>(-152f, _wgslsmith_f_op_f32(func_3(func_2(select(global1.yx, global1.zz, false), Struct_3(vec4<i32>(1i, 1i, -1i, global3[_wgslsmith_index_u32(32520u, 21u)]), 65670u, var_0, Struct_1(var_0, 1u, 60433u, vec2<bool>(global1.x, global1.x))))))));
    var var_3 = Struct_1(var_0, var_2.c, 1u, vec2<bool>(true, global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(7236i);
}

