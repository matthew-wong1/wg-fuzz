struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec2<u32>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<f32>,
    c: bool,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 32>;

var<private> global1: array<i32, 13>;

var<private> global2: array<bool, 24>;

var<private> global3: array<vec4<f32>, 18>;

var<private> global4: array<Struct_5, 7> = array<Struct_5, 7>(Struct_5(Struct_1(vec2<bool>(false, true), vec2<bool>(true, true)), vec3<f32>(317f, -1196f, -260f), true, Struct_1(vec2<bool>(true, false), vec2<bool>(false, true)), 1u), Struct_5(Struct_1(vec2<bool>(true, false), vec2<bool>(true, true)), vec3<f32>(1576f, 530f, -401f), true, Struct_1(vec2<bool>(false, false), vec2<bool>(false, true)), 87080u), Struct_5(Struct_1(vec2<bool>(false, true), vec2<bool>(false, false)), vec3<f32>(455f, -1228f, 894f), false, Struct_1(vec2<bool>(true, true), vec2<bool>(true, false)), 33940u), Struct_5(Struct_1(vec2<bool>(false, false), vec2<bool>(false, true)), vec3<f32>(-1530f, -676f, -1765f), true, Struct_1(vec2<bool>(true, false), vec2<bool>(true, true)), 4294967295u), Struct_5(Struct_1(vec2<bool>(true, false), vec2<bool>(true, true)), vec3<f32>(115f, 1513f, -1403f), true, Struct_1(vec2<bool>(true, true), vec2<bool>(true, false)), 89136u), Struct_5(Struct_1(vec2<bool>(false, true), vec2<bool>(false, true)), vec3<f32>(1354f, -463f, -2125f), false, Struct_1(vec2<bool>(true, false), vec2<bool>(true, false)), 21369u), Struct_5(Struct_1(vec2<bool>(true, true), vec2<bool>(true, false)), vec3<f32>(1048f, 267f, 2061f), false, Struct_1(vec2<bool>(true, false), vec2<bool>(true, true)), 4294967295u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_3) -> u32 {
    global2 = array<bool, 24>();
    var var_0 = false;
    let var_1 = firstLeadingBit(~(-abs(51135i)));
    let var_2 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(-(i32(-1i) * -2147483647i), global1[_wgslsmith_index_u32(1u, 13u)]), ~abs(arg_0.a.x), _wgslsmith_mult_i32(~u_input.c.x, 49910i));
    var var_3 = Struct_1(arg_0.c, vec2<bool>(!arg_0.b, true));
    return 4294967295u;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: Struct_5) -> bool {
    var var_0 = reverseBits(global1[_wgslsmith_index_u32(func_3(Struct_3(max(countOneBits(vec2<i32>(6632i, 25456i)), u_input.a.yz & u_input.a.wy), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(min(69181u, u_input.b.x), ~4294967295u), 24u)], !(!arg_2.d.b))), 13u)]);
    let var_1 = Struct_4(Struct_3(arg_1.yx, !all(!vec3<bool>(arg_2.d.b.x, arg_2.d.a.x, global2[_wgslsmith_index_u32(19190u, 24u)])), vec2<bool>(!(543f == arg_0.x), 17359i < _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, arg_1.x), vec2<i32>(53384i, -25737i)))));
    var var_2 = Struct_1(vec2<bool>(false, global2[_wgslsmith_index_u32(17891u, 24u)]), select(arg_2.a.b, vec2<bool>(false, false), !all(!var_1.a.c)));
    let var_3 = ~u_input.c;
    global1 = array<i32, 13>();
    return -296f == arg_2.b.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: i32, arg_3: Struct_4) -> u32 {
    let var_0 = Struct_2(vec4<bool>(all(vec3<bool>(func_2(vec2<f32>(1213f, -720f), u_input.a.zyw, Struct_5(Struct_1(vec2<bool>(arg_1.b, global2[_wgslsmith_index_u32(19785u, 24u)]), vec2<bool>(arg_1.c.x, global2[_wgslsmith_index_u32(39331u, 24u)])), vec3<f32>(-758f, -697f, 850f), arg_1.c.x, Struct_1(arg_0.b, vec2<bool>(arg_0.a.x, arg_3.a.c.x)), u_input.b.x)), any(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], arg_1.c.x, false)), !arg_0.b.x)), !all(vec2<bool>(true, true)), true, arg_1.b || arg_1.b), Struct_1(!select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 24u)], false), vec2<bool>(true, false), vec2<bool>(arg_1.c.x, true)), arg_1.c), ~((global0[_wgslsmith_index_u32(1u, 32u)] << (vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u))) << (((u_input.b.xx ^ vec2<u32>(0u, u_input.b.x)) | vec2<u32>(81771u, 4294967295u)) % vec2<u32>(32u))), global1[_wgslsmith_index_u32(4294967295u, 13u)], Struct_1(vec2<bool>(all(vec2<bool>(false, false)), global2[_wgslsmith_index_u32(~abs(u_input.b.x), 24u)]), arg_3.a.c));
    global0 = array<vec2<u32>, 32>();
    global1 = array<i32, 13>();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(126f, -476f)))), _wgslsmith_f_op_f32(f32(-1f) * -1475f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(553f + _wgslsmith_f_op_f32(-973f - -1000f))));
    global4 = array<Struct_5, 7>();
    return abs(~u_input.b.x);
}

fn func_4(arg_0: Struct_5) -> Struct_4 {
    let var_0 = Struct_3(u_input.c.ww, any(vec3<bool>(!any(arg_0.d.a), false, any(!vec3<bool>(global2[_wgslsmith_index_u32(7932u, 24u)], false, global2[_wgslsmith_index_u32(1u, 24u)])))), !(!vec2<bool>(all(vec4<bool>(global2[_wgslsmith_index_u32(0u, 24u)], global2[_wgslsmith_index_u32(arg_0.e, 24u)], false, global2[_wgslsmith_index_u32(4294967295u, 24u)])), any(vec3<bool>(true, false, arg_0.c)))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), -370f);
    var_1 = _wgslsmith_div_vec2_f32(arg_0.b.yx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-886f - -385f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.b.x)) - _wgslsmith_f_op_f32(-var_1.x)))));
    let var_2 = arg_0.b;
    let var_3 = global2[_wgslsmith_index_u32(~(~(~(~u_input.b.x))), 24u)];
    return Struct_4(var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_5, 7>();
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~(~u_input.b.x)), ~(~_wgslsmith_add_u32(u_input.b.x, 0u))), 24u)] == global2[_wgslsmith_index_u32(65483u, 24u)];
    var var_1 = func_4(global4[_wgslsmith_index_u32(~(~func_1(Struct_1(vec2<bool>(false, true), vec2<bool>(false, false)), Struct_3(u_input.c.yx, true, vec2<bool>(var_0, true)), u_input.a.x, Struct_4(Struct_3(vec2<i32>(global1[_wgslsmith_index_u32(0u, 13u)], -15768i), global2[_wgslsmith_index_u32(6863u, 24u)], vec2<bool>(var_0, false))))), 7u)]);
    var var_2 = Struct_2(vec4<bool>(!var_0 && true, var_0, !all(vec4<bool>(var_0, global2[_wgslsmith_index_u32(u_input.b.x, 24u)], false, false)), !(!(!var_0))), Struct_1(vec2<bool>(false, !var_1.a.c.x), !(!select(var_1.a.c, vec2<bool>(var_0, var_0), true))), u_input.b.xy, var_1.a.a.x, Struct_1(var_1.a.c, !(!vec2<bool>(false, var_0))));
    global0 = array<vec2<u32>, 32>();
    let var_3 = Struct_2(vec4<bool>(!any(var_2.a.zwz), !all(var_2.e.a), var_0, false), var_2.e, u_input.b.zx, (((var_1.a.a.x << (38841u % 32u)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(23205u, 1u, 39193u, var_2.c.x), vec4<u32>(var_2.c.x, u_input.b.x, var_2.c.x, 0u)) % 32u)) ^ 1i) ^ var_1.a.a.x, Struct_1(vec2<bool>(select(true, true, false), true), var_1.a.c));
    global0 = array<vec2<u32>, 32>();
    var var_4 = true != (!var_1.a.c.x | !var_1.a.b);
    global2 = array<bool, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(~60550u, var_2.c.x), select(~var_2.c.x, abs(56542u), any(vec4<bool>(var_3.b.b.x, var_2.b.b.x, true, true)))), ~firstTrailingBit(24739u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(492f, 1f, true))))));
}

