struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 9>;

var<private> global2: vec3<f32> = vec3<f32>(1000f, 1000f, 931f);

var<private> global3: Struct_1 = Struct_1(4294967295u);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<bool>, arg_3: vec4<f32>) -> vec3<f32> {
    var var_0 = _wgslsmith_clamp_vec2_i32(-vec2<i32>(-14237i, 1i), ~((_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(-2147483647i, arg_0), vec2<i32>(u_input.c, u_input.c)) >> (vec2<u32>(global3.a, u_input.a.x) % vec2<u32>(32u))) >> (u_input.a.xy % vec2<u32>(32u))), vec2<i32>(-1i) * -vec2<i32>(-2147483647i, 32502i));
    global3 = global1[_wgslsmith_index_u32(max(global3.a, 86608u >> (0u % 32u)), 9u)];
    var_0 = select(vec2<i32>(-1i, arg_0) << (select(~u_input.a.wx, _wgslsmith_mult_vec2_u32(abs(vec2<u32>(global3.a, 31580u)), vec2<u32>(u_input.a.x, 1u) ^ vec2<u32>(1u, 63436u)), true) % vec2<u32>(32u)), reverseBits(select(~(vec2<i32>(-25323i, 67936i) ^ vec2<i32>(var_0.x, -11847i)), -(vec2<i32>(u_input.c, arg_0) ^ vec2<i32>(arg_0, 0i)), true)), !vec2<bool>(any(arg_2) | (u_input.a.x > global3.a), any(!vec4<bool>(global0.c, arg_2.x, true, arg_2.x))));
    var var_1 = Struct_2(Struct_1(global0.a.a), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(min(802f, global0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.b.x - -514f))), _wgslsmith_f_op_f32(step(465f, _wgslsmith_f_op_f32(step(771f, global2.x))))))), all(!arg_2));
    var var_2 = vec2<bool>(false, _wgslsmith_f_op_f32(trunc(var_1.b.x)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-618f - -683f))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-310f, _wgslsmith_f_op_f32(sign(global2.x)), global2.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(arg_1)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1687f, arg_1.x, -1532f)), !arg_2.zxw)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1369f, global2.x, global0.b.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, global0.b.x, global0.b.x) + arg_1)))))));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>) -> bool {
    let var_0 = 60865u;
    global3 = global1[_wgslsmith_index_u32(global0.a.a, 9u)];
    var var_1 = vec4<u32>(12045u, 0u, 68105u, 20403u);
    var_1 = ~u_input.a;
    let var_2 = -(~(-(~vec3<i32>(u_input.c, -2889i, arg_0) & -vec3<i32>(arg_0, u_input.c, 0i))));
    return global0.c;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_clamp_u32(u_input.b | 1u, abs(16065u), global0.a.a)), _wgslsmith_f_op_vec2_f32(global0.b + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.b - _wgslsmith_f_op_vec2_f32(-global0.b)) - _wgslsmith_f_op_vec2_f32(exp2(global0.b)))), true);
    global0 = Struct_2(Struct_1(4294967295u), vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(floor(138f))), true);
    var_0 = Struct_2(Struct_1(~(~global3.a)), vec2<f32>(var_0.b.x, -406f), func_4(-2147483647i, _wgslsmith_f_op_vec3_f32(func_3(-16484i, vec3<f32>(1f, 1762f, var_0.b.x), vec4<bool>(false, var_0.c & global0.c, true, -7163i <= u_input.c), vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_div_f32(1000f, global2.x), _wgslsmith_f_op_f32(1344f + global0.b.x))))));
    let var_1 = _wgslsmith_div_f32(-703f, global2.x);
    global0 = Struct_2(Struct_1(firstLeadingBit(2957u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.b.x, var_1))) * global2.xy), func_4(2147483647i, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -196f), -637f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - global2.x)))));
    return Struct_2(Struct_1(u_input.b), vec2<f32>(global2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))))), var_0.c);
}

fn func_1(arg_0: bool, arg_1: vec2<i32>) -> vec2<f32> {
    global0 = func_2();
    global0 = Struct_2(global1[_wgslsmith_index_u32(~0u >> (~u_input.b % 32u), 9u)], global0.b, arg_0);
    var var_0 = ~(~(_wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(1i, u_input.c, 0i)), vec3<i32>(arg_1.x, -26490i, u_input.c)) & vec3<i32>(abs(arg_1.x), arg_1.x, arg_1.x)));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(-global2.x), -149f) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, -107f)), 555f, 616f)));
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global0.b * vec2<f32>(-418f, _wgslsmith_div_f32(_wgslsmith_div_f32(global2.x, -902f), _wgslsmith_div_f32(global2.x, global2.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global1[_wgslsmith_index_u32(~0u, 9u)], _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_f32(320f * 1421f) != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1927f, global2.x)), ~vec2<i32>(firstTrailingBit(1i), 2147483647i))), all(vec3<bool>(u_input.c < u_input.c, !global0.c, all(vec3<bool>(true, true, false)) && !global0.c)));
    global2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.x, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.x))))))));
    global0 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3.a, u_input.b), 9u)], global0.b, _wgslsmith_div_i32(~0i, u_input.c) != u_input.c);
    var var_0 = vec4<u32>(firstTrailingBit(5446u), ~global3.a, ~0u, ~4294967295u);
    var var_1 = Struct_2(Struct_1(var_0.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.x, global2.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(global0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -813f)) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global2.xx))))), select(326f > global2.x, true, false));
    let var_2 = 278f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-740f, var_2, global2.x, -391f), vec4<f32>(-357f, global0.b.x, var_2, var_1.b.x)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1019f), _wgslsmith_f_op_f32(-972f - -772f), _wgslsmith_f_op_f32(floor(var_1.b.x)), -994f))), -abs(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, u_input.c, -89444i), vec3<i32>(1i, -72967i, u_input.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, global0.b.x, var_1.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-192f, 1065f, global0.b.x)))))), _wgslsmith_div_u32(~(~32591u), u_input.b) ^ ~24974u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(u_input.c, _wgslsmith_f_op_vec3_f32(func_3(u_input.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(195f, -395f, global0.b.x)), vec4<bool>(true, global0.c, false, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -376f, 1000f, global0.b.x)))), !vec4<bool>(true, var_1.c, false, true), vec4<f32>(_wgslsmith_f_op_f32(global2.x * var_2), _wgslsmith_f_op_f32(max(-1000f, 2001f)), -575f, -656f))) + _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 1445f, 403f)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.x, global2.x, global0.b.x))))))));
}

