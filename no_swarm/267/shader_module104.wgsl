struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec2<u32>(47727u, 25026u));

var<private> global1: bool;

var<private> global2: array<vec3<i32>, 32>;

var<private> global3: Struct_1 = Struct_1(true, vec2<u32>(39662u, 0u));

var<private> global4: array<u32, 1>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> vec2<u32> {
    global3 = Struct_1(true, abs(_wgslsmith_mult_vec2_u32(~max(vec2<u32>(0u, 13815u), u_input.d.zw), vec2<u32>(1u, 4294967295u))));
    let var_0 = arg_0;
    var var_1 = vec4<i32>(-50009i ^ u_input.a.x, u_input.c.x, -_wgslsmith_sub_i32(-58897i, -2147483647i), _wgslsmith_div_i32(908i | u_input.c.x, 0i));
    let var_2 = arg_1.x;
    var_1 = _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -u_input.a, ~_wgslsmith_mod_vec4_i32(abs(vec4<i32>(var_1.x, u_input.a.x, var_1.x, -49704i)), _wgslsmith_add_vec4_i32(u_input.a, u_input.a))), _wgslsmith_clamp_vec4_i32(-u_input.a >> (abs(u_input.d) % vec4<u32>(32u)), -(select(u_input.a, u_input.a, false) | ~vec4<i32>(1i, 4937i, -2147483647i, -11394i)), -u_input.a));
    return countOneBits(reverseBits(vec2<u32>(~(~4294967295u), u_input.b)));
}

fn func_2(arg_0: bool) -> vec4<bool> {
    let var_0 = Struct_1(true, func_3(Struct_1(true, u_input.d.ww | global3.b), !vec4<bool>(false, arg_0, true, global3.a)) ^ select(abs(min(global0.b, u_input.d.zx)), countOneBits(u_input.d.wx), !(arg_0 != false)));
    var var_1 = var_0;
    var var_2 = _wgslsmith_dot_vec3_u32(u_input.d.xwy, ~vec3<u32>(~global0.b.x, ~4294967295u ^ global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global3.b.x, 1u)] >> (global0.b.x % 32u), 1u)], 1u));
    global3 = var_0;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(453f, 291f, 2091f)) * vec3<f32>(_wgslsmith_div_f32(-961f, -494f), _wgslsmith_f_op_f32(f32(-1f) * -336f), _wgslsmith_f_op_f32(116f + 549f))))));
    return select(vec4<bool>(!(_wgslsmith_sub_u32(u_input.d.x, 4294967295u) < ~24586u), all(select(vec2<bool>(true, false), !vec2<bool>(global3.a, arg_0), !vec2<bool>(global0.a, var_1.a))), var_1.a || all(select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, false), vec2<bool>(false, false))), all(!(!vec4<bool>(false, global0.a, true, global0.a)))), !select(!(!vec4<bool>(var_0.a, var_0.a, var_1.a, var_0.a)), !vec4<bool>(global0.a, arg_0, var_1.a, global3.a), !(false || global0.a)), any(!(!(!vec3<bool>(var_0.a, false, false)))));
}

fn func_1(arg_0: bool) -> bool {
    let var_0 = vec4<u32>(global0.b.x, ~u_input.b, _wgslsmith_mod_u32(global3.b.x, 22754u), global3.b.x) ^ select(~(u_input.d & vec4<u32>(48959u, 71616u, global3.b.x, 0u)) << (max(_wgslsmith_div_vec4_u32(u_input.d, vec4<u32>(77254u, 0u, global3.b.x, u_input.d.x)), u_input.d) % vec4<u32>(32u)), u_input.d, func_2(any(!vec3<bool>(true, true, global0.a))));
    var var_1 = ~min(firstTrailingBit(max(14482i, 66414i)), -(-34647i ^ u_input.c.x)) | u_input.a.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-932f))));
    global0 = Struct_1(global0.a, var_0.yx);
    var var_3 = Struct_1(all(func_2(arg_0).xw), vec2<u32>(_wgslsmith_dot_vec4_u32((vec4<u32>(840u, var_0.x, 1u, 0u) << (u_input.d % vec4<u32>(32u))) << ((var_0 << (vec4<u32>(var_0.x, u_input.d.x, 1u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)), abs(~vec4<u32>(global3.b.x, 1u, global3.b.x, 40442u))), global3.b.x));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global0.a, global3.b);
    let var_1 = _wgslsmith_mult_i32(-2147483647i, _wgslsmith_clamp_i32(u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, -u_input.c.x), -30458i));
    let var_2 = Struct_1(func_1(var_0.a) || true, global0.b);
    var var_3 = var_2;
    global1 = var_3.a;
    global4 = array<u32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1109f, -1446f, 1535f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1004f, -1334f))) + vec2<f32>(294f, 262f)) - vec2<f32>(_wgslsmith_f_op_f32(-286f - -493f), _wgslsmith_div_f32(-163f, -1516f)))));
}

