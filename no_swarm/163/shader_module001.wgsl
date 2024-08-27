struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28>;

var<private> global1: i32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_2) -> bool {
    global0 = array<Struct_3, 28>();
    var var_0 = arg_2.a;
    var_0 = _wgslsmith_dot_vec2_u32(u_input.b << (_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b, u_input.b) >> (_wgslsmith_add_vec2_u32(u_input.b, u_input.b) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(u_input.b >> (vec2<u32>(1u, 0u) % vec2<u32>(32u)), firstTrailingBit(u_input.b))) % vec2<u32>(32u)), u_input.b);
    let var_1 = arg_0;
    let var_2 = arg_2.b.x;
    return true;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(max(16836u, u_input.c), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1534f)), 1731f, func_3(Struct_2(u_input.c, vec2<f32>(-1237f, -996f), vec2<f32>(-156f, -651f), Struct_1(vec4<f32>(-489f, -2187f, -1841f, -141f), u_input.a, u_input.a.x)), vec3<f32>(-1000f, -1000f, 697f), Struct_2(u_input.c, vec2<f32>(1517f, -501f), vec2<f32>(208f, 1833f), Struct_1(vec4<f32>(-608f, 1216f, 203f, -257f), u_input.a, -49425i)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -813f), 592f, any(vec3<bool>(false, false, true))))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-403f, 2606f)))))), Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(856f, 2539f, 1347f, 1000f) * vec4<f32>(-1000f, -1087f, 1068f, -1075f))))), (~vec4<i32>(11816i, u_input.a.x, u_input.a.x, -31251i) ^ _wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, -1i, u_input.a.x, -546i))) | u_input.a, -2147483647i));
    global0 = array<Struct_3, 28>();
    let var_1 = select(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), !any(vec2<bool>(false, true))), vec3<bool>(true && (_wgslsmith_f_op_f32(trunc(-539f)) == _wgslsmith_f_op_f32(select(-1000f, 1618f, false))), var_0.c.x <= var_0.b.x, true && !select(false, false, true)), any(vec4<bool>(true, all(vec3<bool>(false, false, true)), true, true)) == (u_input.a.x >= ~(~var_0.d.b.x)));
    global0 = array<Struct_3, 28>();
    var var_2 = var_0.d.a;
    return Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(var_0.d.a, vec4<f32>(-612f, 384f, 576f, var_0.d.a.x)))))))), reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, i32(-1i) * -u_input.a.x)), _wgslsmith_dot_vec4_i32(u_input.a, _wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a.x, 1i, 9221i, 45424i), vec4<i32>(0i, -1i, _wgslsmith_mod_i32(var_0.d.b.x, -19555i), _wgslsmith_div_i32(var_0.d.c, u_input.a.x)))));
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = vec3<u32>(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), u_input.b)), u_input.b.x, _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.c), vec4<u32>(u_input.c, 0u, 1u, u_input.c)), select(abs(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 5559u)), vec4<u32>(u_input.b.x, u_input.c, u_input.c, u_input.c) | vec4<u32>(0u, u_input.b.x, u_input.c, u_input.b.x), true))) << ((vec3<u32>(~(~u_input.c), ~_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(46469u, 43392u)), 1u) & min(~select(vec3<u32>(14185u, 15163u, 121896u), vec3<u32>(0u, 4294967295u, u_input.b.x), true), firstLeadingBit(~vec3<u32>(u_input.c, u_input.c, 113057u)))) % vec3<u32>(32u));
    var var_1 = u_input.a.zyw;
    var var_2 = Struct_2(42277u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0, arg_0))), arg_0, func_2());
    var var_3 = false;
    global0 = array<Struct_3, 28>();
    return func_2();
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> i32 {
    global1 = -arg_1.c;
    global1 = arg_3.c;
    var var_0 = Struct_2(~u_input.b.x, _wgslsmith_f_op_vec2_f32(-arg_1.a.wz), arg_1.a.xy, func_2());
    var var_1 = (~vec4<u32>(_wgslsmith_sub_u32(70461u, 19018u), reverseBits(40096u), u_input.b.x, u_input.c << (42267u % 32u)) >> (~vec4<u32>(~u_input.c, _wgslsmith_dot_vec2_u32(u_input.b, u_input.b), u_input.b.x, abs(24683u)) % vec4<u32>(32u))) & vec4<u32>(max(firstLeadingBit(~2253u), u_input.b.x << (_wgslsmith_div_u32(u_input.c, var_0.a) % 32u)), u_input.b.x, _wgslsmith_clamp_u32(~(~u_input.c), firstTrailingBit(0u), 5586u), 1u);
    var var_2 = func_2().a.x;
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-656f, 444f, -474f, -1429f) - vec4<f32>(1000f, 1535f, 103f, 342f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-727f, -490f, 1677f, 294f)))), u_input.a, abs(func_4(true, func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1000f))), -170f, func_2())));
    var var_1 = 16098i;
    global0 = array<Struct_3, 28>();
    global0 = array<Struct_3, 28>();
    global1 = 2147483647i;
    global1 = i32(-1i) * -40704i;
    var_1 = ~(-35409i);
    global0 = array<Struct_3, 28>();
    global1 = _wgslsmith_mod_i32(-1i, var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(-4413i);
}

