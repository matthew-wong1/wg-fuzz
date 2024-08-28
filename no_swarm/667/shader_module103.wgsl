struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<u32>(26440u, 1u), vec3<i32>(1i, -1i, 7696i), true, vec4<bool>(false, true, false, false));

var<private> global1: Struct_1;

var<private> global2: u32 = 11866u;

var<private> global3: array<Struct_1, 23>;

var<private> global4: array<vec3<f32>, 23> = array<vec3<f32>, 23>(vec3<f32>(137f, -911f, -1741f), vec3<f32>(-1053f, 106f, 1096f), vec3<f32>(-182f, -126f, 853f), vec3<f32>(191f, -744f, 1122f), vec3<f32>(616f, -2476f, 484f), vec3<f32>(1212f, 557f, -555f), vec3<f32>(1445f, 615f, 583f), vec3<f32>(-1278f, -1537f, 1617f), vec3<f32>(-634f, -1315f, -1028f), vec3<f32>(152f, 1051f, 1650f), vec3<f32>(1047f, -206f, 809f), vec3<f32>(-210f, -142f, 238f), vec3<f32>(184f, 412f, 983f), vec3<f32>(-789f, 113f, -1157f), vec3<f32>(877f, -2104f, 490f), vec3<f32>(859f, -2722f, 262f), vec3<f32>(921f, 576f, -987f), vec3<f32>(944f, 550f, 679f), vec3<f32>(-2273f, 732f, 734f), vec3<f32>(-1554f, 2627f, 394f), vec3<f32>(171f, -1208f, -164f), vec3<f32>(1707f, 281f, 176f), vec3<f32>(-631f, -1000f, 473f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: u32, arg_1: bool) -> vec4<u32> {
    global3 = array<Struct_1, 23>();
    let var_0 = ~vec2<u32>(_wgslsmith_add_u32(1u, 1u), ~(~1u));
    global3 = array<Struct_1, 23>();
    global1 = global3[_wgslsmith_index_u32(0u, 23u)];
    global3 = array<Struct_1, 23>();
    return abs(vec4<u32>(firstTrailingBit(1u), global1.a.x, ~select(abs(global1.a.x), global0.a.x, !arg_1), 86849u));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec4<u32>) -> u32 {
    global1 = global3[_wgslsmith_index_u32(~4294967295u, 23u)];
    return ~global1.a.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    var var_0 = vec3<u32>(global0.a.x, ~_wgslsmith_mod_u32(~arg_3.a.x, arg_3.a.x & 4294967295u), global1.a.x) | ~vec3<u32>(383u, _wgslsmith_mod_u32(0u, reverseBits(global0.a.x)), 60314u & reverseBits(arg_3.a.x));
    var var_1 = func_2(4294967295u, global1.c);
    var var_2 = vec4<u32>(4294967295u ^ _wgslsmith_mod_u32(4294967295u, _wgslsmith_div_u32(firstTrailingBit(var_0.x), func_3(812f, arg_2, vec4<u32>(global0.a.x, global1.a.x, 81647u, arg_3.a.x)))), countOneBits(reverseBits(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(34800u, var_1.x, var_1.x, 0u), vec4<u32>(global0.a.x, 0u, 7154u, 1u)), 8022u, global0.a.x))), reverseBits(abs(global1.a.x) & ~(~16286u)), global1.a.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.b.x, -1000f)) - _wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1707f)))), arg_1.b.x, -1238f) - vec4<f32>(_wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.b.x - -256f), _wgslsmith_f_op_f32(f32(-1f) * -1320f), global1.c | global1.c))), _wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) + arg_1.b.x)), _wgslsmith_f_op_f32(floor(arg_2.b.x)), _wgslsmith_f_op_f32(-arg_2.b.x)));
    var var_4 = -arg_3.b.x;
    return true;
}

fn func_4(arg_0: vec4<bool>) -> f32 {
    let var_0 = -(-vec4<i32>(abs(3167i), 27188i, 12333i, 2147483647i) >> (~abs(vec4<u32>(66965u, 0u, 4294967295u, global0.a.x)) % vec4<u32>(32u)));
    var var_1 = ~(~(~(~global1.a.x >> (countOneBits(global0.a.x) % 32u))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-global4[_wgslsmith_index_u32(global0.a.x, 23u)]);
    var var_3 = _wgslsmith_f_op_f32(step(1441f, _wgslsmith_f_op_f32(f32(-1f) * -871f)));
    let var_4 = u_input.b;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + var_2.x) + _wgslsmith_f_op_f32(f32(-1f) * -273f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global1.a.x;
    var var_0 = Struct_1(global0.a, vec3<i32>(_wgslsmith_sub_i32(min(~u_input.a, _wgslsmith_mod_i32(global0.b.x, -2147483647i)), 0i), i32(-1i) * -3293i, ~_wgslsmith_div_i32(reverseBits(u_input.a), global0.b.x << (global1.a.x % 32u))), any(select(!(!vec3<bool>(false, global0.d.x, false)), vec3<bool>(!global1.d.x, global1.d.x, true), select(global1.d.yzy, vec3<bool>(global0.c, global0.d.x, global0.c), global1.d.x))), !global1.d);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(func_4(select(!select(global0.d, global1.d, global0.d.x), !vec4<bool>(true, false, true, global1.c), func_1(vec3<bool>(false, global0.d.x, var_0.c), Struct_2(vec4<i32>(global0.b.x, u_input.a, -16680i, global1.b.x), vec2<f32>(1160f, -1110f), vec2<bool>(true, var_0.c)), Struct_2(vec4<i32>(1i, global1.b.x, global0.b.x, global1.b.x), vec2<f32>(-783f, 1000f), vec2<bool>(false, var_0.d.x)), Struct_1(vec2<u32>(global0.a.x, 22271u), var_0.b, global1.c, vec4<bool>(global1.d.x, global1.d.x, false, true))) | true))), _wgslsmith_f_op_f32(func_4(vec4<bool>(true, global1.a.x < (global1.a.x >> (global0.a.x % 32u)), true, var_0.d.x))), _wgslsmith_f_op_f32(func_4(global1.d)));
    let var_2 = global1.d;
    var var_3 = (~vec4<u32>(firstLeadingBit(12165u), _wgslsmith_mult_u32(global0.a.x, 27848u), abs(85992u), global0.a.x) & _wgslsmith_add_vec4_u32(~abs(vec4<u32>(var_0.a.x, 7390u, 4294967295u, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1669u, var_0.a.x, 4294967295u, 11167u), vec4<u32>(global0.a.x, 18452u, var_0.a.x, global1.a.x)))) & abs(~vec4<u32>(var_0.a.x, 27203u, 5195u, 4294967295u) >> (~(vec4<u32>(global1.a.x, global0.a.x, 0u, 0u) >> (vec4<u32>(global0.a.x, 25010u, 1u, global0.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_4 = Struct_2(u_input.b, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * var_1.x) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(259f - var_1.x)))), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(351f * var_1.x)))), var_0.d.yz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(var_1.zz, var_1.zz)));
}

