struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(31029u, 1355f, vec4<f32>(-3490f, 1000f, -595f, 1429f)), Struct_1(4294967295u, -1731f, vec4<f32>(1290f, 279f, -843f, 821f)), Struct_1(1u, 109f, vec4<f32>(256f, -1204f, 243f, -859f)), Struct_1(4294967295u, -422f, vec4<f32>(268f, -339f, -1214f, 1074f)), Struct_1(1u, -593f, vec4<f32>(-1015f, 1717f, 1127f, -1289f)), Struct_1(40266u, -1000f, vec4<f32>(-1883f, 1570f, 379f, 1000f)), Struct_1(7848u, 587f, vec4<f32>(328f, -388f, -616f, 460f)));

var<private> global1: bool = false;

var<private> global2: vec4<bool>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> i32 {
    let var_0 = global2.x;
    global2 = select(!vec4<bool>(all(select(vec2<bool>(global2.x, arg_0), global2.yx, global2.zz)), false | arg_0, select(global2.x, true, global2.x), arg_0), !vec4<bool>(true, arg_0, min(u_input.c.x, 58042u) < ~1u, any(!global2.xwy)), select(all(select(select(vec2<bool>(arg_0, arg_0), global2.yz, false), !vec2<bool>(true, global2.x), all(vec3<bool>(global2.x, true, true)))), any(global2.zw), true));
    let var_1 = vec4<bool>(false, any(!vec4<bool>(true, global2.x != false, true, false)), all(global2.yw), global2.x);
    var var_2 = u_input.e.x;
    global2 = !var_1;
    return ~u_input.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: vec2<bool>) -> f32 {
    global2 = !select(select(vec4<bool>(global2.x && global2.x, true, global2.x, true), !select(vec4<bool>(global2.x, true, global2.x, global2.x), vec4<bool>(false, global2.x, global2.x, global2.x), vec4<bool>(global2.x, global2.x, false, false)), !(!vec4<bool>(true, global2.x, global2.x, true))), !(!vec4<bool>(global2.x, global2.x, global2.x, false)), arg_3.x == any(select(global2.wyz, global2.yzx, true)));
    let var_0 = vec3<u32>(~(~49160u), ~0u, firstTrailingBit(1u)) | ~_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, arg_0.a), vec3<u32>(0u, 30115u, 49412u)), vec3<u32>(37138u, u_input.c.x, arg_0.a)), reverseBits(vec3<u32>(arg_0.a, 1u, 4294967295u)) ^ vec3<u32>(14663u, u_input.d.x, 8337u));
    let var_1 = arg_2;
    let var_2 = select(vec3<bool>(true, arg_3.x, all(vec2<bool>(all(global2.yxy), arg_0.c.x != arg_0.c.x))), select(global2.wzw, vec3<bool>(~u_input.c.x <= 54924u, true, select(true & global2.x, all(vec4<bool>(arg_3.x, arg_3.x, true, global2.x)), !global2.x)), !vec3<bool>(global2.x, all(global2.yx), false)), vec3<bool>(true, true, any(select(select(vec4<bool>(true, global2.x, true, true), vec4<bool>(global2.x, global2.x, true, true), vec4<bool>(true, true, arg_3.x, true)), vec4<bool>(false, true, arg_3.x, arg_3.x), select(vec4<bool>(global2.x, global2.x, true, true), vec4<bool>(false, arg_3.x, arg_3.x, true), false)))));
    var var_3 = select(var_2.x, false, var_2.x);
    return 1000f;
}

fn func_2() -> u32 {
    global1 = true;
    var var_0 = false;
    var var_1 = Struct_1(_wgslsmith_sub_u32(~_wgslsmith_mod_u32(u_input.d.x, u_input.c.x), ~u_input.d.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(global0[_wgslsmith_index_u32(71697u, 7u)], func_3(true, global0[_wgslsmith_index_u32(4294967295u, 7u)], 4294967295u, global0[_wgslsmith_index_u32(u_input.c.x, 7u)]), _wgslsmith_f_op_f32(f32(-1f) * -1000f), vec2<bool>(global2.x, true))), 928f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-413f, -2017f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1571f)) - 1f) + 1329f), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1051f + 532f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(450f, -795f, true)), _wgslsmith_div_f32(-650f, -581f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1176f - 1544f) + _wgslsmith_f_op_f32(trunc(-1016f))))));
    var var_2 = Struct_1(_wgslsmith_div_u32(firstTrailingBit(var_1.a), var_1.a), 937f, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1543f * _wgslsmith_f_op_f32(f32(-1f) * -793f)), var_1.b, -755f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(817f, -368f))))), var_1.c, global2.x)));
    var var_3 = vec2<bool>(!all(select(select(vec4<bool>(true, global2.x, true, false), vec4<bool>(true, global2.x, false, false), true), vec4<bool>(global2.x, global2.x, global2.x, global2.x), select(vec4<bool>(global2.x, false, global2.x, false), vec4<bool>(false, global2.x, true, false), vec4<bool>(true, global2.x, false, global2.x)))), !(-191f != var_1.b) | (global2.x & true));
    return max(u_input.c.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c), _wgslsmith_mod_u32(u_input.c.x, var_2.a)), select(_wgslsmith_mult_vec2_u32(u_input.c, u_input.c), u_input.c, global2.yx)));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(u_input.c.x, 0u, 35893u) & vec3<u32>(0u, 4294967295u, arg_0.a)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 18492u, 21848u), max(vec3<u32>(arg_0.a, 102560u, 0u), vec3<u32>(4294967295u, arg_0.a, arg_0.a))) & vec3<u32>(func_2(), 1u, u_input.c.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_0.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.x - arg_0.b), _wgslsmith_f_op_f32(step(arg_0.b, -1012f)), arg_1)))), -315f)), arg_0.c);
    var var_1 = arg_0.c.wy;
    var_0 = arg_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1695f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(242f + var_1.x) * var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1751f)) - _wgslsmith_f_op_f32(func_4(global0[_wgslsmith_index_u32(arg_0.a, 7u)], 2147483647i, -609f, global2.yz))))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_0.c.wzx - var_0.c.wxw))));
    var var_3 = arg_1;
    return select(select(!vec4<bool>(true, arg_1 || false, global2.x, !arg_1), select(vec4<bool>(true, !arg_1, any(vec2<bool>(true, false)), true), !vec4<bool>(global2.x, true, false, true), select(select(vec4<bool>(false, arg_1, arg_1, true), vec4<bool>(true, true, global2.x, true), vec4<bool>(false, true, arg_1, false)), select(vec4<bool>(true, global2.x, arg_1, global2.x), vec4<bool>(false, arg_1, global2.x, false), vec4<bool>(arg_1, arg_1, false, true)), !vec4<bool>(false, arg_1, arg_1, false))), select(select(!vec4<bool>(false, global2.x, true, global2.x), vec4<bool>(arg_1, arg_1, true, false), vec4<bool>(global2.x, arg_1, true, global2.x)), !select(vec4<bool>(true, true, arg_1, global2.x), vec4<bool>(false, false, true, true), arg_1), vec4<bool>(true, arg_1, 41361i == u_input.a.x, false))), vec4<bool>(u_input.e.x == -5240i, !(arg_0.a < u_input.c.x) && false, !global2.x, any(vec2<bool>(global2.x, false))), select(select(select(vec4<bool>(false, true, true, arg_1), vec4<bool>(true, false, false, true), true), vec4<bool>(global2.x, global2.x, true, arg_1), select(select(vec4<bool>(arg_1, true, global2.x, arg_1), vec4<bool>(true, global2.x, false, arg_1), vec4<bool>(true, false, global2.x, global2.x)), vec4<bool>(true, false, global2.x, global2.x), true)), vec4<bool>(true, arg_1, arg_1, true), false));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(vec4<bool>(false, !(1i > ~u_input.a.x), global2.x, global2.x), vec4<bool>(~(~u_input.c.x) > ~min(23377u, u_input.d.x), !global2.x, !global2.x, any(vec4<bool>(true, true, true, true))), !select(!vec4<bool>(false, global2.x, false, false), vec4<bool>(false, any(vec4<bool>(global2.x, false, global2.x, true)), u_input.a.x <= -38628i, global2.x), !vec4<bool>(false, true, true, global2.x)));
    global2 = func_1(global0[_wgslsmith_index_u32(max(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(47130u, 0u, 1u), abs(vec3<u32>(13839u, u_input.d.x, u_input.d.x))), vec3<u32>(u_input.c.x, u_input.d.x, u_input.d.x << (u_input.d.x % 32u))), u_input.d.x), 7u)], true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-886f, -1629f) - vec2<f32>(1254f, -969f)))));
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 7u)];
    var_0 = Struct_1(~(~4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(var_0.b, -806f, global2.x))))) - 1033f), vec4<f32>(-753f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(var_0.c.x)), _wgslsmith_f_op_f32(min(-1000f, 1705f)))), -1000f, -638f));
    var var_1 = Struct_1(4294967295u, 533f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1306f, -348f) + _wgslsmith_f_op_f32(f32(-1f) * -244f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-801f)))), 411f, var_0.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-458f * var_1.c.x), u_input.c.x, var_0.b);
}

