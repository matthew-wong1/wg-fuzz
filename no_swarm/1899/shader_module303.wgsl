struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 9>;

var<private> global1: Struct_3 = Struct_3(64130u, vec3<f32>(-301f, 755f, 775f));

var<private> global2: vec3<f32>;

var<private> global3: array<f32, 17> = array<f32, 17>(-387f, -537f, 279f, -128f, 695f, -439f, -673f, 292f, 1450f, -470f, 299f, 2384f, -239f, -540f, -540f, -1492f, -342f);

var<private> global4: Struct_3 = Struct_3(4294967295u, vec3<f32>(-1236f, -1270f, 1131f));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32) -> vec3<bool> {
    var var_0 = _wgslsmith_mult_vec3_i32(arg_1.b.zzx, -vec3<i32>(-15990i, -15955i, 26093i));
    var var_1 = _wgslsmith_f_op_f32(global4.b.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(global1.a, 17u)])), _wgslsmith_f_op_f32(f32(-1f) * -567f)))))));
    var var_2 = vec4<bool>(!(true && !arg_0.x), all(!select(select(vec2<bool>(arg_0.x, arg_0.x), arg_0, false), select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(arg_0.x, true), true), arg_0.x)), arg_0.x, arg_0.x && false);
    let var_3 = _wgslsmith_mod_i32(2147483647i, ~u_input.a);
    var var_4 = !select(vec4<bool>(true || any(vec4<bool>(true, var_2.x, arg_0.x, false)), !(27184i == arg_1.c), any(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), true), select(select(select(vec4<bool>(true, arg_0.x, true, false), vec4<bool>(false, var_2.x, true, false), vec4<bool>(var_2.x, var_2.x, var_2.x, arg_0.x)), !vec4<bool>(var_2.x, arg_0.x, arg_0.x, var_2.x), vec4<bool>(true, false, arg_0.x, true)), select(vec4<bool>(true, true, var_2.x, true), select(vec4<bool>(true, true, arg_0.x, var_2.x), vec4<bool>(false, true, true, var_2.x), vec4<bool>(var_2.x, arg_0.x, arg_0.x, false)), select(vec4<bool>(arg_0.x, var_2.x, true, arg_0.x), vec4<bool>(false, false, true, false), false)), _wgslsmith_dot_vec2_u32(u_input.c, arg_1.d.xy) == u_input.c.x), !select(arg_0.x, all(var_2.xyz), var_3 != u_input.a));
    return vec3<bool>(arg_0.x, arg_0.x, !(!(!var_2.x) || false));
}

fn func_2(arg_0: vec2<f32>) -> Struct_2 {
    global2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(global4.a, 17u)], 650f), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_div_f32(-580f, arg_0.x))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global3[_wgslsmith_index_u32(83630u, 17u)], arg_0.x, global2.x)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1015f)) * global2.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1085f * global4.b.x), _wgslsmith_f_op_f32(f32(-1f) * -126f))), _wgslsmith_f_op_f32(floor(arg_0.x))), select(select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false), vec3<bool>(false, false, false), u_input.a >= 2147483647i), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), false), !func_3(vec2<bool>(true, true), Struct_1(-367f, vec4<i32>(u_input.a, u_input.a, -55050i, u_input.a), u_input.a, global0[_wgslsmith_index_u32(global4.a, 9u)]), u_input.c.x), !select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), true))));
    let var_0 = select(max(vec3<u32>(global1.a, 20253u, 0u), firstLeadingBit(select(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, global1.a, 1u), vec3<u32>(1u, 5882u, u_input.c.x)), countOneBits(vec3<u32>(71909u, global1.a, 25273u)), func_3(vec2<bool>(false, false), Struct_1(340f, vec4<i32>(u_input.a, 1i, u_input.a, u_input.a), u_input.a, vec3<u32>(global1.a, 0u, u_input.b)), global4.a)))), global0[_wgslsmith_index_u32(abs(reverseBits(_wgslsmith_div_u32(global4.a, u_input.b))), 9u)] & ~(~(vec3<u32>(global1.a, global1.a, global4.a) ^ global0[_wgslsmith_index_u32(65305u, 9u)])), vec3<bool>(true, false, true));
    var var_1 = true;
    var var_2 = !((_wgslsmith_add_i32(u_input.a, u_input.a) > _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, -2147483647i), ~vec2<i32>(-40346i, u_input.a))) && true);
    let var_3 = var_0 & countOneBits(vec3<u32>(7732u, _wgslsmith_dot_vec2_u32(vec2<u32>(global4.a, u_input.b), u_input.c >> (vec2<u32>(global4.a, global1.a) % vec2<u32>(32u))), ~global4.a));
    return Struct_2(_wgslsmith_mod_u32(var_0.x, 63120u), vec4<bool>(true, true, (_wgslsmith_div_f32(global3[_wgslsmith_index_u32(var_0.x, 17u)], global3[_wgslsmith_index_u32(0u, 17u)]) > global2.x) | !any(vec3<bool>(true, true, true)), all(!func_3(vec2<bool>(true, false), Struct_1(global2.x, vec4<i32>(u_input.a, u_input.a, u_input.a, -1i), 7475i, vec3<u32>(var_3.x, var_3.x, var_0.x)), u_input.c.x).zx)), abs(~_wgslsmith_mult_u32(global4.a, 75204u)) & _wgslsmith_add_u32(~var_0.x, 12411u), var_3.x);
}

fn func_1() -> Struct_3 {
    var var_0 = func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global4.b.x, _wgslsmith_f_op_f32(ceil(global2.x))), -1518f) + _wgslsmith_f_op_vec2_f32(step(global2.yy, vec2<f32>(-194f, _wgslsmith_f_op_f32(f32(-1f) * -304f))))));
    var var_1 = u_input.a >> (~_wgslsmith_add_u32(func_2(global1.b.yz).c, abs(~45849u)) % 32u);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(step(global2.x, 192f)), abs(_wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, 0i, u_input.a, 6752i)), vec4<i32>(u_input.a, 0i, u_input.a, u_input.a)) ^ (min(vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a), vec4<i32>(u_input.a, -59162i, u_input.a, 1i)) ^ -vec4<i32>(3003i, 43222i, -1i, u_input.a))), max(_wgslsmith_clamp_i32(u_input.a, firstTrailingBit(u_input.a), -(~u_input.a)), 2147483647i), ~firstTrailingBit(~select(vec3<u32>(1u, 16230u, 72996u), global0[_wgslsmith_index_u32(85412u, 9u)], true)));
    var var_3 = false;
    var var_4 = Struct_3(~reverseBits(~var_2.d.x), global1.b);
    return Struct_3(30123u, global4.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    global3 = array<f32, 17>();
    let var_1 = func_1();
    var var_2 = u_input.b;
    var var_3 = Struct_2(0u, !(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), func_2(global1.b.yz).b)), func_1().a, _wgslsmith_dot_vec3_u32(~firstLeadingBit(vec3<u32>(global1.a, 3924u, 15094u)), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_2(_wgslsmith_f_op_vec2_f32(floor(global4.b.yx))).d, 10271u | func_2(var_1.b.yx).a), 9u)]));
    let x = u_input.a;
    s_output = StorageBuffer(global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global1.b.x, global1.b.x)))))), _wgslsmith_f_op_vec3_f32(ceil(global1.b)));
}

