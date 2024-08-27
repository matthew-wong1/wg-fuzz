struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: f32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec3<f32>, 31>;

var<private> global2: array<Struct_1, 22>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    var var_0 = Struct_1(vec2<bool>(_wgslsmith_clamp_u32(global0.d.x, global0.d.x, _wgslsmith_dot_vec3_u32(global0.d, vec3<u32>(0u, 50350u, global0.d.x))) == ~(~global0.d.x), !global0.b.x), global0.a, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-279f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -956f))), global0.a.x)))), select(global0.d | _wgslsmith_mult_vec3_u32(global0.d, vec3<u32>(global0.d.x, global0.d.x, 4294967295u)), min(global0.d, ~(~vec3<u32>(31524u, global0.d.x, global0.d.x))), true));
    global0 = Struct_1(vec2<bool>(global0.c <= _wgslsmith_f_op_f32(sign(global0.c)), false), global0.a, -1285f, var_0.d);
    var var_1 = u_input.a.yx;
    global2 = array<Struct_1, 22>();
    let var_2 = select(~((_wgslsmith_add_vec2_u32(vec2<u32>(global0.d.x, 43545u), global0.d.zz) & ~global0.d.xx) ^ firstLeadingBit(~vec2<u32>(1131u, global0.d.x))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(51466u, ~var_0.d.x), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.d.x, 5496u), global0.d.yx, var_0.d.xx), var_0.d.yy)), global0.a);
    return ~_wgslsmith_mod_u32(15087u, ~(~select(var_2.x, 86757u, var_0.b.x)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>) -> vec2<bool> {
    var var_0 = Struct_1(select(arg_0.a, global0.a, select(!arg_0.a, arg_0.b, !vec2<bool>(false, arg_0.a.x))), vec2<bool>(!(global0.a.x | (18089i != u_input.a.x)), false), _wgslsmith_f_op_f32(-global0.c), min(global0.d, _wgslsmith_div_vec3_u32(select(arg_0.d, _wgslsmith_mult_vec3_u32(global0.d, vec3<u32>(13640u, global0.d.x, arg_1.x)), !vec3<bool>(false, arg_0.b.x, arg_0.b.x)), vec3<u32>(49308u, global0.d.x, _wgslsmith_mod_u32(arg_0.d.x, global0.d.x)))));
    let var_1 = select(~vec4<u32>(39260u, ~1u, 1u, ~global0.d.x), vec4<u32>(0u, select(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 25646u, 64669u, var_0.d.x), vec4<u32>(21254u, global0.d.x, 7903u, 1u)), ~vec4<u32>(var_0.d.x, 4294967295u, 36878u, global0.d.x)), arg_0.d.x, arg_0.a.x), 18772u ^ (var_0.d.x | func_3()), var_0.d.x), !select(select(!vec4<bool>(arg_0.a.x, true, arg_0.b.x, false), vec4<bool>(var_0.b.x, true, false, global0.a.x), true), vec4<bool>(var_0.b.x, !arg_0.a.x, true, all(vec2<bool>(false, false))), var_0.b.x));
    global1 = array<vec3<f32>, 31>();
    let var_2 = global2[_wgslsmith_index_u32(~4294967295u & _wgslsmith_sub_u32(1u, firstLeadingBit(arg_1.x)), 22u)];
    global2 = array<Struct_1, 22>();
    return !select(select(vec2<bool>(!global0.b.x, true), vec2<bool>(all(var_2.b), true), select(!vec2<bool>(arg_0.b.x, false), var_0.a, !var_2.a)), select(select(vec2<bool>(true, false), select(vec2<bool>(false, var_2.b.x), arg_0.a, global0.a), global0.d.x <= global0.d.x), !select(global0.a, vec2<bool>(true, global0.b.x), true), any(vec3<bool>(global0.b.x, arg_0.b.x, global0.b.x))), arg_0.a);
}

fn func_1() -> f32 {
    var var_0 = reverseBits(~_wgslsmith_div_vec4_u32(~countOneBits(vec4<u32>(24998u, global0.d.x, global0.d.x, global0.d.x)), ~_wgslsmith_add_vec4_u32(vec4<u32>(79283u, 21008u, 1u, global0.d.x), vec4<u32>(global0.d.x, global0.d.x, global0.d.x, global0.d.x))));
    var var_1 = global2[_wgslsmith_index_u32(0u, 22u)];
    var_1 = Struct_1(!select(global0.b, func_2(Struct_1(global0.b, vec2<bool>(false, global0.a.x), var_1.c, vec3<u32>(global0.d.x, var_1.d.x, global0.d.x)), reverseBits(var_0.yx)), func_2(Struct_1(vec2<bool>(false, global0.a.x), var_1.b, -183f, vec3<u32>(91962u, 67134u, 4294967295u)), ~var_0.zz).x), !(!global0.b), _wgslsmith_f_op_f32(step(global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-791f))))), vec3<u32>(_wgslsmith_sub_u32(~32465u, _wgslsmith_dot_vec2_u32(var_1.d.yz, var_1.d.xy)), global0.d.x, var_1.d.x) | vec3<u32>(~(~0u), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.d.x, 4294967295u, 91677u, global0.d.x), vec4<u32>(101713u, 38597u, 43047u, 52909u))), _wgslsmith_mod_u32(_wgslsmith_mod_u32(8764u, 4294967295u), ~var_1.d.x)));
    global0 = global2[_wgslsmith_index_u32(17817u, 22u)];
    let var_2 = (var_1.d.x >> (abs(20464u) % 32u)) ^ 29055u;
    return _wgslsmith_f_op_f32(abs(958f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 22>();
    var var_0 = ~(u_input.a.x | (i32(-1i) * -2147483647i));
    let var_1 = vec3<i32>(u_input.a.x, _wgslsmith_div_i32(u_input.b, u_input.b), _wgslsmith_clamp_i32(-((i32(-1i) * -1i) >> (abs(global0.d.x) % 32u)), 16672i, 0i));
    var var_2 = global2[_wgslsmith_index_u32(4294967295u, 22u)];
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()));
    var var_4 = true && global0.a.x;
    let var_5 = (vec4<u32>(max(~4294967295u, 70069u), ~1229u & var_2.d.x, ~(~var_2.d.x), var_2.d.x) << (_wgslsmith_mult_vec4_u32(select(reverseBits(vec4<u32>(0u, 0u, var_2.d.x, var_2.d.x)), select(vec4<u32>(var_2.d.x, global0.d.x, var_2.d.x, var_2.d.x), vec4<u32>(1u, 1u, global0.d.x, 4294967295u), vec4<bool>(var_2.b.x, true, false, true)), true), vec4<u32>(var_2.d.x >> (var_2.d.x % 32u), ~1u, global0.d.x, 0u)) % vec4<u32>(32u))) << (vec4<u32>(var_2.d.x, global0.d.x, ~(_wgslsmith_mult_u32(22534u, global0.d.x) << (36880u % 32u)), countOneBits(18197u)) % vec4<u32>(32u));
    var var_6 = ~firstLeadingBit(29134i);
    var var_7 = global2[_wgslsmith_index_u32(~firstLeadingBit(~var_2.d.x), 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1()), var_2.c)), var_7.d.x);
}

