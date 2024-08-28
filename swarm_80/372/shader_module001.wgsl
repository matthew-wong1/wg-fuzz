struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 19>;

var<private> global1: f32 = -1033f;

var<private> global2: Struct_1 = Struct_1(true, 35494u, 6511i);

var<private> global3: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(false, 1u, -38070i), Struct_1(false, 4294967295u, -13608i), Struct_1(true, 1u, 0i), Struct_1(true, 3071u, 5668i), Struct_1(false, 4294967295u, 34975i), Struct_1(false, 0u, -1i), Struct_1(true, 62122u, 2088i), Struct_1(false, 27579u, -1i), Struct_1(false, 28916u, 0i), Struct_1(false, 1u, 15242i), Struct_1(true, 0u, 2147483647i), Struct_1(false, 33727u, 15510i), Struct_1(true, 65723u, i32(-2147483648)), Struct_1(true, 1u, i32(-2147483648)), Struct_1(false, 0u, i32(-2147483648)), Struct_1(false, 4294967295u, 2147483647i), Struct_1(false, 58904u, 0i), Struct_1(true, 0u, i32(-2147483648)), Struct_1(false, 1u, -75057i), Struct_1(false, 1315u, 45668i), Struct_1(false, 4294967295u, 16225i), Struct_1(false, 10063u, -41272i), Struct_1(false, 55089u, -1i), Struct_1(true, 32805u, -23998i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<u32> {
    var var_0 = global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(9865u, _wgslsmith_sub_u32(10846u, min(4294967295u, global2.b))), 24u)];
    let var_1 = vec2<i32>(reverseBits(0i), -28519i);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-671f, _wgslsmith_f_op_f32(f32(-1f) * -1357f), global2.a)));
    let var_3 = global3[_wgslsmith_index_u32(global2.b, 24u)];
    global1 = _wgslsmith_f_op_f32(sign(-276f));
    return _wgslsmith_div_vec3_u32(~_wgslsmith_mod_vec3_u32(abs(vec3<u32>(global2.b, u_input.a, global2.b)), firstTrailingBit(vec3<u32>(u_input.a, var_3.b, global2.b))), countOneBits(~select(vec3<u32>(0u, var_3.b, u_input.a), vec3<u32>(0u, 1u, 80293u), var_3.a))) << (vec3<u32>(countOneBits(var_3.b), ~((8514u ^ global2.b) & 60475u), ~78895u) % vec3<u32>(32u));
}

fn func_2() -> Struct_1 {
    global3 = array<Struct_1, 24>();
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1266f);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + 210f) + var_0);
    global0 = array<vec2<f32>, 19>();
    let var_2 = var_0;
    return global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~select(~vec3<u32>(4152u, u_input.a, global2.b), ~vec3<u32>(73280u, 28801u, 4294967295u), global2.a) & ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 61566u, 32061u) ^ vec3<u32>(global2.b, 54585u, 0u), vec3<u32>(72514u, global2.b, global2.b)), func_3()), 24u)];
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -798f);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-158f, 1334f, -514f, 687f)), vec4<f32>(1200f, -1848f, 404f, 575f), !global2.a)), vec4<f32>(_wgslsmith_f_op_f32(abs(356f)), _wgslsmith_f_op_f32(f32(-1f) * -1103f), _wgslsmith_div_f32(531f, -574f), _wgslsmith_f_op_f32(-581f * -290f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-492f, 654f)), _wgslsmith_f_op_f32(ceil(-105f)), 1f, 599f)) + vec4<f32>(1513f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-783f - 3551f) - _wgslsmith_div_f32(-1788f, -563f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-909f, _wgslsmith_f_op_f32(trunc(-287f))))), -123f));
    var var_2 = global3[_wgslsmith_index_u32(108008u, 24u)];
    let var_3 = arg_1;
    let var_4 = func_2();
    return !var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(~(-83060i), abs(u_input.b.x));
    var var_1 = Struct_1(false, 1u, 18431i);
    let var_2 = !(!func_1(vec4<i32>(global2.c, var_1.c, u_input.b.x, u_input.b.x) >> (vec4<u32>(var_1.b, var_1.b, 40706u, 0u) % vec4<u32>(32u)), global3[_wgslsmith_index_u32(16606u, 24u)]) || global2.a);
    let var_3 = !vec4<bool>(global2.a, true, global2.a, all(select(vec3<bool>(var_2, var_2, var_1.a), !vec3<bool>(true, var_2, var_2), !global2.a)));
    global0 = array<vec2<f32>, 19>();
    global0 = array<vec2<f32>, 19>();
    var var_4 = vec3<i32>(~(~67793i), ~_wgslsmith_mult_i32(var_1.c, -global2.c), _wgslsmith_clamp_i32(-2147483647i, 2568i, 1i) << (8135u % 32u));
    var var_5 = !var_3.ww;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(124f - 1307f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1616f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1497f + -291f) - -1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-153f, _wgslsmith_div_f32(105f, 248f))))));
}

