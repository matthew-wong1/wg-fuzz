struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 20>;

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> u32 {
    global2 = Struct_1(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1366f, global2.b.x, global2.b.x, -958f), _wgslsmith_f_op_vec4_f32(global2.b * global2.b), arg_0.a))))));
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1269f))))), global2.b.x, arg_2.b.x, _wgslsmith_f_op_f32(select(-2714f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x + 1570f)), all(vec3<bool>(false, arg_2.a, global2.a)) | arg_0.a))));
    let var_1 = arg_0;
    var var_2 = Struct_1((arg_1 ^ ~(~1u)) > 1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.b) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(global2.b)), _wgslsmith_f_op_vec4_f32(-arg_2.b))))));
    global1 = array<u32, 20>();
    return u_input.b;
}

fn func_2() -> u32 {
    global2 = Struct_1(!global2.a, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.x, global2.b.x, global2.b.x, global2.b.x) + global2.b)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global2.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.x, -1139f, -794f, global2.b.x) - vec4<f32>(global2.b.x, global2.b.x, -1566f, 2217f)), !vec4<bool>(false, false, global2.a, false)))), vec4<f32>(_wgslsmith_div_f32(-933f, global2.b.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.b.x))), -478f, _wgslsmith_f_op_f32(f32(-1f) * -118f)))));
    global1 = array<u32, 20>();
    global2 = Struct_1(_wgslsmith_clamp_u32(abs(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(u_input.b, 20u)], 0u)), _wgslsmith_dot_vec2_u32(select(vec2<u32>(89205u, global1[_wgslsmith_index_u32(1u, 20u)]), vec2<u32>(1u, 124375u), global2.a), vec2<u32>(23377u, global1[_wgslsmith_index_u32(0u, 20u)]) & vec2<u32>(1318u, 118417u)), _wgslsmith_dot_vec3_u32(vec3<u32>(89547u, 1u, 0u) | vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(36015u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], u_input.b))) >= ~func_3(Struct_1(true, global2.b), 0u, Struct_1(global2.a, vec4<f32>(global2.b.x, global2.b.x, global2.b.x, global2.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.x, global2.b.x, _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(trunc(global2.b.x))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2114f, global2.b.x, global2.b.x, global2.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.x, global2.b.x, global2.b.x, 1569f) * global2.b), !vec4<bool>(global2.a, global2.a, true, false)))))));
    let var_0 = !vec4<bool>(true, true, true, !global2.a);
    return ~28864u;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32) -> vec4<f32> {
    var var_0 = arg_1;
    global0 = 4294967295u ^ ~u_input.b;
    let var_1 = firstLeadingBit(_wgslsmith_mult_vec3_u32(~vec3<u32>(func_2(), countOneBits(0u), _wgslsmith_mod_u32(0u, u_input.b)), select(~vec3<u32>(global1[_wgslsmith_index_u32(40303u, 20u)], u_input.b, 4294967295u), _wgslsmith_clamp_vec3_u32(~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3874u, 20u)], 20u)], 60422u, u_input.b), vec3<u32>(global1[_wgslsmith_index_u32(u_input.b, 20u)], 0u, 1u), vec3<u32>(4294967295u, 4294967295u, u_input.b)), true)));
    var var_2 = Struct_1(!any(!(!arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.b - vec4<f32>(arg_1.b.x, arg_2, global2.b.x, 219f))));
    let var_3 = vec3<i32>(-39465i, _wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a), abs(1i | firstTrailingBit(1i)) ^ -((u_input.a ^ -1i) | abs(u_input.a)));
    return global2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(global2.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec4<bool>(global2.a, global2.a, all(vec4<bool>(global2.a, false, false, global2.a)), false == global2.a), Struct_1(global2.a, vec4<f32>(global2.b.x, 164f, 762f, global2.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.b.x - global2.b.x), 1530f)))), true));
    global1 = array<u32, 20>();
    var var_1 = _wgslsmith_f_op_f32(-var_0.x);
    let var_2 = ~(~(~(~select(vec3<i32>(29042i, 12918i, 2147483647i), vec3<i32>(u_input.a, 1i, u_input.a), vec3<bool>(global2.a, global2.a, global2.a)))));
    let var_3 = Struct_1(!(!(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 20u)], 20u)] != global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, 45694u), 20u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(573f, -306f, global2.b.x, _wgslsmith_f_op_f32(-1651f - 1264f)))));
    var var_4 = ~_wgslsmith_mult_vec4_i32(~_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a, var_2.x, 1i, -1i), ~vec4<i32>(35514i, u_input.a, u_input.a, var_2.x)), vec4<i32>(_wgslsmith_dot_vec2_i32(var_2.zy, var_2.yx), firstLeadingBit(var_2.x), u_input.a, _wgslsmith_mult_i32(u_input.a, -8236i)));
    global2 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~(~vec4<u32>(32153u, 50242u, 4294967295u, u_input.b) >> (vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 20u)], u_input.b, u_input.b, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(~(var_2.x << (global1[_wgslsmith_index_u32(0u, 20u)] % 32u)), -u_input.a >> (firstTrailingBit(u_input.b) % 32u)), firstLeadingBit(u_input.a)), ((vec4<i32>(var_2.x, 15556i, u_input.a, 2147483647i) ^ select(vec4<i32>(var_2.x, var_2.x, 55319i, u_input.a), vec4<i32>(u_input.a, var_4.x, -1i, 48231i), vec4<bool>(var_3.a, true, global2.a, true))) | ~vec4<i32>(27362i, u_input.a, -8632i, -13666i)) ^ ~_wgslsmith_add_vec4_i32(vec4<i32>(var_2.x, -21529i, var_4.x, u_input.a) & vec4<i32>(-33230i, var_4.x, u_input.a, 0i), vec4<i32>(-15203i, var_2.x, var_4.x, var_2.x)), vec4<u32>(global1[_wgslsmith_index_u32(~43241u, 20u)], ~global1[_wgslsmith_index_u32(1u, 20u)], max(abs(~5011u), _wgslsmith_clamp_u32(u_input.b, min(22766u, u_input.b), firstTrailingBit(u_input.b))), u_input.b), var_0.x);
}

