struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<bool>, 6>;

var<private> global2: vec2<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_3) -> u32 {
    global0 = Struct_2(vec4<u32>(1u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(15852u, arg_3.a.x << (global0.d % 32u), ~global0.d), 27761u), 1u, (_wgslsmith_dot_vec4_u32(vec4<u32>(23532u, global0.d, global0.d, 1u), vec4<u32>(0u, arg_3.b.x, 25727u, global0.a.x)) >> (~11861u % 32u)) | reverseBits(_wgslsmith_mult_u32(u_input.a.x, 4294967295u))), _wgslsmith_add_vec4_i32(vec4<i32>(i32(-1i) * -1i, _wgslsmith_sub_i32(abs(arg_0.a), -global0.b.x), reverseBits(_wgslsmith_dot_vec4_i32(global0.b, global0.b)), _wgslsmith_sub_i32(select(-7061i, -2147483647i, global2.x), _wgslsmith_add_i32(u_input.b, 1i))), vec4<i32>(-44949i, 1i, ~(~(-2147483647i)), ~max(2147483647i, 1i))), Struct_1(abs(24932i), reverseBits(_wgslsmith_mod_u32(4219u, global0.d)) == u_input.a.x, select(select(global0.c.c, select(vec4<bool>(global2.x, true, global0.c.c.x, false), arg_0.c, global2.x), all(vec4<bool>(true, true, true, false))), arg_0.c, true)), _wgslsmith_mult_u32(abs(_wgslsmith_dot_vec2_u32(global0.a.xx, vec2<u32>(global0.a.x, arg_3.a.x))) | arg_3.a.x, 4294967295u));
    global1 = array<vec2<bool>, 6>();
    var var_0 = Struct_2(vec4<u32>(arg_3.b.x, arg_3.b.x, reverseBits(4294967295u), 4535u), firstTrailingBit(_wgslsmith_clamp_vec4_i32(firstTrailingBit(-vec4<i32>(2147483647i, -2416i, arg_0.a, arg_0.a)), vec4<i32>(arg_0.a, 2147483647i, -11294i, 12634i) ^ global0.b, firstTrailingBit(vec4<i32>(18805i, 2147483647i, -32603i, -1582i)))), Struct_1(4781i, !global0.c.c.x, vec4<bool>(global0.c.c.x, global2.x, all(vec3<bool>(false, arg_0.c.x, global2.x)) || true, !(!arg_0.c.x))), ~countOneBits(1u));
    var var_1 = arg_3;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_3.c.yx * var_1.c.yy), _wgslsmith_f_op_vec2_f32(abs(var_1.c.zx))))) - vec2<f32>(-1110f, _wgslsmith_f_op_f32(var_1.c.x + 105f))));
    return 13221u;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: u32, arg_3: vec4<f32>) -> f32 {
    global2 = select(global0.c.c.zz, vec2<bool>(true, arg_0.x), arg_0.x);
    var var_0 = Struct_2(global0.a ^ (((global0.a >> (vec4<u32>(4294967295u, global0.a.x, 0u, u_input.a.x) % vec4<u32>(32u))) & vec4<u32>(4294967295u, u_input.a.x, 0u, u_input.a.x)) | global0.a), _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(-1i) * -vec4<i32>(-39777i, -30701i, -21734i, 46008i)), vec4<i32>(1i, 2147483647i, -u_input.b, arg_1.x)), global0.c, _wgslsmith_mult_u32(_wgslsmith_sub_u32(1u, func_3(global0.c, arg_1.yz, global0.c, Struct_3(global0.a, u_input.a, arg_3.yzy))), 93717u) & abs(41341u));
    var var_1 = vec2<i32>(global0.b.x | (i32(-1i) * -(~(-25448i))), _wgslsmith_dot_vec4_i32(global0.b, var_0.b) & u_input.b);
    var var_2 = false;
    global0 = Struct_2(~select(var_0.a, vec4<u32>(countOneBits(var_0.a.x), ~global0.a.x, func_3(global0.c, vec2<i32>(16907i, var_1.x), Struct_1(-49784i, true, global0.c.c), Struct_3(vec4<u32>(1u, 1u, global0.a.x, global0.a.x), var_0.a.wz, vec3<f32>(-737f, -393f, -2759f))), ~var_0.d), -261f > _wgslsmith_f_op_f32(-arg_3.x)), vec4<i32>(firstTrailingBit(global0.b.x), ~countOneBits(var_0.c.a), var_0.c.a, countOneBits(1i)), var_0.c, _wgslsmith_dot_vec4_u32(global0.a, ~(~min(global0.a, var_0.a))));
    return 192f;
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -302f)) + _wgslsmith_f_op_f32(select(-807f, _wgslsmith_f_op_f32(ceil(257f)), global2.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-476f * 1299f) + _wgslsmith_f_op_f32(func_2(vec3<bool>(global0.c.b, global2.x, global2.x), global0.b.xwx, arg_0.x, vec4<f32>(647f, 151f, 1275f, -586f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(792f)) - _wgslsmith_f_op_f32(trunc(1526f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(global0.c.c.wzw, global0.b.zyz, 1u, vec4<f32>(480f, -1261f, 377f, -1953f))))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(trunc(-1038f)))))), -857f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-501f)), _wgslsmith_f_op_f32(max(-1691f, -1214f)), !global0.c.b)) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-401f, -1132f), -1073f)))));
    var var_1 = Struct_2(global0.a | select(max(~vec4<u32>(4294967295u, 98781u, arg_0.x, arg_0.x), ~vec4<u32>(26179u, 3595u, 1088u, arg_0.x)), global0.a, select(!vec4<bool>(global2.x, global0.c.b, false, global2.x), vec4<bool>(false, false, false, global2.x), global2.x)), global0.b, global0.c, 1u);
    let var_2 = _wgslsmith_mult_u32(func_3(Struct_1(_wgslsmith_sub_i32(_wgslsmith_div_i32(-18368i, 10045i), _wgslsmith_dot_vec2_i32(global0.b.yw, global0.b.zy)), all(select(global0.c.c.wxw, var_1.c.c.wxx, global0.c.c.x)), global0.c.c), global0.b.wz, Struct_1(~(~(-1i)), 12687u == global0.d, vec4<bool>(var_1.d == var_1.a.x, !global2.x, var_1.c.c.x, global0.c.b)), Struct_3(vec4<u32>(~arg_0.x, _wgslsmith_add_u32(u_input.a.x, 22497u), max(22714u, 4294967295u), min(arg_0.x, 1u)), var_1.a.yx, var_0.wyy)), 0u >> (global0.d % 32u));
    global1 = array<vec2<bool>, 6>();
    let var_3 = Struct_2(global0.a, ~vec4<i32>(1i, _wgslsmith_clamp_i32(global0.b.x, u_input.b, global0.b.x), var_1.b.x, 1i) ^ -(var_1.b | global0.b), var_1.c, min(1u, var_1.a.x));
    return _wgslsmith_sub_u32(~(~105442u), 29767u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.c;
    var var_1 = vec2<u32>(~abs(_wgslsmith_mult_u32(~global0.a.x, func_1(vec3<u32>(35954u, 54152u, u_input.a.x)))), reverseBits(25787u));
    var var_2 = var_0.c.ywy;
    global2 = var_2.xx;
    global1 = array<vec2<bool>, 6>();
    var var_3 = global0.c.c;
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.yz, global0.a.x);
}

