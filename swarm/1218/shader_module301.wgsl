struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 31>;

var<private> global1: vec3<f32>;

var<private> global2: Struct_2;

var<private> global3: array<i32, 4> = array<i32, 4>(-25559i, 51644i, 18640i, -7569i);

var<private> global4: array<bool, 14>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec3<f32>) -> vec2<f32> {
    let var_0 = true;
    global3 = array<i32, 4>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2101f, 1000f, global1.x, -626f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-532f, -107f, arg_2.x, 467f)))))));
    var var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-1i, u_input.b), 0i, u_input.b)), _wgslsmith_mult_vec2_i32(min(vec2<i32>(global3[_wgslsmith_index_u32(u_input.a, 4u)], global3[_wgslsmith_index_u32(u_input.a, 4u)]), select(vec2<i32>(global3[_wgslsmith_index_u32(u_input.a, 4u)], global3[_wgslsmith_index_u32(arg_1, 4u)]), vec2<i32>(16012i, u_input.b), vec2<bool>(false, true))), ~(-vec2<i32>(global3[_wgslsmith_index_u32(38141u, 4u)], 29597i)))) | (vec2<i32>(_wgslsmith_clamp_i32(1i, u_input.b >> (arg_1 % 32u), _wgslsmith_add_i32(u_input.b, 7600i)), ~(-1i)) | select(~vec2<i32>(0i, u_input.b) >> ((vec2<u32>(arg_1, u_input.a) >> (vec2<u32>(2724u, arg_1) % vec2<u32>(32u))) % vec2<u32>(32u)), abs(vec2<i32>(global3[_wgslsmith_index_u32(arg_1, 4u)], global3[_wgslsmith_index_u32(arg_1, 4u)]) >> (vec2<u32>(arg_1, u_input.a) % vec2<u32>(32u))), global2.a.x));
    global3 = array<i32, 4>();
    return global1.yx;
}

fn func_2(arg_0: bool, arg_1: Struct_4) -> Struct_1 {
    let var_0 = !global2.a.wz;
    global1 = _wgslsmith_f_op_vec3_f32(-arg_1.c);
    let var_1 = _wgslsmith_f_op_f32(-1499f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - global1.x));
    var var_2 = vec2<u32>(~0u, 29055u);
    var var_3 = vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-9804i, 1i, global3[_wgslsmith_index_u32(28401u, 4u)]), vec3<i32>(global3[_wgslsmith_index_u32(1u, 4u)], u_input.b, 0i)), abs(vec3<i32>(global3[_wgslsmith_index_u32(var_2.x, 4u)], u_input.b, -66246i))) | vec3<i32>(~1032i, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(48900u, 44788u), vec2<u32>(var_2.x, 53594u)), 4u)], ~global3[_wgslsmith_index_u32(u_input.a, 4u)]), abs(~vec3<i32>(-42222i, 1i, global3[_wgslsmith_index_u32(1u, 4u)]))), u_input.b);
    return Struct_1(_wgslsmith_mult_i32(_wgslsmith_mod_i32(~u_input.b ^ var_3.x, firstLeadingBit(abs(-46884i))), _wgslsmith_mod_i32(~0i, global3[_wgslsmith_index_u32(~(u_input.a & 24007u), 4u)])), 7251u, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_2(global2.a), reverseBits(6858u), _wgslsmith_f_op_vec3_f32(arg_1.c * vec3<f32>(var_1, 346f, arg_1.c.x))))), vec2<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(442f, arg_1.c.x)) - -1154f)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec4<u32>) -> vec3<f32> {
    let var_0 = vec4<i32>(0i, -56098i, -32500i, ~(~(-2147483647i)));
    global2 = Struct_2(global2.a);
    let var_1 = var_0;
    var var_2 = arg_1.c;
    let var_3 = select(!global2.a.yxw, vec3<bool>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1878f + arg_0.b.c.x))) != _wgslsmith_f_op_vec2_f32(func_3(Struct_2(vec4<bool>(false, true, true, arg_0.a)), ~arg_0.b.b, _wgslsmith_f_op_vec3_f32(arg_1.c - arg_1.c))).x, arg_0.a, false), !select(!(!vec3<bool>(true, arg_1.b, global4[_wgslsmith_index_u32(u_input.a, 14u)])), global2.a.xwx, !global0[_wgslsmith_index_u32(abs(119290u), 31u)]));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(func_2(true, arg_1).c.x + -1000f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1366f, var_2.x))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.x, arg_1.a.x, _wgslsmith_f_op_f32(-arg_1.c.x))))));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>) -> u32 {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(Struct_3(true, func_2(false, Struct_4(global1.zx, global4[_wgslsmith_index_u32(arg_1.b, 14u)], vec3<f32>(1023f, arg_0, global1.x)))), Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(457f, global1.x)), arg_2.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-183f, global1.x, arg_0) - vec3<f32>(285f, global1.x, global1.x))), vec4<u32>(11806u, _wgslsmith_add_u32(u_input.a, 1u), 4294967295u, select(arg_1.b, 0u, var_0)))) * vec3<f32>(-340f, -929f, global1.x)) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1016f, global1.x, global1.x), vec3<f32>(arg_0, global1.x, global1.x), false)))) + vec3<f32>(_wgslsmith_f_op_f32(-527f * arg_0), 796f, arg_1.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, arg_1.c.x, arg_1.c.x)))))));
    var var_2 = global1.x;
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 202f, var_1.x) - vec3<f32>(-816f, -427f, -727f))))) + vec3<f32>(1475f, global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-364f - -177f) - arg_1.c.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-251f, 1513f, var_1.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1448f, var_1.x, var_1.x) * vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(floor(arg_1.c.x)), _wgslsmith_f_op_f32(-arg_0)))));
    global4 = array<bool, 14>();
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(699f, -1978f, global1.x) + vec3<f32>(global1.x, global1.x, -161f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.x, -682f, 1233f), vec3<f32>(765f, global1.x, global1.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(386f, 430f, 596f))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-708f + global1.x), global1.x, 1000f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, 362f, 1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, 1179f) - vec3<f32>(-1083f, global1.x, global1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(666f, 1000f, global1.x)) - vec3<f32>(757f, -498f, 365f)))), !(!global2.a.xwy))));
    global2 = Struct_2(vec4<bool>(true, global2.a.x, false, !global4[_wgslsmith_index_u32(reverseBits(~4294967295u), 14u)]));
    global1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(select(global1.x, -574f, global2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x * 596f), -1391f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1547f, -905f), _wgslsmith_f_op_f32(1978f + -116f))), _wgslsmith_div_f32(-127f, 1259f))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2085f - _wgslsmith_f_op_f32(ceil(global1.x))), -178f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -962f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) - -619f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1831f)))), global3[_wgslsmith_index_u32(min(u_input.a, func_1(-502f, Struct_1(u_input.b, u_input.a, vec2<f32>(-1372f, var_0.x)), vec4<bool>(global2.a.x, false, global2.a.x, false))), 4u)] < -2147483647i));
    global0 = array<vec3<bool>, 31>();
    global2 = Struct_2(select(global2.a, select(vec4<bool>(true, true, false, global2.a.x), select(select(global2.a, vec4<bool>(global4[_wgslsmith_index_u32(u_input.a, 14u)], global4[_wgslsmith_index_u32(u_input.a, 14u)], global2.a.x, true), global4[_wgslsmith_index_u32(2174u, 14u)]), !global2.a, any(global2.a)), vec4<bool>(global2.a.x, false, !global4[_wgslsmith_index_u32(u_input.a, 14u)], global2.a.x)), global2.a.x));
    global3 = array<i32, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(~1u, 836f);
}

