struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<bool>;

var<private> global2: array<vec2<bool>, 32> = array<vec2<bool>, 32>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> u32 {
    global0 = any(!global2[_wgslsmith_index_u32(18816u, 32u)]);
    global1 = global2[_wgslsmith_index_u32(50660u, 32u)];
    var var_0 = Struct_1(u_input.c.yx ^ u_input.c.yz, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-266f, -131f))), _wgslsmith_f_op_f32(step(-819f, 1f)), _wgslsmith_f_op_f32(f32(-1f) * -375f)), ~(~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(12724u, u_input.b)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(745f, var_0.b.x, -1000f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(f32(-1f) * -508f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-607f)))), 737f)));
    var var_2 = !select(!vec4<bool>(!global1.x, true, all(vec3<bool>(true, global1.x, true)), true), select(vec4<bool>(any(vec3<bool>(false, false, global1.x)), global1.x, false, -5100i < u_input.a), !select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(global1.x, false, true, global1.x), global1.x), vec4<bool>(global1.x, global1.x, true, false)), any(vec4<bool>(true, any(vec2<bool>(false, true)), -2147483647i <= u_input.a, global1.x)));
    return u_input.b;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(vec2<i32>(-(i32(-1i) * -13015i), u_input.a), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(425f * -1461f), arg_0.a.b.x, 1157f), vec3<f32>(arg_0.a.b.x, _wgslsmith_f_op_f32(trunc(arg_0.a.b.x)), _wgslsmith_f_op_f32(round(arg_0.a.b.x))), arg_0.b.xyx)), 1u), _wgslsmith_mult_vec3_i32(-(~select(vec3<i32>(arg_0.a.a.x, -4205i, -1i), vec3<i32>(arg_0.a.a.x, u_input.c.x, 2147483647i), true)), u_input.c));
    var var_1 = Struct_1(vec2<i32>(_wgslsmith_sub_i32(623i, u_input.a), -min(u_input.c.x, _wgslsmith_div_i32(42615i, 35022i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a.b.x, _wgslsmith_f_op_f32(arg_0.a.b.x * var_0.a.b.x), _wgslsmith_f_op_f32(trunc(arg_0.a.b.x)))))), func_3());
    global0 = !(~u_input.b < ~65236u);
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_0.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-724f, _wgslsmith_f_op_f32(select(var_1.b.x, arg_0.a.b.x, arg_0.b.x))) * -1109f)));
    var var_3 = Struct_1(_wgslsmith_add_vec2_i32(var_0.b.xx, vec2<i32>(var_0.b.x, arg_0.a.a.x) >> (arg_1 % vec2<u32>(32u))) >> (select(arg_1, min(~arg_1, arg_1), arg_0.b.x && !global1.x) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-var_1.b), firstTrailingBit(~max(var_0.a.c, 49771u)));
    return var_0.a;
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: u32, arg_3: vec3<f32>) -> vec4<i32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-arg_0.a.b.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(452f, 1318f))), _wgslsmith_f_op_f32(round(-1000f)), global1.x)));
    let var_1 = arg_0;
    var var_2 = -(~(-2147483647i));
    var_2 = u_input.a;
    let var_3 = func_2(arg_0, ~vec2<u32>(~4294967295u, 9046u));
    return _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.a.a.x, 2147483647i, var_3.a.x, -2147483647i), firstTrailingBit(abs(~vec4<i32>(-4155i, var_3.a.x, var_3.a.x, 9547i)) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(-13271i, var_3.a.x, var_3.a.x, arg_0.a.a.x) & vec4<i32>(u_input.a, 2147483647i, 32957i, u_input.c.x), ~vec4<i32>(var_1.a.a.x, var_1.a.a.x, var_1.a.a.x, var_1.a.a.x), -vec4<i32>(-2147483647i, 5095i, 51015i, u_input.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    global0 = select(!global1.x, false, !(!(!all(vec4<bool>(global1.x, false, false, global1.x)))));
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-657f, _wgslsmith_f_op_f32(f32(-1f) * -1692f), 134f, _wgslsmith_f_op_f32(f32(-1f) * -252f)) - vec4<f32>(1f, 1f, 1f, 1f)) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(366f, -972f)) - -778f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1059f * -732f), _wgslsmith_f_op_f32(f32(-1f) * -176f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -661f)), 489f)) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-390f - -245f)), 206f, _wgslsmith_f_op_f32(round(-707f)), _wgslsmith_f_op_f32(step(1249f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(618f - 702f) + -1752f)))));
    let var_1 = _wgslsmith_dot_vec4_i32(-func_1(Struct_2(Struct_1(u_input.c.yz, var_0.www, u_input.d), select(vec4<bool>(false, global1.x, global1.x, false), vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, false, global1.x))), 1u, max(_wgslsmith_div_u32(56171u, 36238u), u_input.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, var_0.x, var_0.x))))), ~(~vec4<i32>(u_input.a & 2147483647i, _wgslsmith_mod_i32(u_input.c.x, u_input.a), ~u_input.c.x, select(u_input.c.x, u_input.a, global1.x))));
    global2 = array<vec2<bool>, 32>();
    global2 = array<vec2<bool>, 32>();
    var var_2 = vec2<bool>(global1.x || !all(vec3<bool>(true, false, false)), global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, var_0.x))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1045f, var_0.x, true)))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1182f), _wgslsmith_div_f32(-203f, var_0.x)));
}

