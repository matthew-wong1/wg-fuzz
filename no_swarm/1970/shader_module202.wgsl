struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_3,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 5> = array<Struct_4, 5>(Struct_4(Struct_1(vec3<i32>(2147483647i, -1i, -62649i), i32(-2147483648), vec2<u32>(107009u, 0u), vec3<u32>(21723u, 65087u, 23070u), 375f), 1880f, Struct_3(vec2<i32>(-32936i, i32(-2147483648))), vec2<u32>(27091u, 48732u)), Struct_4(Struct_1(vec3<i32>(2147483647i, 2664i, 2147483647i), 0i, vec2<u32>(3132u, 0u), vec3<u32>(50442u, 10106u, 0u), 124f), 1237f, Struct_3(vec2<i32>(2147483647i, 1i)), vec2<u32>(1u, 37288u)), Struct_4(Struct_1(vec3<i32>(1i, -298i, -12745i), -2378i, vec2<u32>(0u, 5772u), vec3<u32>(40281u, 22915u, 4294967295u), 1460f), -840f, Struct_3(vec2<i32>(13542i, 0i)), vec2<u32>(65179u, 15191u)), Struct_4(Struct_1(vec3<i32>(-14997i, 2147483647i, 404i), i32(-2147483648), vec2<u32>(25371u, 10839u), vec3<u32>(4294967295u, 26971u, 0u), -453f), -333f, Struct_3(vec2<i32>(-4780i, 2147483647i)), vec2<u32>(1569u, 4294967295u)), Struct_4(Struct_1(vec3<i32>(-50293i, 14585i, 41327i), 1i, vec2<u32>(4294967295u, 111108u), vec3<u32>(1376u, 0u, 4294967295u), 1400f), 1212f, Struct_3(vec2<i32>(-1i, 1i)), vec2<u32>(17940u, 5018u)));

var<private> global1: vec4<bool>;

var<private> global2: array<f32, 15>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<i32>) -> i32 {
    global0 = array<Struct_4, 5>();
    var var_0 = !arg_0.x;
    let var_1 = arg_0.x;
    var var_2 = true;
    let var_3 = !(var_1 == !(true || (u_input.a > u_input.a)));
    return u_input.a & -max(-19485i, -(10792i >> (u_input.d.x % 32u)));
}

fn func_3(arg_0: Struct_3) -> vec4<i32> {
    let var_0 = 1550f;
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0, 1489f), vec2<f32>(var_0, 478f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 950f) + vec2<f32>(2049f, 138f))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-981f, 258f))))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-376f - 1112f), global2[_wgslsmith_index_u32(18869u, 15u)])), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-412f, var_0), vec2<f32>(var_0, global2[_wgslsmith_index_u32(4719u, 15u)]))))))));
    var var_2 = ~(~(-5943i)) ^ arg_0.a.x;
    global0 = array<Struct_4, 5>();
    global2 = array<f32, 15>();
    return -firstTrailingBit(vec4<i32>(-38731i, -16554i, u_input.a, firstLeadingBit(2147483647i)));
}

fn func_1() -> vec4<bool> {
    var var_0 = vec4<i32>(-49430i, -(u_input.a ^ 1i), u_input.c.x, ~(-(u_input.a << (22803u % 32u)) & 7044i));
    var var_1 = Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(func_2(select(vec3<bool>(global1.x, false, true), vec3<bool>(global1.x, true, global1.x), global1.x), vec4<i32>(-48272i, -2147483647i, u_input.a, -1i) | vec4<i32>(var_0.x, var_0.x, -22250i, -52165i)), -2147483647i & var_0.x, var_0.x), vec3<i32>(-1i) * -(var_0.wxx >> (u_input.d.ywy % vec3<u32>(32u)))), var_0.x, vec2<u32>(u_input.b, 47575u), countOneBits(u_input.d.wzx), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(~27766u, 15u)], global2[_wgslsmith_index_u32(~(~4294967295u), 15u)])), _wgslsmith_div_f32(533f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(7881u, 15u)])))));
    var_0 = func_3(Struct_3(_wgslsmith_div_vec2_i32(reverseBits(vec2<i32>(-1i, -2147483647i)), ~u_input.c))) & -min(vec4<i32>(0i, var_0.x, var_1.a.x, var_0.x) ^ vec4<i32>(-1i, -1i, var_1.b, 40179i), vec4<i32>(-1i, 2147483647i, ~(-48152i), 0i));
    var_1 = Struct_1(var_1.a, ~u_input.a, select(vec2<u32>(~29840u, var_1.c.x), _wgslsmith_mod_vec2_u32(vec2<u32>(15077u, 13187u) ^ var_1.d.zz, ~vec2<u32>(39560u, u_input.b)) ^ _wgslsmith_mult_vec2_u32(var_1.d.zx >> (var_1.c % vec2<u32>(32u)), ~vec2<u32>(var_1.c.x, 4294967295u)), !(!(!global1.ww))), ~var_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.e)) - 1f));
    global2 = array<f32, 15>();
    return vec4<bool>(any(global1.wz), (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.e + -137f) - _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(40018u, 15u)]))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(249f - -476f))) | true, !(!all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, global1.x, true), false))), !global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(-1i, u_input.a, 11228i)), vec3<i32>(_wgslsmith_dot_vec3_i32(max(vec3<i32>(u_input.a, 9986i, u_input.a), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), vec3<i32>(u_input.a, u_input.a, u_input.c.x)), _wgslsmith_clamp_i32(-68091i, 2147483647i, u_input.c.x), -(~(-25413i)))), ~(-2147483647i), _wgslsmith_div_vec2_u32(u_input.d.zy, u_input.d.zx >> (vec2<u32>(_wgslsmith_sub_u32(u_input.b, u_input.b), 3428u) % vec2<u32>(32u))), ~(~firstTrailingBit(select(u_input.d.zxw, u_input.d.yyw, global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(16613u, 15u)])));
    global1 = func_1();
    var var_1 = Struct_3(-_wgslsmith_mult_vec2_i32(max(u_input.c, ~u_input.c), u_input.c));
    var_0 = Struct_1(vec3<i32>(func_3(Struct_3(func_3(Struct_3(vec2<i32>(var_1.a.x, var_0.b))).zy)).x, -2147483647i, var_1.a.x), -(~_wgslsmith_mult_i32(u_input.a << (u_input.b % 32u), firstTrailingBit(-2147483647i))), ~u_input.d.zx, _wgslsmith_add_vec3_u32(vec3<u32>(~var_0.d.x, _wgslsmith_div_u32(_wgslsmith_add_u32(10835u, u_input.b), ~u_input.d.x), _wgslsmith_sub_u32(~var_0.c.x, _wgslsmith_dot_vec3_u32(var_0.d, vec3<u32>(13468u, var_0.d.x, 26898u)))), vec3<u32>(9713u, ~17773u >> (~u_input.b % 32u), ~abs(var_0.c.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1124f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) * _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(u_input.d.x, 15u)], 267f)))))));
    let var_2 = (abs(firstLeadingBit(min(45054u, u_input.b))) ^ ~max(~4294967295u, ~4294967295u)) | 6225u;
    let x = u_input.a;
    s_output = StorageBuffer(abs(0u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(429f, -1159f, 826f, var_0.e)))))) * vec4<f32>(_wgslsmith_div_f32(-734f, var_0.e), global2[_wgslsmith_index_u32(11348u, 15u)], global2[_wgslsmith_index_u32(4294967295u, 15u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.e) + -1639f))), _wgslsmith_f_op_f32(floor(var_0.e)));
}

