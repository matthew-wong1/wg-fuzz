struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 8>;

var<private> global1: array<bool, 17> = array<bool, 17>(true, false, true, false, true, true, false, true, true, true, true, true, true, true, false, true, false);

var<private> global2: vec3<f32>;

var<private> global3: vec3<f32> = vec3<f32>(-1309f, 229f, -692f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    let var_0 = vec2<bool>(all(select(!(!vec3<bool>(false, arg_0.d.x, true)), vec3<bool>(!arg_0.d.x, all(vec2<bool>(true, arg_0.a)), any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], global1[_wgslsmith_index_u32(18023u, 17u)], false, global1[_wgslsmith_index_u32(u_input.a.x, 17u)]))), all(select(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], vec2<bool>(arg_0.d.x, false), arg_0.d.x)))), arg_0.a == global1[_wgslsmith_index_u32(~10845u, 17u)]);
    var var_1 = false;
    var_1 = any(vec3<bool>(false, any(!vec4<bool>(arg_0.a, false, global1[_wgslsmith_index_u32(u_input.a.x, 17u)], true)) & global1[_wgslsmith_index_u32(u_input.a.x, 17u)], all(vec2<bool>(select(true, false, arg_0.a), any(vec3<bool>(false, false, true))))));
    return _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(arg_0.b))));
}

fn func_2() -> Struct_3 {
    global3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1245f), -1810f, -178f), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(true, vec3<f32>(213f, -757f, -810f), vec2<i32>(11059i, 2147483647i), global0[_wgslsmith_index_u32(u_input.a.x, 8u)]))), select(!vec3<bool>(global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(4294967295u, 17u)], true), select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a.x, 17u)]), vec3<bool>(global1[_wgslsmith_index_u32(1u, 17u)], global1[_wgslsmith_index_u32(u_input.a.x, 17u)], global1[_wgslsmith_index_u32(u_input.a.x, 17u)]), true), global1[_wgslsmith_index_u32(u_input.a.x, 17u)]))))));
    global0 = array<vec2<bool>, 8>();
    let var_0 = -748f;
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1567f, -1398f, -265f) + vec3<f32>(global3.x, global3.x, global2.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-990f, -114f, var_0) * vec3<f32>(2472f, var_0, 349f)))))));
    let var_1 = Struct_2(Struct_1(global1[_wgslsmith_index_u32(u_input.a.x ^ countOneBits(_wgslsmith_add_u32(u_input.a.x, u_input.a.x)), 17u)], _wgslsmith_f_op_vec3_f32(func_3(Struct_1(global1[_wgslsmith_index_u32(u_input.a.x << (52627u % 32u), 17u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, -1393f, var_0)), min(vec2<i32>(-57273i, -4026i), vec2<i32>(0i, -55832i)), select(global0[_wgslsmith_index_u32(8378u, 8u)], global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)])))), max(_wgslsmith_sub_vec2_i32(~vec2<i32>(24577i, -24572i), ~vec2<i32>(13910i, 0i)), select(vec2<i32>(-29209i, 1i), vec2<i32>(1i, 1i), false)), global0[_wgslsmith_index_u32(u_input.a.x, 8u)]));
    return Struct_3(any(!(!select(vec3<bool>(var_1.a.a, true, var_1.a.a), vec3<bool>(true, true, false), vec3<bool>(var_1.a.a, true, true)))), !all(select(vec4<bool>(var_1.a.d.x, global1[_wgslsmith_index_u32(u_input.a.x, 17u)], true, true), select(vec4<bool>(false, var_1.a.d.x, true, true), vec4<bool>(global1[_wgslsmith_index_u32(53116u, 17u)], var_1.a.d.x, global1[_wgslsmith_index_u32(0u, 17u)], false), vec4<bool>(var_1.a.a, true, global1[_wgslsmith_index_u32(u_input.a.x, 17u)], var_1.a.d.x)), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], var_1.a.a, global1[_wgslsmith_index_u32(u_input.a.x, 17u)], var_1.a.a))), Struct_1(any(select(select(vec4<bool>(var_1.a.a, global1[_wgslsmith_index_u32(4294967295u, 17u)], var_1.a.a, true), vec4<bool>(false, true, var_1.a.d.x, var_1.a.a), global1[_wgslsmith_index_u32(0u, 17u)]), select(vec4<bool>(true, true, true, true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 17u)], global1[_wgslsmith_index_u32(u_input.a.x, 17u)], false, true), vec4<bool>(var_1.a.a, var_1.a.a, global1[_wgslsmith_index_u32(6451u, 17u)], true)), select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 17u)], false, var_1.a.a, true), vec4<bool>(var_1.a.a, false, false, false), vec4<bool>(true, false, true, true)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(var_1.a.d.x, var_1.a.b, vec2<i32>(1i, var_1.a.c.x), var_1.a.d))) * _wgslsmith_f_op_vec3_f32(var_1.a.b * var_1.a.b)))), -_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(var_1.a.c, var_1.a.c), reverseBits(vec2<i32>(var_1.a.c.x, var_1.a.c.x))), vec2<bool>(true, abs(var_1.a.c.x) != var_1.a.c.x)));
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_2, arg_3: vec3<bool>) -> u32 {
    var var_0 = arg_2;
    var var_1 = func_2();
    var var_2 = Struct_2(Struct_1(false, _wgslsmith_f_op_vec3_f32(var_0.a.b + vec3<f32>(_wgslsmith_f_op_f32(global3.x + var_1.c.b.x), _wgslsmith_f_op_f32(exp2(global3.x)), _wgslsmith_f_op_f32(round(global3.x)))), vec2<i32>(var_0.a.c.x, var_1.c.c.x), var_1.c.d));
    var var_3 = all(select(select(select(vec4<bool>(true, false, var_1.c.d.x, global1[_wgslsmith_index_u32(0u, 17u)]), !vec4<bool>(false, false, false, var_1.c.a), any(vec3<bool>(false, true, var_1.a))), !select(vec4<bool>(var_0.a.a, true, arg_2.a.d.x, global1[_wgslsmith_index_u32(68394u, 17u)]), vec4<bool>(true, true, true, arg_3.x), false), select(!vec4<bool>(true, var_1.b, false, false), vec4<bool>(false, false, false, var_2.a.d.x), false)), vec4<bool>(true, _wgslsmith_f_op_f32(322f + 1570f) == _wgslsmith_f_op_f32(-295f + var_0.a.b.x), true & !var_2.a.d.x, true), any(vec2<bool>(!var_0.a.a, arg_2.a.d.x))));
    var var_4 = 42770u;
    return abs(~(~0u));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: vec3<u32>, arg_3: Struct_3) -> vec3<f32> {
    let var_0 = arg_3;
    var var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(arg_1.x, arg_1.x, (func_2().c.c.x >> ((arg_0.x << (arg_2.x % 32u)) % 32u)) >> ((arg_0.x & max(arg_0.x, 35243u)) % 32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_3.c.c.x, -18465i, var_0.c.c.x), vec3<i32>(~(-1i) ^ min(-71149i, arg_1.x), -arg_3.c.c.x, func_2().c.c.x)));
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(arg_3.c.b)))))) - vec3<f32>(1318f, 1093f, -539f));
    var var_2 = vec2<i32>(~(~abs(-49420i)) & arg_1.x, 1673i >> (abs(_wgslsmith_mod_u32(u_input.a.x & 5763u, arg_0.x)) % 32u));
    var var_3 = vec3<bool>(_wgslsmith_mult_i32(_wgslsmith_div_i32(arg_1.x ^ arg_3.c.c.x, -2147483647i | var_2.x), 4190i) > (_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.c.c.x, 0i, 8686i), arg_1.xyz) >> (arg_0.x % 32u)), func_2().c.d.x, false);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_3.c.b, vec3<f32>(arg_3.c.b.x, arg_3.c.b.x, 1730f)) - _wgslsmith_f_op_vec3_f32(var_0.c.b - vec3<f32>(-137f, global3.x, -369f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    let var_1 = global3.x;
    global1 = array<bool, 17>();
    global3 = _wgslsmith_f_op_vec3_f32(func_4(u_input.a, -_wgslsmith_sub_vec4_i32(abs(vec4<i32>(15214i, var_0, -40736i, var_0)) >> (u_input.a % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -9171i, var_0, var_0) << (vec4<u32>(u_input.a.x, 29250u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), -vec4<i32>(var_0, var_0, -2147483647i, 1i))), ~vec3<u32>(min(~1u, u_input.a.x), ~func_1(vec3<u32>(u_input.a.x, 47333u, 0u), true, Struct_2(Struct_1(false, vec3<f32>(-859f, global2.x, 1000f), vec2<i32>(1i, -1i), vec2<bool>(global1[_wgslsmith_index_u32(1u, 17u)], false))), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], global1[_wgslsmith_index_u32(17886u, 17u)], true)), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(u_input.a.xyx, u_input.a.wyy), countOneBits(1u))), Struct_3(any(vec3<bool>(true, true, true)), global3.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * 180f), Struct_1(func_2().b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, -413f) - vec3<f32>(global2.x, global3.x, -394f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global3.x, global3.x)), global1[_wgslsmith_index_u32(reverseBits(0u), 17u)])), -vec2<i32>(0i, var_0), !global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, 14864u), 8u)]))));
    var var_2 = vec2<f32>(112f, func_2().c.b.x);
    var var_3 = global1[_wgslsmith_index_u32(~((~1u | ~(~u_input.a.x)) & 0u), 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, abs(~(~u_input.a.x)), select(u_input.a.yy, firstTrailingBit(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_mod_vec2_u32(u_input.a.zw, vec2<u32>(u_input.a.x, u_input.a.x)))), global1[_wgslsmith_index_u32(u_input.a.x, 17u)]));
}

