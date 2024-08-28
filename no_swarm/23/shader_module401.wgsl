struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(454f, false, 61888u, 7644i), Struct_1(314f, true, 117706u, -55719i), Struct_1(669f, true, 76304u, 22i), Struct_1(-1497f, true, 4294967295u, -1i), Struct_1(-218f, true, 40611u, 58049i), Struct_1(1190f, false, 1u, 6786i), Struct_1(-802f, false, 52735u, 1i), Struct_1(205f, false, 46445u, 1i));

var<private> global1: vec2<bool>;

var<private> global2: f32;

var<private> global3: array<Struct_2, 4>;

var<private> global4: array<u32, 4>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    var var_0 = u_input.c;
    var var_1 = global0[_wgslsmith_index_u32(57028u, 8u)];
    global1 = select(select(!(!vec2<bool>(global1.x, global1.x)), vec2<bool>(!global1.x, !(global1.x || true)), !(!vec2<bool>(var_1.b, false))), select(select(select(select(vec2<bool>(var_1.b, global1.x), vec2<bool>(var_1.b, true), global1.x), select(vec2<bool>(global1.x, false), vec2<bool>(true, global1.x), vec2<bool>(var_1.b, global1.x)), true), select(vec2<bool>(true, true), select(vec2<bool>(global1.x, true), vec2<bool>(var_1.b, global1.x), false), true && global1.x), any(select(vec4<bool>(false, true, true, true), vec4<bool>(var_1.b, global1.x, false, var_1.b), var_1.b))), !select(select(vec2<bool>(var_1.b, var_1.b), vec2<bool>(global1.x, false), vec2<bool>(false, true)), select(vec2<bool>(var_1.b, true), vec2<bool>(global1.x, var_1.b), false), all(vec4<bool>(false, true, true, false))), global1.x && !var_1.b), vec2<bool>(-36063i == var_1.d, true));
    global0 = array<Struct_1, 8>();
    var var_2 = global1.x;
    return countOneBits(_wgslsmith_dot_vec3_u32(~select(u_input.e, ~vec3<u32>(var_1.c, 4294967295u, global4[_wgslsmith_index_u32(var_1.c, 4u)]), vec3<bool>(global1.x, false, true)), u_input.d.xxz));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = select(vec3<bool>(true, all(select(vec3<bool>(true, false, false), !vec3<bool>(arg_0.a.b, false, global1.x), !arg_1.b)), all(!select(vec3<bool>(true, true, arg_0.c.b), vec3<bool>(global1.x, true, true), vec3<bool>(arg_0.b, arg_1.b, false)))), !(!vec3<bool>(false, !arg_0.b, arg_1.b)), !arg_0.c.b);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -595f));
    global1 = select(vec2<bool>(var_0.x, global1.x), vec2<bool>(false, true || (_wgslsmith_f_op_f32(sign(arg_1.a)) > -127f)), var_0.zx);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -2141f);
    var var_2 = Struct_1(233f, _wgslsmith_clamp_i32(-1i, ~(-55873i), 1i) <= -2147483647i, global4[_wgslsmith_index_u32(0u, 4u)], select(85777i, _wgslsmith_mod_i32(_wgslsmith_add_i32(-5500i, 24464i) | _wgslsmith_div_i32(-19949i, arg_0.d.x), _wgslsmith_div_i32(arg_1.d, ~arg_1.d)), ((arg_0.a.b || arg_1.b) | (true != arg_1.b)) && all(!var_0)));
    return arg_0.d.yw & abs(_wgslsmith_add_vec2_i32(firstLeadingBit(firstTrailingBit(vec2<i32>(u_input.c, arg_0.c.d))), arg_0.d.zx >> ((vec2<u32>(arg_0.a.c, arg_1.c) & u_input.e.xy) % vec2<u32>(32u))));
}

fn func_2() -> vec3<i32> {
    var var_0 = func_4(global3[_wgslsmith_index_u32(abs(firstLeadingBit(~global4[_wgslsmith_index_u32(func_3(), 4u)])), 4u)], Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -489f) * _wgslsmith_f_op_f32(1101f - -988f))), (_wgslsmith_mult_u32(global4[_wgslsmith_index_u32(37961u, 4u)], global4[_wgslsmith_index_u32(u_input.d.x, 4u)]) <= 19746u) && true, 1u, -2147483647i));
    var var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2436f)), -308f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(667f + 622f) * _wgslsmith_f_op_f32(f32(-1f) * -1380f)))));
    global0 = array<Struct_1, 8>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), true, ~(func_3() | abs(~43016u)), -(-_wgslsmith_clamp_i32(-2147483647i, var_0.x, -25040i) << (u_input.d.x % 32u)));
    var var_3 = -_wgslsmith_sub_vec3_i32(~vec3<i32>(i32(-1i) * -15193i, firstTrailingBit(-61861i), 0i), ~(~firstTrailingBit(vec3<i32>(23703i, var_0.x, 47048i))));
    return -vec3<i32>(var_0.x, -var_0.x ^ var_3.x, _wgslsmith_div_i32(_wgslsmith_mult_i32(firstLeadingBit(-5655i), abs(-1i)), var_0.x));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: vec2<bool>, arg_3: vec2<bool>) -> Struct_2 {
    global4 = array<u32, 4>();
    let var_0 = Struct_1(-1000f, arg_2.x, _wgslsmith_sub_u32(0u, global4[_wgslsmith_index_u32(~4294967295u, 4u)]) >> (8445u % 32u), ~_wgslsmith_dot_vec3_i32(vec3<i32>(reverseBits(0i), u_input.c | -2147483647i, arg_1.x ^ -32451i), ~func_2()));
    var var_1 = select(!(!vec4<bool>(true | var_0.b, var_0.b, true, global1.x)), select(select(!(!vec4<bool>(false, global1.x, arg_2.x, global1.x)), !(!vec4<bool>(var_0.b, false, arg_3.x, true)), true), !(!(!vec4<bool>(false, true, arg_2.x, true))), false), select(vec4<bool>(all(select(vec3<bool>(arg_2.x, arg_3.x, arg_2.x), vec3<bool>(true, false, arg_3.x), arg_2.x)), true, 5892u > _wgslsmith_add_u32(var_0.c, 1u), any(select(vec2<bool>(arg_3.x, var_0.b), vec2<bool>(true, var_0.b), vec2<bool>(false, var_0.b)))), select(select(!vec4<bool>(global1.x, true, true, false), !vec4<bool>(global1.x, true, var_0.b, var_0.b), vec4<bool>(true, false, arg_2.x, true)), select(select(vec4<bool>(arg_3.x, arg_2.x, false, arg_3.x), vec4<bool>(false, global1.x, var_0.b, false), arg_2.x), !vec4<bool>(true, true, arg_3.x, global1.x), vec4<bool>(arg_3.x, false, true, false)), true), select(vec4<bool>(any(vec2<bool>(var_0.b, arg_3.x)), false, arg_2.x, true), vec4<bool>(global1.x, false, all(vec2<bool>(global1.x, global1.x)), var_0.b), (arg_3.x | global1.x) || !var_0.b)));
    let var_2 = vec2<i32>(u_input.c, var_0.d);
    let var_3 = var_0.a;
    return Struct_2(var_0, all(select(select(!var_1.yz, !arg_2, var_1.x), !(!vec2<bool>(var_0.b, var_1.x)), !(arg_3.x == global1.x))), var_0, (vec4<i32>(~1i, select(u_input.c, -28289i, true), -17830i, 1i) << (u_input.d % vec4<u32>(32u))) | reverseBits(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, var_0.d, var_2.x, arg_1.x), vec4<i32>(1i, arg_1.x, 18475i, var_0.d)), vec4<i32>(71846i, u_input.c, var_0.d, var_0.d) ^ vec4<i32>(u_input.c, 0i, var_0.d, 2147483647i))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: f32) -> i32 {
    var var_0 = ~select(vec3<i32>(0i, u_input.c & 0i, min(0i, arg_1.a.d)) | select(vec3<i32>(-2147483647i, -3193i, -1i), arg_1.d.yxx ^ vec3<i32>(arg_2.d, arg_1.a.d, 1i), select(vec3<bool>(true, false, arg_2.b), vec3<bool>(true, arg_2.b, false), vec3<bool>(arg_2.b, true, arg_2.b))), vec3<i32>(~_wgslsmith_mult_i32(1i, u_input.c), _wgslsmith_div_i32(~1i, min(0i, u_input.c)), arg_2.d), !select(select(vec3<bool>(false, arg_2.b, arg_2.b), vec3<bool>(false, false, true), true), !vec3<bool>(arg_2.b, global1.x, true), -43419i >= u_input.c));
    global3 = array<Struct_2, 4>();
    let var_1 = Struct_1(arg_1.c.a, !(max(global4[_wgslsmith_index_u32(~0u, 4u)], 4294967295u) < u_input.a), countOneBits(global4[_wgslsmith_index_u32(~arg_2.c, 4u)]), ~(~2147483647i));
    let var_2 = arg_1.d;
    let var_3 = u_input.d;
    return var_2.x;
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1389f)));
    var var_1 = any(!select(!(!vec4<bool>(false, arg_2.b, true, arg_3.b)), vec4<bool>(true, any(vec2<bool>(false, arg_2.c.b)), select(arg_2.b, arg_3.b, global1.x), all(vec4<bool>(arg_1.b, arg_3.b, arg_1.b, false))), !(arg_1.b | false)));
    var var_2 = u_input.d.x;
    let var_3 = arg_1;
    let var_4 = -1i;
    return -firstLeadingBit(vec4<i32>(-arg_3.d, arg_2.c.d, 1i, max(var_3.d, var_3.d)) | _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, arg_0, 2147483647i, var_4), vec4<i32>(u_input.c, -12708i, 35517i, -6454i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_add_i32(func_5(vec4<f32>(1f, 1f, 1f, 1f), func_1(vec4<u32>(global4[_wgslsmith_index_u32(4294967295u, 4u)], u_input.d.x, global4[_wgslsmith_index_u32(36811u, 4u)], 39312u), ~vec3<i32>(-10231i, u_input.c, u_input.c), vec2<bool>(global1.x, true), vec2<bool>(global1.x, global1.x)), func_1(~u_input.d, ~vec3<i32>(22492i, -69262i, 47767i), vec2<bool>(false, true), !vec2<bool>(true, global1.x)).a, _wgslsmith_f_op_f32(select(-904f, _wgslsmith_f_op_f32(2768f * 350f), !global1.x))), u_input.c), Struct_1(799f, false, 1u, u_input.c), func_1(vec4<u32>(max(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(u_input.a, global4[_wgslsmith_index_u32(u_input.b, 4u)], 52232u, u_input.d.x)), 42203u), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(24988u, 4u)], 4u)], ~1u, u_input.d.x), -abs(vec3<i32>(u_input.c, 0i, u_input.c)), select(vec2<bool>(false, true), !select(vec2<bool>(true, global1.x), vec2<bool>(global1.x, global1.x), global1.x), false), !vec2<bool>(any(vec3<bool>(global1.x, global1.x, false)), false)), global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~208u, 4u)], 4u)], 8u)]);
    global0 = array<Struct_1, 8>();
    global0 = array<Struct_1, 8>();
    global3 = array<Struct_2, 4>();
    global4 = array<u32, 4>();
    var var_1 = -2147483647i;
    let var_2 = -_wgslsmith_mod_i32(~(i32(-1i) * -2147483647i), func_5(vec4<f32>(_wgslsmith_f_op_f32(-1225f + 892f), _wgslsmith_div_f32(227f, 1864f), -974f, _wgslsmith_f_op_f32(sign(1318f))), global3[_wgslsmith_index_u32(5586u, 4u)], global0[_wgslsmith_index_u32(44038u, 8u)], -2264f));
    global4 = array<u32, 4>();
    var var_3 = func_1(vec4<u32>(global4[_wgslsmith_index_u32(38196u, 4u)], 10951u, ~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.e.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(35992u, 4u)], 4u)], 4u)], 4u)]), 4u)], 4u)] >> (~global4[_wgslsmith_index_u32(21225u, 4u)] % 32u), 4u)], 0u), func_1(_wgslsmith_mult_vec4_u32(~vec4<u32>(global4[_wgslsmith_index_u32(41314u, 4u)], 0u, 4294967295u, u_input.d.x), u_input.d), firstTrailingBit(var_0.xxz), !(!(!vec2<bool>(global1.x, true))), select(!(!vec2<bool>(global1.x, false)), vec2<bool>(false, any(vec2<bool>(true, global1.x))), !select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, global1.x), global1.x))).d.zwx, !vec2<bool>(global4[_wgslsmith_index_u32(~u_input.b, 4u)] <= (30783u & u_input.e.x), !(var_2 <= 17786i)), vec2<bool>(func_1(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(15648u, 0u, global4[_wgslsmith_index_u32(1u, 4u)], u_input.d.x), vec4<u32>(75504u, global4[_wgslsmith_index_u32(1u, 4u)], u_input.d.x, 0u))), vec3<i32>(_wgslsmith_sub_i32(u_input.c, -11771i), -u_input.c, var_0.x), !select(vec2<bool>(true, false), vec2<bool>(global1.x, global1.x), global1.x), vec2<bool>(!global1.x, true)).a.b, global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(countOneBits(43041u), var_3.a.c), func_1(vec4<u32>(abs(_wgslsmith_mod_u32(var_3.c.c, 1u)), 2903u, global4[_wgslsmith_index_u32(0u, 4u)], u_input.d.x), ~vec3<i32>(u_input.c, firstTrailingBit(var_2), _wgslsmith_add_i32(u_input.c, var_3.d.x)), vec2<bool>(select(var_0.x, u_input.c, false) < (2147483647i ^ var_0.x), !all(vec2<bool>(var_3.b, true))), vec2<bool>(all(vec4<bool>(false, false, global1.x, global1.x)), global1.x)).d.ww, u_input.d & ~_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1641u, var_3.a.c, 1u), u_input.d), vec4<u32>(u_input.a, 0u, 4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 4u)], 4u)])));
}

