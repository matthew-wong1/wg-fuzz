struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: Struct_1;

var<private> global1: array<vec3<i32>, 6>;

var<private> global2: array<Struct_3, 28>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> vec2<f32> {
    let var_0 = 1i;
    global0 = Struct_1(true, vec3<u32>(min(657u, reverseBits(arg_0.a)), reverseBits(~global0.b.x), _wgslsmith_mod_u32(global0.b.x, _wgslsmith_dot_vec2_u32(global0.b.zx, global0.b.zy))) & ~(countOneBits(global0.b) << (~global0.b % vec3<u32>(32u))));
    global0 = Struct_1(any(vec2<bool>(select(arg_0.d, false, global0.a), arg_0.d)), global0.b & vec3<u32>(_wgslsmith_clamp_u32(arg_0.a, arg_0.a, 1u) >> (arg_0.a % 32u), arg_0.a, ~1u));
    global2 = array<Struct_3, 28>();
    var var_1 = !any(!arg_0.c.a);
    return vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.b, _wgslsmith_f_op_f32(f32(-1f) * -602f), global0.a)), _wgslsmith_f_op_f32(trunc(-662f)))));
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_3(Struct_3(~(43011u >> (global0.b.x % 32u)), _wgslsmith_f_op_f32(select(-631f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-704f, 928f))), global0.a)), Struct_2(vec2<bool>(true, 4294967295u >= global0.b.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -442f)))), global0.a), _wgslsmith_f_op_f32(f32(-1f) * -129f)));
    let var_1 = abs(vec2<u32>(4294967295u, _wgslsmith_mod_u32(0u, _wgslsmith_add_u32(global0.b.x, 37552u)))) >> (~vec2<u32>(12304u, ~max(4294967295u, global0.b.x)) % vec2<u32>(32u));
    var var_2 = Struct_2(!(!select(select(vec2<bool>(false, global0.a), vec2<bool>(true, global0.a), vec2<bool>(global0.a, false)), vec2<bool>(global0.a, global0.a), global0.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x))), -835f)));
    global0 = Struct_1(!select(true || any(var_2.a), true, true), ~(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1.x, 4294967295u, var_1.x), vec4<u32>(global0.b.x, global0.b.x, 1u, 1u)), abs(global0.b.x), var_1.x)));
    return global2[_wgslsmith_index_u32(max(max(1u, global0.b.x), var_1.x), 28u)];
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = reverseBits(global0.b) | _wgslsmith_clamp_vec3_u32(~global0.b, max(max(_wgslsmith_mod_vec3_u32(global0.b, vec3<u32>(arg_0, 27002u, 0u)), reverseBits(global0.b)), vec3<u32>(4294967295u, 0u, 20499u)), ~vec3<u32>(_wgslsmith_mod_u32(arg_0, 12237u), arg_0, select(global0.b.x, 4294967295u, global0.a)));
    global1 = array<vec3<i32>, 6>();
    var var_1 = func_2();
    var var_2 = global1[_wgslsmith_index_u32(min(~var_1.a & 4294967295u, ~countOneBits(22382u << (arg_0 % 32u))), 6u)];
    global1 = array<vec3<i32>, 6>();
    return Struct_1(!global0.a, global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(~global0.b.x, 28u)];
    global0 = Struct_1(false, ~vec3<u32>(_wgslsmith_dot_vec3_u32(global0.b | vec3<u32>(var_0.a, 61618u, 4049u), ~vec3<u32>(global0.b.x, var_0.a, global0.b.x)), 0u, global0.b.x));
    global2 = array<Struct_3, 28>();
    global0 = func_1(42786u);
    let var_1 = Struct_1(false, ~max(_wgslsmith_clamp_vec3_u32(global0.b, vec3<u32>(var_0.a, 29571u, 31107u) | vec3<u32>(global0.b.x, 1u, 17126u), _wgslsmith_mod_vec3_u32(global0.b, vec3<u32>(0u, 1u, global0.b.x))), _wgslsmith_mod_vec3_u32(global0.b ^ global0.b, ~global0.b)));
    var var_2 = 72364i;
    global2 = array<Struct_3, 28>();
    let var_3 = select(select(select(vec3<bool>(true, func_1(1u).a, false), !select(vec3<bool>(true, true, var_1.a), vec3<bool>(global0.a, global0.a, global0.a), false), vec3<bool>(false, var_1.a, var_0.d)), vec3<bool>(true, !(!global0.a), select(global0.a || var_0.d, true, false)), vec3<bool>(false, var_1.a, var_1.a)), select(select(vec3<bool>(var_0.c.a.x, false, true), select(vec3<bool>(true, false, var_1.a), !vec3<bool>(var_0.c.a.x, var_1.a, false), !vec3<bool>(var_0.c.a.x, false, false)), !vec3<bool>(false, global0.a, global0.a)), vec3<bool>(u_input.a >= _wgslsmith_mult_i32(-1i, -2147483647i), var_1.a && (var_0.d | var_0.d), !var_0.d), select(!vec3<bool>(false, false, var_0.d), !select(vec3<bool>(true, global0.a, false), vec3<bool>(var_0.d, false, true), false), select(vec3<bool>(true, true, false), select(vec3<bool>(var_0.d, true, global0.a), vec3<bool>(true, true, var_1.a), vec3<bool>(true, false, global0.a)), !vec3<bool>(var_0.d, false, var_1.a)))), select(select(!(!vec3<bool>(true, var_1.a, false)), vec3<bool>(var_1.a, var_0.d, !global0.a), global0.a || true), !vec3<bool>(true, all(vec3<bool>(false, var_0.d, false)), var_1.a | false), func_1(func_2().a).a));
    var_2 = ~1i;
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

