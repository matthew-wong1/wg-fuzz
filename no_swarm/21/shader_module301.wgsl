struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

var<private> global0: array<f32, 31>;

var<private> global1: array<f32, 24> = array<f32, 24>(111f, -280f, -1000f, 1009f, -1000f, -434f, 1000f, 251f, 546f, 651f, 1052f, -357f, 3614f, -1139f, -1923f, 939f, -792f, -1706f, 1265f, -735f, 482f, 606f, -808f, 460f);

var<private> global2: Struct_3 = Struct_3(vec4<i32>(15554i, 0i, 64011i, 2147483647i), vec3<f32>(-1806f, 1838f, 2108f), -151f, Struct_1(vec2<i32>(-1i, 627i), vec4<i32>(-6633i, -14312i, -2925i, 1i)), Struct_1(vec2<i32>(-1i, 1i), vec4<i32>(-9643i, 0i, -26937i, -7441i)));

var<private> global3: array<vec2<i32>, 11>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec4<bool>) -> vec4<bool> {
    var var_0 = -abs(min(vec2<i32>(arg_0.b.x, arg_0.a.x) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), arg_0.a >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))));
    global0 = array<f32, 31>();
    var var_1 = -global2.a.zzx;
    var var_2 = global2.b.x;
    var_1 = min(vec3<i32>(-1i, reverseBits(1i), firstLeadingBit(~global2.a.x) >> (1u % 32u)), vec3<i32>(~(-42497i), u_input.b, firstTrailingBit(var_1.x)));
    return arg_2;
}

fn func_4(arg_0: vec4<bool>) -> vec4<bool> {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.b.x)) * _wgslsmith_div_f32(_wgslsmith_div_f32(294f, -565f), global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~29505u, 1u), 31u)]));
    global3 = array<vec2<i32>, 11>();
    var_1 = _wgslsmith_f_op_f32(min(-1625f, _wgslsmith_f_op_f32(-1797f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.b.x))))));
    var var_2 = Struct_2(global2.b.xx);
    return !arg_0;
}

fn func_2() -> vec2<i32> {
    global0 = array<f32, 31>();
    let var_0 = vec2<bool>(~_wgslsmith_add_u32(~6973u, 1u) > _wgslsmith_dot_vec4_u32(firstLeadingBit(countOneBits(vec4<u32>(1u, 0u, 20944u, 4294967295u))), ~abs(vec4<u32>(0u, 15716u, 29513u, 4294967295u))), !any(func_4(func_3(global2.d, vec3<bool>(false, false, false), vec4<bool>(false, true, true, false)))));
    global1 = array<f32, 24>();
    var var_1 = abs(abs(~reverseBits(vec4<u32>(1u, 1u, 1u, 1u))));
    var var_2 = Struct_3(~global2.e.b, global2.b, -637f, Struct_1(_wgslsmith_mult_vec2_i32(global2.a.yz, global2.e.a), vec4<i32>(global2.e.a.x, -55016i, 0i, abs(_wgslsmith_dot_vec2_i32(global2.e.a, global3[_wgslsmith_index_u32(var_1.x, 11u)])))), global2.e);
    return var_2.e.b.yz;
}

fn func_1(arg_0: vec2<i32>) -> vec2<f32> {
    var var_0 = vec2<bool>(false, !any(vec2<bool>(all(vec2<bool>(false, false)), true)));
    var var_1 = Struct_1(func_2(), vec4<i32>(func_2().x, -global2.d.b.x, func_2().x, ~2147483647i));
    let var_2 = global2.e;
    var var_3 = ~(arg_0 >> (((firstLeadingBit(vec2<u32>(60983u, 1860u)) & _wgslsmith_clamp_vec2_u32(vec2<u32>(20455u, 17912u), vec2<u32>(1u, 5346u), vec2<u32>(1u, 41631u))) & vec2<u32>(0u, ~1u)) % vec2<u32>(32u)));
    let var_4 = reverseBits(12493i);
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global2.b.xy + global2.b.zz), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global2.b.xy))), select(true, all(select(!vec4<bool>(true, var_0.x, false, var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(true, true, false, true))), any(vec3<bool>(var_0.x, true, var_0.x)))));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2) -> StorageBuffer {
    global3 = array<vec2<i32>, 11>();
    let var_0 = vec4<u32>(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(abs(0u), ~1u, abs(4294967295u), abs(0u)), _wgslsmith_div_vec4_u32(vec4<u32>(19138u, 1u, 37025u, 11211u), select(vec4<u32>(1u, 67468u, 4294967295u, 0u), vec4<u32>(27785u, 2000u, 4294967295u, 0u), vec4<bool>(true, true, true, true)))), 62919u, reverseBits(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(11379u, 0u)))));
    let var_1 = true != any(vec4<bool>(true, true, true, true));
    let var_2 = global2.e;
    global2 = Struct_3(countOneBits(abs(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(-2147483647i, -1i)), min(u_input.b, u_input.b), ~var_2.a.x, reverseBits(2147483647i)))), vec3<f32>(-547f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(29436u, 31u)] + global2.c) + _wgslsmith_f_op_f32(-144f - -462f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(var_0.x), 31u)] + global1[_wgslsmith_index_u32(46821u, 24u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.b.x * global0[_wgslsmith_index_u32(var_0.x, 31u)])))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(546f, _wgslsmith_f_op_f32(f32(-1f) * -864f))))), Struct_1(var_2.a, vec4<i32>(var_2.a.x, global2.d.a.x, global2.e.b.x >> (~0u % 32u), firstTrailingBit(func_2().x))), Struct_1(global2.e.b.xz, var_2.b));
    return StorageBuffer(_wgslsmith_dot_vec3_i32(abs(-_wgslsmith_mod_vec3_i32(var_2.b.zyw, global2.e.b.yxy)), ~max(global2.e.b.yyy, var_2.b.wyw)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 24>();
    var var_0 = global2.e;
    let var_1 = -1i;
    let var_2 = !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true);
    var var_3 = ~(~1u);
    let x = u_input.a;
    s_output = func_5(global2.b.xy, Struct_2(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_add_vec2_i32(global2.d.b.zz, var_0.a)))));
}

