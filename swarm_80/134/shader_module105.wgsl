struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: f32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec3<i32>(-45355i, -288i, -50748i)), Struct_1(vec3<i32>(-31472i, -38494i, -20123i)));

var<private> global1: array<u32, 28> = array<u32, 28>(60539u, 0u, 1920u, 65321u, 0u, 15725u, 4294967295u, 6401u, 0u, 4294967295u, 1u, 0u, 6101u, 44404u, 4294967295u, 12627u, 4294967295u, 0u, 64772u, 4294967295u, 50318u, 23515u, 4294967295u, 74404u, 24608u, 48854u, 78397u, 1u);

var<private> global2: u32 = 35732u;

var<private> global3: bool = true;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<i32>) -> u32 {
    global0 = array<Struct_1, 2>();
    var var_0 = true;
    global0 = array<Struct_1, 2>();
    return ~_wgslsmith_sub_u32(u_input.c, u_input.d) << (~_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(u_input.b.zyy, u_input.b.yzw), u_input.b.yzy) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = true;
    global2 = select(~func_1(~0i, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-266f, -1000f, -785f), vec3<f32>(1179f, -632f, -1106f), false)), vec4<i32>(1i, -2147483647i, 38733i, -2147483647i) << (vec4<u32>(73417u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 28u)], 28u)], u_input.a.x, u_input.b.x) % vec4<u32>(32u))) >> (41533u % 32u), countOneBits(reverseBits(56482u) << ((min(global1[_wgslsmith_index_u32(0u, 28u)], 67741u) >> (abs(u_input.d) % 32u)) % 32u)), true);
    let var_0 = select(!select(vec2<bool>(true, true), vec2<bool>(select(false, false, true), true), vec2<bool>(false, false)), vec2<bool>(!(any(vec4<bool>(true, true, false, true)) || true), _wgslsmith_f_op_f32(-178f * _wgslsmith_f_op_f32(1922f + 831f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1159f)) - _wgslsmith_f_op_f32(f32(-1f) * -400f))), !select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), false), true));
    global2 = ~min(0u, ~u_input.c);
    var var_1 = u_input.b.zzx;
    var var_2 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(30079u, 28u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(375f * -618f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(754f, 265f, -1045f, 1000f), vec4<f32>(1678f, -188f, -278f, -300f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 518f, 1612f, -1111f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-897f, 960f, -748f, -911f))) - vec4<f32>(-254f, -591f, -448f, 987f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1141f, 533f, -1073f, -160f) + vec4<f32>(-1000f, 155f, -306f, 1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(2054f, -1579f, -896f, -1655f))) + vec4<f32>(-2275f, 1780f, _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(1284f + -569f)))), countOneBits(countOneBits(11495i)));
}

