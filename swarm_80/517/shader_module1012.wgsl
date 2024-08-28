struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 2>;

var<private> global1: vec4<u32> = vec4<u32>(5235u, 13935u, 4294967295u, 1u);

var<private> global2: array<f32, 19>;

var<private> global3: array<bool, 21> = array<bool, 21>(true, true, true, true, true, true, false, false, true, true, true, true, true, false, false, false, true, false, false, true, true);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = ~global1.xzw;
    var var_1 = arg_2;
    var var_2 = vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(~var_0.x, 19u)], _wgslsmith_f_op_f32(-1065f - var_1.a.a.x))))));
    var var_3 = global0[_wgslsmith_index_u32(global1.x, 2u)];
    var var_4 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, arg_1.x << (50198u % 32u), 24294u, firstLeadingBit(u_input.b)), _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, global1.x, var_0.x, 35225u), select(~vec4<u32>(var_0.x, 4294967295u, var_3.c.e, arg_1.x), vec4<u32>(arg_1.x, 4294967295u, arg_1.x, 9525u), global3[_wgslsmith_index_u32(abs(u_input.b), 21u)]))), 21u)];
    return var_1.a;
}

fn func_3(arg_0: Struct_2) -> Struct_3 {
    let var_0 = Struct_3(arg_0, Struct_2(arg_0.a), Struct_2(arg_0.a), Struct_2(arg_0.a), reverseBits(global1.x));
    global2 = array<f32, 19>();
    let var_1 = firstTrailingBit(_wgslsmith_mod_vec2_u32(~(vec2<u32>(u_input.b, 0u) >> (global1.yw % vec2<u32>(32u))), vec2<u32>(25762u, ~1u)));
    var var_2 = min(global1.zzz, ~vec3<u32>(global1.x, _wgslsmith_sub_u32(firstLeadingBit(global1.x), 63690u), u_input.b));
    global0 = array<Struct_4, 2>();
    return var_0;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32, arg_3: Struct_4) -> Struct_2 {
    var var_0 = false | !(arg_0.e != ~arg_2);
    let var_1 = !vec3<bool>(!(!global3[_wgslsmith_index_u32(min(arg_0.e, global1.x), 21u)]), false, true);
    let var_2 = _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 19u)]);
    var var_3 = false;
    var_0 = any(!var_1.zy);
    return arg_0.c;
}

fn func_1() -> Struct_2 {
    global2 = array<f32, 19>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-265f, -1944f, global2[_wgslsmith_index_u32(u_input.b, 19u)], 835f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1062f, 1000f, -1570f, global2[_wgslsmith_index_u32(global1.x, 19u)])))) + vec4<f32>(_wgslsmith_f_op_f32(-123f * global2[_wgslsmith_index_u32(21900u, 19u)]), _wgslsmith_f_op_f32(614f * global2[_wgslsmith_index_u32(1504u, 19u)]), -1425f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b, 19u)] + -1780f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-117f, global2[_wgslsmith_index_u32(global1.x, 19u)], 611f, 1163f), vec4<f32>(1000f, -1000f, global2[_wgslsmith_index_u32(u_input.b, 19u)], global2[_wgslsmith_index_u32(global1.x, 19u)])))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(global1.x, 19u)], 308f, global2[_wgslsmith_index_u32(u_input.b, 19u)], 823f), vec4<f32>(global2[_wgslsmith_index_u32(93162u, 19u)], global2[_wgslsmith_index_u32(4294967295u, 19u)], -1158f, 1175f))))) * vec4<f32>(_wgslsmith_f_op_f32(round(-1651f)), _wgslsmith_f_op_f32(-1941f * 1000f), _wgslsmith_f_op_f32(-1909f * _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(u_input.b, 19u)]))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 19u)]))));
    let var_1 = vec4<f32>(-925f, 289f, -320f, 244f);
    global3 = array<bool, 21>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~global1.x, 19u)]) + global2[_wgslsmith_index_u32(u_input.b, 19u)]);
    return func_4(func_3(Struct_2(func_2(!vec3<bool>(false, true, global3[_wgslsmith_index_u32(3858u, 21u)]), global1.zx, Struct_2(Struct_1(var_1)), vec2<bool>(global3[_wgslsmith_index_u32(u_input.b, 21u)], true)))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(global1.x, 19u)], 722f, global2[_wgslsmith_index_u32(1u, 19u)], 528f) + _wgslsmith_f_op_vec4_f32(floor(var_1))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1850f, 361f, global2[_wgslsmith_index_u32(u_input.b, 19u)], var_0.x))))), 44612u, global0[_wgslsmith_index_u32(~28789u, 2u)]);
}

fn func_5(arg_0: Struct_2) -> i32 {
    global0 = array<Struct_4, 2>();
    global0 = array<Struct_4, 2>();
    var var_0 = Struct_4(global3[_wgslsmith_index_u32(abs(~1u) >> (firstTrailingBit(4294967295u) % 32u), 21u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1496f, -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-133f, -394f)), global2[_wgslsmith_index_u32((global1.x & 0u) & (global1.x & u_input.b), 19u)])), func_3(func_3(Struct_2(arg_0.a)).d), func_3(Struct_2(arg_0.a)).c);
    global0 = array<Struct_4, 2>();
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(998f))));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 2>();
    var var_0 = func_5(func_1());
    global1 = select(abs(vec4<u32>(_wgslsmith_sub_u32(19480u, 1u), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, u_input.b, 0u, global1.x), vec4<u32>(global1.x, 77524u, global1.x, global1.x)), _wgslsmith_mod_u32(0u, global1.x)), 1u, ~4294967295u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 31437u, ~global1.x, _wgslsmith_add_u32(global1.x, 30436u)), vec4<u32>(15652u, 11541u, global1.x, abs(5106u))), global3[_wgslsmith_index_u32(abs(global1.x), 21u)]);
    var var_1 = func_2(select(!vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 21u)] && global3[_wgslsmith_index_u32(17331u, 21u)], all(vec4<bool>(false, true, true, false))), vec3<bool>(-449f >= global2[_wgslsmith_index_u32(firstTrailingBit(1u), 19u)], global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, u_input.b), 21u)], global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global1.zz, vec2<u32>(global1.x, global1.x)), 21u)] && true), true), global1.yw, Struct_2(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(24259u, 19u)], -426f, -199f), vec4<f32>(1f, 1f, 1f, 1f)))), !select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 21u)], true, true, global3[_wgslsmith_index_u32(u_input.b, 21u)])), global3[_wgslsmith_index_u32(global1.x, 21u)] != false), vec2<bool>(all(vec2<bool>(global3[_wgslsmith_index_u32(u_input.b, 21u)], false)), true)));
    let var_2 = u_input.a;
    global2 = array<f32, 19>();
    let var_3 = Struct_2(Struct_1(var_1.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(var_3.a.a.zx, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a.a.x, -1510f) - var_1.a.xy))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_1.a.wx - var_3.a.a.yy))) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_3.a.a.x, _wgslsmith_f_op_f32(sign(538f)))))), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(18231i, var_2), vec2<i32>(-26584i, 2147483647i)) << (_wgslsmith_mult_u32(107097u, 0u) % 32u), 16350i ^ ~u_input.a), vec2<i32>(~select(var_2, 30571i, global3[_wgslsmith_index_u32(global1.x, 21u)]), 529i)), var_1.a.x);
}

