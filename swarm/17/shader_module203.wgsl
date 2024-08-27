struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: Struct_4,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 9> = array<vec4<f32>, 9>(vec4<f32>(129f, 1000f, 621f, 820f), vec4<f32>(-923f, -200f, 411f, 170f), vec4<f32>(-157f, -551f, 125f, -1054f), vec4<f32>(-787f, -579f, -1890f, 289f), vec4<f32>(-1047f, 633f, -1324f, 595f), vec4<f32>(1824f, -1000f, 2413f, 134f), vec4<f32>(-1352f, 666f, 703f, 420f), vec4<f32>(-748f, -763f, -481f, 759f), vec4<f32>(874f, 1228f, -306f, -469f));

var<private> global1: Struct_2;

var<private> global2: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(vec3<i32>(-7341i, 71411i, i32(-2147483648)), vec3<u32>(0u, 0u, 1u)), Struct_3(vec3<i32>(-43425i, -59632i, 1i), vec3<u32>(8652u, 42391u, 27842u)), Struct_3(vec3<i32>(68107i, -6343i, 0i), vec3<u32>(1u, 29187u, 1u)), Struct_3(vec3<i32>(1i, 72298i, 11048i), vec3<u32>(55973u, 0u, 30707u)), Struct_3(vec3<i32>(1i, -1i, 2147483647i), vec3<u32>(0u, 36428u, 17904u)), Struct_3(vec3<i32>(1i, -8210i, -16251i), vec3<u32>(85847u, 4294967295u, 4294967295u)), Struct_3(vec3<i32>(0i, -31195i, -28997i), vec3<u32>(66500u, 64449u, 0u)), Struct_3(vec3<i32>(2528i, -19767i, -1i), vec3<u32>(30963u, 1u, 4294967295u)), Struct_3(vec3<i32>(0i, -1i, 0i), vec3<u32>(0u, 1u, 4294967295u)), Struct_3(vec3<i32>(-32260i, 2147483647i, 0i), vec3<u32>(0u, 70351u, 38307u)), Struct_3(vec3<i32>(-42i, -1i, 25494i), vec3<u32>(0u, 0u, 1u)), Struct_3(vec3<i32>(32833i, 1i, -1i), vec3<u32>(24862u, 4294967295u, 4294967295u)));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> u32 {
    var var_0 = global1.a.c;
    var var_1 = Struct_3(u_input.c.wxw, ~(~_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 1u, 7777u), vec3<u32>(3942u, u_input.a, 13949u)), vec3<u32>(4294967295u, 4975u, u_input.b) | vec3<u32>(951u, 115393u, 0u))));
    let var_2 = ((vec2<u32>(_wgslsmith_mod_u32(19111u, 16770u), 18986u) & vec2<u32>(37043u, ~u_input.b)) ^ (~abs(vec2<u32>(5218u, u_input.a)) >> (var_1.b.zx % vec2<u32>(32u)))) << (~var_1.b.yy % vec2<u32>(32u));
    var_0 = !vec2<bool>(false, !(!global1.a.a));
    var var_3 = _wgslsmith_div_vec2_i32(vec2<i32>(-3545i, u_input.c.x), u_input.c.xy);
    return firstLeadingBit(43435u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 9>();
    let var_0 = vec2<bool>(any(select(select(vec2<bool>(global1.a.a, global1.a.c.x), !vec2<bool>(false, global1.a.c.x), global1.a.c), !vec2<bool>(global1.a.c.x, false), global1.a.a)), global1.a.a);
    let var_1 = global1.a.d;
    global0 = array<vec4<f32>, 9>();
    global0 = array<vec4<f32>, 9>();
    let var_2 = ~_wgslsmith_mult_u32(min(func_1(), _wgslsmith_mult_u32(1u, u_input.b) & reverseBits(u_input.a)), ~u_input.b >> ((~0u & _wgslsmith_div_u32(u_input.b, 60839u)) % 32u));
    global0 = array<vec4<f32>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.a.b.xz - vec2<f32>(2730f, -492f)))), vec4<i32>(~countOneBits(u_input.c.x), -1i, ~(~(u_input.c.x << (u_input.b % 32u))), -global1.a.d.x), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.a.b.xzx) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-357f, 431f, global1.a.b.x)), global1.a.b.zzx, select(vec3<bool>(true, true, global1.a.a), vec3<bool>(global1.a.a, var_0.x, var_0.x), vec3<bool>(var_0.x, false, var_0.x))))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.b.x, global1.a.b.x, -431f)) * _wgslsmith_f_op_vec3_f32(-global1.a.b.ywx)))))), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_div_u32(~1032u, ~1u), 8649u, max(var_2, ~36391u)), vec3<u32>(~1u, ~u_input.b | var_2, 70212u)));
}

