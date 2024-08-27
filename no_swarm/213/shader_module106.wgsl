struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<bool>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26>;

var<private> global1: vec4<f32> = vec4<f32>(-664f, -331f, -1000f, 597f);

var<private> global2: Struct_1;

var<private> global3: array<vec4<u32>, 19> = array<vec4<u32>, 19>(vec4<u32>(4294967295u, 4294967295u, 1u, 0u), vec4<u32>(809u, 30017u, 1882u, 20583u), vec4<u32>(37226u, 21198u, 0u, 0u), vec4<u32>(15703u, 4294967295u, 1u, 0u), vec4<u32>(24328u, 51893u, 0u, 59992u), vec4<u32>(36034u, 48659u, 16436u, 29015u), vec4<u32>(9835u, 26587u, 27205u, 0u), vec4<u32>(0u, 37017u, 1664u, 9172u), vec4<u32>(1u, 19051u, 4294967295u, 4294967295u), vec4<u32>(9429u, 1u, 4294967295u, 1u), vec4<u32>(30727u, 0u, 12248u, 1u), vec4<u32>(90344u, 1u, 40755u, 55160u), vec4<u32>(4294967295u, 28159u, 76669u, 23132u), vec4<u32>(12335u, 0u, 49507u, 4294967295u), vec4<u32>(67669u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(37771u, 4294967295u, 1u, 16511u), vec4<u32>(6533u, 1u, 17219u, 0u), vec4<u32>(33480u, 4294967295u, 37712u, 50790u), vec4<u32>(62615u, 59686u, 36182u, 11033u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> f32 {
    global3 = array<vec4<u32>, 19>();
    return _wgslsmith_f_op_f32(round(1264f));
}

fn func_2(arg_0: bool, arg_1: vec3<f32>) -> vec4<f32> {
    global2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-1211f))), -1259f, global2.c, _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(~global2.d, global2.d | vec2<u32>(0u, 31157u), ~global2.d), ~_wgslsmith_mult_vec2_u32(global2.d, max(global2.d, global2.d))), firstTrailingBit(u_input.a.x));
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(927f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.b, global2.a, global2.c.x)))))), global2.a, _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(step(arg_1.x, global1.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a + global1.x)), false)) + arg_1.x));
}

fn func_1() -> StorageBuffer {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1676f, 2143f, 299f, -128f) + vec4<f32>(2188f, 812f, global1.x, 631f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(2318f, -1302f, -1603f, global2.b))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 393f, global2.b, global1.x))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1417f, global1.x, global2.a, global2.b), vec4<f32>(global1.x, -529f, -1406f, global1.x), vec4<bool>(global2.c.x, false, true, true))))))));
    let var_0 = global2.d.x > 44478u;
    global3 = array<vec4<u32>, 19>();
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), global2.a, global1.x, global2.a) + vec4<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x, global1.x, 665f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(true, _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b, 1000f, 1000f) * global1.wzz))) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(628f, 952f, global2.b, global2.a), vec4<f32>(-330f, 1511f, 1000f, -441f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global2.a, global1.x, global1.x) + vec4<f32>(-1101f, global2.a, 1434f, 964f))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_2((global2.e << (4294967295u % 32u)) >= global2.e, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(global1.wzx - vec3<f32>(429f, global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.a, global1.x, -616f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.a, 1255f, 722f, global1.x))), vec4<f32>(-973f, 1000f, global1.x, 1635f))), vec4<bool>(4294967295u == global2.d.x, any(!vec4<bool>(false, true, false, global2.c.x)), all(select(vec4<bool>(false, true, false, false), vec4<bool>(var_0, var_0, true, true), vec4<bool>(var_0, false, var_0, true))), true))));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-450f, -708f)) * _wgslsmith_f_op_f32(abs(global2.a))), _wgslsmith_f_op_f32(min(-1031f, 241f)), _wgslsmith_f_op_f32(-global2.b), -653f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(354f, global2.b, var_0)), _wgslsmith_f_op_f32(-1758f + global1.x), _wgslsmith_f_op_f32(floor(1009f)), _wgslsmith_f_op_f32(-global2.a)) * vec4<f32>(_wgslsmith_f_op_f32(global1.x + global1.x), -677f, _wgslsmith_f_op_f32(f32(-1f) * -355f), global2.b))));
    return StorageBuffer(~global2.d, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec4_f32(func_2(116221u == (global2.d.x >> (10179u % 32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global1.yxw)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1711f, global2.b, global2.a) * vec3<f32>(866f, global1.x, 535f))))).xy, global1.yx)), _wgslsmith_clamp_vec3_i32(u_input.a.wxy, u_input.a.wzz, u_input.a.wwx), _wgslsmith_f_op_f32(f32(-1f) * -247f));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<u32>, 19>();
    let x = u_input.a;
    s_output = func_1();
}

