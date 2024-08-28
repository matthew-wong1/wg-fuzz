struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: u32 = 0u;

var<private> global2: Struct_4;

var<private> global3: array<Struct_3, 2>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    let var_0 = Struct_3(~(~_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global2.c.c, global2.c.c, global2.c.c), vec3<i32>(global2.c.c, global2.c.c, global2.c.c)), vec3<i32>(-31173i, 0i, 2147483647i))), 650f);
    var var_1 = any(vec4<bool>(global2.a || false, true, false, true));
    global2 = Struct_4(any(!select(!vec3<bool>(false, global2.a, true), select(vec3<bool>(arg_0.x, false, true), vec3<bool>(false, arg_0.x, global2.a), vec3<bool>(true, arg_0.x, global2.a)), !vec3<bool>(arg_0.x, false, global2.b.d))), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2903f), -583f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b, var_0.b))), global2.b.a.x), select(arg_0, !select(vec2<bool>(global2.c.b, global2.c.b), arg_0, global2.b.b), select(vec2<bool>(arg_0.x, true), !global2.b.b, arg_0)), vec2<bool>(true, true), true), global2.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.b.a.xx), _wgslsmith_f_op_vec2_f32(-global2.d)), min(global2.e, _wgslsmith_sub_vec2_u32(global2.e, ~u_input.a.zz & global2.e)));
    return 26471u;
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: vec2<f32>, arg_3: vec4<i32>) -> i32 {
    global2 = Struct_4(false, global2.b, Struct_1(arg_2.x, all(global2.b.c) | (1795u < func_3(global2.b.b)), global2.c.c), global2.b.a.xx, _wgslsmith_div_vec2_u32(~vec2<u32>(arg_0.x, 0u), vec2<u32>(42263u, global2.e.x)) | vec2<u32>(min(_wgslsmith_add_u32(35620u, global2.e.x), arg_0.x), arg_0.x));
    global2 = Struct_4(!global2.c.b, Struct_2(global2.b.a, global2.b.c, !global2.b.b, true), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.x - 722f), global2.d.x)))), any(vec4<bool>(true, global2.c.b, true, false)), 40206i ^ global2.c.c), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.x))) * 544f)), u_input.a.zz);
    global2 = Struct_4(!((firstTrailingBit(4594i) != (arg_3.x | -2147483647i)) || (!global2.a & (global2.e.x != arg_0.x))), Struct_2(global2.b.a, select(!(!global2.b.b), vec2<bool>(all(vec3<bool>(true, true, global2.b.b.x)), any(vec4<bool>(global2.b.d, true, global2.b.d, global2.a))), select(!global2.b.b, vec2<bool>(true, true), global2.b.b)), select(select(vec2<bool>(true, global2.c.b), vec2<bool>(false, false), global2.a), !select(global2.b.b, global2.b.c, global2.b.c), select(vec2<bool>(global2.a, true), vec2<bool>(true, true), global2.b.d)), _wgslsmith_div_f32(global2.d.x, _wgslsmith_div_f32(global2.c.a, arg_2.x)) != _wgslsmith_f_op_f32(step(-745f, -904f))), global2.c, global2.d, _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(arg_0.x, arg_1), _wgslsmith_mult_vec2_u32(reverseBits(global2.e), global2.e)), vec2<u32>(func_3(global2.b.c), 8958u) << (global2.e % vec2<u32>(32u))));
    global1 = 13007u;
    let var_0 = _wgslsmith_add_vec2_u32(abs(global2.e), ~(~(~(vec2<u32>(arg_1, arg_0.x) << (vec2<u32>(global2.e.x, 36452u) % vec2<u32>(32u))))));
    return ~(_wgslsmith_div_i32(-2147483647i ^ global2.c.c, (arg_3.x >> (arg_0.x % 32u)) ^ 2147483647i) ^ _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(arg_3.yz | arg_3.wz, min(arg_3.zy, arg_3.yy)), vec2<i32>(global2.c.c, arg_3.x) >> (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u))));
}

fn func_1() -> Struct_1 {
    var var_0 = global2.b.a.x;
    let var_1 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32(func_2(vec2<u32>(global2.e.x, 0u), u_input.a.x & u_input.a.x, vec2<f32>(1000f, 1177f), vec4<i32>(0i, global2.c.c, global2.c.c, global2.c.c)), ~firstLeadingBit(22821i), _wgslsmith_dot_vec4_i32(~vec4<i32>(global2.c.c, global2.c.c, global2.c.c, global2.c.c), _wgslsmith_add_vec4_i32(vec4<i32>(-107121i, global2.c.c, 2147483647i, global2.c.c), vec4<i32>(global2.c.c, 1i, global2.c.c, -1i)))) ^ ~(~13592i), _wgslsmith_div_i32(firstTrailingBit(global2.c.c), 31422i));
    global1 = ~59721u;
    let var_2 = _wgslsmith_mult_u32(global2.e.x >> (min(firstTrailingBit(u_input.a.x), countOneBits(u_input.a.x)) % 32u), 4294967295u);
    let var_3 = Struct_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) != _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.d.x * -454f), 1f, !(!global2.b.c.x))), global2.b, Struct_1(global2.c.a, any(vec4<bool>(global2.b.c.x || global2.a, false, false, false)), var_1), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global2.d, global2.d)) + vec2<f32>(_wgslsmith_f_op_f32(1622f * _wgslsmith_f_op_f32(global2.c.a * 244f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.a.x)))), _wgslsmith_div_vec2_u32(vec2<u32>(22686u, ~global2.e.x & countOneBits(global2.e.x)), vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2, 61419u, global2.e.x, u_input.a.x), vec4<u32>(0u, var_2, global2.e.x, u_input.a.x)), u_input.a), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(14331u, 70023u)), _wgslsmith_mod_vec2_u32(u_input.a.zz, global2.e)))));
    return var_3.c;
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_div_i32(~(-1i & max(arg_0.c, -17022i)) | _wgslsmith_sub_i32(global2.c.c, 1i), -14891i);
    global3 = array<Struct_3, 2>();
    global0 = array<Struct_1, 31>();
    return Struct_3(firstLeadingBit(select(-vec3<i32>(1i, global2.c.c, global2.c.c), vec3<i32>(_wgslsmith_div_i32(1i, 1i), arg_0.c | var_0, 0i), false)), _wgslsmith_div_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.a * arg_0.a), _wgslsmith_f_op_f32(arg_0.a + -421f), !arg_0.b))), _wgslsmith_f_op_f32(-538f + global2.b.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(~(_wgslsmith_add_u32(~70374u, _wgslsmith_add_u32(2615u, u_input.a.x)) << (_wgslsmith_sub_u32(global2.e.x, min(4294967295u, global2.e.x)) % 32u)) | 1u, 2u)];
    var_0 = Struct_3(vec3<i32>(-1i, global2.c.c, global2.c.c), global2.d.x);
    var var_1 = func_4(func_1());
    global1 = ~u_input.a.x;
    let var_2 = vec3<u32>(~51681u, ~abs(1u), countOneBits(~(~abs(u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_0.a.zy) << (vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(global2.e.x, u_input.a.x, u_input.a.x, u_input.a.x)), 1u), ~(~32757u)) % vec2<u32>(32u)), (firstTrailingBit(vec4<i32>(var_1.a.x, -9870i, -1i, var_0.a.x) & vec4<i32>(9735i, 0i, 12000i, 48453i)) & (-vec4<i32>(-39943i, 1i, var_0.a.x, global2.c.c) >> (u_input.a % vec4<u32>(32u)))) ^ vec4<i32>(global2.c.c | ~var_0.a.x, var_0.a.x, -61106i, (var_1.a.x >> (u_input.a.x % 32u)) >> (firstLeadingBit(global2.e.x) % 32u)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.b + 1432f)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-413f, 466f, 1048f, -362f), vec4<f32>(global2.b.a.x, -439f, var_0.b, -1000f), global2.a)) + vec4<f32>(-931f, -606f, var_0.b, var_1.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2296f, 1288f, 999f, -560f))))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.d.x, _wgslsmith_f_op_f32(1430f - -464f), -155f, global2.b.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, -930f, -1203f, var_0.b) * vec4<f32>(263f, var_0.b, var_1.b, var_1.b)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1516f, var_0.b, -552f, 284f) - vec4<f32>(815f, 1031f, 213f, var_0.b))))), !vec4<bool>(global2.a | global2.b.b.x, true, global2.a && false, !global2.a))));
}

