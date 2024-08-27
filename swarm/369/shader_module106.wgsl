struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec3<bool>,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(29300i, 2147483647i, 1i, -65274i);

var<private> global1: array<vec3<bool>, 10>;

var<private> global2: array<u32, 20> = array<u32, 20>(0u, 4294967295u, 16741u, 36221u, 0u, 4294967295u, 6008u, 9354u, 12838u, 4294967295u, 8307u, 4294967295u, 4294967295u, 0u, 4294967295u, 0u, 25658u, 4294967295u, 1u, 0u);

var<private> global3: array<u32, 7> = array<u32, 7>(37719u, 39116u, 0u, 0u, 0u, 1u, 4294967295u);

var<private> global4: vec2<u32> = vec2<u32>(0u, 57399u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3) -> vec4<i32> {
    return vec4<i32>(24774i << (global4.x % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(0i, global0.x, -2147483647i), ~vec3<i32>(global0.x, arg_2.e.c, -12709i)), arg_2.e.e.d.zzw) << (~select(global4.x, min(58141u, 12466u), all(vec4<bool>(arg_2.e.d.x, true, arg_0.e.x, false))) % 32u), i32(-1i) * -1i, ~_wgslsmith_clamp_i32(arg_0.d.x, -abs(global0.x), _wgslsmith_clamp_i32(2147483647i ^ global0.x, _wgslsmith_div_i32(arg_2.a.d.x, 2147483647i), arg_0.d.x)));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32) -> u32 {
    let var_0 = ~8649u ^ ~(~u_input.a.x);
    let var_1 = arg_0.x;
    global4 = vec2<u32>(23104u, u_input.b);
    let var_2 = vec4<i32>(arg_1, (i32(-1i) * -(~arg_1)) ^ arg_1, _wgslsmith_clamp_i32((arg_1 >> (1u % 32u)) >> (_wgslsmith_add_u32(u_input.a.x, 39288u) % 32u), 0i, arg_1) & -1i, ~(-21315i));
    var var_3 = false;
    return ~_wgslsmith_dot_vec2_u32(~reverseBits(u_input.a.xz), vec2<u32>(~88185u, 4294967295u)) << (_wgslsmith_mod_u32(reverseBits(max(4294967295u >> (global3[_wgslsmith_index_u32(4294967295u, 7u)] % 32u), global4.x)), ~(86529u << (global2[_wgslsmith_index_u32(u_input.b, 20u)] % 32u)) ^ ~1u) % 32u);
}

fn func_2() -> StorageBuffer {
    global1 = array<vec3<bool>, 10>();
    global0 = select(~(min(vec4<i32>(-12654i, global0.x, global0.x, 29757i), vec4<i32>(global0.x, 43307i, -2147483647i, 3406i)) >> (select(vec4<u32>(global3[_wgslsmith_index_u32(3038u, 7u)], 104168u, u_input.a.x, 0u), vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(6272u, 20u)], 61796u, global3[_wgslsmith_index_u32(global4.x, 7u)]), true) % vec4<u32>(32u))) | _wgslsmith_mod_vec4_i32(~min(vec4<i32>(global0.x, global0.x, -1i, 2147483647i), vec4<i32>(-8718i, 40270i, global0.x, 7791i)), vec4<i32>(_wgslsmith_dot_vec2_i32(global0.ww, vec2<i32>(-1i, global0.x)), 1i, global0.x, global0.x)), vec4<i32>(i32(-1i) * -2147483647i, _wgslsmith_sub_i32(global0.x, ~10601i), -_wgslsmith_sub_i32(-59714i, -60210i), _wgslsmith_add_i32(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -40381i, global0.x, -2147483647i), vec4<i32>(global0.x, -25394i, 1i, global0.x)), global0.x))), false);
    global3 = array<u32, 7>();
    global2 = array<u32, 20>();
    var var_0 = Struct_2(-668f, ~(vec3<u32>(u_input.a.x, ~global2[_wgslsmith_index_u32(0u, 20u)], global3[_wgslsmith_index_u32(35234u, 7u)] & 4294967295u) >> (~u_input.a % vec3<u32>(32u))), i32(-1i) * -_wgslsmith_sub_i32(global0.x, ~0i), !(!vec4<bool>(false, true, any(global1[_wgslsmith_index_u32(1u, 10u)]), true)), Struct_1(701f, vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -185f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-541f)), _wgslsmith_f_op_f32(f32(-1f) * -941f)))), !(!select(global1[_wgslsmith_index_u32(32450u, 10u)], global1[_wgslsmith_index_u32(global4.x, 10u)], global1[_wgslsmith_index_u32(4294967295u, 10u)])), ~(~(-vec4<i32>(-43997i, 1i, -42072i, -26105i))), vec2<bool>(true, all(vec2<bool>(true, true)))));
    return StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1041f), ~firstTrailingBit(~var_0.c), -(~max(vec3<i32>(var_0.c, -2147483647i, global0.x), global0.zwy)), vec4<u32>(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -610f))), var_0.e.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, func_3(vec2<f32>(-901f, var_0.a), global0.x), _wgslsmith_div_u32(4294967295u, var_0.b.x), select(2573u, 18983u, true)), firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, 0u, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], 7u)]) & vec4<u32>(26476u, 0u, 4294967295u, global4.x))), _wgslsmith_add_u32(~firstTrailingBit(global4.x), ~_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global4.x, 20u)], u_input.b)), u_input.b), global0.yw);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(countOneBits(~(~vec4<i32>(-59932i, 25260i, 23543i, 2147483647i)) & ~func_1(Struct_1(-1000f, vec3<f32>(-389f, -1334f, 263f), global1[_wgslsmith_index_u32(global4.x, 10u)], vec4<i32>(8165i, global0.x, 2147483647i, global0.x), vec2<bool>(true, true)), true, Struct_3(Struct_1(927f, vec3<f32>(693f, 1000f, 1818f), global1[_wgslsmith_index_u32(0u, 10u)], vec4<i32>(global0.x, global0.x, -67004i, global0.x), vec2<bool>(false, false)), Struct_1(690f, vec3<f32>(-789f, -233f, 1468f), global1[_wgslsmith_index_u32(8268u, 10u)], vec4<i32>(1i, global0.x, global0.x, -47007i), vec2<bool>(false, false)), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), Struct_2(1050f, u_input.a, global0.x, vec4<bool>(false, false, false, false), Struct_1(661f, vec3<f32>(1352f, -1128f, 362f), vec3<bool>(false, false, true), vec4<i32>(-2147483647i, global0.x, global0.x, global0.x), vec2<bool>(true, false)))))));
    let x = u_input.a;
    s_output = func_2();
}

