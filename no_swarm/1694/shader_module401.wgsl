struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<bool>(true, true, true, true), vec4<f32>(1000f, 296f, 1000f, 502f));

var<private> global1: vec3<u32>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32) -> vec3<u32> {
    global1 = abs(~(~vec3<u32>(~arg_0, _wgslsmith_div_u32(arg_0, arg_0), _wgslsmith_mult_u32(global1.x, 4294967295u))));
    global0 = Struct_2(select(vec4<bool>(all(global0.a.wxy), !global0.a.x, global0.a.x, global0.a.x), global0.a, any(global0.a.yyx)), global0.b);
    let var_0 = ~vec4<i32>(~firstTrailingBit(12881i), reverseBits(32522i), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x) << (vec4<u32>(arg_0, arg_0, 0u, arg_0) % vec4<u32>(32u)), -vec4<i32>(u_input.a.x, u_input.a.x, 5096i, -8477i)), -(~vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x))), u_input.a.x);
    return vec3<u32>(min(abs(arg_0), 4294967295u) & _wgslsmith_sub_u32(~0u, global1.x), 90522u, global1.x) << (select(~select(vec3<u32>(global1.x, 15839u, global1.x), vec3<u32>(arg_0, 4294967295u, 4294967295u), vec3<bool>(global0.a.x, global0.a.x, global0.a.x)) ^ vec3<u32>(global1.x | arg_0, global1.x, global1.x), countOneBits(~(vec3<u32>(0u, global1.x, arg_0) & vec3<u32>(arg_0, 33977u, 61806u))), 3638u == ~max(global1.x, global1.x)) % vec3<u32>(32u));
}

fn func_2() -> Struct_2 {
    global1 = select(~vec3<u32>(~48489u, _wgslsmith_add_u32(_wgslsmith_mod_u32(global1.x, global1.x), abs(4294967295u)), global1.x), _wgslsmith_clamp_vec3_u32(func_3(~global1.x), ~firstLeadingBit(vec3<u32>(0u, 1u, 4294967295u)), ~(vec3<u32>(0u, global1.x, global1.x) | vec3<u32>(0u, global1.x, global1.x))) >> (vec3<u32>(~14335u, 4294967295u, ~global1.x) % vec3<u32>(32u)), select(select(vec3<bool>(true, true, any(global0.a.xz)), !global0.a.wxy, !select(global0.a.xzw, global0.a.xxx, vec3<bool>(global0.a.x, false, global0.a.x))), select(vec3<bool>(true, all(global0.a), true), select(global0.a.wyz, global0.a.wzy, global0.a.zzx), any(!global0.a)), all(select(vec4<bool>(true, true, global0.a.x, false), global0.a, vec4<bool>(global0.a.x, global0.a.x, global0.a.x, global0.a.x)))));
    var var_0 = abs(global1.x);
    global1 = vec3<u32>(_wgslsmith_mult_u32(global1.x, ~(~2312u)) >> (_wgslsmith_add_u32(global1.x, global1.x) % 32u), firstTrailingBit(global1.x), reverseBits(1u));
    let var_1 = Struct_2(select(!vec4<bool>(all(global0.a), false, any(vec4<bool>(true, global0.a.x, false, true)), all(global0.a)), select(vec4<bool>(global0.b.x <= 1015f, true, true, true), vec4<bool>(global0.a.x, global1.x >= global1.x, global0.a.x, global0.a.x), !vec4<bool>(false, global0.a.x, global0.a.x, global0.a.x)), global0.a.x), _wgslsmith_f_op_vec4_f32(trunc(global0.b)));
    let var_2 = reverseBits(~reverseBits(~u_input.a.x) ^ -(~select(u_input.a.x, 74535i, var_1.a.x)));
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_2 {
    var var_0 = global0.b.x;
    global1 = ~(~(~(~func_3(global1.x))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-160f))))));
    let var_2 = Struct_1(!(!global0.a.x), vec3<bool>(global0.a.x, all(vec3<bool>(!arg_1.x, arg_0.a.x, any(vec4<bool>(false, arg_1.x, false, global0.a.x)))), 1i != ~firstTrailingBit(-1i)));
    global0 = Struct_2(select(arg_0.a, select(vec4<bool>(true, arg_0.a.x, global0.a.x, any(vec2<bool>(true, var_2.b.x))), !global0.a, !arg_0.a.x), true), _wgslsmith_f_op_vec4_f32(-global0.b));
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec4<bool>) -> u32 {
    let var_0 = any(!select(vec4<bool>(global1.x >= 4294967295u, !arg_2.b.x, arg_0.a, !arg_3.x), global0.a, !arg_3));
    let var_1 = vec3<u32>(~1u, global1.x, ~global1.x);
    global0 = func_4(func_2(), vec2<bool>(true, arg_1.x));
    let var_2 = ~abs(~18601u);
    let var_3 = arg_3.x;
    return 1u;
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = ~(~arg_1.x);
    let var_1 = Struct_1(func_4(Struct_2(func_2().a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b))), arg_2.b.xy).a.x, arg_2.b);
    let var_2 = vec4<i32>(i32(-1i) * -2147483647i, u_input.a.x, reverseBits(i32(-1i) * -57181i), select(2147483647i, u_input.a.x, all(func_4(func_4(Struct_2(vec4<bool>(arg_2.a, true, true, true), global0.b), vec2<bool>(global0.a.x, true)), arg_2.b.zz).a)));
    let var_3 = 42702u;
    let var_4 = vec2<bool>(any(global0.a.zxw), any(select(!global0.a, vec4<bool>(var_1.b.x, !var_1.a, false, !arg_0.a), false || var_1.b.x)));
    return arg_2;
}

fn func_6(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_2 {
    var var_0 = arg_0;
    global0 = Struct_2(!(!vec4<bool>(arg_0.b.x, var_0.b.x, true, u_input.a.x != -1i)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global0.b))), vec4<f32>(global0.b.x, global0.b.x, global0.b.x, _wgslsmith_f_op_f32(global0.b.x - 319f)), all(!func_4(Struct_2(global0.a, global0.b), var_0.b.yz).a.zwx))));
    global1 = select(~func_3(global1.x), min(~min(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, global1.x, global1.x), vec3<u32>(1u, 26647u, global1.x)), vec3<u32>(0u, 1u, 3097u)), ~_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, global1.x, 55266u), vec3<u32>(global1.x, global1.x, global1.x)), min(vec3<u32>(global1.x, global1.x, 1u), vec3<u32>(32920u, global1.x, 19536u)))), var_0.b);
    var var_1 = Struct_3(func_3(~global1.x).x <= firstLeadingBit(~1u));
    let var_2 = vec3<bool>(!(!(!global0.a.x)), true, false);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(Struct_3(true), select(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 15417u, 1u), vec3<u32>(2131u, 38481u, global1.x)), vec3<u32>(global1.x | global1.x, func_1(Struct_1(global0.a.x, vec3<bool>(true, global0.a.x, global0.a.x)), global0.a.xwy, Struct_1(true, global0.a.yxy), global0.a), func_3(1u).x), !(global0.b.x >= global0.b.x)), Struct_1(_wgslsmith_f_op_f32(-global0.b.x) > _wgslsmith_f_op_f32(f32(-1f) * -390f), func_4(Struct_2(global0.a, global0.b), global0.a.xw).a.yyx), -u_input.a.x), _wgslsmith_mult_vec3_i32(vec3<i32>(-(~(-2147483647i)), u_input.a.x, -u_input.a.x << (1u % 32u)), -vec3<i32>(min(u_input.a.x, u_input.a.x), ~u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a, u_input.a))));
    let var_1 = _wgslsmith_f_op_f32(step(-720f, var_0.b.x));
    global1 = ~func_3(~(~_wgslsmith_div_u32(85841u, 1u)));
    var var_2 = u_input.a.x;
    var_2 = -u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_3(global1.x).x, u_input.a, _wgslsmith_f_op_f32(-341f * _wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -446f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0.b.wzw)) * var_0.b.zxx));
}

