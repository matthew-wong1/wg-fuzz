struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(false, false, -764f), Struct_1(false, true, 1000f), Struct_1(false, false, -1522f), Struct_1(true, false, -462f), Struct_1(true, true, 734f), Struct_1(false, false, -1583f), Struct_1(true, false, -890f), Struct_1(false, false, -433f), Struct_1(false, true, 339f), Struct_1(false, false, 1871f), Struct_1(true, false, -1500f), Struct_1(true, false, -758f), Struct_1(false, false, 1000f), Struct_1(true, true, -1228f), Struct_1(true, true, -824f));

var<private> global2: vec2<bool>;

var<private> global3: f32 = 314f;

var<private> global4: vec3<i32> = vec3<i32>(32729i, -10787i, -30546i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> vec4<f32> {
    let var_0 = Struct_1(!(!(!(false & global2.x))), global2.x, -645f);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(trunc(1146f)), var_0.c);
    let var_2 = _wgslsmith_mult_i32(-1i, ~_wgslsmith_mod_i32(global4.x, -global4.x)) > 0i;
    global1 = array<Struct_1, 15>();
    var var_3 = firstTrailingBit(u_input.b.x);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1685f, 893f, var_1.x))))))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = (-select(global4.zx, ~vec2<i32>(-2147483647i, 0i), vec2<bool>(true, true)) & firstTrailingBit(_wgslsmith_mod_vec2_i32(~u_input.d, u_input.d))) & -vec2<i32>(i32(-1i) * -global4.x, u_input.c);
    let var_1 = arg_2;
    global4 = min(vec3<i32>(_wgslsmith_mod_i32(select(0i, -19075i, arg_2.a), ~var_0.x), _wgslsmith_mult_i32(~(~var_0.x), ~var_0.x), abs(var_0.x)), _wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(global4.x << (arg_0.c % 32u), 1i, u_input.c)), (countOneBits(vec3<i32>(var_0.x, 16149i, 2147483647i)) | -vec3<i32>(-2147483647i, global4.x, 2147483647i)) | ~_wgslsmith_mult_vec3_i32(vec3<i32>(-42244i, u_input.a, u_input.a), vec3<i32>(33940i, var_0.x, var_0.x)), -vec3<i32>(~79843i, var_0.x, abs(u_input.c))));
    let var_2 = 1u;
    global2 = select(select(select(select(select(vec2<bool>(global2.x, arg_1.b), vec2<bool>(true, arg_2.a), vec2<bool>(arg_3.a, true)), vec2<bool>(true, true), false), !vec2<bool>(false, arg_3.a), !select(vec2<bool>(arg_3.b, true), vec2<bool>(global2.x, false), arg_2.b)), select(vec2<bool>(true, false), !select(vec2<bool>(var_1.b, global2.x), vec2<bool>(true, arg_3.a), false), false), !(!(!vec2<bool>(arg_1.a, false)))), vec2<bool>(all(vec2<bool>(all(vec2<bool>(arg_1.b, arg_2.b)), any(vec2<bool>(arg_1.a, var_1.b)))), (-983f < var_1.c) == true), select(any(vec4<bool>(false, false, false, arg_2.b)) | arg_1.b, true, !select(var_1.b, true, var_1.a) == all(select(vec2<bool>(arg_1.a, arg_1.b), vec2<bool>(true, arg_2.a), global2.x))));
    return false;
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: f32, arg_3: vec4<bool>) -> u32 {
    global0 = 1u;
    let var_0 = -(vec2<i32>(global4.x >> (_wgslsmith_div_u32(13405u, u_input.b.x) % 32u), u_input.c) | vec2<i32>(1i >> ((u_input.b.x ^ 52311u) % 32u), u_input.c));
    var var_1 = ((global4.zx | ~countOneBits(vec2<i32>(-2147483647i, u_input.a))) | var_0) ^ _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, max(-1i, u_input.a)), abs(~vec2<i32>(var_0.x, 48340i)), vec2<i32>(-29894i, global4.x) ^ vec2<i32>(var_0.x, 1i)), firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 118i), var_0, global4.xy) & reverseBits(vec2<i32>(0i, u_input.c))));
    var var_2 = 276f;
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-408f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -375f), _wgslsmith_f_op_f32(ceil(1374f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + 190f) - -2029f), arg_2) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(692f + 795f), arg_2, _wgslsmith_f_op_f32(min(arg_2, -760f)), _wgslsmith_f_op_f32(-1088f * 734f)) - vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(sign(647f)), _wgslsmith_f_op_f32(round(arg_2)), arg_2))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1226f) + _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_vec4_f32(func_2()).x, 261f, arg_2)));
    return u_input.b.x;
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(-1417f, 892f, _wgslsmith_f_op_f32(select(863f, 1f, any(vec3<bool>(global2.x, global2.x, global2.x)))), 1304f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(559f, -1405f, _wgslsmith_f_op_f32(select(-125f, -622f, global2.x)), _wgslsmith_f_op_vec4_f32(func_2()).x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2()))))));
    global0 = 1u;
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    let var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(-18158i, _wgslsmith_mod_i32(u_input.c << (u_input.b.x % 32u), 36529i >> (u_input.b.x % 32u)) << (4294967295u % 32u)), u_input.d);
    global4 = max(vec3<i32>(reverseBits(1i), 23395i, global4.x), ~(~vec3<i32>(_wgslsmith_sub_i32(u_input.a, -5845i), u_input.d.x >> (u_input.b.x % 32u), firstLeadingBit(-12348i))));
    return global1[_wgslsmith_index_u32(1u >> (func_4(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(func_3(Struct_2(vec4<f32>(var_0.x, 1160f, 868f, -511f), vec2<f32>(-155f, var_1), 69884u), Struct_1(true, global2.x, var_0.x), Struct_1(false, true, 3189f), Struct_1(global2.x, arg_0, var_1)), true)), false, -200f, select(select(select(vec4<bool>(true, true, false, arg_0), vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(true, false, arg_0, true)), select(vec4<bool>(global2.x, true, true, global2.x), vec4<bool>(false, global2.x, arg_0, global2.x), vec4<bool>(global2.x, global2.x, true, global2.x)), vec4<bool>(global2.x, arg_0, true, true)), !vec4<bool>(global2.x, arg_0, arg_0, true), arg_0)) % 32u), 15u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: bool) -> u32 {
    global1 = array<Struct_1, 15>();
    global3 = func_1(all(select(select(vec4<bool>(arg_0.b, true, true, false), vec4<bool>(false, false, true, false), true), select(select(vec4<bool>(global2.x, false, arg_3, false), vec4<bool>(arg_3, true, false, false), vec4<bool>(arg_1.b, false, global2.x, arg_0.b)), select(vec4<bool>(global2.x, arg_1.a, arg_3, arg_0.b), vec4<bool>(arg_1.a, arg_0.a, false, false), global2.x), arg_1.a & true), !select(vec4<bool>(global2.x, global2.x, true, arg_0.a), vec4<bool>(arg_0.a, global2.x, true, true), true)))).c;
    let var_0 = Struct_1(true, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.x, 1000f, arg_0.a)) * arg_2.x))));
    var var_1 = all(vec2<bool>(var_0.b, true));
    var var_2 = arg_2.zz;
    return _wgslsmith_dot_vec2_u32(u_input.b.ww, max(min(~vec2<u32>(u_input.b.x, u_input.b.x), ~vec2<u32>(u_input.b.x, 4294967295u) & u_input.b.xw), u_input.b.yx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * -1i;
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), vec2<u32>(u_input.b.x, 4294967295u)), firstLeadingBit(u_input.b.x ^ 1u)), min(firstLeadingBit(u_input.b.x), u_input.b.x), 1u, abs(4294967295u)), vec4<u32>(4294967295u, ~_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_mult_u32(1u, 4294967295u)), _wgslsmith_div_u32(4294967295u, u_input.b.x), ~func_5(func_1(global2.x), func_1(false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-852f, 475f, 381f)), global2.x)));
    let var_2 = true;
    var var_3 = func_1(func_1(1u <= _wgslsmith_sub_u32(~var_1, abs(u_input.b.x))).a);
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_3.c, _wgslsmith_f_op_f32(-2063f - -470f))))));
    let var_4 = select(!vec3<bool>(global2.x, (-25585i != u_input.c) | var_3.a, false), vec3<bool>(false, false, false), vec3<bool>(true, var_2, !(!(!global2.x))));
    global3 = 309f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.c, 187f) + vec2<f32>(1043f, var_3.c)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.c, var_3.c) + vec2<f32>(-691f, var_3.c)))))), vec2<f32>(_wgslsmith_f_op_f32(var_3.c - var_3.c), -1449f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2701f, 844f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.c, var_3.c))))), u_input.c);
}

