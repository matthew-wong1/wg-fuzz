struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: array<Struct_1, 6>;

var<private> global1: vec2<u32>;

var<private> global2: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2() -> i32 {
    return global2.e;
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = Struct_2(arg_0.a, global0[_wgslsmith_index_u32(~55129u, 6u)], -1i, global2.d.x | (_wgslsmith_f_op_f32(156f + global2.a) < -1234f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.a, -1225f, global2.d.x))));
    global2 = Struct_1(_wgslsmith_f_op_f32(step(-136f, _wgslsmith_f_op_f32(arg_0.a - var_0.b.a))), _wgslsmith_div_vec3_u32(max(_wgslsmith_sub_vec3_u32(vec3<u32>(global2.b.x, global2.b.x, 4294967295u), var_0.b.b) >> (~vec3<u32>(4294967295u, arg_0.b.x, global1.x) % vec3<u32>(32u)), arg_0.b ^ vec3<u32>(global2.b.x, global2.b.x, 2712u)), vec3<u32>(_wgslsmith_dot_vec2_u32(var_0.b.b.xz, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 1u), arg_0.b.xy)), var_0.b.b.x, ~min(4294967295u, 27395u))), -1i, !select(select(select(var_0.b.d, vec4<bool>(false, arg_0.d.x, var_0.b.d.x, arg_0.d.x), var_0.b.d.x), select(var_0.b.d, arg_0.d, vec4<bool>(false, true, true, var_0.d)), any(global2.d.yy)), vec4<bool>(arg_0.d.x, var_0.b.d.x, true, any(global2.d.xy)), arg_0.d.x), _wgslsmith_mod_i32(min(1i, global2.e << (~3960u % 32u)), firstTrailingBit(-var_0.c)));
    let var_1 = _wgslsmith_dot_vec3_i32(select(_wgslsmith_sub_vec3_i32(select(vec3<i32>(var_0.b.e, 0i, -2147483647i) << (arg_0.b % vec3<u32>(32u)), vec3<i32>(var_0.c, 30382i, -14281i) & vec3<i32>(-30835i, var_0.c, global2.c), true), firstTrailingBit(vec3<i32>(0i, global2.c, 2147483647i)) & (vec3<i32>(0i, -28510i, var_0.c) << (global2.b % vec3<u32>(32u)))), countOneBits(abs(reverseBits(vec3<i32>(arg_0.c, arg_0.e, 3547i)))), true), -_wgslsmith_sub_vec3_i32(vec3<i32>(43073i, var_0.c & 11968i, var_0.c ^ -2147483647i), vec3<i32>(-32650i, -1i << (u_input.a.x % 32u), -var_0.c)));
    let var_2 = var_0.b;
    global2 = Struct_1(475f, global2.b, 2147483647i, select(var_2.d, var_0.b.d, var_2.d), 48245i);
    return abs(vec3<u32>(abs(~firstLeadingBit(1u)), _wgslsmith_div_u32(~abs(41458u), ~10647u), var_0.b.b.x));
}

fn func_1() -> vec2<u32> {
    var var_0 = _wgslsmith_sub_i32(25766i, firstLeadingBit(global2.e));
    let var_1 = ~func_2();
    let var_2 = global0[_wgslsmith_index_u32(global2.b.x ^ _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(global2.b << (vec3<u32>(global2.b.x, 1u, u_input.a.x) % vec3<u32>(32u)), func_3(Struct_1(global2.a, global2.b, var_1, vec4<bool>(true, true, global2.d.x, global2.d.x), -30254i))), 26593u), _wgslsmith_mod_u32(~(~u_input.a.x), 4294967295u)), 6u)];
    let var_3 = global2.d.x;
    var_0 = -(_wgslsmith_mod_i32(~72506i, firstLeadingBit(_wgslsmith_mod_i32(var_2.c, var_1))) >> (max(_wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_div_u32(global2.b.x, global1.x), ~4294967295u), 4294967295u) % 32u));
    return vec2<u32>(0u, ~(~var_2.b.x | var_2.b.x)) >> (vec2<u32>(~(~select(global1.x, global2.b.x, var_2.d.x)), abs(_wgslsmith_dot_vec2_u32(u_input.a, min(var_2.b.yx, var_2.b.zz)))) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0[_wgslsmith_index_u32(max(4294967295u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(global1.x, 0u), 2612u), 0u)), 6u)];
    global0 = array<Struct_1, 6>();
    global1 = _wgslsmith_div_vec2_u32(abs(func_1()), u_input.a);
    var var_0 = countOneBits(1i);
    let var_1 = max(global2.b, ~vec3<u32>(global1.x, global1.x | ~0u, global2.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-333f, 1186f, global2.d.x)), _wgslsmith_f_op_f32(exp2(global2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.a))))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -905f)), _wgslsmith_f_op_f32(-1131f + _wgslsmith_f_op_f32(global2.a + global2.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1665f) * _wgslsmith_f_op_f32(f32(-1f) * -806f)))));
}

