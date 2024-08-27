struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
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

var<private> global0: vec3<i32>;

var<private> global1: array<vec3<bool>, 2>;

var<private> global2: Struct_1;

var<private> global3: bool;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: bool, arg_3: vec3<bool>) -> i32 {
    var var_0 = arg_1.b;
    var var_1 = !(!select(vec2<bool>(true, true), arg_3.zy, select(!vec2<bool>(arg_3.x, true), !arg_3.zz, true)));
    global2 = Struct_1(false, 9569u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.c), _wgslsmith_f_op_vec2_f32(select(arg_1.c, global2.c, arg_0.wy))));
    let var_2 = vec4<i32>(~global0.x >> (0u % 32u), ~global0.x, _wgslsmith_div_i32(1i | -global0.x, reverseBits(global0.x << (arg_1.b % 32u))), 1i) & vec4<i32>(_wgslsmith_sub_i32(global0.x, global0.x), global0.x, -18212i, -14252i);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.x, -1204f, 552f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-521f, global2.c.x, 958f))), !arg_3)))))) + vec3<f32>(1f, 183f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(global2.c.x)), global2.c.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.c.x, 1746f))))));
    return ~var_2.x;
}

fn func_2() -> Struct_1 {
    global1 = array<vec3<bool>, 2>();
    var var_0 = vec3<i32>(26918i, _wgslsmith_add_i32(-18429i, func_3(select(vec4<bool>(global2.a, global2.a, global2.a, true), vec4<bool>(global2.a, global2.a, true, global2.a), global2.a), Struct_1(false, 1u, vec2<f32>(global2.c.x, 624f)), false, !global1[_wgslsmith_index_u32(0u, 2u)])), 1i) ^ vec3<i32>(reverseBits(global0.x), _wgslsmith_sub_i32(_wgslsmith_mod_i32(global0.x, 17377i) | reverseBits(-1i), global0.x), ~_wgslsmith_dot_vec3_i32(min(vec3<i32>(global0.x, global0.x, 2147483647i), vec3<i32>(2147483647i, 79361i, -19987i)), max(vec3<i32>(38170i, 20098i, 11057i), vec3<i32>(global0.x, global0.x, global0.x))));
    var var_1 = Struct_1(all(global1[_wgslsmith_index_u32(10123u, 2u)]), 1u, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(200f - 1804f), _wgslsmith_f_op_f32(max(614f, -516f))))))));
    var var_2 = var_1.c;
    var_0 = ~vec3<i32>(abs(var_0.x), i32(-1i) * -20725i, _wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(var_0.x, -43214i), firstTrailingBit(global0.x)), global0.x));
    return Struct_1(false, var_1.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-859f + global2.c.x)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global3 = any(!(!vec3<bool>(any(vec3<bool>(false, global2.a, global2.a)), true, arg_1.a)));
    var var_0 = func_2();
    let var_1 = _wgslsmith_sub_vec2_u32(max(u_input.b.zz, _wgslsmith_sub_vec2_u32(min(~u_input.b.yy, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, arg_1.b), vec2<u32>(var_0.b, u_input.d), u_input.b.yx)), vec2<u32>(~0u, select(arg_0.b, u_input.d, false)))), ~u_input.b.xx);
    let var_2 = Struct_1(true, ~firstLeadingBit(arg_1.b), vec2<f32>(_wgslsmith_f_op_f32(global2.c.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -748f)))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(abs(1f)))));
    global1 = array<vec3<bool>, 2>();
    return Struct_1(all(vec4<bool>(func_2().a, global0.x < countOneBits(global0.x), !(!global2.a), false)), ~(~(~select(0u, var_0.b, var_0.a))), arg_1.c);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> u32 {
    var var_0 = Struct_1(false, func_1(Struct_1(!(arg_0.b != u_input.a), 70948u, arg_0.c), arg_1).b, _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c.x), arg_0.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, global2.c.x)))));
    var var_1 = _wgslsmith_add_vec3_u32(vec3<u32>(1u, ~firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.b.x), vec2<u32>(0u, u_input.a))), 1u), u_input.b);
    global2 = arg_0;
    global3 = true;
    let var_2 = !vec3<bool>(var_0.a, global2.a, -103f <= _wgslsmith_f_op_f32(-arg_1.c.x));
    return arg_0.b;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    var var_0 = func_1(arg_1, arg_1);
    global1 = array<vec3<bool>, 2>();
    var var_1 = func_4(func_1(func_1(Struct_1(true, func_1(Struct_1(true, 27586u, var_0.c), Struct_1(false, 18285u, var_0.c)).b, var_0.c), func_1(arg_1, Struct_1(true, 41822u, global2.c))), arg_1), Struct_1(!global2.a, _wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.b.x, 1u, u_input.a), vec4<u32>(u_input.a, 24247u, arg_1.b, 0u), vec4<u32>(0u, 1u, arg_0.x, 81970u)), max(vec4<u32>(31053u, u_input.c, 1u, arg_0.x), vec4<u32>(var_0.b, 4294967295u, 4294967295u, u_input.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(arg_1.c * vec2<f32>(670f, arg_1.c.x)))))), true);
    var_0 = arg_1;
    global2 = Struct_1(func_1(func_1(Struct_1(false, ~u_input.c, vec2<f32>(global2.c.x, -1517f)), Struct_1(!arg_1.a, arg_1.b, _wgslsmith_f_op_vec2_f32(select(var_0.c, global2.c, vec2<bool>(global2.a, global2.a))))), func_2()).a, ~_wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(_wgslsmith_sub_u32(global2.b, 0u), _wgslsmith_sub_u32(34981u, arg_0.x))), _wgslsmith_f_op_vec2_f32(-var_0.c));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.b;
    var_0 = ~(~(~(~0u)));
    global2 = func_5(vec2<u32>(firstLeadingBit(~u_input.d), _wgslsmith_dot_vec4_u32(~vec4<u32>(global2.b, 18092u, global2.b, 2772u), vec4<u32>(0u, _wgslsmith_clamp_u32(4294967295u, 39156u, 1u), 45952u, _wgslsmith_clamp_u32(20992u, 47997u, global2.b)))), Struct_1(false, ~45015u, vec2<f32>(_wgslsmith_f_op_f32(max(global2.c.x, -768f)), 346f)), ~func_4(Struct_1(global2.a, 1u, vec2<f32>(global2.c.x, global2.c.x)), func_1(Struct_1(true, global2.b, vec2<f32>(global2.c.x, -531f)), Struct_1(global2.a, 8948u, vec2<f32>(1101f, global2.c.x))), global2.a) >= ~(~(55219u << (u_input.d % 32u))));
    global1 = array<vec3<bool>, 2>();
    let var_1 = -((vec4<i32>(1i, 2147483647i, global0.x ^ global0.x, global0.x) | abs(max(vec4<i32>(global0.x, 39786i, global0.x, global0.x), vec4<i32>(global0.x, 1i, global0.x, 2112i)))) << (_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(select(vec4<u32>(0u, u_input.d, 123127u, 4294967295u), vec4<u32>(51460u, 10596u, u_input.b.x, 1u), vec4<bool>(true, global2.a, global2.a, true)), ~vec4<u32>(u_input.d, 1u, 4294967295u, 5811u)), firstLeadingBit(~vec4<u32>(4294967295u, 2437u, 11649u, u_input.c)), ~vec4<u32>(0u, 4294967295u, global2.b, 1u)) % vec4<u32>(32u)));
    global0 = var_1.yyw;
    let var_2 = global2.a;
    let var_3 = ~(vec4<u32>(5421u, ~global2.b, ~1u | _wgslsmith_mod_u32(global2.b, 39417u), reverseBits(687u)) << (_wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.b.x, u_input.c), vec4<u32>(global2.b, global2.b, u_input.a, global2.b)), ~vec4<u32>(4294967295u, 3848u, 0u, 4294967295u) | vec4<u32>(55440u, global2.b, u_input.d, u_input.a)) % vec4<u32>(32u)));
    let var_4 = func_1(Struct_1(~(~var_3.x) != global2.b, (_wgslsmith_dot_vec2_u32(var_3.ww, var_3.ww) << (~5369u % 32u)) << (_wgslsmith_mult_u32(u_input.c, func_2().b) % 32u), _wgslsmith_f_op_vec2_f32(step(global2.c, vec2<f32>(-1000f, _wgslsmith_f_op_f32(-global2.c.x))))), func_1(Struct_1(!(!global2.a), func_5(countOneBits(var_3.yz), Struct_1(global2.a, 4294967295u, global2.c), !global2.a).b, _wgslsmith_f_op_vec2_f32(global2.c - global2.c)), func_2()));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1773f + _wgslsmith_f_op_f32(-1057f - _wgslsmith_f_op_f32(-var_4.c.x))))));
}

