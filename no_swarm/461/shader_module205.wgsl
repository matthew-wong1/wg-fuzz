struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15> = array<f32, 15>(169f, 406f, 2118f, 299f, 1416f, -1072f, 902f, -897f, -112f, 2201f, -1000f, 387f, 1999f, -969f, 203f);

var<private> global1: array<u32, 19> = array<u32, 19>(27043u, 42862u, 0u, 4294967295u, 18353u, 19169u, 4294967295u, 90890u, 0u, 35598u, 26873u, 4294967295u, 103946u, 0u, 4294967295u, 1u, 3571u, 23205u, 1u);

var<private> global2: Struct_1 = Struct_1(vec3<i32>(-7970i, -26407i, -1i), false, 153f);

var<private> global3: array<Struct_1, 5>;

var<private> global4: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> u32 {
    global4 = _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), abs(vec2<u32>(firstTrailingBit(global1[_wgslsmith_index_u32(49158u, 19u)]), 0u) << (firstLeadingBit(~vec2<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23703u, 19u)], 19u)])) % vec2<u32>(32u))));
    var var_0 = 47262i;
    var var_1 = global2.b;
    var var_2 = 0u;
    global2 = Struct_1(u_input.c, arg_1.b, arg_1.c);
    return ~(~15772u);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: f32) -> vec4<i32> {
    let var_0 = arg_0.x;
    var var_1 = Struct_1(arg_1.a, global2.b, arg_1.c);
    global4 = ~(~35071u >> (reverseBits(~arg_2.x & _wgslsmith_clamp_u32(var_0, 16443u, 4294967295u)) % 32u));
    var_1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.xy, u_input.d.yx), 5u)];
    var_1 = global3[_wgslsmith_index_u32(var_0, 5u)];
    return _wgslsmith_clamp_vec4_i32(~select(max(~vec4<i32>(u_input.c.x, 1i, 56724i, 0i), min(vec4<i32>(var_1.a.x, 0i, 24147i, var_1.a.x), vec4<i32>(-5837i, u_input.c.x, 21196i, -42527i))), vec4<i32>(_wgslsmith_add_i32(global2.a.x, 24451i), _wgslsmith_mod_i32(var_1.a.x, global2.a.x), 1i, min(var_1.a.x, u_input.c.x)), select(!vec4<bool>(global2.b, true, false, true), !vec4<bool>(true, var_1.b, true, global2.b), all(vec4<bool>(true, true, arg_1.b, global2.b)))), min(~(-vec4<i32>(global2.a.x, 2147483647i, -20367i, -1i)), vec4<i32>(0i, -1i, _wgslsmith_dot_vec4_i32(-vec4<i32>(-31263i, 2147483647i, 0i, 0i), vec4<i32>(global2.a.x, arg_1.a.x, 2147483647i, arg_1.a.x)), 2147483647i)), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(max(min(vec4<i32>(-1i, arg_1.a.x, global2.a.x, var_1.a.x), vec4<i32>(global2.a.x, 90660i, 2395i, 1i)), abs(vec4<i32>(2147483647i, global2.a.x, 0i, 18900i))), _wgslsmith_add_vec4_i32(-vec4<i32>(u_input.c.x, 11814i, u_input.c.x, -26169i), vec4<i32>(arg_1.a.x, u_input.c.x, -43797i, global2.a.x))), vec4<i32>(-arg_1.a.x, arg_1.a.x, abs(arg_1.a.x), -10628i)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = global3[_wgslsmith_index_u32(u_input.a.x, 5u)];
    let var_1 = Struct_1(~arg_0.a & _wgslsmith_mod_vec3_i32(vec3<i32>(47776i, arg_1.x, global2.a.x) >> (u_input.a.zxz % vec3<u32>(32u)), ~vec3<i32>(24469i, global2.a.x, 0i)), (countOneBits(max(u_input.c.x, 2147483647i)) >= abs(1i)) && !all(!vec4<bool>(true, global2.b, var_0.b, arg_0.b)), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(16665u, 15u)])));
    var var_2 = arg_0;
    var var_3 = Struct_1(countOneBits(~vec3<i32>(max(0i, arg_1.x), -2147483647i, -12421i ^ u_input.c.x)), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(941f)), var_2.c)) * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.c - -1779f), _wgslsmith_f_op_f32(abs(1549f)))))));
    let var_4 = func_4(~(~u_input.d), Struct_1(vec3<i32>(var_1.a.x, 0i, max(var_3.a.x, var_0.a.x)), (-2147483647i & firstTrailingBit(-15651i)) >= ~(-1i), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.c), var_1.c), _wgslsmith_f_op_f32(-var_1.c))), vec4<u32>(max(global1[_wgslsmith_index_u32(firstTrailingBit(arg_2.x), 19u)], func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1017f, 953f, -441f, var_0.c)), Struct_1(vec3<i32>(-15183i, var_2.a.x, var_3.a.x), global2.b, var_3.c))), arg_2.x, _wgslsmith_mult_u32(~(4294967295u >> (global1[_wgslsmith_index_u32(arg_2.x, 19u)] % 32u)), arg_2.x), reverseBits(_wgslsmith_sub_u32(arg_2.x << (arg_2.x % 32u), 2194u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.c))));
    return Struct_1(_wgslsmith_add_vec3_i32(min(-vec3<i32>(2147483647i, u_input.c.x, -2147483647i) & vec3<i32>(var_0.a.x, -55189i, 4123i), -_wgslsmith_mult_vec3_i32(vec3<i32>(0i, global2.a.x, var_0.a.x), var_2.a)), ~func_4(u_input.d, arg_0, vec4<u32>(23110u, 0u, 39826u, 9489u), _wgslsmith_f_op_f32(abs(var_2.c))).wzz), all(select(!(!vec3<bool>(true, false, global2.b)), !vec3<bool>(global2.b, false, global2.b), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-729f - _wgslsmith_f_op_f32(f32(-1f) * -584f))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>) -> vec2<i32> {
    let var_0 = func_2(Struct_1(-reverseBits(min(global2.a, global2.a)), !any(!vec4<bool>(false, true, true, global2.b)), 367f), abs(firstTrailingBit(_wgslsmith_div_vec2_i32(firstLeadingBit(arg_1.zy), -arg_0.a.yz))), vec2<u32>(min(3335u, _wgslsmith_clamp_u32(u_input.b.x, 3490u, u_input.a.x) >> (4294967295u % 32u)), _wgslsmith_dot_vec3_u32(~u_input.d.yzw << (abs(u_input.a.zwx) % vec3<u32>(32u)), u_input.b.xzx)));
    global0 = array<f32, 15>();
    global0 = array<f32, 15>();
    let var_1 = global3[_wgslsmith_index_u32(46516u, 5u)];
    global2 = global3[_wgslsmith_index_u32(11059u, 5u)];
    return _wgslsmith_clamp_vec2_i32(func_2(Struct_1(select(global2.a, arg_0.a, vec3<bool>(var_0.b, var_1.b, global2.b)), all(vec3<bool>(true, global2.b, true)), -1653f), arg_0.a.zy, ~_wgslsmith_mult_vec2_u32(u_input.b.yw, u_input.d.xz)).a.zz | (min(_wgslsmith_mult_vec2_i32(u_input.c.zz, arg_1.xx), global2.a.yy) | u_input.c.yz), ~(-global2.a.yz), firstTrailingBit(-select(_wgslsmith_mult_vec2_i32(u_input.c.yz, vec2<i32>(u_input.c.x, -7744i)), ~vec2<i32>(27021i, u_input.c.x), vec2<bool>(var_0.b, var_1.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global3[_wgslsmith_index_u32(u_input.d.x, 5u)], select(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(global2.a, u_input.c), _wgslsmith_div_vec3_i32(-u_input.c, u_input.c)), u_input.c, select(vec3<bool>(true, true, true), select(!vec3<bool>(global2.b, global2.b, global2.b), !vec3<bool>(global2.b, false, false), false), vec3<bool>(true, global2.b && false, global2.b | false))));
    global2 = Struct_1(_wgslsmith_div_vec3_i32(u_input.c << (~max(u_input.b.zxz, vec3<u32>(21176u, 4294967295u, 0u)) % vec3<u32>(32u)), func_4(u_input.d, global3[_wgslsmith_index_u32(27869u, 5u)], firstTrailingBit(vec4<u32>(u_input.d.x, 0u, u_input.d.x, 0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.d.x, 15u)]) + global0[_wgslsmith_index_u32(u_input.b.x ^ 4294967295u, 15u)])).wxy), global2.b, _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(65857u, 15u)])));
    global0 = array<f32, 15>();
    let var_1 = Struct_1(vec3<i32>(36608i, var_0.x, ~1i) >> (u_input.b.zyy % vec3<u32>(32u)), false, _wgslsmith_f_op_f32(f32(-1f) * -1110f));
    let var_2 = countOneBits(firstTrailingBit(5103u));
    let var_3 = var_1;
    let var_4 = vec4<i32>(_wgslsmith_mult_i32(-2147483647i, reverseBits(var_0.x)), countOneBits(7179i) >> (_wgslsmith_mod_u32(~_wgslsmith_add_u32(1u, var_2), ~_wgslsmith_div_u32(1u, 4294967295u)) % 32u), min(~(-20816i), ~func_4(~vec4<u32>(global1[_wgslsmith_index_u32(1u, 19u)], 4294967295u, 119u, 1u), func_2(var_1, vec2<i32>(1i, -1i), u_input.a.xw), ~u_input.d, var_3.c).x), _wgslsmith_dot_vec3_i32(vec3<i32>((global2.a.x >> (u_input.b.x % 32u)) ^ countOneBits(2147483647i), abs(var_3.a.x) << (4294967295u % 32u), ~global2.a.x), _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(-24536i, 2147483647i, 9028i)), func_4(max(vec4<u32>(9556u, u_input.b.x, 52465u, var_2), u_input.d), var_3, vec4<u32>(global1[_wgslsmith_index_u32(0u, 19u)], u_input.d.x, 1u, var_2), _wgslsmith_f_op_f32(min(-404f, global2.c))).wwz, ~vec3<i32>(var_0.x, -46662i, var_3.a.x) >> (_wgslsmith_div_vec3_u32(u_input.b.wwx, u_input.b.yxy) % vec3<u32>(32u)))));
    global0 = array<f32, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(global2.c, select(var_4, abs(vec4<i32>(var_0.x, global2.a.x, var_1.a.x, var_1.a.x) & vec4<i32>(0i, var_0.x, -2147483647i, var_1.a.x)), true), -max(-(~var_4), vec4<i32>(min(global2.a.x, var_1.a.x), firstLeadingBit(var_0.x), abs(var_1.a.x), ~var_0.x)), vec3<u32>(76888u, ~(~_wgslsmith_mod_u32(0u, 1u)), min(4294967295u, 54472u)), u_input.d.zz);
}

