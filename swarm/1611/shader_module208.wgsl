struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<vec4<u32>, 14>;

var<private> global2: array<Struct_2, 7>;

var<private> global3: array<Struct_1, 12>;

var<private> global4: array<Struct_3, 7>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_3) -> vec3<i32> {
    let var_0 = !(~_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a.x, 2147483647i, u_input.c.x), firstLeadingBit(arg_2.a.zwx)) == 24657i);
    return vec3<i32>(firstTrailingBit(abs(_wgslsmith_sub_i32(arg_2.a.x, _wgslsmith_sub_i32(arg_2.a.x, 8416i)))), u_input.c.x & ~(-firstLeadingBit(1i)), abs(-1i));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_3(reverseBits(arg_0.a), _wgslsmith_f_op_f32(f32(-1f) * -724f));
    var var_1 = global4[_wgslsmith_index_u32(7743u ^ ~(~(~_wgslsmith_clamp_u32(1u, 40509u, 4294967295u))), 7u)];
    var var_2 = ~vec3<i32>(-_wgslsmith_mod_i32(var_1.a.x, 5337i), -func_2(global1[_wgslsmith_index_u32(19690u, 14u)], global0.x, var_0).x, _wgslsmith_sub_i32(countOneBits(0i), _wgslsmith_clamp_i32(var_1.a.x, -2147483647i, -6602i))) >> (vec3<u32>(20936u, ~(firstTrailingBit(9702u) | 1u), ~27940u) % vec3<u32>(32u));
    var var_3 = global3[_wgslsmith_index_u32(35110u << (1u % 32u), 12u)];
    global0 = vec2<bool>(select(false, any(vec4<bool>(global0.x, any(vec3<bool>(false, false, global0.x)), false, true)), false), global0.x);
    return Struct_2(-8589i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    var var_0 = Struct_2(arg_1.a);
    global0 = select(vec2<bool>(true, true), !vec2<bool>(all(vec2<bool>(global0.x, false)) || true, global0.x), true);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-516f, _wgslsmith_f_op_f32(floor(-138f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-379f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)), arg_0.b >= ~31202u)), arg_0.c, true)));
    let var_2 = arg_1.a;
    let var_3 = _wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(2183i, -7724i << (arg_0.b % 32u), min(_wgslsmith_mult_i32(arg_0.a.x, 36120i), arg_0.a.x), 1i) << (vec4<u32>(~_wgslsmith_sub_u32(arg_0.b, arg_0.b), ~arg_0.b, abs(arg_0.b) & (arg_0.b | 0u), max(1u, ~17395u)) % vec4<u32>(32u)));
    return Struct_2(~_wgslsmith_mod_i32(arg_0.a.x, var_2));
}

fn func_1() -> f32 {
    let var_0 = Struct_1(_wgslsmith_mult_vec4_i32(~(~vec4<i32>(u_input.b, 2147483647i, u_input.b, -1064i)), select(_wgslsmith_mod_vec4_i32(u_input.a, u_input.a), -vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, u_input.c.x), global0.x && false)) ^ -_wgslsmith_mod_vec4_i32(-u_input.a, u_input.a), 3397u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -484f)) + _wgslsmith_f_op_f32(ceil(-143f)))), 1746f);
    let var_1 = func_4(Struct_1(vec4<i32>(-1i, countOneBits(~u_input.b), ~(-41675i), 1i), 4294967295u, _wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.c)) * -792f))), func_3(Struct_3((var_0.a << (vec4<u32>(var_0.b, 12035u, var_0.b, 50540u) % vec4<u32>(32u))) >> (vec4<u32>(0u, 0u, var_0.b, 7603u) % vec4<u32>(32u)), var_0.c), func_2(~global1[_wgslsmith_index_u32(var_0.b, 14u)] >> (global1[_wgslsmith_index_u32(var_0.b, 14u)] % vec4<u32>(32u)), true, Struct_3(u_input.a, 768f))));
    let var_2 = u_input.a.zyz;
    let var_3 = var_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1192f))), _wgslsmith_f_op_f32(trunc(-1164f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(158f)) - _wgslsmith_f_op_f32(-var_0.d))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(u_input.c);
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-670f, -860f) * 206f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(412f - -551f), _wgslsmith_f_op_f32(985f + 780f))))) <= -953f));
    global1 = array<vec4<u32>, 14>();
    let var_2 = _wgslsmith_clamp_i32(12129i, 34371i, u_input.c.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(922f - -1693f), _wgslsmith_f_op_f32(566f + -721f), _wgslsmith_f_op_f32(f32(-1f) * -885f), _wgslsmith_f_op_f32(f32(-1f) * -633f))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-413f, 208f), _wgslsmith_f_op_f32(-622f + -1785f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1303f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-957f, 832f, false)) - _wgslsmith_f_op_f32(sign(-479f))), 123f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -397f), 1000f))), 1189f));
    let var_4 = ~abs(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, 1u), ~1934u));
    global2 = array<Struct_2, 7>();
    var var_5 = global4[_wgslsmith_index_u32(3966u, 7u)];
    var var_6 = _wgslsmith_f_op_vec4_f32(-var_3);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, ~var_4, firstTrailingBit(var_4)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.zy - vec2<f32>(356f, var_5.b))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(var_3.zw)))))));
}

