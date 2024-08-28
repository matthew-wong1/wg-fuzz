struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
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

var<private> global0: vec3<u32> = vec3<u32>(49719u, 1u, 8312u);

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(-1i, 1u, -38122i, vec3<bool>(true, false, true), false), Struct_1(-17451i, 33462u, i32(-2147483648), vec3<bool>(false, false, true), false), Struct_1(0i, 4294967295u, -1i, vec3<bool>(false, true, false), true), Struct_1(50530i, 0u, -1i, vec3<bool>(true, false, false), true), Struct_1(i32(-2147483648), 65645u, 0i, vec3<bool>(true, true, false), true), Struct_1(-29257i, 64493u, 28705i, vec3<bool>(false, true, true), true), Struct_1(2147483647i, 46946u, 0i, vec3<bool>(true, false, true), true), Struct_1(i32(-2147483648), 34668u, -1i, vec3<bool>(false, false, false), false), Struct_1(-38847i, 27066u, -64335i, vec3<bool>(true, true, true), false), Struct_1(33856i, 1u, 0i, vec3<bool>(true, true, true), true), Struct_1(34299i, 42251u, -1i, vec3<bool>(false, true, false), true), Struct_1(-1i, 0u, i32(-2147483648), vec3<bool>(true, false, true), false), Struct_1(-1i, 54666u, 34739i, vec3<bool>(false, true, true), false), Struct_1(2147483647i, 65142u, -47606i, vec3<bool>(true, false, true), false), Struct_1(2147483647i, 1u, -18640i, vec3<bool>(false, false, false), true), Struct_1(-15546i, 12300u, -54606i, vec3<bool>(false, false, true), true), Struct_1(44221i, 33172u, 1443i, vec3<bool>(false, false, false), true), Struct_1(i32(-2147483648), 4294967295u, -6847i, vec3<bool>(false, true, true), false));

var<private> global2: Struct_1;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 18>();
    global0 = abs(_wgslsmith_mod_vec3_u32(select(vec3<u32>(countOneBits(1u), ~4294967295u, ~1u), vec3<u32>(1u, countOneBits(global2.b), global2.b), vec3<bool>(all(global2.d.xy), true, all(global2.d.zy))), _wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(51333u, global2.b, 15770u), vec3<u32>(4294967295u, u_input.b, global2.b)) & vec3<u32>(u_input.b, 0u, global2.b), vec3<u32>(global2.b, global2.b, global2.b ^ 53314u))));
    var var_0 = Struct_2(~u_input.a.xwx);
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -288f), -743f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-205f - -742f)))))));
    global0 = _wgslsmith_mod_vec3_u32(~(~(vec3<u32>(8797u, 23465u, 1u) | vec3<u32>(global0.x, 4294967295u, 27833u))) ^ ~vec3<u32>(62800u, _wgslsmith_dot_vec4_u32(vec4<u32>(76696u, global2.b, 0u, global2.b), vec4<u32>(u_input.b, 46866u, 2063u, global0.x)), ~u_input.b), select(min(_wgslsmith_add_vec3_u32(vec3<u32>(0u, global2.b, 4294967295u), vec3<u32>(81501u, global2.b, u_input.b)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global0.x, global0.x, 8409u), vec3<u32>(1u, global2.b, 62836u), vec3<u32>(u_input.b, global0.x, 1653u))), ~(~vec3<u32>(global0.x, global0.x, 0u)), any(global2.d) || all(global2.d.yx)) << ((vec3<u32>(19857u, u_input.b >> (10352u % 32u), abs(0u)) ^ ~(~vec3<u32>(u_input.b, 54196u, u_input.b))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

