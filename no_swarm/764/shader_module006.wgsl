struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3>;

var<private> global1: vec2<bool>;

var<private> global2: vec3<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: f32, arg_3: Struct_2) -> vec3<u32> {
    return _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1767u, u_input.a.x, _wgslsmith_add_u32(1u, arg_3.c.b.x)), vec3<u32>(1u, firstLeadingBit(arg_3.a.a), ~32536u)), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a.zww, vec3<u32>(43696u, u_input.a.x, arg_3.a.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(54378u, arg_3.a.b.x, 66957u), vec3<u32>(arg_3.a.a, u_input.a.x, 71620u)), vec3<u32>(48185u, u_input.a.x, arg_3.a.a))) & ~(~(vec3<u32>(4294967295u, arg_3.c.b.x, u_input.a.x) | _wgslsmith_clamp_vec3_u32(u_input.a.yyy, arg_3.c.b, arg_3.a.b)));
}

fn func_2(arg_0: f32) -> bool {
    var var_0 = Struct_1(~u_input.a.x << (abs(u_input.a.x) % 32u), ~(vec3<u32>(~u_input.a.x, _wgslsmith_clamp_u32(22288u, 4294967295u, u_input.a.x), _wgslsmith_div_u32(u_input.a.x, u_input.a.x)) ^ (vec3<u32>(u_input.a.x, 12945u, u_input.a.x) & func_3(vec3<i32>(7492i, 1i, -2784i), global0[_wgslsmith_index_u32(1u, 3u)], 700f, Struct_2(Struct_1(u_input.a.x, u_input.a.yzx), vec3<i32>(-17004i, -1918i, -28836i), Struct_1(u_input.a.x, u_input.a.zzw))))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(42690u, 46194u), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a.xw)) & (~16585u >> (_wgslsmith_sub_u32(27204u, var_0.b.x) % 32u)), ~u_input.a.zww), ~vec3<i32>(1i, 1i, 1i), Struct_1(countOneBits(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a) >> ((u_input.a.x << (var_0.a % 32u)) % 32u)), u_input.a.ywy >> (~(~u_input.a.yxy) % vec3<u32>(32u))));
    let var_2 = Struct_1(var_0.b.x, var_1.a.b);
    var var_3 = _wgslsmith_add_u32(u_input.a.x & var_2.a, u_input.a.x);
    var var_4 = ~(~(~(firstTrailingBit(var_2.a) << (min(u_input.a.x, 1u) % 32u))));
    return any(select(!vec3<bool>(1i <= var_1.b.x, !global1.x, true), vec3<bool>(any(select(vec3<bool>(global1.x, false, false), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(false, true, global1.x))), all(vec2<bool>(true, true)), !(global1.x & false)), !(!global1.x)));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2) -> i32 {
    global1 = vec2<bool>(true, true);
    global1 = !select(!vec2<bool>(global1.x, global1.x), vec2<bool>(false, false), !select(vec2<bool>(true, true), select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, true), false), vec2<bool>(true, true)));
    global1 = vec2<bool>(global1.x || false, false);
    var var_0 = select(select(select(select(vec2<bool>(global1.x, global1.x), select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, false), vec2<bool>(true, false)), !vec2<bool>(global1.x, true)), !vec2<bool>(global1.x, false), false), vec2<bool>(true, func_2(_wgslsmith_div_f32(789f, 113f))), !select(vec2<bool>(true, global1.x), vec2<bool>(global1.x, global1.x), false)), select(!select(vec2<bool>(false, false), select(vec2<bool>(true, global1.x), vec2<bool>(true, true), global1.x), !vec2<bool>(global1.x, global1.x)), vec2<bool>(true, true), true), select(vec2<bool>(true, any(select(vec2<bool>(false, true), vec2<bool>(global1.x, global1.x), vec2<bool>(false, false)))), select(select(select(vec2<bool>(global1.x, true), vec2<bool>(false, false), global1.x), !vec2<bool>(false, global1.x), all(vec4<bool>(global1.x, global1.x, global1.x, false))), !vec2<bool>(global1.x, true), !vec2<bool>(global1.x, global1.x)), global1.x));
    var_0 = vec2<bool>(var_0.x, all(vec3<bool>(!select(true, var_0.x, true), any(vec2<bool>(true, false)), _wgslsmith_f_op_f32(-arg_0.x) < _wgslsmith_f_op_f32(trunc(-754f)))));
    return firstLeadingBit(~reverseBits(max(66193i, _wgslsmith_sub_i32(2147483647i, arg_1.b.x))));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_4) -> vec4<bool> {
    var var_0 = !(!select(!vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, any(vec2<bool>(global1.x, global1.x)), global1.x), true));
    var var_1 = !any(vec2<bool>(global1.x, global1.x));
    let var_2 = abs(arg_3.b.a);
    let var_3 = _wgslsmith_div_vec3_i32(~_wgslsmith_add_vec3_i32(-(~vec3<i32>(-24414i, 44036i, -18046i)), ~(-vec3<i32>(arg_3.c, 13494i, arg_3.c))), _wgslsmith_mult_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, arg_0, ~(-1i)) << (((vec3<u32>(var_2, var_2, var_2) << (u_input.a.wyx % vec3<u32>(32u))) ^ vec3<u32>(u_input.a.x, u_input.a.x, 22111u)) % vec3<u32>(32u)), vec3<i32>(~_wgslsmith_sub_i32(0i, arg_0), _wgslsmith_div_i32(arg_0, 0i) & arg_0, -52786i)));
    let var_4 = u_input.a >> (~vec4<u32>(0u, ~arg_3.b.b.x << (59326u % 32u), ~47775u, _wgslsmith_clamp_u32(1u, 1u, ~var_2)) % vec4<u32>(32u));
    return !select(vec4<bool>(global1.x, true, !(!global1.x), !global1.x | global1.x), select(!vec4<bool>(false, true, global1.x, false), select(select(vec4<bool>(var_0.x, false, true, false), vec4<bool>(false, global1.x, true, var_0.x), vec4<bool>(var_0.x, false, false, false)), select(vec4<bool>(true, true, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, global1.x), false), select(vec4<bool>(true, true, var_0.x, global1.x), vec4<bool>(var_0.x, var_0.x, true, false), global1.x)), !vec4<bool>(false, global1.x, var_0.x, var_0.x)), select(!vec4<bool>(var_0.x, false, global1.x, true), select(vec4<bool>(true, global1.x, var_0.x, global1.x), vec4<bool>(global1.x, var_0.x, true, var_0.x), global1.x), select(!vec4<bool>(var_0.x, var_0.x, true, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, global1.x), true), select(vec4<bool>(var_0.x, true, false, false), vec4<bool>(global1.x, true, true, true), global1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(func_4(func_1(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 3u)], global2.x, global2.x), Struct_2(Struct_1(8809u, u_input.a.xzx), vec3<i32>(1i, -2147483647i, -8304i), Struct_1(4294967295u, u_input.a.xyz))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2.x, global2.x, 417f))))), global2.x, Struct_4(Struct_1(19699u, u_input.a.zwy), Struct_1(u_input.a.x, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), 1i)), !(!(!vec4<bool>(global1.x, true, global1.x, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, global1.x, global1.x), vec4<bool>(global1.x, !global1.x, all(vec3<bool>(false, false, global1.x)), true))), !vec4<bool>(select(func_2(-1747f), false, true), false, false, true), !(!vec4<bool>(!global1.x, true, !global1.x, false)));
    var var_1 = Struct_2(Struct_1(71977u, max(min(vec3<u32>(53736u, 17334u, 3064u), u_input.a.zzx) & ~u_input.a.wzx, u_input.a.www & u_input.a.wyx)), -vec3<i32>(_wgslsmith_clamp_i32(max(19236i, -380i), ~0i, 15152i), countOneBits(40747i), _wgslsmith_mod_i32(_wgslsmith_sub_i32(1i, -41270i), -21735i)), Struct_1(~u_input.a.x, vec3<u32>(u_input.a.x, ~8490u, ~73189u)));
    global1 = vec2<bool>(global1.x && global1.x, true);
    let var_2 = Struct_3(vec4<i32>(var_1.b.x, -28767i, firstLeadingBit(var_1.b.x), 42362i));
    let var_3 = Struct_1(u_input.a.x << (_wgslsmith_dot_vec2_u32(u_input.a.yy, firstLeadingBit(vec2<u32>(0u, var_1.c.b.x))) % 32u), vec3<u32>(0u, _wgslsmith_mult_u32(u_input.a.x | u_input.a.x, _wgslsmith_add_u32(173700u, var_1.a.b.x)), _wgslsmith_mult_u32(u_input.a.x, 42654u) & _wgslsmith_sub_u32(u_input.a.x, 4294967295u)) >> (var_1.c.b % vec3<u32>(32u)));
    let var_4 = 33865i;
    let var_5 = (var_2.a.ww & vec2<i32>(2147483647i, _wgslsmith_mod_i32(0i, 1i))) | var_1.b.zy;
    var var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-856f + -454f), global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, -628f)))), vec4<u32>(~(u_input.a.x | 0u), 1u, u_input.a.x, reverseBits(var_1.c.a)) | u_input.a, _wgslsmith_mod_i32(var_2.a.x, ~1i));
}

