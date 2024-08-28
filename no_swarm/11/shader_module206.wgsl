struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_3 = Struct_3(Struct_1(vec4<f32>(854f, 758f, -1256f, 1414f), vec4<f32>(538f, -1000f, 1200f, 226f), vec3<bool>(false, true, false), 1i), Struct_1(vec4<f32>(-1388f, -1525f, 140f, 813f), vec4<f32>(1134f, 217f, -359f, -1377f), vec3<bool>(true, true, false), -1i), vec2<i32>(12810i, 19934i), vec4<u32>(1u, 49758u, 47088u, 9442u), vec4<bool>(true, true, false, false));

var<private> global2: array<f32, 1> = array<f32, 1>(-535f);

var<private> global3: vec3<f32> = vec3<f32>(-1000f, -2035f, 2109f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>) -> bool {
    global0 = 442f;
    var var_0 = u_input.b.x;
    let var_1 = global1.e.x;
    global1 = Struct_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.a.x + -430f), -539f, _wgslsmith_f_op_f32(trunc(-984f)), 727f), _wgslsmith_f_op_vec4_f32(arg_1.b.a - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(global1.a.b * vec4<f32>(arg_0.b.b.x, global1.b.a.x, 189f, arg_1.b.b.x)), _wgslsmith_f_op_vec4_f32(ceil(arg_0.b.b))))), select(vec3<bool>(all(vec4<bool>(arg_2.x, arg_1.b.c.x, arg_2.x, true)), arg_2.x, all(global1.e)), arg_0.b.c, all(!global1.e)), -1552i), global1.a, reverseBits(global1.c), abs(vec4<u32>(~u_input.b.x, global1.d.x, ~33348u, abs(abs(global1.d.x)))), select(global1.e, global1.e, all(!(!global1.e))));
    var_0 = max(4294967295u, firstLeadingBit(_wgslsmith_mult_u32(max(global1.d.x, 34890u), _wgslsmith_dot_vec3_u32(u_input.a, u_input.a))));
    return all(arg_1.b.c);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: bool) -> i32 {
    global2 = array<f32, 1>();
    global2 = array<f32, 1>();
    global3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(-475f, 2134f)), _wgslsmith_div_f32(-428f, 923f), global1.a.b.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(535f, -730f, arg_1.b.x) + global1.b.a.xyz)))), vec3<f32>(722f, global1.b.b.x, -229f));
    var var_0 = Struct_1(global1.a.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1085f, _wgslsmith_f_op_f32(round(global1.a.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_div_f32(arg_1.b.x, global1.b.b.x), any(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 1u)] - 1000f)))), select(select(global1.a.c, !(!arg_0.xxw), func_3(Struct_2(arg_1.d, Struct_1(global1.b.b, arg_1.b, vec3<bool>(arg_0.x, true, arg_0.x), -12041i)), Struct_2(global1.c.x, Struct_1(arg_1.b, global1.a.b, vec3<bool>(arg_1.c.x, true, global1.e.x), -48991i)), vec3<bool>(global1.b.c.x, arg_2, arg_0.x))), arg_0.yyx, true), global1.a.d);
    global1 = Struct_3(Struct_1(vec4<f32>(_wgslsmith_div_f32(356f, global2[_wgslsmith_index_u32(~4294967295u, 1u)]), _wgslsmith_f_op_f32(-global1.b.a.x), 669f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.a.a.x)))), vec4<f32>(global2[_wgslsmith_index_u32(countOneBits(u_input.c), 1u)], _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 1u), 1u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(71621u, 1u)] - 382f)), 743f), vec3<bool>(all(arg_1.c.zz), 1u >= _wgslsmith_sub_u32(68u, u_input.b.x), select(arg_1.c.x, true, arg_1.c.x)), -(i32(-1i) * -9761i)), Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(var_0.b, _wgslsmith_f_op_vec4_f32(global1.b.a * var_0.b))))), arg_1.b, var_0.c, ~global1.b.d), select(abs(max(abs(global1.c), max(global1.c, vec2<i32>(arg_1.d, arg_1.d)))), global1.c >> (abs(~vec2<u32>(0u, 0u)) % vec2<u32>(32u)), select(arg_1.c.xx, var_0.c.xx, false)), abs(vec4<u32>(1u, _wgslsmith_mod_u32(firstLeadingBit(global1.d.x), 5195u << (u_input.a.x % 32u)), _wgslsmith_mod_u32(u_input.a.x, reverseBits(4294967295u)), reverseBits(~1u))), !vec4<bool>(true, all(vec3<bool>(true, global1.e.x, arg_1.c.x)), !all(arg_1.c.zz), any(arg_0)));
    return global1.b.d;
}

fn func_1() -> Struct_1 {
    var var_0 = 2540u;
    global2 = array<f32, 1>();
    var var_1 = vec4<bool>(global1.a.c.x, false, any(vec4<bool>(global1.c.x >= func_2(vec4<bool>(global1.e.x, true, false, global1.b.c.x), global1.b, false), false, true, true)), false);
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(615f, global1.a.a.x), global1.a.a.x, var_1.x && true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1125f, -880f)) + _wgslsmith_f_op_f32(trunc(-1280f))) + 1f), global1.b.a.x, -462f), _wgslsmith_f_op_vec4_f32(step(global1.b.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.b.b.x, 1004f, global1.b.a.x, global3.x), global1.b.b)))), !select(select(var_1.xzw, global1.e.wwx, !global1.e.wyw), var_1.wwy, 9952u > (global1.d.x | global1.d.x)), -46345i);
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = abs(u_input.c);
    global2 = array<f32, 1>();
    global0 = func_1().b.x;
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1145f - global1.a.a.x)));
    let var_1 = func_1();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1891f);
    global2 = array<f32, 1>();
    global1 = Struct_3(func_4(func_1(), all(!global1.a.c.zx)), global1.b, vec2<i32>(global1.c.x, ~global1.a.d), ~(~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.b.x, 1u, u_input.c), vec4<u32>(1u, 38218u, 51211u, global1.d.x)), vec4<u32>(0u, 13131u, global1.d.x, u_input.c) >> (global1.d % vec4<u32>(32u)))), vec4<bool>(global1.e.x, all(vec2<bool>(any(global1.b.c), true)), !(global1.a.c.x | true), all(vec2<bool>(true, true))));
    var var_0 = global1.a;
    global0 = var_0.a.x;
    let var_1 = select(vec3<bool>(true, global1.a.c.x, false), var_0.c, !var_0.c.x || global1.b.c.x);
    let var_2 = global1.d;
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.d);
}

