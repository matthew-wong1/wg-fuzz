struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12>;

var<private> global1: vec2<u32>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
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

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    global0 = array<bool, 12>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-537f)) * -1712f), _wgslsmith_f_op_f32(f32(-1f) * -1478f)))));
    var var_1 = global1.x;
    global0 = array<bool, 12>();
    var_1 = _wgslsmith_clamp_u32(abs(28461u), select(27204u, u_input.c, any(vec2<bool>(all(vec3<bool>(true, true, global0[_wgslsmith_index_u32(61179u, 12u)])), true || global0[_wgslsmith_index_u32(global1.x, 12u)]))), 46707u);
    return max(abs(15710u), ~global1.x);
}

fn func_2(arg_0: vec2<bool>) -> vec2<u32> {
    var var_0 = countOneBits(~69772u);
    var var_1 = abs(~_wgslsmith_mod_u32(0u, _wgslsmith_mod_u32(15242u, func_3())));
    var var_2 = Struct_2(Struct_1(vec2<u32>(global1.x, global1.x), _wgslsmith_sub_vec3_i32(vec3<i32>(38848i, max(u_input.a, 26234i), u_input.a << (4294967295u % 32u)), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, -1i), vec3<i32>(u_input.a, -16754i, u_input.b)), countOneBits(vec3<i32>(12491i, -39092i, u_input.a)))), vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(743u, u_input.c), vec2<u32>(19448u, global1.x) ^ vec2<u32>(80179u, 1u)), _wgslsmith_div_u32(4294967295u, ~u_input.c)), arg_0), Struct_1(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, 26195u), vec2<u32>(u_input.c, 0u)) << (vec2<u32>(_wgslsmith_div_u32(global1.x, u_input.c), global1.x) % vec2<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.b, 51076i) << (~vec3<u32>(u_input.c, u_input.c, global1.x) % vec3<u32>(32u)), vec3<i32>(0i, -2147483647i, firstLeadingBit(1138i))), min(~select(vec2<u32>(global1.x, global1.x), vec2<u32>(global1.x, u_input.c), vec2<bool>(true, true)), ~firstLeadingBit(vec2<u32>(u_input.c, 1u))), !(!arg_0)), Struct_1(vec2<u32>(~(0u ^ u_input.c), 128197u), vec3<i32>(0i >> (global1.x % 32u), -9994i, -27639i) >> (~vec3<u32>(global1.x, u_input.c, 111143u) % vec3<u32>(32u)), (max(vec2<u32>(global1.x, 50109u), vec2<u32>(4294967295u, u_input.c)) ^ vec2<u32>(global1.x, 26871u)) ^ vec2<u32>(global1.x, abs(4294967295u)), !select(select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)], false), vec2<bool>(global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(0u, 12u)]), global0[_wgslsmith_index_u32(u_input.c, 12u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 12u)], arg_0.x), false)));
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(1109f)), _wgslsmith_f_op_f32(613f - 924f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-983f, -1177f)) * vec2<f32>(601f, -982f)))))));
    global1 = var_2.a.a;
    return ~var_2.c.a;
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(4294967295u, 12u)];
    let var_1 = max(_wgslsmith_sub_vec2_u32(vec2<u32>(~0u, firstLeadingBit(u_input.c)), func_2(!vec2<bool>(global0[_wgslsmith_index_u32(global1.x, 12u)], false))), _wgslsmith_div_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, global1.x)), vec2<u32>(0u, global1.x) & ~vec2<u32>(u_input.c, 7189u)));
    var var_2 = ~(~1u);
    var var_3 = Struct_2(Struct_1(countOneBits(select(var_1, abs(vec2<u32>(4294967295u, 4294967295u)), vec2<bool>(true, true))), -vec3<i32>(reverseBits(arg_0), u_input.b, arg_0 << (0u % 32u)), var_1, !(!vec2<bool>(global0[_wgslsmith_index_u32(9320u, 12u)], false))), Struct_1(firstTrailingBit(var_1), vec3<i32>(u_input.b, ~(i32(-1i) * -13773i), ~1i), vec2<u32>(4294967295u, 32913u), vec2<bool>(false, true)), Struct_1(var_1, _wgslsmith_mod_vec3_i32(vec3<i32>(~0i, u_input.a, i32(-1i) * -2147483647i), ~_wgslsmith_add_vec3_i32(vec3<i32>(arg_0, 2147483647i, -19008i), vec3<i32>(u_input.a, 37623i, arg_0))), var_1 | firstTrailingBit(var_1), select(vec2<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 12u)], true)), any(vec3<bool>(global0[_wgslsmith_index_u32(23095u, 12u)], false, global0[_wgslsmith_index_u32(29696u, 12u)]))), vec2<bool>(all(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(var_1.x, 12u)])), global0[_wgslsmith_index_u32(1u, 12u)] && global0[_wgslsmith_index_u32(var_1.x, 12u)]), select(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 12u)], true), vec2<bool>(false, global0[_wgslsmith_index_u32(69706u, 12u)]), global0[_wgslsmith_index_u32(var_1.x, 12u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 12u)], global0[_wgslsmith_index_u32(11137u, 12u)]), vec2<bool>(true, true), false), select(vec2<bool>(global0[_wgslsmith_index_u32(global1.x, 12u)], global0[_wgslsmith_index_u32(global1.x, 12u)]), vec2<bool>(false, false), vec2<bool>(true, false))))));
    var var_4 = ~abs(vec4<i32>(firstTrailingBit(arg_0), 2147483647i, ~var_3.b.b.x, firstLeadingBit(-arg_0)));
    return Struct_1(_wgslsmith_mult_vec2_u32(select(vec2<u32>(u_input.c, var_1.x) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(global1.x, var_3.b.a.x), vec2<u32>(48150u, var_3.c.a.x)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3.b.c.x, var_1.x, var_3.c.a.x), vec3<u32>(33353u, var_3.a.c.x, 1491u)), u_input.c >> (22383u % 32u)), true), reverseBits(firstLeadingBit(var_1))), -(vec3<i32>(-1i) * -var_3.b.b), ~(~(~select(var_1, var_1, var_3.b.d.x))), !vec2<bool>(select(!var_3.c.d.x, true, global0[_wgslsmith_index_u32(countOneBits(4294967295u), 12u)]), false));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_3) -> Struct_2 {
    let var_0 = u_input.c;
    global0 = array<bool, 12>();
    var var_1 = func_1(arg_2.a.b.b.x);
    var_1 = arg_2.a.a;
    global0 = array<bool, 12>();
    return Struct_2(arg_1.a, func_1(1i), arg_1.a);
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3) -> Struct_3 {
    var var_0 = arg_1.c.c;
    var var_1 = abs(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, global1.x, 1205u, arg_1.b.a.x), select(vec4<u32>(u_input.c, u_input.c, u_input.c, arg_2.a.a.c.x), vec4<u32>(1u, 1u, 4294967295u, global1.x), vec4<bool>(arg_1.b.d.x, false, true, global0[_wgslsmith_index_u32(1u, 12u)]))) ^ ~abs(vec4<u32>(1u, 31163u, 15139u, arg_1.c.c.x))) >> (_wgslsmith_div_vec4_u32((_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.a.b.c.x, 0u, 4294967295u, 1u), vec4<u32>(0u, arg_2.a.a.a.x, 19629u, 5426u)) & vec4<u32>(11918u, 21999u, arg_2.a.c.c.x, 40321u)) & ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, 15806u, 6360u), vec4<u32>(1u, 4294967295u, arg_1.b.a.x, 5598u)), vec4<u32>(global1.x, ~(~global1.x), _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, arg_1.c.c.x), u_input.c), global1.x)) % vec4<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-1000f)), 1f, _wgslsmith_div_f32(arg_0, _wgslsmith_div_f32(-864f, -1117f)), 501f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1027f, -1251f, arg_0, 1000f) + vec4<f32>(1000f, -1251f, arg_0, arg_0))))));
    let var_3 = arg_1.b.b.xx;
    var var_4 = func_1(arg_2.a.c.b.x);
    return arg_2;
}

fn func_6(arg_0: u32, arg_1: Struct_3, arg_2: vec2<i32>) -> StorageBuffer {
    var var_0 = func_4(max(func_4(arg_1.a.c.b.x, Struct_2(func_4(2147483647i, arg_1.a, Struct_3(arg_1.a)).a, arg_1.a.a, arg_1.a.a), arg_1).c.b.x, select(reverseBits(min(arg_1.a.c.b.x, arg_2.x)), 0i, global0[_wgslsmith_index_u32(17191u, 12u)])), Struct_2(func_5(1000f, arg_1.a, arg_1).a.a, Struct_1(firstLeadingBit(vec2<u32>(arg_1.a.c.c.x, arg_1.a.b.c.x) | vec2<u32>(0u, 1u)), func_1(-1i).b, ~(arg_1.a.a.a | vec2<u32>(u_input.c, arg_1.a.b.a.x)), vec2<bool>(all(arg_1.a.b.d), false)), func_1(abs(arg_1.a.a.b.x))), Struct_3(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(678f - -216f)), func_4(-68617i, arg_1.a, arg_1), func_5(1219f, Struct_2(arg_1.a.c, arg_1.a.c, Struct_1(vec2<u32>(4294967295u, 4294967295u), arg_1.a.c.b, vec2<u32>(arg_1.a.c.a.x, arg_0), arg_1.a.a.d)), Struct_3(Struct_2(arg_1.a.c, arg_1.a.c, arg_1.a.c)))).a)).a;
    var var_1 = arg_1.a.b;
    let var_2 = vec3<bool>(all(!(!vec3<bool>(true, arg_1.a.b.d.x, arg_1.a.c.d.x))), global0[_wgslsmith_index_u32(1u, 12u)], false);
    var var_3 = ~firstLeadingBit(34985u) << (u_input.c % 32u);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(261f, 807f))))) * _wgslsmith_f_op_f32(-501f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-602f + _wgslsmith_f_op_f32(f32(-1f) * -945f)))));
    return StorageBuffer(~arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -993f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 12>();
    let var_0 = u_input.a;
    global1 = ~vec2<u32>(u_input.c, 43179u);
    let var_1 = global1.x;
    let x = u_input.a;
    s_output = func_6(~_wgslsmith_mod_u32(_wgslsmith_add_u32(~u_input.c, ~4294967295u), max(u_input.c, 50936u)), func_5(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(424f)), _wgslsmith_f_op_f32(abs(1333f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1255f + -592f) - _wgslsmith_f_op_f32(920f * -1151f))), func_4(var_0, Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), vec3<i32>(2147483647i, -1i, 2147483647i), vec2<u32>(global1.x, global1.x), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 12u)], global0[_wgslsmith_index_u32(8317u, 12u)])), Struct_1(vec2<u32>(global1.x, 0u), vec3<i32>(0i, u_input.a, var_0), vec2<u32>(u_input.c, u_input.c), vec2<bool>(false, false)), func_1(u_input.a)), Struct_3(Struct_2(Struct_1(vec2<u32>(global1.x, global1.x), vec3<i32>(-1i, u_input.b, var_0), vec2<u32>(u_input.c, global1.x), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 12u)])), Struct_1(vec2<u32>(1u, global1.x), vec3<i32>(var_0, -1i, var_0), vec2<u32>(1u, global1.x), vec2<bool>(true, true)), Struct_1(vec2<u32>(26170u, global1.x), vec3<i32>(u_input.b, -22069i, 19067i), vec2<u32>(1u, global1.x), vec2<bool>(global0[_wgslsmith_index_u32(65387u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)]))))), Struct_3(Struct_2(Struct_1(vec2<u32>(4294967295u, u_input.c), vec3<i32>(2147483647i, 39641i, -15531i), vec2<u32>(46220u, 48712u), vec2<bool>(true, false)), Struct_1(vec2<u32>(10234u, global1.x), vec3<i32>(2147483647i, u_input.a, var_0), vec2<u32>(4294967295u, u_input.c), vec2<bool>(global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(u_input.c, 12u)])), func_4(var_0, Struct_2(Struct_1(vec2<u32>(global1.x, 4294967295u), vec3<i32>(28009i, u_input.b, var_0), vec2<u32>(8447u, 1u), vec2<bool>(true, global0[_wgslsmith_index_u32(24057u, 12u)])), Struct_1(vec2<u32>(global1.x, 60282u), vec3<i32>(var_0, var_0, u_input.b), vec2<u32>(4294967295u, global1.x), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 12u)], false)), Struct_1(vec2<u32>(u_input.c, 61352u), vec3<i32>(var_0, u_input.a, u_input.b), vec2<u32>(u_input.c, 17372u), vec2<bool>(global0[_wgslsmith_index_u32(global1.x, 12u)], false))), Struct_3(Struct_2(Struct_1(vec2<u32>(96970u, global1.x), vec3<i32>(var_0, var_0, 1i), vec2<u32>(global1.x, u_input.c), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c, 12u)], global0[_wgslsmith_index_u32(u_input.c, 12u)])), Struct_1(vec2<u32>(26247u, global1.x), vec3<i32>(1475i, var_0, u_input.a), vec2<u32>(1u, global1.x), vec2<bool>(global0[_wgslsmith_index_u32(global1.x, 12u)], global0[_wgslsmith_index_u32(u_input.c, 12u)])), Struct_1(vec2<u32>(1u, u_input.c), vec3<i32>(u_input.a, 0i, 43868i), vec2<u32>(4294967295u, u_input.c), vec2<bool>(global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(global1.x, 12u)]))))).b))), ~vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, 0i, -17054i, 2147483647i), min(vec4<i32>(var_0, -67585i, u_input.a, u_input.b), vec4<i32>(2147483647i, u_input.b, u_input.a, u_input.b))), ~_wgslsmith_mult_i32(u_input.a, u_input.b)));
}

