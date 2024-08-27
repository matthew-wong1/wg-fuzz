struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: array<vec2<u32>, 19>;

var<private> global2: Struct_1;

var<private> global3: bool;

var<private> global4: vec3<f32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = -_wgslsmith_add_i32(~56680i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global2.b), global1[_wgslsmith_index_u32(0u, 19u)]) % 32u), -1i) == ~(-8737i);
    global2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(919f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) - 1f)), arg_2.a.x, _wgslsmith_f_op_f32(1f + global2.a.x)), 1u);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1309f, global2.a.x, -881f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global4.x, -790f, -582f)))) * vec3<f32>(_wgslsmith_f_op_f32(arg_2.a.x - global4.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(arg_2.a.x - 1000f))), select(true, any(!vec4<bool>(arg_0, false, arg_0, arg_0)), true))), 4294967295u);
    let var_2 = -(~vec4<i32>(2147483647i, -arg_1, ~arg_1, u_input.d.x)) << (_wgslsmith_mod_vec4_u32(min(~firstTrailingBit(vec4<u32>(u_input.c.x, 93486u, global2.b, global2.b)), vec4<u32>(max(var_1.b, 2201u), abs(u_input.b.x), ~16517u, 4294967295u)), ~vec4<u32>(_wgslsmith_div_u32(var_1.b, 1u), 48699u, ~var_1.b, _wgslsmith_dot_vec4_u32(vec4<u32>(41801u, u_input.c.x, arg_2.b, 1u), vec4<u32>(u_input.b.x, 4294967295u, 59985u, 0u)))) % vec4<u32>(32u));
    global3 = _wgslsmith_f_op_f32(floor(1416f)) <= arg_2.a.x;
    return vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(trunc(1110f)), global2.a.x, var_1.a.x);
}

fn func_2() -> vec3<f32> {
    global2 = global0[_wgslsmith_index_u32(reverseBits(countOneBits(~1u)), 20u)];
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(any(vec3<bool>(true, true, true)), u_input.d.x, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.a * global2.a)), ~4294967295u >> (global2.b % 32u)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2162f, 661f, 266f, global2.a.x)))));
    global3 = !all(vec2<bool>(true, all(vec3<bool>(true, true, true))));
    var var_1 = -_wgslsmith_mult_vec2_i32(countOneBits(u_input.d.yz), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.d.x), vec2<i32>(u_input.d.x, u_input.d.x)) & vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(1i, 0i, -3365i)), min(u_input.d.x, u_input.d.x)));
    var var_2 = -1028f;
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1592f * var_0.x))), _wgslsmith_f_op_f32(abs(var_0.x))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~_wgslsmith_mult_i32(-2147483647i, ~u_input.d.x);
    let var_1 = false;
    global3 = -380f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-909f, global2.a.x, !var_1))));
    global0 = array<Struct_1, 20>();
    var var_2 = vec2<bool>(any(vec3<bool>(true, true, true)), true);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-671f, global4.x, 152f), global2.a, vec3<bool>(var_2.x, false, false))))) + _wgslsmith_f_op_vec4_f32(func_3(var_1, _wgslsmith_sub_i32(var_0, 25393i), arg_1)).zyz)), max(_wgslsmith_mod_u32((arg_1.b | arg_2.b) & max(arg_1.b, global2.b), u_input.c.x), 0u));
}

fn func_1() -> StorageBuffer {
    let var_0 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(func_2()), 14454u), global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(global2.b, 20u)]);
    var var_1 = countOneBits(max(_wgslsmith_mult_vec3_u32(vec3<u32>(countOneBits(var_0.b), _wgslsmith_div_u32(38668u, 4294967295u), 22570u), vec3<u32>(abs(u_input.a), _wgslsmith_sub_u32(33436u, global2.b), reverseBits(60639u))), ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(6821u, u_input.a, global2.b), vec3<u32>(4294967295u, 0u, var_0.b)))));
    var var_2 = -abs(-(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, -10784i, -44055i), vec4<i32>(-8383i, u_input.d.x, u_input.d.x, u_input.d.x)) & vec4<i32>(-2216i, 17061i, u_input.d.x, 2147483647i)));
    let var_3 = _wgslsmith_dot_vec3_i32(~abs(vec3<i32>(-u_input.d.x, _wgslsmith_clamp_i32(var_2.x, var_2.x, var_2.x), 12355i)), abs(vec3<i32>(u_input.d.x | 0i, _wgslsmith_div_i32(u_input.d.x, u_input.d.x), 2147483647i | var_2.x) << (max(vec3<u32>(13824u, var_1.x, 94534u) ^ vec3<u32>(1u, 0u, 82901u), ~vec3<u32>(var_1.x, 1u, global2.b)) % vec3<u32>(32u))));
    let var_4 = 55428u;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1218f, -1000f) - global4.zx)), vec2<f32>(_wgslsmith_f_op_f32(-global2.a.x), global4.x), true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~_wgslsmith_sub_u32(u_input.b.x, 4294967295u), global2.b, global2.b);
    let var_1 = Struct_1(vec3<f32>(global4.x, -2389f, global2.a.x), var_0.x);
    var var_2 = ~(~70272u);
    var var_3 = _wgslsmith_f_op_f32(-var_1.a.x);
    var_3 = _wgslsmith_f_op_f32(-1025f - 852f);
    var var_4 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1050f, global4.x)), _wgslsmith_f_op_f32(global2.a.x * 363f)))), -277f, var_1.a.x), ~global2.b);
    let x = u_input.a;
    s_output = func_1();
}

