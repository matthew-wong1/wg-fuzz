struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: f32,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<u32>;

var<private> global2: Struct_2 = Struct_2(29857u, -1726f);

var<private> global3: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_2) -> i32 {
    let var_0 = arg_3;
    global1 = global3.b.a.wx;
    global1 = reverseBits(vec2<u32>(~0u, 17862u >> (~(global3.b.a.x & 1u) % 32u)));
    var var_1 = true;
    var var_2 = max(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b, ~0u), ~select(vec3<u32>(362u, 8812u, var_0.a), arg_1, vec3<bool>(true, true, false))), arg_1.x);
    return min(u_input.c, -(~abs(~(-1i))));
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_4(firstTrailingBit(u_input.a.x), 1u);
    var var_1 = global3.b;
    let var_2 = -555f;
    var var_3 = Struct_4(min(-var_1.d, -func_3(select(vec4<bool>(global3.b.e.x, var_1.e.x, global3.b.e.x, true), vec4<bool>(global3.b.e.x, true, false, false), true), ~vec3<u32>(0u, global3.b.a.x, 0u), true, Struct_2(var_0.b, -1003f))), _wgslsmith_add_u32(global2.a, ~(~_wgslsmith_mod_u32(1u, 1u))));
    global1 = _wgslsmith_mult_vec2_u32(vec2<u32>(select(_wgslsmith_mod_u32(4294967295u, var_0.b), _wgslsmith_mult_u32(u_input.b, 83469u), any(vec2<bool>(global3.b.e.x, global3.b.e.x))), ~(~107404u)) << (vec2<u32>(firstTrailingBit(84798u >> (0u % 32u)), 0u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, 4294967295u), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(var_1.a.wx, vec2<u32>(1u, 0u)) & max(global3.b.a.xw, vec2<u32>(global2.a, u_input.b)), firstLeadingBit(reverseBits(vec2<u32>(var_0.b, var_3.b))), firstTrailingBit(vec2<u32>(var_0.b, 4294967295u) ^ global3.b.a.yw)), vec2<u32>(1u, 0u)));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b, 624f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global3.b.c, _wgslsmith_f_op_f32(-553f - var_2)))), 1f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(809f * global2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-356f, 1076f, global3.b.e.x))), var_2, var_1.c)));
}

fn func_1() -> Struct_2 {
    let var_0 = vec4<u32>(~u_input.b, 33555u, u_input.b, _wgslsmith_dot_vec4_u32(max(vec4<u32>(1u, global2.a, global1.x, 1u) & global3.b.a, _wgslsmith_mod_vec4_u32(vec4<u32>(global2.a, global2.a, 4294967295u, 4294967295u), vec4<u32>(4564u, global1.x, 25650u, 24398u))), _wgslsmith_mod_vec4_u32(global3.b.a, vec4<u32>(192u, 4294967295u, global2.a, global1.x)) | max(global3.b.a, vec4<u32>(global1.x, global1.x, 0u, 19149u))) >> (global3.b.a.x % 32u));
    global3 = Struct_3(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_2()))), Struct_1(~(abs(vec4<u32>(var_0.x, global1.x, u_input.b, 8052u)) << (max(vec4<u32>(global2.a, 24420u, 42722u, 22257u), vec4<u32>(var_0.x, global2.a, 4294967295u, 4294967295u)) % vec4<u32>(32u))), min(u_input.a.wyw, vec3<i32>(u_input.a.x, global3.b.d, -global3.b.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b))), u_input.c | u_input.a.x, select(select(vec3<bool>(true, true, false), !global3.b.e, select(global3.b.e, vec3<bool>(true, true, global3.b.e.x), vec3<bool>(false, global3.b.e.x, false))), global3.b.e, !select(global3.b.e, vec3<bool>(global3.b.e.x, global3.b.e.x, global3.b.e.x), false))));
    global1 = _wgslsmith_mult_vec2_u32(vec2<u32>(countOneBits(1u), global2.a), _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(~(~var_0.xx), var_0.wy), ~vec2<u32>(4294967295u, global3.b.a.x)));
    var var_1 = -u_input.a.x;
    var var_2 = !select(select(!vec4<bool>(global3.b.e.x, true, global3.b.e.x, global3.b.e.x), select(select(vec4<bool>(false, false, global3.b.e.x, true), vec4<bool>(global3.b.e.x, false, global3.b.e.x, global3.b.e.x), vec4<bool>(global3.b.e.x, global3.b.e.x, global3.b.e.x, global3.b.e.x)), select(vec4<bool>(global3.b.e.x, global3.b.e.x, true, false), vec4<bool>(global3.b.e.x, global3.b.e.x, false, false), global3.b.e.x), global3.b.e.x), !any(global3.b.e.yx)), !(!(!vec4<bool>(global3.b.e.x, false, false, global3.b.e.x))), true);
    return Struct_2(_wgslsmith_div_u32(countOneBits(var_0.x), ~var_0.x), _wgslsmith_f_op_f32(global2.b - _wgslsmith_f_op_vec4_f32(func_2()).x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(719f, -182f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1202f)))))));
}

