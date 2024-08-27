struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: vec3<bool>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31> = array<i32, 31>(1i, 1i, 1i, -25327i, i32(-2147483648), -7558i, 30817i, -1i, -1i, -78i, 1i, 15520i, 2147483647i, 16591i, 2147483647i, -1i, -10833i, -26662i, 57424i, -51129i, -58186i, i32(-2147483648), 24819i, -1i, i32(-2147483648), 1i, -24976i, 13203i, 82794i, -10251i, -1i);

var<private> global1: array<Struct_1, 31>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: bool) -> u32 {
    let var_0 = arg_1.b;
    var var_1 = ~4294967295u;
    var_1 = ~_wgslsmith_add_u32(~u_input.c.x, ~_wgslsmith_mult_u32(~0u, min(19828u, u_input.c.x)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-557f)))))), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(409f)))));
    let var_3 = Struct_2(vec4<bool>(true, true, u_input.d < ~5930u, _wgslsmith_sub_i32(-2147483647i ^ global0[_wgslsmith_index_u32(1u, 31u)], _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, -2147483647i)) == min(-u_input.a.x, 49634i)), u_input.b, select(select(vec3<bool>(any(vec4<bool>(arg_3, arg_3, false, arg_3)), all(vec4<bool>(false, arg_2.x, true, arg_3)), true), select(!vec3<bool>(arg_2.x, false, false), vec3<bool>(false, true, false), select(vec3<bool>(arg_2.x, arg_3, true), vec3<bool>(arg_3, arg_2.x, arg_2.x), arg_3)), vec3<bool>(true, true, true)), vec3<bool>(arg_3, true, !any(vec4<bool>(arg_2.x, arg_3, false, arg_2.x))), false), _wgslsmith_add_i32(-u_input.a.x, -49170i), max(~vec4<u32>(u_input.b, _wgslsmith_mod_u32(u_input.d, u_input.b), 1u, 4294967295u), vec4<u32>(u_input.c.x & ~u_input.d, 1u, 4294967295u, ~u_input.c.x)));
    return ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 4294967295u), var_3.e.wx), ~vec2<u32>(var_3.b, var_3.e.x)), var_3.e.wx) & (_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.c.x), select(u_input.c.xzw, var_3.e.yxx, var_3.c)), u_input.d, u_input.c.x) << (0u % 32u));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_3) -> f32 {
    var var_0 = arg_3.c;
    global0 = array<i32, 31>();
    let var_1 = arg_3;
    let var_2 = Struct_2(!var_1.d.a, arg_2.x, arg_3.d.c, u_input.a.x << ((func_3(Struct_1(var_1.c.b, -1012f), arg_1, select(vec2<bool>(true, arg_3.d.a.x), var_1.d.c.zz, var_1.d.c.x), !var_1.d.a.x) >> (_wgslsmith_sub_u32(~1u, ~20931u) % 32u)) % 32u), ~countOneBits(arg_2) | vec4<u32>(u_input.c.x, max(_wgslsmith_mult_u32(0u, 25990u), 4294967295u), ~_wgslsmith_div_u32(arg_2.x, arg_3.d.b), countOneBits(firstLeadingBit(arg_2.x))));
    global1 = array<Struct_1, 31>();
    return arg_1.a;
}

fn func_1(arg_0: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-289f, 1000f)) * _wgslsmith_f_op_f32(func_2(_wgslsmith_div_f32(346f, 418f), global1[_wgslsmith_index_u32(~0u, 31u)], select(u_input.c, vec4<u32>(u_input.d, u_input.c.x, 4294967295u, u_input.d), true), Struct_3(-764f, vec3<f32>(2132f, -424f, -836f), Struct_1(457f, 1000f), Struct_2(vec4<bool>(true, arg_0, arg_0, false), 0u, vec3<bool>(arg_0, false, arg_0), -1i, vec4<u32>(28947u, u_input.b, u_input.b, u_input.b)))))), 1f));
    let var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(13368i, _wgslsmith_clamp_i32(u_input.a.x << (1u % 32u), ~13846i, 1i), 57021i, 2147483647i), select(_wgslsmith_add_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 23491i, -1i, u_input.a.x), vec4<i32>(0i, -1i, 1007i, global0[_wgslsmith_index_u32(u_input.c.x, 31u)])), firstTrailingBit(select(vec4<i32>(-31686i, -22390i, global0[_wgslsmith_index_u32(u_input.b, 31u)], -2147483647i), vec4<i32>(-1i, -1350i, global0[_wgslsmith_index_u32(u_input.d, 31u)], global0[_wgslsmith_index_u32(58920u, 31u)]), true))), _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(9675i, u_input.a.x, u_input.a.x, 2147483647i) << (vec4<u32>(25098u, 1u, 0u, u_input.b) % vec4<u32>(32u))), ~vec4<i32>(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(36779u, 31u)], global0[_wgslsmith_index_u32(52394u, 31u)]), vec4<i32>(0i, u_input.a.x, _wgslsmith_div_i32(0i, global0[_wgslsmith_index_u32(u_input.d, 31u)]), _wgslsmith_div_i32(global0[_wgslsmith_index_u32(u_input.d, 31u)], u_input.a.x))), select(!(!vec4<bool>(false, arg_0, false, true)), !vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(arg_0, arg_0, var_0.x > var_0.x, !arg_0))));
    let var_2 = ~u_input.c.yz;
    var var_3 = !all(vec2<bool>(true, !arg_0));
    var_3 = all(vec4<bool>(_wgslsmith_f_op_f32(280f - var_0.x) <= _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(max(-889f, var_0.x))), select(!(var_2.x > 11280u), any(!vec4<bool>(arg_0, false, arg_0, arg_0)), any(!vec4<bool>(true, arg_0, true, arg_0))), arg_0, (any(vec3<bool>(true, arg_0, true)) | true) != true));
    return global0[_wgslsmith_index_u32(var_2.x, 31u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 31>();
    var var_0 = ~2147483647i;
    var var_1 = abs(vec2<i32>(abs(~(-1i)), func_1(true)));
    global1 = array<Struct_1, 31>();
    var_1 = vec2<i32>(abs(-90599i), reverseBits(_wgslsmith_div_i32(reverseBits(global0[_wgslsmith_index_u32(u_input.d, 31u)]), -5898i & (var_1.x & -41883i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-572f, 345f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-126f * -1018f), 1628f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-975f))))), ~min(~_wgslsmith_add_u32(0u, 4294967295u), u_input.b), -1714f, countOneBits(~u_input.b));
}

