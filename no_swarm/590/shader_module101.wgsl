struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: bool,
    d: u32,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_3;

var<private> global2: bool = true;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec4<bool> {
    return !vec4<bool>(any(vec3<bool>(false, false, true)) | (global3.d.x || true), false, firstTrailingBit(1u) == 0u, true);
}

fn func_2(arg_0: vec4<u32>) -> bool {
    global3 = Struct_1(-(~(i32(-1i) * -23080i)) << (_wgslsmith_div_u32(max(~global1.d, _wgslsmith_mod_u32(arg_0.x, 1u)), max(_wgslsmith_mod_u32(2295u, arg_0.x), 100131u)) % 32u), true, func_3(), global3.c.xyx);
    global3 = Struct_1(1i, global1.c, global3.c, global3.d);
    var var_0 = global1.c;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(262f, -251f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(546f))))) - -1155f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-808f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1368f)) + -1000f))));
    var var_2 = Struct_5(var_1, global1.d, countOneBits(reverseBits(global0.x)), Struct_1(global1.a.x, !(!all(global3.d)), !(!global3.c), !(!(!vec3<bool>(true, true, global1.c)))), countOneBits(~firstTrailingBit(-vec4<i32>(global3.a, 2147483647i, global1.a.x, 86432i))));
    return global3.c.x;
}

fn func_1(arg_0: bool) -> Struct_3 {
    let var_0 = global3.a;
    global3 = Struct_1(-_wgslsmith_mult_i32(~global1.a.x, 44120i), !func_2(vec4<u32>(4294967295u, 24635u, ~24942u, global0.x)), global3.c, global3.d);
    global1 = Struct_3((reverseBits(select(u_input.a, vec2<i32>(u_input.a.x, -32816i), global3.b)) & (u_input.a & _wgslsmith_div_vec2_i32(vec2<i32>(global1.b.x, -46498i), vec2<i32>(69141i, 4011i)))) & vec2<i32>(-1i, -70452i), global1.b, true, 1u);
    let var_1 = vec2<u32>(u_input.c.x, _wgslsmith_div_u32(global1.d, u_input.b));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(225f, 1108f, -104f, -1587f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-386f, -991f, -341f, 272f) * vec4<f32>(-1410f, -202f, -184f, 503f)))))));
    return Struct_3(vec2<i32>(global3.a, _wgslsmith_dot_vec2_i32(global1.a, countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(-10943i, u_input.a.x), u_input.a)))), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, -global3.a), global1.b), global1.c, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, global1.d, var_1.x, u_input.d), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, 62546u, var_1.x, 4294967295u), vec4<u32>(var_1.x, 1u, 4294967295u, 76598u), vec4<u32>(72007u, 1u, 47507u, 74141u))), vec4<u32>(10516u, max(global0.x, 1u), _wgslsmith_sub_u32(global1.d, 61385u), ~14325u)) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d, 50011u, 103588u, u_input.b), _wgslsmith_add_vec4_u32(vec4<u32>(global0.x, 4294967295u, 3528u, var_1.x), reverseBits(vec4<u32>(37608u, 4294967295u, 30248u, u_input.c.x)))) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global1.c);
    var_0 = func_1(global3.c.x);
    var var_1 = u_input.b;
    let var_2 = -706f;
    var var_3 = firstLeadingBit(_wgslsmith_div_i32(global3.a | 0i, -var_0.b.x)) & -var_0.b.x;
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-744f, var_2, var_2)))))));
    let var_5 = !global3.c;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.c, u_input.c)), 27129u)), countOneBits(~vec3<i32>(2147483647i, max(-2147483647i, u_input.a.x), -67917i)), _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(var_0.a.x, global3.a, -23174i), ~vec3<i32>(global1.b.x, u_input.a.x, u_input.a.x), vec3<i32>(global1.a.x, -28813i, global1.b.x) | vec3<i32>(-42158i, 0i, global1.b.x)) >> (vec3<u32>(max(var_0.d, 78558u), 1u, 0u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.a.x, 58670i) & vec3<i32>(21025i, global1.a.x, var_0.b.x), min(vec3<i32>(global1.b.x, global3.a, u_input.a.x), vec3<i32>(-1i, var_0.b.x, global3.a))) << (u_input.c % vec3<u32>(32u)), ~max(~vec3<i32>(var_0.a.x, -14423i, 2147483647i), ~vec3<i32>(-18545i, 33396i, var_0.b.x))), 634f);
}

