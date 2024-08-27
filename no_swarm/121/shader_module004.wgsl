struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: i32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
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

var<private> global0: Struct_5;

var<private> global1: vec2<bool>;

var<private> global2: array<bool, 23> = array<bool, 23>(false, false, true, false, false, true, false, true, true, true, true, false, true, true, false, true, false, false, true, false, true, false, true);

var<private> global3: Struct_4 = Struct_4(Struct_1(vec3<bool>(false, false, true), vec4<i32>(i32(-2147483648), 0i, 36093i, i32(-2147483648)), i32(-2147483648), false, vec4<f32>(1000f, 650f, 627f, 827f)), Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<i32>(53332i, 2147483647i, -20809i, 20985i), 26629i, true, vec4<f32>(-857f, -1053f, 1000f, -302f)), vec4<u32>(4294967295u, 49703u, 15730u, 1u), vec4<bool>(false, true, false, false)), Struct_3(1u, 0u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global3.a.e.xxw)));
    let var_1 = Struct_2(Struct_1(!vec3<bool>(global3.b.a.d, true, true || global1.x), vec4<i32>(1i, 59504i, select(i32(-1i) * -1i, -12841i, 29236u <= global0.a.x), ~max(u_input.a.x, arg_1)), global3.b.a.c, all(arg_0.a), global3.b.a.e), ~(select(reverseBits(global3.b.b), global3.b.b, select(global3.b.c, vec4<bool>(global3.b.c.x, global2[_wgslsmith_index_u32(global3.b.b.x, 23u)], false, global3.a.a.x), global3.b.c)) >> (global3.b.b % vec4<u32>(32u))), vec4<bool>(!(920f >= arg_0.e.x), any(arg_0.a.xx), true, any(select(select(global3.a.a.yy, arg_0.a.yz, global3.a.a.xx), select(vec2<bool>(false, true), global3.a.a.xy, arg_0.d), global1.x))));
    global3 = Struct_4(global3.b.a, Struct_2(global3.a, abs(var_1.b | vec4<u32>(var_1.b.x, var_1.b.x, 28096u, 0u)), !global3.b.c), global3.c);
    global1 = vec2<bool>(true, var_1.c.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1667f, 1034f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(664f, 376f) * var_1.a.e.zz))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(var_0.yx, vec2<f32>(_wgslsmith_f_op_f32(global3.a.e.x - arg_0.e.x), arg_0.e.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.e.yz)), _wgslsmith_f_op_vec2_f32(-var_1.a.e.ww)), false)));
    return ~(~abs(0u));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: vec4<u32>) -> u32 {
    global2 = array<bool, 23>();
    var var_0 = vec3<u32>(select(arg_2.x, ~0u, all(vec2<bool>(any(vec4<bool>(false, global1.x, global2[_wgslsmith_index_u32(33031u, 23u)], global1.x)), true))), _wgslsmith_dot_vec3_u32(abs(~vec3<u32>(global3.b.b.x, global0.a.x, 1u)), global0.a), ~6305u);
    let var_1 = _wgslsmith_sub_vec2_i32(-firstLeadingBit(vec2<i32>(-39242i, ~(-2147483647i))), vec2<i32>(global3.b.a.b.x, u_input.b.x));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f))))), _wgslsmith_f_op_f32(f32(-1f) * -1251f));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1070f));
    return _wgslsmith_dot_vec4_u32(~(~arg_2), select(vec4<u32>(arg_2.x, _wgslsmith_mod_u32(112632u, global0.a.x), var_0.x, _wgslsmith_sub_u32(4294967295u, arg_2.x)), vec4<u32>(~arg_2.x, 1u, 65836u, reverseBits(9654u)), vec4<bool>(any(vec2<bool>(false, global1.x)), all(global3.b.a.a.yy), arg_1.x != 459f, global1.x)) & (vec4<u32>(~4294967295u, func_3(global3.b.a, 69615i), arg_2.x | 27815u, _wgslsmith_div_u32(26257u, 1u)) >> (~global3.b.b % vec4<u32>(32u))));
}

fn func_1() -> u32 {
    var var_0 = -22591i;
    let var_1 = global3.b;
    var_0 = 2147483647i;
    let var_2 = ~(~(~18189u));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a.e.zxz), global3.a.e.wyz), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(var_1.a.e.xxz, global3.a.e.yxz), global3.b.a.e.yyy, !global2[_wgslsmith_index_u32(global3.c.b, 23u)]))))) + global3.a.e.yzw);
    return ~(var_1.b.x | min(~0u, _wgslsmith_sub_u32(global3.b.b.x, 1u))) << (func_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.b.a.e.zy) + _wgslsmith_f_op_vec2_f32(-global3.a.e.yz)), var_3.yx), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_1.a.e.zzx + _wgslsmith_f_op_vec3_f32(-var_1.a.e.wzy)), global3.b.a.e.yxy)), vec4<u32>(~15999u, ~7378u, var_1.b.x, var_1.b.x)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(~func_1());
    var var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(0i, global3.a.b.x, ~u_input.a.x), global3.b.a.b.wzz);
    var var_2 = Struct_5(global0.a);
    let var_3 = -455f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-392f, -1000f, false))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(global3.b.a.e.x)))) * _wgslsmith_f_op_f32(sign(global3.a.e.x))));
    global1 = global3.b.c.zy;
    let x = u_input.a;
    s_output = StorageBuffer(13744u, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1f)))));
}

