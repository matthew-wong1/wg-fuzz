struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: i32;

var<private> global2: array<bool, 1>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> f32 {
    let var_0 = Struct_3(arg_1.a.x, vec2<bool>(global2[_wgslsmith_index_u32(~min(select(35230u, 1u, arg_3), 19510u << (u_input.a % 32u)), 1u)], global2[_wgslsmith_index_u32(~(~1u), 1u)]), arg_2, arg_1);
    let var_1 = arg_0;
    global0 = array<Struct_1, 6>();
    global0 = array<Struct_1, 6>();
    global1 = -_wgslsmith_div_i32(_wgslsmith_sub_i32(var_1.x, 33429i), _wgslsmith_mult_i32(var_0.d.a.x, arg_0.x));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-322f, var_0.c.b.x))))) * _wgslsmith_div_f32(arg_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.a)))))));
}

fn func_2() -> vec4<f32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(611f, 1398f) * -142f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<i32>(1i, -2147483647i), global0[_wgslsmith_index_u32(u_input.a, 6u)], Struct_2(231f, vec4<f32>(-719f, 653f, 161f, 172f)), global2[_wgslsmith_index_u32(u_input.a, 1u)])))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1349f, 833f), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -404f), 661f))));
    let var_1 = abs(-_wgslsmith_mod_i32(_wgslsmith_div_i32(~8270i, select(-2147483647i, 0i, false)), -2147483647i));
    global1 = _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(var_1, -12551i), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(54628i, var_1, var_1) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))), abs(vec3<i32>(var_1, var_1, -3065i)))), -45106i);
    global2 = array<bool, 1>();
    global0 = array<Struct_1, 6>();
    return var_0.b;
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> u32 {
    global1 = -36522i;
    let var_0 = vec4<i32>(reverseBits(2147483647i >> (~(~u_input.a) % 32u)), -1i, arg_0.x, 0i);
    let var_1 = global0[_wgslsmith_index_u32(u_input.a, 6u)];
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-404f, 532f, arg_1, -843f)), vec4<f32>(arg_1, 238f, 129f, -589f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_1, -1749f, -1101f, -461f), vec4<f32>(-322f, -1790f, -3249f, 691f)))))));
    let var_3 = Struct_3(69007i, select(vec2<bool>(all(!vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(0u, 1u)])), any(select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 1u)], global2[_wgslsmith_index_u32(u_input.a, 1u)]), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 1u)], false), vec2<bool>(global2[_wgslsmith_index_u32(30048u, 1u)], true)))), select(!(!vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 1u)])), vec2<bool>(select(global2[_wgslsmith_index_u32(u_input.a, 1u)], true, false), false), true), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 0u, u_input.a), vec4<u32>(42269u, u_input.a, 0u, 0u)), max(vec4<u32>(32360u, 1u, 41357u, 17868u), vec4<u32>(79798u, u_input.a, u_input.a, 1u))), _wgslsmith_sub_u32(0u, select(u_input.a, u_input.a, global2[_wgslsmith_index_u32(1u, 1u)]))), 1u)]), Struct_2(_wgslsmith_div_f32(arg_1, 1604f), var_2), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.a >> (u_input.a % 32u), u_input.a, 13932u), vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<bool>(any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 1u)], global2[_wgslsmith_index_u32(4294967295u, 1u)], global2[_wgslsmith_index_u32(1u, 1u)], false)), true, !global2[_wgslsmith_index_u32(u_input.a, 1u)])), abs(~vec3<u32>(1u, 19357u, 0u))), 6u)]);
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(~(~(~(~u_input.a))), 1u)] && global2[_wgslsmith_index_u32(~func_1(~vec4<i32>(14927i, 42495i, 0i, -12843i), 1396f), 1u)];
    let var_1 = Struct_3(~(-2147483647i), vec2<bool>(false, !var_0), Struct_2(_wgslsmith_f_op_f32(floor(1253f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-872f, -1635f, 635f, -608f)))))), global0[_wgslsmith_index_u32(firstTrailingBit(select(~firstTrailingBit(4294967295u), countOneBits(13290u), !all(vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 1u)], global2[_wgslsmith_index_u32(u_input.a, 1u)], global2[_wgslsmith_index_u32(4294967295u, 1u)])))), 6u)]);
    let var_2 = ~var_1.d.a.x;
    var var_3 = false;
    var var_4 = vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(_wgslsmith_clamp_i32(0i << (u_input.a % 32u), -9973i, 1i), var_1.a), firstLeadingBit(-var_2), -1i), -_wgslsmith_div_i32(~_wgslsmith_mod_i32(var_1.d.a.x, var_1.a), ~(-1i)), -68067i);
    global0 = array<Struct_1, 6>();
    let var_5 = !select(!(!select(vec4<bool>(false, var_0, true, var_1.b.x), vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.a, 1u)], var_1.b.x), var_1.b.x)), select(select(!vec4<bool>(false, var_1.b.x, global2[_wgslsmith_index_u32(52406u, 1u)], true), vec4<bool>(var_1.b.x, true, true, false), !vec4<bool>(var_1.b.x, global2[_wgslsmith_index_u32(4294967295u, 1u)], false, true)), select(!vec4<bool>(var_1.b.x, var_1.b.x, var_1.b.x, true), !vec4<bool>(false, false, var_1.b.x, global2[_wgslsmith_index_u32(u_input.a, 1u)]), true & global2[_wgslsmith_index_u32(80597u, 1u)]), select(select(vec4<bool>(false, var_1.b.x, var_1.b.x, var_1.b.x), vec4<bool>(false, var_1.b.x, false, var_0), false), vec4<bool>(var_1.b.x, true, true, false), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 1u)], true, var_1.b.x))), select(!(!vec4<bool>(var_0, global2[_wgslsmith_index_u32(u_input.a, 1u)], false, var_0)), vec4<bool>(false, !var_1.b.x, false, select(true, var_1.b.x, false)), select(!vec4<bool>(global2[_wgslsmith_index_u32(25074u, 1u)], global2[_wgslsmith_index_u32(u_input.a, 1u)], global2[_wgslsmith_index_u32(56849u, 1u)], var_0), select(vec4<bool>(var_0, true, true, global2[_wgslsmith_index_u32(39645u, 1u)]), vec4<bool>(true, var_1.b.x, var_1.b.x, true), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 1u)], var_1.b.x, global2[_wgslsmith_index_u32(0u, 1u)], var_0)), !vec4<bool>(var_1.b.x, true, var_1.b.x, true))));
    global2 = array<bool, 1>();
    var var_6 = Struct_3(-21214i & max(_wgslsmith_mod_i32(i32(-1i) * -5518i, 46163i), var_1.d.a.x), var_1.b, Struct_2(var_1.c.a, vec4<f32>(-1613f, -242f, var_1.c.a, var_1.c.b.x)), Struct_1(min(select(vec3<i32>(var_2, 16259i, 22163i), select(var_1.d.a, var_1.d.a, vec3<bool>(false, true, true)), var_5.yxy), var_1.d.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~select(~(~vec3<u32>(0u, 0u, u_input.a)), vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(4294967295u, 35513u, u_input.a) % vec3<u32>(32u)), !(!var_5.zxz)), _wgslsmith_add_vec4_u32(vec4<u32>(23570u, ~(u_input.a & 4856u), u_input.a, _wgslsmith_dot_vec2_u32(min(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 16061u), vec2<u32>(u_input.a, 12087u)))), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, 4294967295u, 1u, 1u)) & vec4<u32>(u_input.a, 1u, ~u_input.a, max(1u, 1u))), _wgslsmith_div_vec4_i32(~min(firstLeadingBit(vec4<i32>(var_4.x, -1i, 0i, 50762i)), vec4<i32>(var_1.d.a.x, 1i, var_6.d.a.x, var_6.a)), abs(-vec4<i32>(var_2, var_2, 1i, var_4.x) << (countOneBits(vec4<u32>(1u, u_input.a, 1u, 4294967295u)) % vec4<u32>(32u)))));
}

