struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_3,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec2<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1 = Struct_1(i32(-2147483648));

var<private> global2: array<f32, 8> = array<f32, 8>(-235f, 242f, 201f, 834f, -147f, -766f, -797f, -898f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    var var_0 = u_input.e;
    var var_1 = !(any(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))) && true);
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(18582u, 8u)]) - global2[_wgslsmith_index_u32(u_input.b, 8u)]) * global2[_wgslsmith_index_u32(~6572u, 8u)]);
    var var_4 = Struct_1(~u_input.e.x);
    return 779f;
}

fn func_2(arg_0: Struct_3) -> f32 {
    let var_0 = Struct_1(~23153i);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), arg_0.a.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x - 938f) - 559f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-818f, 309f), _wgslsmith_f_op_f32(f32(-1f) * -1899f), any(vec2<bool>(true, true))))))));
    var var_2 = 583f;
    let var_3 = ~0i;
    var var_4 = Struct_2(Struct_1(var_3));
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_1() -> Struct_1 {
    global0 = ~u_input.a.x;
    var var_0 = 316f;
    var var_1 = global2[_wgslsmith_index_u32(4294967295u, 8u)];
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_3(vec2<f32>(504f, -769f)))), _wgslsmith_div_f32(135f, -412f)) * _wgslsmith_f_op_f32(f32(-1f) * -869f))), _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(firstTrailingBit(countOneBits(0u)) | 31575u, 8u)])));
    var var_2 = abs(vec4<u32>(3974u, ~63632u, ~(~(~u_input.c.x)), _wgslsmith_mod_u32(u_input.c.x, countOneBits(68340u))));
    return Struct_1(_wgslsmith_sub_i32(global1.a, ~_wgslsmith_mod_i32(_wgslsmith_div_i32(-27954i, u_input.e.x), 12738i)));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec4_u32(u_input.c, max(vec4<u32>(_wgslsmith_add_u32(u_input.b, u_input.a.x), countOneBits(30752u), _wgslsmith_sub_u32(64285u, 0u), 66652u), ~vec4<u32>(u_input.d.x, 18843u, u_input.c.x, u_input.b))) | vec4<u32>(~(~firstLeadingBit(0u)), ~u_input.b, 1u, _wgslsmith_mult_u32(4294967295u >> (_wgslsmith_add_u32(1u, u_input.c.x) % 32u), u_input.a.x));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(11067u, 8u)])) + vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.d.x << (var_0.x % 32u), 8u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(4517u, 8u)])) * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(2251u, 8u)])))));
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + _wgslsmith_f_op_f32(max(var_1.a.x, 322f)))));
    var_0 = ~(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.c.x, u_input.b), u_input.d.x), min(4294967295u, countOneBits(35595u)), ~(~var_0.x), max(~var_0.x, _wgslsmith_div_u32(u_input.b, 44359u))) | vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(5576u, var_0.x, 1u), ~32334u), ~(u_input.a.x | u_input.d.x), (var_0.x << (25958u % 32u)) | _wgslsmith_add_u32(4294967295u, 0u), ~1u));
    global2 = array<f32, 8>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 8>();
    var var_0 = Struct_2(func_4(func_1()));
    var_0 = Struct_2(func_1());
    global2 = array<f32, 8>();
    global0 = 35878u;
    var var_1 = true;
    let var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zy, -73260i, ~var_0.a.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(341f, 1623f) * vec2<f32>(global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(u_input.c.x, 8u)])), _wgslsmith_f_op_vec2_f32(vec2<f32>(1757f, -751f) + vec2<f32>(global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(53858u, 8u)])), vec2<bool>(var_2, var_2))))), u_input.e.zy);
}

