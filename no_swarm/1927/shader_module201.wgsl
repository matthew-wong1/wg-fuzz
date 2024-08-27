struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6> = array<f32, 6>(295f, -1219f, -590f, 645f, -566f, 2000f);

var<private> global1: vec2<bool>;

var<private> global2: vec3<f32> = vec3<f32>(1000f, -684f, 288f);

var<private> global3: u32;

var<private> global4: Struct_4 = Struct_4(vec2<f32>(632f, -1000f));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: vec2<u32>) -> f32 {
    let var_0 = -_wgslsmith_dot_vec2_i32(~u_input.b.xy | u_input.a.xw, u_input.b.yz);
    return global4.a.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: vec4<bool>) -> Struct_4 {
    var var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-772f, 849f, 1000f, 1274f) + vec4<f32>(global2.x, -673f, global4.a.x, 223f)))), vec4<f32>(global4.a.x, global2.x, _wgslsmith_f_op_f32(max(global2.x, global0[_wgslsmith_index_u32(54858u, 6u)])), -1419f))))));
    global4 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(max(global4.a.x, -1000f)), global4.a.x));
    var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.x), -1237f, -1000f, _wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)), all(select(select(arg_2, vec4<bool>(global1.x, arg_2.x, global1.x, global1.x), arg_2), select(vec4<bool>(false, global1.x, true, true), vec4<bool>(false, global1.x, true, true), arg_2), select(vec4<bool>(false, arg_2.x, global1.x, arg_2.x), vec4<bool>(true, global1.x, true, arg_2.x), vec4<bool>(global1.x, global1.x, arg_2.x, true)))))));
    global2 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(111f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(arg_1, 6u)]))), _wgslsmith_f_op_f32(-global4.a.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(max(431f, -400f)))), vec3<f32>(global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(136f - global0[_wgslsmith_index_u32(arg_1, 6u)]), _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(arg_1, 6u)], vec3<u32>(arg_1, 1u, 0u), vec2<u32>(arg_1, 4294967295u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(728f + global0[_wgslsmith_index_u32(arg_1, 6u)]) - var_0.a.x)))));
    var var_1 = ~arg_0.x;
    return Struct_4(var_0.a.yw);
}

fn func_4(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: Struct_5) -> Struct_3 {
    global0 = array<f32, 6>();
    var var_0 = global1.x;
    let var_1 = _wgslsmith_add_i32(arg_1.x, abs(15471i));
    global1 = !(!(!select(!vec2<bool>(global1.x, global1.x), select(vec2<bool>(true, true), vec2<bool>(global1.x, false), vec2<bool>(true, global1.x)), global1.x | global1.x)));
    var var_2 = ~var_1;
    return Struct_3(select(select(select(vec4<bool>(global1.x, global1.x, true, global1.x), !vec4<bool>(global1.x, global1.x, global1.x, true), all(vec4<bool>(global1.x, global1.x, true, global1.x))), vec4<bool>(any(vec4<bool>(global1.x, false, true, global1.x)), false, false, u_input.a.x > -11291i), !(!vec4<bool>(false, false, true, global1.x))), vec4<bool>(global1.x, !any(vec4<bool>(global1.x, false, true, true)), global2.x > 510f, !all(vec3<bool>(global1.x, true, global1.x))), global1.x | (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 20u, 4716u, 86025u), vec4<u32>(1u, 4294967295u, 32408u, 45971u)) == ~70304u)), !(!vec3<bool>(true, all(vec4<bool>(true, false, true, true)), global1.x)));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec3<u32>, arg_3: Struct_2) -> bool {
    var var_0 = func_4(func_2(-arg_3.a, arg_2.x, !(!(!vec4<bool>(global1.x, arg_0, false, global1.x)))), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, ~(-10358i) << (abs(arg_2.x) % 32u)), vec2<i32>(i32(-1i) * -60139i, i32(-1i) * -24088i)), Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(687f, 1000f, 711f, global2.x)))))));
    global3 = arg_2.x;
    var_0 = Struct_3(vec4<bool>(global1.x, true, var_0.b.x, false), !var_0.a.xzy);
    global0 = array<f32, 6>();
    var var_1 = func_4(Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-204f, global4.a.x))))), select(~arg_3.a.zx, select(select(vec2<i32>(arg_3.a.x, -328i) >> (vec2<u32>(55648u, arg_2.x) % vec2<u32>(32u)), u_input.b.zy >> (arg_2.yx % vec2<u32>(32u)), !var_0.b.x), arg_3.a.xx, false), global1.x), Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1, 1000f, 1394f, global4.a.x)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.x, global0[_wgslsmith_index_u32(0u, 6u)], global2.x, global2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global0[_wgslsmith_index_u32(1u, 6u)], global4.a.x, 126f))))));
    return arg_0;
}

fn func_5(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: vec4<i32>, arg_3: vec2<u32>) -> bool {
    global3 = arg_3.x;
    let var_0 = -1i;
    return true;
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_5) -> Struct_4 {
    global3 = 0u;
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -766f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.x), -550f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(1u, 6u)], -111f, true)), -1149f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -448f)))));
    global3 = 21703u;
    let var_1 = 24517i;
    global4 = Struct_4(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-arg_1.a.x), firstTrailingBit(vec3<u32>(60104u, 1u, 1u)), max(vec2<u32>(124785u, 1u), vec2<u32>(1u, 0u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.x, 1000f)), 442f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, global4.a.x)))));
    return Struct_4(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(-arg_1.a.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_add_u32(1u, 1u);
    let var_1 = 4294967295u;
    global4 = Struct_4(global2.xx);
    global2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(19474u, 6u)] * -1000f), _wgslsmith_f_op_f32(-global4.a.x), -1000f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-779f, global2.x, global4.a.x)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(var_1, 6u)], -318f, 866f), vec3<f32>(-1406f, -577f, -1807f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0[_wgslsmith_index_u32(4492u, 6u)], global2.x, global4.a.x), vec3<f32>(-192f, global2.x, -855f))))), false))));
    global4 = func_6(vec4<bool>(func_5(vec2<bool>(func_1(global1.x, -1634f, vec3<u32>(var_0, 0u, 35146u), Struct_2(u_input.a.zww)), true), abs(_wgslsmith_div_vec3_i32(u_input.a.wxz, vec3<i32>(-2147483647i, 0i, u_input.a.x))), u_input.a, _wgslsmith_mult_vec2_u32(abs(vec2<u32>(4294967295u, var_1)), firstTrailingBit(vec2<u32>(var_0, 23528u)))), global1.x | global1.x, global1.x | global1.x, global1.x), Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1491f, global4.a.x, global4.a.x, global2.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_1, 6u)], global0[_wgslsmith_index_u32(var_0, 6u)], global2.x, global0[_wgslsmith_index_u32(var_0, 6u)]))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-529f, 1136f, global2.x, -162f)))));
    var var_2 = Struct_2(u_input.b.yxz >> (~(~vec3<u32>(8388u, var_0, var_0) >> (~vec3<u32>(var_0, 7245u, var_0) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_3 = ~(~vec3<u32>(var_1, 9364u, ~var_0));
    global4 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(142f - -1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -1418f)), 592f));
    let x = u_input.a;
    s_output = StorageBuffer(~max(vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, 2147483647i), ~var_2.a.x, -u_input.b.x, _wgslsmith_mod_i32(-16238i, var_2.a.x)), select(vec4<i32>(-900i, 2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(-27867i, u_input.a.x, 0i, u_input.b.x), vec4<bool>(global1.x, false, global1.x, false)) ^ min(vec4<i32>(var_2.a.x, u_input.a.x, u_input.a.x, 1i), vec4<i32>(1i, u_input.b.x, var_2.a.x, 0i))), -733f, -(u_input.a.yxy << (var_3 % vec3<u32>(32u))) >> ((((vec3<u32>(4294967295u, var_1, 15615u) << (var_3 % vec3<u32>(32u))) & (var_3 << (vec3<u32>(30333u, var_0, 0u) % vec3<u32>(32u)))) >> (var_3 % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-509f, global4.a.x, global2.x, _wgslsmith_f_op_f32(229f * -1389f))))));
}

