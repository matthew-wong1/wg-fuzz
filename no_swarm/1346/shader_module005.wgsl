struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: bool,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_2;

var<private> global2: array<i32, 22>;

var<private> global3: Struct_3;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_4) -> f32 {
    let var_0 = global2[_wgslsmith_index_u32(1u, 22u)];
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(-global1.a));
    global1 = arg_3.a;
    let var_1 = 58190u;
    let var_2 = arg_1.x == all(select(select(select(vec4<bool>(false, false, false, arg_0.d.x), arg_0.d, vec4<bool>(global0.d.x, false, global3.c, false)), vec4<bool>(arg_1.x, arg_0.d.x, arg_1.x, true), false), global3.d, true));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_3.a.a.x - _wgslsmith_f_op_f32(select(global1.a.x, global1.a.x, true)))));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>) -> Struct_4 {
    global0 = arg_0;
    global3 = arg_0;
    var var_0 = ~min(countOneBits(countOneBits(vec3<u32>(global0.a.x, u_input.a, global3.a.x) & vec3<u32>(arg_0.a.x, 0u, 0u))), global0.a.wyz);
    global3 = Struct_3(_wgslsmith_add_vec4_u32(~(global0.a ^ abs(global0.a)), _wgslsmith_mod_vec4_u32(~(vec4<u32>(4294967295u, 4294967295u, 1u, global0.a.x) | vec4<u32>(41777u, u_input.a, 12756u, global3.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(global3.a.x, 12865u, 38732u, var_0.x), select(arg_0.a, vec4<u32>(var_0.x, 0u, 0u, global3.a.x), vec4<bool>(false, true, true, arg_1.x))))), Struct_1(min(1i, global3.b.c), vec4<i32>(2147483647i, -2147483647i, ~global3.b.a, -(~2147483647i)), abs(~(~global2[_wgslsmith_index_u32(arg_0.a.x, 22u)]))), global3.d.x, global3.d);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1329f, global1.a.x, -491f, 544f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1082f), -610f, 694f, 314f))) - vec4<f32>(-1043f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_3(arg_0.a, arg_0.b, arg_1.x, global3.d), global0.d.xz, Struct_1(global3.b.b.x, global0.b.b, 1i), Struct_4(Struct_2(global1.a)))) + _wgslsmith_f_op_f32(ceil(global1.a.x))), _wgslsmith_div_f32(global1.a.x, global1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x - global1.a.x)))));
    return Struct_4(Struct_2(var_1.a));
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    global0 = Struct_3(global3.a, Struct_1(firstLeadingBit(-select(global0.b.b.x, global0.b.a, global3.c)), select(~(global0.b.b & vec4<i32>(2147483647i, 46685i, 1i, global3.b.a)), vec4<i32>(53890i << (global3.a.x % 32u), global3.b.a & 7891i, abs(global0.b.a), global0.b.a), select(select(vec4<bool>(true, global0.d.x, global0.d.x, false), global0.d, global3.c), vec4<bool>(true, global3.c, false, false), !vec4<bool>(true, global0.c, false, false))), -4496i), all(!(!vec3<bool>(global0.c, true, true))) & global3.d.x, global3.d);
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(global0.a.zzw, _wgslsmith_mod_vec3_u32(global0.a.xxz, vec3<u32>(u_input.a, 13861u, u_input.a)) >> (global0.a.xzw % vec3<u32>(32u))), _wgslsmith_dot_vec2_u32(select(_wgslsmith_mod_vec2_u32(global0.a.xw, vec2<u32>(45315u, u_input.a)), vec2<u32>(117115u, global0.a.x), select(vec2<bool>(true, true), global0.d.zz, vec2<bool>(true, global3.d.x))), ~(~vec2<u32>(u_input.a, u_input.a))), 27059u, u_input.a), abs(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(global0.a, _wgslsmith_div_vec4_u32(vec4<u32>(5555u, global0.a.x, global0.a.x, 32392u), vec4<u32>(u_input.a, u_input.a, global3.a.x, 4294967295u))), countOneBits(~vec4<u32>(global3.a.x, 32649u, u_input.a, 1u)))));
    global3 = Struct_3(var_0 << (vec4<u32>(countOneBits(abs(var_0.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(26432u, var_0.x), global0.a.wy), ~4294967295u, _wgslsmith_clamp_u32(4294967295u, 23386u << (var_0.x % 32u), ~var_0.x)) % vec4<u32>(32u)), Struct_1(-2147483647i, vec4<i32>(-1894i, global2[_wgslsmith_index_u32(firstTrailingBit(global3.a.x), 22u)], abs(13191i), -14652i) & ~select(global0.b.b, vec4<i32>(global2[_wgslsmith_index_u32(var_0.x, 22u)], global2[_wgslsmith_index_u32(var_0.x, 22u)], 2147483647i, global2[_wgslsmith_index_u32(var_0.x, 22u)]), vec4<bool>(global0.d.x, global0.c, global0.c, global3.c)), ~(-5923i)), true, select(global0.d, !vec4<bool>(true, true, true, !global0.d.x), !(!select(true, true, true))));
    global3 = Struct_3(vec4<u32>(~1u, min(select(4294967295u, 0u, global0.d.x) | ~var_0.x, global3.a.x & u_input.a), max(select(_wgslsmith_add_u32(0u, u_input.a), abs(u_input.a), any(vec4<bool>(false, true, true, true))), _wgslsmith_clamp_u32(74227u, global3.a.x, global0.a.x & global0.a.x)), select(_wgslsmith_dot_vec3_u32(vec3<u32>(15657u, 0u, 90587u) | vec3<u32>(74332u, global0.a.x, 76488u), select(global3.a.wyz, vec3<u32>(1u, 30162u, 0u), global0.d.xyz)), ~(~global0.a.x), false)), global3.b, false, select(select(vec4<bool>(any(global3.d), !global3.c, false, true), vec4<bool>(global3.c || false, global0.b.a <= 0i, global3.d.x, global0.c), true), select(global0.d, !(!global0.d), select(global3.d, vec4<bool>(false, true, global0.d.x, true), global0.d.x)), vec4<bool>(all(vec2<bool>(true, true)), true, true, global0.d.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_0.a.a.xy)));
    return func_2(Struct_3(~_wgslsmith_mod_vec4_u32(max(var_0, vec4<u32>(39619u, global3.a.x, 34608u, global0.a.x)), reverseBits(var_0)), global0.b, true, vec4<bool>(all(global0.d), !(global0.c | global0.c), true, global0.c)), !select(vec2<bool>(var_0.x <= 85114u, select(false, false, false)), vec2<bool>(any(vec2<bool>(global0.c, true)), all(global0.d)), true)).a;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: vec4<i32>) -> bool {
    let var_0 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a.a) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -327f, 728f, global1.a.x)))))));
    let var_1 = 0u;
    global1 = func_4(func_2(Struct_3(~vec4<u32>(1u, var_1, 12735u, global3.a.x), global0.b, true != (true && global3.d.x), !global0.d), !(!(!vec2<bool>(false, global3.c)))));
    var var_2 = func_2(Struct_3(global0.a, global0.b, global3.d.x, !(!vec4<bool>(global0.c, global0.c, global0.c, global0.c))), select(!select(!global0.d.yy, vec2<bool>(global0.d.x, true), !global0.c), !select(select(vec2<bool>(true, global0.c), global3.d.yy, false), !global3.d.zx, any(vec2<bool>(global0.d.x, global3.c))), !(!(!global0.d.xy))));
    global2 = array<i32, 22>();
    return global3.d.x;
}

fn func_5(arg_0: vec3<bool>) -> u32 {
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-168f, _wgslsmith_f_op_f32(select(global1.a.x, global1.a.x, true)), _wgslsmith_f_op_f32(-global1.a.x), global1.a.x) + global1.a)));
    var var_0 = _wgslsmith_div_i32(global2[_wgslsmith_index_u32(653u | (select(0u, 1u, global3.c) >> (~8745u % 32u)), 22u)], -2147483647i) <= ~(-1i);
    var var_1 = -select(vec3<i32>(abs(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(4294967295u, 22u)], global3.b.c)), -1i, 2682i), ~vec3<i32>(_wgslsmith_mod_i32(global0.b.c, global0.b.a), ~(-1i), 1i), true);
    let var_2 = Struct_3(~(abs(vec4<u32>(global3.a.x, 23842u, 4294967295u, 0u)) << (firstTrailingBit(~vec4<u32>(34064u, u_input.a, global3.a.x, 0u)) % vec4<u32>(32u))), Struct_1(global3.b.c, countOneBits(global3.b.b), -global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 4294967295u << (global3.a.x % 32u)), 22u)]), all(vec2<bool>(global0.c, true)), global3.d);
    global1 = func_2(var_2, !vec2<bool>(true, global3.c)).a;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(select(!vec3<bool>(all(global0.d.zxz), false, func_1(global0.b.b.yyz, Struct_4(Struct_2(vec4<f32>(global1.a.x, global1.a.x, -401f, -728f))), global3.b.b)), vec3<bool>(true, ~global3.a.x < max(global3.a.x, 57120u), _wgslsmith_f_op_f32(-global1.a.x) <= 1282f), true));
    let var_1 = Struct_3(max(vec4<u32>(_wgslsmith_div_u32(~36685u, var_0), 1u, _wgslsmith_sub_u32(16853u, global3.a.x), ~(u_input.a << (13831u % 32u))), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(global0.a, global0.a), max(global0.a, global3.a)) >> (~_wgslsmith_add_vec4_u32(vec4<u32>(global0.a.x, var_0, 30051u, 0u), vec4<u32>(0u, 50215u, 1u, u_input.a)) % vec4<u32>(32u))), Struct_1(8336i, vec4<i32>(global0.b.b.x, 22188i, _wgslsmith_div_i32(1i, firstTrailingBit(global3.b.b.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(global3.b.b.x, -1i), -global3.b.b.xx)), global0.b.c), false, select(select(!vec4<bool>(global0.c, false, false, false), !(!vec4<bool>(true, true, global0.c, false)), all(!global0.d)), !select(vec4<bool>(true, true, true, true), select(global0.d, vec4<bool>(true, false, global0.d.x, false), global0.d), true), !(!(!vec4<bool>(false, true, global3.d.x, global0.c)))));
    let var_2 = 0u;
    global0 = var_1;
    var var_3 = 760f;
    var_3 = 435f;
    global0 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.x);
}

