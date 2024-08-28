struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec3<i32>,
    d: Struct_3,
    e: u32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 18> = array<vec2<f32>, 18>(vec2<f32>(522f, -2244f), vec2<f32>(793f, 219f), vec2<f32>(345f, -1628f), vec2<f32>(-700f, 1357f), vec2<f32>(230f, 165f), vec2<f32>(1000f, -827f), vec2<f32>(1000f, 219f), vec2<f32>(-498f, -106f), vec2<f32>(149f, -1210f), vec2<f32>(-823f, 277f), vec2<f32>(404f, 760f), vec2<f32>(-730f, 118f), vec2<f32>(1073f, -1091f), vec2<f32>(123f, -270f), vec2<f32>(3211f, 1552f), vec2<f32>(1958f, -1451f), vec2<f32>(-384f, 768f), vec2<f32>(-715f, -567f));

var<private> global1: array<i32, 12> = array<i32, 12>(-1i, i32(-2147483648), -49122i, -36749i, i32(-2147483648), -17521i, -43407i, -23404i, 5821i, 0i, -66281i, 1i);

var<private> global2: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(Struct_1(1i), Struct_1(1i)), Struct_2(Struct_1(-1i), Struct_1(-91i)), Struct_2(Struct_1(44893i), Struct_1(-1i)), Struct_2(Struct_1(22121i), Struct_1(50314i)), Struct_2(Struct_1(1i), Struct_1(5309i)), Struct_2(Struct_1(2147483647i), Struct_1(1i)), Struct_2(Struct_1(-11687i), Struct_1(-1i)), Struct_2(Struct_1(73384i), Struct_1(0i)), Struct_2(Struct_1(i32(-2147483648)), Struct_1(-28005i)), Struct_2(Struct_1(-1i), Struct_1(2147483647i)), Struct_2(Struct_1(0i), Struct_1(-47123i)), Struct_2(Struct_1(-2819i), Struct_1(10357i)));

var<private> global3: vec4<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: u32) -> Struct_3 {
    global0 = array<vec2<f32>, 18>();
    return Struct_3(all(vec2<bool>(_wgslsmith_div_u32(global3.x, 5852u) == global3.x, true)), u_input.b);
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.b;
    var var_1 = func_2(1u);
    var var_2 = _wgslsmith_div_i32(1i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(~global1[_wgslsmith_index_u32(u_input.c, 12u)], _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 27781i), vec2<i32>(16085i, global1[_wgslsmith_index_u32(u_input.c, 12u)]))), ~(-1i))) & -_wgslsmith_sub_i32(u_input.a, ~u_input.b);
    let var_3 = 0u;
    let var_4 = -840f;
    return Struct_1(1i);
}

fn func_3(arg_0: f32, arg_1: vec2<i32>) -> u32 {
    let var_0 = 1u;
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - arg_0)) - 572f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(470f, 152f)), _wgslsmith_f_op_f32(arg_0 - arg_0), 357f >= arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(step(-1562f, 321f)))))));
    global0 = array<vec2<f32>, 18>();
    var var_2 = vec3<u32>(_wgslsmith_mult_u32(4294967295u, min(~1u << (firstTrailingBit(global3.x) % 32u), 1u)), select(~u_input.c, 0u, func_2(_wgslsmith_add_u32(_wgslsmith_mod_u32(global3.x, 0u), global3.x)).a), _wgslsmith_mod_u32(reverseBits(u_input.c), ~(~global3.x << (min(u_input.c, u_input.c) % 32u))));
    var var_3 = -1i;
    return ~(21822u << ((~firstLeadingBit(4294967295u) << (reverseBits(var_2.x) % 32u)) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(-11014i), func_1());
    let var_1 = (min(~min(vec4<u32>(16242u, 75377u, global3.x, global3.x), vec4<u32>(12060u, global3.x, 1u, 32503u)), vec4<u32>(0u, u_input.c, max(0u, global3.x), 36798u)) ^ vec4<u32>(~(~1u), func_3(-1011f, vec2<i32>(26160i, var_0.a.a) ^ vec2<i32>(u_input.b, global1[_wgslsmith_index_u32(11324u, 12u)])), ~(~4294967295u), u_input.c)) | vec4<u32>(global3.x, 0u, func_3(362f, vec2<i32>(u_input.b, abs(23845i))), max(4294967295u, global3.x));
    global3 = ~vec4<u32>(53777u, 1u, ~_wgslsmith_clamp_u32(0u, _wgslsmith_clamp_u32(var_1.x, global3.x, global3.x), 4294967295u), func_3(_wgslsmith_f_op_f32(-1203f * -2063f), ~(vec2<i32>(-9472i, -46856i) ^ vec2<i32>(var_0.b.a, -13794i))));
    global0 = array<vec2<f32>, 18>();
    var var_2 = min(select(countOneBits(max(~vec4<i32>(-12305i, 0i, -34488i, global1[_wgslsmith_index_u32(global3.x, 12u)]), max(vec4<i32>(global1[_wgslsmith_index_u32(1u, 12u)], u_input.b, -64674i, var_0.a.a), vec4<i32>(global1[_wgslsmith_index_u32(global3.x, 12u)], 0i, var_0.b.a, global1[_wgslsmith_index_u32(u_input.c, 12u)])))), ~(vec4<i32>(-1i) * -vec4<i32>(-18235i, -16393i, global1[_wgslsmith_index_u32(4294967295u, 12u)], var_0.b.a)), !vec4<bool>(true, global3.x == var_1.x, true, var_1.x > 0u)), vec4<i32>(_wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, var_0.a.a, -1i), vec3<i32>(global1[_wgslsmith_index_u32(81206u, 12u)], -60995i, u_input.b)), -(~vec3<i32>(var_0.b.a, 10740i, var_0.b.a))), ~(var_0.b.a >> (1u % 32u)), var_0.b.a, -global1[_wgslsmith_index_u32(35886u, 12u)]));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -519f) + 1f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1000f, 799f)), _wgslsmith_f_op_f32(f32(-1f) * -1547f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, var_1, var_3);
}

