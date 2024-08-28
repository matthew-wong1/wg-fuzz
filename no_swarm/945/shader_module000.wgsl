struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> bool {
    global0 = array<Struct_2, 24>();
    var var_0 = _wgslsmith_f_op_f32(step(-1000f, 1f));
    var var_1 = reverseBits(-5218i);
    global0 = array<Struct_2, 24>();
    var var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 24u)];
    return true;
}

fn func_1(arg_0: vec2<u32>) -> i32 {
    var var_0 = select(~_wgslsmith_clamp_u32(abs(_wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(arg_0.x, arg_0.x))), _wgslsmith_add_u32(77414u, 14108u), 4294967295u), 64753u, !func_2());
    global0 = array<Struct_2, 24>();
    var var_1 = Struct_1(1u);
    var_0 = 0u;
    var_1 = Struct_1(_wgslsmith_sub_u32(~(u_input.a.x << (1u % 32u)), 0u));
    return countOneBits(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, 24732i), _wgslsmith_clamp_vec2_i32(max(vec2<i32>(640i, u_input.b), vec2<i32>(u_input.b, -14085i)), vec2<i32>(u_input.b, u_input.b) << (u_input.a.yx % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(-2147483647i, -47943i))))) & 45102i;
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: f32, arg_3: vec4<u32>) -> vec2<f32> {
    let var_0 = u_input.b;
    global0 = array<Struct_2, 24>();
    let var_1 = -_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -(~vec3<i32>(-75073i, var_0, u_input.b)), vec3<i32>(arg_1 ^ ~(-15075i), ~3210i & u_input.b, reverseBits(~arg_1)), (-vec3<i32>(33594i, -2687i, arg_1) ^ vec3<i32>(u_input.b, -2147483647i, -2147483647i)) ^ countOneBits(-vec3<i32>(-2147483647i, 1i, -57096i)));
    global0 = array<Struct_2, 24>();
    global0 = array<Struct_2, 24>();
    return vec2<f32>(arg_0.x, 649f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 24>();
    var var_0 = _wgslsmith_mult_i32(1i, select(u_input.b, -15770i, all(!select(vec2<bool>(false, false), vec2<bool>(false, false), false))));
    var var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 24u)];
    let var_2 = vec4<u32>(0u, firstLeadingBit(_wgslsmith_div_u32(~(~u_input.a.x), _wgslsmith_div_u32(_wgslsmith_sub_u32(var_1.b.a, 57426u), abs(var_1.c)))), ~_wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(u_input.a.yx, u_input.a.zx), ~min(u_input.a.xx, u_input.a.zx)), u_input.a.x >> ((_wgslsmith_mult_u32(~u_input.a.x, abs(u_input.a.x)) >> (~(~var_1.b.a) % 32u)) % 32u));
    var var_3 = vec4<u32>(min(~47565u, 1u), 1u, _wgslsmith_dot_vec2_u32(~(~_wgslsmith_add_vec2_u32(vec2<u32>(var_1.c, u_input.a.x), vec2<u32>(u_input.a.x, 20360u))), ~(~(~vec2<u32>(u_input.a.x, u_input.a.x)))), _wgslsmith_div_u32(87647u, _wgslsmith_sub_u32(var_1.d.a, _wgslsmith_mult_u32(_wgslsmith_mod_u32(21230u, 1u), 4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b << (var_1.b.a % 32u), func_1(~(~vec2<u32>(var_2.x, 4294967295u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-208f, 1345f, -672f, 398f)), _wgslsmith_add_i32(-38231i, 3241i), _wgslsmith_f_op_f32(-532f - -329f), var_2)) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(732f, -265f), vec2<f32>(-1000f, 295f), vec2<bool>(true, false))))))));
}

