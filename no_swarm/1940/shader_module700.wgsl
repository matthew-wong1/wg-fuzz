struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(37470u, vec3<u32>(28688u, 1u, 0u));

var<private> global1: array<Struct_1, 3>;

var<private> global2: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<f32> {
    var var_0 = global1[_wgslsmith_index_u32(global2.a >> (_wgslsmith_mult_u32(~((global0.b.x >> (9852u % 32u)) | _wgslsmith_clamp_u32(101715u, global0.a, global0.b.x)), abs((4294967295u >> (global0.b.x % 32u)) ^ ~global0.a)) % 32u), 3u)];
    global1 = array<Struct_1, 3>();
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~13890u, 43043u), 3u)];
    var_0 = Struct_1(~_wgslsmith_clamp_u32(max(global2.b.x, abs(var_0.b.x)), _wgslsmith_div_u32(global2.b.x, ~var_0.b.x), ~global0.b.x), global2.b);
    global2 = global1[_wgslsmith_index_u32(~(_wgslsmith_div_u32(var_0.b.x >> (global2.b.x % 32u), ~1u) | var_0.a) ^ global0.a, 3u)];
    return _wgslsmith_f_op_vec4_f32(step(vec4<f32>(561f, _wgslsmith_f_op_f32(floor(-1033f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-516f, 1f)), _wgslsmith_f_op_f32(step(158f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-144f + 507f), _wgslsmith_f_op_f32(1387f * -1113f)))))), vec4<f32>(-1402f, -788f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1673f, 571f, true)) * _wgslsmith_f_op_f32(-917f * -132f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-929f - 369f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-994f - _wgslsmith_f_op_f32(min(584f, 983f))))))));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_2(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, any(vec2<bool>(true, true))), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(true, any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), true)))));
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3()));
    return Struct_1(select(~countOneBits(1u), global2.b.x, true) | (firstLeadingBit(firstTrailingBit(19118u)) >> (_wgslsmith_mod_u32(95390u, max(45879u, 4294967295u)) % 32u)), vec3<u32>(arg_2.b.x, ~(~firstTrailingBit(var_1.a)), abs(global2.b.x)));
}

fn func_1(arg_0: u32, arg_1: u32) -> f32 {
    global2 = func_2(Struct_1(_wgslsmith_dot_vec4_u32(~(vec4<u32>(1u, global2.b.x, arg_1, global0.a) << (vec4<u32>(global0.a, arg_0, 18754u, 3704u) % vec4<u32>(32u))), abs(countOneBits(vec4<u32>(arg_1, 0u, arg_0, 4294967295u)))), ~(~global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1343f + -646f) * 1049f))), Struct_1(~(~1u), vec3<u32>(arg_1, ~21206u, (global0.b.x | global0.a) >> (_wgslsmith_mult_u32(arg_0, 1u) % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-502f, -1000f, 234f, -1012f)))))));
    let var_0 = -min(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_div_i32(u_input.a, u_input.a), u_input.a), _wgslsmith_mod_vec2_i32(max(vec2<i32>(48340i, u_input.a), vec2<i32>(-34780i, 26485i)), -vec2<i32>(u_input.a, u_input.a))), vec2<i32>(-10352i, ~0i));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1675f, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(select(-559f, -542f, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1125f)), _wgslsmith_f_op_f32(func_1(global2.b.x, global2.b.x))))) - -1861f);
    var var_1 = global2.b.x;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-567f + 565f)) - 355f) + _wgslsmith_f_op_f32(f32(-1f) * -2471f));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, -537f, -1262f)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2, var_2, 224f)))))) - vec3<f32>(var_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1643f, var_2), -1472f, all(vec3<bool>(true, false, false)))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2, var_2) - -215f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3()).x)));
    let var_4 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.a, _wgslsmith_dot_vec2_u32(global0.b.yz, _wgslsmith_clamp_vec2_u32(max(vec2<u32>(global2.a, global2.b.x), vec2<u32>(28225u, global0.a)) << ((vec2<u32>(global0.a, 32523u) | global0.b.xy) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(global2.b.zx, global0.b.xz) << (vec2<u32>(global2.b.x, 0u) % vec2<u32>(32u)), ~vec2<u32>(1u, 1u)))), 3u)];
    var var_5 = ~var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(u_input.a, reverseBits(2199i)) ^ u_input.a);
}

