struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: bool,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: Struct_2,
    d: vec3<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_3, 6>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(global0.c.b.e * global0.c.b.e);
    global1 = array<Struct_3, 6>();
    var var_1 = global0.b;
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1794f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.e.e)) - -669f)), _wgslsmith_f_op_f32(global0.e.a.x * _wgslsmith_f_op_f32(min(-1836f, 1242f)))), global0.c.e, false, any(!(!select(vec3<bool>(false, global0.e.b, true), vec3<bool>(true, true, false), vec3<bool>(global0.c.e, false, true)))), -1315f);
    let var_3 = Struct_3(abs(select(~(vec3<u32>(51137u, u_input.b, u_input.b) >> (u_input.c % vec3<u32>(32u))), global0.c.d, select(vec3<bool>(false, var_2.c, var_2.b), select(vec3<bool>(var_2.c, false, false), vec3<bool>(false, global0.c.b.b, global0.c.e), vec3<bool>(var_2.d, true, var_2.b)), vec3<bool>(var_2.d, global0.e.d, false)))), reverseBits(u_input.a.x), Struct_2(~vec2<i32>(u_input.d.x, global0.c.a.x) | reverseBits(vec2<i32>(u_input.d.x, global0.b) & vec2<i32>(global0.c.c.x, -1i)), global0.e, select(abs(~u_input.d), vec4<i32>(~(-48825i), -26308i, _wgslsmith_dot_vec2_i32(u_input.d.xx, u_input.a), -10810i), true), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, global0.c.d.x, global0.c.d.x), vec3<u32>(4294967295u, 36501u, 1u)), ~u_input.c), global0.c.d, ~vec3<u32>(0u, global0.a.x, 28670u)), any(vec3<bool>(global0.e.c, true, var_2.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global0.d, vec3<f32>(global0.e.a.x, _wgslsmith_f_op_f32(-1000f + -337f), _wgslsmith_f_op_f32(414f + -196f))))), global0.c.b);
    return _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1049f, var_2.e), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.c.b.a.x, -467f), vec2<f32>(_wgslsmith_f_op_f32(-398f + -257f), _wgslsmith_f_op_f32(ceil(562f))))))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_3 {
    global0 = Struct_3(u_input.c, ~(16182i & -u_input.d.x), Struct_2(vec2<i32>(-1i, arg_0.x), Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_3()))), !(arg_0.x == 80513i), _wgslsmith_f_op_f32(global0.d.x * -1000f) == _wgslsmith_f_op_f32(global0.d.x - 693f), !global0.c.e, _wgslsmith_f_op_vec2_f32(func_3()).x), u_input.d, countOneBits(abs(vec3<u32>(7787u, 1u, u_input.c.x))), ~global0.c.d.x > min(4294967295u, 4294967295u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.b.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -546f), -692f), 1933f)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(814f + _wgslsmith_f_op_f32(-global0.d.x)), 625f), any(select(select(vec4<bool>(true, global0.c.b.c, global0.c.b.c, global0.c.b.b), vec4<bool>(true, false, global0.c.e, global0.e.b), vec4<bool>(global0.e.b, false, global0.c.e, global0.c.b.c)), !vec4<bool>(true, false, global0.c.b.b, false), select(vec4<bool>(global0.c.b.c, global0.c.b.c, global0.e.c, global0.c.e), vec4<bool>(false, global0.c.b.c, global0.c.e, true), vec4<bool>(false, global0.c.b.c, global0.e.d, global0.e.c)))), all(!select(vec3<bool>(global0.c.e, global0.c.e, global0.c.b.c), vec3<bool>(global0.e.c, true, true), global0.e.b)), u_input.b > ~32888u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.x + global0.d.x)), -228f)));
    let var_0 = _wgslsmith_dot_vec2_u32(select((_wgslsmith_add_vec2_u32(u_input.c.yz, global0.c.d.yx) >> (u_input.c.yz % vec2<u32>(32u))) >> (_wgslsmith_mod_vec2_u32(u_input.c.zx, u_input.c.yz ^ vec2<u32>(41283u, 0u)) % vec2<u32>(32u)), ~(global0.a.yx | u_input.c.zx), !(any(vec4<bool>(global0.c.b.d, false, global0.e.d, false)) != true)), global0.c.d.zz >> (global0.a.xz % vec2<u32>(32u)));
    let var_1 = 4294967295u;
    global0 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(firstLeadingBit(~vec4<u32>(50835u, 5955u, 4294967295u, var_1)), vec4<u32>(max(71620u, u_input.b), ~0u, ~1u, var_1)), vec4<u32>(38088u, global0.a.x, 1u, 1u)), 6u)];
    var var_2 = vec4<i32>(global0.c.c.x, select(-1i, ~1i, global0.c.b.c), -51801i, 1i);
    return global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0, ~(~(~(~var_0)))), 6u)];
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec3<i32>) -> Struct_1 {
    global0 = func_2(arg_2);
    var var_0 = -(~vec2<i32>(4178i << (u_input.b % 32u), 0i));
    global1 = array<Struct_3, 6>();
    global0 = global1[_wgslsmith_index_u32(max(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(62999u, ~min(arg_0, arg_0), global0.a.x | reverseBits(1u), ~0u), _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(0u, global0.c.d.x, u_input.b, u_input.b)), reverseBits(vec4<u32>(21346u, global0.c.d.x, arg_0, u_input.c.x))) >> (~(~vec4<u32>(2066u, arg_0, u_input.c.x, 0u)) % vec4<u32>(32u)))), 6u)];
    global1 = array<Struct_3, 6>();
    return Struct_1(global0.e.a, (~arg_0 <= global0.a.x) && !((-246f == arg_1) | true), true, true, 1568f);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_3) -> Struct_3 {
    var var_0 = Struct_3(select(~(~(~arg_2.c.d)), arg_3.c.d, false), select(1i, ~_wgslsmith_sub_i32(-1i, arg_1.a.x), arg_3.c.b.c) << (global0.a.x % 32u), Struct_2(_wgslsmith_div_vec2_i32(arg_2.c.c.zz, -(~vec2<i32>(global0.c.a.x, global0.c.a.x))), func_1(reverseBits(5335u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-988f * global0.d.x)), reverseBits(vec3<i32>(arg_2.c.a.x, 1i, 15277i))), _wgslsmith_add_vec4_i32(arg_2.c.c, arg_1.c), ~select(arg_2.c.d, ~arg_1.d, !arg_3.e.c), true), arg_3.d, arg_2.e);
    global1 = array<Struct_3, 6>();
    let var_1 = arg_2;
    var_0 = func_2(-_wgslsmith_sub_vec3_i32(var_0.c.c.wxx, var_0.c.c.ywy));
    global1 = array<Struct_3, 6>();
    return func_2(arg_1.c.yzx);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(global0.c.b.a, global0.c, Struct_3(~_wgslsmith_sub_vec3_u32(u_input.c, firstTrailingBit(vec3<u32>(0u, global0.c.d.x, 0u))), -32772i, Struct_2(vec2<i32>(~23693i, -13994i), global0.c.b, u_input.d, u_input.c >> (global0.c.d % vec3<u32>(32u)), true), vec3<f32>(1000f, 508f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.d.x - -1129f)))), func_1((u_input.c.x | 48790u) ^ (u_input.c.x >> (0u % 32u)), global0.d.x, _wgslsmith_mod_vec3_i32(global0.c.c.xyy, ~global0.c.c.yzz))), func_2(global0.c.c.ywz));
    global0 = func_2(-(max(func_4(global0.d.yx, Struct_2(global0.c.a, Struct_1(vec2<f32>(global0.e.e, 1713f), false, global0.e.b, global0.e.d, global0.d.x), vec4<i32>(global0.b, -2147483647i, 55004i, u_input.a.x), global0.a, false), global1[_wgslsmith_index_u32(0u, 6u)], Struct_3(u_input.c, u_input.d.x, Struct_2(vec2<i32>(-2147483647i, u_input.d.x), global0.e, u_input.d, vec3<u32>(4327u, 3400u, u_input.c.x), false), global0.d, Struct_1(vec2<f32>(global0.d.x, global0.e.a.x), global0.c.e, global0.e.c, true, 1028f))).c.c.xyy, vec3<i32>(0i, u_input.a.x, 26035i)) | firstLeadingBit(_wgslsmith_sub_vec3_i32(u_input.d.xzz, global0.c.c.xxx))));
    var var_0 = func_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-268f)) + -1006f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.c.b.e + global0.e.a.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -125f)))), Struct_2(vec2<i32>(_wgslsmith_dot_vec3_i32(~global0.c.c.zzx, vec3<i32>(u_input.a.x, global0.c.c.x, -2147483647i)), u_input.a.x >> ((u_input.b << (1u % 32u)) % 32u)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global0.c.b.a))), true || global0.e.d, !func_4(vec2<f32>(global0.e.e, -292f), Struct_2(u_input.a, Struct_1(global0.e.a, true, false, false, global0.d.x), vec4<i32>(u_input.a.x, global0.b, u_input.a.x, 0i), global0.c.d, global0.c.e), Struct_3(u_input.c, global0.c.a.x, global0.c, vec3<f32>(-2369f, -1552f, global0.e.e), Struct_1(vec2<f32>(1022f, -1000f), global0.c.b.c, false, true, global0.c.b.e)), Struct_3(global0.c.d, 1i, Struct_2(vec2<i32>(global0.b, 3783i), Struct_1(global0.d.zx, true, false, true, 839f), vec4<i32>(u_input.a.x, u_input.d.x, -19798i, 0i), u_input.c, global0.c.e), global0.d, Struct_1(global0.d.zy, global0.c.e, global0.c.b.d, global0.c.e, global0.c.b.e))).c.b.c, true || global0.e.b, -138f), vec4<i32>(global0.b, u_input.d.x, -10348i << (_wgslsmith_clamp_u32(1490u, 4294967295u, u_input.c.x) % 32u), -40226i), _wgslsmith_mult_vec3_u32(global0.a, max(u_input.c, abs(vec3<u32>(4294967295u, 4294967295u, 2840u)))), any(select(select(vec2<bool>(global0.e.c, global0.e.b), vec2<bool>(false, global0.e.c), vec2<bool>(global0.c.b.b, global0.e.b)), vec2<bool>(global0.c.b.d, true), vec2<bool>(global0.c.e, false)))), global1[_wgslsmith_index_u32(firstLeadingBit(min(1u, 0u)), 6u)], func_2(~(-(vec3<i32>(-47574i, -14949i, u_input.d.x) << (u_input.c % vec3<u32>(32u)))))).c.d.x;
    global1 = array<Struct_3, 6>();
    let var_1 = _wgslsmith_div_i32(1i, ~global0.b << (~502u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(abs(global0.c.c.zz));
}

