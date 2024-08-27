struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
    d: i32,
    e: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false));

var<private> global1: Struct_3 = Struct_3(Struct_1(vec4<bool>(false, false, true, false), 1u, vec4<bool>(false, true, false, false), 956f), -1099f, vec3<u32>(25281u, 1u, 1u), 0i, -1034f);

var<private> global2: Struct_3 = Struct_3(Struct_1(vec4<bool>(true, true, false, true), 29086u, vec4<bool>(true, false, false, true), -1720f), 979f, vec3<u32>(4294967295u, 4294967295u, 86767u), i32(-2147483648), -2487f);

var<private> global3: Struct_3;

var<private> global4: array<vec4<i32>, 15>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    global3 = Struct_3(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-360f - _wgslsmith_f_op_f32(floor(-1805f))) - 837f)), firstLeadingBit(global3.c), global1.d, _wgslsmith_f_op_f32(global1.a.d - global3.a.d));
    var var_0 = select(vec4<bool>(select(!global3.a.a.x | !global2.a.a.x, true, global1.d >= global3.d), global3.a.a.x, false, -358f <= _wgslsmith_f_op_f32(global3.b - _wgslsmith_f_op_f32(113f - -912f))), !vec4<bool>(global1.a.c.x, any(select(global2.a.a.ywy, global1.a.a.yzz, global1.a.a.x)), all(global3.a.c.yyw), global2.a.a.x), global3.a.a);
    global1 = Struct_3(Struct_1(vec4<bool>(true, global1.a.a.x, !(!global3.a.a.x), false), ~u_input.a.x, select(select(vec4<bool>(true, global2.a.a.x, true, true), !global0[_wgslsmith_index_u32(1u, 29u)], select(global3.a.a, vec4<bool>(false, true, global1.a.c.x, true), global1.a.a)), vec4<bool>(true, any(global3.a.a), select(global1.a.a.x, global2.a.a.x, global3.a.c.x), true), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1718f * global3.b))), -650f)), _wgslsmith_f_op_f32(ceil(global2.e)), global2.c, global1.d, _wgslsmith_div_f32(global1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.e + global2.b))), _wgslsmith_f_op_f32(-537f * _wgslsmith_f_op_f32(global3.a.d + -923f)))));
    return _wgslsmith_f_op_f32(f32(-1f) * -295f);
}

fn func_2() -> f32 {
    let var_0 = vec4<f32>(global1.e, global2.a.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3()))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b, _wgslsmith_f_op_f32(global2.b + -433f)))));
    var var_1 = abs(-min(vec4<i32>(global2.d, ~global3.d, _wgslsmith_clamp_i32(global3.d, global1.d, global1.d), ~15200i), countOneBits(vec4<i32>(global3.d, -47798i, -39487i, global3.d))));
    global2 = Struct_3(global2.a, 686f, _wgslsmith_add_vec3_u32(vec3<u32>(countOneBits(7207u), 1u >> (countOneBits(1u) % 32u), ~max(global3.c.x, global3.a.b)), select(vec3<u32>(1u, global1.a.b, global1.c.x), _wgslsmith_mult_vec3_u32(global2.c << (vec3<u32>(4294967295u, global3.a.b, 1u) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(global2.a.b, 0u, 34862u), vec3<u32>(0u, 0u, 0u))), all(!vec2<bool>(global3.a.c.x, true)))), -1i, global1.a.d);
    let var_2 = -_wgslsmith_div_i32(_wgslsmith_mod_i32(-1i, 7851i), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-49567i, -1i, -12268i, 5291i), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, global1.d, global3.d, var_1.x), global4[_wgslsmith_index_u32(4294967295u, 15u)])), global2.d));
    global1 = Struct_3(global3.a, 1428f, global3.c, _wgslsmith_sub_i32(-37920i, i32(-1i) * -1i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.e + global1.b) - _wgslsmith_div_f32(var_0.x, global2.b)) - -1247f), -818f));
    return global1.b;
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: Struct_4) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(848f, _wgslsmith_f_op_f32(f32(-1f) * -908f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.e * 1000f), arg_1.e))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.b))) * 1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1040f * global1.a.d) * arg_0) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-977f + 277f), _wgslsmith_f_op_f32(abs(global1.a.d)))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())) * global1.a.d))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(-global2.a.d)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1131f, 1579f)) - -1043f)) + global1.a.d));
    var var_2 = Struct_3(Struct_1(select(!vec4<bool>(false, true, arg_1.a.a.x, global1.a.a.x), global3.a.c, arg_1.a.c.x || true), ~0u, arg_1.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(f32(-1f) * -1405f), arg_1.c, -_wgslsmith_mod_i32(-53905i, 29941i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(1000f)))) + arg_1.b) - _wgslsmith_f_op_f32(func_3())));
    let var_3 = Struct_1(vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-727f - 872f)) != _wgslsmith_f_op_f32(round(-1398f)), global1.a.a.x, !arg_1.a.c.x, var_2.a.c.x), reverseBits(var_2.c.x), global0[_wgslsmith_index_u32(~max(~_wgslsmith_mod_u32(6822u, arg_1.c.x), 1u), 29u)], -366f);
    var_1 = -1000f;
    return -(vec2<i32>(-2147483647i, ~0i) << (firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.c.x, 49267u), global2.c.yy, vec2<u32>(global1.a.b, global2.a.b)) & (global2.c.xy ^ vec2<u32>(var_3.b, u_input.a.x))) % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: Struct_2, arg_3: vec4<f32>) -> vec4<u32> {
    global1 = Struct_3(Struct_1(vec4<bool>(false, false, !(global2.a.a.x & global2.a.a.x), true), global3.c.x, select(global1.a.c, vec4<bool>(global3.a.d == global2.b, true, true, any(arg_0.a.c.zzy)), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1110f - _wgslsmith_f_op_f32(global1.a.d + 1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -2862f))), 1059f, global1.c, (-global1.d & firstTrailingBit(-44021i)) ^ arg_2.c.x, 843f);
    let var_0 = arg_2.d.a.yxx;
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.a.xz * _wgslsmith_f_op_vec2_f32(-arg_2.a.yy)) * arg_2.a.zx))));
    global3 = Struct_3(Struct_1(global3.a.c, _wgslsmith_add_u32(4294967295u, _wgslsmith_div_u32(_wgslsmith_mult_u32(0u, 4294967295u), _wgslsmith_mult_u32(u_input.b.x, 90029u))), select(!global0[_wgslsmith_index_u32(countOneBits(40556u), 29u)], vec4<bool>(1132f < arg_0.a.d, false, global1.a.a.x, true), vec4<bool>(global2.a.a.x, true, global3.a.a.x, true)), -546f), arg_2.d.d, arg_0.c, global1.d, _wgslsmith_f_op_f32(-1386f - arg_0.e));
    var var_2 = ~(~_wgslsmith_mod_u32(~(~arg_1), countOneBits(0u)));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(638f, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(abs(global1.e))));
    let var_1 = (func_4(Struct_3(Struct_1(vec4<bool>(false, global2.a.a.x, false, global3.a.c.x), 1u, vec4<bool>(true, false, global3.a.a.x, true), global3.a.d), _wgslsmith_f_op_f32(floor(-400f)), global2.c, ~12632i, _wgslsmith_f_op_f32(global2.a.d + -1000f)), 73728u, Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-155f, global3.e, global2.a.d)), func_1(2369f, Struct_3(global2.a, global1.b, global1.c, global3.d, -298f), vec4<i32>(28619i, 0i, global1.d, 16711i), Struct_4(vec3<f32>(243f, global3.b, global2.e), global1.a.a.x)), global4[_wgslsmith_index_u32(34619u, 15u)], global1.a, global3.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(329f, global2.a.d, global1.e, -136f))) * vec4<f32>(1727f, global1.a.d, 149f, global2.a.d))) >> (_wgslsmith_add_vec4_u32(~(~vec4<u32>(global3.a.b, 0u, u_input.b.x, 1u)), vec4<u32>(7099u, min(7673u, u_input.b.x), 5123u << (global1.a.b % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 31755u), vec2<u32>(0u, global3.a.b)))) % vec4<u32>(32u))) >> (min(_wgslsmith_div_vec4_u32(firstLeadingBit(~vec4<u32>(global1.c.x, 0u, 36882u, u_input.b.x)), _wgslsmith_mult_vec4_u32(~u_input.a, ~u_input.a)), vec4<u32>(28155u, _wgslsmith_add_u32(u_input.a.x & 4294967295u, 865u >> (global1.a.b % 32u)), _wgslsmith_div_u32(~global1.c.x, u_input.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(4351u, u_input.a.x, global1.c.x), func_4(Struct_3(global3.a, 1542f, u_input.a.wzy, -1i, global2.e), 37491u, Struct_2(vec3<f32>(global3.b, global1.e, -220f), vec2<i32>(8702i, global1.d), vec4<i32>(0i, -2147483647i, -19791i, global2.d), Struct_1(vec4<bool>(true, global2.a.c.x, false, true), 1u, vec4<bool>(false, global3.a.a.x, false, global2.a.a.x), -224f), global1.a), vec4<f32>(-397f, -318f, -389f, global2.a.d)).xyw))) % vec4<u32>(32u));
    var var_2 = global2.a.b;
    global4 = array<vec4<i32>, 15>();
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.e, _wgslsmith_f_op_f32(global1.e - 434f), 1165f))) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.e + -349f), 1607f)), 1f, global2.e))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~global1.c.x, reverseBits(~70266u)) >> (var_1.zx % vec2<u32>(32u)));
}

