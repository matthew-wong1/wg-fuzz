struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
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

var<private> global0: Struct_1 = Struct_1(true, vec4<f32>(205f, -460f, -122f, 490f), 14903u);

var<private> global1: array<f32, 20>;

var<private> global2: Struct_2 = Struct_2(i32(-2147483648));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> i32 {
    var var_0 = vec3<u32>(~88895u, ~min(_wgslsmith_sub_u32(global0.c, 1u), _wgslsmith_mult_u32(~global0.c, u_input.b.x | global0.c)), 41308u);
    let var_1 = Struct_3(global0.a, _wgslsmith_dot_vec3_i32(u_input.a.yxy, _wgslsmith_clamp_vec3_i32(u_input.a.zxx, u_input.a.www, abs(u_input.a.zwy))), select(vec3<u32>(434u, 4294967295u, 38571u), u_input.e.wwx, select(vec3<bool>(!global0.a, global0.a, true), select(select(vec3<bool>(global0.a, false, true), vec3<bool>(global0.a, false, global0.a), true), !vec3<bool>(global0.a, global0.a, global0.a), true), select(vec3<bool>(global0.a, global0.a, global0.a), select(vec3<bool>(true, true, global0.a), vec3<bool>(false, global0.a, true), vec3<bool>(true, global0.a, global0.a)), select(vec3<bool>(global0.a, false, global0.a), vec3<bool>(global0.a, true, false), true)))));
    return -global2.a;
}

fn func_2(arg_0: u32, arg_1: Struct_3) -> Struct_1 {
    global2 = Struct_2(global2.a);
    var var_0 = 1153f;
    global1 = array<f32, 20>();
    let var_1 = true;
    var var_2 = Struct_2(_wgslsmith_mult_i32(~arg_1.b, _wgslsmith_mult_i32(-5523i, func_3(vec4<i32>(u_input.d, global2.a, arg_1.b, arg_1.b), Struct_2(u_input.c)))) ^ _wgslsmith_clamp_i32(~arg_1.b, max(1i, 0i) & arg_1.b, global2.a << (max(arg_0, 40544u) % 32u)));
    return Struct_1(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(global0.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(global0.c, 20u)])), global1[_wgslsmith_index_u32(4294967295u, 20u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(42715u, 20u)]) * _wgslsmith_f_op_f32(-247f - 266f)), global0.b.x)), ~(~1u >> (global0.c % 32u)));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_mult_i32(-2147483647i, firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.c, 1i) | ~2147483647i, _wgslsmith_dot_vec2_i32(u_input.a.zz, u_input.a.yw >> (u_input.b.xx % vec2<u32>(32u))))));
    global0 = func_2(30366u, Struct_3(true, 1i, firstLeadingBit(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(13458u, global0.c, global0.c), vec3<u32>(u_input.b.x, 0u, u_input.b.x)), ~vec3<u32>(u_input.e.x, global0.c, u_input.e.x)))));
    global0 = func_2(~1u, Struct_3(global0.a, -24242i, u_input.b));
    let var_1 = firstTrailingBit(4294967295u);
    let var_2 = func_2(43984u, Struct_3(global0.a, _wgslsmith_div_i32(min(arg_0.a, min(u_input.c, u_input.a.x)), var_0), u_input.e.xyy));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec2_u32(~(~u_input.b.yz), abs(~(firstLeadingBit(u_input.b.yx) & ~u_input.b.zy)), u_input.e.zx);
    var var_1 = func_1(Struct_2(21951i));
    var var_2 = vec3<i32>(countOneBits(_wgslsmith_clamp_i32(13380i, u_input.a.x, u_input.a.x)), ~(-_wgslsmith_sub_i32(u_input.d, ~global2.a)), -23133i);
    var var_3 = Struct_1(~(~abs(global0.c)) >= _wgslsmith_div_u32(_wgslsmith_mod_u32(5703u, u_input.b.x), u_input.b.x << (1u % 32u)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(global0.b - _wgslsmith_f_op_vec4_f32(floor(global0.b))))), 3405u);
    global0 = func_2(0u, Struct_3(true, abs(_wgslsmith_div_i32(firstTrailingBit(var_2.x), global2.a)), _wgslsmith_clamp_vec3_u32(u_input.e.yzw, vec3<u32>(var_0.x, u_input.b.x ^ u_input.e.x, 23155u), u_input.e.www)));
    var var_4 = vec3<i32>(21270i | -u_input.a.x, var_2.x, -abs(-2147483647i)) ^ u_input.a.wwz;
    var_0 = u_input.e.ww;
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(25148u, 20u)]);
}

