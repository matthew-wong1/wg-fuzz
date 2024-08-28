struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(52156u, vec3<f32>(444f, -1458f, -176f));

var<private> global1: u32;

var<private> global2: array<f32, 7>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = u_input.e.xy;
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_1.b.zx * vec2<f32>(arg_1.b.x, _wgslsmith_f_op_f32(-1025f + 1089f))), _wgslsmith_f_op_vec2_f32(arg_1.b.yy - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-814f, 1156f)))))) * _wgslsmith_f_op_vec2_f32(-global0.b.xz));
    global1 = ~(~max(~_wgslsmith_sub_u32(0u, arg_1.a), ~firstLeadingBit(1u)));
    var var_2 = !vec2<bool>(!select(false, true, u_input.b == global0.a), false);
    var_2 = !vec2<bool>(!(global0.a >= _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(0u, global0.a, global0.a))), var_2.x);
    return vec3<bool>(true, all(vec4<bool>(var_2.x, var_2.x, !var_2.x, true)), true);
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: bool) -> Struct_1 {
    var var_0 = !vec4<bool>(arg_2, true, true, all(func_3(-450i, Struct_1(global0.a, global0.b))));
    let var_1 = Struct_1(~(~(_wgslsmith_add_u32(global0.a, global0.a) ^ ~63272u)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2[_wgslsmith_index_u32(global0.a >> (abs(52174u) % 32u), 7u)], global0.b.x, arg_0))));
    var var_2 = var_1;
    var_2 = var_1;
    let var_3 = _wgslsmith_sub_i32(u_input.e.x, u_input.e.x) << (_wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(8958u, 4294967295u, var_2.a), vec3<u32>(4294967295u, 39163u, global0.a)), abs(~_wgslsmith_dot_vec2_u32(u_input.d.yz, vec2<u32>(4294967295u, 1u)))) % 32u);
    return var_1;
}

fn func_1() -> vec4<bool> {
    global0 = func_2(-1000f, 119100u, (291f <= global2[_wgslsmith_index_u32(4294967295u, 7u)]) | true);
    var var_0 = true;
    global0 = Struct_1(abs(1u) ^ global0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 7u)]), global0.b.x))));
    var_0 = !all(select(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), false));
    global1 = u_input.d.x | (0u | global0.a);
    return vec4<bool>(false, 3644i <= ~u_input.a, true, any(select(func_3(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, 1i), u_input.e.xy), func_2(148f, 4294967295u, false)), vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(true, true, false, false)), any(vec3<bool>(true, true, false)), any(vec4<bool>(false, true, true, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0.a;
    global1 = global0.a;
    let var_0 = Struct_1(select(u_input.c, firstLeadingBit(u_input.c << (0u % 32u)) ^ abs(u_input.c), !(all(vec4<bool>(true, false, true, true)) || any(vec4<bool>(false, true, true, false)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1024f), _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(global0.a, 7u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x * 1700f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(global0.a, 7u)], true)))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(375f, global2[_wgslsmith_index_u32(u_input.c, 7u)], global0.b.x)))))));
    var var_1 = vec4<bool>(false, false, any(func_1()), !(!(!select(true, false, false))));
    var var_2 = ~(countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 2147483647i, -63276i, u_input.a), abs(vec4<i32>(u_input.a, -16292i, -10103i, 53385i)))) ^ vec4<i32>(2147483647i, _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.a, u_input.e.x), u_input.e.x), -2147483647i, _wgslsmith_mult_i32(-u_input.a, select(u_input.a, u_input.a, var_1.x))));
    let var_3 = true;
    var_2 = vec4<i32>(i32(-1i) * -2147483647i, 0i, var_2.x | _wgslsmith_div_i32(_wgslsmith_add_i32(var_2.x, u_input.a), _wgslsmith_mult_i32(-2147483647i, -var_2.x)), ~1i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, abs(firstTrailingBit(_wgslsmith_clamp_u32(u_input.d.x, global0.a, var_0.a)) | ~global0.a));
}

