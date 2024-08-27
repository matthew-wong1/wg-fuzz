struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(12386i), Struct_1(40495i), vec3<i32>(i32(-2147483648), i32(-2147483648), 6156i), -30267i), Struct_2(Struct_1(1i), Struct_1(11355i), vec3<i32>(i32(-2147483648), 39304i, i32(-2147483648)), i32(-2147483648)), Struct_2(Struct_1(29281i), Struct_1(20151i), vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), 2147483647i), Struct_2(Struct_1(1i), Struct_1(-28376i), vec3<i32>(10901i, -5861i, 0i), 1i), Struct_2(Struct_1(-1i), Struct_1(-1i), vec3<i32>(-40714i, 19197i, -22398i), -1i), Struct_2(Struct_1(i32(-2147483648)), Struct_1(-1i), vec3<i32>(0i, 9838i, 15595i), 1i), Struct_2(Struct_1(-1i), Struct_1(2147483647i), vec3<i32>(1i, i32(-2147483648), 1i), 1i), Struct_2(Struct_1(0i), Struct_1(24790i), vec3<i32>(i32(-2147483648), -9233i, -2151i), i32(-2147483648)), Struct_2(Struct_1(-17021i), Struct_1(32574i), vec3<i32>(23737i, -1i, 1i), i32(-2147483648)), Struct_2(Struct_1(i32(-2147483648)), Struct_1(-31647i), vec3<i32>(9087i, 3312i, 19622i), 1i), Struct_2(Struct_1(-31561i), Struct_1(1i), vec3<i32>(-9285i, -1i, 22787i), 0i), Struct_2(Struct_1(0i), Struct_1(0i), vec3<i32>(-1i, 1i, -29180i), 37639i), Struct_2(Struct_1(1i), Struct_1(1i), vec3<i32>(1i, -46030i, 18834i), 0i), Struct_2(Struct_1(1i), Struct_1(i32(-2147483648)), vec3<i32>(5557i, 1i, 9128i), -1i), Struct_2(Struct_1(-1i), Struct_1(28009i), vec3<i32>(-80983i, -1i, 17192i), -85404i), Struct_2(Struct_1(-1i), Struct_1(1i), vec3<i32>(1i, 33889i, 2147483647i), -390i), Struct_2(Struct_1(1i), Struct_1(i32(-2147483648)), vec3<i32>(-21478i, 21727i, -34993i), 12832i), Struct_2(Struct_1(-2685i), Struct_1(2147483647i), vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), -10905i));

var<private> global1: array<i32, 17> = array<i32, 17>(-21597i, 4935i, 0i, -9218i, 24253i, -1731i, 5612i, 15915i, 0i, -32101i, -1i, -62961i, 15737i, 37931i, -1i, i32(-2147483648), 16719i);

var<private> global2: vec3<u32> = vec3<u32>(0u, 4294967295u, 0u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(abs(102f));
    global1 = array<i32, 17>();
    let var_1 = Struct_1(reverseBits(-43022i));
    var var_2 = true;
    var var_3 = var_1;
    return _wgslsmith_dot_vec2_u32(arg_0.zz, vec2<u32>(_wgslsmith_mult_u32(~arg_1.x, arg_1.x), global2.x)) == 6607u;
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_1 {
    global1 = array<i32, 17>();
    let var_0 = Struct_3(Struct_2(Struct_1((u_input.a << (1u % 32u)) >> (reverseBits(1u) % 32u)), arg_2.a, min(vec3<i32>(global1[_wgslsmith_index_u32(abs(4294967295u), 17u)], arg_1.x ^ 294i, 14720i >> (0u % 32u)), vec3<i32>(~1i, -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.b.a, arg_2.b.a, 1i), vec3<i32>(global1[_wgslsmith_index_u32(global2.x, 17u)], arg_1.x, 0i)))), global1[_wgslsmith_index_u32(min(global2.x, _wgslsmith_add_u32(global2.x, global2.x)), 17u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-767f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1350f - -300f), _wgslsmith_f_op_f32(188f + -1181f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -702f))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(abs(abs(vec4<u32>(global2.x, global2.x, 4294967295u, global2.x)))), _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(global2.x, global2.x, 14613u, global2.x)), ~(~vec4<u32>(global2.x, global2.x, 83818u, 0u)))), 18u)]);
    let var_1 = vec2<i32>(arg_1.x, u_input.b.x);
    var var_2 = select(arg_0.ywy, !arg_0.xxy, !arg_0.x);
    let var_3 = var_0.c.b;
    return arg_2.a;
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: i32) -> Struct_3 {
    let var_0 = Struct_2(Struct_1(~(~(-1i))), func_3(vec4<bool>(!all(vec3<bool>(true, true, false)), func_2(vec3<u32>(1u, 4235u, 71537u), ~vec4<u32>(45552u, 0u, global2.x, 4294967295u)), any(vec4<bool>(true, false, false, false)), true), countOneBits(abs(vec4<i32>(0i, global1[_wgslsmith_index_u32(global2.x, 17u)], -32766i, 25122i))), Struct_2(Struct_1(~(-72140i)), Struct_1(-2147483647i), reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(19837i, global1[_wgslsmith_index_u32(0u, 17u)], -9446i), vec3<i32>(u_input.a, 46953i, u_input.a))), -1i)), ~(select(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, arg_2, u_input.b.x), vec3<i32>(2147483647i, -2147483647i, -16740i)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, -11149i, global1[_wgslsmith_index_u32(25428u, 17u)]), vec3<i32>(arg_2, 1i, 0i)), true) >> (~(vec3<u32>(global2.x, 4294967295u, 1u) >> (vec3<u32>(1u, global2.x, global2.x) % vec3<u32>(32u))) % vec3<u32>(32u))), -57730i);
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(560f + _wgslsmith_f_op_f32(-arg_1)), -372f), arg_1));
    var var_2 = func_3(!select(select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), ~vec4<i32>(34158i, _wgslsmith_dot_vec3_i32(-var_0.c, var_0.c & vec3<i32>(-1i, -2147483647i, var_0.c.x)), min(select(-16264i, global1[_wgslsmith_index_u32(1u, 17u)], false), global1[_wgslsmith_index_u32(1u, 17u)]), -(global1[_wgslsmith_index_u32(global2.x, 17u)] & var_0.d)), Struct_2(var_0.a, func_3(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false)), ~vec4<i32>(arg_2, -1i, -1i, arg_0), global0[_wgslsmith_index_u32(4294967295u, 18u)]), var_0.c, -firstTrailingBit(arg_2)));
    let var_3 = _wgslsmith_div_f32(var_1, 977f);
    let var_4 = Struct_3(var_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1))), global0[_wgslsmith_index_u32(16213u, 18u)]);
    return Struct_3(Struct_2(func_3(vec4<bool>(true, true, true, true), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(26222i, arg_2, arg_0, 26235i)), vec4<i32>(-40512i, 0i, -1i, -1i)), global0[_wgslsmith_index_u32(~(~6452u), 18u)]), func_3(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false)), min(-vec4<i32>(arg_2, var_0.b.a, arg_2, global1[_wgslsmith_index_u32(0u, 17u)]), vec4<i32>(-2147483647i, var_0.d, u_input.b.x, -32760i)), global0[_wgslsmith_index_u32(4294967295u, 18u)]), vec3<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(global1[_wgslsmith_index_u32(global2.x, 17u)], 35610i, -13819i, 2147483647i), vec4<i32>(0i, 3882i, -834i, var_0.d), vec4<bool>(false, false, true, false)), vec4<i32>(global1[_wgslsmith_index_u32(global2.x, 17u)], -1i, -48168i, arg_0)), _wgslsmith_mult_i32(select(arg_0, global1[_wgslsmith_index_u32(41963u, 17u)], false), var_4.a.a.a), _wgslsmith_add_i32(2147483647i, arg_0) | -22598i), _wgslsmith_dot_vec3_i32(vec3<i32>(~var_0.d, -1i, u_input.a), ~(~vec3<i32>(-2147483647i, var_0.d, 2147483647i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2519f)), Struct_2(func_3(vec4<bool>(true, true, true, true), vec4<i32>(min(var_0.a.a, arg_0), -31488i, -2147483647i, ~var_4.c.d), Struct_2(Struct_1(61804i), var_4.c.a, vec3<i32>(u_input.a, 7853i, 35789i), 1i)), var_4.c.a, _wgslsmith_clamp_vec3_i32(~(-vec3<i32>(u_input.a, u_input.b.x, var_2.a)), var_4.c.c | var_0.c, select(-var_0.c, vec3<i32>(arg_0, 1i, 29144i), true)), -var_2.a));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec3<i32>) -> vec4<i32> {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_0.b, -988f))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(425f, 1371f, arg_0.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, arg_0.b, arg_0.b)))))), _wgslsmith_f_op_f32(ceil(879f)) >= _wgslsmith_f_op_f32(-1096f + -950f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.b, arg_0.b, arg_0.b), vec3<f32>(arg_0.b, arg_0.b, -1055f))))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-908f, arg_0.b, arg_0.b) - vec3<f32>(arg_0.b, -625f, arg_0.b))))));
    global1 = array<i32, 17>();
    var var_1 = 3976u;
    global0 = array<Struct_2, 18>();
    let var_2 = Struct_2(func_3(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), true)), vec4<i32>(select(-arg_2.x, _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(global2.x, 17u)], arg_2.x, arg_1.c.x), select(false, false, true)), 1i, -1i, arg_0.a.d), Struct_2(arg_0.c.a, func_3(vec4<bool>(true, true, true, true), ~vec4<i32>(-2147483647i, u_input.b.x, 86195i, u_input.a), func_1(arg_0.c.c.x, -2305f, u_input.b.x).c), arg_1.c, 0i)), arg_1.a, _wgslsmith_mult_vec3_i32(arg_0.a.c, func_1(u_input.a, -1354f, _wgslsmith_clamp_i32(-2147483647i, abs(u_input.b.x), _wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(1u, 17u)], arg_0.c.c.x, arg_2.x))).c.c), arg_2.x);
    return ~vec4<i32>(-19127i, var_2.c.x, abs(arg_1.b.a), -_wgslsmith_add_i32(u_input.b.x & -1i, ~23651i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 17>();
    let var_0 = ~_wgslsmith_sub_vec4_i32(func_4(func_1(reverseBits(-16814i), _wgslsmith_div_f32(-844f, 389f), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global2.x, global2.x), 17u)]), Struct_2(func_1(u_input.b.x, 365f, 1i).a.a, func_3(vec4<bool>(true, true, true, true), vec4<i32>(u_input.a, 2147483647i, 1i, -60996i), global0[_wgslsmith_index_u32(1u, 18u)]), -vec3<i32>(28000i, 45329i, global1[_wgslsmith_index_u32(1u, 17u)]), global1[_wgslsmith_index_u32(~0u, 17u)]), vec3<i32>(_wgslsmith_sub_i32(-59233i, global1[_wgslsmith_index_u32(global2.x, 17u)]), max(-15605i, global1[_wgslsmith_index_u32(global2.x, 17u)]), 2147483647i << (global2.x % 32u))), vec4<i32>(_wgslsmith_div_i32(-37038i, u_input.a), -_wgslsmith_mult_i32(-2147483647i, u_input.a), ~_wgslsmith_mod_i32(1i, u_input.a), -abs(39053i)));
    let var_1 = ~9949i;
    let var_2 = Struct_1(~(~(-2147483647i)));
    global0 = array<Struct_2, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-373f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(336f)) * _wgslsmith_div_f32(973f, -2076f)), _wgslsmith_f_op_f32(min(-1580f, 181f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-296f - 2420f) - _wgslsmith_f_op_f32(555f - 1978f)))), _wgslsmith_mult_i32(-32445i, var_2.a), ~global2.x, vec4<u32>(_wgslsmith_clamp_u32(global2.x ^ (global2.x << (101992u % 32u)), global2.x, global2.x), global2.x, ~(~global2.x) | _wgslsmith_clamp_u32(max(global2.x, global2.x), 0u, countOneBits(1u)), abs(8973u)));
}

