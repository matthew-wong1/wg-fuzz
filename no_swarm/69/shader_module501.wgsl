struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: array<Struct_2, 5>;

var<private> global2: vec3<u32>;

var<private> global3: array<Struct_1, 30>;

var<private> global4: array<bool, 5>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global4 = array<bool, 5>();
    let var_0 = global4[_wgslsmith_index_u32(u_input.c, 5u)];
    let var_1 = global2.xy;
    global2 = u_input.a;
    var var_2 = reverseBits(max(u_input.a, max(~(~vec3<u32>(4701u, u_input.c, 0u)), ~_wgslsmith_mult_vec3_u32(u_input.a, u_input.a))));
    return 55864u;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: i32) -> vec2<bool> {
    global2 = arg_0.zzx;
    return !select(vec2<bool>(false, false), !select(!arg_1.a.yx, vec2<bool>(true, false), arg_1.a.yx), !vec2<bool>(select(arg_1.a.x, false, false), global4[_wgslsmith_index_u32(abs(1u), 5u)]));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: vec2<bool>) -> u32 {
    let var_0 = select(arg_2, func_4(vec4<u32>(_wgslsmith_mod_u32(global2.x >> (global2.x % 32u), 13797u), firstTrailingBit(arg_1.b) | (global2.x ^ 40902u), global2.x, func_3() << (func_3() % 32u)), global3[_wgslsmith_index_u32(~(~(~global2.x)), 30u)], abs(i32(-1i) * -arg_0)), all(vec4<bool>(true, arg_2.x, true, arg_1.a.a.x)));
    let var_1 = select(vec4<bool>(false, true, arg_2.x, true), vec4<bool>(all(select(vec4<bool>(false, var_0.x, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x))), arg_2.x, true, true), !global4[_wgslsmith_index_u32(u_input.a.x, 5u)]);
    let var_2 = _wgslsmith_clamp_i32(~(-min(-32338i >> (u_input.c % 32u), u_input.b.x)), -2147483647i, ~max(_wgslsmith_div_i32(~(-58323i), ~28552i), _wgslsmith_add_i32(reverseBits(arg_0), i32(-1i) * -1i)));
    let var_3 = global0[_wgslsmith_index_u32((arg_1.b >> (26344u % 32u)) << (~arg_1.b % 32u), 7u)];
    global1 = array<Struct_2, 5>();
    return arg_1.b;
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(reverseBits(18504u) >> (func_2(abs(u_input.b.x), global1[_wgslsmith_index_u32(countOneBits(1u), 5u)], vec2<bool>(true, !global4[_wgslsmith_index_u32(~4294967295u, 5u)])) % 32u), 7u)];
    let var_1 = -vec3<i32>(_wgslsmith_mod_i32(~(~arg_0), u_input.b.x), u_input.b.x, min(arg_0 & -2147483647i, max(arg_0, 2147483647i)) ^ (u_input.b.x >> (_wgslsmith_mod_u32(global2.x, 9905u) % 32u)));
    let var_2 = u_input.b.x <= arg_0;
    global3 = array<Struct_1, 30>();
    var var_3 = ~(u_input.a >> (vec3<u32>(func_2(select(var_1.x, var_1.x, true), Struct_2(global0[_wgslsmith_index_u32(u_input.c, 7u)], u_input.a.x, var_0.a.xz), select(vec2<bool>(var_2, var_0.a.x), vec2<bool>(true, global4[_wgslsmith_index_u32(4294967295u, 5u)]), vec2<bool>(var_0.a.x, true))), func_3() >> (18455u % 32u), u_input.c) % vec3<u32>(32u)));
    return global1[_wgslsmith_index_u32(func_2(-_wgslsmith_add_i32(-arg_0, -45264i), global1[_wgslsmith_index_u32(3903u, 5u)], select(!(!vec2<bool>(var_0.a.x, false)), !vec2<bool>(false, global4[_wgslsmith_index_u32(u_input.a.x, 5u)]), vec2<bool>(true & global4[_wgslsmith_index_u32(global2.x, 5u)], false & var_2))) & 1086u, 5u)];
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_2 {
    let var_0 = 1577u;
    global3 = array<Struct_1, 30>();
    global0 = array<Struct_1, 7>();
    global2 = select(u_input.a, vec3<u32>(var_0, 13123u, _wgslsmith_clamp_u32(18112u, ~func_3(), 79447u)), !global4[_wgslsmith_index_u32(8847u, 5u)]);
    var var_1 = arg_0;
    return Struct_2(Struct_1(arg_1.a.a), ~arg_0.x, func_4(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(global2.x, var_0, arg_0.x, 30132u), max(vec4<u32>(var_0, 1u, arg_1.b, 51277u), arg_0), true), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(arg_0, vec4<u32>(30774u, global2.x, arg_1.b, 21938u)), arg_0), ~arg_0), Struct_1(select(func_1(-4240i).a.a, func_1(u_input.b.x).a.a, select(vec3<bool>(true, global4[_wgslsmith_index_u32(5963u, 5u)], true), vec3<bool>(false, arg_1.a.a.x, false), vec3<bool>(global4[_wgslsmith_index_u32(1u, 5u)], arg_1.c.x, true)))), _wgslsmith_mod_i32(0i ^ u_input.b.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(51967i, u_input.b.x), u_input.b.xz))));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: i32, arg_3: vec3<i32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1875f, -982f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -162f))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1940f))), _wgslsmith_div_f32(-1018f, _wgslsmith_f_op_f32(960f + 2033f)), -219f), !select(select(vec3<bool>(global4[_wgslsmith_index_u32(298u, 5u)], arg_0.a.a.x, arg_0.c.x), vec3<bool>(arg_0.c.x, arg_0.c.x, arg_0.c.x), arg_0.a.a), arg_0.a.a, vec3<bool>(true, false, global4[_wgslsmith_index_u32(arg_0.b, 5u)]))))));
    let var_1 = countOneBits(min(min(~arg_0.b, countOneBits(arg_0.b)), global2.x));
    global3 = array<Struct_1, 30>();
    global3 = array<Struct_1, 30>();
    let var_2 = func_5(firstTrailingBit(_wgslsmith_mod_vec4_u32(reverseBits(~vec4<u32>(0u, u_input.c, u_input.c, 64111u)), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 19396u, global2.x, 78597u), vec4<u32>(1u, arg_0.b, arg_0.b, 0u)), max(vec4<u32>(global2.x, 4294967295u, global2.x, 21661u), vec4<u32>(u_input.a.x, u_input.c, arg_0.b, u_input.c))))), func_1(_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_add_i32(-2147483647i, -arg_2), -_wgslsmith_clamp_i32(arg_2, arg_3.x, 2147483647i)))).a;
    return vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, abs(arg_1.x), -arg_1.x), -_wgslsmith_dot_vec4_i32(u_input.b, -u_input.b >> ((vec4<u32>(1u, var_1, var_1, 21055u) & vec4<u32>(arg_0.b, var_1, var_1, global2.x)) % vec4<u32>(32u))), _wgslsmith_div_i32(1i, ~(-(~(-6262i)))), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(_wgslsmith_clamp_vec4_i32(reverseBits(u_input.b), ~(-vec4<i32>(u_input.b.x, -15988i, 17148i, -5678i)), ~u_input.b), countOneBits(firstTrailingBit(-vec4<i32>(u_input.b.x, -10452i, 2147483647i, u_input.b.x))), global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~33414u | ~u_input.c), ~u_input.c, ~_wgslsmith_clamp_u32(~u_input.c, firstLeadingBit(global2.x), 1u & global2.x)), 5u)]);
    var var_1 = vec3<u32>(firstLeadingBit(4294967295u), 1u, 1u);
    var var_2 = firstLeadingBit(func_6(func_5(~(vec4<u32>(global2.x, global2.x, global2.x, var_1.x) >> (vec4<u32>(u_input.a.x, 4294967295u, global2.x, 4294967295u) % vec4<u32>(32u))), func_1(select(10406i, var_0.x, false))), -u_input.b.yy, max(i32(-1i) * -1i, min(var_0.x, _wgslsmith_mult_i32(var_0.x, -1i))), -(~vec3<i32>(var_0.x, -1i, u_input.b.x) >> (select(u_input.a, u_input.a, false) % vec3<u32>(32u)))));
    var_1 = u_input.a;
    global0 = array<Struct_1, 7>();
    let var_3 = vec2<i32>(-var_0.x, _wgslsmith_clamp_i32(var_0.x, var_2.x, ~(~u_input.b.x)));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1157f, -1283f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1198f, 630f))))))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1149f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-424f - 1059f), -760f)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(324f, 1000f) - vec2<f32>(1442f, 438f)))))))));
    let var_5 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_4.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_4.x))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(select(var_4.x, -464f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -990f) * -569f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -885f), _wgslsmith_f_op_f32(-var_4.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -604f)));
    global1 = array<Struct_2, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_4.x), ~0u, _wgslsmith_mult_u32(~_wgslsmith_sub_u32(93448u | u_input.c, 8426u), 97950u), firstLeadingBit(reverseBits(select(abs(1348u), ~5969u, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-2101f)))), var_5.x, var_5.x)));
}

