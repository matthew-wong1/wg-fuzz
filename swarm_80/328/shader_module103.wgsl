struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(14714u, 78447u, 2189u, 0u), vec2<u32>(0u, 0u), vec2<bool>(false, true), 1u, vec4<f32>(-1334f, -131f, -950f, -159f));

var<private> global1: f32 = -450f;

var<private> global2: vec4<u32>;

var<private> global3: array<vec3<bool>, 5>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: i32, arg_1: u32) -> vec4<u32> {
    global0 = Struct_1(~vec4<u32>(~1u, global2.x, arg_1, u_input.a.x), global2.xx, !select(global0.c, global0.c, false), 8799u, _wgslsmith_div_vec4_f32(global0.e, global0.e));
    let var_0 = global0.c;
    global3 = array<vec3<bool>, 5>();
    var var_1 = vec3<u32>(global2.x, u_input.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(min(~vec3<u32>(global0.d, global2.x, 38586u), countOneBits(vec3<u32>(global0.b.x, 42200u, 4294967295u))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(global0.d, 1u, 52534u), vec3<u32>(49720u, 29417u, arg_1))), global2.xxy));
    var var_2 = Struct_1(vec4<u32>(~0u, abs(1u), global2.x, var_1.x), ~u_input.a.xz, !(!select(vec2<bool>(global0.c.x, global0.c.x), select(vec2<bool>(var_0.x, false), vec2<bool>(false, var_0.x), global0.c), true)), 4294967295u, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(880f * 602f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -370f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(877f, global0.e.x, global0.e.x, -559f))))))));
    return abs(vec4<u32>(1u, abs(~reverseBits(1235u)), countOneBits(_wgslsmith_dot_vec2_u32(reverseBits(var_2.b), vec2<u32>(u_input.a.x, 34912u))), arg_1));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-501f)) * _wgslsmith_f_op_f32(arg_1.e.x - -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-830f + arg_3.e.x) + _wgslsmith_f_op_f32(step(arg_1.e.x, 1000f)))), _wgslsmith_f_op_vec2_f32(arg_3.e.xy + vec2<f32>(-261f, _wgslsmith_f_op_f32(443f + arg_3.e.x)))) + arg_3.e.zw);
    let var_1 = arg_1;
    var var_2 = true;
    global2 = vec4<u32>(arg_3.b.x, ~50740u, global0.a.x, select(arg_3.b.x, abs(~arg_1.d), true)) & ~vec4<u32>(arg_1.a.x, firstTrailingBit(~32850u), 1u, 1u);
    global2 = select(firstTrailingBit(~func_3(u_input.c, 0u)) & _wgslsmith_mult_vec4_u32(arg_1.a, _wgslsmith_mod_vec4_u32(global0.a << (u_input.a % vec4<u32>(32u)), vec4<u32>(u_input.b.x, 104873u, global2.x, 19152u))), vec4<u32>(0u, 32150u, global2.x | 0u, var_1.a.x | _wgslsmith_mult_u32(~34157u, ~global0.b.x)), _wgslsmith_f_op_f32(-var_0.x) >= _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-global0.e.x)));
    return -2148f;
}

fn func_1(arg_0: i32) -> vec4<u32> {
    global1 = _wgslsmith_f_op_f32(-global0.e.x);
    var var_0 = ~(2469u | u_input.b.x);
    var var_1 = ~vec4<u32>(u_input.b.x, 0u, global0.d, global2.x);
    global0 = Struct_1(~_wgslsmith_sub_vec4_u32(u_input.d, u_input.a), ~vec2<u32>(u_input.d.x | 4294967295u, global2.x ^ ~global0.a.x), global0.c, 1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global0.e, vec4<f32>(1252f, global0.e.x, _wgslsmith_f_op_f32(func_2(global0.c.x, Struct_1(global0.a, vec2<u32>(global2.x, u_input.a.x), vec2<bool>(global0.c.x, true), 4294967295u, global0.e), -492f, Struct_1(u_input.d, vec2<u32>(global2.x, global2.x), global0.c, global2.x, global0.e))), _wgslsmith_f_op_f32(-global0.e.x))))));
    global2 = ~_wgslsmith_add_vec4_u32(~vec4<u32>(100675u, ~var_1.x, 46139u, ~u_input.b.x), ~_wgslsmith_mult_vec4_u32(~u_input.a, abs(u_input.a)));
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(func_1(u_input.c), ~(~(~vec2<u32>(40118u, u_input.b.x))), !(!vec2<bool>(true, false | global0.c.x)), 4294967295u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1375f, global0.e.x, -689f, global0.e.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global0.e), _wgslsmith_f_op_vec4_f32(ceil(global0.e)), !global0.c.x)) + _wgslsmith_f_op_vec4_f32(global0.e * vec4<f32>(global0.e.x, -815f, global0.e.x, -190f))), any(vec4<bool>(true, true, u_input.d.x <= 349u, global0.c.x)))));
    var var_0 = global0.e.x == global0.e.x;
    let var_1 = ~max(-(~_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(19319i, u_input.c))), -select(select(vec2<i32>(0i, u_input.c), vec2<i32>(u_input.c, u_input.c), vec2<bool>(false, global0.c.x)), vec2<i32>(u_input.c, 44941i), !vec2<bool>(global0.c.x, global0.c.x)));
    let var_2 = 1u;
    global2 = firstTrailingBit(~(~(~global0.a << (~vec4<u32>(global2.x, 0u, var_2, 60299u) % vec4<u32>(32u)))));
    global2 = ~_wgslsmith_clamp_vec4_u32(u_input.d, vec4<u32>(~global2.x, 38074u, var_2, 0u) >> (vec4<u32>(4294967295u, ~global2.x, ~1u, _wgslsmith_mult_u32(4294967295u, 0u)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(select(vec4<u32>(global0.b.x, 0u, var_2, global0.d) << (global0.a % vec4<u32>(32u)), vec4<u32>(0u, 1u, global0.b.x, 0u), true), select(u_input.d, global0.a, any(vec4<bool>(global0.c.x, global0.c.x, global0.c.x, true)))));
    var_0 = true;
    global1 = _wgslsmith_f_op_f32(select(-410f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(366f, global0.e.x))))))), false));
    global2 = vec4<u32>(func_1(~(-47148i)).x, 772u, reverseBits(u_input.b.x), ~global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(global0.e.x, -1007f, 597f, -vec4<i32>(-33996i, ~var_1.x, -32535i, max(-1i, firstTrailingBit(-2147483647i))));
}

