struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<bool>,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 1u);

var<private> global1: array<Struct_1, 26>;

var<private> global2: f32 = 411f;

var<private> global3: f32 = -270f;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -599f), _wgslsmith_div_f32(-2371f, _wgslsmith_f_op_f32(step(1540f, -104f)))) - -1000f)));
    let var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(u_input.c.x), 26u)];
    let var_1 = vec4<bool>(var_0.c.x, all(select(!(!vec4<bool>(false, var_0.c.x, true, false)), vec4<bool>(var_0.c.x, all(vec4<bool>(var_0.c.x, true, false, true)), var_0.a.x < var_0.e.x, all(var_0.c)), var_0.c.x)), true, true);
    global0 = _wgslsmith_add_vec2_u32(u_input.c, ~var_0.b & _wgslsmith_sub_vec2_u32(countOneBits(~var_0.b), firstTrailingBit(var_0.b << (vec2<u32>(93961u, 78516u) % vec2<u32>(32u)))));
    var var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(select(u_input.c.x, _wgslsmith_add_u32(var_0.b.x, u_input.e), var_0.c.x), ~27579u, 0u, (global0.x | var_0.b.x) & max(var_0.b.x, 1u)), ~(~(~vec4<u32>(u_input.e, 32057u, u_input.c.x, u_input.e))));
    return ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, _wgslsmith_add_u32(~1u, u_input.e | var_0.b.x), 4294967295u), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(112060u, 0u, 11526u), abs(vec3<u32>(u_input.e, 0u, 20187u))), min(~vec3<u32>(var_0.b.x, global0.x, u_input.e), vec3<u32>(14805u, var_0.b.x, 151439u)), vec3<u32>(0u, 4294967295u, var_0.b.x) ^ vec3<u32>(102503u, 4294967295u, 7871u)));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global0 = _wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(min(~7656u, 0u), firstTrailingBit(global0.x))), reverseBits(~u_input.c) ^ vec2<u32>(abs(u_input.e), _wgslsmith_mult_u32(func_3(), ~4294967295u)), _wgslsmith_clamp_vec2_u32(u_input.c ^ ~firstLeadingBit(vec2<u32>(global0.x, 0u)), _wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(_wgslsmith_sub_u32(11322u, u_input.e), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 84283u, global0.x, 13858u), vec4<u32>(1u, u_input.c.x, 0u, u_input.e)))), u_input.c));
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(23825u, max(max(_wgslsmith_mult_u32(global0.x, 19259u) << (max(29017u, global0.x) % 32u), 27694u), _wgslsmith_mod_u32(~34383u, ~u_input.c.x | (global0.x ^ global0.x))), 1u), 26u)];
    var var_1 = ~_wgslsmith_mult_u32(firstTrailingBit(var_0.b.x), 1u);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.e.ywy + var_0.a))), ~(~_wgslsmith_div_vec2_u32(select(vec2<u32>(7922u, global0.x), var_0.b, true), _wgslsmith_add_vec2_u32(u_input.c, vec2<u32>(u_input.e, 60050u)))), !select(vec3<bool>(true, true, any(vec4<bool>(var_0.c.x, true, true, true))), !(!vec3<bool>(var_0.c.x, false, var_0.c.x)), vec3<bool>(true, false, var_0.c.x)), 2147483647i | var_0.d, var_0.e);
    global1 = array<Struct_1, 26>();
    return var_2;
}

fn func_1() -> Struct_1 {
    global2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(438f * 1169f) - -168f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1401f))))))));
    let var_0 = global1[_wgslsmith_index_u32(u_input.e, 26u)];
    var var_1 = func_2(var_0.e.x);
    global0 = min(~((vec2<u32>(1u, var_1.b.x) >> (vec2<u32>(var_1.b.x, 1u) % vec2<u32>(32u))) & var_0.b) ^ vec2<u32>(4294967295u, 1u), vec2<u32>(24713u, ~_wgslsmith_clamp_u32(4294967295u, _wgslsmith_clamp_u32(var_1.b.x, 4052u, 1u), ~global0.x)));
    let var_2 = true;
    return global1[_wgslsmith_index_u32(u_input.c.x ^ countOneBits(select(1u, _wgslsmith_div_u32(countOneBits(4294967295u), abs(4294967295u)), var_0.c.x)), 26u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> f32 {
    let var_0 = 393f;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(arg_1.a - arg_0.e.zxz), select(vec2<u32>(~(~u_input.e), ~abs(arg_0.b.x)), ~(~arg_1.b) & arg_0.b, vec2<bool>(arg_3, _wgslsmith_f_op_f32(963f + arg_0.a.x) > arg_1.e.x)), func_2(1182f).c, arg_1.d, arg_0.e);
    global1 = array<Struct_1, 26>();
    let var_2 = global1[_wgslsmith_index_u32(4294967295u, 26u)];
    var var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-arg_0.e), _wgslsmith_f_op_vec4_f32(arg_0.e * var_1.e))), vec4<f32>(_wgslsmith_f_op_f32(abs(1994f)), _wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(-var_2.e.x), _wgslsmith_f_op_f32(-var_0)), any(vec3<bool>(arg_0.c.x, false, false))))), _wgslsmith_div_vec4_f32(var_2.e, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1.e.x)), arg_2), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2, arg_0.a.x)) - _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.e.x)))))));
    return var_1.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(32885u >= _wgslsmith_mult_u32(reverseBits(global0.x), reverseBits(~global0.x)));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(global1[_wgslsmith_index_u32(u_input.c.x, 26u)], func_1(), -2150f, func_1().c.x))));
    let var_1 = true;
    var var_2 = Struct_1(vec3<f32>(328f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1348f) + -301f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-200f)))))), vec2<u32>(countOneBits(global0.x), global0.x), !vec3<bool>(select(var_1, func_2(-369f).c.x, false), func_1().c.x && true, false), max(-1i, -2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(1355f, -683f, var_1)), -224f, -1688f, _wgslsmith_f_op_f32(ceil(559f))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1736f, 1159f, 482f, -541f))))))));
    var var_3 = var_2.b.x;
    var_3 = u_input.e;
    let var_4 = var_2.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e.x)));
}

