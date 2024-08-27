struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_3;

var<private> global2: array<u32, 14>;

var<private> global3: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(42290u, vec4<f32>(-473f, -1005f, -192f, 197f), 1i, vec3<bool>(false, false, true)), Struct_1(1u, vec4<f32>(-668f, 147f, 1582f, -964f), i32(-2147483648), vec3<bool>(false, false, false)), Struct_1(9657u, vec4<f32>(293f, -569f, -1000f, -1540f), -1i, vec3<bool>(false, true, true)), Struct_1(38131u, vec4<f32>(462f, -1954f, -133f, 1333f), -742i, vec3<bool>(true, false, true)), Struct_1(4294967295u, vec4<f32>(981f, 1000f, 1000f, -1576f), -28912i, vec3<bool>(true, false, true)), Struct_1(18902u, vec4<f32>(-1061f, 213f, -1767f, -498f), -1i, vec3<bool>(true, false, false)));

var<private> global4: vec3<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: i32, arg_3: Struct_4) -> vec4<i32> {
    let var_0 = Struct_3(select(arg_3.c.d, !global0.a, global4.x), global0.b, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_3.c.b.x, arg_3.c.b.x) - global1.c) - arg_3.c.b.wzx), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.b.b.b.x))), global1.c.x, _wgslsmith_f_op_f32(ceil(1f))))));
    global2 = array<u32, 14>();
    global4 = vec3<bool>(all(select(var_0.a, !(!vec3<bool>(global4.x, false, global1.a.x)), global1.a)), global4.x, !(-1075f != global0.c.x));
    var var_1 = ~vec4<u32>(~arg_3.b.b.b.a, _wgslsmith_dot_vec3_u32(vec3<u32>(50823u, 50376u & arg_3.d, ~global2[_wgslsmith_index_u32(var_0.b.b.a, 14u)]), abs(min(vec3<u32>(global1.b.b.a, 0u, 4294967295u), vec3<u32>(global0.b.b.a, 1u, 43055u)))), min(~(~global2[_wgslsmith_index_u32(98701u, 14u)]), _wgslsmith_dot_vec2_u32(select(vec2<u32>(global0.b.b.a, u_input.b.x), u_input.b, var_0.b.b.d.x), _wgslsmith_add_vec2_u32(vec2<u32>(2437u, global0.b.b.a), u_input.b))), 0u);
    var var_2 = select(select(vec3<bool>(global4.x, !select(var_0.b.b.d.x, var_0.b.b.d.x, true), global4.x), select(vec3<bool>(any(global0.b.b.d.zx), !global1.b.b.d.x, any(global0.b.b.d.yx)), select(select(var_0.a, vec3<bool>(var_0.a.x, global0.b.b.d.x, false), global0.a.x), global1.b.b.d, vec3<bool>(arg_3.c.d.x, false, true)), global1.a.x), true), global1.b.b.d, global0.b.b.d.x);
    return u_input.c;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: f32) -> vec3<bool> {
    let var_0 = ~abs(global1.b.b.a);
    let var_1 = false;
    var var_2 = Struct_3(select(global0.a, !(!vec3<bool>(false, global4.x, global1.a.x)), global4.x), Struct_2(vec2<i32>(_wgslsmith_dot_vec4_i32(func_3(-2147483647i, u_input.c.x, 14313i, Struct_4(global1.b.b.c, Struct_3(global1.b.b.d, global1.b, global1.b.c), global3[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(4294967295u, 14u)])), select(u_input.c, vec4<i32>(17286i, u_input.a, 5403i, global1.b.a.x), vec4<bool>(global0.b.b.d.x, false, false, true))), _wgslsmith_clamp_i32(24540i, u_input.c.x, 18547i)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, 1u, 4294967295u)), vec3<u32>(global0.b.b.a, _wgslsmith_sub_u32(38217u, var_0), _wgslsmith_div_u32(24711u, 22310u))), 6u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global0.c.x, _wgslsmith_f_op_f32(global1.c.x * -141f)) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.c.x, -1075f, arg_0), global1.b.c)), global1.b.b.b.wxz)))), _wgslsmith_f_op_vec3_f32(-global0.b.c));
    let var_3 = var_2.c;
    let var_4 = var_2.b.b.b;
    return select(vec3<bool>(global0.a.x, var_2.a.x, !all(!vec4<bool>(var_1, var_1, global4.x, global1.a.x))), vec3<bool>(false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.b.b.x), _wgslsmith_f_op_f32(f32(-1f) * -631f)) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1304f + -305f))), global1.a.x), vec3<bool>(false, all(vec4<bool>(true, true, false, true)), !(arg_1 >= _wgslsmith_mod_u32(97745u, 88684u))));
}

fn func_1() -> vec3<f32> {
    var var_0 = vec2<f32>(global0.b.c.x, _wgslsmith_f_op_f32(-global0.c.x));
    let var_1 = -807f;
    var var_2 = global0.b.b.d;
    global0 = Struct_3(vec3<bool>(true != (u_input.c.x != ~u_input.c.x), global0.a.x, any(vec4<bool>(any(vec3<bool>(global0.a.x, global4.x, global0.a.x)), global0.c.x <= var_0.x, var_2.x, global0.a.x))), Struct_2(global0.b.a, Struct_1(10012u, _wgslsmith_f_op_vec4_f32(-global0.b.b.b), _wgslsmith_mult_i32(-14675i << (0u % 32u), 1i), func_2(global0.b.c.x, global0.b.b.a, _wgslsmith_f_op_f32(-global1.c.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global1.b.b.b.zwz)) * vec3<f32>(global1.c.x, -628f, 887f))), _wgslsmith_f_op_vec3_f32(ceil(global0.b.c)));
    var var_3 = vec2<u32>(_wgslsmith_clamp_u32(max(0u, global0.b.b.a), _wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global0.b.b.a, 14u)], 4294967295u, u_input.b.x)), ~(global0.b.b.a & global2[_wgslsmith_index_u32(4294967295u, 14u)])) ^ (abs(u_input.b.x) << (~global1.b.b.a % 32u)), 0u);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-203f - 351f), 425f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b.b.b.x + 413f), 1316f), _wgslsmith_f_op_f32(-global0.b.b.b.x)), _wgslsmith_div_vec3_f32(vec3<f32>(global0.c.x, -1323f, _wgslsmith_f_op_f32(global1.b.b.b.x + global1.b.b.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b.b.b.wzx + vec3<f32>(global1.b.b.b.x, global0.c.x, -462f)) + _wgslsmith_f_op_vec3_f32(step(global1.b.b.b.zyy, global0.b.b.b.yxy))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(global1.a, global0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1()) * global1.c));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-140f - _wgslsmith_f_op_f32(f32(-1f) * -282f))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b.b.b.wz - var_0.c.xy)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(433f, global1.b.b.b.x))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x + global0.b.b.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -787f)))) * vec2<f32>(317f, var_0.c.x));
    global3 = array<Struct_1, 6>();
    let var_3 = true && !(!(var_0.a.x != true));
    var var_4 = ~u_input.c.wxx;
    let var_5 = vec4<i32>(-17445i, _wgslsmith_add_i32(var_0.b.a.x, -firstTrailingBit(0i)) & select(~u_input.a, 1i, !all(vec3<bool>(global0.b.b.d.x, false, true))), var_4.x | -24975i, -(~var_4.x << ((~global1.b.b.a >> (~0u % 32u)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.c, u_input.c);
}

