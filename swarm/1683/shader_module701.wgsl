struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

var<private> global1: Struct_1;

var<private> global2: vec3<i32>;

var<private> global3: Struct_2 = Struct_2(Struct_1(true, vec2<i32>(9841i, -1i), vec4<u32>(0u, 43072u, 24265u, 55370u)), vec2<u32>(30926u, 62050u), vec4<u32>(21274u, 1864u, 26361u, 6827u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> vec2<bool> {
    let var_0 = Struct_2(Struct_1(!all(select(vec2<bool>(true, arg_0.a.a), vec2<bool>(global3.a.a, arg_0.a.a), global1.a)), vec2<i32>(global3.a.b.x, 1i), arg_0.a.c), vec2<u32>(countOneBits(select(97954u, ~45619u, true)), global1.c.x), ~arg_0.a.c);
    global3 = global0[_wgslsmith_index_u32(0u, 28u)];
    global2 = -countOneBits(vec3<i32>(-1i, global1.b.x, max(-1i, var_0.a.b.x)) << (reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(global3.a.c.x, global1.c.x, global3.b.x), arg_0.c.wyx)) % vec3<u32>(32u)));
    global3 = var_0;
    var var_1 = Struct_2(global3.a, max(vec2<u32>(~0u, ~u_input.d), ~(~global3.b)) >> (max(~global3.c.xy, _wgslsmith_mult_vec2_u32(arg_0.a.c.xx << (global3.a.c.yy % vec2<u32>(32u)), vec2<u32>(arg_0.b.x, 1u))) % vec2<u32>(32u)), var_0.c ^ vec4<u32>(u_input.d, ~arg_0.c.x, ~u_input.d >> (abs(1u) % 32u), countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.d), var_0.a.c.yy))));
    return vec2<bool>(any(vec4<bool>(4294967295u > (var_1.b.x | 13622u), 1u < var_0.c.x, true, true)), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(568f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-574f * -251f)))))) * -1747f);
    global0 = array<Struct_2, 28>();
    var_0 = -2274f;
    var var_1 = select(!(!vec2<bool>(!global3.a.a, global1.c.x < 3849u)), vec2<bool>(!global3.a.a, global3.a.a), !func_1(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, u_input.d), global3.a.c.x), 28u)], -1i));
    var var_2 = true && ((_wgslsmith_dot_vec2_u32(~global1.c.xx, vec2<u32>(0u, 0u)) == u_input.d) && var_1.x);
    var var_3 = -global1.b.x | _wgslsmith_add_i32((_wgslsmith_mod_i32(u_input.a.x, global3.a.b.x) | (0i ^ global2.x)) | reverseBits(i32(-1i) * -1i), global2.x);
    var var_4 = vec3<i32>(abs(_wgslsmith_clamp_i32(-_wgslsmith_mod_i32(u_input.b.x, global2.x), _wgslsmith_dot_vec3_i32(u_input.b.yyy, vec3<i32>(global3.a.b.x, global2.x, u_input.a.x)), ~0i)), min(global1.b.x, firstLeadingBit(global2.x)), -1i | _wgslsmith_dot_vec2_i32(~vec2<i32>(global1.b.x, global1.b.x) << (vec2<u32>(global1.c.x, global3.c.x) % vec2<u32>(32u)), global2.xx));
    let var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -819f) + _wgslsmith_f_op_f32(f32(-1f) * -1323f)), _wgslsmith_f_op_f32(select(-357f, _wgslsmith_f_op_f32(min(1936f, 1484f)), global1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(416f, -977f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(2330f, -700f))))));
    var var_6 = ~(~35130i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, var_5.x, -287f);
}

