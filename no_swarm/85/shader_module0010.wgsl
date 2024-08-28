struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: bool,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 22>;

var<private> global1: array<Struct_4, 26> = array<Struct_4, 26>(Struct_4(0u), Struct_4(20837u), Struct_4(16804u), Struct_4(22013u), Struct_4(4294967295u), Struct_4(1u), Struct_4(4294967295u), Struct_4(1u), Struct_4(4294967295u), Struct_4(15840u), Struct_4(22357u), Struct_4(66729u), Struct_4(4294967295u), Struct_4(0u), Struct_4(1u), Struct_4(94500u), Struct_4(33637u), Struct_4(4294967295u), Struct_4(1u), Struct_4(7059u), Struct_4(4294967295u), Struct_4(60673u), Struct_4(1u), Struct_4(1u), Struct_4(4294967295u), Struct_4(4294967295u));

var<private> global2: Struct_2 = Struct_2(Struct_1(-1i, vec4<i32>(-7938i, i32(-2147483648), i32(-2147483648), 27156i), true, vec2<bool>(false, false), vec2<u32>(41144u, 1u)), 0i);

var<private> global3: array<i32, 16> = array<i32, 16>(-10460i, 0i, -7547i, 14700i, 43418i, 27530i, -33141i, -29313i, 38313i, 17324i, 0i, -73505i, -33332i, -48655i, 1i, 56372i);

var<private> global4: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: i32, arg_3: vec3<f32>) -> vec2<i32> {
    let var_0 = arg_1;
    global4 = !(!global2.a.c);
    let var_1 = Struct_3(var_0);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)), arg_3.x);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_3.x), 607f)), _wgslsmith_f_op_f32(f32(-1f) * -2076f), var_2.x);
    return ~(-(min(firstTrailingBit(vec2<i32>(41521i, var_0.b)), _wgslsmith_mod_vec2_i32(var_1.a.a.b.yy, var_1.a.a.b.ww)) | (max(vec2<i32>(global2.b, 13540i), global2.a.b.yx) ^ firstTrailingBit(arg_1.a.b.xz))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: bool) -> Struct_2 {
    global3 = array<i32, 16>();
    let var_0 = Struct_2(global2.a, _wgslsmith_dot_vec2_i32(~func_3(-1i, Struct_2(Struct_1(1i, vec4<i32>(0i, global3[_wgslsmith_index_u32(global2.a.e.x, 16u)], 11140i, global3[_wgslsmith_index_u32(u_input.a, 16u)]), false, global2.a.d, vec2<u32>(u_input.a, 1u)), -1i), global3[_wgslsmith_index_u32(1u, 16u)], _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-865f, 1000f, -1209f), vec3<f32>(459f, 582f, 759f), false))), -_wgslsmith_mult_vec2_i32(global2.a.b.yw, arg_1) >> (vec2<u32>(u_input.a, ~0u) % vec2<u32>(32u))));
    let var_1 = select(!select(select(!vec4<bool>(false, var_0.a.d.x, true, var_0.a.c), !vec4<bool>(arg_2, true, false, arg_2), true), select(!vec4<bool>(false, true, arg_2, global2.a.c), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, arg_2), vec4<bool>(arg_2, arg_2, arg_2, false)), !vec4<bool>(global2.a.d.x, arg_2, true, var_0.a.c)), var_0.a.d.x), vec4<bool>(u_input.b <= 107959u, true, var_0.a.d.x, false), var_0.a.d.x);
    var var_2 = global2.a;
    let var_3 = vec3<u32>(~_wgslsmith_dot_vec2_u32(arg_0.xy, firstLeadingBit(arg_0.xz & global0[_wgslsmith_index_u32(39000u, 22u)])), _wgslsmith_dot_vec3_u32(arg_0, select(select(vec3<u32>(1u, var_0.a.e.x, arg_0.x), vec3<u32>(1047u, var_0.a.e.x, 10463u), true), _wgslsmith_div_vec3_u32(arg_0, vec3<u32>(u_input.a, 0u, var_0.a.e.x)), true) >> (vec3<u32>(~4294967295u, var_0.a.e.x, u_input.a) % vec3<u32>(32u))), _wgslsmith_div_u32(~u_input.a, arg_0.x) & _wgslsmith_mult_u32(~(~0u), 1u | global2.a.e.x));
    return var_0;
}

fn func_1(arg_0: Struct_2, arg_1: u32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-456f, _wgslsmith_f_op_f32(f32(-1f) * -182f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(437f, -1000f, global2.a.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1006f * _wgslsmith_f_op_f32(abs(-662f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1022f + 764f))), _wgslsmith_f_op_f32(select(-1380f, -1184f, arg_0.a.d.x)))));
    let var_1 = !(false & !global2.a.d.x);
    global2 = func_2(~(~(~vec3<u32>(arg_0.a.e.x, global2.a.e.x, 4294967295u))), firstTrailingBit(vec2<i32>(firstLeadingBit(arg_0.a.a), arg_0.b ^ arg_0.a.b.x) | arg_0.a.b.ww), arg_0.a.d.x);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -902f, 1053f)) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(464f, -804f, var_0.x)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, -2337f, -1378f)))));
    let var_3 = select(select(vec4<bool>(var_1, true, any(select(vec2<bool>(false, false), global2.a.d, vec2<bool>(global2.a.c, arg_0.a.d.x))), false), vec4<bool>(var_1, func_2(vec3<u32>(arg_1, arg_0.a.e.x, u_input.b), vec2<i32>(global2.b, arg_0.b), true).a.d.x, any(!vec4<bool>(false, var_1, arg_0.a.d.x, false)), true), !(!vec4<bool>(false, arg_0.a.c, false, global2.a.c))), !select(select(vec4<bool>(false, var_1, var_1, global2.a.d.x), vec4<bool>(arg_0.a.c, false, arg_0.a.c, false), !vec4<bool>(global2.a.c, var_1, false, false)), !vec4<bool>(var_1, var_1, false, global2.a.c), true), any(vec2<bool>(true, _wgslsmith_f_op_f32(-var_2.x) <= _wgslsmith_div_f32(var_0.x, -225f))));
    return _wgslsmith_div_u32(u_input.b, 6292u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (u_input.a | _wgslsmith_add_u32(4294967295u, select(95153u, 4294967295u, select(global2.a.d.x, global2.a.d.x, true)))) << (_wgslsmith_sub_u32(global2.a.e.x, ~func_1(Struct_2(Struct_1(0i, vec4<i32>(-9212i, -1i, 2147483647i, -30196i), false, global2.a.d, vec2<u32>(u_input.a, global2.a.e.x)), -29704i), abs(4294967295u))) % 32u);
    global0 = array<vec2<u32>, 22>();
    global0 = array<vec2<u32>, 22>();
    let var_1 = Struct_2(Struct_1(~_wgslsmith_dot_vec4_i32(global2.a.b ^ global2.a.b, _wgslsmith_mod_vec4_i32(global2.a.b, vec4<i32>(global3[_wgslsmith_index_u32(u_input.b, 16u)], 0i, global3[_wgslsmith_index_u32(4294967295u, 16u)], global3[_wgslsmith_index_u32(var_0, 16u)]))), vec4<i32>(-_wgslsmith_div_i32(1i, global2.b), global3[_wgslsmith_index_u32(var_0 << (4294967295u % 32u), 16u)], global2.a.b.x, -1i), any(!select(vec3<bool>(true, false, global2.a.c), vec3<bool>(global2.a.d.x, global2.a.d.x, true), true)), vec2<bool>(global2.a.c, any(vec4<bool>(true, global2.a.c, false, global2.a.d.x)) & global2.a.d.x), func_2(firstTrailingBit(vec3<u32>(1u, 1u, 1u)), ~(vec2<i32>(35470i, -1i) >> (global0[_wgslsmith_index_u32(4294967295u, 22u)] % vec2<u32>(32u))), !(global2.a.e.x > 107936u)).a.e), _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(~(~(~48060u)), 16u)], ~global3[_wgslsmith_index_u32(u_input.a, 16u)]));
    global0 = array<vec2<u32>, 22>();
    var var_2 = Struct_3(func_2(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 4294967295u, u_input.b), vec3<u32>(47740u, 6898u, 4294967295u), vec3<u32>(var_1.a.e.x, var_1.a.e.x, 512u)) & reverseBits(vec3<u32>(var_1.a.e.x, 36409u, 15645u)), var_1.a.b.zw, !(!var_1.a.c)));
    let var_3 = var_1.a.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(-332f, _wgslsmith_clamp_vec3_u32(~(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, var_3, u_input.a), vec3<u32>(17314u, 19119u, var_3)) ^ ~vec3<u32>(var_3, u_input.b, var_1.a.e.x)), vec3<u32>(1u & ~var_0, global2.a.e.x, _wgslsmith_mult_u32(var_1.a.e.x, var_3) & ~var_0), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_div_u32(var_1.a.e.x, var_2.a.a.e.x), ~var_2.a.a.e.x, ~u_input.b), _wgslsmith_sub_vec3_u32(vec3<u32>(global2.a.e.x, 35902u, global2.a.e.x), ~vec3<u32>(4294967295u, 4294967295u, var_2.a.a.e.x)))), ~global2.a.e.x);
}

