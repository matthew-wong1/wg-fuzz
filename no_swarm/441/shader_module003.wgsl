struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false));

var<private> global1: bool = true;

var<private> global2: vec2<u32>;

var<private> global3: array<bool, 15> = array<bool, 15>(true, true, true, true, false, true, false, true, false, true, false, true, true, false, true);

var<private> global4: array<bool, 24>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: vec4<f32>) -> vec2<u32> {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -595f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-101f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-411f, arg_2.x) - -752f)) * -218f));
    global4 = array<bool, 24>();
    var_0 = _wgslsmith_f_op_vec4_f32(min(arg_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-arg_2)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-arg_2);
    global4 = array<bool, 24>();
    return vec2<u32>(arg_1.b.x, 16803u);
}

fn func_2(arg_0: Struct_1) -> Struct_4 {
    let var_0 = _wgslsmith_mod_vec2_u32(~(countOneBits(func_3(u_input.b.xwx, Struct_4(global3[_wgslsmith_index_u32(global2.x, 15u)], u_input.b.wyz, vec3<bool>(false, global4[_wgslsmith_index_u32(global2.x, 24u)], false)), vec4<f32>(619f, -383f, arg_0.b, arg_0.b))) & vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(global2.x, 1u, 0u, u_input.c.x)), global2.x)), vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global2.x, 19874u, 16298u, 17060u), ~u_input.b), u_input.b), _wgslsmith_div_u32(0u, 1u) & abs(u_input.a)));
    var var_1 = Struct_2(Struct_1(arg_0.a, _wgslsmith_f_op_f32(arg_0.e + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.e)) + -435f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.c * arg_0.c)), arg_0.d, _wgslsmith_f_op_f32(trunc(-263f))), _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -23211i, _wgslsmith_mod_i32(arg_0.a, 11896i)), vec2<i32>(arg_0.a, _wgslsmith_div_i32(-31925i, arg_0.a))) << (~(~u_input.c.x) % 32u));
    var var_2 = var_1.b;
    global3 = array<bool, 15>();
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(949f))));
    return Struct_4(arg_0.d.x, ~select(vec3<u32>(~global2.x, ~global2.x, ~var_0.x), _wgslsmith_mult_vec3_u32(max(vec3<u32>(13863u, global2.x, var_0.x), vec3<u32>(u_input.c.x, 0u, var_0.x)), firstLeadingBit(u_input.b.wyy)), any(!var_1.a.d.wz)), vec3<bool>(global3[_wgslsmith_index_u32(var_0.x ^ global2.x, 15u)], !all(arg_0.d.zy), (!arg_0.d.x & (var_1.b < 1i)) & true));
}

fn func_1(arg_0: vec3<u32>) -> vec2<i32> {
    global2 = arg_0.yx;
    var var_0 = func_2(Struct_1(~(~_wgslsmith_dot_vec3_i32(vec3<i32>(22093i, 2147483647i, 1i), vec3<i32>(-24748i, 574i, 0i))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(462f * -342f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), global3[_wgslsmith_index_u32(max(1u, u_input.b.x), 15u)])), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1854f)), _wgslsmith_f_op_f32(f32(-1f) * -574f), true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1660f + 858f)))), vec4<bool>(!(4294967295u >= arg_0.x), true, all(select(global0[_wgslsmith_index_u32(global2.x, 12u)], vec4<bool>(true, false, global4[_wgslsmith_index_u32(4294967295u, 24u)], true), vec4<bool>(true, global4[_wgslsmith_index_u32(u_input.a, 24u)], false, false))), u_input.a >= arg_0.x), -572f));
    var var_1 = Struct_5(Struct_4(var_0.c.x && func_2(Struct_1(-66903i, 470f, vec2<f32>(-534f, 705f), global0[_wgslsmith_index_u32(3135u, 12u)], -1151f)).c.x, abs(u_input.b.wxy), var_0.c), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, 1i, firstTrailingBit(5392i)), vec4<i32>(max(-12466i, 2147483647i), _wgslsmith_add_i32(-1i, 59200i), firstLeadingBit(-40722i), abs(-2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-937f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-181f, -739f) * vec2<f32>(-255f, -543f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-396f, -515f), vec2<f32>(-212f, 256f), true))))), vec4<bool>(global3[_wgslsmith_index_u32(15426u, 15u)], var_0.a, true, false), 1455f), ~0u, u_input.b);
    var var_2 = Struct_2(Struct_1(2147483647i, 860f, var_1.b.c, select(vec4<bool>(false && global3[_wgslsmith_index_u32(var_1.c, 15u)], !var_0.a, global3[_wgslsmith_index_u32(26384u, 15u)], global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(0u, u_input.b.x, global2.x, var_1.d.x)), 24u)]), global0[_wgslsmith_index_u32(var_1.d.x, 12u)], select(!global0[_wgslsmith_index_u32(var_1.c, 12u)], !var_1.b.d, global2.x >= global2.x)), -1714f), var_1.b.a);
    let var_3 = 998f;
    return abs(-(~(reverseBits(vec2<i32>(var_2.a.a, var_2.a.a)) ^ vec2<i32>(-46842i, 21015i))));
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> u32 {
    var var_0 = ~vec2<u32>(~(select(u_input.a, 49014u, true) ^ global2.x), max(u_input.c.x, min(~u_input.b.x, ~1u)));
    global0 = array<vec4<bool>, 12>();
    var var_1 = var_0.x;
    var var_2 = ~(-25021i);
    global1 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_3(func_2(Struct_1(2147483647i, 792f, vec2<f32>(152f, 726f), global0[_wgslsmith_index_u32(1u, 12u)], -839f)).b, func_2(Struct_1(arg_1.a.x, -355f, vec2<f32>(641f, -470f), vec4<bool>(global4[_wgslsmith_index_u32(0u, 24u)], true, global3[_wgslsmith_index_u32(u_input.b.x, 15u)], global4[_wgslsmith_index_u32(global2.x, 24u)]), 1412f)), vec4<f32>(_wgslsmith_f_op_f32(-576f + 935f), 1f, _wgslsmith_f_op_f32(1864f - 1170f), 443f)).x, 56858u) ^ global2.x, 15u)];
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 15>();
    var var_0 = -26490i;
    global4 = array<bool, 24>();
    let var_1 = func_4(true, Struct_3(func_1(u_input.b.wwx >> (u_input.b.zxz % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(-1090f - 865f)))), _wgslsmith_mod_vec2_i32(min(_wgslsmith_mult_vec2_i32(vec2<i32>(27838i, -2147483647i) >> (u_input.c % vec2<u32>(32u)), ~vec2<i32>(-38490i, -2147483647i)), -vec2<i32>(1i, 1i)), vec2<i32>(countOneBits(-1i), 2147483647i)), -2147483647i << (_wgslsmith_dot_vec2_u32(u_input.c, _wgslsmith_add_vec2_u32(vec2<u32>(34421u, u_input.b.x), vec2<u32>(var_1, 88899u))) % 32u), _wgslsmith_dot_vec2_u32(~(~u_input.b.xy), min(_wgslsmith_sub_vec2_u32(vec2<u32>(global2.x, u_input.c.x), u_input.c), u_input.b.ww << (u_input.c % vec2<u32>(32u)))) << (u_input.c.x % 32u));
}

