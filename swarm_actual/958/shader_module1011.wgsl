struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: array<Struct_2, 32>;

var<private> global2: array<i32, 4>;

var<private> global3: u32 = 4294967295u;

var<private> global4: Struct_2;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec4<u32>) -> vec4<bool> {
    var var_0 = ~arg_2;
    var var_1 = ~(~(-((vec3<i32>(24120i, global2[_wgslsmith_index_u32(arg_2.x, 4u)], arg_1.a) | vec3<i32>(arg_1.a, arg_1.a, 2147483647i)) | vec3<i32>(-2147483647i, 2147483647i, 42704i))));
    let var_2 = Struct_1(vec3<bool>(any(!vec4<bool>(global0.x, global0.x, false, false)), any(vec4<bool>(false, any(vec3<bool>(global0.x, global0.x, global0.x)), global0.x, true)), !(global0.x | (global0.x == global0.x))), true, any(!select(vec3<bool>(true, global0.x, true), select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, false, global0.x), global0.x), select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(true, global0.x, true), true))));
    global4 = global1[_wgslsmith_index_u32(arg_0.x, 32u)];
    global3 = ~_wgslsmith_add_u32(abs(firstTrailingBit(arg_0.x) & arg_0.x), 11293u);
    return select(vec4<bool>(all(!vec2<bool>(var_2.c, var_2.a.x)), any(vec4<bool>(global0.x, true, false, true)), 11798i < ~_wgslsmith_add_i32(global4.a, global4.a), global0.x), !(!(!select(vec4<bool>(global0.x, var_2.b, true, global0.x), vec4<bool>(var_2.b, false, global0.x, global0.x), vec4<bool>(global0.x, var_2.a.x, true, true)))), true);
}

fn func_2(arg_0: f32) -> Struct_1 {
    global0 = select(!vec3<bool>(true, 24587u <= (33241u >> (u_input.c % 32u)), any(global0.xy)), select(select(!vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, select(global0.x, true, global0.x), false), !(!vec3<bool>(global0.x, global0.x, global0.x))), !vec3<bool>(true, false, arg_0 < -165f), any(func_3(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.c, 16381u), vec3<u32>(4294967295u, u_input.c, 1u)), Struct_2(global4.a), ~vec4<u32>(u_input.a, 0u, u_input.c, u_input.c)))), global0.x);
    let var_0 = Struct_1(vec3<bool>(!global0.x, !global0.x, any(select(vec4<bool>(global0.x, false, false, false), !vec4<bool>(global0.x, global0.x, true, false), true))), global0.x, all(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, global0.x), global0.x), select(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, true, false, global0.x), vec4<bool>(true, true, global0.x, global0.x)), global0.x)));
    let var_1 = select(vec2<u32>(max(u_input.a, ~6770u) >> (1u % 32u), abs(u_input.c)), select(vec2<u32>(~u_input.c ^ 84766u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 3982u, 1u), vec3<u32>(u_input.a, 32380u, 39637u)), u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(52511u, 52124u)))), vec2<u32>(u_input.c, reverseBits(21546u)), !(-2147483647i == global4.a)), vec2<bool>(global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mod_u32(u_input.a, u_input.c)), 4u)] < _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, global2[_wgslsmith_index_u32(u_input.a, 4u)], -30828i, global2[_wgslsmith_index_u32(28220u, 4u)]), vec4<i32>(-82451i, 1904i, global4.a, 2147483647i))), true));
    global2 = array<i32, 4>();
    return Struct_1(select(var_0.a, !func_3(vec3<u32>(var_1.x, 23203u, var_1.x), Struct_2(global2[_wgslsmith_index_u32(var_1.x, 4u)]), firstLeadingBit(vec4<u32>(4294967295u, var_1.x, var_1.x, var_1.x))).wwz, vec3<bool>(any(var_0.a.yz), -u_input.b.x > (global2[_wgslsmith_index_u32(13174u, 4u)] << (var_1.x % 32u)), var_0.c)), global0.x, true);
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> vec4<f32> {
    var var_0 = 1i;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -651f);
    var var_2 = !select(arg_1.c.a, arg_1.e, arg_1.c.a);
    var_2 = vec3<bool>(global0.x, global0.x, true);
    global3 = 34190u;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, _wgslsmith_div_f32(arg_1.b.x, arg_1.b.x), _wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(ceil(-503f))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.x - arg_1.b.x) + -1519f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.b.x * arg_1.b.x))), arg_1.b.x, arg_1.b.x)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_4(u_input.c, Struct_3(u_input.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x) + vec4<f32>(arg_1.x, -875f, arg_1.x, 496f)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<f32>(163f, arg_1.x, 1000f, arg_1.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1598f, -2046f, -1224f, arg_1.x))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(2156f, arg_1.x, arg_1.x, arg_1.x))))), func_2(-3574f), Struct_1(vec3<bool>(!global0.x, any(arg_0.yz), u_input.a > u_input.c), false, func_3(~vec3<u32>(u_input.c, u_input.a, 25104u), global1[_wgslsmith_index_u32(u_input.c, 32u)], vec4<u32>(8501u, 4294967295u, u_input.c, 2837u)).x), arg_0.wwx)));
    var var_1 = Struct_3(reverseBits(u_input.c), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_0.x, arg_1.x), _wgslsmith_f_op_f32(-1584f - arg_1.x), _wgslsmith_f_op_f32(abs(666f)), arg_1.x)))), func_2(-1000f), func_2(_wgslsmith_f_op_f32(var_0.x + 2127f)), vec3<bool>(arg_0.x, false, true));
    let var_2 = select(!(!(!func_2(-1809f).a)), var_1.e, any(select(global0.zy, func_2(-365f).a.zx, true)));
    var var_3 = arg_0.xx;
    let var_4 = Struct_3(~_wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, u_input.c), vec2<u32>(var_1.a, 4294967295u)), 17623u), _wgslsmith_f_op_vec4_f32(-var_1.b), Struct_1(arg_0.xzy, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.x, arg_1.x))) > _wgslsmith_f_op_f32(f32(-1f) * -767f), true), var_1.c, arg_0.wxw);
    return Struct_3(1u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_4.b.x)))), _wgslsmith_f_op_f32(select(312f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.x + var_4.b.x), _wgslsmith_f_op_f32(trunc(209f)))), true)), 230f, _wgslsmith_f_op_f32(-1159f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1608f))), Struct_1(select(!var_2, select(vec3<bool>(true, var_2.x, arg_0.x), vec3<bool>(true, global0.x, false), var_2), var_4.c.c), any(func_3(_wgslsmith_sub_vec3_u32(vec3<u32>(23540u, 4951u, u_input.a), vec3<u32>(var_4.a, 20954u, 4294967295u)), global1[_wgslsmith_index_u32(var_4.a, 32u)], ~vec4<u32>(var_1.a, var_1.a, 37151u, 82181u))), var_1.e.x), func_2(_wgslsmith_f_op_f32(min(var_1.b.x, var_1.b.x))), !vec3<bool>(false, select(arg_0.x, select(true, true, false), var_1.d.b), arg_0.x));
}

fn func_5(arg_0: Struct_3) -> i32 {
    var var_0 = min(arg_0.a, arg_0.a);
    let var_1 = (vec3<u32>(arg_0.a, ~(~1u), arg_0.a) | vec3<u32>(4294967295u, 49024u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, u_input.c, 87702u, 24780u) ^ vec4<u32>(u_input.c, u_input.c, arg_0.a, 4294967295u), abs(vec4<u32>(arg_0.a, 47885u, 0u, 4294967295u))))) & select(_wgslsmith_mod_vec3_u32(~reverseBits(vec3<u32>(u_input.c, u_input.a, 5473u)), vec3<u32>(~arg_0.a, abs(arg_0.a), ~1u)), _wgslsmith_mult_vec3_u32(~vec3<u32>(4339u, 50409u, 1u), vec3<u32>(u_input.c, arg_0.a, u_input.a)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.a, u_input.a, 17u), ~vec3<u32>(4294967295u, 28424u, u_input.a), vec3<u32>(11016u, arg_0.a, 0u) << (vec3<u32>(arg_0.a, u_input.a, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)), arg_0.d.c);
    let var_2 = -1i;
    let var_3 = arg_0;
    global2 = array<i32, 4>();
    return global2[_wgslsmith_index_u32(abs(abs(4294967295u)), 4u)];
}

fn func_6(arg_0: i32, arg_1: vec2<bool>, arg_2: vec3<u32>) -> Struct_2 {
    global2 = array<i32, 4>();
    var var_0 = _wgslsmith_sub_u32(arg_2.x ^ 5914u, 7304u);
    global4 = Struct_2(12657i);
    global4 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, arg_2.x), 32u)];
    var var_1 = _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 38284u, arg_2.x), firstTrailingBit(vec4<u32>(38150u, 1u, 89107u, u_input.c))), firstTrailingBit(vec4<u32>(arg_2.x, u_input.a, 9177u, arg_2.x)) ^ ~vec4<u32>(u_input.c, 43230u, u_input.c, arg_2.x)), countOneBits(~vec4<u32>(0u, u_input.a, 0u, 0u))), _wgslsmith_div_vec4_u32(vec4<u32>(~(~4294967295u), ~4294967295u, 18939u, 1u), vec4<u32>(_wgslsmith_dot_vec3_u32(arg_2 | vec3<u32>(44828u, 8304u, u_input.a), vec3<u32>(arg_2.x, u_input.c, arg_2.x)), ~84187u, 4294967295u, arg_2.x)));
    return Struct_2(u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(-38080i, -_wgslsmith_dot_vec2_i32(-u_input.d, ~u_input.b)));
    global4 = Struct_2(-(abs(i32(-1i) * -2147483647i) >> (u_input.c % 32u)));
    let var_1 = func_6(func_5(func_1(select(select(vec4<bool>(false, global0.x, false, false), vec4<bool>(false, global0.x, false, global0.x), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, true, false, global0.x), vec4<bool>(true, false, false, global0.x), vec4<bool>(global0.x, global0.x, false, false)), select(vec4<bool>(global0.x, false, false, false), vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, global0.x))), vec2<f32>(_wgslsmith_f_op_f32(1981f + -731f), -1073f))), !(!(!(!global0.zx))), ~reverseBits(vec3<u32>(u_input.c, u_input.c, u_input.a) & _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 90415u, 32025u), vec3<u32>(4294967295u, 1u, u_input.c))));
    let var_2 = func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-701f)))));
    let var_3 = Struct_3(_wgslsmith_mult_u32(u_input.a, _wgslsmith_add_u32(78415u, select(~0u, min(0u, 0u), !global0.x))), vec4<f32>(1f, 1f, 1f, 1f), Struct_1(!(!vec3<bool>(false, global0.x, global0.x)), !(!all(var_2.a)), true), func_1(!func_3(~vec3<u32>(u_input.c, 76494u, u_input.c), func_6(global4.a, vec2<bool>(var_2.c, true), vec3<u32>(4294967295u, 4294967295u, 82733u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, 69615u), vec4<u32>(58457u, 68794u, u_input.c, 27250u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1309f) + vec2<f32>(-363f, 514f)))))).c, func_1(func_3(abs(~vec3<u32>(u_input.c, u_input.a, 9218u)), Struct_2(-55876i), vec4<u32>(u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 29166u, u_input.c), vec3<u32>(1u, u_input.c, u_input.a)), min(u_input.a, 1u), ~1u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(635f, -198f))))).c.a);
    global2 = array<i32, 4>();
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -512f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(902f)) - _wgslsmith_f_op_f32(var_3.b.x + var_3.b.x)))) * _wgslsmith_f_op_f32(floor(var_3.b.x))));
    global0 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(var_3.a, 4u)], var_3.b.yw, vec4<u32>(0u & ~var_3.a, max(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(9323u, u_input.c, u_input.a), vec3<u32>(u_input.a, 72390u, var_3.a))), ~(var_3.a ^ 0u), u_input.a) << (~(min(vec4<u32>(69273u, u_input.c, 48842u, var_3.a), vec4<u32>(0u, u_input.c, 0u, 4294967295u)) >> (countOneBits(vec4<u32>(26867u, u_input.c, 0u, 7323u)) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_sub_vec2_u32(~(vec2<u32>(1u, var_3.a) >> (vec2<u32>(u_input.a, var_3.a) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(3456u, 60247u, u_input.a, 0u) << (vec4<u32>(var_3.a, var_3.a, var_3.a, var_3.a) % vec4<u32>(32u)), countOneBits(vec4<u32>(1u, 0u, u_input.c, 1u))), u_input.a)));
}

