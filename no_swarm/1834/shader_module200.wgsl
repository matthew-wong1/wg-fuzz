struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: i32,
    d: f32,
    e: vec3<i32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 31>;

var<private> global1: i32 = 67526i;

var<private> global2: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_1(max(vec3<u32>(min(1u, abs(u_input.d)), ~u_input.b.x, u_input.a.x), ~vec3<u32>(63969u, ~u_input.e, 1u)));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-1410f + 1744f), Struct_2(Struct_1(~firstTrailingBit(vec3<u32>(var_0.a.x, var_0.a.x, u_input.c))), Struct_1(_wgslsmith_add_vec3_u32(select(global0[_wgslsmith_index_u32(64769u, 31u)], global0[_wgslsmith_index_u32(var_0.a.x, 31u)], false), ~var_0.a))), Struct_3(1i, vec2<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), any(vec2<bool>(false, false))), 1i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-743f - -1081f), _wgslsmith_f_op_f32(f32(-1f) * -433f))), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i >> (var_0.a.x % 32u), 2147483647i, 46897i), max(vec3<i32>(-12286i, -1i, -14557i), vec3<i32>(1i, 1i, 1i)))));
    let var_2 = !vec2<bool>(!any(var_1.c.b), !(!(var_1.c.c <= var_1.c.a)));
    var var_3 = var_2.x;
    var var_4 = ~_wgslsmith_div_vec2_u32(vec2<u32>(firstLeadingBit(u_input.e), 1u), vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(global0[_wgslsmith_index_u32(52626u, 31u)], u_input.b.xxw), var_1.b.a.a), u_input.b.x));
    return ~var_1.c.e.xx;
}

fn func_2() -> bool {
    var var_0 = true;
    var_0 = 29475i > -firstTrailingBit(firstLeadingBit(-1i >> (u_input.d % 32u)));
    let var_1 = Struct_4(-491f, Struct_2(Struct_1(u_input.b.zxx), Struct_1(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 7531u, u_input.b.x), ~u_input.b.wyz))), Struct_3(i32(-1i) * -2147483647i, select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(vec2<bool>(true, true), vec2<bool>(true, false), true), all(vec2<bool>(false, false))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(38744i, -1i) << (vec2<u32>(u_input.b.x, u_input.c) % vec2<u32>(32u)), func_3()), _wgslsmith_f_op_f32(f32(-1f) * -285f), vec3<i32>(0i, min(_wgslsmith_mult_i32(1i, -54252i), 0i), ~(-58973i))));
    let var_2 = Struct_3(i32(-1i) * -27147i, vec2<bool>(!(!var_1.c.b.x), all(!(!vec2<bool>(true, var_1.c.b.x)))), var_1.c.a, _wgslsmith_f_op_f32(round(639f)), var_1.c.e);
    global1 = 0i;
    return all(!(!select(vec4<bool>(true, var_2.b.x, true, true), select(vec4<bool>(true, var_2.b.x, true, true), vec4<bool>(var_1.c.b.x, true, var_1.c.b.x, var_2.b.x), vec4<bool>(var_2.b.x, var_2.b.x, true, var_1.c.b.x)), var_1.c.b.x)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3) -> bool {
    let var_0 = arg_0;
    let var_1 = arg_1;
    global0 = array<vec3<u32>, 31>();
    var var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1618f, _wgslsmith_f_op_f32(floor(141f)), _wgslsmith_f_op_f32(max(786f, -635f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.d, var_1.d, arg_0.a))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d, 1483f, 445f))))), vec3<f32>(var_2.d, -1677f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d) - _wgslsmith_f_op_f32(-var_1.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1785f * -304f)), !any(vec3<bool>(arg_0.c.b.x, arg_1.b.x, false)))))));
    return countOneBits(countOneBits(arg_1.a)) == abs(1i);
}

fn func_1(arg_0: vec4<bool>) -> i32 {
    global0 = array<vec3<u32>, 31>();
    global2 = func_4(Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-806f)))), Struct_2(Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(25887u, u_input.c, 34371u), 31u)]), Struct_1(~vec3<u32>(36141u, 32820u, 46641u))), Struct_3(_wgslsmith_sub_i32(-1i, ~10753i), vec2<bool>(any(vec4<bool>(false, true, arg_0.x, arg_0.x)), func_2()), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(7023i, -2147483647i) >> (u_input.a % vec2<u32>(32u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1348f)), 1227f)), ~abs(vec3<i32>(-4749i, 1i, 32618i)))), Struct_3(38012i, arg_0.xw, ((i32(-1i) * -13448i) << (~u_input.a.x % 32u)) << (abs(~41701u) % 32u), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-434f * -561f), _wgslsmith_f_op_f32(round(-1197f))))), vec3<i32>(countOneBits(-50449i), _wgslsmith_dot_vec4_i32(vec4<i32>(-47528i, -2147483647i, 2147483647i, 12505i), vec4<i32>(-16570i, -10733i, 1i, -52293i)) ^ ~0i, -579i)));
    global0 = array<vec3<u32>, 31>();
    global2 = arg_0.x;
    var var_0 = Struct_2(Struct_1(_wgslsmith_mod_vec3_u32(u_input.b.zxz, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.b.yyw, global0[_wgslsmith_index_u32(16064u, 31u)]), u_input.b.x), 31u)])), Struct_1(global0[_wgslsmith_index_u32(abs(~9141u), 31u)]));
    return 50569i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_div_vec4_i32(vec4<i32>(select(-2147483647i, _wgslsmith_clamp_i32(1i, -15383i, 0i), true), ~1i >> (_wgslsmith_mod_u32(u_input.b.x, u_input.a.x) % 32u), func_1(vec4<bool>(true, true, true, true)), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-2147483647i, -1i)), _wgslsmith_sub_vec2_i32(vec2<i32>(0i, 31139i), vec2<i32>(2147483647i, 2147483647i)))), vec4<i32>(_wgslsmith_mod_i32(2147483647i, 7644i) >> (1u % 32u), 1i >> (~4294967295u % 32u), ~(-1i), 1i));
    global2 = false;
    let var_1 = _wgslsmith_add_vec3_i32(~abs(var_0.xwx), -var_0.zzw);
    var var_2 = abs(reverseBits(~u_input.b));
    global1 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(firstLeadingBit(~60u), _wgslsmith_mod_u32(~4294967295u, 10334u), 16856u, reverseBits(min(351u, var_2.x))) >> (~vec4<u32>(min(var_2.x, var_2.x), 0u, var_2.x, u_input.e) % vec4<u32>(32u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -467f)))), select(countOneBits(~vec4<u32>(u_input.c, 5421u, u_input.d, 4294967295u) | vec4<u32>(0u, var_2.x, 97293u, 0u)), vec4<u32>(0u, select(u_input.c, 0u, true), select(~4294967295u, 4294967295u & u_input.c, true), reverseBits(~var_2.x)), vec4<bool>(select(true, all(vec4<bool>(true, true, true, true)), 9647i >= var_0.x), func_2(), true, func_4(Struct_4(-1392f, Struct_2(Struct_1(var_2.xzx), Struct_1(vec3<u32>(var_2.x, var_2.x, var_2.x))), Struct_3(var_0.x, vec2<bool>(true, false), -16419i, -967f, vec3<i32>(var_0.x, var_1.x, var_1.x))), Struct_3(0i, vec2<bool>(true, false), -26977i, 403f, var_1)))));
}

