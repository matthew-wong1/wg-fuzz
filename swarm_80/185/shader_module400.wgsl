struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(Struct_1(vec2<u32>(34149u, 42339u)), Struct_1(vec2<u32>(2756u, 44033u))));

var<private> global1: array<f32, 17> = array<f32, 17>(1071f, -331f, 669f, 580f, -1484f, -478f, -2687f, 2200f, -325f, -383f, -286f, 588f, 1286f, -1293f, 1607f, -919f, 214f);

var<private> global2: array<u32, 16> = array<u32, 16>(17695u, 30142u, 0u, 29790u, 12132u, 5u, 12889u, 7977u, 1u, 1u, 45047u, 42145u, 0u, 1u, 3878u, 1u);

var<private> global3: Struct_2 = Struct_2(Struct_1(vec2<u32>(22471u, 9988u)), Struct_1(vec2<u32>(1u, 0u)));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1(arg_0: vec3<f32>) -> vec4<u32> {
    global2 = array<u32, 16>();
    let var_0 = 1u;
    global2 = array<u32, 16>();
    var var_1 = Struct_2(Struct_1(vec2<u32>(0u, _wgslsmith_mod_u32(19689u, abs(37967u)))), global3.b);
    var var_2 = !((64977i & u_input.b.x) > -2147483647i);
    return ~vec4<u32>(global2[_wgslsmith_index_u32(abs(20510u | (24014u ^ var_0)), 16u)], select(4294967295u, 0u, !any(vec3<bool>(false, false, false))), 4294967295u, ~(abs(74348u) & min(75106u, u_input.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2813f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(25879u, 16u)], 16u)], 16u)], 17u)], global1[_wgslsmith_index_u32(51871u, 17u)], global1[_wgslsmith_index_u32(global3.a.a.x, 17u)])), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(320f, global1[_wgslsmith_index_u32(u_input.d.x, 17u)], -937f, 255f)), _wgslsmith_div_vec4_f32(vec4<f32>(688f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(7055u, 16u)], 16u)], 17u)], global1[_wgslsmith_index_u32(15124u, 17u)], -545f), vec4<f32>(-295f, -1159f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 16u)], 16u)], 17u)], 1106f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 17u)], 2057f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(127259u, 17u)]), -531f)))));
    let var_1 = global3.b;
    let var_2 = 23556i;
    let var_3 = false;
    let var_4 = !var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_0.x, -1439f)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(54390u, 17u)]), -323f)), 771f, global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(1u, var_1.a.x)), 17u)]) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 17u)], 800f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 16u)], 17u)], 891f), vec4<f32>(-517f, -2023f, var_0.x, -306f)), vec4<f32>(var_0.x, var_0.x, var_0.x, -639f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1818f, var_0.x, 1000f, global1[_wgslsmith_index_u32(45521u, 17u)])) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) * vec4<f32>(global1[_wgslsmith_index_u32(global3.a.a.x, 17u)], -1591f, var_0.x, var_0.x)))))), var_1.a, firstTrailingBit(-reverseBits(abs(var_2))), ~_wgslsmith_mult_vec4_u32(select(~vec4<u32>(u_input.d.x, global2[_wgslsmith_index_u32(global3.b.a.x, 16u)], 74671u, 46501u), vec4<u32>(u_input.d.x, 1u, global2[_wgslsmith_index_u32(global3.a.a.x, 16u)], global3.b.a.x) << (vec4<u32>(global2[_wgslsmith_index_u32(16993u, 16u)], u_input.d.x, global2[_wgslsmith_index_u32(var_1.a.x, 16u)], u_input.d.x) % vec4<u32>(32u)), true), abs(func_1(vec3<f32>(669f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d.x, 16u)], 17u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 17u)])))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_0.x)))));
}

