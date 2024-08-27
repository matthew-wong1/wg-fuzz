struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: Struct_2,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec2<u32>, 7> = array<vec2<u32>, 7>(vec2<u32>(18625u, 48603u), vec2<u32>(0u, 79673u), vec2<u32>(30287u, 25714u), vec2<u32>(66411u, 16081u), vec2<u32>(0u, 1u), vec2<u32>(1u, 1u), vec2<u32>(0u, 41451u));

var<private> global2: array<vec3<f32>, 27> = array<vec3<f32>, 27>(vec3<f32>(-1061f, 444f, -2061f), vec3<f32>(300f, 486f, 956f), vec3<f32>(-2387f, -703f, -264f), vec3<f32>(1000f, -325f, 1000f), vec3<f32>(2128f, 1553f, -1480f), vec3<f32>(-601f, 1546f, -2475f), vec3<f32>(979f, -1236f, -241f), vec3<f32>(712f, 976f, 746f), vec3<f32>(2481f, -418f, 1000f), vec3<f32>(1000f, 1876f, 176f), vec3<f32>(386f, -577f, 1415f), vec3<f32>(-1000f, 1000f, -352f), vec3<f32>(735f, 1000f, -961f), vec3<f32>(227f, 553f, 295f), vec3<f32>(631f, -287f, -234f), vec3<f32>(-1306f, -1000f, -348f), vec3<f32>(-1272f, -425f, -1561f), vec3<f32>(-142f, -366f, -1974f), vec3<f32>(-1086f, 1169f, -1299f), vec3<f32>(2021f, 201f, -894f), vec3<f32>(1334f, -1000f, 625f), vec3<f32>(-146f, 1059f, -571f), vec3<f32>(-1000f, 504f, 328f), vec3<f32>(1508f, 333f, -1291f), vec3<f32>(1409f, 1104f, 1302f), vec3<f32>(184f, -801f, -2002f), vec3<f32>(-979f, -1000f, 466f));

var<private> global3: Struct_4;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(global0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.e, global0.a.x) - _wgslsmith_f_op_f32(floor(667f))), -1087f, 430f)), _wgslsmith_mult_vec3_u32(global3.c.b.b, firstTrailingBit(reverseBits(global3.c.b.b))), true, !(!select(!vec3<bool>(true, global3.c.b.c, global3.c.b.d.x), global3.c.b.d, global3.b.x)));
    global2 = array<vec3<f32>, 27>();
    var var_1 = Struct_2(u_input.b, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(918f, 294f, global3.c.b.a.x, 1000f))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, -163f) - _wgslsmith_f_op_vec4_f32(round(var_0.a)))), vec3<u32>(abs(var_0.b.x), _wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, u_input.a), u_input.a), countOneBits(_wgslsmith_mult_u32(global3.c.b.b.x, 21257u))), !(!(-502f > global0.a.x)), select(!(!vec3<bool>(var_0.d.x, var_0.d.x, false)), vec3<bool>(select(global3.b.x, false, var_0.c), all(vec2<bool>(false, var_0.d.x)), var_0.d.x), select(vec3<bool>(false, var_0.c, false), var_0.d, var_0.b.x < 54353u))), global3.c.c);
    global2 = array<vec3<f32>, 27>();
    let var_2 = global3.d;
    return -6233i;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: i32, arg_3: u32) -> f32 {
    global2 = array<vec3<f32>, 27>();
    let var_0 = _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(67477u, global3.c.b.b.x, arg_3, 8554u), vec4<u32>(global3.c.b.b.x, 12478u, global3.c.b.b.x, 5684u)), _wgslsmith_div_vec4_u32(vec4<u32>(15961u, 24889u, 16807u, 3762u), vec4<u32>(arg_3, 1u, 4294967295u, 37841u))) ^ ~(~firstTrailingBit(vec4<u32>(33606u, 4294967295u, 0u, u_input.d))), ~_wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_3, ~u_input.a, 0u), vec4<u32>(20382u, ~global3.c.b.b.x, ~19382u, global3.c.b.b.x)));
    var var_1 = Struct_1(vec4<f32>(global3.e, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global3.e)))), _wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(-global3.d)))), global0.a.x, -3421f), select(~(global3.c.b.b & ~global3.c.b.b), global3.c.b.b, !vec3<bool>(true & arg_1.x, true, false)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global3.e)))) >= _wgslsmith_f_op_f32(ceil(arg_0.x)), !global3.c.b.d);
    var var_2 = ((-2147483647i ^ u_input.b) | select(2147483647i, -global3.a, true)) >> (u_input.a % 32u);
    let var_3 = global3.c.b;
    return _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(arg_0.x - -1180f), any(arg_1.wy)));
}

fn func_2() -> Struct_3 {
    let var_0 = global3.c.b.b;
    global3 = Struct_4(1i, vec2<bool>(!((false || global3.b.x) || false), true), global3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global3.e, _wgslsmith_f_op_f32(exp2(global0.a.x)), false)), _wgslsmith_div_f32(-906f, global3.e))) + 2322f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(275f - -585f)), -1346f)));
    let var_1 = -(vec2<i32>(u_input.c ^ 50773i, firstTrailingBit(u_input.b)) | _wgslsmith_div_vec2_i32(vec2<i32>(global3.a, global3.c.c.x), vec2<i32>(-31103i, u_input.c))) ^ global3.c.c.zz;
    global2 = array<vec3<f32>, 27>();
    global3 = Struct_4(_wgslsmith_mod_i32(0i, 1i), vec2<bool>(global3.c.b.d.x, global3.b.x && global3.b.x), global3.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global3.c.b.a.x, -1000f)), 1000f)))), global0.a.x);
    return Struct_3(vec2<f32>(_wgslsmith_f_op_f32(func_4(global0.a, vec4<bool>(all(vec4<bool>(true, global3.c.b.d.x, true, global3.b.x)), global3.c.b.c, global3.a != 0i, global3.c.b.d.x), func_3(), ~_wgslsmith_mod_u32(global3.c.b.b.x, 4294967295u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global0.a.x))))));
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: vec3<bool>, arg_3: vec4<bool>) -> Struct_3 {
    let var_0 = func_2();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-830f, -1353f)), global3.c.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.a.x))), _wgslsmith_f_op_f32(-var_0.a.x))), ~vec3<u32>(_wgslsmith_div_u32(4294967295u, 1643u), 4294967295u, _wgslsmith_clamp_u32(global3.c.b.b.x, 1u, global3.c.b.b.x) | (4294967295u | global3.c.b.b.x)), any(arg_3.wwy), arg_3.zzz);
    var var_2 = abs(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~u_input.a), global3.c.b.b.x), 7u)] << (~vec2<u32>(u_input.a, ~1u) % vec2<u32>(32u)));
    var var_3 = Struct_4(max(0i, global3.c.a), vec2<bool>(global3.c.b.b.x == _wgslsmith_dot_vec3_u32(vec3<u32>(32348u, 4294967295u, global3.c.b.b.x) >> (vec3<u32>(global3.c.b.b.x, var_2.x, global3.c.b.b.x) % vec3<u32>(32u)), select(vec3<u32>(1u, global3.c.b.b.x, var_2.x), vec3<u32>(38289u, global3.c.b.b.x, 81721u), var_1.c)), true), global3.c, _wgslsmith_f_op_f32(step(355f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, 823f)), vec4<bool>(arg_2.x, false, arg_3.x, false), -8468i, firstLeadingBit(global3.c.b.b.x)))))), -1012f);
    let var_4 = var_3.c;
    return Struct_3(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.a.zx * var_4.b.a.wy) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(864f, var_3.c.b.a.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-319f, -945f), vec2<f32>(1606f, 1187f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, var_4.b.a.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -524f)), global3.c.c.zw << (global3.c.b.b.zx % vec2<u32>(32u)), !(!select(global3.c.b.d, global3.c.b.d, !vec3<bool>(global3.c.b.c, global3.b.x, true))), !(!(!vec4<bool>(false, global3.c.b.d.x, global3.c.b.c, global3.c.b.d.x))));
    let var_1 = 1u;
    let var_2 = false;
    global1 = array<vec2<u32>, 7>();
    let var_3 = all(!global3.c.b.d.xy);
    global1 = array<vec2<u32>, 7>();
    global1 = array<vec2<u32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(global3.c.c, min(15192i << (reverseBits(abs(var_1)) % 32u), ~(1i ^ min(u_input.b, global3.c.a))));
}

