struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<u32, 8> = array<u32, 8>(1u, 32340u, 6573u, 1u, 0u, 4294967295u, 46352u, 28361u);

var<private> global2: f32;

var<private> global3: array<Struct_2, 32>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> f32 {
    global1 = array<u32, 8>();
    var var_0 = arg_0.d.a.x;
    var_0 = arg_0.d.e.a.x > arg_0.d.e.a.x;
    global1 = array<u32, 8>();
    var_0 = all(arg_0.d.a.yy);
    return _wgslsmith_div_f32(arg_0.d.e.a.x, 1f);
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = vec2<f32>(-509f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(Struct_3(vec4<bool>(true, true, true, true), vec2<bool>(true, true), _wgslsmith_add_i32(u_input.a.x, -30673i), global3[_wgslsmith_index_u32(~13310u, 32u)]), u_input.c.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(454f)), -611f, true)))))));
    var var_1 = _wgslsmith_f_op_f32(min(-678f, -869f));
    var var_2 = select(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), 1u != arg_0), vec3<bool>(true, true, true)), vec3<bool>(false, true, true), true);
    var var_3 = u_input.a.x;
    let var_4 = Struct_3(!(!(!vec4<bool>(true, var_2.x, var_2.x, true))), var_2.zy, -60059i, Struct_2(!select(select(vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(true, var_2.x, false), vec3<bool>(true, true, true)), !vec3<bool>(var_2.x, true, true), select(vec3<bool>(false, true, var_2.x), vec3<bool>(false, true, false), vec3<bool>(var_2.x, true, var_2.x))), _wgslsmith_mod_vec2_i32(u_input.d.yx, ~u_input.c.yz), -2147483647i, ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 0i, u_input.c.x, -30978i), vec4<i32>(u_input.c.x, u_input.a.x, u_input.c.x, u_input.a.x)) << (u_input.e % vec4<u32>(32u)), Struct_1(vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(max(312f, -1815f)), _wgslsmith_f_op_f32(sign(1181f))))));
    return any(vec3<bool>(any(var_4.a.zy), any(vec2<bool>(var_2.x, any(var_4.a))), !any(vec4<bool>(false, true, var_4.d.a.x, var_4.a.x))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: i32, arg_3: vec2<bool>) -> f32 {
    var var_0 = Struct_3(vec4<bool>(arg_3.x, true, arg_3.x, false), vec2<bool>(all(select(vec4<bool>(true, false, arg_3.x, false), !vec4<bool>(arg_3.x, arg_3.x, true, false), vec4<bool>(true, true, true, true))), ((arg_3.x || false) & true) || (true != arg_3.x)), ~select(u_input.d.x, _wgslsmith_add_i32(u_input.a.x, 2147483647i) << (1u % 32u), true), Struct_2(vec3<bool>(select(true, true & arg_3.x, true), true, (u_input.b >= arg_0.x) && func_3(global1[_wgslsmith_index_u32(4294967295u, 8u)])), -vec2<i32>(arg_2 & u_input.c.x, min(2147483647i, arg_2)), u_input.d.x, vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, arg_2, -26268i) >> (u_input.e.wwz % vec3<u32>(32u)), u_input.c), -2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, -24052i, u_input.a.x, 7322i), vec4<i32>(-1793i, -18207i, 0i, u_input.a.x)), -vec4<i32>(54318i, u_input.c.x, -20228i, 2147483647i)), _wgslsmith_mult_i32(u_input.a.x ^ u_input.c.x, ~(-2147483647i))), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1673f, 1142f, -380f, -1665f) - vec4<f32>(171f, 953f, 231f, -585f)))))));
    let var_1 = Struct_3(!vec4<bool>(var_0.b.x, true, true, !var_0.b.x || !arg_3.x), vec2<bool>(var_0.d.a.x, !(!(u_input.e.x >= 8090u))), _wgslsmith_div_i32(i32(-1i) * -2147483647i, -54180i), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.e.zy, firstTrailingBit(u_input.e.xw)), (max(arg_1.xz, arg_1.zz) & arg_1.xz) ^ ~_wgslsmith_add_vec2_u32(arg_0, vec2<u32>(37897u, 47560u))), 32u)]);
    var var_2 = ~vec4<u32>(u_input.e.x, ~global1[_wgslsmith_index_u32(min(22560u, firstTrailingBit(4294967295u)), 8u)], 57543u, 24761u);
    var_2 = u_input.e;
    let var_3 = _wgslsmith_f_op_f32(-var_0.d.e.a.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.d.e.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2379f) * -267f)), -arg_2 > var_1.d.b.x)) - _wgslsmith_f_op_f32(306f + var_0.d.e.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(1784f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_3(vec4<bool>(true, false, false, true), vec2<bool>(true, false), -27277i, global3[_wgslsmith_index_u32(40064u, 32u)]), u_input.d.x)), -614f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1478f + -1313f) - -715f) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1285f + 1376f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec2_u32(u_input.e.yz, u_input.e.zy), vec3<u32>(4294967295u, 0u, global1[_wgslsmith_index_u32(4294967295u, 8u)]), 2147483647i, select(vec2<bool>(false, true), vec2<bool>(false, true), false))), -1000f), _wgslsmith_f_op_f32(trunc(-694f))));
    global2 = _wgslsmith_div_f32(-242f, -825f);
    global2 = var_0.a.x;
    var var_1 = Struct_3(select(vec4<bool>(u_input.c.x <= _wgslsmith_dot_vec4_i32(vec4<i32>(-31674i, -27911i, 5938i, u_input.d.x), vec4<i32>(u_input.d.x, -2147483647i, -48036i, u_input.d.x)), !any(vec2<bool>(false, true)), (u_input.d.x != -1i) & all(vec3<bool>(false, true, false)), any(vec2<bool>(true, true)) || true), select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), false)), vec4<bool>(all(vec3<bool>(false, false, false)), true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(select(true, true, true), firstLeadingBit(u_input.d.x) >= _wgslsmith_mult_i32(-29600i, 1i), false == any(vec3<bool>(true, false, false)), true)), !select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(vec2<bool>(true, false), vec2<bool>(false, false), true), true), vec2<bool>(true, true)), ~(~0i) & reverseBits(_wgslsmith_sub_i32(u_input.d.x, u_input.d.x)), Struct_2(select(vec3<bool>(3496u != u_input.b, true, true), vec3<bool>(true, false, true), false), -_wgslsmith_add_vec2_i32(u_input.c.xy << (u_input.e.xz % vec2<u32>(32u)), u_input.a.yz), u_input.a.x, _wgslsmith_mod_vec4_i32(vec4<i32>(-19804i, -2147483647i, u_input.a.x, -u_input.d.x), ~(~vec4<i32>(-31346i, -2147483647i, -1i, u_input.d.x))), var_0));
    var var_2 = true;
    global2 = -1836f;
    let var_3 = u_input.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(972f);
}

