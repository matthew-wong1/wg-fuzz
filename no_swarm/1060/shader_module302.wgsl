struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 29>;

var<private> global1: f32 = -836f;

var<private> global2: array<vec4<f32>, 18>;

var<private> global3: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec3<bool>(true, false, true), vec2<bool>(true, true), false, vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, false), vec2<bool>(true, true), true, vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, true, false), vec2<bool>(false, false), true, vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, true), vec2<bool>(false, false), true, vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, true), vec2<bool>(false, false), true, vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, true), vec2<bool>(true, true), false, vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, true), vec2<bool>(true, true), true, vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, true, true), vec2<bool>(true, false), false, vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, true, true), vec2<bool>(true, false), false, vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, false), vec2<bool>(false, true), false, vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, true), vec2<bool>(true, true), true, vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, false), vec2<bool>(false, true), true, vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, false, true), vec2<bool>(false, true), false, vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, true, true), vec2<bool>(false, false), false, vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, true), true, vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, false, true), vec2<bool>(false, false), true, vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, false), vec2<bool>(false, false), false, vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, false, false), vec2<bool>(true, false), true, vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, false), vec2<bool>(false, true), false, vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, true, false), vec2<bool>(false, true), true, vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, true), vec2<bool>(false, true), true, vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, false, false), vec2<bool>(true, true), true, vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, false), vec2<bool>(true, true), false, vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, true), vec2<bool>(true, false), false, vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, false), true, vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, true), vec2<bool>(false, false), false, vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, true, false), vec2<bool>(true, true), true, vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, false), vec2<bool>(true, true), true, vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, true), false, vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, false, false), vec2<bool>(false, false), false, vec3<bool>(true, true, false)));

var<private> global4: array<vec4<i32>, 17> = array<vec4<i32>, 17>(vec4<i32>(1i, 1i, 3795i, 28051i), vec4<i32>(-1i, 1i, 2147483647i, -76849i), vec4<i32>(30501i, -51593i, -26121i, -424i), vec4<i32>(2147483647i, -28236i, -2971i, 27985i), vec4<i32>(64378i, -3342i, -4483i, 49578i), vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 18064i), vec4<i32>(11315i, 1i, 0i, -6299i), vec4<i32>(-44946i, 0i, -1i, 1i), vec4<i32>(1i, -19812i, 1i, 2514i), vec4<i32>(8033i, 1i, 1i, -17102i), vec4<i32>(0i, -18997i, 2147483647i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 2147483647i, -1i, 2147483647i), vec4<i32>(-19698i, -11620i, 0i, -26362i), vec4<i32>(-5523i, -1i, 0i, i32(-2147483648)), vec4<i32>(-43825i, 11348i, -20157i, -22506i), vec4<i32>(i32(-2147483648), -15007i, 2147483647i, i32(-2147483648)), vec4<i32>(69593i, 1i, -46593i, 2147483647i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: vec3<f32>) -> u32 {
    let var_0 = ~(~abs(_wgslsmith_sub_u32(abs(0u), ~u_input.c.x)));
    var var_1 = u_input.d;
    var_1 = ~countOneBits(vec4<u32>(_wgslsmith_sub_u32(var_0 << (1u % 32u), ~var_0), 2866u, var_1.x, 5130u));
    global0 = array<Struct_2, 29>();
    global1 = 384f;
    return u_input.d.x >> (var_1.x % 32u);
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_1(vec3<bool>(true, true, false), !(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, true), false), true)), !select(false, false, 26577i > (u_input.b.x & u_input.b.x)), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), u_input.d.x <= 24936u)));
    var var_1 = Struct_1(var_0.d, vec2<bool>(!select(true, !var_0.a.x, all(var_0.d)), any(vec4<bool>(true, true, true, !var_0.b.x))), true, vec3<bool>(all(select(!vec3<bool>(true, var_0.c, false), vec3<bool>(true, var_0.c, var_0.a.x), true)), true, true));
    var var_2 = Struct_2(Struct_1(select(!(!var_0.a), var_0.a, !var_0.d), vec2<bool>(false, ~u_input.b.x != 1i), false, vec3<bool>(true, all(!var_0.d.xx), true)));
    var var_3 = _wgslsmith_f_op_f32(floor(864f));
    global0 = array<Struct_2, 29>();
    return select(vec2<bool>(any(vec4<bool>(true, true, true, true)) & true, all(select(select(vec3<bool>(var_2.a.d.x, true, var_1.b.x), vec3<bool>(true, true, var_2.a.a.x), vec3<bool>(var_2.a.d.x, true, var_2.a.c)), vec3<bool>(var_1.d.x, true, var_1.d.x), var_1.a))), var_1.d.xy, !var_0.a.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: vec4<f32>, arg_3: u32) -> u32 {
    global2 = array<vec4<f32>, 18>();
    let var_0 = all(func_3());
    var var_1 = abs(_wgslsmith_clamp_vec2_u32(arg_0, ~(~(vec2<u32>(arg_3, arg_0.x) | vec2<u32>(arg_0.x, u_input.d.x))), abs(vec2<u32>(26739u, 16362u) >> (u_input.c.yy % vec2<u32>(32u)))));
    let var_2 = vec2<bool>(var_0, !any(!select(vec2<bool>(false, var_0), vec2<bool>(var_0, true), vec2<bool>(false, var_0))));
    global4 = array<vec4<i32>, 17>();
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec4<i32>, 17>();
    global2 = array<vec4<f32>, 18>();
    let var_0 = Struct_2(global3[_wgslsmith_index_u32(~func_1(2147483647i, global0[_wgslsmith_index_u32(u_input.c.x & abs(1u), 29u)], vec3<f32>(806f, 1f, -260f)), 30u)]);
    let var_1 = -(~u_input.b);
    var var_2 = Struct_1(!vec3<bool>(true, true && var_0.a.c, all(select(var_0.a.a.zx, var_0.a.d.zz, true))), vec2<bool>(any(vec2<bool>(true, true)), false), true, vec3<bool>(!var_0.a.b.x, true, true));
    let var_3 = ~vec2<u32>(func_2(vec2<u32>(24585u, u_input.c.x) & vec2<u32>(u_input.c.x, u_input.d.x), _wgslsmith_f_op_f32(111f + -989f), vec4<f32>(275f, 896f, -594f, -192f), u_input.a.x), firstTrailingBit(~4294967295u)) | select(vec2<u32>(17718u, 0u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), ~_wgslsmith_clamp_vec2_u32(u_input.c.wz, u_input.c.xx, vec2<u32>(39632u, u_input.d.x))), var_2.a.zy);
    global2 = array<vec4<f32>, 18>();
    global3 = array<Struct_1, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(~36175i >> (u_input.c.x % 32u), u_input.e);
}

