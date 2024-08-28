struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_4,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec4<bool>, 1>;

var<private> global2: Struct_1;

var<private> global3: array<vec2<u32>, 17>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<i32>) -> vec3<i32> {
    let var_0 = _wgslsmith_clamp_i32(0i, -u_input.b, _wgslsmith_mult_i32(u_input.b, 24607i)) << (_wgslsmith_div_u32(28239u, ~(~_wgslsmith_div_u32(global2.b.x, 2592u))) % 32u);
    var var_1 = true;
    global2 = Struct_1(global2.c.x, arg_0.zxz ^ _wgslsmith_add_vec3_u32(~(vec3<u32>(global2.b.x, 4294967295u, 27123u) & vec3<u32>(global0.d.b.x, 1u, global0.c.b.x)), reverseBits(firstTrailingBit(vec3<u32>(0u, arg_0.x, 63849u)))), vec4<bool>(global0.a | any(!global0.d.c.wwx), true || all(global0.c.c.xx), false, !global0.d.c.x));
    var_1 = global0.b.c.x;
    var var_2 = Struct_4(!vec2<bool>(global0.b.c.x, false || global2.a));
    return ~abs(min(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0, u_input.b, var_0), reverseBits(vec3<i32>(24842i, var_0, var_0)), reverseBits(vec3<i32>(var_0, 2147483647i, 1i))), ~min(vec3<i32>(var_0, 30222i, u_input.b), vec3<i32>(u_input.b, -12119i, 11804i))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: Struct_3) -> Struct_4 {
    global1 = array<vec4<bool>, 1>();
    global1 = array<vec4<bool>, 1>();
    global1 = array<vec4<bool>, 1>();
    global0 = Struct_3(any(!(!global0.d.c.yyy)), global0.c, global0.b, Struct_1(any(select(!global0.b.c.zzw, select(vec3<bool>(false, global0.a, false), vec3<bool>(global2.a, false, false), vec3<bool>(false, true, arg_2.c.a)), select(vec3<bool>(arg_2.a, true, true), vec3<bool>(true, false, arg_0.x), vec3<bool>(false, true, false)))), vec3<u32>(~select(arg_2.d.b.x, 34658u, true), arg_2.b.b.x, 1u), select(!select(vec4<bool>(global2.a, true, false, global0.d.c.x), vec4<bool>(arg_0.x, arg_2.a, true, false), global2.a), !vec4<bool>(global0.d.a, false, false, arg_0.x), global2.a)));
    var var_0 = _wgslsmith_div_u32(countOneBits(~global2.b.x), u_input.a.x ^ (countOneBits(global0.b.b.x) ^ (_wgslsmith_clamp_u32(arg_2.c.b.x, 1u, 11190u) | arg_2.b.b.x)));
    return Struct_4(vec2<bool>(((global2.c.x | false) != true) || true, !global0.c.a));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4) -> f32 {
    global3 = array<vec2<u32>, 17>();
    global2 = global0.d;
    let var_0 = vec4<i32>(u_input.b, u_input.b, u_input.b, min(u_input.b, -u_input.b | u_input.b)) << (_wgslsmith_mod_vec4_u32(~(select(vec4<u32>(0u, 93848u, 10491u, u_input.d), vec4<u32>(global2.b.x, 72718u, u_input.c, u_input.c), global1[_wgslsmith_index_u32(59817u, 1u)]) & vec4<u32>(59661u, global0.b.b.x, global2.b.x, 20689u)), ~(~(vec4<u32>(global2.b.x, 1u, 1u, global2.b.x) ^ vec4<u32>(global2.b.x, global0.b.b.x, global0.b.b.x, global0.b.b.x)))) % vec4<u32>(32u));
    var var_1 = ~var_0.x;
    let var_2 = 1f;
    return var_2;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_3(global0.c.c.xxz, func_2(vec4<u32>(13709u, global0.c.b.x, global0.d.b.x, 4294967295u), vec2<i32>(-11257i, 1181i)), Struct_3(global0.c.c.x, global0.c, global0.d, Struct_1(true, vec3<u32>(global0.c.b.x, 73438u, 0u), vec4<bool>(global0.b.a, global2.a, false, global2.c.x)))), func_3(vec3<bool>(global0.b.a, false, global0.a), vec3<i32>(2147483647i, -38981i, 1i), Struct_3(global2.a, Struct_1(global0.a, global0.d.b, vec4<bool>(global2.a, global2.c.x, global2.a, global2.a)), Struct_1(false, global0.d.b, global0.d.c), Struct_1(global2.a, global0.c.b, vec4<bool>(global0.d.c.x, false, global2.a, global2.c.x))))))) * -330f);
    var var_1 = Struct_3(true, global0.d, Struct_1(global2.a, global2.b, select(global0.b.c, global2.c, select(global2.c, vec4<bool>(global0.d.c.x, global2.c.x, false, global2.a), vec4<bool>(true, true, false, global2.a)))), Struct_1(all(vec3<bool>(global2.a, false, global0.c.c.x)) || !all(vec3<bool>(global0.a, global0.a, true)), min(global2.b, min(_wgslsmith_div_vec3_u32(global0.b.b, global0.b.b), vec3<u32>(global0.d.b.x, global2.b.x, u_input.a.x) >> (vec3<u32>(0u, 4294967295u, global2.b.x) % vec3<u32>(32u)))), select(global2.c, vec4<bool>(var_0 >= var_0, global2.a, true, false), select(vec4<bool>(false, global0.a, true, global2.c.x), select(vec4<bool>(true, false, global0.c.a, global2.c.x), vec4<bool>(global0.b.c.x, global0.c.c.x, true, true), global2.a), true))));
    var var_2 = Struct_5(vec3<i32>(u_input.b, reverseBits(~u_input.b), _wgslsmith_mult_i32(reverseBits(0i), _wgslsmith_clamp_i32(select(35226i, u_input.b, global0.b.a), 1781i, firstLeadingBit(u_input.b)))), Struct_4(func_3(!vec3<bool>(global0.c.c.x, true, var_1.a), abs(_wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.b, -49335i), vec3<i32>(u_input.b, u_input.b, u_input.b))), Struct_3(var_1.a, var_1.d, global0.d, Struct_1(global0.b.a, vec3<u32>(49023u, global0.d.b.x, var_1.b.b.x), global2.c))).a), _wgslsmith_f_op_f32(f32(-1f) * -924f));
    global0 = Struct_3(true, global0.c, Struct_1(any(var_1.c.c) != !(global0.a & global0.d.c.x), select(vec3<u32>(2229u, 142006u, global2.b.x), var_1.c.b, any(vec3<bool>(true, false, true))) | ~(~vec3<u32>(global0.d.b.x, global0.b.b.x, var_1.d.b.x)), vec4<bool>(func_3(select(global2.c.xzx, vec3<bool>(global2.a, global2.a, true), var_2.b.a.x), var_2.a, Struct_3(global2.c.x, var_1.b, var_1.c, var_1.b)).a.x, !global0.b.c.x, true, !var_1.a | true)), global0.c);
    var var_3 = Struct_4(!vec2<bool>(~(-13016i) >= var_2.a.x, false));
    return global0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(global0.b.a, global0.b, func_1(), global0.c);
    var var_1 = all(func_1().c);
    global2 = func_1();
    let var_2 = var_0.d.a;
    let var_3 = vec3<bool>(false, any(global0.c.c.zw), !all(vec4<bool>(false, var_0.c.c.x, false, var_0.a)) || any(vec2<bool>(true, global0.b.c.x && true)));
    let var_4 = _wgslsmith_div_u32(~u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(firstLeadingBit(var_0.c.b.x), ~u_input.d, min(u_input.a.x, 4294967295u)), global2.b.x, global0.c.b.x), ~(vec3<u32>(39228u, 9587u, u_input.c) & global0.d.b)));
    let x = u_input.a;
    s_output = StorageBuffer(select(var_0.c.b << (~(global2.b << (var_0.b.b % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(18951u, var_0.d.b.x, var_0.b.b.x, 4294967295u), reverseBits(vec4<u32>(62273u, var_0.b.b.x, var_4, 0u))), global2.b.x, ~(~53162u)), var_0.d.c.xyy));
}

