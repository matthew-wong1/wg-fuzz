struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13>;

var<private> global1: vec2<f32>;

var<private> global2: vec2<f32> = vec2<f32>(-292f, 1137f);

var<private> global3: array<Struct_3, 27>;

var<private> global4: array<u32, 20> = array<u32, 20>(38185u, 1u, 0u, 1u, 0u, 19698u, 8512u, 68316u, 4294967295u, 4294967295u, 58012u, 4294967295u, 26358u, 33093u, 48136u, 0u, 2109u, 1u, 1u, 7694u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: vec3<u32>) -> i32 {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(-202f, global1.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-264f, _wgslsmith_f_op_f32(global1.x * 128f)))))));
    global0 = array<i32, 13>();
    var var_1 = Struct_2(vec4<u32>(u_input.a << (1u % 32u), ~arg_2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 20u)], 20u)] ^ 1u, abs(11478u)), firstLeadingBit(min(arg_0.zy, arg_0.zx))), 0u));
    let var_2 = 16082i;
    let var_3 = Struct_4(Struct_1(select(vec3<bool>(true, select(true, true, true), all(vec3<bool>(false, true, true))), vec3<bool>(true, true, true), true)), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_1.a.x << (global4[_wgslsmith_index_u32(58913u, 20u)] % 32u), 7085u), abs(arg_0.xw)), _wgslsmith_mod_vec2_u32(var_1.a.yx, abs(firstLeadingBit(vec2<u32>(global4[_wgslsmith_index_u32(var_1.a.x, 20u)], arg_0.x))))));
    return firstTrailingBit(_wgslsmith_add_i32(-1i, ~_wgslsmith_dot_vec3_i32(max(vec3<i32>(var_2, -60490i, 2147483647i), vec3<i32>(global0[_wgslsmith_index_u32(arg_2.x, 13u)], var_2, -22942i)), vec3<i32>(global0[_wgslsmith_index_u32(19610u, 13u)], -1i, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(7238u, 20u)], 13u)]) >> (var_1.a.wwx % vec3<u32>(32u)))));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec3<f32>) -> f32 {
    var var_0 = ~(vec4<i32>(-32223i, 1i, func_3(arg_0.a, arg_2.x, ~arg_0.a.xwz), global0[_wgslsmith_index_u32(u_input.a, 13u)]) & -_wgslsmith_mod_vec4_i32(vec4<i32>(28949i, 47112i, 2147483647i, -2147483647i), vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(36803u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], 58731i) & vec4<i32>(0i, global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 20u)], 20u)], 13u)], global0[_wgslsmith_index_u32(u_input.a, 13u)], global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 20u)], 13u)])));
    return _wgslsmith_f_op_f32(ceil(global2.x));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: bool, arg_3: bool) -> Struct_3 {
    let var_0 = -54580i;
    let var_1 = max(1u, _wgslsmith_mod_u32(_wgslsmith_add_u32(0u, firstTrailingBit(global4[_wgslsmith_index_u32(75213u, 20u)])) | ~(~4294967295u), u_input.a));
    var var_2 = arg_3;
    return global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(11844u, global4[_wgslsmith_index_u32(var_1, 20u)], u_input.a, ~(~1u)), firstTrailingBit(vec4<u32>(_wgslsmith_sub_u32(min(0u, 1u), ~global4[_wgslsmith_index_u32(0u, 20u)]), ~arg_1, select(~arg_1, _wgslsmith_sub_u32(arg_1, arg_1), arg_2), u_input.a))), 27u)];
}

fn func_1() -> Struct_4 {
    global4 = array<u32, 20>();
    let var_0 = func_4(_wgslsmith_mult_i32(49030i, -(i32(-1i) * -43439i)), ~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 20u)], 20u)], ~u_input.a <= ~max(_wgslsmith_mult_u32(0u, 11224u), ~global4[_wgslsmith_index_u32(47843u, 20u)]), _wgslsmith_f_op_f32(func_2(Struct_2(vec4<u32>(1u, global4[_wgslsmith_index_u32(61515u, 20u)], u_input.a, 1349u)), vec3<bool>(true, true, all(vec4<bool>(true, true, false, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -261f, global2.x) * vec3<f32>(-283f, 689f, global1.x)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-512f, -532f, -1000f)))))) <= -733f);
    let var_1 = Struct_1(vec3<bool>(true, true, true));
    var var_2 = var_0.b.a >> (select(~var_0.b.a, var_0.b.a, any(select(vec4<bool>(true, false, false, false), !vec4<bool>(var_0.a, var_1.a.x, var_0.a, false), 3308u >= u_input.a))) % vec4<u32>(32u));
    var_2 = var_0.b.a;
    return Struct_4(var_1, _wgslsmith_add_vec2_u32(~var_0.b.a.wz, ~(~vec2<u32>(var_2.x, 160589u))) & abs(_wgslsmith_div_vec2_u32(var_0.b.a.xw & vec2<u32>(0u, var_2.x), _wgslsmith_sub_vec2_u32(var_0.b.a.zz, var_0.b.a.yx))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = ~4119i;
    global4 = array<u32, 20>();
    global4 = array<u32, 20>();
    var var_2 = all(vec3<bool>(any(vec2<bool>(!var_0.a.a.x, true)), var_0.a.a.x, var_0.a.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(reverseBits(abs(u_input.a)), 13u)], _wgslsmith_f_op_f32(func_2(Struct_2(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(69049u, 1u, global4[_wgslsmith_index_u32(46937u, 20u)], u_input.a)), vec4<u32>(global4[_wgslsmith_index_u32(3489u, 20u)], u_input.a, 4294967295u, 4294967295u))), vec3<bool>((global0[_wgslsmith_index_u32(u_input.a, 13u)] > global0[_wgslsmith_index_u32(0u, 13u)]) & true, var_0.a.a.x, false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)))))), global2.x, global1.x);
}

