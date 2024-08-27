struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(9102u, 0u, 1u, 4294967295u);

var<private> global1: Struct_2 = Struct_2(4294967295u, 186f, vec3<u32>(11810u, 0u, 0u));

var<private> global2: vec2<u32>;

var<private> global3: vec2<u32>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec2<bool> {
    global1 = Struct_2(global3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-534f, _wgslsmith_f_op_f32(1000f + 608f), true)) + 839f), 101f), global0.yzz);
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(562f * -436f))) - arg_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-643f)) - 1293f), _wgslsmith_f_op_f32(-1609f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.b))))), arg_0.b);
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-665f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1219f)))), _wgslsmith_f_op_f32(abs(var_0.x)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, -494f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1510f, arg_1.b))))), global1.b, 676f));
    let var_3 = -abs(firstLeadingBit(_wgslsmith_mult_vec2_i32(u_input.b.xx | u_input.b.xz, vec2<i32>(-38924i, u_input.b.x))));
    return vec2<bool>(false, var_3.x < 25215i);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: f32, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = Struct_1(!arg_1.b.b, !arg_1.b.b | arg_1.b.b, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -928f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.b * arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)))));
    global2 = _wgslsmith_mod_vec2_u32(~select(_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, arg_1.a.c.x), vec2<u32>(u_input.a, u_input.a), arg_1.a.c.zx), select(vec2<u32>(u_input.a, 3303u), vec2<u32>(69950u, 7237u), false)), ~arg_0.yw, all(func_3(Struct_2(0u, global1.b, vec3<u32>(global2.x, u_input.a, global0.x)), Struct_2(1u, arg_3.b, arg_0.xyz)))), vec2<u32>(~_wgslsmith_div_u32(global3.x, select(global1.a, 36499u, false)), abs(abs(~arg_0.x))));
    var var_1 = ~vec4<u32>(17127u, 0u, global0.x, 34118u);
    let var_2 = -_wgslsmith_div_i32(1i, -_wgslsmith_mult_i32(1i, u_input.b.x));
    global2 = ~var_1.zw;
    return select(!(!(!select(vec3<bool>(arg_1.b.a, false, true), vec3<bool>(true, false, var_0.a), false))), select(vec3<bool>(any(vec3<bool>(false, arg_1.b.a, false)), true, arg_1.b.b), vec3<bool>(true, arg_1.b.a, true), select(!select(vec3<bool>(false, true, arg_1.b.a), vec3<bool>(var_0.a, false, false), false), select(vec3<bool>(var_0.b, false, false), select(vec3<bool>(var_0.b, false, false), vec3<bool>(var_0.b, arg_1.b.b, true), vec3<bool>(false, arg_1.b.b, false)), vec3<bool>(false, var_0.a, true)), _wgslsmith_dot_vec3_u32(global1.c, vec3<u32>(1u, 34808u, global0.x)) < ~1u)), true);
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_2 {
    global0 = ~(reverseBits(~(~vec4<u32>(arg_0, global2.x, 42521u, 29507u))) & ~(~vec4<u32>(0u, global1.c.x, global3.x, 0u) >> ((vec4<u32>(arg_0, global3.x, global2.x, 60948u) ^ vec4<u32>(12274u, 0u, 1u, global0.x)) % vec4<u32>(32u))));
    var var_0 = global1.a;
    let var_1 = select(select(vec3<bool>(false, true, _wgslsmith_f_op_f32(-global1.b) != _wgslsmith_f_op_f32(-global1.b)), !(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true)), 42084i <= -abs(u_input.b.x)), select(select(vec3<bool>(all(vec4<bool>(false, false, true, true)), true, all(vec4<bool>(true, true, false, true))), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), func_2(vec4<u32>(arg_1, global1.a, arg_0, 54485u), Struct_3(Struct_2(global0.x, global1.b, vec3<u32>(global3.x, 22661u, 57544u)), Struct_1(false, true, global1.b), Struct_2(global3.x, global1.b, global1.c), vec4<f32>(1000f, global1.b, global1.b, -1000f)), -1000f, Struct_2(global2.x, 1724f, vec3<u32>(72858u, arg_0, u_input.a))), vec3<bool>(true, true, true)), true), vec3<bool>(any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true))), global0.x >= 1u, true), vec3<bool>(true, true, any(vec2<bool>(true, true)))), !func_2(firstTrailingBit(vec4<u32>(4308u, 33132u, 4294967295u, 4294967295u)) >> (~vec4<u32>(global1.a, 4294967295u, global3.x, arg_1) % vec4<u32>(32u)), Struct_3(Struct_2(arg_1, -109f, global1.c), Struct_1(true, false, global1.b), Struct_2(14504u, global1.b, global0.yxy), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, global1.b, global1.b, global1.b))), -2716f, Struct_2(global0.x >> (global3.x % 32u), _wgslsmith_f_op_f32(f32(-1f) * -124f), ~vec3<u32>(1u, 0u, u_input.a))));
    let var_2 = ~vec3<i32>(u_input.b.x, reverseBits(~18173i), i32(-1i) * -4207i);
    let var_3 = min(0i, _wgslsmith_div_i32(-_wgslsmith_div_i32(u_input.b.x, max(-2507i, u_input.b.x)), _wgslsmith_add_i32(11974i, 18042i)));
    return Struct_2(reverseBits(firstLeadingBit(1u)), global1.b, vec3<u32>(global1.c.x, u_input.a, ~_wgslsmith_dot_vec2_u32(~global1.c.yy, ~global1.c.xz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(10771u, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(global0.xx, ~(~vec2<u32>(31034u, u_input.a))), global1.c.zy));
    var var_1 = Struct_3(func_1(~_wgslsmith_mod_u32(global3.x, 1u), _wgslsmith_dot_vec4_u32(min(vec4<u32>(94206u, 0u, 53142u, 65335u) >> (vec4<u32>(0u, u_input.a, global2.x, global1.a) % vec4<u32>(32u)), max(vec4<u32>(global2.x, 28707u, global0.x, global3.x), vec4<u32>(global3.x, global1.a, global0.x, global0.x))), vec4<u32>(~95716u, var_0.c.x, _wgslsmith_sub_u32(global0.x, u_input.a), global1.c.x | global0.x))), Struct_1(_wgslsmith_add_i32(max(u_input.b.x, -1i), u_input.b.x >> (98685u % 32u)) > ~u_input.b.x, true, var_0.b), func_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(global0.zwx, _wgslsmith_sub_vec3_u32(global0.zzy, global1.c)), 47556u), 0u ^ global0.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, 595f, -991f, 239f) * vec4<f32>(var_0.b, var_0.b, global1.b, global1.b)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(global1.b - var_0.b), _wgslsmith_f_op_f32(-1290f - global1.b), _wgslsmith_f_op_f32(-1000f - -2746f), _wgslsmith_f_op_f32(sign(global1.b)))))));
    let var_2 = !vec4<bool>(var_1.b.b == !(!var_1.b.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1088f), _wgslsmith_f_op_f32(step(1350f, 838f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-183f, var_0.b))), func_3(var_1.c, func_1(9686u << (global2.x % 32u), _wgslsmith_add_u32(23549u, 9224u))).x, func_2(min(vec4<u32>(92213u, var_0.a, global2.x, 44143u), vec4<u32>(global2.x, 1u, var_0.a, global1.a)), Struct_3(Struct_2(global2.x, global1.b, var_1.c.c), Struct_1(var_1.b.a, var_1.b.b, -189f), Struct_2(global0.x, global1.b, global1.c), vec4<f32>(var_0.b, var_1.d.x, var_0.b, -479f)), _wgslsmith_f_op_f32(sign(var_0.b)), Struct_2(global2.x, var_1.a.b, vec3<u32>(var_1.a.c.x, global3.x, global2.x))).x || all(func_2(vec4<u32>(global0.x, global1.a, 60437u, 1u), Struct_3(Struct_2(0u, -1622f, vec3<u32>(1u, 4294967295u, var_0.c.x)), Struct_1(var_1.b.a, var_1.b.a, -1049f), var_0, var_1.d), global1.b, var_0).yz));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(_wgslsmith_dot_vec2_i32(u_input.b.xx, vec2<i32>(u_input.b.x, 6483i)) | abs(-2147483647i)), -178f);
}

