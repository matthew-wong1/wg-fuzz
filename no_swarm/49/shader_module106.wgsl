struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_1, 3>;

var<private> global2: Struct_4 = Struct_4(vec2<u32>(4294967295u, 7347u), Struct_1(-1024f, vec3<u32>(97209u, 4294967295u, 21759u)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-global2.b.a);
    let var_1 = 39167u;
    let var_2 = ~(~(-vec4<i32>(u_input.d.x, global0.a.b, _wgslsmith_sub_i32(global0.a.b, u_input.b.x), 2147483647i)));
    let var_3 = false || !(false & all(vec3<bool>(true, true, true)));
    let var_4 = min(_wgslsmith_mod_i32(u_input.d.x << (global2.b.b.x % 32u), 37258i) ^ global0.b, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 0i, var_2.x, global0.a.b), u_input.a << (vec4<u32>(4294967295u, var_1, 73823u, global2.b.b.x) % vec4<u32>(32u))), u_input.b.x, global0.a.b)) ^ u_input.a.x;
    return global0.a.a.a;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec4<u32>, arg_3: vec2<i32>) -> f32 {
    let var_0 = Struct_4(vec2<u32>(~(~arg_0), global0.a.a.b.x), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3()), 615f)), arg_2.zxw));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -892f)))))), firstTrailingBit(vec3<u32>(_wgslsmith_mult_u32(abs(7426u), global2.a.x), 41675u, 1u)));
    global0 = Struct_3(global0.a, _wgslsmith_dot_vec2_i32(u_input.a.zx, countOneBits(arg_3)));
    global2 = var_0;
    global2 = Struct_4(~(~global0.a.a.b.zx), global0.a.a);
    return 1097f;
}

fn func_4(arg_0: f32, arg_1: i32) -> Struct_4 {
    var var_0 = abs(1u);
    var var_1 = Struct_1(global2.b.a, ~_wgslsmith_add_vec3_u32(firstLeadingBit(~global0.a.a.b), global0.a.a.b));
    let var_2 = -1123f;
    let var_3 = global2.b;
    var_1 = global2.b;
    return Struct_4(~vec2<u32>(var_3.b.x >> (var_1.b.x % 32u), abs(14597u)), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(727f * global2.b.a))), global0.a.a.b));
}

fn func_1() -> Struct_2 {
    global2 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(4294967295u, 726f, ~vec4<u32>(global0.a.a.b.x, global2.b.b.x, global2.b.b.x, global0.a.a.b.x), -u_input.b.zx)) * global0.a.a.a), ~_wgslsmith_dot_vec4_i32(-max(u_input.a, u_input.a), ~vec4<i32>(49325i, -2i, -19699i, u_input.a.x)));
    global1 = array<Struct_1, 3>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1260f, -531f))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.a.a.a, _wgslsmith_f_op_f32(step(global2.b.a, -1000f))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1069f))), global0.a.a.a)) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(396f, 231f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.a.a, 301f)) - vec2<f32>(global2.b.a, global0.a.a.a))))));
    return Struct_2(func_4(660f, ~u_input.c).b, -u_input.d.x);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_3) -> Struct_3 {
    let var_0 = ~(arg_0 & vec4<u32>(firstLeadingBit(global2.b.b.x), 0u, firstTrailingBit(0u), global0.a.a.b.x));
    global1 = array<Struct_1, 3>();
    let var_1 = select(u_input.a, abs(vec4<i32>(~(global0.b << (global0.a.a.b.x % 32u)), 10704i, 11267i, reverseBits(arg_1.a.b))), true);
    var var_2 = Struct_5(abs(global0.a.a.b.x), func_4(_wgslsmith_div_f32(global0.a.a.a, _wgslsmith_f_op_f32(f32(-1f) * -916f)), -_wgslsmith_sub_i32(var_1.x, global0.a.b) << (1u % 32u)));
    global2 = func_4(arg_1.a.a.a, u_input.b.x);
    return Struct_3(Struct_2(func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1149f), _wgslsmith_f_op_f32(-global2.b.a))), 17136i).b, u_input.c), ~(~(i32(-1i) * -23105i) & select(arg_1.b, u_input.c | 26805i, false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(_wgslsmith_mult_vec4_u32(~(vec4<u32>(30208u, 1u, 48662u, global2.a.x) | ~vec4<u32>(1u, global0.a.a.b.x, global2.b.b.x, global2.a.x)), abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global2.a.x, 0u, 29806u), vec4<u32>(global2.a.x, 1u, 4294967295u, 1u), vec4<u32>(global2.a.x, global2.b.b.x, global0.a.a.b.x, global0.a.a.b.x))) << (select(firstLeadingBit(vec4<u32>(2527u, 1u, 1u, global0.a.a.b.x)), vec4<u32>(global0.a.a.b.x, global0.a.a.b.x, global2.a.x, global2.a.x), true) % vec4<u32>(32u))), Struct_3(func_1(), ~_wgslsmith_dot_vec3_i32(-vec3<i32>(global0.a.b, u_input.b.x, u_input.b.x), min(vec3<i32>(global0.b, -2147483647i, u_input.b.x), vec3<i32>(0i, global0.a.b, 31215i)))));
    let var_0 = vec2<bool>(!any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), 20835i < _wgslsmith_clamp_i32(func_5(vec4<u32>(65682u, global0.a.a.b.x, global2.a.x, 25914u), Struct_3(global0.a, -1i)).b, _wgslsmith_mod_i32(firstLeadingBit(-1i), firstTrailingBit(u_input.b.x)), abs(44807i)));
    var var_1 = all(!var_0);
    global1 = array<Struct_1, 3>();
    var_1 = any(vec3<bool>(var_0.x, select(any(!vec2<bool>(true, var_0.x)), var_0.x, any(vec3<bool>(false, true, true))), var_0.x));
    global2 = Struct_4(global0.a.a.b.yy, func_5(max(~firstLeadingBit(vec4<u32>(3592u, global2.b.b.x, 25613u, 1u)), ~(~vec4<u32>(1u, global0.a.a.b.x, 83970u, global2.a.x))), Struct_3(global0.a, 73646i)).a.a);
    global1 = array<Struct_1, 3>();
    var_1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1323f + global0.a.a.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(func_5(vec4<u32>(global2.b.b.x, 58870u, 1u, 86191u), Struct_3(global0.a, 2147483647i)).a.a.a))))), _wgslsmith_div_vec2_u32(global2.a, ~vec2<u32>(firstTrailingBit(global0.a.a.b.x), global0.a.a.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1250f + _wgslsmith_div_f32(global2.b.a, -458f))), reverseBits(global2.b.b), -342f);
}

