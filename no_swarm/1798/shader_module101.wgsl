struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 5>;

var<private> global1: Struct_1 = Struct_1(172f, vec2<bool>(true, true), 821f, 1012f);

var<private> global2: vec2<f32> = vec2<f32>(-870f, -929f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    global1 = arg_0;
    var var_0 = ~reverseBits(-1i);
    var var_1 = ~vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(1u, ~u_input.b.x), 0u), _wgslsmith_clamp_u32(abs(u_input.b.x), 39469u, u_input.a.x), _wgslsmith_clamp_u32(~(u_input.a.x ^ u_input.b.x), ~u_input.a.x, ~_wgslsmith_mult_u32(55666u, u_input.b.x)));
    let var_2 = firstLeadingBit(reverseBits(-reverseBits(_wgslsmith_div_i32(13668i, -4487i))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -601f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c)))) - -218f), arg_0.b, -2294f, _wgslsmith_div_f32(-894f, global0[_wgslsmith_index_u32(u_input.b.x, 5u)]));
    return var_3.b;
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(961f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 5u)]), 1628f), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1008f, -564f, global1.c)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.d, 581f, 606f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    let var_1 = max(reverseBits(firstLeadingBit(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 1u, 4294967295u), vec3<u32>(0u, 4294967295u, u_input.b.x)))), vec3<u32>(select(_wgslsmith_mult_u32(u_input.b.x, u_input.a.x) & firstLeadingBit(u_input.b.x), u_input.b.x, arg_0), ~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.b.x, 1u)), vec2<u32>(u_input.a.x, u_input.b.x)), firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b.x, u_input.a.x), ~u_input.a.x))));
    var var_2 = select(!(!select(select(vec4<bool>(false, true, global1.b.x, arg_0), vec4<bool>(true, true, global1.b.x, false), true), vec4<bool>(false, global1.b.x, true, true), !vec4<bool>(true, true, false, arg_0))), !vec4<bool>(!arg_0 != true, func_2(Struct_1(global0[_wgslsmith_index_u32(0u, 5u)], vec2<bool>(global1.b.x, false), global0[_wgslsmith_index_u32(var_1.x, 5u)], 1566f)).x, global1.b.x, any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), arg_0))), vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 5u)]) * _wgslsmith_f_op_f32(max(global2.x, var_0.x))) <= _wgslsmith_f_op_f32(f32(-1f) * -177f), true, false, arg_0));
    global0 = array<f32, 5>();
    global2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2361f) + -937f) - global1.a), _wgslsmith_f_op_f32(round(-480f)));
    return _wgslsmith_f_op_f32(select(1370f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1.x, 5u)]) * _wgslsmith_f_op_f32(684f * -1676f)))) - 615f), u_input.a.x < u_input.a.x));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    global2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(459f, -916f) - _wgslsmith_f_op_f32(1000f * arg_2.c)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.x * 314f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a, -1096f) + global0[_wgslsmith_index_u32(0u, 5u)]))), -1559f, arg_3.b.x && (false & global1.b.x))));
    let var_0 = min(_wgslsmith_mult_vec3_u32(~firstTrailingBit(_wgslsmith_mod_vec3_u32(arg_0, vec3<u32>(4294967295u, u_input.a.x, 5488u))), ~(_wgslsmith_sub_vec3_u32(vec3<u32>(1999u, u_input.a.x, 4294967295u), vec3<u32>(45864u, 4294967295u, arg_0.x)) >> ((vec3<u32>(arg_0.x, arg_0.x, arg_0.x) ^ vec3<u32>(2796u, 134576u, 24768u)) % vec3<u32>(32u)))), vec3<u32>(abs(~(~98723u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(arg_0, arg_0), _wgslsmith_add_u32(4294967295u, ~4294967295u)), 54298u));
    let var_1 = 2147483647i;
    var var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(var_0, arg_0), firstTrailingBit(arg_0.x), arg_0.x), _wgslsmith_add_vec4_u32(~countOneBits(vec4<u32>(1u, u_input.b.x, 4294967295u, var_0.x)), abs(firstLeadingBit(vec4<u32>(4294967295u, 1u, arg_0.x, 51866u))) & select(vec4<u32>(u_input.a.x, 43274u, 0u, 8365u), max(vec4<u32>(arg_0.x, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(arg_0.x, arg_0.x, var_0.x, arg_0.x)), global0[_wgslsmith_index_u32(u_input.a.x, 5u)] == -984f)));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c, arg_1.x, 1205f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d, arg_1.x, global0[_wgslsmith_index_u32(var_2.x, 5u)]) + vec3<f32>(arg_1.x, global2.x, arg_3.d)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-169f, 1930f, arg_3.d) + vec3<f32>(global1.d, 357f, global0[_wgslsmith_index_u32(4294967295u, 5u)])), false)))) - vec3<f32>(-1966f, _wgslsmith_f_op_f32(-563f + _wgslsmith_f_op_f32(1619f + 543f)), _wgslsmith_f_op_f32(arg_1.x - -483f)));
    return Struct_2(~4294967295u);
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> i32 {
    global0 = array<f32, 5>();
    let var_0 = func_4(vec3<u32>(~countOneBits(u_input.b.x), 4294967295u, ~_wgslsmith_mod_u32(0u, u_input.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.d), global2.x) + vec2<f32>(_wgslsmith_div_f32(global2.x, global1.d), global1.d))), Struct_1(global0[_wgslsmith_index_u32(1u, 5u)], func_2(Struct_1(_wgslsmith_f_op_f32(trunc(global1.a)), select(vec2<bool>(false, global1.b.x), vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(global1.b.x, true)), _wgslsmith_f_op_f32(global2.x + global1.a), _wgslsmith_f_op_f32(select(global2.x, global1.c, arg_0)))), _wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(2455f)) - -1317f) - global2.x)), Struct_1(_wgslsmith_div_f32(-219f, 667f), select(!vec2<bool>(global1.b.x, global1.b.x), vec2<bool>(true, all(vec3<bool>(global1.b.x, arg_0, global1.b.x))), vec2<bool>(false, !global1.b.x)), _wgslsmith_f_op_f32(-357f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global1.b.x)) + _wgslsmith_f_op_f32(-293f - -1817f))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.a.x, max(32512u, 4294967295u)), 5u)])));
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-905f, global1.d) * vec2<f32>(global2.x, global2.x)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 1000f)))))));
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_f32(-388f * 1125f);
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 34237u, u_input.a.x, u_input.b.x)), _wgslsmith_mod_u32(45711u, 66362u), 0u, 1u), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(50114u, u_input.b.x, u_input.a.x) >> (vec3<u32>(u_input.b.x, 14091u, 50625u) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(u_input.b.x, 4577u, u_input.a.x))), ~u_input.a.x & 0u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 37376u, 35038u), vec3<u32>(0u, 1u, 44440u)), ~4294967295u), reverseBits(min(0u, u_input.b.x)))), -vec4<i32>(func_1(global1.b.x, !vec4<bool>(false, global1.b.x, false, true)), 1i, 1i, _wgslsmith_mult_i32(min(12718i, 0i), -64279i)), _wgslsmith_mult_i32(~1i, ~(~(21942i >> (u_input.b.x % 32u)))));
}

