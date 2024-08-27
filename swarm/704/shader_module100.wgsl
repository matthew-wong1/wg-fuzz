struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 5>;

var<private> global2: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global3: Struct_3 = Struct_3(vec2<u32>(1u, 80494u), vec3<u32>(4294967295u, 9402u, 1u), Struct_2(24063i), 382f);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> vec3<bool> {
    var var_0 = vec4<bool>(!global2.x, any(select(vec4<bool>(select(global2.x, global2.x, true), arg_1.c.a > -25759i, any(vec3<bool>(true, global2.x, global2.x)), !global2.x), select(vec4<bool>(true, false, global2.x, global2.x), vec4<bool>(false, global2.x, true, false), 0u <= arg_1.a.x), all(global2.xy))), true, select(_wgslsmith_mod_i32(-29915i, arg_1.c.a | -18874i) != arg_0.c.a, global2.x, true));
    var var_1 = _wgslsmith_add_vec4_u32(~vec4<u32>(~firstTrailingBit(4294967295u), u_input.a.x, _wgslsmith_dot_vec2_u32(arg_0.a, arg_1.a) ^ ~global3.b.x, _wgslsmith_clamp_u32(4294967295u, u_input.a.x, arg_0.b.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(~select(arg_0.a.x, arg_0.b.x, true), ~29786u, ~u_input.a.x, arg_0.a.x), countOneBits(vec4<u32>(countOneBits(92235u), arg_0.b.x, global3.a.x << (11449u % 32u), 49109u))));
    global3 = Struct_3(~vec2<u32>(firstLeadingBit(firstTrailingBit(arg_0.a.x)), ~firstTrailingBit(global3.b.x)), (vec3<u32>(arg_1.a.x, arg_0.a.x, 11293u) | _wgslsmith_add_vec3_u32(arg_0.b, countOneBits(arg_0.b))) ^ ~(vec3<u32>(60978u, global3.b.x, arg_1.a.x) << (~vec3<u32>(arg_0.b.x, 4294967295u, arg_1.b.x) % vec3<u32>(32u))), Struct_2(-1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-166f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) * -1183f))));
    return select(var_0.zwz, global2.xxz, var_0.x || false);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_1) -> vec3<bool> {
    global0 = !all(vec2<bool>(!arg_2.c, false));
    return func_3(Struct_3(vec2<u32>(abs(56871u), 1u), u_input.a.xyw, Struct_2(1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.d) + 841f))), Struct_3(_wgslsmith_sub_vec2_u32(~(~global3.a), u_input.a.ww), _wgslsmith_clamp_vec3_u32(u_input.a.zxw, _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, 45913u), vec3<u32>(u_input.a.x, 0u, 4294967295u)) | ~vec3<u32>(global3.a.x, 12713u, global3.a.x), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 46114u) & vec3<u32>(24212u, 33109u, u_input.a.x), vec3<u32>(0u, global3.b.x, global3.b.x))), Struct_2(_wgslsmith_mod_i32(18241i, arg_2.b.x) >> ((1u >> (u_input.a.x % 32u)) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(268f)) * -2136f)));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec3<i32>) -> vec3<u32> {
    global0 = arg_0;
    var var_0 = ~arg_2.yz;
    global2 = vec4<bool>(select(true, all(!global2.wx), false), arg_0, any(global2.yz), any(select(select(vec3<bool>(false, true, true), vec3<bool>(true, arg_0, arg_0), global2.zxx), func_2(vec3<f32>(arg_1, 140f, 474f), Struct_2(1i), Struct_1(1216f, vec4<i32>(arg_2.x, global3.c.a, -2805i, -2147483647i), false)), vec3<bool>(arg_0, arg_0, global2.x))) || global2.x);
    let var_1 = arg_2;
    var var_2 = global2.xyy;
    return vec3<u32>(1u, 0u ^ u_input.a.x, 136082u);
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: i32, arg_3: Struct_3) -> bool {
    let var_0 = Struct_2(_wgslsmith_dot_vec4_i32((-vec4<i32>(arg_2, arg_2, 1i, arg_3.c.a) | reverseBits(vec4<i32>(arg_0.x, -2147483647i, -1i, global3.c.a))) | _wgslsmith_mod_vec4_i32(vec4<i32>(-18462i, arg_3.c.a, -2147483647i, global3.c.a), vec4<i32>(22902i, arg_2, global3.c.a, -35934i)), vec4<i32>(_wgslsmith_mod_i32(global3.c.a, _wgslsmith_sub_i32(global3.c.a, arg_0.x)), global3.c.a, -(global3.c.a | 1i), _wgslsmith_add_i32(_wgslsmith_mod_i32(arg_3.c.a, -14118i), -8999i & arg_0.x))));
    let var_1 = _wgslsmith_f_op_f32(-global3.d);
    global0 = !(!global2.x);
    global2 = !vec4<bool>(all(select(vec4<bool>(true, true, false, global2.x), !vec4<bool>(global2.x, false, global2.x, global2.x), func_2(vec3<f32>(var_1, arg_3.d, 1000f), Struct_2(2147483647i), Struct_1(-175f, vec4<i32>(44603i, var_0.a, 1i, -2147483647i), global2.x)).x)), global2.x, false, select(false, false, (true || global2.x) & false));
    let var_2 = global1[_wgslsmith_index_u32(arg_3.b.x, 5u)];
    return global2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(firstLeadingBit(firstTrailingBit(vec2<i32>(~global3.c.a, abs(global3.c.a)))), (_wgslsmith_dot_vec3_u32(u_input.a.wzy ^ u_input.a.xww, func_1(false, 1000f, vec3<i32>(-2147483647i, global3.c.a, global3.c.a))) ^ ~global3.a.x) << (abs(22337u) % 32u), 0i, Struct_3(vec2<u32>(u_input.a.x, countOneBits(~4294967295u)), func_1(true, -1715f, vec3<i32>(_wgslsmith_add_i32(global3.c.a, global3.c.a), -74767i, 35624i)), global3.c, 838f));
    let var_0 = select(0u, abs(0u), all(select(global2.wwy, vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(global2.x, false, global2.x)))) >= global3.b.x;
    let var_1 = select(!select(!(!vec4<bool>(var_0, var_0, var_0, false)), vec4<bool>(!var_0, global2.x, true, !global2.x), any(global2.xzz)), !(!select(vec4<bool>(var_0, global2.x, global2.x, false), vec4<bool>(var_0, var_0, true, global2.x), select(vec4<bool>(var_0, global2.x, global2.x, global2.x), vec4<bool>(true, var_0, true, true), vec4<bool>(global2.x, global2.x, global2.x, var_0)))), vec4<bool>(!all(vec4<bool>(var_0, global2.x, true, false)), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global3.d, global3.d, -1451f)))), Struct_2(select(-5905i, -1i, false)), global1[_wgslsmith_index_u32(1u, 5u)]).x, var_0, global2.x));
    var var_2 = vec2<i32>(global3.c.a, global3.c.a);
    let var_3 = global1[_wgslsmith_index_u32(50824u, 5u)];
    let var_4 = ~1u;
    var_2 = vec2<i32>(1i, firstLeadingBit(global3.c.a));
    let var_5 = reverseBits(~reverseBits(~u_input.a.zy));
    var var_6 = global3.c;
    let x = u_input.a;
    s_output = StorageBuffer(-875f, ~var_5.x, var_6.a);
}

