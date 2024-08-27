struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 19>;

var<private> global1: array<u32, 24>;

var<private> global2: Struct_1 = Struct_1(true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: i32) -> vec3<bool> {
    global0 = array<vec2<u32>, 19>();
    var var_0 = Struct_1(true);
    var var_1 = -(~_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 22415i), _wgslsmith_add_vec2_i32(vec2<i32>(arg_0.x, arg_2), arg_0)), select(vec2<i32>(-2147483647i, arg_2), vec2<i32>(-1i, arg_0.x) & vec2<i32>(0i, -2147483647i), vec2<bool>(true, false))));
    var_1 = _wgslsmith_mult_i32(firstTrailingBit(i32(-1i) * -790i), _wgslsmith_dot_vec3_i32(countOneBits(-vec3<i32>(13078i, arg_1, -20821i)), u_input.a.zwy));
    var var_2 = vec2<u32>((0u >> (global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~global1[_wgslsmith_index_u32(u_input.c, 24u)], _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 24u)], 24u)], 4294967295u, 32803u), u_input.d)), 24u)] % 32u)) ^ u_input.c, ~_wgslsmith_add_u32(~_wgslsmith_mod_u32(u_input.d.x, 0u), select(~4294967295u, abs(38110u), false)));
    return vec3<bool>(var_0.a | true, true, u_input.a.x >= ~firstTrailingBit(1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(false, false & !all(vec4<bool>(global2.a, true, global2.a, false)), true);
    global1 = array<u32, 24>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-756f, 425f, 829f) + vec3<f32>(-223f, 1368f, 1169f)), vec3<f32>(-818f, 1276f, 932f), vec3<bool>(global2.a, true, global2.a)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(393f, 1314f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-978f + 1492f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-639f + -1334f))))));
    let var_2 = global0[_wgslsmith_index_u32(~max(u_input.d.x, (~global1[_wgslsmith_index_u32(4294967295u, 24u)] >> (_wgslsmith_mult_u32(u_input.c, 0u) % 32u)) >> (_wgslsmith_mod_u32(45861u, ~62841u) % 32u)), 19u)];
    let var_3 = u_input.b.x;
    var var_4 = 0i;
    var var_5 = !select(!select(select(var_0.xx, var_0.zz, vec2<bool>(true, global2.a)), var_0.zz, vec2<bool>(false, false)), select(select(select(var_0.xx, var_0.yx, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false)), var_0.zx, true), var_1.x >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
    var var_6 = select(vec3<bool>(true, !(_wgslsmith_clamp_i32(u_input.a.x, var_3, -14396i) > _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, var_3), u_input.a.xz)), var_5.x), func_1(abs(-_wgslsmith_div_vec2_i32(vec2<i32>(0i, var_3), u_input.a.ww)), u_input.b.x, -var_3), u_input.b.x >= 24440i);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.x, var_1.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - var_1.x) + _wgslsmith_div_f32(566f, 420f)), 552f)), -513f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2347f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, 492f))))));
}

