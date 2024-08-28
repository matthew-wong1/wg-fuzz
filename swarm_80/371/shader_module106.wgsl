struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global2: array<Struct_2, 24>;

var<private> global3: bool = false;

var<private> global4: vec2<i32>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<u32> {
    global2 = array<Struct_2, 24>();
    global0 = Struct_4(-1i, vec3<i32>(countOneBits(reverseBits(firstTrailingBit(global4.x))), u_input.a, 1i), global0.c);
    let var_0 = ~(_wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.c.x, global0.c.a, global0.c.a, 0u) | vec4<u32>(31001u, u_input.b.x, 88762u, 75706u), ~vec4<u32>(global0.c.a, global0.c.a, 48746u, 1u), global0.b.x >= 2147483647i), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(10751u, u_input.b.x, 8021u, global0.c.a)), firstLeadingBit(vec4<u32>(global0.c.a, u_input.c.x, global0.c.a, global0.c.a)))) & ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, global0.c.a, 4294967295u, u_input.b.x), vec4<u32>(global0.c.a, u_input.b.x, u_input.b.x, 2252u) & vec4<u32>(4294967295u, u_input.b.x, global0.c.a, u_input.c.x), abs(vec4<u32>(1u, u_input.b.x, global0.c.a, 69930u))));
    global4 = _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(abs(global0.a), global4.x >> (4294967295u % 32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(global4.x, global0.b.x), firstTrailingBit(vec2<i32>(global0.b.x, u_input.a)), u_input.d)), u_input.d), ~_wgslsmith_add_vec2_i32(-vec2<i32>(u_input.d.x, 2147483647i), vec2<i32>(1i, -global4.x)));
    global0 = Struct_4(_wgslsmith_dot_vec3_i32(global0.b, firstTrailingBit(-_wgslsmith_div_vec3_i32(global0.b, global0.b))), ~vec3<i32>(countOneBits(_wgslsmith_dot_vec3_i32(global0.b, vec3<i32>(14466i, global0.b.x, global0.b.x))), 1082i, countOneBits(~u_input.d.x)), global0.c);
    return _wgslsmith_sub_vec2_u32(~var_0.yx, abs(vec2<u32>(2690u, 41859u)) ^ var_0.wz);
}

fn func_2() -> f32 {
    var var_0 = Struct_4(_wgslsmith_div_i32(15866i, ~max(-907i, 1i)), global0.b, global0.c);
    var var_1 = var_0.c.a & _wgslsmith_div_u32(min(~var_0.c.a, ~(~4294967295u)), _wgslsmith_sub_u32(global0.c.a, min(38893u, ~var_0.c.a)));
    var var_2 = -(~var_0.b.zy);
    var_2 = countOneBits(_wgslsmith_add_vec2_i32(~(u_input.e.yz ^ vec2<i32>(var_0.a, -2147483647i)), vec2<i32>(firstTrailingBit(var_0.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a, -54119i, var_0.a), vec4<i32>(-43333i, var_0.a, var_2.x, var_0.b.x))))) >> (func_3() % vec2<u32>(32u));
    var var_3 = min(u_input.d.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(~u_input.d.x, firstTrailingBit(var_0.a)), abs(vec2<i32>(1i, var_2.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-881f - -373f))) + -796f) - 303f);
}

fn func_1(arg_0: i32, arg_1: u32) -> vec4<f32> {
    var var_0 = ~(i32(-1i) * -global0.b.x);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1421f, -257f, 162f) + _wgslsmith_div_vec3_f32(vec3<f32>(725f, -608f, 1711f), vec3<f32>(-435f, 828f, -2015f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(161f, 1002f, 1694f)), vec3<f32>(-1047f, 387f, -302f))), _wgslsmith_f_op_f32(-1208f * 160f) == _wgslsmith_f_op_f32(ceil(-353f))))));
    var var_2 = -1922f;
    var var_3 = !global1.zyx;
    var_0 = u_input.d.x;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.x, var_1.x))), true)), _wgslsmith_div_f32(_wgslsmith_div_f32(578f, -566f), _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(var_1.x + 386f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(798f, _wgslsmith_f_op_f32(-1333f + 1649f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1534f, _wgslsmith_f_op_f32(432f - -636f), global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(771f * 693f), _wgslsmith_f_op_f32(2152f + -805f))))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_1(-26039i, u_input.b.x)))), _wgslsmith_f_op_vec4_f32(func_1(-63729i, 129871u)), !vec4<bool>(global1.x, true, global1.x, true))))));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.c.a, 0u), 24u)];
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_1(global4.x & _wgslsmith_add_i32(u_input.e.x, 0i), global0.c.a)).x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.d.x))))));
    let var_3 = Struct_3(var_1.c);
    let var_4 = var_1.c;
    var var_5 = Struct_1(~(~96784u));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i >> (0u % 32u), u_input.e.x), u_input.d), _wgslsmith_clamp_i32(-78698i, global4.x ^ 2147483647i, 5390i) | select(max(1i, -20824i), -27403i, all(global1.yyy)), any(vec3<bool>(!global1.x, true, global1.x))), vec3<f32>(var_0.x, var_0.x, 1672f));
}

