struct Struct_1 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: i32,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec3<i32>(-15704i, 25521i, 0i), false), Struct_1(vec3<i32>(10644i, 2147483647i, i32(-2147483648)), false));

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<i32>(-1i, -1i, i32(-2147483648)), true), 2147483647i);

var<private> global2: array<Struct_5, 17>;

var<private> global3: array<f32, 10> = array<f32, 10>(732f, -2035f, 276f, 359f, -496f, -1000f, -1000f, 429f, 300f, -363f);

var<private> global4: array<f32, 31> = array<f32, 31>(396f, 1922f, -2111f, -1818f, -1000f, -1161f, -409f, -1424f, 2130f, 289f, 153f, -880f, -142f, -879f, 911f, 547f, 307f, 316f, -394f, -1008f, 1393f, -481f, -1106f, -332f, 860f, 720f, -986f, -149f, -844f, 1114f, 204f);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    return _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(4294967295u, 10u)]));
}

fn func_2(arg_0: bool, arg_1: bool) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(u_input.a.xyz, u_input.a.zzz), ~u_input.a.zwy)))));
    var var_1 = -vec4<i32>(~14144i, -13226i, ~(~global1.b) ^ select(-2147483647i, global1.b, any(vec2<bool>(arg_0, true))), ~_wgslsmith_sub_i32(2147483647i, 2147483647i));
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    var var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_add_vec3_i32(var_1.zwx, vec3<i32>(-1i, global1.a.a.x, global1.b)), true), _wgslsmith_div_i32(~countOneBits(global1.b), -(~var_1.x))), global0[_wgslsmith_index_u32(4294967295u, 2u)], global1.b, !(!vec2<bool>(global1.a.b, all(vec4<bool>(arg_1, false, global1.a.b, arg_1)))), Struct_1(var_1.wxw, arg_1));
    return select(!select(vec3<bool>(global1.a.b, any(vec3<bool>(false, var_2.b.b, global1.a.b)), true), vec3<bool>(false, var_2.e.b, true), false), select(!vec3<bool>(!arg_0, false, var_1.x < -16570i), vec3<bool>(false, global1.a.b, global1.a.b), vec3<bool>(true, any(select(vec4<bool>(false, arg_1, arg_1, true), vec4<bool>(true, true, arg_0, true), true)), false | !global1.a.b)), !select(vec3<bool>(!arg_1, !var_2.b.b, false), vec3<bool>(false | arg_0, true, !arg_1), vec3<bool>(!arg_1, all(vec4<bool>(arg_1, arg_0, false, true)), all(vec2<bool>(false, false)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<u32>) -> Struct_3 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(arg_1.x, 10u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(748f * global4[_wgslsmith_index_u32(44734u, 31u)]) * _wgslsmith_f_op_f32(461f - global3[_wgslsmith_index_u32(u_input.b, 10u)])), global3[_wgslsmith_index_u32(~u_input.a.x, 10u)]))), u_input.a.x, -22494i);
    var var_1 = u_input.a;
    let var_2 = _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(_wgslsmith_clamp_u32(1u, ~75220u, var_1.x), _wgslsmith_dot_vec2_u32(vec2<u32>(12122u, arg_1.x), max(vec2<u32>(0u, arg_1.x), var_1.zy)), var_0.b, _wgslsmith_add_u32(~arg_1.x, countOneBits(u_input.a.x)))), vec4<u32>(684u, _wgslsmith_div_u32(4294967295u, _wgslsmith_sub_u32(619u, var_0.b)), _wgslsmith_div_u32(_wgslsmith_add_u32(countOneBits(0u), ~4294967295u), 4294967295u), 51160u));
    let var_3 = firstTrailingBit(u_input.a.x);
    global3 = array<f32, 10>();
    return Struct_3(Struct_2(Struct_1(vec3<i32>(-24776i, -32236i, global1.b), global1.a.b && func_2(global1.a.b, arg_0.x).x), var_0.c), Struct_1(~(abs(vec3<i32>(-32841i, -5926i, 235i)) | global1.a.a), true), _wgslsmith_mult_i32(var_0.c, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(global1.a.a, firstTrailingBit(vec3<i32>(var_0.c, -1i, -1i))), 18942i)), !func_2(true, (false || global1.a.b) || true).yx, Struct_1(global1.a.a, global1.a.b));
}

fn func_1() -> i32 {
    let var_0 = Struct_1(firstTrailingBit(global1.a.a), global1.a.b);
    var var_1 = ~(~53653u);
    let var_2 = _wgslsmith_dot_vec3_u32(~u_input.a.wyz, ~(~(~(u_input.a.xww >> (vec3<u32>(u_input.a.x, 1u, u_input.b) % vec3<u32>(32u))))));
    global3 = array<f32, 10>();
    let var_3 = func_4(select(vec3<bool>(all(!vec2<bool>(global1.a.b, global1.a.b)), _wgslsmith_dot_vec2_i32(var_0.a.xx, var_0.a.zz) >= _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, var_0.a.x, global1.b, global1.a.a.x), vec4<i32>(-633i, global1.b, global1.b, global1.a.a.x)), 4294967295u <= var_2), !select(vec3<bool>(true, global1.a.b, var_0.b), vec3<bool>(true, global1.a.b, var_0.b), any(vec3<bool>(true, true, var_0.b))), func_2(global1.a.b, true)), u_input.a.wz);
    return var_3.e.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 31>();
    var var_0 = max(global1.a.a.x, func_1());
    let var_1 = ~18429i;
    let var_2 = global2[_wgslsmith_index_u32(abs(u_input.b), 17u)];
    let var_3 = select(!vec4<bool>(select(any(vec4<bool>(global1.a.b, global1.a.b, false, global1.a.b)), global1.a.b, any(vec3<bool>(global1.a.b, false, false))), !(global1.a.b || true), (true && global1.a.b) & (global1.a.b | false), any(!vec2<bool>(global1.a.b, global1.a.b))), select(select(!(!vec4<bool>(global1.a.b, false, global1.a.b, global1.a.b)), select(vec4<bool>(true, true, false, global1.a.b), vec4<bool>(true, false, global1.a.b, global1.a.b), any(vec3<bool>(global1.a.b, global1.a.b, global1.a.b))), select(select(vec4<bool>(global1.a.b, false, global1.a.b, true), vec4<bool>(global1.a.b, false, global1.a.b, false), false), select(vec4<bool>(true, global1.a.b, global1.a.b, global1.a.b), vec4<bool>(global1.a.b, global1.a.b, false, global1.a.b), global1.a.b), true)), select(vec4<bool>(true, true, false, any(vec2<bool>(false, false))), select(!vec4<bool>(global1.a.b, false, global1.a.b, global1.a.b), !vec4<bool>(global1.a.b, false, global1.a.b, true), !global1.a.b), true), select(!select(vec4<bool>(true, global1.a.b, global1.a.b, false), vec4<bool>(global1.a.b, global1.a.b, false, global1.a.b), vec4<bool>(true, false, global1.a.b, global1.a.b)), select(select(vec4<bool>(global1.a.b, global1.a.b, false, global1.a.b), vec4<bool>(true, true, global1.a.b, global1.a.b), global1.a.b), !vec4<bool>(global1.a.b, global1.a.b, false, true), vec4<bool>(global1.a.b, global1.a.b, global1.a.b, global1.a.b)), !select(vec4<bool>(true, global1.a.b, global1.a.b, global1.a.b), vec4<bool>(global1.a.b, global1.a.b, global1.a.b, true), vec4<bool>(false, true, false, false)))), false);
    var var_4 = func_4(var_3.wyw, reverseBits(select(u_input.a.zw, _wgslsmith_clamp_vec2_u32(~u_input.a.zw, vec2<u32>(u_input.a.x, 1u), u_input.a.yw), select(func_2(var_3.x, true).xy, !vec2<bool>(var_3.x, true), var_2.b.a > global4[_wgslsmith_index_u32(85070u, 31u)]))));
    let var_5 = false;
    var var_6 = func_4(func_2(select(!(var_2.b.c <= global1.a.a.x), true, global4[_wgslsmith_index_u32(77490u, 31u)] <= _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.b, 10u)] - 2109f)), var_3.x), ~u_input.a.zw);
    var_0 = -(16603i >> (~(~0u) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(min(reverseBits(firstLeadingBit(0u)), ((0u & var_2.b.b) >> (~var_2.b.b % 32u)) << (~var_2.b.b % 32u)), 0u, u_input.a.xwy, 1884i, max(abs(23784u) << (firstLeadingBit(var_2.b.b) % 32u), _wgslsmith_sub_u32(~(~var_2.b.b), 33037u)));
}

