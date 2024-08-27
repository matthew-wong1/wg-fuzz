struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: u32,
    d: f32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<bool, 11> = array<bool, 11>(true, false, true, false, true, false, false, false, false, true, false);

var<private> global2: Struct_2 = Struct_2(-541f, 0i, 7895u, 1688f, vec4<u32>(21048u, 4294967295u, 68576u, 57833u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_4) -> f32 {
    var var_0 = (global2.b ^ ~_wgslsmith_div_i32(~40593i, firstLeadingBit(global0.x))) << (u_input.a % 32u);
    let var_1 = false;
    let var_2 = !any(select(!select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.a, 11u)], true), vec4<bool>(var_1, false, var_1, false), vec4<bool>(true, false, global1[_wgslsmith_index_u32(global2.c, 11u)], true)), !vec4<bool>(var_1, global1[_wgslsmith_index_u32(82057u, 11u)], var_1, false), ~global0.x >= -2147483647i));
    let var_3 = Struct_5(-1323f);
    var var_4 = firstLeadingBit(countOneBits(select(vec2<i32>(arg_1.b.d.x, ~global0.x), -vec2<i32>(global0.x, -19913i), !(!var_1))));
    return -1150f;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec3<i32>, arg_3: vec3<bool>) -> Struct_4 {
    var var_0 = !vec3<bool>(global1[_wgslsmith_index_u32(~4294967295u, 11u)], any(arg_3), global1[_wgslsmith_index_u32(4294967295u, 11u)]);
    let var_1 = Struct_1(true, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(global2.a, Struct_4(global2.e.zy, Struct_3(0i, -1i, global2.e.xy, vec2<i32>(global2.b, 2147483647i))))), _wgslsmith_div_f32(1782f, _wgslsmith_f_op_f32(-global2.a)), _wgslsmith_f_op_f32(floor(1f))) + vec3<f32>(global2.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.a)) + _wgslsmith_div_f32(global2.a, global2.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -539f) * 455f))), ~(~_wgslsmith_dot_vec4_u32(global2.e ^ global2.e, vec4<u32>(u_input.a, global2.c, 0u, global2.c) ^ global2.e)), global2.d, vec4<i32>(-1i) * -min(_wgslsmith_add_vec4_i32(vec4<i32>(0i, 1i, arg_0, 6418i), vec4<i32>(arg_0, global2.b, -20365i, arg_1)), vec4<i32>(-1388i, arg_1, -45348i, arg_1) & vec4<i32>(-1i, global0.x, global0.x, -30956i)));
    global1 = array<bool, 11>();
    global2 = Struct_2(global2.a, 22310i, ~_wgslsmith_div_u32(_wgslsmith_div_u32(~27235u, ~global2.e.x), _wgslsmith_dot_vec3_u32(~global2.e.yxz, global2.e.yyy)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.d, _wgslsmith_f_op_f32(-317f * global2.d)))), vec4<u32>(_wgslsmith_sub_u32(17843u, firstLeadingBit(firstTrailingBit(global2.c))), 4294967295u & max(abs(global2.c), ~var_1.c), reverseBits(firstLeadingBit(~var_1.c)), global2.c));
    global1 = array<bool, 11>();
    return Struct_4(~min(~global2.e.xw, ~global2.e.wx), Struct_3(-global0.x, _wgslsmith_mod_i32(global0.x, 1i), ~(~global2.e.yw) >> (global2.e.yz % vec2<u32>(32u)), select(select(-var_1.e.wy, countOneBits(vec2<i32>(global0.x, 2147483647i)), !vec2<bool>(false, var_0.x)), vec2<i32>(~arg_2.x, i32(-1i) * -37632i), !(!arg_3.x))));
}

fn func_4(arg_0: Struct_4, arg_1: bool) -> f32 {
    var var_0 = reverseBits(_wgslsmith_mult_vec2_i32(-_wgslsmith_add_vec2_i32(~arg_0.b.d, arg_0.b.d), vec2<i32>(arg_0.b.a, ~firstLeadingBit(global0.x))));
    let var_1 = !(!arg_1);
    let var_2 = all(vec2<bool>(global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0.b.c.x), vec2<u32>(arg_0.b.c.x, global2.c) << (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)))), 11u)], any(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.a, 11u)], global1[_wgslsmith_index_u32(12138u, 11u)])) | all(select(vec2<bool>(false, false), vec2<bool>(false, true), true))));
    global0 = arg_0.b.d;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-global2.a), global2.b, global2.e.x, _wgslsmith_f_op_f32(step(1618f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -599f)) - global2.d))), global2.e);
    return var_3.d;
}

fn func_1() -> Struct_2 {
    var var_0 = -1i == _wgslsmith_add_i32(~(i32(-1i) * -1i), max(global0.x, global0.x));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(func_4(func_2(47188i, countOneBits(global0.x) >> (83798u % 32u), select(_wgslsmith_sub_vec3_i32(vec3<i32>(global2.b, global0.x, 12674i), vec3<i32>(global2.b, 2147483647i, global0.x)), vec3<i32>(40892i, 70673i, 1i) | vec3<i32>(-31450i, global0.x, global0.x), true), !select(vec3<bool>(true, global1[_wgslsmith_index_u32(6863u, 11u)], true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 11u)], true, true), vec3<bool>(true, true, false))), true)), countOneBits(-13867i), u_input.a, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(func_2(2147483647i, global0.x, vec3<i32>(-37559i, 0i, -49334i), vec3<bool>(true, global1[_wgslsmith_index_u32(global2.c, 11u)], global1[_wgslsmith_index_u32(45259u, 11u)])), select(global1[_wgslsmith_index_u32(16606u, 11u)], global1[_wgslsmith_index_u32(global2.e.x, 11u)], global1[_wgslsmith_index_u32(u_input.a, 11u)]))), _wgslsmith_f_op_f32(func_4(Struct_4(vec2<u32>(12730u, 67943u), Struct_3(global0.x, -32404i, vec2<u32>(u_input.a, 51829u), vec2<i32>(global2.b, -1i))), any(vec3<bool>(true, global1[_wgslsmith_index_u32(17417u, 11u)], global1[_wgslsmith_index_u32(u_input.a, 11u)]))))), -348f)), _wgslsmith_mod_vec4_u32(~global2.e, reverseBits(global2.e)));
    var var_2 = true;
    var var_3 = Struct_1(any(vec2<bool>(global1[_wgslsmith_index_u32(var_1.e.x, 11u)], global1[_wgslsmith_index_u32(global2.c, 11u)])) | all(select(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 11u)], global1[_wgslsmith_index_u32(42526u, 11u)], global1[_wgslsmith_index_u32(u_input.a, 11u)]), vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a, 11u)]), !vec3<bool>(global1[_wgslsmith_index_u32(1u, 11u)], false, global1[_wgslsmith_index_u32(var_1.c, 11u)]))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1338f, Struct_4(global2.e.wy, Struct_3(-11912i, 0i, var_1.e.zx, vec2<i32>(-42916i, 1i))))))), -1319f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(921f - var_1.a)))), ~(~(~abs(var_1.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -490f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1000f, global2.a)), var_1.d))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a, global2.d, false))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(func_3(var_1.a, Struct_4(vec2<u32>(var_1.c, 534u), Struct_3(global2.b, 24273i, vec2<u32>(u_input.a, global2.e.x), vec2<i32>(-30179i, global2.b)))))))))), select(-select(vec4<i32>(0i, 45428i, var_1.b, -1i), vec4<i32>(-2147483647i, global0.x, var_1.b, global2.b), vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(32765u, 11u)])) & min(_wgslsmith_add_vec4_i32(vec4<i32>(-88645i, 41707i, global2.b, var_1.b), vec4<i32>(global0.x, -1i, -2147483647i, 13182i)), -vec4<i32>(0i, -15470i, global0.x, global2.b)), vec4<i32>(global0.x, global2.b, 1i, -global2.b), var_1.c <= u_input.a));
    var var_4 = Struct_1(false, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-390f - _wgslsmith_f_op_f32(min(714f, var_1.d))), -1446f, 1000f), var_3.b, select(select(!vec3<bool>(var_3.a, false, var_3.a), select(vec3<bool>(var_3.a, true, true), vec3<bool>(global1[_wgslsmith_index_u32(1u, 11u)], global1[_wgslsmith_index_u32(u_input.a, 11u)], var_3.a), vec3<bool>(false, var_3.a, global1[_wgslsmith_index_u32(1u, 11u)])), vec3<bool>(false, true, var_3.a)), !select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(var_3.c, 11u)]), vec3<bool>(var_3.a, false, var_3.a), true), !select(vec3<bool>(var_3.a, true, var_3.a), vec3<bool>(global1[_wgslsmith_index_u32(82491u, 11u)], global1[_wgslsmith_index_u32(var_3.c, 11u)], var_3.a), global1[_wgslsmith_index_u32(4294967295u, 11u)])))), (u_input.a ^ (~var_1.e.x << (_wgslsmith_clamp_u32(53261u, global2.c, u_input.a) % 32u))) >> (~(0u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 23541u, 0u, 47401u), global2.e) % 32u)) % 32u), _wgslsmith_f_op_f32(1f + var_1.a), select(vec4<i32>(_wgslsmith_clamp_i32(countOneBits(-41091i), reverseBits(1i), -2724i), -1i, -2147483647i, global2.b), -firstTrailingBit(vec4<i32>(4242i, 2147483647i, 12720i, var_1.b)) << (~global2.e % vec4<u32>(32u)), vec4<bool>(all(vec2<bool>(true, var_3.a)), !var_3.a, global1[_wgslsmith_index_u32(7816u, 11u)], var_3.a)));
    return Struct_2(-309f, var_3.e.x, 1u, 2540f, _wgslsmith_add_vec4_u32(~(~vec4<u32>(0u, 4294967295u, var_3.c, u_input.a) ^ var_1.e), ~var_1.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global1[_wgslsmith_index_u32(firstLeadingBit(global2.e.x | ~0u), 11u)];
    global2 = func_1();
    var_0 = false;
    var var_1 = Struct_3(-7288i, ~(~func_1().b), global2.e.xw, firstTrailingBit(vec2<i32>(-1i) * -(~vec2<i32>(global2.b, 2147483647i))));
    var var_2 = ~_wgslsmith_mod_u32(~5931u & var_1.c.x, ~15603u);
    var var_3 = global2.b;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1448f))));
    var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(select(-_wgslsmith_add_i32(global0.x, -33494i ^ global2.b), _wgslsmith_mod_i32(-21737i, global0.x), global1[_wgslsmith_index_u32(firstTrailingBit(global2.e.x), 11u)]), vec3<u32>(_wgslsmith_mod_u32(40052u, _wgslsmith_dot_vec3_u32(~global2.e.xxz, global2.e.yxz)), u_input.a, var_1.c.x), (i32(-1i) * -min(global2.b, global2.b)) | abs(0i), global2.b, i32(-1i) * -1i);
}

