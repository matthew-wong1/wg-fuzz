struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: f32,
    d: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -15873i, -1i), vec4<f32>(-1025f, -663f, 277f, 1000f), false, vec4<i32>(-6998i, 12106i, -56156i, 2147483647i)), Struct_1(vec3<i32>(i32(-2147483648), 0i, 2147483647i), vec4<f32>(-874f, 1546f, -855f, -1603f), false, vec4<i32>(5362i, 37077i, -14641i, 20900i)), vec3<i32>(i32(-2147483648), 32110i, 0i)), Struct_2(Struct_1(vec3<i32>(22811i, 28790i, 27580i), vec4<f32>(857f, -227f, -1086f, 2693f), true, vec4<i32>(0i, 2147483647i, -1i, -51713i)), Struct_1(vec3<i32>(i32(-2147483648), 1i, 11982i), vec4<f32>(2563f, -2928f, 1044f, -1942f), false, vec4<i32>(36441i, 17806i, 20675i, 8047i)), vec3<i32>(36685i, 1i, i32(-2147483648))), Struct_2(Struct_1(vec3<i32>(0i, 16957i, -60719i), vec4<f32>(-1977f, 813f, -730f, -282f), false, vec4<i32>(-1i, -6402i, -6260i, -18636i)), Struct_1(vec3<i32>(1i, -1i, 0i), vec4<f32>(-1127f, -348f, -327f, -1096f), false, vec4<i32>(-503i, 0i, -48498i, 0i)), vec3<i32>(1i, 12267i, 2147483647i)), Struct_2(Struct_1(vec3<i32>(-1i, 2147483647i, i32(-2147483648)), vec4<f32>(1095f, 1334f, -135f, 378f), false, vec4<i32>(16621i, -3165i, 19827i, -19320i)), Struct_1(vec3<i32>(-1i, 17923i, -1712i), vec4<f32>(-220f, 1109f, -891f, -918f), false, vec4<i32>(-9310i, 1i, 2147483647i, i32(-2147483648))), vec3<i32>(0i, 33168i, 1338i)), Struct_2(Struct_1(vec3<i32>(-22831i, -26281i, 0i), vec4<f32>(1377f, 948f, -583f, -800f), false, vec4<i32>(0i, 0i, -3869i, 15131i)), Struct_1(vec3<i32>(0i, 622i, 2147483647i), vec4<f32>(-1000f, -718f, 601f, 1177f), false, vec4<i32>(i32(-2147483648), 0i, 1i, 1i)), vec3<i32>(-93772i, 2147483647i, 1i)));

var<private> global1: array<Struct_4, 7> = array<Struct_4, 7>(Struct_4(-1025f, vec3<f32>(846f, 345f, 1000f), -1i, -1i, -635f), Struct_4(-2023f, vec3<f32>(1646f, 422f, 1131f), i32(-2147483648), -1i, 1228f), Struct_4(2007f, vec3<f32>(-1000f, 166f, 2405f), -11867i, -4175i, -607f), Struct_4(-586f, vec3<f32>(1000f, -168f, -638f), 0i, -1i, 831f), Struct_4(-1000f, vec3<f32>(-110f, -153f, -787f), 0i, -2343i, -1000f), Struct_4(1457f, vec3<f32>(363f, -2994f, -253f), 2147483647i, -3701i, -297f), Struct_4(2287f, vec3<f32>(-269f, -592f, -1000f), 1i, 2080i, -1949f));

var<private> global2: array<bool, 22>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<f32>, arg_2: vec3<bool>) -> vec4<i32> {
    let var_0 = ~u_input.b.x;
    return vec4<i32>(u_input.b.x, -74499i, u_input.b.x, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_0, 2147483647i), u_input.b.x, -2147483647i));
}

fn func_1() -> f32 {
    var var_0 = -2147483647i;
    var_0 = u_input.b.x;
    var var_1 = vec2<f32>(439f, _wgslsmith_f_op_f32(abs(901f)));
    var var_2 = vec4<bool>(u_input.a < 4294967295u, any(vec3<bool>(any(vec2<bool>(global2[_wgslsmith_index_u32(15059u, 22u)], false)), any(vec3<bool>(false, false, global2[_wgslsmith_index_u32(u_input.a, 22u)])), global2[_wgslsmith_index_u32(min(~u_input.a, u_input.a), 22u)])), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(50756u, abs(~4294967295u)), 22u)], false);
    var var_3 = -(~(-select(func_2(vec2<u32>(u_input.a, u_input.a), vec2<f32>(var_1.x, 1000f), var_2.xxx), u_input.b, global2[_wgslsmith_index_u32(min(u_input.a, u_input.a), 22u)])));
    return _wgslsmith_f_op_f32(-442f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -314f)));
}

fn func_3() -> vec2<f32> {
    var var_0 = vec3<i32>(35785i, u_input.b.x, countOneBits(-35285i));
    var var_1 = countOneBits(firstLeadingBit(_wgslsmith_div_i32(-75053i, var_0.x)));
    var var_2 = _wgslsmith_dot_vec2_i32(abs(vec2<i32>(abs(-63753i), _wgslsmith_sub_i32(_wgslsmith_div_i32(var_0.x, var_0.x), var_0.x))), var_0.zx);
    global2 = array<bool, 22>();
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-488f, -1140f, -321f))))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(638f * -1496f))), 560f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(166f, 552f, _wgslsmith_f_op_f32(f32(-1f) * -1060f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2461f, -434f, -1311f) + vec3<f32>(-1043f, 361f, -590f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(271f, -1000f, -887f), vec3<f32>(-3038f, 1044f, -363f))))))));
    return vec2<f32>(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_3) -> vec2<u32> {
    var var_0 = arg_1;
    let var_1 = global0[_wgslsmith_index_u32(45855u, 5u)];
    var var_2 = Struct_2(var_1.a, Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(-51261i, arg_2.b.d.x, -17196i), min(arg_2.b.d.yzw, var_1.a.d.zxw)) | max(max(var_1.a.d.zzy, var_1.c), max(vec3<i32>(u_input.b.x, var_1.c.x, arg_2.a.x), u_input.b.zzy)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-720f, var_1.b.b.x, arg_0, 895f))))) - vec4<f32>(_wgslsmith_f_op_f32(-arg_2.d.x), arg_2.d.x, arg_0, _wgslsmith_f_op_f32(sign(474f)))), !(!all(vec3<bool>(global2[_wgslsmith_index_u32(2609u, 22u)], true, global2[_wgslsmith_index_u32(0u, 22u)]))), u_input.b), -arg_2.b.d.xxy << (_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_1.x, var_0.x, var_0.x), _wgslsmith_mod_vec3_u32(select(arg_1, arg_1, vec3<bool>(arg_2.b.c, false, false)), _wgslsmith_div_vec3_u32(vec3<u32>(18907u, 0u, 1u), vec3<u32>(u_input.a, var_0.x, 0u)))) % vec3<u32>(32u)));
    let var_3 = Struct_3(u_input.b.zw, var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-666f * _wgslsmith_f_op_f32(arg_0 + 1868f)) - var_1.a.b.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(388f, var_1.b.b.x))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0, var_2.b.b.x)))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(var_1.a.b.zx, vec2<f32>(arg_0, -1091f))))) - var_2.b.b.xx));
    let var_4 = select(abs(firstLeadingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.c.x, -32937i, -1i, 70200i), vec4<i32>(var_1.a.a.x, var_1.c.x, var_2.c.x, var_1.a.a.x)), -vec4<i32>(-1i, var_2.a.a.x, -18340i, arg_2.a.x)))), 2147483647i, true);
    return vec2<u32>(u_input.a, 9939u | ~var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 5>();
    var var_0 = func_4(_wgslsmith_f_op_f32(f32(-1f) * -885f), ~(~firstLeadingBit(vec3<u32>(1u, u_input.a, 4294967295u))), Struct_3(~select(~u_input.b.xy, vec2<i32>(u_input.b.x, u_input.b.x) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), vec2<bool>(true, true)), Struct_1(-u_input.b.zzw, _wgslsmith_f_op_vec4_f32(vec4<f32>(-563f, 262f, -256f, -1306f) - vec4<f32>(1f, 1f, 1f, 1f)), any(vec4<bool>(false, true, global2[_wgslsmith_index_u32(1u, 22u)], false)), _wgslsmith_add_vec4_i32(firstTrailingBit(u_input.b), u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(390f, 1062f) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-209f, 1048f)))) * _wgslsmith_f_op_vec2_f32(func_3()))));
    global2 = array<bool, 22>();
    let var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(0u, 0u, 1u)), _wgslsmith_sub_vec3_u32(firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 12640u, 0u), vec3<u32>(1u, 29853u, 4294967295u))), vec3<u32>(69214u, u_input.a, 55706u) ^ (vec3<u32>(u_input.a, var_0.x, 4294967295u) >> (vec3<u32>(31864u, 32355u, u_input.a) % vec3<u32>(32u))))), 7u)];
    var var_2 = var_1.b.x;
    var var_3 = true;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.b.x - 2451f), 19662i, ~4294967295u);
}

