struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec3<bool>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: vec3<u32>,
    c: Struct_4,
    d: vec3<bool>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(true, Struct_2(Struct_1(vec2<u32>(0u, 2335u), -583f, vec3<bool>(true, true, false), vec4<f32>(-1842f, -118f, 1863f, 1264f), 499f), Struct_1(vec2<u32>(62386u, 0u), 521f, vec3<bool>(false, true, false), vec4<f32>(-493f, -439f, -547f, 621f), -845f), Struct_1(vec2<u32>(4294967295u, 0u), 1204f, vec3<bool>(false, false, true), vec4<f32>(370f, 1436f, -249f, 582f), 206f)), vec2<u32>(4294967295u, 49650u)));

var<private> global1: array<vec2<i32>, 24>;

var<private> global2: Struct_3;

var<private> global3: Struct_4 = Struct_4(Struct_3(true, Struct_2(Struct_1(vec2<u32>(39454u, 5070u), 863f, vec3<bool>(true, false, false), vec4<f32>(-340f, -1000f, 1532f, -1297f), 844f), Struct_1(vec2<u32>(4294967295u, 0u), -916f, vec3<bool>(false, false, true), vec4<f32>(-315f, 504f, 434f, 1000f), -1345f), Struct_1(vec2<u32>(3440u, 44386u), -1000f, vec3<bool>(true, true, true), vec4<f32>(1000f, -1758f, -704f, 410f), 1259f)), vec2<u32>(1u, 1u)));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_4, arg_1: f32, arg_2: i32) -> Struct_4 {
    return arg_0;
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: u32, arg_3: vec4<u32>) -> Struct_4 {
    let var_0 = true;
    let var_1 = ~firstTrailingBit(vec4<i32>(u_input.b.x, reverseBits(-32034i), _wgslsmith_add_i32(~(-30446i), reverseBits(14813i)), 1i));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.a.b.c.e, global2.b.b.d.x)) * 597f);
    var var_3 = false;
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global2.b.c.e, 1525f), global2.b.a.b, global2.b.a.d.x) - global2.b.a.d.wxz) - _wgslsmith_f_op_vec3_f32(trunc(global2.b.c.d.zww))));
    return func_2(Struct_4(global0[_wgslsmith_index_u32(575u, 1u)]), _wgslsmith_f_op_f32(global2.b.c.d.x * _wgslsmith_f_op_f32(ceil(global2.b.b.d.x))), -2147483647i);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: u32) -> vec3<bool> {
    global0 = array<Struct_3, 1>();
    let var_0 = func_1(-select(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, u_input.a, -20029i), vec3<i32>(0i, u_input.a, u_input.b.x)), ~_wgslsmith_div_vec3_i32(u_input.c.wxy, u_input.c.wxx), global3.a.a), ~25328i, arg_2, ~u_input.d).a.b;
    global0 = array<Struct_3, 1>();
    var var_1 = Struct_3(any(vec4<bool>(func_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(483i, -1i, 1i), vec3<i32>(-41372i, -13508i, -6529i), vec3<i32>(u_input.b.x, 20247i, u_input.c.x)), _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.a, u_input.c.x)), _wgslsmith_add_u32(0u, 4294967295u), vec4<u32>(arg_0.a.c.x, arg_2, global3.a.b.a.a.x, arg_0.a.c.x) >> (u_input.d % vec4<u32>(32u))).a.a, any(!var_0.a.c.zz), true, false)), func_1(select(vec3<i32>(u_input.a, -21889i, 9299i) << (~u_input.d.zyy % vec3<u32>(32u)), u_input.c.wzy, false), _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a, 1i), ~u_input.c.x ^ 0i), ~_wgslsmith_sub_u32(firstTrailingBit(1u), global3.a.c.x), _wgslsmith_mod_vec4_u32(~u_input.d, u_input.d ^ u_input.d) << (vec4<u32>(1u, arg_0.a.b.b.a.x, _wgslsmith_mod_u32(19133u, 26077u), ~0u) % vec4<u32>(32u))).a.b, ~firstTrailingBit(arg_0.a.b.a.a));
    let var_2 = arg_0.a.b.b;
    return vec3<bool>(false, any(!global3.a.b.a.c), func_2(func_1(u_input.c.ywx, ~u_input.a, 62002u, ~(~u_input.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(223f, _wgslsmith_f_op_f32(-var_0.c.e), arg_0.a.b.b.c.x))), _wgslsmith_add_i32(u_input.c.x, select(u_input.a & -28715i, u_input.c.x & u_input.b.x, false))).a.b.a.c.x);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec2<bool>) -> Struct_4 {
    var var_0 = true;
    let var_1 = false;
    global0 = array<Struct_3, 1>();
    let var_2 = vec3<u32>(~(~(~12771u)), global2.b.b.a.x, 1u);
    var var_3 = global2.b;
    return func_2(func_1(vec3<i32>(u_input.c.x, _wgslsmith_mult_i32(max(u_input.a, -27071i), -1i), reverseBits(u_input.a)), u_input.b.x, u_input.d.x, _wgslsmith_sub_vec4_u32(~u_input.d, u_input.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-836f, global2.b.b.b))) + _wgslsmith_f_op_f32(min(global2.b.b.e, -1000f))) - _wgslsmith_f_op_f32(-var_3.c.e)), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_4(Struct_1(~vec2<u32>(116681u, firstLeadingBit(0u)), _wgslsmith_div_f32(-490f, global3.a.b.b.d.x), !func_3(Struct_4(global3.a), func_1(vec3<i32>(1i, u_input.a, u_input.b.x), u_input.a, 7441u, vec4<u32>(25369u, 51601u, 23856u, 4294967295u)), ~0u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.b.a.d) + _wgslsmith_f_op_vec4_f32(global2.b.c.d - vec4<f32>(global2.b.b.e, global2.b.b.b, global3.a.b.b.d.x, global3.a.b.a.e)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-184f, func_2(Struct_4(global0[_wgslsmith_index_u32(1u, 1u)]), global3.a.b.b.b, 1i).a.b.c.d.x, global2.a)) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1598f, 305f) * 509f))), -6455i, !select(!vec2<bool>(global2.b.c.c.x, global3.a.a), select(global3.a.b.a.c.xx, func_3(Struct_4(global3.a), Struct_4(Struct_3(false, Struct_2(Struct_1(global2.c, 681f, global2.b.c.c, global2.b.a.d, -1982f), global2.b.b, Struct_1(global3.a.b.b.a, 223f, vec3<bool>(true, false, true), global2.b.b.d, 866f)), global2.b.b.a)), 84036u).zx, func_2(Struct_4(global0[_wgslsmith_index_u32(global3.a.c.x, 1u)]), global3.a.b.c.d.x, u_input.c.x).a.b.c.c.yz), !func_3(Struct_4(global3.a), Struct_4(Struct_3(true, global3.a.b, global3.a.b.a.a)), 1u).yx));
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.b.a.e + global2.b.a.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.b.c.d.x))));
    let var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1982f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.a.b.c.b, 959f) + func_1(vec3<i32>(var_1, -2147483647i, var_1), -14337i, global3.a.b.a.a.x, u_input.d).a.b.b.b) - -1816f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.b.c.e * global2.b.b.b) - global2.b.a.d.x) + 441f)));
    var var_3 = ~(-2147483647i);
    var var_4 = 847f;
    global0 = array<Struct_3, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global2.b.b.e)), _wgslsmith_f_op_f32(abs(var_2))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.b.a.d.x)))), -531f);
}

