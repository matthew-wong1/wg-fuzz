struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(0u, -414f, vec3<i32>(-51363i, i32(-2147483648), -25524i), false), Struct_1(35245u, -160f, vec3<i32>(46234i, 2147483647i, -37166i), false), Struct_1(1u, 278f, vec3<i32>(13728i, 0i, -20880i), false), Struct_1(0u, 1184f, vec3<i32>(37874i, 6163i, -63569i), false), Struct_1(4246u, -1000f, vec3<i32>(0i, 2147483647i, -1i), false));

var<private> global1: array<Struct_1, 17>;

var<private> global2: array<Struct_1, 29>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_1(u_input.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-247f + _wgslsmith_f_op_f32(sign(1589f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1242f * _wgslsmith_f_op_f32(1014f - 693f)))), u_input.c.zzx, false);
    let var_1 = -var_0.c;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.b, 176f), vec2<f32>(var_0.b, 2319f))))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.b, 803f), vec2<f32>(1000f, -595f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1447f, -1305f))), vec2<f32>(_wgslsmith_f_op_f32(var_0.b - 1000f), _wgslsmith_f_op_f32(trunc(-1271f))), vec2<bool>(true, var_0.d))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-477f, 2453f)))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -464f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1804f))), var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.b)) * -1063f));
    var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-175f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2356f + var_0.b), var_2.x))), vec2<f32>(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(f32(-1f) * -762f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b + 232f) - _wgslsmith_f_op_f32(f32(-1f) * -2076f)))))));
    return vec3<u32>(~(~var_0.a), 0u, var_0.a);
}

fn func_2() -> vec3<u32> {
    var var_0 = vec2<u32>(~u_input.d ^ 21975u, 1u);
    var var_1 = ~_wgslsmith_mod_vec3_u32(min(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, var_0.x, 4294967295u), vec3<u32>(u_input.d, 113680u, 33923u)), vec3<u32>(~49970u, ~u_input.d, ~var_0.x)), select(_wgslsmith_clamp_vec3_u32(min(vec3<u32>(4294967295u, 49144u, var_0.x), vec3<u32>(var_0.x, 3406u, var_0.x)), ~vec3<u32>(var_0.x, u_input.d, 1u), ~vec3<u32>(0u, u_input.d, 1u)), select(vec3<u32>(var_0.x, u_input.d, u_input.d), vec3<u32>(var_0.x, 0u, var_0.x), vec3<bool>(false, true, false)) << (func_3() % vec3<u32>(32u)), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), vec3<bool>(false, false, true), select(true, true, true))));
    let var_2 = vec4<i32>(-1i) * -u_input.c;
    let var_3 = true;
    var_0 = vec2<u32>(21600u, ~var_0.x);
    return vec3<u32>(var_1.x, ~(~0u), ~_wgslsmith_mod_u32(countOneBits(0u), u_input.d ^ var_0.x)) << (vec3<u32>(0u, 6988u, _wgslsmith_dot_vec4_u32(select(abs(vec4<u32>(4294967295u, var_0.x, u_input.d, var_0.x)), select(vec4<u32>(1u, var_1.x, var_0.x, 1u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 30151u), var_3), vec4<bool>(var_3, true, var_3, var_3)), firstTrailingBit(vec4<u32>(52521u, 5597u, 1u, var_1.x)))) % vec3<u32>(32u));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: f32, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_dot_vec3_u32(~(~(vec3<u32>(u_input.d, u_input.d, u_input.d) & vec3<u32>(u_input.d, u_input.d, u_input.d))), vec3<u32>(6623u, abs(u_input.d) ^ 0u, ~_wgslsmith_clamp_u32(32839u, u_input.d, u_input.d))), -1323f, _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.b, 55784i, arg_3), countOneBits(vec3<i32>(u_input.a, 40713i, arg_1.x))), -u_input.c.xzw | arg_1, ~(~vec3<i32>(u_input.a, 1i, arg_3))), any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), select(vec2<bool>(false, false), vec2<bool>(false, true), true), false)) == !(true | select(true, false, true)));
    global1 = array<Struct_1, 17>();
    var var_1 = -_wgslsmith_mult_vec3_i32(~vec3<i32>(-3062i, var_0.c.x, -1i), arg_1);
    let var_2 = ~vec2<i32>(abs(arg_1.x), arg_3);
    global1 = array<Struct_1, 17>();
    return Struct_1(0u, _wgslsmith_f_op_f32(exp2(arg_0.x)), arg_1, any(select(select(select(vec4<bool>(true, var_0.d, false, false), vec4<bool>(false, false, true, true), var_0.d), !vec4<bool>(var_0.d, true, var_0.d, true), var_0.d), select(select(vec4<bool>(true, var_0.d, var_0.d, var_0.d), vec4<bool>(true, var_0.d, var_0.d, var_0.d), vec4<bool>(false, true, var_0.d, var_0.d)), vec4<bool>(true, var_0.d, false, false), !vec4<bool>(var_0.d, var_0.d, var_0.d, var_0.d)), !select(vec4<bool>(var_0.d, var_0.d, true, var_0.d), vec4<bool>(true, true, var_0.d, var_0.d), var_0.d))));
}

fn func_1(arg_0: vec2<bool>) -> vec3<i32> {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(273f, 1000f))))), u_input.c.zxw >> (_wgslsmith_mult_vec3_u32(min(~vec3<u32>(u_input.d, 87929u, 1u), vec3<u32>(30102u, u_input.d, 4294967295u)), func_2()) % vec3<u32>(32u)), -903f, ~(~u_input.c.x));
    let var_1 = _wgslsmith_f_op_f32(-var_0.b);
    global2 = array<Struct_1, 29>();
    var var_2 = select(vec3<bool>(any(select(!vec3<bool>(arg_0.x, arg_0.x, true), vec3<bool>(arg_0.x, true, arg_0.x), !vec3<bool>(true, true, arg_0.x))), var_0.d, false), select(select(vec3<bool>(false == arg_0.x, all(vec4<bool>(var_0.d, false, var_0.d, arg_0.x)), false), !select(vec3<bool>(var_0.d, true, var_0.d), vec3<bool>(true, false, arg_0.x), false), false), vec3<bool>(true, true, true), false), func_4(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1156f, var_1) + vec2<f32>(-509f, 500f)))))), _wgslsmith_div_vec3_i32(vec3<i32>(0i, 12388i, u_input.b), u_input.c.wyw) | _wgslsmith_sub_vec3_i32(-u_input.c.wxz, vec3<i32>(-18311i, 5096i, -2147483647i)), -283f, select(-var_0.c.x, 0i, !(var_1 != 1159f))).d);
    let var_3 = !(!select(select(select(vec4<bool>(var_2.x, var_2.x, true, true), vec4<bool>(false, false, false, arg_0.x), true), vec4<bool>(true, true, true, true), func_4(vec2<f32>(var_0.b, 508f), vec3<i32>(0i, u_input.b, u_input.c.x), -1691f, 1i).d), vec4<bool>(true, false, true, func_4(vec2<f32>(-675f, var_1), u_input.c.yyy, var_0.b, var_0.c.x).d), var_2.x));
    return vec3<i32>(_wgslsmith_clamp_i32(u_input.a, -35410i, -1i & -_wgslsmith_sub_i32(u_input.a, -1470i)), _wgslsmith_add_i32(~u_input.a, reverseBits(15593i)), abs(u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(19680u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1454f * -1000f) + -110f)), func_1(vec2<bool>(false, !(u_input.d != u_input.d))), true);
    let var_1 = !(!(!(!(!vec3<bool>(var_0.d, false, var_0.d)))));
    var var_2 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b, var_0.b), vec2<f32>(var_0.b, var_0.b)))) - vec2<f32>(func_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b, 1228f), vec2<f32>(var_0.b, -1051f), var_1.x)), max(vec3<i32>(-2147483647i, u_input.a, u_input.a), var_0.c), _wgslsmith_f_op_f32(round(407f)), 2114i).b, _wgslsmith_div_f32(-601f, -381f))), ~select(-vec3<i32>(u_input.a, var_0.c.x, var_0.c.x), _wgslsmith_mult_vec3_i32(~u_input.c.zzx, var_0.c), select(!var_1, select(vec3<bool>(true, false, false), var_1, var_1.x), true)), var_0.b, -2147483647i);
    global2 = array<Struct_1, 29>();
    let var_3 = Struct_1(min(var_2.a, max(46947u, var_2.a)), _wgslsmith_f_op_f32(trunc(-227f)), vec3<i32>(37758i, 55479i, var_0.c.x), var_0.d | false);
    let var_4 = func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1115f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.b)))) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.b, var_3.b))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b, 1328f) - vec2<f32>(var_0.b, 2073f))))))), func_4(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -249f), _wgslsmith_f_op_f32(f32(-1f) * -1851f)), _wgslsmith_div_vec3_i32(var_2.c, var_0.c) >> ((vec3<u32>(var_2.a, var_0.a, var_3.a) | vec3<u32>(1u, var_3.a, 1u)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(854f, -1834f)))), var_2.c.x).c >> (~vec3<u32>(func_3().x, min(var_0.a, var_0.a), ~var_3.a) % vec3<u32>(32u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.b)) - var_0.b))), 221f, var_0.c.x > _wgslsmith_dot_vec2_i32(var_0.c.yx, ~var_0.c.zy))), var_0.c.x);
    var_0 = global0[_wgslsmith_index_u32(6498u, 5u)];
    let var_5 = vec3<i32>(_wgslsmith_clamp_i32(var_3.c.x, -(~max(var_3.c.x, var_0.c.x)), -2147483647i), _wgslsmith_dot_vec4_i32(u_input.c, u_input.c) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(25259i, u_input.c.x, var_0.c.x), vec3<i32>(i32(-1i) * -5746i, var_0.c.x | var_0.c.x, u_input.c.x | var_3.c.x)), i32(-1i) * -firstTrailingBit(~2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(1322f, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(~11335u, 0u | var_4.a, ~var_4.a)), vec3<u32>(min(1u, _wgslsmith_mod_u32(var_2.a, 1u)), _wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, 4294967295u), var_4.a), 74982u)), (-u_input.c.xyz | _wgslsmith_clamp_vec3_i32(max(vec3<i32>(var_0.c.x, var_4.c.x, var_3.c.x), vec3<i32>(-2147483647i, 31028i, var_5.x)), ~vec3<i32>(var_4.c.x, var_4.c.x, var_5.x), var_4.c)) | var_2.c);
}

