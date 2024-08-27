struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec4<i32>,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 443f;

var<private> global1: bool;

var<private> global2: Struct_1;

var<private> global3: array<u32, 22>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: vec4<bool>) -> i32 {
    return -1i;
}

fn func_3() -> vec2<u32> {
    let var_0 = select(vec4<bool>(10972u > global2.a.x, (global2.a.x > _wgslsmith_mult_u32(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(48119u, 22u)], 22u)])) || !(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 22u)], 22u)] == 31131u), !all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-2411f, 1135f, false)))) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1274f + -216f)))), !vec4<bool>(true, all(vec2<bool>(true, true)), false, true), !vec4<bool>((global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 22u)], 22u)] > global2.a.x) && true, true, true, false));
    global0 = -946f;
    let var_1 = vec2<bool>(var_0.x, (var_0.x | false) & false);
    var var_2 = _wgslsmith_div_f32(-755f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -522f))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1403f, 1047f), 584f))))));
    var var_3 = ~select(~countOneBits(~vec4<u32>(37645u, 0u, u_input.a.x, 4294967295u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 79358u, 0u), u_input.a), _wgslsmith_clamp_u32(4063u, 18707u, global3[_wgslsmith_index_u32(global2.a.x, 22u)]), ~0u, _wgslsmith_add_u32(1u, 33132u)) | vec4<u32>(global2.a.x, global2.a.x >> (global2.a.x % 32u), firstTrailingBit(global2.a.x), ~global3[_wgslsmith_index_u32(55882u, 22u)]), var_0);
    return ~(~_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(1u, 4294967295u)), vec2<u32>(38228u, abs(u_input.a.x))));
}

fn func_1() -> vec2<u32> {
    let var_0 = vec4<i32>(~0i, _wgslsmith_sub_i32(-6824i, countOneBits(-1i)), countOneBits(func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(366f, -423f, 202f) - vec3<f32>(811f, 516f, -514f)), vec3<f32>(1000f, 739f, -830f)), vec2<i32>(0i, 15070i) >> (vec2<u32>(u_input.a.x, global3[_wgslsmith_index_u32(global2.a.x, 22u)]) % vec2<u32>(32u)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), false))), _wgslsmith_add_i32(~(-35441i), 0i));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-187f)) * -1480f), _wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(-1000f, 609f))))) * -849f);
    global2 = Struct_1(func_3());
    var var_2 = Struct_4(var_0.x, ~(firstTrailingBit(select(-26400i, var_0.x, true)) | var_0.x));
    global0 = 608f;
    return ~_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~(vec2<u32>(79471u, 58111u) ^ u_input.a.yz), global2.a), reverseBits(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(global2.a.x, 22u)], global2.a.x), u_input.a.zy, vec2<u32>(u_input.a.x, 0u)), u_input.a.xy)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_sub_vec2_u32(~(~select(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(32588u, 22u)], 22u)], 1u), global2.a, vec2<bool>(true, true))), (func_1() & ~u_input.a.zy) ^ (u_input.a.xy >> (abs(vec2<u32>(13075u, 4294967295u)) % vec2<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -2463f), -789f, _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(~(~vec2<i32>(1i, 5595i)), -min(vec2<i32>(1i, 81952i), vec2<i32>(2147483647i, 1i))), vec2<i32>(countOneBits(i32(-1i) * -73103i), ~23828i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1603f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-510f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-519f, -954f)))))));
}

