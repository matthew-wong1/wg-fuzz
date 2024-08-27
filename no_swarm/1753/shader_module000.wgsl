struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
    d: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_1;

var<private> global2: vec3<i32> = vec3<i32>(-6771i, 0i, 12329i);

var<private> global3: bool;

var<private> global4: vec4<u32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = true;
    global2 = abs(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(global0.a, -6551i, 28158i)), vec3<i32>(_wgslsmith_clamp_i32(~global0.a, -3676i >> (u_input.c.x % 32u), max(global2.x, global2.x)), 6633i, 1i)));
    let var_1 = !(!(!vec2<bool>(global1.a, arg_0.b)));
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1728f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.c.x + arg_0.c.x), _wgslsmith_div_f32(743f, -1128f)))), _wgslsmith_f_op_f32(round(global1.c.x)), any(select(select(var_1, vec2<bool>(var_0, false), true), !vec2<bool>(arg_0.b, false), !arg_0.a)))), _wgslsmith_f_op_f32(trunc(1f))));
    let var_3 = min(select(global2.x, firstTrailingBit(abs(global0.a << (global4.x % 32u))), global1.b), global2.x);
    return u_input.a.x;
}

fn func_2(arg_0: vec4<f32>) -> Struct_4 {
    var var_0 = global4.yzw;
    let var_1 = Struct_3(global0.a, global0.b);
    global4 = select(vec4<u32>(0u, ~func_3(Struct_1(global1.a, global1.a, arg_0.xyw)), 0u, var_0.x), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(1u, 114524u), u_input.c.x, ~(~0u), 4294967295u), vec4<u32>(var_0.x, ~u_input.c.x, select(select(0u, 1u, global1.b), _wgslsmith_sub_u32(32104u, u_input.a.x), !global1.b), ~var_0.x)), vec4<bool>(false, any(!select(vec2<bool>(false, global1.a), vec2<bool>(global1.a, true), global1.a)), !(_wgslsmith_div_i32(var_1.a, var_1.a) > (var_1.a << (u_input.c.x % 32u))), !global1.a && (!global1.a | all(vec3<bool>(global1.b, global1.a, false)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(var_1.b));
    return Struct_4(~(vec4<u32>(var_0.x, global4.x, 13661u, u_input.b) ^ (vec4<u32>(7017u, 0u, 54463u, var_0.x) ^ vec4<u32>(u_input.a.x, global4.x, 36348u, global4.x))) << (vec4<u32>(~var_0.x, abs(global4.x), var_0.x, var_0.x) % vec4<u32>(32u)), Struct_1(false, global1.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -449f), -1446f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1471f, arg_0.x, global1.c.x)))), ~(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, global2.x), global2.xx) << (u_input.a.x % 32u)), Struct_2(Struct_1(false, var_1.a < ~global2.x, _wgslsmith_f_op_vec3_f32(var_1.b.yzw + vec3<f32>(-1598f, 1000f, -492f))), countOneBits(max(vec4<i32>(2916i, global0.a, -1i, global0.a), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, global2.x, var_1.a, global0.a), vec4<i32>(-2147483647i, -20965i, global2.x, -1i)))), var_2.yw, reverseBits(vec3<i32>(global2.x, 40351i, _wgslsmith_clamp_i32(var_1.a, var_1.a, var_1.a))), true));
}

fn func_1(arg_0: bool, arg_1: u32) -> Struct_1 {
    global2 = ~(~(~(_wgslsmith_add_vec3_i32(vec3<i32>(global0.a, 1i, -711i), vec3<i32>(global0.a, -3762i, 68335i)) ^ ~vec3<i32>(global0.a, global2.x, -1i))));
    var var_0 = func_2(global0.b);
    let var_1 = func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global0.b + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-461f, global0.b.x, global0.b.x, var_0.b.c.x), global0.b, vec4<bool>(true, true, arg_0, arg_0))))), vec4<f32>(global0.b.x, _wgslsmith_div_f32(1031f, -291f), _wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(2302f)), _wgslsmith_f_op_f32(step(global0.b.x, global0.b.x)))), select((global4.x & global4.x) <= ~arg_1, !var_0.b.a, var_0.b.a)))).a.x;
    return Struct_1(select(any(!select(vec2<bool>(var_0.d.a.a, false), vec2<bool>(false, global1.a), global1.a)), any(select(!vec4<bool>(arg_0, true, true, false), vec4<bool>(true, true, true, true), !vec4<bool>(var_0.b.a, true, global1.b, true))), var_0.d.a.b), (global1.b & !(true || var_0.d.e)) & false, vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.d.c.x)), _wgslsmith_f_op_f32(trunc(var_0.b.c.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.c.x)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<i32>) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(global1.c.x - _wgslsmith_f_op_f32(-arg_0.c.x));
    let var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(~global0.a, -global0.a, ~global0.a, _wgslsmith_dot_vec3_i32(select(arg_2 ^ arg_2, abs(vec3<i32>(-1063i, -1i, arg_2.x)), vec3<bool>(arg_0.a, true, global1.b)), countOneBits(arg_2) | (arg_2 >> (global4.wwx % vec3<u32>(32u))))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(reverseBits(-28736i), _wgslsmith_add_i32(-2147483647i, 2147483647i), 1i, -47457i), ~(vec4<i32>(global2.x, -1i, 1i, arg_2.x) & vec4<i32>(global0.a, global2.x, -55469i, 2147483647i)), vec4<i32>(_wgslsmith_sub_i32(global0.a, -1i), _wgslsmith_div_i32(-41787i, 1i), ~71158i, ~arg_2.x)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~6584i, global2.x, global0.a), _wgslsmith_sub_vec3_i32(arg_2, arg_2)), global2.x, -104720i & (0i & _wgslsmith_dot_vec3_i32(arg_2, arg_2)), -_wgslsmith_dot_vec4_i32(-vec4<i32>(global0.a, -2147483647i, -47838i, 0i), select(vec4<i32>(1i, arg_2.x, 1i, 32542i), vec4<i32>(arg_2.x, global0.a, arg_2.x, global2.x), arg_0.a))));
    let var_2 = Struct_1(false, false, vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-863f, var_0))))), -1288f, _wgslsmith_f_op_f32(-1407f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c.x, arg_0.c.x)))));
    global2 = var_1.ywx;
    let var_3 = any(!(!vec3<bool>(!var_2.b, global0.a == global0.a, true | global1.a)));
    return StorageBuffer(abs(reverseBits(~vec4<u32>(0u, 78101u, global4.x, 111576u))), u_input.a.x, var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(!global1.b, _wgslsmith_add_u32(firstTrailingBit(~global4.x), u_input.a.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.b.x, _wgslsmith_div_f32(global0.b.x, global1.c.x), global1.c.x))), _wgslsmith_mod_vec3_i32(-vec3<i32>(-1i, 0i, 5092i), -_wgslsmith_clamp_vec3_i32(vec3<i32>(-735i, global2.x, 0i) << (vec3<u32>(u_input.a.x, 18884u, 1u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(vec3<i32>(global0.a, 15192i, -1i), vec3<i32>(global0.a, global0.a, 65859i)), vec3<i32>(global0.a, -2147483647i, -40091i))));
}

