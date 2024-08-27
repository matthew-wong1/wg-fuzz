struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_2,
    d: vec3<u32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_3(-673f, 1u, Struct_2(Struct_1(vec3<bool>(false, true, true), vec3<i32>(-4225i, 2147483647i, 31206i), vec2<u32>(4294967295u, 0u)), vec4<bool>(true, true, true, true)), vec3<u32>(4294967295u, 1u, 0u), -2159f));

var<private> global1: array<vec2<f32>, 6> = array<vec2<f32>, 6>(vec2<f32>(640f, 1018f), vec2<f32>(930f, 525f), vec2<f32>(263f, 734f), vec2<f32>(1638f, -1183f), vec2<f32>(-1285f, -190f), vec2<f32>(-1000f, -925f));

var<private> global2: u32 = 40843u;

var<private> global3: vec2<f32> = vec2<f32>(1000f, 449f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(_wgslsmith_sub_i32(-57395i, ~global0.a.c.a.b.x), -_wgslsmith_dot_vec3_i32(global0.a.c.a.b << (vec3<u32>(global0.a.d.x, global0.a.c.a.c.x, global0.a.b) % vec3<u32>(32u)), global0.a.c.a.b) << (1u % 32u), ~_wgslsmith_dot_vec3_i32(select(vec3<i32>(-28215i, 1288i, u_input.a.x), global0.a.c.a.b, false), abs(global0.a.c.a.b)) >> (global0.a.b % 32u));
    var var_1 = firstTrailingBit(vec4<i32>(_wgslsmith_mult_i32(global0.a.c.a.b.x, abs(var_0.x)), 69962i, ~42993i ^ firstTrailingBit(var_0.x), abs(-1i)));
    var var_2 = ~select(vec4<i32>(_wgslsmith_clamp_i32(-global0.a.c.a.b.x, var_0.x, reverseBits(-2147483647i)), -abs(2147483647i), var_0.x, u_input.a.x), -abs(~vec4<i32>(15147i, u_input.a.x, -2147483647i, 2147483647i)), global0.a.c.b);
    var var_3 = Struct_1(vec3<bool>(all(vec2<bool>(true, any(global0.a.c.b))), any(global0.a.c.b.wyx), !all(select(global0.a.c.a.a, vec3<bool>(false, true, global0.a.c.b.x), global0.a.c.b.x))), (var_1.yww << (~select(vec3<u32>(global0.a.b, global0.a.d.x, global0.a.d.x), global0.a.d, false) % vec3<u32>(32u))) | -(~min(var_0, vec3<i32>(var_0.x, 11216i, -33306i))), global0.a.c.a.c);
    let var_4 = Struct_5(global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, select(reverseBits(select(1i, u_input.a.x, true)), ~(~(-2147483647i)), false) >> (_wgslsmith_dot_vec2_u32(~var_3.c, var_4.a.c.a.c >> (vec2<u32>(1u, var_3.c.x) % vec2<u32>(32u))) % 32u), ~_wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_3.b.x, var_0.x), var_2.ywx), _wgslsmith_add_i32(-1i | var_4.a.c.a.b.x, global0.a.c.a.b.x)), ~(var_4.a.b & _wgslsmith_add_u32(var_4.a.c.a.c.x, ~0u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.a, 1327f, 1000f, -680f)))) - vec4<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.e)), 1643f, global0.a.e)));
}

