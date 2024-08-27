struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec2<bool>, 26>;

var<private> global2: f32 = -733f;

var<private> global3: Struct_3 = Struct_3(514f, Struct_2(4294967295u, true));

var<private> global4: array<vec4<u32>, 26>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: bool) -> u32 {
    let var_0 = Struct_4(select(vec4<bool>(true, arg_2, !global3.b.b, true), select(select(vec4<bool>(global3.b.b, global3.b.b, global3.b.b, arg_2), !vec4<bool>(false, global3.b.b, false, false), vec4<bool>(true, true, true, global3.b.b)), vec4<bool>(arg_2, arg_2, true, true), !select(vec4<bool>(arg_2, global3.b.b, global3.b.b, arg_2), vec4<bool>(global3.b.b, false, arg_2, arg_2), vec4<bool>(arg_2, arg_2, true, arg_2))), all(select(vec2<bool>(global3.b.b, global3.b.b), vec2<bool>(false, arg_2), select(global1[_wgslsmith_index_u32(u_input.a, 26u)], vec2<bool>(false, false), arg_2)))));
    var var_1 = any(vec2<bool>(all(vec3<bool>(select(true, arg_2, global3.b.b), 0u > arg_0.x, false)), global3.b.b));
    let var_2 = vec2<bool>(!(!all(select(vec2<bool>(true, true), var_0.a.yx, vec2<bool>(arg_2, true)))), true);
    var var_3 = any(!var_0.a.xx);
    var var_4 = ~(abs(24012u) & ~(~abs(arg_1.b.x)));
    return abs(min(_wgslsmith_add_u32(52719u, 0u), _wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_1.b.x, global3.b.a, 80939u, 1u) << (global4[_wgslsmith_index_u32(1u, 26u)] % vec4<u32>(32u)), ~vec4<u32>(arg_1.b.x, 33756u, arg_0.x, global3.b.a), !global3.b.b), global4[_wgslsmith_index_u32(1u, 26u)])));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> Struct_5 {
    global4 = array<vec4<u32>, 26>();
    var var_0 = func_3(countOneBits(vec3<u32>(global3.b.a, _wgslsmith_clamp_u32(abs(4294967295u), u_input.a, 0u), _wgslsmith_add_u32(select(1u, 28032u, false), 1u))), Struct_1(1i, ~(~(vec3<u32>(arg_1.b.x, 1u, global3.b.a) ^ arg_1.b))), arg_3);
    let var_1 = !vec3<bool>(arg_3, arg_3, arg_3);
    let var_2 = Struct_2(arg_1.b.x, true);
    let var_3 = !var_1.x;
    return Struct_5(global3.b, var_2, arg_1, arg_1);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_5) -> vec3<u32> {
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(min(-286f, _wgslsmith_f_op_f32(-global0.x))), -1288f));
    let var_0 = countOneBits(arg_0.a);
    var var_1 = _wgslsmith_add_u32(firstTrailingBit(reverseBits(1u)), ~_wgslsmith_add_u32(arg_2.d.b.x, 1u));
    global3 = Struct_3(global3.a, global3.b);
    global2 = 254f;
    return arg_0.b;
}

fn func_1() -> vec2<i32> {
    var var_0 = Struct_1(u_input.b, func_4(Struct_1(u_input.b, max(vec3<u32>(6360u, 87704u, global3.b.a), vec3<u32>(19772u, u_input.a, 18461u))), vec3<bool>(77342u != global3.b.a, global3.b.b, true), func_2(_wgslsmith_f_op_f32(global0.x * -1377f), Struct_1(-5129i, vec3<u32>(0u, global3.b.a, 4294967295u)), -4230i, global3.b.b)) | vec3<u32>(4294967295u, 30158u & (u_input.a >> (0u % 32u)), ~global3.b.a));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(max(global0.x, 1059f)), global3.b);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-560f - _wgslsmith_f_op_f32(-1f)));
    var_0 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(abs(~vec3<i32>(u_input.b, var_0.a, u_input.b)), ~abs(vec3<i32>(38818i, var_0.a, var_0.a))), _wgslsmith_clamp_i32(u_input.b, var_0.a, _wgslsmith_div_i32(u_input.b, u_input.b << (4294967295u % 32u)))), ~func_2(_wgslsmith_f_op_f32(step(-1786f, global3.a)), func_2(global3.a, Struct_1(2147483647i, var_0.b), -13321i, true).d, 0i, global3.b.b).d.b);
    global4 = array<vec4<u32>, 26>();
    return _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.b, 39787i), ~(~u_input.b >> (global3.b.a % 32u))), (-_wgslsmith_add_vec2_i32(vec2<i32>(var_0.a, 2147483647i), vec2<i32>(var_0.a, u_input.b)) | ~select(vec2<i32>(var_0.a, var_0.a), vec2<i32>(28742i, u_input.b), vec2<bool>(false, true))) & min(vec2<i32>(var_0.a << (var_1.b.a % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_0.a, u_input.b), vec3<i32>(var_0.a, u_input.b, var_0.a))), vec2<i32>(u_input.b, var_0.a >> (57595u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_add_vec2_i32(vec2<i32>(-28200i, ~(u_input.b >> (u_input.a % 32u))), vec2<i32>(u_input.b, _wgslsmith_sub_i32(28244i, u_input.b)) & func_1());
    let var_1 = !select(!vec4<bool>(global3.b.b, true, global3.b.b, any(global1[_wgslsmith_index_u32(44838u, 26u)])), select(!vec4<bool>(false, global3.b.b, global3.b.b, true), vec4<bool>(!global3.b.b, true, false, global3.b.b && global3.b.b), false != !global3.b.b), select(select(vec4<bool>(global3.b.b, false, false, true), vec4<bool>(false, global3.b.b, false, global3.b.b), any(vec3<bool>(false, global3.b.b, true))), vec4<bool>(true, true, true, true), select(!vec4<bool>(global3.b.b, global3.b.b, false, global3.b.b), !vec4<bool>(global3.b.b, global3.b.b, global3.b.b, global3.b.b), all(global1[_wgslsmith_index_u32(global3.b.a, 26u)]))));
    var_0 = _wgslsmith_mult_vec2_i32(select(-min(~vec2<i32>(u_input.b, u_input.b), reverseBits(vec2<i32>(29402i, var_0.x))), vec2<i32>(var_0.x, _wgslsmith_div_i32(_wgslsmith_div_i32(1i, -48959i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 20919i), vec2<i32>(u_input.b, u_input.b)))), true), countOneBits(_wgslsmith_div_vec2_i32(-countOneBits(vec2<i32>(-2147483647i, -20482i)), ~(~vec2<i32>(var_0.x, var_0.x)))));
    var var_2 = _wgslsmith_f_op_f32(-global0.x);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1026f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - -153f))) - global3.a);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec2_u32(~vec2<u32>(13418u, 5077u), vec2<u32>(u_input.a, u_input.a) | vec2<u32>(u_input.a, u_input.a)) << (_wgslsmith_div_vec2_u32(reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(12811u, 0u), vec2<u32>(46576u, global3.b.a))), ~vec2<u32>(u_input.a, global3.b.a) >> (vec2<u32>(u_input.a, global3.b.a) % vec2<u32>(32u))) % vec2<u32>(32u)), abs(vec3<i32>(1i, ~var_0.x, max(var_0.x, 74383i))));
}

