struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: bool,
}

struct Struct_5 {
    a: vec4<u32>,
    b: i32,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 22> = array<vec3<bool>, 22>(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false));

var<private> global1: Struct_2;

var<private> global2: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32) -> vec3<bool> {
    var var_0 = global1.a;
    let var_1 = firstLeadingBit(vec2<i32>(max(~u_input.b.x, _wgslsmith_mult_i32(u_input.b.x, ~1i)), abs(_wgslsmith_dot_vec2_i32(u_input.b.wz, vec2<i32>(-28433i, -35871i) & vec2<i32>(u_input.b.x, 1i)))));
    let var_2 = Struct_4(4294967295u, all(vec4<bool>(global2.x, _wgslsmith_f_op_f32(select(arg_0, 1310f, global1.a)) < arg_0, false, global2.x)));
    let var_3 = ~_wgslsmith_sub_vec3_u32(~vec3<u32>(var_2.a, var_2.a, var_2.a) << (abs(abs(vec3<u32>(61355u, var_2.a, var_2.a))) % vec3<u32>(32u)), select(vec3<u32>(select(u_input.c.x, 1u, false), _wgslsmith_dot_vec4_u32(vec4<u32>(39055u, 1u, u_input.c.x, var_2.a), vec4<u32>(0u, var_2.a, var_2.a, 8125u)), ~1u), ~vec3<u32>(13235u, 4294967295u, 58214u) << (~vec3<u32>(u_input.c.x, var_2.a, var_2.a) % vec3<u32>(32u)), global2.x));
    var var_4 = (select(i32(-1i) * -u_input.b.x, -2147483647i, any(select(vec4<bool>(false, false, var_2.b, global2.x), vec4<bool>(false, global2.x, true, var_2.b), true))) & ~var_1.x) & u_input.b.x;
    return select(vec3<bool>(all(!vec2<bool>(false, global1.a)) || true, true, false), select(global0[_wgslsmith_index_u32(var_2.a, 22u)], global0[_wgslsmith_index_u32(~min(var_3.x << (var_2.a % 32u), ~var_2.a), 22u)], !select(select(global0[_wgslsmith_index_u32(46845u, 22u)], global0[_wgslsmith_index_u32(1u, 22u)], global0[_wgslsmith_index_u32(var_2.a, 22u)]), !global0[_wgslsmith_index_u32(u_input.a, 22u)], var_2.b)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: vec4<bool>) -> Struct_2 {
    global1 = Struct_2(any(select(select(vec3<bool>(arg_2.x, arg_2.x, false), vec3<bool>(true, false, false), vec3<bool>(true, global2.x, global1.a)), select(vec3<bool>(global1.a, false, false), func_3(arg_1), u_input.c.x < 0u), global2.x)));
    global2 = !vec2<bool>(true, select(select(1137u, 4010u, true), _wgslsmith_mod_u32(62362u, u_input.a), arg_2.x) < u_input.a);
    global0 = array<vec3<bool>, 22>();
    let var_0 = 9898u;
    global2 = arg_2.yz;
    return Struct_2(global2.x);
}

fn func_1() -> Struct_5 {
    let var_0 = vec3<f32>(-198f, -624f, _wgslsmith_f_op_f32(select(332f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1370f))), all(vec3<bool>(true, true, global2.x)))));
    let var_1 = u_input.c ^ ~(~vec2<u32>(firstTrailingBit(1u), firstTrailingBit(u_input.a)));
    global0 = array<vec3<bool>, 22>();
    let var_2 = func_2(u_input.b.xwx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.x, var_0.x)))) + var_0.x), vec4<bool>(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_0.x)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(944f - -139f)), global1.a, false, u_input.c.x != (~1u ^ reverseBits(var_1.x))));
    return Struct_5(_wgslsmith_div_vec4_u32(abs(vec4<u32>(var_1.x, var_1.x, u_input.a, var_1.x) ^ ~vec4<u32>(6297u, u_input.a, u_input.c.x, 0u)), _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(0u, var_1.x, 1u, 73830u) & vec4<u32>(u_input.c.x, 84794u, var_1.x, u_input.a)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 9305u, var_1.x, var_1.x), vec4<u32>(1650u, 68216u, u_input.a, var_1.x)))), _wgslsmith_sub_i32(reverseBits(~(-1i)), countOneBits(-1i) ^ (_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, -38632i, u_input.b.x), u_input.b) & -u_input.b.x)), false, _wgslsmith_f_op_vec2_f32(-var_0.xx));
}

fn func_4(arg_0: Struct_5, arg_1: vec2<f32>) -> i32 {
    global0 = array<vec3<bool>, 22>();
    let var_0 = firstLeadingBit(countOneBits(min(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, arg_0.a.x, u_input.c.x, u_input.c.x) ^ vec4<u32>(arg_0.a.x, 59148u, 4294967295u, u_input.c.x), arg_0.a << (vec4<u32>(u_input.a, u_input.a, 4294967295u, 26180u) % vec4<u32>(32u))))));
    global0 = array<vec3<bool>, 22>();
    global0 = array<vec3<bool>, 22>();
    global2 = select(vec2<bool>(!(arg_0.b > u_input.b.x), global1.a), !vec2<bool>(select(all(vec4<bool>(arg_0.c, arg_0.c, true, false)), arg_0.c, false), false), arg_0.c);
    return _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(func_1().b, _wgslsmith_add_i32(arg_0.b, arg_0.b), _wgslsmith_sub_i32(arg_0.b, 2147483647i)), ~(-u_input.b.xxy)), reverseBits(u_input.b.x), 1i), firstLeadingBit(-vec4<i32>(firstLeadingBit(-23329i), 2147483647i, firstLeadingBit(arg_0.b), ~u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(abs(firstLeadingBit(~firstTrailingBit(vec4<u32>(u_input.a, u_input.a, u_input.c.x, 1u)))), max(u_input.b.x, _wgslsmith_mod_i32(func_4(func_1(), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1196f, 334f)))), _wgslsmith_add_i32(2147483647i, 1074i & u_input.b.x))), global1.a, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-602f, -583f), vec2<f32>(344f, -2819f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(849f, 1197f), vec2<f32>(-290f, -977f))) * vec2<f32>(1f, 1f))))));
    let var_1 = vec4<bool>(true, true, false, global2.x);
    global2 = func_3(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.d.x, var_0.d.x), var_0.d.x))).zz;
    global1 = func_2(select(vec3<i32>(firstLeadingBit(2147483647i), 0i, i32(-1i) * -1i), min(-vec3<i32>(var_0.b, u_input.b.x, u_input.b.x) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 379u, u_input.c.x), vec3<u32>(94556u, 27210u, 24490u), var_0.a.zxz) % vec3<u32>(32u)), vec3<i32>(var_0.b, ~u_input.b.x, -2147483647i << (var_0.a.x % 32u))), false), -1051f, !var_1);
    var var_2 = Struct_1(abs(~_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.b, 1i, 1i, u_input.b.x), ~u_input.b)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.d.x + -485f)))), _wgslsmith_div_f32(func_1().d.x, var_0.d.x), var_0.d.x, 206f));
    var var_3 = var_2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b.yz, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1135f, var_2.b.x, var_2.b.x))) * vec3<f32>(_wgslsmith_f_op_f32(775f * var_0.d.x), 727f, _wgslsmith_f_op_f32(-var_0.d.x))))), 43010i);
}

