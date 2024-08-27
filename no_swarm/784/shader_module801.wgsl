struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
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

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 47354i, 2147483647i)), Struct_1(vec4<i32>(38006i, i32(-2147483648), 40825i, 20082i)), Struct_1(vec4<i32>(0i, 1i, -5924i, -33926i)), Struct_1(vec4<i32>(33856i, 0i, 30283i, -1i)), Struct_1(vec4<i32>(0i, 1i, 1i, 0i)), Struct_1(vec4<i32>(1i, 0i, 46471i, 35790i)));

var<private> global1: vec3<i32>;

var<private> global2: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    var var_0 = select(select(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, false, any(vec3<bool>(true, false, true))), vec4<bool>(false, false, true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false))), select(vec4<bool>(all(vec3<bool>(false, false, false)), all(vec3<bool>(false, true, true)), true, all(vec2<bool>(true, true))), vec4<bool>(true, true, true, 2157u < arg_0.x), ~0u == u_input.b)), select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), false), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true))), true != !(select(-13855i, 2147483647i, false) > ~21910i));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -604f)));
    var var_2 = min(81812i, 28175i);
    let var_3 = global0[_wgslsmith_index_u32(u_input.a, 6u)];
    var_0 = select(select(vec4<bool>(all(select(vec2<bool>(var_0.x, true), vec2<bool>(false, var_0.x), var_0.x)), !var_0.x, var_0.x, false), !(!vec4<bool>(var_0.x, true, var_0.x, var_0.x)), vec4<bool>(all(vec4<bool>(var_0.x, var_0.x, var_0.x, false)), true, all(var_0.xzy), true)), select(!vec4<bool>(var_0.x, any(vec4<bool>(var_0.x, true, true, false)), !var_0.x, 1u != u_input.a), select(select(select(vec4<bool>(true, false, true, var_0.x), vec4<bool>(false, false, false, false), var_0.x), select(vec4<bool>(false, false, false, var_0.x), vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(var_0.x, false, var_0.x, var_0.x)), true), !vec4<bool>(false, true, var_0.x, var_0.x), vec4<bool>(any(vec4<bool>(var_0.x, var_0.x, var_0.x, true)), true, var_0.x, var_0.x)), select(!select(vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x), false), vec4<bool>(var_0.x, var_0.x, u_input.a <= 0u, true), select(select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(true, var_0.x, false, false), vec4<bool>(var_0.x, true, var_0.x, false)), vec4<bool>(var_0.x, false, var_0.x, true), any(vec3<bool>(var_0.x, false, var_0.x))))), var_0.x);
    return firstLeadingBit(max(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~arg_0.zxw, arg_0.zxz), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 45501u, u_input.b), arg_0.zwy)), u_input.b));
}

fn func_2(arg_0: i32, arg_1: bool) -> vec4<i32> {
    var var_0 = ~u_input.b;
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    var var_1 = firstTrailingBit(min(~vec3<i32>(-16712i, u_input.c.x, arg_0), global2.a.zzx)) ^ -u_input.c;
    var var_2 = ~(~_wgslsmith_mod_u32((4294967295u & u_input.a) >> (65303u % 32u), func_3(max(vec4<u32>(u_input.a, u_input.a, u_input.a, 53663u), vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)))));
    return _wgslsmith_mod_vec4_i32(vec4<i32>(reverseBits(6956i), -select(~(-2147483647i), arg_0, true), ~arg_0, -2147483647i), global2.a);
}

fn func_1() -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(1u, 6u)];
    var var_1 = Struct_1(func_2(u_input.c.x, select(true, true, true)));
    let var_2 = ~_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(14206u, 1u), vec2<u32>(0u, 24459u), vec2<u32>(56708u, u_input.a)), ~vec2<u32>(u_input.b, 4294967295u)) << (~(~vec2<u32>(2758u, 27695u)) % vec2<u32>(32u)), vec2<u32>(reverseBits(11810u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, 33710u), vec3<u32>(u_input.a, u_input.b, u_input.a))));
    global1 = vec3<i32>(-abs(abs(15224i)), global2.a.x, func_2(~30853i, select(all(vec3<bool>(true, true, false)), true, any(vec4<bool>(false, false, false, true))) & (_wgslsmith_f_op_f32(floor(-1501f)) < 378f)).x);
    var_1 = Struct_1(global2.a);
    return reverseBits(~33715i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(vec4<i32>(firstLeadingBit(func_1()), 31228i | _wgslsmith_add_i32(global2.a.x << (u_input.b % 32u), max(0i, u_input.c.x)), func_1(), global1.x >> (u_input.a % 32u)));
    var var_0 = select(select(vec2<bool>(true, true), select(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), !vec2<bool>(-49457i >= global1.x, any(vec4<bool>(false, true, true, false)))), select(vec2<bool>(true, !all(vec4<bool>(false, false, true, false))), vec2<bool>(all(vec2<bool>(true, true)), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)))), max(1u, u_input.b) == (u_input.a << (u_input.b % 32u))), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false)), select(vec2<bool>(false, true), vec2<bool>(false, false), true), _wgslsmith_f_op_f32(round(-1000f)) < -500f), vec2<bool>(!any(vec3<bool>(false, false, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    let var_1 = global0[_wgslsmith_index_u32((_wgslsmith_mult_u32(~(0u >> (u_input.b % 32u)), ~_wgslsmith_mod_u32(0u, u_input.a)) & u_input.b) >> (reverseBits(0u) % 32u), 6u)];
    var_0 = vec2<bool>(var_0.x, true);
    global2 = global0[_wgslsmith_index_u32(~108434u, 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(35381u);
}

