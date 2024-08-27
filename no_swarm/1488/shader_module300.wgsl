struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 2>;

var<private> global1: array<f32, 5>;

var<private> global2: array<Struct_1, 1>;

var<private> global3: vec2<bool>;

var<private> global4: i32 = i32(-2147483648);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2() -> Struct_2 {
    global3 = vec2<bool>(true, true);
    let var_0 = Struct_1(min(_wgslsmith_div_vec4_i32(-vec4<i32>(2147483647i, 0i, -36909i, 14144i), vec4<i32>(-1i, 1i, 1i, _wgslsmith_div_i32(-18149i, -8637i))), _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(-2147483647i, 1i, abs(-1i), _wgslsmith_dot_vec2_i32(vec2<i32>(18882i, -2147483647i), vec2<i32>(-3940i, -2147483647i))))), ~_wgslsmith_mod_vec4_u32(~firstLeadingBit(vec4<u32>(u_input.a, u_input.a, 42233u, 95217u)), countOneBits(~vec4<u32>(u_input.a, 13906u, u_input.a, u_input.a))), u_input.a);
    global2 = array<Struct_1, 1>();
    var var_1 = ~u_input.a != ~(~abs(var_0.c));
    global4 = -1i;
    return Struct_2(global0[_wgslsmith_index_u32(var_0.c, 2u)], var_0, Struct_1(vec4<i32>(abs(firstLeadingBit(var_0.a.x)), var_0.a.x, 1i, -34814i), ~max(var_0.b, vec4<u32>(21702u, 1u, var_0.b.x, 0u)) & var_0.b, ~(~22197u)));
}

fn func_1(arg_0: u32) -> Struct_2 {
    global2 = array<Struct_1, 1>();
    var var_0 = firstTrailingBit(vec3<i32>(abs(19597i), -2147483647i, max(-2147483647i, ~2147483647i)) >> (countOneBits(vec3<u32>(min(u_input.a, 38297u), 0u, ~69120u)) % vec3<u32>(32u)));
    global2 = array<Struct_1, 1>();
    var var_1 = Struct_1(-countOneBits(vec4<i32>(-2147483647i << (arg_0 % 32u), var_0.x, var_0.x, select(0i, var_0.x, true))), ~vec4<u32>(abs(~u_input.a), u_input.a, u_input.a, countOneBits(u_input.a) << (4945u % 32u)), ~arg_0);
    global2 = array<Struct_1, 1>();
    return func_2();
}

fn func_3(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_2) -> u32 {
    let var_0 = arg_0.b.x;
    let var_1 = _wgslsmith_add_vec4_u32(arg_2.b.b, vec4<u32>(u_input.a, select(arg_2.b.c, max(arg_2.b.b.x, u_input.a) << ((12257u ^ u_input.a) % 32u), arg_0.a.a.x), _wgslsmith_clamp_u32(arg_2.c.c, 61167u, ~20198u | (1774u << (arg_2.c.c % 32u))), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.c.b.x, 0u, 1u, 1u), vec4<u32>(firstTrailingBit(0u), ~u_input.a, 1u, 1u))));
    var var_2 = true;
    let var_3 = ~var_1.x;
    global0 = array<vec2<bool>, 2>();
    return func_1(arg_2.c.b.x).c.b.x;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1) -> Struct_2 {
    var var_0 = 648f;
    let var_1 = ~22120i;
    let var_2 = !(!global0[_wgslsmith_index_u32(arg_0.c ^ ~_wgslsmith_mult_u32(arg_1.a.b.c, 4294967295u), 2u)]);
    var var_3 = Struct_2(vec2<bool>(false, _wgslsmith_sub_i32(arg_2.a.x, 31101i) < firstLeadingBit(_wgslsmith_clamp_i32(13792i, var_1, -36436i))), func_2().c, Struct_1(vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(arg_2.a.x, -1i, -1i, var_1)), ~(~(~vec4<u32>(arg_0.c, arg_0.a.c.c, arg_0.a.c.c, arg_1.d.b.x))), 11354u));
    let var_4 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-173f - 1400f), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(83755u, arg_1.d.b.x), 5u)], global1[_wgslsmith_index_u32(u_input.a, 5u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 5u)] * global1[_wgslsmith_index_u32(1u, 5u)]))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_3.c.c, 5u)] + -521f), -154f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_3.c.b.x, 5u)]), 2221f) + vec4<f32>(_wgslsmith_f_op_f32(select(629f, global1[_wgslsmith_index_u32(3799u, 5u)], arg_0.b.x)), global1[_wgslsmith_index_u32(arg_0.d.c, 5u)], -515f, global1[_wgslsmith_index_u32(firstLeadingBit(arg_0.c), 5u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(33014u, 5u)], -1920f, global1[_wgslsmith_index_u32(var_3.c.c, 5u)], 898f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(arg_2.c, 5u)], 476f, global1[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(var_3.c.c, 5u)]) - vec4<f32>(global1[_wgslsmith_index_u32(arg_1.c, 5u)], global1[_wgslsmith_index_u32(u_input.a, 5u)], -621f, global1[_wgslsmith_index_u32(arg_0.c, 5u)]))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1010f, _wgslsmith_f_op_f32(f32(-1f) * -510f), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a, 5u)], -909f), -1194f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1[_wgslsmith_index_u32(arg_0.c, 5u)], 624f, global1[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(u_input.a, 5u)]))))))));
    return func_2();
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: bool, arg_3: bool) -> i32 {
    var var_0 = Struct_2(!select(func_2().a, select(select(arg_0.a, global0[_wgslsmith_index_u32(0u, 2u)], vec2<bool>(true, arg_3)), select(global0[_wgslsmith_index_u32(37275u, 2u)], global0[_wgslsmith_index_u32(u_input.a, 2u)], false), select(vec2<bool>(true, false), vec2<bool>(arg_3, arg_2), arg_0.a)), vec2<bool>(false, true)), arg_0.b, func_1(~arg_0.c.b.x).b);
    global1 = array<f32, 5>();
    var var_1 = ~var_0.c.a.wzx;
    global4 = _wgslsmith_div_i32(~var_1.x, var_1.x & _wgslsmith_mult_i32(var_1.x, -var_0.b.a.x));
    global2 = array<Struct_1, 1>();
    return -12123i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec2<u32>(u_input.a, ~(~u_input.a));
    global3 = global0[_wgslsmith_index_u32(var_0.x ^ ~31766u, 2u)];
    let var_1 = min(select(-(~(~15751i)), 2147483647i, false), select(firstLeadingBit(_wgslsmith_sub_i32(1i, 2147483647i >> (var_0.x % 32u))), firstTrailingBit(44169i), global3.x));
    global4 = func_5(func_4(Struct_3(func_1(var_0.x), select(vec3<bool>(false, global3.x, global3.x), vec3<bool>(global3.x, global3.x, false), vec3<bool>(false, true, false)), abs(var_0.x), Struct_1(vec4<i32>(var_1, var_1, 2491i, var_1), vec4<u32>(u_input.a, 0u, u_input.a, var_0.x), u_input.a)), Struct_3(Struct_2(global0[_wgslsmith_index_u32(4294967295u, 2u)], global2[_wgslsmith_index_u32(4294967295u, 1u)], Struct_1(vec4<i32>(var_1, var_1, var_1, -2147483647i), vec4<u32>(u_input.a, 56522u, u_input.a, 82644u), 4294967295u)), !vec3<bool>(global3.x, global3.x, true), u_input.a, func_1(21270u).c), Struct_1(-vec4<i32>(5540i, var_1, -49788i, 13843i), vec4<u32>(u_input.a, u_input.a, 4294967295u, var_0.x), func_3(Struct_3(Struct_2(global0[_wgslsmith_index_u32(u_input.a, 2u)], Struct_1(vec4<i32>(-1i, var_1, 41717i, var_1), vec4<u32>(1u, var_0.x, 31011u, 1u), var_0.x), global2[_wgslsmith_index_u32(u_input.a, 1u)]), vec3<bool>(global3.x, global3.x, false), 112u, Struct_1(vec4<i32>(var_1, 0i, 2147483647i, var_1), vec4<u32>(15086u, 4798u, var_0.x, 1u), var_0.x)), vec2<bool>(global3.x, global3.x), Struct_2(vec2<bool>(global3.x, false), Struct_1(vec4<i32>(var_1, var_1, 16340i, var_1), vec4<u32>(82911u, 1u, 13345u, 4294967295u), 1u), Struct_1(vec4<i32>(var_1, 2147483647i, var_1, 2147483647i), vec4<u32>(4294967295u, 15387u, u_input.a, 36316u), u_input.a))))), global1[_wgslsmith_index_u32(u_input.a, 5u)], true, (global1[_wgslsmith_index_u32(u_input.a, 5u)] > global1[_wgslsmith_index_u32(14711u, 5u)]) & func_1(~4294967295u).a.x) | var_1;
    var var_2 = -2147483647i;
    var var_3 = global3.x;
    let var_4 = vec4<bool>(global3.x, false, false, global3.x | all(vec2<bool>(true, false)));
    let var_5 = 1220i;
    let x = u_input.a;
    s_output = StorageBuffer(-260f, var_0.x, 987u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1415f, 1166f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-764f, -930f), vec2<f32>(776f, 954f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1[_wgslsmith_index_u32(var_0.x, 5u)], global1[_wgslsmith_index_u32(u_input.a, 5u)]))))))));
}

