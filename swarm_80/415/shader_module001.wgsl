struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 50010u;

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(Struct_1(1334f), Struct_2(vec2<u32>(0u, 0u), vec2<bool>(false, false)), vec3<u32>(16909u, 55253u, 811u)), Struct_3(Struct_1(229f), Struct_2(vec2<u32>(0u, 54606u), vec2<bool>(true, false)), vec3<u32>(49696u, 49208u, 0u)), Struct_3(Struct_1(-1010f), Struct_2(vec2<u32>(44884u, 0u), vec2<bool>(true, false)), vec3<u32>(63968u, 0u, 1u)), Struct_3(Struct_1(-988f), Struct_2(vec2<u32>(1u, 25899u), vec2<bool>(false, false)), vec3<u32>(90645u, 90521u, 9349u)), Struct_3(Struct_1(-843f), Struct_2(vec2<u32>(12852u, 4294967295u), vec2<bool>(false, false)), vec3<u32>(97583u, 4294967295u, 66194u)), Struct_3(Struct_1(1272f), Struct_2(vec2<u32>(82730u, 25665u), vec2<bool>(true, false)), vec3<u32>(4294967295u, 56108u, 1u)), Struct_3(Struct_1(-1278f), Struct_2(vec2<u32>(7986u, 1u), vec2<bool>(false, true)), vec3<u32>(90341u, 1u, 4294967295u)), Struct_3(Struct_1(-1688f), Struct_2(vec2<u32>(24400u, 4294967295u), vec2<bool>(false, true)), vec3<u32>(0u, 14507u, 1u)), Struct_3(Struct_1(486f), Struct_2(vec2<u32>(0u, 63088u), vec2<bool>(true, true)), vec3<u32>(16941u, 1u, 0u)), Struct_3(Struct_1(-444f), Struct_2(vec2<u32>(1u, 19068u), vec2<bool>(true, true)), vec3<u32>(49251u, 19316u, 1u)), Struct_3(Struct_1(-303f), Struct_2(vec2<u32>(25965u, 47457u), vec2<bool>(true, false)), vec3<u32>(37826u, 0u, 0u)), Struct_3(Struct_1(1477f), Struct_2(vec2<u32>(15850u, 39549u), vec2<bool>(true, false)), vec3<u32>(38378u, 48466u, 50905u)), Struct_3(Struct_1(-215f), Struct_2(vec2<u32>(33890u, 4294967295u), vec2<bool>(true, false)), vec3<u32>(44843u, 0u, 0u)), Struct_3(Struct_1(-576f), Struct_2(vec2<u32>(21949u, 42642u), vec2<bool>(false, true)), vec3<u32>(1u, 22759u, 24265u)));

var<private> global3: Struct_3;

var<private> global4: i32 = 16320i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    global2 = array<Struct_3, 14>();
    let var_0 = true;
    let var_1 = global3.a;
    global2 = array<Struct_3, 14>();
    var var_2 = -106f;
    return -629f;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_2 {
    global0 = ~20522u;
    global3 = global2[_wgslsmith_index_u32(u_input.b.x, 14u)];
    global2 = array<Struct_3, 14>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-397f, -1131f), _wgslsmith_div_f32(arg_1.a, _wgslsmith_f_op_f32(func_3(vec3<f32>(-599f, global3.a.a, arg_1.a)))))) - global3.a.a));
    var_0 = arg_1;
    return Struct_2(~(~_wgslsmith_mod_vec2_u32(global3.c.xy & vec2<u32>(2375u, global3.c.x), firstLeadingBit(vec2<u32>(42478u, u_input.b.x)))), !(!global3.b.b));
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: vec3<i32>) -> StorageBuffer {
    var var_0 = func_2((vec4<i32>(arg_2.x, u_input.a.x << (1u % 32u), abs(arg_2.x), u_input.a.x) << (firstTrailingBit(countOneBits(vec4<u32>(104817u, global3.b.a.x, u_input.b.x, global3.c.x))) % vec4<u32>(32u))) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(global3.c.x, u_input.b.x, 0u, 1u), (vec4<u32>(0u, global3.b.a.x, 4294967295u, global3.b.a.x) ^ vec4<u32>(1u, 44852u, 1u, u_input.b.x)) << (vec4<u32>(global3.b.a.x, global3.c.x, 7924u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)), Struct_1(global3.a.a));
    let var_1 = false;
    global4 = arg_1.x;
    global3 = global2[_wgslsmith_index_u32(4294967295u, 14u)];
    let var_2 = Struct_2(vec2<u32>(~global3.c.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(global3.c.x, global3.c.x), vec2<u32>(global3.b.a.x, u_input.b.x))), !global3.b.b);
    return StorageBuffer(1u, _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, u_input.b.x, global3.c.x), global3.c) | min(_wgslsmith_clamp_vec3_u32(global3.c, vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 11829u, var_2.a.x)), vec3<u32>(global3.b.a.x, 4294967295u, 0u)), max(max(global3.c, abs(vec3<u32>(44057u, global3.b.a.x, 1u))), vec3<u32>(_wgslsmith_mult_u32(2897u, 61029u), global3.c.x, _wgslsmith_div_u32(u_input.b.x, 88238u)))), -11514i, var_0.a.x, arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(global3.b.b.x, select(vec3<i32>(countOneBits(-14236i), 42777i, _wgslsmith_mod_i32(-1i, 14976i ^ u_input.a.x)), ~(-abs(vec3<i32>(u_input.a.x, -2147483647i, -9510i))), !(!(!vec3<bool>(false, false, global3.b.b.x)))), vec3<i32>(-2147483647i, i32(-1i) * -u_input.a.x, -2579i));
}

