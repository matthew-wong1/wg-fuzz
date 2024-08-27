struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: i32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: i32 = 9605i;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> vec4<bool> {
    var var_0 = !all(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true))));
    let var_1 = select(true, !any(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), false)), true);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - global0.x));
    var_0 = var_1 || select(all(select(vec4<bool>(true, var_1, var_1, true), vec4<bool>(true, true, true, var_1), false && var_1)), true, !(!var_1));
    let var_3 = global0.x;
    return vec4<bool>(false, true, true, !var_1);
}

fn func_2(arg_0: f32) -> Struct_3 {
    let var_0 = abs(reverseBits(~vec2<u32>(reverseBits(0u), _wgslsmith_div_u32(45279u, 43866u))));
    global1 = ~(-2147483647i);
    let var_1 = Struct_3(vec2<i32>(-22039i, i32(-1i) * -2147483647i), Struct_2(~(~(-u_input.a)), Struct_1(min(_wgslsmith_div_i32(u_input.a.x, 4718i), 49510i), 214f), u_input.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.zx)))), ~(~countOneBits(4294967295u)));
    let var_2 = Struct_1(abs(_wgslsmith_div_i32(-1i, -812i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(var_1.b.d.x - -1000f)))))));
    var var_3 = !func_3();
    return var_1;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(999f + _wgslsmith_f_op_f32(500f + -514f))));
    let var_1 = arg_3;
    var var_2 = _wgslsmith_div_vec2_u32(~(~(vec2<u32>(arg_1.c, 4294967295u) | vec2<u32>(1u, 29936u))) >> (select(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.c, 38623u), vec2<u32>(41250u, 42849u)) & _wgslsmith_div_vec2_u32(vec2<u32>(arg_1.c, 10961u), vec2<u32>(u_input.b, arg_1.c)), ~(~vec2<u32>(u_input.b, 4294967295u)), !func_3().yz) % vec2<u32>(32u)), firstLeadingBit(~(~vec2<u32>(u_input.b, 4294967295u))));
    global0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.b.b.b))), arg_0.x, _wgslsmith_f_op_f32(round(-212f)))));
    let var_3 = 1u;
    return 2147483647i;
}

fn func_1() -> u32 {
    var var_0 = abs(vec3<i32>(func_4(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, global0.x, global0.x, global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, 415f)))), func_2(_wgslsmith_f_op_f32(sign(global0.x))), vec2<f32>(-1048f, _wgslsmith_f_op_f32(abs(-408f))), ~u_input.a.x >= 41854i), -28757i, _wgslsmith_sub_i32(-2147483647i, -28986i)));
    var_0 = countOneBits(vec3<i32>(-2147483647i, 0i, ~u_input.a.x << (u_input.b % 32u)) << (reverseBits(~vec3<u32>(u_input.b, u_input.b, u_input.b)) % vec3<u32>(32u)));
    let var_1 = Struct_1(var_0.x, global0.x);
    global1 = abs(var_0.x);
    var var_2 = Struct_4(var_0.x, false);
    return min(min(~u_input.b, ~reverseBits(u_input.b)), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(_wgslsmith_clamp_i32(0i, _wgslsmith_div_i32(-u_input.a.x, -u_input.a.x), -28917i) | firstTrailingBit(firstTrailingBit(firstTrailingBit(-2147483647i))), u_input.a.x, ~1i);
    var var_1 = var_0.x;
    var var_2 = ~_wgslsmith_sub_u32(~(~func_1()), select(u_input.b, u_input.b, any(vec3<bool>(true, true, true))));
    var_2 = u_input.b;
    var var_3 = ~_wgslsmith_div_vec3_u32(vec3<u32>(~u_input.b, u_input.b, ~1u) ^ abs(vec3<u32>(u_input.b, u_input.b, 36270u) ^ vec3<u32>(20166u, 57674u, u_input.b)), ~(~vec3<u32>(1405u, u_input.b, u_input.b)));
    var var_4 = _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.x * global0.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<u32>(var_3.x, max(50408u << (0u % 32u), firstTrailingBit(var_3.x)), ~(~var_3.x)), reverseBits(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 30495u, var_3.x), vec3<u32>(var_3.x, 59050u, u_input.b)))), select(vec3<bool>(true, true, true), vec3<bool>(u_input.a.x > -2147483647i, any(vec4<bool>(false, true, false, false)), false), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)))), global0.x, _wgslsmith_mult_vec4_i32(~(-vec4<i32>(u_input.a.x, -2147483647i, var_0.x, 26065i)), -(~vec4<i32>(u_input.a.x, 0i, var_0.x, 1i))) >> (_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, var_3.x, 1u), vec4<u32>(u_input.b, var_3.x, 7363u, 4294967295u)), vec4<u32>(5282u, var_3.x, u_input.b, u_input.b)), ~min(vec4<u32>(0u, 34557u, 25937u, 33279u), vec4<u32>(var_3.x, u_input.b, var_3.x, var_3.x))) % vec4<u32>(32u)), vec2<u32>(0u, abs(~var_3.x)));
}

