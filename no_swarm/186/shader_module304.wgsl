struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: array<vec4<i32>, 24>;

var<private> global2: array<vec3<bool>, 31>;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec2<u32>(4294967295u, 17703u), vec4<i32>(0i, 2147483647i, 0i, 17454i), vec2<f32>(-877f, -1000f), vec3<u32>(0u, 50260u, 0u), vec3<f32>(-1117f, -1000f, -1913f)), -1146f, vec2<u32>(19029u, 4294967295u), 42233u, vec2<f32>(-2680f, 620f));

var<private> global4: vec2<u32> = vec2<u32>(4294967295u, 1u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_f32(global3.e.x * _wgslsmith_f_op_f32(global3.e.x * _wgslsmith_f_op_f32(round(-1662f)))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1343f) + global3.e.x))), global3.a.e.x);
    let var_1 = var_0;
    var var_2 = -2147483647i;
    let var_3 = Struct_2(global3.a, global3.e.x, vec2<u32>(_wgslsmith_div_u32(global3.c.x, ~1u), abs(~global3.a.a.x) << (_wgslsmith_add_u32(firstTrailingBit(global3.c.x), abs(global3.d)) % 32u)), ~(30425u >> (_wgslsmith_dot_vec2_u32(global3.a.a, ~global3.a.a) % 32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.e.x, global3.e.x))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-489f, -921f) * vec2<f32>(-1214f, 101f))) * vec2<f32>(_wgslsmith_f_op_f32(-global3.b), _wgslsmith_div_f32(global3.a.e.x, _wgslsmith_f_op_f32(-global3.e.x)))));
    let var_4 = global3.a;
    return _wgslsmith_f_op_f32(-var_3.b);
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec4<f32>, arg_3: Struct_3) -> f32 {
    global4 = global3.a.d.yz;
    var var_0 = global3.a.a;
    var var_1 = _wgslsmith_f_op_f32(global3.e.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.x, _wgslsmith_f_op_f32(func_3())))) - arg_2.x));
    var var_2 = Struct_2(Struct_1(global3.a.d.zy | vec2<u32>(1u, abs(1u)), vec4<i32>(_wgslsmith_mult_i32(-15574i, u_input.b.x) << (36038u % 32u), firstLeadingBit(countOneBits(arg_0)), -countOneBits(global3.a.b.x), u_input.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(462f, arg_2.x), arg_2.xx, vec2<bool>(true, true)))), arg_2.yx), global3.a.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1267f, arg_3.b.x, -566f)))), global3.a.c.x, abs(global3.c), _wgslsmith_clamp_u32(reverseBits(1u), 1u, global3.d), arg_3.b.yz);
    let var_3 = -39082i;
    return _wgslsmith_f_op_f32(-arg_3.b.x);
}

fn func_1() -> f32 {
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(_wgslsmith_sub_i32(16521i, -u_input.c.x) ^ max(global3.a.b.x ^ 2147483647i, _wgslsmith_sub_i32(8808i, -4378i)), ~1u, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.b, 722f, global3.e.x, 1289f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.e.x, 938f, global3.a.e.x, global3.e.x)))))), Struct_3(61744u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global3.b, global3.a.c.x, 924f) + vec4<f32>(global3.b, global3.e.x, -1407f, global3.a.c.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(299f, 127f, 1252f, -999f) - vec4<f32>(global3.b, global3.b, global3.a.e.x, global3.b)))))), _wgslsmith_f_op_f32(f32(-1f) * -228f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1393f, -985f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -364f)), _wgslsmith_f_op_f32(trunc(-140f)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - 578f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(func_1())));
    var var_2 = _wgslsmith_sub_i32(-2400i, (u_input.c.x | global3.a.b.x) >> (global4.x % 32u));
    global2 = array<vec3<bool>, 31>();
    var_2 = -6683i;
    global3 = Struct_2(global0[_wgslsmith_index_u32(global4.x ^ global4.x, 7u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -467f) * var_1.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-329f - var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -654f))))), firstLeadingBit(global3.c), (~_wgslsmith_dot_vec3_u32(vec3<u32>(7871u, global3.d, 23582u), global3.a.d) & ~global3.d) >> (max(_wgslsmith_dot_vec3_u32(~global3.a.d, vec3<u32>(global3.d, global4.x, 29553u) | vec3<u32>(34233u, global3.a.d.x, 1u)), global3.d) % 32u), _wgslsmith_f_op_vec2_f32(step(global3.a.c, vec2<f32>(2120f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -477f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(global3.a.b.x, abs(~global3.a.b.x), u_input.c.x, global3.a.b.x), global3.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.a.c - vec2<f32>(var_1.x, _wgslsmith_f_op_f32(min(-188f, -1000f))))), firstTrailingBit(_wgslsmith_mult_vec3_u32(select(~vec3<u32>(1u, global3.c.x, 1u), ~global3.a.d, vec3<bool>(true, true, true)), vec3<u32>(40600u, 79635u, _wgslsmith_dot_vec3_u32(global3.a.d, vec3<u32>(1u, global4.x, 25229u))))));
}

