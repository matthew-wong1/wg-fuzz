struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: i32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(0u, 1268u, 52512u), vec3<u32>(0u, 0u, 32783u), vec3<u32>(5776u, 5659u, 1u), vec3<u32>(16149u, 53033u, 41324u), vec3<u32>(43966u, 42617u, 4294967295u), vec3<u32>(0u, 0u, 99237u), vec3<u32>(50010u, 1u, 1u), vec3<u32>(56920u, 11148u, 4294967295u), vec3<u32>(65833u, 4916u, 35597u), vec3<u32>(0u, 1u, 22163u), vec3<u32>(0u, 4294967295u, 64195u), vec3<u32>(9591u, 55369u, 4294967295u), vec3<u32>(14935u, 32993u, 0u), vec3<u32>(8381u, 82473u, 22924u), vec3<u32>(49869u, 8718u, 0u), vec3<u32>(47776u, 10771u, 139084u), vec3<u32>(20158u, 1u, 4294967295u), vec3<u32>(0u, 0u, 46580u), vec3<u32>(0u, 1u, 56821u), vec3<u32>(0u, 0u, 58041u), vec3<u32>(0u, 1u, 1u));

var<private> global1: array<Struct_1, 18>;

var<private> global2: vec4<u32> = vec4<u32>(0u, 0u, 0u, 20153u);

var<private> global3: Struct_1 = Struct_1(false, -155f, true, vec2<f32>(728f, -1600f), vec2<i32>(-10758i, i32(-2147483648)));

var<private> global4: vec4<f32> = vec4<f32>(123f, -443f, 601f, -233f);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> f32 {
    var var_0 = global3.d;
    return 114f;
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = Struct_2(global2.x, arg_1.b, _wgslsmith_add_i32(-14332i, firstTrailingBit(arg_1.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.b + global3.d.x), _wgslsmith_f_op_f32(ceil(global3.b)), true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_1.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x + -508f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(163f - arg_1.d.x)))));
    let var_1 = -354f;
    var var_2 = global1[_wgslsmith_index_u32(arg_1.a, 18u)];
    let var_3 = arg_1;
    var var_4 = global1[_wgslsmith_index_u32(8548u, 18u)];
    return vec4<u32>(~u_input.a, ~select(6296u | arg_0, 1u, arg_0 <= var_3.a) | ~min(arg_1.a >> (global2.x % 32u), ~var_0.a), var_0.a, 16194u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(~(reverseBits(u_input.a) ^ 1u)), 18u)];
    var var_1 = var_0.a;
    global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), global3.b, 426f, global4.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, 641f, var_0.d.x, 1210f)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-270f, var_0.d.x, -190f, 394f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.d.x, 1213f, -873f, global4.x))))))));
    global4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(431f, -923f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -461f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(global3.d.x, -277f, false)), _wgslsmith_div_f32(-171f, var_0.d.x), !var_0.a))), _wgslsmith_f_op_f32(global3.b - _wgslsmith_f_op_f32(-418f * _wgslsmith_div_f32(-579f, global4.x)))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b - 1290f)), 749f), 1000f, _wgslsmith_f_op_f32(var_0.d.x - var_0.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(global4.x)), _wgslsmith_f_op_f32(1617f * _wgslsmith_f_op_f32(func_1())), true))));
    global1 = array<Struct_1, 18>();
    global2 = _wgslsmith_div_vec4_u32(~_wgslsmith_div_vec4_u32(~func_2(global2.x, Struct_2(u_input.a, global3.a, 56657i, vec4<f32>(global4.x, -344f, -589f, 455f))), vec4<u32>(u_input.a, 44325u, global2.x, u_input.a) ^ min(vec4<u32>(15744u, u_input.a, global2.x, global2.x), vec4<u32>(global2.x, u_input.a, global2.x, 0u))), _wgslsmith_clamp_vec4_u32(countOneBits(~(vec4<u32>(u_input.a, 4425u, 4294967295u, 7173u) | vec4<u32>(u_input.a, global2.x, 82623u, 86330u))), vec4<u32>(1u, ~6791u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a, 43171u, 0u), ~1u), ~51099u), vec4<u32>(global2.x, 0u, ~1u, 4294967295u)));
    let var_2 = !all(select(vec2<bool>(true, true), !vec2<bool>(var_0.a, var_0.a), any(select(vec4<bool>(true, true, true, false), vec4<bool>(global3.c, var_0.c, global3.a, false), true))));
    let x = u_input.a;
    s_output = StorageBuffer(min(firstTrailingBit(var_0.e.x), _wgslsmith_dot_vec2_i32(global3.e, var_0.e) << (u_input.a % 32u)));
}

