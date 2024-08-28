struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: array<vec4<bool>, 13> = array<vec4<bool>, 13>(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false));

var<private> global2: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec3<u32>(0u, 80602u, 11138u), 4294967295u), Struct_1(vec3<u32>(4294967295u, 1u, 1u), 18743u), Struct_1(vec3<u32>(0u, 11257u, 0u), 0u), Struct_1(vec3<u32>(83006u, 1804u, 1u), 55622u), Struct_1(vec3<u32>(0u, 10012u, 28862u), 4294967295u), Struct_1(vec3<u32>(1u, 25732u, 13521u), 23663u), Struct_1(vec3<u32>(1u, 0u, 65345u), 4294967295u), Struct_1(vec3<u32>(0u, 0u, 1u), 32868u), Struct_1(vec3<u32>(37830u, 4294967295u, 64627u), 41234u), Struct_1(vec3<u32>(33590u, 305u, 4294967295u), 1u), Struct_1(vec3<u32>(18347u, 0u, 42187u), 3473u), Struct_1(vec3<u32>(73814u, 4294967295u, 25454u), 71780u), Struct_1(vec3<u32>(0u, 1u, 2232u), 43641u), Struct_1(vec3<u32>(0u, 4294967295u, 0u), 13574u), Struct_1(vec3<u32>(39463u, 1u, 3221u), 7554u), Struct_1(vec3<u32>(4294967295u, 0u, 6670u), 0u), Struct_1(vec3<u32>(0u, 2915u, 1u), 4294967295u), Struct_1(vec3<u32>(22053u, 130875u, 376u), 0u));

var<private> global3: array<f32, 4>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = u_input.c;
    let var_1 = Struct_1((arg_0.a & firstTrailingBit(_wgslsmith_clamp_vec3_u32(arg_0.a, vec3<u32>(arg_0.a.x, 0u, u_input.a), vec3<u32>(u_input.a, arg_0.a.x, arg_0.b)))) ^ arg_0.a, u_input.a);
    global1 = array<vec4<bool>, 13>();
    global2 = array<Struct_1, 18>();
    var var_2 = global0[_wgslsmith_index_u32(var_1.b, 21u)];
    return ~firstLeadingBit(var_2.a);
}

fn func_2() -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(~u_input.b, _wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(u_input.a, 20436u, 24842u)), vec3<u32>(u_input.b << (1u % 32u), 1u, ~32250u)))), 18u)];
    global1 = array<vec4<bool>, 13>();
    var var_1 = global0[_wgslsmith_index_u32(1u, 21u)];
    let var_2 = global2[_wgslsmith_index_u32(~0u, 18u)];
    let var_3 = vec3<i32>(~(~u_input.c) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(10254u, 104983u, 7376u, var_0.a.x), vec4<u32>(0u, var_0.b, var_0.b, 4294967295u)) % 32u), 1i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(min(vec3<i32>(70467i, u_input.c, 21573i), vec3<i32>(u_input.c, -3679i, u_input.c)), vec3<i32>(u_input.c, u_input.c, 0i)), _wgslsmith_mod_i32(-2147483647i, abs(u_input.c)))) >> (_wgslsmith_clamp_vec3_u32(~(~var_0.a), var_1.a, func_3(Struct_1(abs(var_0.a), _wgslsmith_dot_vec4_u32(vec4<u32>(24372u, 1u, u_input.a, var_1.a.x), vec4<u32>(14928u, 34679u, 11051u, 138196u))))) % vec3<u32>(32u));
    return Struct_1(var_0.a, 39474u);
}

fn func_1() -> StorageBuffer {
    let var_0 = func_2();
    global3 = array<f32, 4>();
    let var_1 = ~firstLeadingBit(i32(-1i) * -29918i);
    var var_2 = -((firstLeadingBit(~vec2<i32>(u_input.c, -37909i)) >> (reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(108008u, 4294967295u), vec2<u32>(619u, u_input.a))) % vec2<u32>(32u))) >> (select(~vec2<u32>(61329u, 4294967295u), vec2<u32>(_wgslsmith_sub_u32(var_0.b, var_0.a.x), reverseBits(var_0.b)), all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)))) % vec2<u32>(32u)));
    return StorageBuffer(firstLeadingBit(countOneBits(~vec3<u32>(var_0.b, 55790u, 4294967295u)) >> (vec3<u32>(53611u, u_input.b, ~1u) % vec3<u32>(32u))), vec4<f32>(280f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(4294967295u, 4u)])))) * 141f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1004f * 104f))), _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(firstLeadingBit(var_0.b), 4u)]))), _wgslsmith_f_op_f32(f32(-1f) * -127f)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 4u)] - _wgslsmith_f_op_f32(sign(1f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, false);
    var var_1 = -2156f;
    global0 = array<Struct_1, 21>();
    var var_2 = Struct_1(firstLeadingBit(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.b, 0u), vec3<u32>(u_input.a, u_input.b, 22434u)))), ~(~u_input.a << (u_input.b % 32u)));
    let var_3 = Struct_1(_wgslsmith_mult_vec3_u32(firstLeadingBit(var_2.a & var_2.a), var_2.a), ~4294967295u);
    let x = u_input.a;
    s_output = func_1();
}

