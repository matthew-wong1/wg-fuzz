struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec3<u32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(-1000f, 1738f, 250f), vec3<f32>(1000f, -1576f, 1312f), vec3<f32>(-512f, -776f, -928f), vec3<f32>(165f, 752f, -2278f), vec3<f32>(-1000f, -1472f, -1000f), vec3<f32>(-1023f, 497f, 126f), vec3<f32>(-1000f, -798f, -1000f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_3, arg_2: bool) -> u32 {
    global1 = array<vec3<f32>, 7>();
    global0 = select(select(vec4<bool>(any(!vec4<bool>(true, global0.x, true, false)), true, all(!global0.wx), true | arg_2), vec4<bool>(global0.x, false, select(all(global0.wxx), false, any(global0.ww)), all(global0.xzx)), arg_2), select(select(select(vec4<bool>(arg_2, false, false, arg_2), vec4<bool>(false, false, false, arg_2), true), select(vec4<bool>(true, arg_2, arg_2, false), select(vec4<bool>(arg_2, global0.x, arg_2, false), vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(arg_2, false, global0.x, false)), !vec4<bool>(arg_2, false, true, global0.x)), !(!vec4<bool>(global0.x, global0.x, arg_2, true))), !select(select(vec4<bool>(true, arg_2, arg_2, true), vec4<bool>(false, arg_2, global0.x, global0.x), vec4<bool>(true, global0.x, true, false)), vec4<bool>(true, arg_2, global0.x, global0.x), true), vec4<bool>(all(vec3<bool>(global0.x, arg_2, arg_2)), arg_1.a == 4294967295u, false, select(all(vec4<bool>(arg_2, global0.x, arg_2, global0.x)), true, true))), true);
    var var_0 = Struct_2(Struct_1(select(vec3<bool>(arg_2, all(vec3<bool>(global0.x, global0.x, global0.x)), global0.x), global0.ywy, !global0.zxz)), Struct_1(vec3<bool>(arg_2, all(global0.zw), true)), true, min(vec3<u32>(abs(30465u), arg_1.a, ~(~4294967295u)), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, 9585u), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.a, 53313u), vec3<u32>(u_input.d, arg_1.a, 4294967295u))), vec3<u32>(arg_1.a >> (14279u % 32u), 1u, arg_1.a ^ 49711u))));
    let var_1 = _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(-(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.a.a, 2147483647i), vec2<i32>(-2147483647i, arg_0.a.a), vec2<i32>(-24777i, -14755i)) >> (firstLeadingBit(vec2<u32>(u_input.d, u_input.b.x)) % vec2<u32>(32u))), firstLeadingBit(_wgslsmith_div_vec2_i32(max(vec2<i32>(arg_0.a.a, 1i), vec2<i32>(arg_0.a.a, arg_0.a.a)), _wgslsmith_add_vec2_i32(vec2<i32>(arg_0.a.a, 83908i), vec2<i32>(arg_0.a.a, -13761i))))), _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(36479i, arg_0.a.a), -vec2<i32>(arg_0.a.a, 31250i)), firstTrailingBit(vec2<i32>(-29925i, arg_0.a.a)) >> (abs(var_0.d.zx) % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(-(vec2<i32>(0i, 7595i) >> (vec2<u32>(var_0.d.x, 4294967295u) % vec2<u32>(32u))), vec2<i32>(firstTrailingBit(arg_0.a.a), -1i))));
    var var_2 = Struct_4(-_wgslsmith_dot_vec3_i32(vec3<i32>(-arg_0.a.a, -arg_0.a.a, _wgslsmith_add_i32(-2147483647i, 57183i)), _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 19759i, -1i) | vec3<i32>(var_1.x, 2147483647i, arg_0.a.a), firstLeadingBit(vec3<i32>(-2147483647i, arg_0.a.a, 64625i)))));
    return _wgslsmith_clamp_u32(3055u, _wgslsmith_mod_u32(u_input.d, 1u), ~(~_wgslsmith_add_u32(49696u, arg_1.a)));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: bool) -> u32 {
    var var_0 = ~(~_wgslsmith_mod_vec4_u32(arg_1, _wgslsmith_mult_vec4_u32(~arg_1, _wgslsmith_add_vec4_u32(vec4<u32>(51410u, 0u, u_input.b.x, u_input.d), vec4<u32>(arg_0.x, u_input.a, 1u, arg_1.x)))));
    let var_1 = Struct_4(1i & _wgslsmith_dot_vec4_i32(vec4<i32>(-486i, -23348i, 1i, ~2147483647i), vec4<i32>(1i, 1i, ~17623i, firstLeadingBit(-7316i))));
    var var_2 = Struct_2(Struct_1(!global0.wzx), Struct_1(!global0.zwx), !global0.x, vec3<u32>(45167u, ~arg_1.x, _wgslsmith_mult_u32(74009u, u_input.a)));
    var var_3 = Struct_3(var_0.x);
    let var_4 = var_1;
    return max(1u, ~_wgslsmith_mod_u32(1u, 12507u));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_5) -> Struct_4 {
    global1 = array<vec3<f32>, 7>();
    global1 = array<vec3<f32>, 7>();
    let var_0 = func_4(vec3<u32>(~u_input.b.x, u_input.b.x >> (1u % 32u), max(countOneBits(34337u), ~u_input.a)) >> (min(select(~vec3<u32>(u_input.a, u_input.c, u_input.a), ~vec3<u32>(14605u, 4294967295u, u_input.d), true), ~vec3<u32>(59202u, 13368u, 0u)) % vec3<u32>(32u)), ~max(~firstTrailingBit(vec4<u32>(u_input.d, 163040u, 0u, u_input.b.x)), vec4<u32>(~0u, select(u_input.d, u_input.b.x, true), func_3(Struct_5(Struct_4(1i)), Struct_3(u_input.c), global0.x), 0u)), all(select(select(!global0.xyz, vec3<bool>(true, false, false), !vec3<bool>(false, global0.x, global0.x)), !global0.wxy, any(global0.zzw))));
    global0 = !vec4<bool>(!(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.b.x, u_input.d, 73876u), vec4<u32>(47320u, var_0, 26267u, 66436u)) != 0u), false, true, any(!select(vec3<bool>(true, global0.x, true), global0.zzy, global0.x)));
    global1 = array<vec3<f32>, 7>();
    return arg_1.a;
}

fn func_5(arg_0: Struct_5, arg_1: vec2<f32>) -> vec2<f32> {
    global0 = select(vec4<bool>(true, true, !(global0.x != (false && global0.x)), !all(vec4<bool>(true, false, global0.x, true))), select(select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, global0.x, true), vec4<bool>(global0.x, false, false, false)), !vec4<bool>(global0.x, true, global0.x, true), true), vec4<bool>(global0.x, true, true, all(vec2<bool>(global0.x, false))), !select(vec4<bool>(true, true, global0.x, true), vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, global0.x))), vec4<bool>(true, any(select(vec4<bool>(global0.x, true, global0.x, false), vec4<bool>(global0.x, global0.x, true, global0.x), global0.x)), !(arg_1.x >= 1000f), all(!global0.wxy)), select(!vec4<bool>(false, false, global0.x, false), vec4<bool>(true, true, all(global0.zy), global0.x), true)), !select(vec4<bool>(any(vec4<bool>(global0.x, true, global0.x, true)), any(global0.xz), true, !global0.x), select(!vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(false, global0.x, false, global0.x), false), any(global0.wx) | false));
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -136f);
    let var_1 = Struct_4((arg_0.a.a ^ arg_0.a.a) | (((arg_0.a.a << (33002u % 32u)) | arg_0.a.a) & arg_0.a.a));
    global0 = !select(vec4<bool>(false, 57477u <= ~u_input.b.x, global0.x, !all(vec3<bool>(false, global0.x, false))), vec4<bool>(true, global0.x & (global0.x & global0.x), any(select(vec3<bool>(true, false, global0.x), global0.wwx, global0.x)), false), !vec4<bool>(false, any(vec3<bool>(false, false, global0.x)), all(vec2<bool>(true, false)), false && global0.x));
    let var_2 = -vec3<i32>(abs(~(var_1.a >> (u_input.c % 32u))), min(_wgslsmith_sub_i32(abs(arg_0.a.a), reverseBits(32114i)), _wgslsmith_add_i32(-var_1.a, arg_0.a.a)), arg_0.a.a);
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0, -508f, global0.x && false))) * _wgslsmith_div_f32(arg_1.x, var_0)), -234f);
}

fn func_1(arg_0: Struct_1) -> vec2<f32> {
    global1 = array<vec3<f32>, 7>();
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-877f, -423f)))))))) + _wgslsmith_f_op_vec2_f32(func_5(Struct_5(func_2(vec3<i32>(18011i, -1i, -35608i), Struct_5(Struct_4(46956i)))), vec2<f32>(_wgslsmith_f_op_f32(-800f * _wgslsmith_div_f32(306f, 584f)), -360f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 17264i;
    let var_1 = global0.wyy;
    let var_2 = !(1i <= (countOneBits(1i) | (firstTrailingBit(-148i) << (9221u % 32u))));
    global1 = array<vec3<f32>, 7>();
    global0 = vec4<bool>(false, false, var_1.x, any(!(!vec4<bool>(true, var_1.x, false, true))));
    var var_3 = !(!select(global0.ww, var_1.yy, vec2<bool>(all(vec4<bool>(true, true, false, true)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(_wgslsmith_add_u32(~16067u, _wgslsmith_add_u32(0u, u_input.b.x)), u_input.c, u_input.a, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.b.x, u_input.b.x)), vec2<u32>(1u, 4294967295u))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(select(global0.zyy, vec3<bool>(false, var_1.x, false), true)))))), select(select(var_0, _wgslsmith_add_i32(14316i, 0i) & select(24862i, -7776i, true), var_2), var_0, any(select(vec2<bool>(true, true), !vec2<bool>(var_3.x, true), var_3.x))), _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(~func_4(~vec3<u32>(1u, u_input.b.x, 32120u), _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.c, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, 5388u, u_input.c, 4294967295u)), all(vec3<bool>(true, true, var_2))), 7u)]));
}

