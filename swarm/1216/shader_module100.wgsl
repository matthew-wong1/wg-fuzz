struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: i32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<f32, 20> = array<f32, 20>(1072f, -387f, 1499f, 1026f, 498f, -594f, 1419f, -1796f, 128f, 677f, 427f, -1935f, 622f, 775f, 465f, 1249f, -919f, -1018f, 1767f, -389f);

var<private> global2: array<i32, 24>;

var<private> global3: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global4: array<f32, 9> = array<f32, 9>(378f, -1968f, -1081f, -1868f, -1218f, 1202f, 795f, 796f, -796f);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 4294967295u << (~u_input.a % 32u)), 20u)]), any(!vec3<bool>(false, global3.x, global3.x)));
    let var_1 = vec3<f32>(var_0.a, 1296f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1451f - -875f), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(50456u, 58836u, u_input.a, 0u) | vec4<u32>(0u, 9446u, u_input.a, global0.x), ~vec4<u32>(u_input.a, global0.x, u_input.a, 38924u)), 20u)])));
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-225f)) - -947f) - -1000f), any(!global3.wx));
    global3 = vec4<bool>(true, true, any(select(global3.ywz, vec3<bool>(true, true, false), global3.xzx)), var_0.b);
    global0 = ~vec4<u32>(u_input.a, ~(~57018u >> (countOneBits(u_input.a) % 32u)), ~(~(~u_input.a)), 1u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2068f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(global4[_wgslsmith_index_u32(abs(48341u), 9u)]))))));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), global3.x);
    global3 = vec4<bool>((~(~43795u) < ~_wgslsmith_div_u32(u_input.a, global0.x)) || (var_0.b || true), global3.x, !select(!any(global3.ww), false, false || !global3.x), select(all(vec4<bool>(!global3.x, false, var_0.a <= var_0.a, false)), arg_0.a.b || select(var_0.b, true, any(global3.wwz)), (global2[_wgslsmith_index_u32(global0.x, 24u)] >> (global0.x % 32u)) == select(-2147483647i, arg_0.b.x, true)));
    global0 = ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 0u, u_input.a, min(3152u, 4294967295u)), firstLeadingBit(~vec4<u32>(global0.x, 23072u, global0.x, 30041u))));
    global2 = array<i32, 24>();
    let var_1 = var_0;
    return arg_0.a;
}

fn func_1() -> u32 {
    let var_0 = func_2(Struct_2(Struct_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(63106u, u_input.a), 20u)]), false), vec3<i32>(-1i) * -vec3<i32>(830i, global2[_wgslsmith_index_u32(23047u, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)])));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(trunc(var_0.a))), !(!select(true, var_0.b, false))), vec3<i32>(-1i) * -(~firstTrailingBit(vec3<i32>(global2[_wgslsmith_index_u32(global0.x, 24u)], global2[_wgslsmith_index_u32(20149u, 24u)], global2[_wgslsmith_index_u32(0u, 24u)]))));
    global3 = vec4<bool>(var_1.a.b, any(vec2<bool>(false, var_1.a.b)), all(global3.zzw) | any(vec4<bool>(true, true, -1i >= global2[_wgslsmith_index_u32(u_input.a, 24u)], var_0.b || false)), global3.x);
    global4 = array<f32, 9>();
    var var_2 = select(-14657i | var_1.b.x, var_1.b.x, var_0.b);
    return ~63722u;
}

fn func_4(arg_0: f32, arg_1: Struct_2) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(217f * _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(global0.x, 9u)] * 645f)))), any(vec4<bool>(!arg_1.a.b, false, 1u >= select(75525u, 5795u, false), arg_1.a.b | true)));
    let var_1 = -28102i;
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-288f - -599f), arg_1.a.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-954f, -241f))) * vec2<f32>(-646f, arg_0)))))), abs(vec3<i32>(var_1 ^ -2147483647i, _wgslsmith_clamp_i32(-2147483647i, select(-5485i, -44739i, var_0.b), _wgslsmith_add_i32(1i, 0i)), firstTrailingBit(33015i))), max(select(_wgslsmith_sub_i32(var_1, var_1), ~73769i, true) << (1u % 32u), firstTrailingBit(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(~0u, 24u)], ~(-28108i)))), Struct_1(global4[_wgslsmith_index_u32(~(firstTrailingBit(u_input.a) ^ ~0u), 9u)], arg_1.a.b), Struct_2(func_2(arg_1), abs(vec3<i32>(~var_1, -2147483647i, _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(4294967295u, 24u)], -38505i)))));
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(global0.x, 20u)], 544f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_2.a, vec2<f32>(1000f, 730f))) * _wgslsmith_f_op_vec2_f32(exp2(var_2.a)))) * _wgslsmith_f_op_vec2_f32(-var_2.a)), arg_1.b, 0i, var_0, arg_1);
    var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.a.a, -1182f), var_2.a, global3.yz)))))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-504f - -754f), global1[_wgslsmith_index_u32(u_input.a, 20u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1050f, global4[_wgslsmith_index_u32(u_input.a, 9u)])), any(select(vec4<bool>(var_2.d.b, true, false, global3.x), vec4<bool>(var_2.d.b, false, true, true), var_0.b))))), arg_1.b, min(firstLeadingBit(var_2.b.x), -reverseBits(select(0i, -1i, false))), arg_1.a, var_2.e);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(global0.zy);
    let var_1 = _wgslsmith_add_i32(func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(var_0.x, 9u)])), global4[_wgslsmith_index_u32(func_1(), 9u)]), Struct_2(Struct_1(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(24708u, 20u)], 726f)), all(vec4<bool>(false, true, true, global3.x))), ~abs(vec3<i32>(7224i, global2[_wgslsmith_index_u32(24348u, 24u)], global2[_wgslsmith_index_u32(u_input.a, 24u)])))), -22416i);
    var_0 = global0.yy;
    global1 = array<f32, 20>();
    var_0 = abs(vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global0.x, 4294967295u, var_0.x), vec4<u32>(global0.x, 1u, 19143u, 28988u), vec4<u32>(33194u, u_input.a, u_input.a, u_input.a)), vec4<u32>(global0.x, 4294967295u, u_input.a, 61197u)), _wgslsmith_mult_u32(_wgslsmith_div_u32(var_0.x, global0.x), 36464u))) >> (~(~vec2<u32>(32270u, 31471u)) % vec2<u32>(32u));
    global4 = array<f32, 9>();
    var var_2 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~global0.yzw, global0.wzw), vec3<u32>(47899u << (1u % 32u), var_0.x, ~(global0.x ^ var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(Struct_2(Struct_1(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(var_0.x, 20u)], global4[_wgslsmith_index_u32(u_input.a, 9u)]), all(vec3<bool>(false, false, global3.x))), vec3<i32>(0i, -1i, -global2[_wgslsmith_index_u32(1u, 24u)]))).a, ~global0.x << (_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 26600u, var_0.x, 4294967295u), ~vec4<u32>(79815u, 0u, 0u, 2334u)), ~select(vec4<u32>(53483u, var_0.x, 0u, 0u), vec4<u32>(66073u, var_0.x, var_0.x, 10380u), vec4<bool>(global3.x, global3.x, false, global3.x))) % 32u));
}

