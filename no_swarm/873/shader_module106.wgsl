struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec4<bool>,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = global0.a;
    var var_1 = Struct_3(u_input.c, any(select(vec4<bool>(false, all(vec2<bool>(true, true)), true, all(global0.c)), select(var_0.e, vec4<bool>(true, true, true, var_0.e.x), !vec4<bool>(global0.a.e.x, global0.c.x, false, var_0.e.x)), select(global0.a.e, select(vec4<bool>(false, false, global0.c.x, global0.a.e.x), vec4<bool>(true, global0.a.e.x, var_0.e.x, true), var_0.e), var_0.e))));
    var_1 = Struct_3(global0.a.a.x, select(true, any(!(!global0.c.xx)), _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(-259f * -1115f)) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b.x - global0.d.x), -855f))));
    global0 = Struct_4(Struct_1(countOneBits(-vec3<i32>(u_input.c, u_input.c, -1i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(var_0.b)), var_0.b, !vec3<bool>(var_0.e.x, false, var_1.b)))), abs(vec3<u32>(_wgslsmith_clamp_u32(62287u, u_input.d.x, global0.e.x), ~global0.a.d.x, max(65622u, var_0.c.x))), var_0.c.xy, select(var_0.e, !(!vec4<bool>(false, true, false, var_1.b)), !(u_input.c <= 0i))), !var_0.e.zwy, vec4<bool>(all(select(vec2<bool>(global0.b.x, var_0.e.x), !var_0.e.yy, !vec2<bool>(var_0.e.x, true))), var_0.e.x, false, var_0.d.x >= (var_0.c.x << (_wgslsmith_mod_u32(var_0.c.x, 16757u) % 32u))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.d.x - var_0.b.x), global0.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(557f, var_0.b.x)) + -1286f)), global0.a.d >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_mod_i32(firstTrailingBit(abs(-11562i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.x, u_input.b.x, global0.a.d.x), global0.a.c) % 32u))), 19968i);
    return -1969f;
}

fn func_2() -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.b.x)), _wgslsmith_f_op_f32(func_3()))));
    var_0 = global0.a.b.yz;
    global0 = Struct_4(Struct_1(global0.a.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a.b + global0.a.b))), ~u_input.e, _wgslsmith_sub_vec2_u32(vec2<u32>(abs(u_input.b.x), _wgslsmith_add_u32(90696u, u_input.a)), vec2<u32>(1u, u_input.b.x)), global0.a.e), global0.b, global0.a.e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1077f, global0.a.b.x)))))), abs(_wgslsmith_clamp_vec2_u32(u_input.d.xx, u_input.e.xy, ~global0.e)));
    let var_1 = global0.a.b.zy;
    global0 = Struct_4(Struct_1(_wgslsmith_clamp_vec3_i32(-(global0.a.a ^ global0.a.a), select(-vec3<i32>(u_input.c, 2147483647i, 0i), abs(global0.a.a), global0.b.x), ~vec3<i32>(-30455i, -2147483647i, u_input.c)), vec3<f32>(188f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_1.x) + -775f), var_0.x), vec3<u32>(global0.a.c.x, u_input.a, ~_wgslsmith_dot_vec2_u32(global0.e, vec2<u32>(u_input.b.x, u_input.b.x))), vec2<u32>(global0.e.x, ~u_input.b.x) >> (~countOneBits(u_input.e.xz) % vec2<u32>(32u)), vec4<bool>(global0.b.x | any(vec4<bool>(global0.c.x, true, global0.b.x, global0.b.x)), !all(vec4<bool>(false, global0.a.e.x, global0.c.x, true)), global0.c.x, !(42967u > u_input.d.x))), global0.c.zzx, select(global0.c, !(!select(vec4<bool>(global0.c.x, global0.a.e.x, global0.a.e.x, false), global0.c, vec4<bool>(global0.b.x, true, true, true))), !select(!vec4<bool>(global0.a.e.x, global0.c.x, global0.b.x, true), !vec4<bool>(false, true, global0.c.x, true), !global0.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.d)), _wgslsmith_clamp_vec2_u32(u_input.d.xy, max(~(vec2<u32>(global0.a.d.x, 57355u) & vec2<u32>(30426u, u_input.b.x)), firstLeadingBit(~u_input.b)), firstTrailingBit(max(global0.e, _wgslsmith_div_vec2_u32(u_input.e.xy, global0.a.d)))));
    return _wgslsmith_add_u32(36707u, global0.a.c.x);
}

fn func_1() -> vec2<f32> {
    var var_0 = vec2<u32>(~func_2(), 4294967295u);
    var_0 = vec2<u32>(reverseBits(global0.a.c.x), ~(~(~(u_input.d.x << (0u % 32u)))));
    let var_1 = global0.a.e.yzy;
    var var_2 = Struct_3(u_input.c, all(!vec2<bool>(false, any(vec2<bool>(false, true)))));
    var var_3 = vec3<f32>(1893f, -264f, global0.a.b.x);
    return _wgslsmith_f_op_vec2_f32(global0.a.b.xx - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d.x, global0.d.x))) * vec2<f32>(918f, 1978f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.b;
    let var_1 = _wgslsmith_f_op_vec2_f32(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(global0.a.a.x, -2147483647i, global0.a.a.x, -2147483647i), vec4<i32>(0i, u_input.c, u_input.c, u_input.c), global0.a.e), vec4<i32>(-2147483647i, -2147483647i, 1186i, -2147483647i)), -select(u_input.c, u_input.c, true)), firstTrailingBit(-vec2<i32>(global0.a.a.x, -43082i)), global0.c.x), select(_wgslsmith_clamp_vec3_u32(u_input.d.xzx, abs(min(global0.a.c, u_input.d.yyy)), ~vec3<u32>(30806u, 33274u, global0.a.d.x)), firstLeadingBit(global0.a.c), global0.a.e.zyy), ~(759u << ((~global0.a.d.x << ((global0.e.x << (u_input.a % 32u)) % 32u)) % 32u)), ~(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(global0.e.x, global0.e.x), 29881u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(351f, global0.d.x, 662f, 715f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1763f, global0.d.x, var_1.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(614f, var_1.x, -157f, global0.a.b.x) - vec4<f32>(var_1.x, var_1.x, var_1.x, -1279f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(917f, -1459f, 946f, 1000f) * vec4<f32>(501f, global0.a.b.x, global0.a.b.x, var_1.x))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.x, -1605f, global0.a.b.x, var_1.x), vec4<f32>(-136f, 1149f, var_1.x, -795f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, -706f, -200f, 741f), vec4<f32>(760f, var_1.x, var_1.x, 1349f))), any(global0.b.xz))))));
}

