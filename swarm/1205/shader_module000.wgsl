struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = -global0.a.d;
    global0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1089f - -1398f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1055f))), global0.a.b, ~46360i, 0i));
    var var_1 = (_wgslsmith_mult_vec2_i32(min(~vec2<i32>(arg_0, arg_0), -vec2<i32>(2293i, u_input.d.x)), _wgslsmith_mult_vec2_i32(global0.a.b, countOneBits(u_input.d.xx))) >> (vec2<u32>(~(~16357u), _wgslsmith_add_u32(_wgslsmith_add_u32(1u, u_input.a.x), ~u_input.a.x)) % vec2<u32>(32u))) >> (vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(21850u, u_input.c, 1u), u_input.a), firstTrailingBit(vec3<u32>(4294967295u, 23346u, 0u))), 0u << (1u % 32u), ~u_input.b), abs(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a))) % vec2<u32>(32u));
    var var_2 = _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 32472u, u_input.a.x, ~(~u_input.b)), _wgslsmith_mult_vec4_u32(abs(max(vec4<u32>(u_input.a.x, 30329u, u_input.a.x, 4294967295u), vec4<u32>(29323u, u_input.c, 2084u, u_input.a.x))), vec4<u32>(u_input.a.x, 102629u, u_input.a.x, u_input.c) << (~vec4<u32>(12923u, u_input.b, 1u, u_input.a.x) % vec4<u32>(32u)))), _wgslsmith_mult_vec4_u32(reverseBits(abs(vec4<u32>(0u, 4294967295u, u_input.b, 28000u))), abs(~vec4<u32>(5971u, 16030u, 6689u, u_input.c) << (vec4<u32>(u_input.b, u_input.a.x, 4294967295u, u_input.b) % vec4<u32>(32u)))), vec4<u32>(u_input.b, _wgslsmith_dot_vec4_u32((vec4<u32>(u_input.b, u_input.a.x, 84399u, 1u) & vec4<u32>(u_input.b, 0u, u_input.b, u_input.c)) | ~vec4<u32>(105295u, u_input.b, 4294967295u, u_input.a.x), _wgslsmith_mod_vec4_u32(vec4<u32>(42679u, 0u, u_input.b, u_input.c), firstLeadingBit(vec4<u32>(113891u, 4294967295u, u_input.a.x, 44278u)))), u_input.c & ~(~u_input.c), _wgslsmith_mod_u32(~0u, u_input.a.x) | 0u));
    var_2 = countOneBits(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.x, var_2.x, u_input.c, 4294967295u), vec4<u32>(1u, var_2.x, 56532u, 21617u), vec4<u32>(var_2.x, 55323u, var_2.x, var_2.x)))) << (vec4<u32>(_wgslsmith_dot_vec2_u32(var_2.xw, ~firstLeadingBit(var_2.zy)), reverseBits(0u), 0u, 47719u) % vec4<u32>(32u));
    return global0.a.a;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<i32>) -> vec2<u32> {
    global0 = arg_0;
    global0 = Struct_3(Struct_1(true, select(vec2<i32>(2147483647i, 0i), countOneBits(vec2<i32>(arg_0.a.b.x, arg_0.a.b.x) >> (u_input.a.yz % vec2<u32>(32u))), arg_0.a.a && false), _wgslsmith_add_i32(2147483647i, arg_0.a.b.x), _wgslsmith_dot_vec3_i32(min(~u_input.d, vec3<i32>(2147483647i, 41911i, 0i)), u_input.d)));
    var var_0 = !func_3(-59361i);
    var_0 = func_3(u_input.d.x & ~u_input.d.x);
    var var_1 = Struct_1(arg_0.a.a, ~abs(vec2<i32>(global0.a.b.x, _wgslsmith_add_i32(6175i, global0.a.d))), u_input.d.x, firstTrailingBit(2147483647i));
    return _wgslsmith_mod_vec2_u32(u_input.a.zy, u_input.a.xx);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = false;
    var var_1 = select(_wgslsmith_mod_vec2_u32(max(u_input.a.xx, ~(~vec2<u32>(u_input.a.x, u_input.b))), countOneBits(select(min(u_input.a.zy, u_input.a.zx), func_2(Struct_3(Struct_1(true, vec2<i32>(u_input.d.x, global0.a.c), u_input.d.x, global0.a.c)), u_input.d.zx), vec2<bool>(false, false)))), _wgslsmith_div_vec2_u32(reverseBits(u_input.a.yx), vec2<u32>(u_input.c, min(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), u_input.a.xx), 35881u))), select(!vec2<bool>(!var_0, global0.a.c <= -21712i), select(vec2<bool>(var_0, false), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(var_0, true)), !vec2<bool>(global0.a.a, global0.a.a), func_3(u_input.d.x)), any(vec3<bool>(true, false, global0.a.a)) | select(false, false, var_0)), vec2<bool>(true, false)));
    var var_2 = max(-abs(-1i), 0i << (var_1.x % 32u));
    let var_3 = _wgslsmith_div_f32(arg_0.x, 940f);
    var_1 = ~vec2<u32>(0u, firstLeadingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.x, u_input.c, 16275u), _wgslsmith_div_vec3_u32(u_input.a, u_input.a))));
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.x;
    var var_1 = Struct_3(func_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1043f, 277f, 1319f)))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1715f + 1084f) - _wgslsmith_f_op_f32(527f - -590f)), -1342f)));
    var var_2 = -vec4<i32>(u_input.d.x, var_0, _wgslsmith_sub_i32(global0.a.d, 1i), max(~(-34835i), firstTrailingBit(var_1.a.b.x))) ^ ~abs(-min(vec4<i32>(global0.a.d, 0i, 2147483647i, -2147483647i), vec4<i32>(var_0, global0.a.c, -1i, global0.a.b.x)));
    var var_3 = select(vec2<i32>(firstTrailingBit(-15994i), ~1i), vec2<i32>(var_0, u_input.d.x), true);
    var var_4 = vec4<u32>(min(~(~(~u_input.a.x)), ~5626u), firstTrailingBit(func_2(Struct_3(global0.a), select(select(vec2<i32>(var_0, 38673i), vec2<i32>(var_0, var_3.x), vec2<bool>(global0.a.a, true)), global0.a.b, !vec2<bool>(true, global0.a.a))).x), 40600u, ~u_input.c);
    let var_5 = Struct_2(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(2246f, 2374f, 418f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1327f, 1163f), vec2<f32>(-1237f, -199f), vec2<bool>(false, var_1.a.a))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1400f, -642f)), _wgslsmith_div_vec2_f32(vec2<f32>(-268f, 327f), vec2<f32>(686f, -156f))))), _wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(global0.a.c), -var_1.a.d), vec2<i32>(_wgslsmith_add_i32(-var_2.x, abs(2147483647i)), _wgslsmith_mult_i32(var_0, u_input.d.x))), 1u);
    var var_6 = 0i;
    let var_7 = -reverseBits(reverseBits(firstLeadingBit(vec4<i32>(1i, var_1.a.b.x, var_5.a.d, -725i))) << (firstLeadingBit(vec4<u32>(0u, 231u, 25512u, u_input.b)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.yx, var_2.zyy, _wgslsmith_mod_vec3_u32(var_4.wwz, ~var_4.xxy & u_input.a), 8037i, 1368f);
}

