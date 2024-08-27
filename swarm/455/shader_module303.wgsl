struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17>;

var<private> global1: vec2<u32>;

var<private> global2: array<u32, 11>;

var<private> global3: array<u32, 32> = array<u32, 32>(42553u, 1u, 0u, 39125u, 15997u, 32948u, 0u, 0u, 1u, 1u, 27978u, 697u, 110624u, 0u, 0u, 0u, 80498u, 47179u, 8575u, 0u, 58600u, 46696u, 24801u, 0u, 4294967295u, 1u, 4294967295u, 4294967295u, 9392u, 44999u, 49680u, 1u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec4<f32>) -> u32 {
    return ~1u;
}

fn func_1(arg_0: i32, arg_1: bool) -> vec4<f32> {
    let var_0 = global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~global1.x, ~1u) | (~(global1.x ^ ~38881u) << (0u % 32u)), 11u)], 17u)];
    let var_1 = abs(~vec4<u32>(global2[_wgslsmith_index_u32(1u, 11u)], func_2(Struct_1(global2[_wgslsmith_index_u32(1u, 11u)]), u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x))), reverseBits(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 32u)], 32u)], 32u)] & 0u), global1.x));
    var var_2 = Struct_1(_wgslsmith_sub_u32(var_1.x, _wgslsmith_div_u32(global1.x >> (5396u % 32u), ~15719u)));
    global3 = array<u32, 32>();
    var_2 = Struct_1(1u);
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a.x, -225f, -806f, -784f))))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), 1346f, _wgslsmith_f_op_f32(abs(var_0.a.x)), -681f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(764f, 1324f, -344f, 677f)))))), true));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 32>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(42696i, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(global3[_wgslsmith_index_u32(61907u, 32u)]), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 11u)], 11u)], 11u)] >> (global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(74171u, 32u)], 11u)] % 32u)), 32u)] >= 19612u)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-17242i, u_input.a.x) >> (vec2<u32>(31582u, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(82269u, 32u)], 11u)]) % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, -35133i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1760f, _wgslsmith_f_op_f32(round(-1237f)), _wgslsmith_f_op_f32(ceil(var_0.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) * vec3<f32>(var_0.x, var_0.x, var_0.x)))), false))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(739f - var_0.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))), 430f))), 1u, u_input.a.x);
}

