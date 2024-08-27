struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<bool, 26> = array<bool, 26>(true, true, true, true, true, true, false, true, false, false, true, true, true, true, true, false, false, false, true, true, true, false, false, true, true, false);

var<private> global2: array<vec2<bool>, 18>;

var<private> global3: vec3<bool>;

var<private> global4: vec4<bool>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    global0 = (-_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -41076i, u_input.a.x), vec3<i32>(0i, 1i, u_input.a.x)) << (13091u % 32u)) << (_wgslsmith_mult_u32(arg_0.x, 1u) % 32u);
    let var_0 = arg_2;
    let var_1 = ~vec2<i32>(~(-abs(-13591i)), firstLeadingBit(u_input.a.x | -14641i));
    let var_2 = arg_1.a;
    return global4.x;
}

fn func_2() -> vec4<bool> {
    return !(!vec4<bool>(!func_3(vec4<u32>(26074u, 0u, 88820u, 28721u), Struct_2(false, vec3<f32>(-266f, -1561f, -351f)), Struct_1(vec4<f32>(632f, 539f, -1788f, -1000f), 1000f)), true, global3.x, !all(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(44869u, 26u)], global1[_wgslsmith_index_u32(90087u, 26u)]))));
}

fn func_4(arg_0: vec4<bool>) -> u32 {
    let var_0 = -1000f;
    return 14566u;
}

fn func_1() -> vec4<bool> {
    global2 = array<vec2<bool>, 18>();
    let var_0 = vec3<u32>(func_4(select(vec4<bool>(false, global1[_wgslsmith_index_u32(7803u, 26u)], global3.x, true), func_2(), true)) << (1u % 32u), 1u, 8105u);
    global3 = select(vec3<bool>(!(!(!global3.x)), true, firstLeadingBit(countOneBits(var_0.x)) >= var_0.x), func_2().xyy, vec3<bool>(global3.x, any(select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(30124u, 26u)]), func_2().xwz, true)), false));
    global0 = 69936i;
    let var_1 = global1[_wgslsmith_index_u32(~0u, 26u)];
    return vec4<bool>(global1[_wgslsmith_index_u32(firstLeadingBit(reverseBits(0u)), 26u)], true, _wgslsmith_sub_i32(1i, ~0i) <= ((firstLeadingBit(u_input.a.x) & 14364i) << (4294967295u % 32u)), any(func_2().xw));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = !(!(!func_1()));
    global1 = array<bool, 26>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(360f, 366f, -383f, 744f)), _wgslsmith_div_vec4_f32(vec4<f32>(1362f, 1184f, -1000f, -221f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-652f, 850f, 285f, -1331f) + vec4<f32>(-226f, 2210f, 1111f, -260f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(968f, -1081f, 1058f, 158f), vec4<f32>(400f, -259f, -2250f, -1161f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(130f, 1000f, -1098f, -1000f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -278f, 106f, 515f))));
    global0 = 25852i;
    global2 = array<vec2<bool>, 18>();
    let var_1 = func_1().zw;
    global4 = !vec4<bool>(func_1().x || !(!var_1.x), true, !global4.x, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(40877u, 9280u), vec2<u32>(4294967295u, 1u)), vec2<u32>(23328u, 1u << (1u % 32u))), 26u)]);
    let var_2 = ~(~abs(vec2<u32>(1u, 1u))) | vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(33672u, 113558u, 1166u, 47420u), vec4<u32>(1u, 1u, 1u, 1u)), ~0u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(abs(var_0.x)))), _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -3403f) * -338f)), 1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_0.x)), 323f))), _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(-7585i, u_input.a.x, -19569i, u_input.a.x) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.x, 65353u, 22948u, var_2.x), vec4<u32>(var_2.x, var_2.x, 12762u, var_2.x), vec4<u32>(21003u, var_2.x, var_2.x, var_2.x)) % vec4<u32>(32u))), firstLeadingBit(vec4<i32>(u_input.a.x, -14749i, 28532i, u_input.a.x)) & countOneBits(-vec4<i32>(-9038i, -24738i, 66088i, -21800i))), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 0u, 0u >> (0u % 32u)) << (~_wgslsmith_add_vec3_u32(vec3<u32>(var_2.x, var_2.x, var_2.x), vec3<u32>(var_2.x, 35985u, var_2.x)) % vec3<u32>(32u)), ((vec3<u32>(var_2.x, 10265u, 13663u) >> (vec3<u32>(0u, 0u, 32016u) % vec3<u32>(32u))) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(26271u, var_2.x, var_2.x), vec3<u32>(47841u, var_2.x, 0u)) % vec3<u32>(32u))) >> (vec3<u32>(firstLeadingBit(4294967295u), countOneBits(var_2.x), ~31259u) % vec3<u32>(32u))));
}

