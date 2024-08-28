struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12>;

var<private> global1: array<bool, 32>;

var<private> global2: array<u32, 25> = array<u32, 25>(0u, 0u, 0u, 102096u, 0u, 53763u, 0u, 22115u, 46795u, 0u, 30553u, 0u, 1u, 1u, 0u, 1u, 30843u, 79600u, 4294967295u, 0u, 66442u, 37654u, 0u, 23333u, 60008u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec2<f32> {
    let var_0 = 1u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2017f))))));
    var var_2 = _wgslsmith_div_u32(~_wgslsmith_clamp_u32(4294967295u, ~_wgslsmith_mod_u32(u_input.b, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, global2[_wgslsmith_index_u32(u_input.b, 25u)], u_input.b), vec4<u32>(19426u, u_input.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(29886u, 25u)], 25u)], global2[_wgslsmith_index_u32(4294967295u, 25u)])) ^ abs(var_0)), 61448u);
    var_2 = 1u;
    var var_3 = !(!(!arg_0.b));
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(433f, 319f) + vec2<f32>(-453f, 726f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(308f, -574f))))))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(~(~(abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) >> (vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(43192u, 25u)], 4294967295u, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_f_op_vec2_f32(func_3(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(85732u, u_input.b), abs(firstTrailingBit(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(61555u, 25u)])))), 25u)], 12u)])));
    var var_1 = global0[_wgslsmith_index_u32(1u, 12u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-778f, var_0.b.x, 110f))))))));
    let var_3 = -543f;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_0.b.x)) + var_2.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-261f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 * 1021f) - var_3))));
    return Struct_1(vec4<i32>(var_0.a.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(28925i, -952i), vec2<i32>(var_0.a.x, u_input.a.x)) ^ _wgslsmith_mult_i32(var_0.a.x, 0i), select(min(1i, var_0.a.x), ~(-5848i), false)), i32(-1i) * -47666i, 1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1692f, 710f), _wgslsmith_f_op_vec2_f32(ceil(var_2.xz)))) + _wgslsmith_div_vec2_f32(var_2.yx, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_0.b * vec2<f32>(-1566f, var_0.b.x)))))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = arg_0;
    global1 = array<bool, 32>();
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, arg_0)))))) > arg_0;
    let var_2 = func_2();
    var var_3 = var_2;
    return Struct_1(var_3.a >> (~vec4<u32>(~u_input.b, 46967u, 36566u, _wgslsmith_add_u32(u_input.b, u_input.b)) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -685f)), _wgslsmith_f_op_f32(sign(851f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    global1 = array<bool, 32>();
    let var_0 = global0[_wgslsmith_index_u32(9841u, 12u)];
    var var_1 = func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-241f, -202f))), _wgslsmith_f_op_f32(round(184f))))));
    var var_2 = Struct_2(reverseBits(var_1.a.zyx), true);
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(86736u, u_input.b, u_input.b)), ~vec3<u32>(4294967295u, u_input.b, 0u), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 25u)], u_input.b, u_input.b) ^ vec3<u32>(84701u, u_input.b, global2[_wgslsmith_index_u32(24431u, 25u)]))), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, ~u_input.b, ~47480u), firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 25u)], 20947u, 0u), vec3<u32>(4294967295u, 2104u, u_input.b))), ~select(vec3<u32>(13248u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 25u)], 25u)], 56677u), vec3<u32>(u_input.b, 57796u, u_input.b), vec3<bool>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(11627u, 25u)], 25u)], 25u)], 32u)], global1[_wgslsmith_index_u32(u_input.b, 32u)], var_2.b))), vec3<bool>(select(true, global1[_wgslsmith_index_u32(~u_input.b, 32u)], var_2.b & var_0.b), true, true)));
}

