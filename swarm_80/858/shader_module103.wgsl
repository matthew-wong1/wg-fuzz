struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
    e: i32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
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

var<private> global0: Struct_3;

var<private> global1: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> bool {
    global1 = select(!select(select(select(vec2<bool>(true, global1.x), vec2<bool>(false, global1.x), false), vec2<bool>(global1.x, global1.x), select(vec2<bool>(true, arg_0.a), vec2<bool>(arg_0.a, arg_0.a), true)), vec2<bool>(arg_0.b.x >= 43650u, arg_0.a), any(vec4<bool>(global1.x, false, false, true))), select(!vec2<bool>(arg_0.a, false), vec2<bool>(global1.x, false), select(select(vec2<bool>(global1.x, true), vec2<bool>(arg_0.a, false), vec2<bool>(true, true)), select(vec2<bool>(global1.x, true), select(vec2<bool>(false, arg_0.a), vec2<bool>(false, global1.x), vec2<bool>(arg_0.a, global1.x)), true), select(vec2<bool>(global1.x, false), !vec2<bool>(arg_0.a, global1.x), global1.x))), vec2<bool>(true, any(select(vec3<bool>(global1.x, arg_0.a, false), select(vec3<bool>(false, global1.x, false), vec3<bool>(arg_0.a, true, true), global1.x), global1.x))));
    global0 = Struct_3(max(vec4<u32>(global0.a.x, global0.a.x, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global0.a.x, 4294967295u, 67740u, arg_0.b.x)), ~global0.a), 79693u ^ global0.a.x), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(12238u, arg_0.b.x, 25756u, arg_0.b.x), global0.a))));
    var var_0 = arg_0.b;
    var_0 = min(~((~arg_0.b >> (reverseBits(arg_0.b) % vec3<u32>(32u))) | reverseBits(vec3<u32>(73187u, global0.a.x, arg_0.b.x))), firstLeadingBit(global0.a.xwz));
    var var_1 = vec3<i32>(u_input.b.x, u_input.b.x, 14395i) << (arg_0.b % vec3<u32>(32u));
    return false;
}

fn func_2() -> bool {
    var var_0 = countOneBits(u_input.a);
    global1 = select(vec2<bool>(all(!select(vec2<bool>(false, global1.x), vec2<bool>(true, false), true)), !func_3(Struct_1(global1.x, vec3<u32>(84671u, global0.a.x, 1u)))), vec2<bool>(all(vec4<bool>(all(vec2<bool>(true, global1.x)), !global1.x, global1.x & global1.x, all(vec4<bool>(false, global1.x, false, false)))), true), vec2<bool>(any(vec3<bool>(!global1.x, global1.x, false)), global1.x));
    var var_1 = ~(-min(~vec4<i32>(0i, 0i, u_input.a, 0i), -vec4<i32>(44295i, u_input.c.x, 25983i, 2147483647i)) << (~(~(~global0.a)) % vec4<u32>(32u)));
    global1 = select(vec2<bool>(any(select(select(vec4<bool>(global1.x, true, false, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x), global1.x), !vec4<bool>(global1.x, false, false, global1.x), false)), false), select(select(select(select(vec2<bool>(global1.x, global1.x), vec2<bool>(false, global1.x), vec2<bool>(global1.x, global1.x)), !vec2<bool>(global1.x, false), vec2<bool>(true, true)), vec2<bool>(any(vec2<bool>(global1.x, true)), global1.x), true), select(vec2<bool>(true, all(vec3<bool>(false, false, global1.x))), vec2<bool>(all(vec2<bool>(true, true)), !global1.x), select(!vec2<bool>(global1.x, false), !vec2<bool>(global1.x, global1.x), select(vec2<bool>(true, global1.x), vec2<bool>(global1.x, true), vec2<bool>(true, global1.x)))), vec2<bool>(false, global1.x)), false);
    var_0 = 2147483647i;
    return false;
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_mod_i32(10240i, _wgslsmith_dot_vec2_i32(abs(-vec2<i32>(0i, u_input.a)), firstTrailingBit(_wgslsmith_mod_vec2_i32(u_input.c.zz, vec2<i32>(u_input.c.x, 12791i))))) << (global0.a.x % 32u);
    let var_1 = true;
    var var_2 = vec4<bool>(var_1, !func_2(), var_1, true);
    var_2 = !(!select(vec4<bool>(true | var_1, !var_1, all(vec2<bool>(global1.x, true)), true), vec4<bool>(!var_2.x, true, any(var_2.wzz), global0.a.x >= 0u), vec4<bool>(true, all(var_2.zw), true, true)));
    var var_3 = select(var_2.wyy, !select(!select(var_2.wzw, var_2.yyx, true), !var_2.zyz, !vec3<bool>(var_2.x, var_2.x, var_1)), !select(select(vec3<bool>(true, var_1, var_1), select(vec3<bool>(global1.x, var_1, global1.x), var_2.ywy, vec3<bool>(false, false, global1.x)), var_2.xwy), select(var_2.wzw, vec3<bool>(global1.x, true, global1.x), true), true));
    return Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 562f) + 365f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -1002f)))))), Struct_1(true, vec3<u32>(~global0.a.x, 15640u, _wgslsmith_div_u32(_wgslsmith_mult_u32(59664u, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, global0.a.x, 0u, 4565u), vec4<u32>(global0.a.x, global0.a.x, global0.a.x, 0u))))), Struct_1(var_3.x, ~(global0.a.xzy << (global0.a.xxz % vec3<u32>(32u)))), select(vec2<bool>(false, true), vec2<bool>(true, var_2.x), select(!var_3.zz, vec2<bool>(var_3.x, false), false)), u_input.a);
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_3 {
    global0 = Struct_3(~reverseBits(~global0.a) >> (~_wgslsmith_add_vec4_u32(max(vec4<u32>(global0.a.x, global0.a.x, 4294967295u, 4294967295u), vec4<u32>(arg_0.c.b.x, 4294967295u, 15570u, 1u)), ~vec4<u32>(39724u, global0.a.x, 22487u, 4294967295u)) % vec4<u32>(32u)));
    let var_0 = Struct_3(min(global0.a << (~select(global0.a, vec4<u32>(arg_2.b.x, arg_2.b.x, 13228u, 100304u), global1.x) % vec4<u32>(32u)), global0.a));
    global0 = Struct_3(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_add_u32(arg_2.b.x, global0.a.x), 50246u, abs(3122u)), select(vec4<u32>(9975u, arg_2.b.x, 0u, global0.a.x), global0.a, !vec4<bool>(arg_3.b.a, false, false, arg_0.b.a))));
    var var_1 = ~select(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(40529u, arg_2.b.x, 31563u, 4294967295u), var_0.a), ~1u, 1u), min(arg_0.c.b, _wgslsmith_div_vec3_u32(arg_3.b.b, vec3<u32>(0u, 0u, global0.a.x)))), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.b.b.x, 15846u, 1u), ~_wgslsmith_add_vec3_u32(vec3<u32>(var_0.a.x, 25430u, var_0.a.x), global0.a.xyx)), select(!(!vec3<bool>(arg_0.c.a, arg_2.a, arg_0.d.x)), vec3<bool>(u_input.b.x >= 26353i, global1.x, arg_0.a >= -1024f), true));
    let var_2 = func_1().b;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(global0.a);
    global0 = func_4(func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-814f, _wgslsmith_f_op_f32(f32(-1f) * -407f))))), func_1().c, Struct_2(602f, func_1().b, func_1().c, vec2<bool>(true, false), u_input.c.x));
    global1 = !func_1().d;
    var var_1 = true;
    let var_2 = select(!(!vec4<bool>(any(vec2<bool>(false, true)), true, global1.x, !global1.x)), select(vec4<bool>(true, true, global1.x, false || func_1().d.x), vec4<bool>(global1.x, global1.x, true, global1.x), !select(vec4<bool>(true, global1.x, global1.x, true), !vec4<bool>(global1.x, global1.x, false, true), true)), false);
    var var_3 = ~(~firstLeadingBit(global0.a.x >> (16675u % 32u)) ^ _wgslsmith_add_u32(_wgslsmith_clamp_u32(0u << (var_0.a.x % 32u), 15886u, ~var_0.a.x), 1u));
    global1 = !vec2<bool>(!var_2.x, var_2.x);
    let var_4 = global1.x;
    var var_5 = var_2.zwy;
    let x = u_input.a;
    s_output = StorageBuffer(-11444i);
}

