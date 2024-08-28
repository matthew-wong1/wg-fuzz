struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_3, 9>;

var<private> global2: bool;

var<private> global3: array<Struct_4, 3>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global0 = arg_0;
    var var_0 = Struct_3(arg_0, arg_0.c.yw, arg_0.b);
    let var_1 = _wgslsmith_mod_vec4_i32(vec4<i32>(0i, -_wgslsmith_mult_i32(arg_0.b, global0.b), u_input.b, _wgslsmith_mult_i32(_wgslsmith_mod_i32(~1i, ~u_input.b), -43707i)), vec4<i32>(~var_0.a.b, arg_0.b, var_0.a.b, abs(arg_0.b)));
    global1 = array<Struct_3, 9>();
    global1 = array<Struct_3, 9>();
    return u_input.a.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: f32, arg_3: vec3<u32>) -> Struct_4 {
    let var_0 = ~max(_wgslsmith_add_u32(_wgslsmith_sub_u32(~u_input.a.x, 4294967295u), countOneBits(u_input.a.x << (u_input.a.x % 32u))), arg_3.x);
    var var_1 = global3[_wgslsmith_index_u32(15964u, 3u)];
    global0 = var_1.a.a;
    let var_2 = arg_3.x;
    let var_3 = -1621f;
    return global3[_wgslsmith_index_u32(~abs(func_3(Struct_1(true, arg_0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, global0.c.x, 520f, var_1.a.a.c.x))))), 3u)];
}

fn func_4(arg_0: Struct_4, arg_1: vec4<i32>) -> i32 {
    let var_0 = arg_0.a;
    global0 = var_0.a;
    let var_1 = arg_0.a;
    let var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(global0.b, 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(max(var_1.a.b, u_input.b), _wgslsmith_mult_i32(3989i, -11691i), 443i), ~arg_0.a.b.zxy), -18053i), countOneBits(max(vec4<i32>(-1i) * -var_1.b, arg_0.a.b << (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 24030u, u_input.a.x, 1u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)))));
    global1 = array<Struct_3, 9>();
    return var_1.a.b;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4) -> u32 {
    var var_0 = arg_1.a.a;
    global0 = arg_1.a.a;
    var var_1 = func_4(func_2(arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x * _wgslsmith_f_op_f32(-563f * global0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1637f)) * _wgslsmith_f_op_f32(global0.c.x + _wgslsmith_div_f32(arg_0.c.x, 2079f))), countOneBits(~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))), -arg_1.a.b & _wgslsmith_sub_vec4_i32(~_wgslsmith_mult_vec4_i32(arg_1.a.b, vec4<i32>(global0.b, 0i, -1i, 2147483647i)), select(firstLeadingBit(arg_1.a.b), -arg_1.a.b, vec4<bool>(var_0.a, global0.a, false, false))));
    var var_2 = global0.c.x;
    global2 = global0.a;
    return u_input.a.x;
}

fn func_5(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: f32, arg_3: vec3<i32>) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(862f, 373f, arg_0.b)))))));
    let var_1 = vec4<i32>(-7436i, 5535i, arg_3.x, 30420i);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1055f, _wgslsmith_f_op_f32(-global0.c.x)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, arg_0.b)))));
    let var_3 = -17307i;
    global0 = Struct_1(arg_0.a.a.a, _wgslsmith_mult_i32(-1i, 2147483647i), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(global0.c)) - _wgslsmith_div_vec4_f32(arg_0.a.a.c, global0.c))))));
    return Struct_4(arg_0.a, _wgslsmith_f_op_f32(-var_0.x), var_1.yx);
}

fn func_6(arg_0: Struct_4) -> vec3<u32> {
    var var_0 = Struct_4(func_2(firstLeadingBit(vec2<i32>(_wgslsmith_div_i32(u_input.b, arg_0.c.x), _wgslsmith_mult_i32(21434i, -4352i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(994f, _wgslsmith_div_f32(arg_0.b, arg_0.b))) + global0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2843f))), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<u32>(13613u, u_input.a.x, u_input.a.x) | vec3<u32>(0u, u_input.a.x, u_input.a.x), ~vec3<u32>(65609u, u_input.a.x, 59839u)), ~(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)))).a, func_2(arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.c.x)) * -2600f))), ~vec3<u32>(_wgslsmith_add_u32(1u, u_input.a.x), u_input.a.x, u_input.a.x)).b, arg_0.c >> (_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(~u_input.a, vec2<u32>(u_input.a.x, u_input.a.x)), vec2<u32>(firstTrailingBit(u_input.a.x), u_input.a.x >> (u_input.a.x % 32u))) % vec2<u32>(32u)));
    var var_1 = 700f;
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.a.a.c.yyw, _wgslsmith_f_op_vec3_f32(-global0.c.xyy)) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(global0.c.xxw - vec3<f32>(global0.c.x, arg_0.b, 1941f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, func_5(Struct_4(Struct_2(Struct_1(true, arg_0.a.a.b, global0.c), var_0.a.b), arg_0.b, vec2<i32>(u_input.b, var_0.a.b.x)), vec2<i32>(u_input.b, 27203i), -449f, arg_0.a.b.ywy).b, _wgslsmith_f_op_f32(-var_0.b)) + vec3<f32>(-870f, _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(trunc(var_0.b))))), !(!select(select(vec3<bool>(arg_0.a.a.a, true, var_0.a.a.a), vec3<bool>(true, true, global0.a), var_0.a.a.a), !vec3<bool>(global0.a, false, true), !arg_0.a.a.a))));
    var_0 = arg_0;
    let var_3 = select(!select(!(!vec3<bool>(arg_0.a.a.a, global0.a, arg_0.a.a.a)), !(!vec3<bool>(true, var_0.a.a.a, arg_0.a.a.a)), select(!vec3<bool>(false, global0.a, false), vec3<bool>(false, false, arg_0.a.a.a), !arg_0.a.a.a)), !(!vec3<bool>(false, 68546i < var_0.c.x, var_0.a.a.a)), true);
    return _wgslsmith_sub_vec3_u32(~(abs(vec3<u32>(2417u, 22323u, u_input.a.x)) ^ ~vec3<u32>(u_input.a.x, 19764u, u_input.a.x)), vec3<u32>(1u, func_1(Struct_1(var_3.x, 34853i, vec4<f32>(1000f, -631f, -200f, global0.c.x)), Struct_4(var_0.a, -301f, var_0.c)) ^ func_3(Struct_1(true, 1i, vec4<f32>(-3145f, var_0.b, var_0.b, -872f))), 44357u));
}

fn func_7(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: bool, arg_3: f32) -> Struct_3 {
    return global1[_wgslsmith_index_u32(~(~(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), u_input.a) ^ u_input.a.x)), 9u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(func_5(global3[_wgslsmith_index_u32(~func_1(Struct_1(global0.a, -17000i, vec4<f32>(global0.c.x, -1064f, global0.c.x, global0.c.x)), Struct_4(Struct_2(Struct_1(false, global0.b, global0.c), vec4<i32>(u_input.b, -2147483647i, global0.b, -1i)), global0.c.x, vec2<i32>(u_input.b, global0.b))), 3u)], vec2<i32>(global0.b, 1i), global0.c.x, ~(~vec3<i32>(-1i, -1i, -2147483647i)))), Struct_2(func_2(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, global0.b), vec2<i32>(1i, -2147483647i)) | min(vec2<i32>(0i, -2147483647i), vec2<i32>(-18034i, u_input.b)), -221f, -806f, vec3<u32>(u_input.a.x, _wgslsmith_sub_u32(21292u, u_input.a.x), func_1(Struct_1(global0.a, u_input.b, vec4<f32>(global0.c.x, 757f, global0.c.x, -1326f)), Struct_4(Struct_2(Struct_1(global0.a, u_input.b, vec4<f32>(global0.c.x, -1627f, 352f, -176f)), vec4<i32>(global0.b, global0.b, global0.b, -1i)), 230f, vec2<i32>(-2147483647i, -2147483647i))))).a.a, vec4<i32>(u_input.b, -50372i, 1i, firstLeadingBit(u_input.b))), any(vec3<bool>(!global0.a, min(u_input.a.x, u_input.a.x) != ~52122u, u_input.b < global0.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(global0.c.x, 449f, global0.a))))) * global0.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.c.x, 881f) * vec2<f32>(global0.c.x, -467f))))), firstLeadingBit(var_0.a.b & 359i));
}

