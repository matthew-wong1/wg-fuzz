struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2;

var<private> global2: i32 = 0i;

var<private> global3: bool;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec3<bool>) -> u32 {
    global3 = select(any(vec2<bool>(true, true)), max(1u, 64572u) >= arg_2.c, true);
    var var_0 = !select(!global1.a, !(!(!vec4<bool>(false, arg_3.x, arg_1.x, true))), arg_1.x);
    let var_1 = ~vec3<u32>(_wgslsmith_mod_u32(arg_2.c, 69708u), ~u_input.a, _wgslsmith_div_u32(select(32366u, u_input.a, arg_2.b > arg_2.a), 26651u));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, 1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1353f, -924f)))));
    var_2 = arg_2.d.wyw;
    return 4294967295u;
}

fn func_1() -> i32 {
    global3 = (~_wgslsmith_mod_u32(~u_input.a, 4294967295u) >= min(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, u_input.a, global0.c), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)), func_2(vec2<f32>(684f, global0.d.x), global1.a, Struct_1(-20792i, global0.b, 0u, global0.d), vec3<bool>(global1.a.x, false, false))), _wgslsmith_sub_u32(~global0.c, abs(0u)))) & true;
    global2 = _wgslsmith_sub_i32(global0.a << (59038u % 32u), _wgslsmith_mult_i32(0i, global0.a));
    global2 = ~(_wgslsmith_div_i32(104646i, i32(-1i) * -global0.a) & global0.b);
    var var_0 = global0.a;
    let var_1 = Struct_2(!vec4<bool>(any(!global1.a.yzw), false, true, global1.a.x));
    return global0.b;
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: i32) -> Struct_1 {
    global3 = global1.a.x;
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.d.x, _wgslsmith_f_op_f32(trunc(244f)), global1.a.x && false)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.d.x)) - _wgslsmith_f_op_f32(sign(global0.d.x))))), _wgslsmith_f_op_f32(abs(global0.d.x)));
    global2 = 0i;
    var var_1 = Struct_1(_wgslsmith_mod_i32(~((-23048i | global0.a) >> (global0.c % 32u)), -_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -84373i, arg_1) << (vec3<u32>(0u, u_input.a, 0u) % vec3<u32>(32u)), vec3<i32>(-8089i, arg_2, -2147483647i))), i32(-1i) * -arg_1, _wgslsmith_add_u32(u_input.a | ~_wgslsmith_div_u32(0u, global0.c), min(~(~0u), ~4294967295u << (global0.c % 32u))), _wgslsmith_f_op_vec4_f32(-global0.d));
    global0 = Struct_1(arg_1, global0.a, var_1.c, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-global0.d))));
    return Struct_1(-1i, countOneBits(1i), _wgslsmith_add_u32(8938u, ~u_input.a), vec4<f32>(112f, -1039f, -352f, -389f));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: vec3<bool>) -> Struct_2 {
    global1 = Struct_2(global1.a);
    let var_0 = func_3(false, arg_0.b, min(2147483647i, 0i)).d.x;
    var var_1 = arg_3.x;
    global2 = 68580i;
    let var_2 = func_3(any(arg_3.yy), ~global0.b, _wgslsmith_add_i32(_wgslsmith_add_i32(global0.a, arg_0.a), _wgslsmith_dot_vec2_i32(max(firstLeadingBit(vec2<i32>(global0.a, arg_0.b)), -vec2<i32>(40279i, -1i)), _wgslsmith_div_vec2_i32(abs(vec2<i32>(-26691i, global0.a)), firstTrailingBit(vec2<i32>(2147483647i, arg_0.a))))));
    return Struct_2(select(global1.a, !vec4<bool>(!arg_3.x, any(arg_3.zz), arg_3.x, !global1.a.x), false));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = arg_0;
    global3 = false && !(-1139f <= global0.d.x);
    global2 = 2147483647i;
    var var_1 = Struct_1(global0.b, global0.b, abs(u_input.a | 1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(global0.d, global0.d)), global0.d, select(vec4<bool>(var_0.a.x, global1.a.x, arg_0.a.x, false), var_0.a, global1.a))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, global0.d.x, global0.d.x, global0.d.x)))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1142f, global0.d.x, _wgslsmith_div_f32(global0.d.x, global0.d.x), _wgslsmith_div_f32(global0.d.x, global0.d.x)), global0.d))));
    var var_2 = ~vec2<i32>(_wgslsmith_add_i32(global0.a, func_3(var_0.a.x, _wgslsmith_mod_i32(11928i, global0.a), ~(-1i)).a), (func_3(false, -2147483647i, -13571i).b | _wgslsmith_mult_i32(35019i, 0i)) & (select(global0.a, 0i, false) ^ 16872i));
    return func_3(true, _wgslsmith_dot_vec4_i32(~(~_wgslsmith_mult_vec4_i32(vec4<i32>(28941i, global0.a, -40236i, var_2.x), vec4<i32>(-12004i, global0.b, var_1.a, -36450i))), select(vec4<i32>(var_2.x, var_1.a, -29483i, 48742i), ~vec4<i32>(0i, var_2.x, 7985i, 36362i), !var_0.a)), _wgslsmith_div_i32(min(max(0i, min(20713i, 0i)), ~func_1()), -(~(-33775i)) ^ _wgslsmith_dot_vec3_i32(~vec3<i32>(0i, var_2.x, var_1.b), _wgslsmith_add_vec3_i32(vec3<i32>(global0.a, -1i, 1i), vec3<i32>(0i, global0.b, 0i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, 18098u, global0.c) >> (vec3<u32>(u_input.a, global0.c, 32418u) % vec3<u32>(32u)), countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, global0.c, global0.c), vec3<u32>(1u, global0.c, u_input.a)))));
    var_0 = _wgslsmith_mod_vec3_u32(~countOneBits(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 4294967295u, global0.c), vec3<u32>(17462u, u_input.a, global0.c), vec3<u32>(40437u, 1u, var_0.x)), vec3<u32>(13410u, 1u, global0.c))), ~firstLeadingBit(~(~vec3<u32>(global0.c, 0u, u_input.a))));
    global2 = global0.a;
    let var_1 = func_5(func_4(func_3(any(!global1.a), func_1(), global0.a), _wgslsmith_f_op_f32(-260f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(239f))))), 114f, vec3<bool>(0u != _wgslsmith_sub_u32(4294967295u, global0.c), global1.a.x, false)));
    let var_2 = countOneBits(abs(vec4<u32>(u_input.a, u_input.a, ~_wgslsmith_clamp_u32(var_0.x, 93816u, u_input.a), func_3(global1.a.x, global0.a, 29898i).c)));
    var var_3 = ~firstLeadingBit(var_1.b);
    let var_4 = 1000f;
    var var_5 = func_3(all(func_4(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -567f) * _wgslsmith_f_op_f32(var_1.d.x * var_1.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -123f) + -3008f), vec3<bool>(global1.a.x, any(vec2<bool>(global1.a.x, true)), var_1.d.x <= -850f)).a.xy), global0.b, abs(var_1.b));
    var var_6 = vec4<bool>(global1.a.x, !(true && (var_2.x > _wgslsmith_sub_u32(var_2.x, 44954u))), any(vec3<bool>(global1.a.x, true, !(true & global1.a.x))), !any(global1.a.yw));
    let x = u_input.a;
    s_output = StorageBuffer(~1u, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.d.zww)))), func_5(func_4(func_5(Struct_2(vec4<bool>(var_6.x, true, global1.a.x, var_6.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-281f * var_1.d.x)), _wgslsmith_f_op_f32(879f - -2338f), global1.a.yxy)).a);
}

