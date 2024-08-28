struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 4> = array<vec4<bool>, 4>(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true));

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(-44644i, 41240u, -357f), Struct_1(i32(-2147483648), 31653u, -775f), Struct_1(-33901i, 63584u, -378f), Struct_1(-1i, 4294967295u, 1433f), Struct_1(1i, 1u, -690f), Struct_1(i32(-2147483648), 1u, 1000f), Struct_1(0i, 0u, -1100f), Struct_1(-1i, 18757u, 1072f), Struct_1(7104i, 4294967295u, -2300f), Struct_1(-5526i, 10244u, -1034f), Struct_1(1i, 4294967295u, -140f), Struct_1(25549i, 16455u, 336f), Struct_1(1i, 0u, -574f), Struct_1(-2726i, 4294967295u, -576f), Struct_1(22073i, 35768u, 1462f), Struct_1(i32(-2147483648), 0u, -1000f), Struct_1(6017i, 25269u, 585f), Struct_1(-1i, 45644u, -867f), Struct_1(1i, 0u, 1321f), Struct_1(35621i, 4294967295u, 319f), Struct_1(55229i, 1u, 414f), Struct_1(0i, 4294967295u, 572f), Struct_1(-27097i, 2125u, -126f), Struct_1(2147483647i, 0u, 686f), Struct_1(i32(-2147483648), 14393u, -737f), Struct_1(2147483647i, 1u, -307f));

var<private> global2: array<vec3<bool>, 7> = array<vec3<bool>, 7>(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false));

var<private> global3: array<f32, 13>;

var<private> global4: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(-10568i, false), Struct_2(-5556i, false), Struct_2(6288i, false), Struct_2(-1i, false), Struct_2(0i, false), Struct_2(6619i, true), Struct_2(74343i, true), Struct_2(-70708i, true), Struct_2(0i, false), Struct_2(-1i, false));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32) -> vec3<i32> {
    let var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(arg_0, u_input.a, ~4294967295u)), ~vec3<u32>(arg_0, _wgslsmith_clamp_u32(0u, 14610u, arg_0), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 26043u, arg_0), u_input.d)))), 26u)];
    var var_1 = u_input.c;
    var var_2 = ~_wgslsmith_mod_vec3_u32(u_input.d.zyy, _wgslsmith_mod_vec3_u32(u_input.d.zxx, max(vec3<u32>(var_0.b, 98897u, 1u), u_input.d.zxz))) << ((u_input.d.wzx | abs(firstLeadingBit(~u_input.d.yxy))) % vec3<u32>(32u));
    let var_3 = vec4<bool>(true, true, any(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))) && (select(any(global0[_wgslsmith_index_u32(0u, 4u)]), var_0.b >= var_0.b, true) | true), all(global0[_wgslsmith_index_u32(~28826u, 4u)]));
    global1 = array<Struct_1, 26>();
    return _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(~(-vec3<i32>(1i, 2147483647i, -23183i)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(var_1.x, -2147483647i, var_1.x), vec3<i32>(-2147483647i & var_1.x, ~(-2147483647i), ~u_input.c.x), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 0i, var_0.a), vec3<i32>(var_0.a, var_1.x, -1i))))), vec3<i32>(_wgslsmith_clamp_i32(select(4709i, var_0.a, var_3.x), _wgslsmith_sub_i32(0i, u_input.b), u_input.b) >> (0u % 32u), _wgslsmith_dot_vec2_i32(-vec2<i32>(var_1.x, var_1.x), max(_wgslsmith_add_vec2_i32(u_input.c, u_input.c), u_input.c ^ u_input.c)), countOneBits(var_0.a)), -reverseBits(abs(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.e, -41566i, var_1.x), vec3<i32>(1i, -15720i, -37501i)))));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec3<f32>) -> u32 {
    let var_0 = Struct_1(~(-(~(-arg_0.a))), _wgslsmith_mult_u32(u_input.d.x >> (0u % 32u), ~_wgslsmith_dot_vec2_u32(u_input.d.ww >> (u_input.d.yw % vec2<u32>(32u)), u_input.d.ww)), _wgslsmith_div_f32(548f, -450f));
    global2 = array<vec3<bool>, 7>();
    global0 = array<vec4<bool>, 4>();
    let var_1 = _wgslsmith_div_vec3_i32(func_3(u_input.d.x), vec3<i32>(0i, ~(-2147483647i), _wgslsmith_clamp_i32(arg_0.a, arg_0.a, arg_0.a)) & vec3<i32>(_wgslsmith_sub_i32(var_0.a, arg_0.a), ~arg_0.a, _wgslsmith_div_i32(-35311i, var_0.a))) ^ -vec3<i32>(arg_0.a, max(-15808i, func_3(1u).x), -59195i & (-2147483647i | var_0.a));
    global0 = array<vec4<bool>, 4>();
    return ~8617u >> (var_0.b % 32u);
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = vec4<bool>(any(!vec2<bool>(arg_0 != arg_0, true)), true, ~func_2(Struct_2(u_input.b, false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(u_input.d.x, 13u)], -366f, global3[_wgslsmith_index_u32(u_input.a, 13u)], global3[_wgslsmith_index_u32(4294967295u, 13u)])), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3[_wgslsmith_index_u32(u_input.d.x, 13u)], 282f, global3[_wgslsmith_index_u32(21432u, 13u)])))) != 8059u, !select(true, true, !any(vec3<bool>(false, true, false))));
    global1 = array<Struct_1, 26>();
    global4 = array<Struct_2, 10>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(177f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, -576f)) - _wgslsmith_f_op_f32(select(-518f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a, 13u)] + arg_0), true))), global3[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 13u)]));
    let var_2 = vec3<i32>(min(2147483647i, u_input.e), -1i, 22571i);
    return abs(u_input.d.x >> (1u % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    var var_0 = true;
    var var_1 = ~u_input.d.xwz;
    global3 = array<f32, 13>();
    let var_2 = arg_2;
    let var_3 = Struct_1(~(~u_input.b), ~_wgslsmith_sub_u32(56454u, ~arg_0.b) << (var_1.x % 32u), arg_3.c);
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    var var_1 = u_input.a;
    let var_2 = func_4(global1[_wgslsmith_index_u32(func_1(1f), 26u)], false, global4[_wgslsmith_index_u32(u_input.d.x, 10u)], Struct_1(-34070i, _wgslsmith_div_u32(1u, 4294967295u), global3[_wgslsmith_index_u32(~((4294967295u >> (u_input.d.x % 32u)) << (40606u % 32u)), 13u)]));
    let var_3 = global4[_wgslsmith_index_u32(var_2.b, 10u)];
    let var_4 = 16008u;
    var var_5 = func_4(var_2, !(abs(var_3.a) >= -20413i), global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(60563u, u_input.d.x)), ~firstTrailingBit(vec2<u32>(var_2.b, 19682u))), 10u)], Struct_1(_wgslsmith_add_i32(-10209i, -(~var_2.a)), var_4, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(var_4, 13u)], -1333f))))));
    let var_6 = select(~(~(~(~vec2<u32>(0u, var_2.b)))), u_input.d.zz, var_3.b);
    var var_7 = Struct_2(~(-12396i) >> (select(u_input.d.x, func_4(global1[_wgslsmith_index_u32(u_input.a, 26u)], select(true, var_3.b, false), Struct_2(var_3.a, false), var_2).b, false) % 32u), any(!vec4<bool>(all(vec3<bool>(var_3.b, true, true)), false, true, u_input.c.x > -5049i)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(~u_input.d.zxz, select(u_input.d.zww, u_input.d.xyz, vec3<bool>(true, false, true))), _wgslsmith_add_vec3_u32(~u_input.d.yzz, firstTrailingBit(vec3<u32>(u_input.d.x, u_input.a, 1u))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1649f) - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_5.c), -366f), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_2.b, 13u)]))), var_4, -(-3048i << (_wgslsmith_mult_u32(var_2.b & 4294967295u, ~var_5.b) % 32u)));
}

