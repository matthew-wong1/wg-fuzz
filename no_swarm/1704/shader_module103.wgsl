struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: f32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec3<u32>;

var<private> global2: i32;

var<private> global3: array<vec2<u32>, 19>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: i32, arg_3: f32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(arg_1 - 1456f))))));
    var var_1 = vec3<u32>(max(~22405u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(abs(global1.x), _wgslsmith_clamp_u32(global1.x, 1808u, global1.x), abs(4294967295u), 4294967295u), ~min(vec4<u32>(0u, global1.x, 4294967295u, 1u), vec4<u32>(global1.x, 0u, global1.x, 2184u))) ^ global1.x, ~1u);
    global3 = array<vec2<u32>, 19>();
    global3 = array<vec2<u32>, 19>();
    var_1 = vec3<u32>(1u, 4294967295u, 1u);
    return _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, ~37124u, ~12285u), _wgslsmith_add_vec3_u32(abs(vec3<u32>(var_1.x, 9022u, 4294967295u)), firstTrailingBit(vec3<u32>(63466u, 68724u, var_1.x)))), _wgslsmith_mod_u32(abs(4294967295u) >> (~global1.x % 32u), 4294967295u), ~reverseBits(~4294967295u)), ~_wgslsmith_mult_vec4_u32(~(vec4<u32>(global1.x, global1.x, var_1.x, 0u) ^ vec4<u32>(global1.x, global1.x, global1.x, 11355u)), firstTrailingBit(vec4<u32>(0u, 0u, 29112u, var_1.x))));
}

fn func_2() -> u32 {
    global1 = ~vec3<u32>(_wgslsmith_mod_u32(29237u, ~global1.x), 4294967295u, _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, 21521u, 6736u, global1.x), vec4<u32>(global1.x, 4294967295u, 1u, global1.x)), firstLeadingBit(~vec4<u32>(global1.x, global1.x, 1u, 3266u))));
    let var_0 = Struct_1(-vec4<i32>(u_input.a.x, ~u_input.b, -29685i, select(select(u_input.b, u_input.b, true), 1i, all(vec4<bool>(false, false, false, false)))), countOneBits(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, 0u, 56465u), vec3<u32>(global1.x, global1.x, 0u)))), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(45314u, global1.x, global1.x, global1.x), func_3(-768f, 230f, u_input.b, -145f)) & ~(~vec4<u32>(global1.x, global1.x, global1.x, 31247u)), select(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, global1.x, 0u, 4294967295u), vec4<u32>(7450u, 25945u, 0u, global1.x)), ~vec4<u32>(10564u, 1u, 0u, 4294967295u), vec4<bool>(true, true, false, true)) >> (vec4<u32>(~28887u, ~0u, global1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(25100u, 40847u, global1.x), vec3<u32>(global1.x, global1.x, 75020u))) % vec4<u32>(32u))), 1084f, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-204f, _wgslsmith_f_op_f32(334f - -290f), _wgslsmith_f_op_f32(471f * -871f), -1308f)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.e.xy))))));
    var var_2 = global1.x > ~firstLeadingBit(~0u);
    var var_3 = var_0;
    return var_0.b.x;
}

fn func_1() -> StorageBuffer {
    let var_0 = -14939i;
    var var_1 = Struct_1(~(~vec4<i32>(global0.x, 2147483647i >> (global1.x % 32u), i32(-1i) * -2147483647i, ~u_input.b)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(_wgslsmith_mod_u32(global1.x, global1.x), ~global1.x, 0u & global1.x), _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(22130u, global1.x, global1.x)), ~(vec3<u32>(global1.x, global1.x, global1.x) | vec3<u32>(global1.x, global1.x, 1u)), vec3<u32>(global1.x, func_2(), global1.x)), ~(vec3<u32>(22385u, global1.x, global1.x) & vec3<u32>(4294967295u, 61787u, global1.x)) & vec3<u32>(1u, global1.x << (4294967295u % 32u), ~1u)), _wgslsmith_sub_u32(global1.x >> ((global1.x | (21401u | global1.x)) % 32u), _wgslsmith_div_u32(abs(global1.x) << (~4294967295u % 32u), ~(4294967295u >> (0u % 32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-659f)), _wgslsmith_f_op_f32(f32(-1f) * -397f))) * _wgslsmith_f_op_f32(abs(-1553f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1342f, 426f, 852f, -155f), vec4<f32>(582f, -943f, 293f, -1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-715f, -1766f, 1435f, 407f) + vec4<f32>(501f, -699f, 1334f, -442f))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1543f, 143f, 1392f, 1065f))))))));
    global3 = array<vec2<u32>, 19>();
    let var_2 = (vec2<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.a.x, var_0), vec3<i32>(var_0, var_1.a.x, 1i)), 4477i) >> (vec2<u32>(max(global1.x & global1.x, var_1.b.x & 40096u), 245u) % vec2<u32>(32u))) & _wgslsmith_mod_vec2_i32(global0.xz, vec2<i32>(-1i, var_0));
    let var_3 = vec2<f32>(var_1.e.x, _wgslsmith_f_op_f32(-643f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -644f)))));
    return StorageBuffer(~u_input.a.zx, vec3<i32>(-min(global0.x, ~var_1.a.x), 3153i & _wgslsmith_div_i32(u_input.b, -13030i), countOneBits(1i)), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

