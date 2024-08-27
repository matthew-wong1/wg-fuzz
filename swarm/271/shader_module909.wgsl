struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 22>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(Struct_1(vec3<bool>(true, true, true), vec4<f32>(646f, -2858f, -491f, -1939f), vec2<i32>(-65493i, 32443i), vec4<u32>(1u, 1808u, 10620u, 4294967295u))), Struct_4(Struct_1(vec3<bool>(false, false, true), vec4<f32>(-1291f, 201f, 508f, -726f), vec2<i32>(22197i, -1i), vec4<u32>(4294967295u, 53297u, 1u, 4294967295u))), Struct_4(Struct_1(vec3<bool>(true, true, true), vec4<f32>(-463f, -1472f, 498f, -1268f), vec2<i32>(-44245i, 2147483647i), vec4<u32>(11224u, 0u, 0u, 54265u))), Struct_4(Struct_1(vec3<bool>(true, true, false), vec4<f32>(481f, -147f, 439f, 984f), vec2<i32>(1i, 30407i), vec4<u32>(37640u, 1u, 14459u, 23846u))), Struct_4(Struct_1(vec3<bool>(false, true, true), vec4<f32>(757f, -1889f, 725f, -266f), vec2<i32>(1i, 1i), vec4<u32>(36257u, 4294967295u, 9690u, 25907u))), Struct_4(Struct_1(vec3<bool>(true, false, true), vec4<f32>(142f, -726f, -710f, -1357f), vec2<i32>(i32(-2147483648), 20567i), vec4<u32>(4294967295u, 4294967295u, 1u, 1u))), Struct_4(Struct_1(vec3<bool>(true, true, true), vec4<f32>(1973f, -743f, -793f, -1006f), vec2<i32>(0i, 0i), vec4<u32>(31594u, 1u, 28121u, 0u))), Struct_4(Struct_1(vec3<bool>(true, true, false), vec4<f32>(-944f, -639f, 405f, -323f), vec2<i32>(1i, -1428i), vec4<u32>(1u, 18548u, 4294967295u, 19414u))), Struct_4(Struct_1(vec3<bool>(true, true, true), vec4<f32>(-565f, -171f, -1767f, 925f), vec2<i32>(-2664i, -1i), vec4<u32>(0u, 39662u, 1u, 0u))), Struct_4(Struct_1(vec3<bool>(true, true, false), vec4<f32>(816f, 211f, 1044f, 334f), vec2<i32>(-12721i, -1i), vec4<u32>(1u, 5267u, 1u, 1u))), Struct_4(Struct_1(vec3<bool>(true, true, true), vec4<f32>(-1000f, -957f, -291f, -1198f), vec2<i32>(i32(-2147483648), -35500i), vec4<u32>(1u, 1u, 0u, 4294967295u))), Struct_4(Struct_1(vec3<bool>(false, true, true), vec4<f32>(-623f, 359f, -1489f, -2539f), vec2<i32>(i32(-2147483648), 21985i), vec4<u32>(4294967295u, 76236u, 0u, 1u))), Struct_4(Struct_1(vec3<bool>(true, false, true), vec4<f32>(931f, -1060f, 1942f, 135f), vec2<i32>(24403i, 2147483647i), vec4<u32>(1u, 12138u, 4294967295u, 1u))), Struct_4(Struct_1(vec3<bool>(false, false, false), vec4<f32>(239f, -1019f, -608f, -255f), vec2<i32>(i32(-2147483648), -1726i), vec4<u32>(42594u, 0u, 1u, 0u))), Struct_4(Struct_1(vec3<bool>(true, false, true), vec4<f32>(568f, -791f, -188f, -871f), vec2<i32>(2147483647i, 2147483647i), vec4<u32>(1265u, 22686u, 4294967295u, 12732u))), Struct_4(Struct_1(vec3<bool>(false, true, false), vec4<f32>(-2128f, -1000f, 697f, 230f), vec2<i32>(75971i, 0i), vec4<u32>(0u, 0u, 97870u, 57282u))), Struct_4(Struct_1(vec3<bool>(true, false, true), vec4<f32>(-2035f, 441f, 546f, 997f), vec2<i32>(1i, i32(-2147483648)), vec4<u32>(44879u, 4294967295u, 2027u, 4294967295u))));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32) -> vec4<f32> {
    global1 = Struct_1(global1.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.b.x), global1.b.x, global1.b.x, _wgslsmith_f_op_f32(global1.b.x - -146f)) + vec4<f32>(1000f, _wgslsmith_f_op_f32(657f + _wgslsmith_f_op_f32(202f + -1000f)), global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.b.x))))), vec2<i32>(select(~(-1i), arg_0, true) | ~countOneBits(-1i), 1i), _wgslsmith_add_vec4_u32(~max(vec4<u32>(68665u, 4294967295u, global1.d.x, 18113u), select(global1.d, vec4<u32>(u_input.c, 0u, u_input.c, 4294967295u), vec4<bool>(global1.a.x, false, true, global1.a.x))), global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.c | 0u, global1.d.x), 22u)]));
    global0 = array<vec4<u32>, 22>();
    let var_0 = global1.d.zyx;
    global0 = array<vec4<u32>, 22>();
    global2 = array<Struct_4, 17>();
    return global1.b;
}

fn func_2(arg_0: Struct_4) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1f), global1.b.x) * vec2<f32>(1879f, arg_0.a.b.x)) * _wgslsmith_f_op_vec2_f32(-global1.b.xx));
    global1 = arg_0.a;
    global2 = array<Struct_4, 17>();
    global1 = Struct_1(arg_0.a.a, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_3(-1i)))), firstLeadingBit(arg_0.a.c), ~_wgslsmith_clamp_vec4_u32(~arg_0.a.d >> (~global0[_wgslsmith_index_u32(u_input.c, 22u)] % vec4<u32>(32u)), countOneBits(abs(vec4<u32>(global1.d.x, 0u, arg_0.a.d.x, 43714u))), ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, global1.d.x, u_input.c, arg_0.a.d.x), global0[_wgslsmith_index_u32(global1.d.x, 22u)])));
    global2 = array<Struct_4, 17>();
    return var_0.x;
}

fn func_1(arg_0: f32, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(func_2(global2[_wgslsmith_index_u32(countOneBits(0u) & _wgslsmith_sub_u32(_wgslsmith_clamp_u32(global1.d.x, 105925u, ~u_input.c), 1u), 17u)]));
    let var_1 = any(select(select(vec4<bool>(any(vec3<bool>(global1.a.x, global1.a.x, global1.a.x)), true, select(global1.a.x, false, global1.a.x), global1.a.x), select(select(vec4<bool>(true, global1.a.x, global1.a.x, true), vec4<bool>(true, false, global1.a.x, false), vec4<bool>(global1.a.x, true, false, true)), select(vec4<bool>(false, false, true, global1.a.x), vec4<bool>(global1.a.x, global1.a.x, false, global1.a.x), false), select(vec4<bool>(global1.a.x, true, true, global1.a.x), vec4<bool>(false, false, global1.a.x, true), vec4<bool>(true, global1.a.x, false, global1.a.x))), any(global1.a.zy)), vec4<bool>(global1.a.x, global1.a.x, any(vec4<bool>(true, global1.a.x, global1.a.x, true)), true), select(select(vec4<bool>(global1.a.x, false, false, global1.a.x), select(vec4<bool>(true, global1.a.x, global1.a.x, global1.a.x), vec4<bool>(global1.a.x, true, global1.a.x, true), vec4<bool>(false, true, true, false)), vec4<bool>(false, true, false, global1.a.x)), select(vec4<bool>(true, true, global1.a.x, global1.a.x), vec4<bool>(global1.a.x, global1.a.x, false, global1.a.x), !global1.a.x), select(!vec4<bool>(global1.a.x, true, global1.a.x, global1.a.x), !vec4<bool>(false, false, global1.a.x, global1.a.x), true))));
    let var_2 = Struct_4(Struct_1(select(!vec3<bool>(true, var_1, false), select(select(global1.a, vec3<bool>(var_1, true, global1.a.x), true), select(global1.a, vec3<bool>(true, global1.a.x, true), vec3<bool>(global1.a.x, var_1, global1.a.x)), global1.a.x), global1.a), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-576f, 998f, -2337f, arg_1) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, 231f, global1.b.x) * vec4<f32>(-729f, arg_1, 900f, arg_1))))), ~(~(-vec2<i32>(global1.c.x, 58432i))), vec4<u32>(97546u, u_input.c, 4294967295u, u_input.c)));
    var_0 = 1381f;
    global1 = var_2.a;
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.b.x, 1000f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.b.x)))))), ~firstLeadingBit(firstLeadingBit(vec2<i32>(u_input.d, 0i))));
    global2 = array<Struct_4, 17>();
    global1 = func_1(var_0.a.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - -710f))));
    global2 = array<Struct_4, 17>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.a.b.x))), vec3<bool>(_wgslsmith_f_op_f32(abs(global1.b.x)) != -504f, var_0.a.a.x, var_0.a.a.x));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -3006f);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-(firstTrailingBit(vec3<i32>(var_0.a.c.x, 24474i, -52841i)) >> ((global1.d.xxz ^ global1.d.xwx) % vec3<u32>(32u)))), _wgslsmith_dot_vec2_u32(vec2<u32>(abs(0u), 52089u), firstLeadingBit(global1.d.yw)) << (1u % 32u));
}

