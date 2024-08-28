struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec2<f32> = vec2<f32>(490f, -459f);

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(0u, false, vec4<i32>(10534i, -19401i, 82780i, -16553i), vec2<u32>(42699u, 0u), vec3<i32>(2147483647i, 0i, 2141i));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec2<i32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_mod_u32(~firstTrailingBit(global3.a), _wgslsmith_div_u32(2085u, ~(~56182u))), false, abs(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(-11085i, -64155i), max(arg_2.x, global3.e.x)), 2147483647i, 1i, max(_wgslsmith_clamp_i32(arg_2.x, arg_2.x, global3.e.x), abs(global3.e.x)))), global2.d, global2.e);
    let var_1 = any(!select(select(!vec2<bool>(global2.b, false), select(vec2<bool>(true, false), vec2<bool>(global2.b, true), vec2<bool>(true, var_0.b)), select(vec2<bool>(global3.b, true), vec2<bool>(true, false), vec2<bool>(var_0.b, false))), !select(vec2<bool>(false, global3.b), vec2<bool>(true, true), false), ~var_0.a <= _wgslsmith_dot_vec4_u32(vec4<u32>(38135u, global3.a, global3.a, 1u), vec4<u32>(4294967295u, global2.a, global2.a, 123u))));
    let var_2 = Struct_1(~(~0u), true, _wgslsmith_add_vec4_i32(max(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(global2.c, var_0.c), abs(vec4<i32>(-20798i, 4094i, 50155i, -17325i))), _wgslsmith_clamp_vec4_i32(global3.c, global3.c, -vec4<i32>(var_0.c.x, arg_2.x, var_0.c.x, arg_2.x))), vec4<i32>(_wgslsmith_dot_vec4_i32(var_0.c, global2.c), var_0.c.x, ~(-arg_2.x), 2147483647i)), _wgslsmith_mod_vec2_u32(vec2<u32>(abs(u_input.a), 1u), vec2<u32>(64555u, global2.d.x)), _wgslsmith_add_vec3_i32(vec3<i32>(~(-global3.c.x), -1i, min(arg_2.x, arg_2.x)), vec3<i32>(1i, ~(-2147483647i) ^ -global2.c.x, ~(~arg_2.x))));
    global0 = (arg_2.x >= var_2.c.x) | !select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 46857u), vec2<u32>(0u, var_2.a)) <= ~1u, !(!var_0.b), !(!arg_0));
    let var_3 = true;
    return 39971u;
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = firstTrailingBit(2147483647i) >> (global2.a % 32u);
    let var_1 = arg_1;
    var var_2 = vec3<u32>(_wgslsmith_sub_u32(4294967295u, ~4294967295u), ~_wgslsmith_mod_u32(~arg_1.d.x, _wgslsmith_clamp_u32(~global3.d.x, 4294967295u, 1u ^ global2.a)), ~9245u);
    var var_3 = countOneBits((~vec4<u32>(4294967295u, 48708u, arg_1.a, var_1.d.x) >> (vec4<u32>(var_1.a, 0u, global3.d.x, 1657u) % vec4<u32>(32u))) & (abs(vec4<u32>(global3.a, 4294967295u, var_2.x, global2.a)) & vec4<u32>(u_input.a, 4294967295u, u_input.a, 72082u))) >> (select(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(36462u, u_input.a, u_input.a, var_2.x), vec4<u32>(69142u, global2.a, 8463u, 1u)) >> (reverseBits(vec4<u32>(u_input.a, var_1.a, 1u, global2.d.x)) % vec4<u32>(32u)), vec4<u32>(u_input.a >> (arg_1.a % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(global3.d.x, u_input.a), global3.d), ~59712u, arg_1.d.x)), ~vec4<u32>(~1u, arg_1.d.x, firstLeadingBit(var_2.x), max(1u, var_1.a)), global1.x == _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(global1.x + global1.x)))) % vec4<u32>(32u));
    let var_4 = true;
    return vec3<bool>(false, false, all(vec4<bool>(arg_1.a < global3.d.x, select(global2.b, global2.b, arg_1.b), (arg_1.b == false) | true, false)));
}

fn func_2() -> Struct_1 {
    let var_0 = !func_4(~_wgslsmith_mult_i32(~36648i, global2.e.x ^ 7544i), Struct_1(func_3(global1.x < 1063f, global3.b, ~global2.e.yx), all(select(vec3<bool>(false, false, global2.b), vec3<bool>(global3.b, false, false), vec3<bool>(global2.b, true, false))), vec4<i32>(global2.c.x, -2147483647i, max(global3.c.x, 0i), -1i & global3.e.x), global3.d, vec3<i32>(2147483647i << (global3.d.x % 32u), ~(-41886i), -1i << (u_input.a % 32u))));
    let var_1 = Struct_1(4294967295u, true, vec4<i32>(-1i ^ global3.c.x, global3.c.x, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(39678i, global3.e.x, global2.c.x, 25101i), vec4<i32>(global2.e.x, -2147483647i, 1i, global2.c.x)), ~global3.c), -global2.c.x ^ _wgslsmith_mod_i32(1i, global3.c.x)), 2147483647i), vec2<u32>(_wgslsmith_mod_u32((global3.d.x | 0u) << (0u % 32u), ~(~u_input.a)), u_input.a), select(reverseBits(~vec3<i32>(global3.e.x, global2.e.x, global3.e.x)) << (~vec3<u32>(u_input.a, 41468u, 4294967295u) % vec3<u32>(32u)), vec3<i32>(-global3.c.x, -2147483647i, countOneBits(global3.e.x)), select(vec3<bool>(global3.b, global1.x <= global1.x, false), var_0, true)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -877f, 733f, -1000f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1087f, 320f, 410f) + vec4<f32>(-617f, 1260f, global1.x, global1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, 952f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -156f, global1.x, global1.x) - vec4<f32>(-316f, global1.x, -212f, -691f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1431f, global1.x, 804f, global1.x)))));
    global0 = true;
    let var_3 = var_1;
    return Struct_1(~u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-261f)))) == -1456f, _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(12185i, -1i, 789i) << (vec3<u32>(53653u, var_3.d.x, 4294967295u) % vec3<u32>(32u)), vec3<i32>(-52503i, var_3.e.x, global3.c.x)), _wgslsmith_mod_i32(_wgslsmith_div_i32(46249i, global3.c.x), var_3.c.x), _wgslsmith_sub_i32(global3.c.x, 19539i) | -1i, 1i), -var_3.c), ~vec2<u32>(var_3.d.x, _wgslsmith_mod_u32(1u, 67920u)), _wgslsmith_div_vec3_i32(var_1.c.wwz, max(firstLeadingBit(global2.e), _wgslsmith_div_vec3_i32(var_1.c.yyz, vec3<i32>(-20961i, var_3.c.x, -34351i) | var_1.c.yyx))));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    let var_0 = func_2();
    global0 = all(vec3<bool>(true, true, var_0.b));
    let var_1 = _wgslsmith_f_op_f32(-global1.x);
    var var_2 = vec2<bool>(arg_3.b, true);
    let var_3 = -vec3<i32>(-global3.e.x, countOneBits(-_wgslsmith_div_i32(arg_1, 0i)), global3.e.x);
    return 3320u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -333f) - _wgslsmith_div_f32(-747f, 1017f)) * global1.x);
    let var_1 = ~func_1(any(vec2<bool>(global3.b, false)), global3.e.x, Struct_1(~47495u >> ((68989u << (global2.d.x % 32u)) % 32u), true, global2.c, select(~vec2<u32>(44146u, global3.a), vec2<u32>(global3.a, global2.a), vec2<bool>(global2.b, global3.b)), global2.c.xzz), Struct_1(13548u, any(!vec3<bool>(true, global3.b, global2.b)), -_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -42395i, -49690i, global3.e.x), global3.c), vec2<u32>(12606u, 40067u) | vec2<u32>(global3.a, 4294967295u), ~_wgslsmith_sub_vec3_i32(vec3<i32>(1i, -19044i, global2.e.x), vec3<i32>(global3.c.x, global3.e.x, -25515i))));
    var_0 = 257f;
    let var_2 = Struct_1(var_1, false, -(~global3.c), ~(vec2<u32>(65911u, 1u) | abs(~vec2<u32>(var_1, 4294967295u))), firstTrailingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(-global3.c.zzy, global3.c.yyx), abs(global3.e << (vec3<u32>(1u, 0u, 49105u) % vec3<u32>(32u))))));
    let var_3 = vec4<bool>(true, all(select(select(vec2<bool>(global2.b, var_2.b), func_4(global3.e.x, var_2).xx, vec2<bool>(global2.b, global2.b)), select(func_4(global3.e.x, Struct_1(global3.d.x, false, var_2.c, global2.d, vec3<i32>(0i, var_2.e.x, global3.e.x))).zy, vec2<bool>(var_2.b, global2.b), select(global2.b, false, global2.b)), false)), var_2.e.x != -20117i, true);
    let var_4 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x)))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x)), global1.x));
    global2 = func_2();
    global2 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~firstTrailingBit(~1u)));
}

