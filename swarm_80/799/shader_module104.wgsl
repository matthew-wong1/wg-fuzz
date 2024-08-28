struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, vec2<i32>(1i, -21412i));

var<private> global1: array<f32, 22> = array<f32, 22>(-627f, 543f, 898f, -335f, -393f, 337f, -683f, -951f, 1206f, 841f, -356f, 524f, 301f, 337f, 1434f, -1841f, 838f, -730f, -1089f, -1354f, -540f, -660f);

var<private> global2: vec2<bool>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: i32) -> u32 {
    var var_0 = -1114f;
    return 11823u >> (~_wgslsmith_mult_u32(~(~u_input.a), ~30512u ^ ~global0.a) % 32u);
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(1544u, ~vec2<i32>(0i, u_input.b.x));
    global1 = array<f32, 22>();
    global1 = array<f32, 22>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-511f, _wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -256f), _wgslsmith_div_f32(569f, global1[_wgslsmith_index_u32(1u, 22u)]))), 960f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 22u)], global1[_wgslsmith_index_u32(20334u, 22u)], global1[_wgslsmith_index_u32(u_input.a, 22u)], -1352f) - vec4<f32>(global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(u_input.a, 22u)], global1[_wgslsmith_index_u32(global0.a, 22u)], global1[_wgslsmith_index_u32(global0.a, 22u)]))))));
    var var_1 = !vec3<bool>(!(global0.b.x <= u_input.b.x), !(!global2.x), global2.x);
    return Struct_1(_wgslsmith_mod_u32(func_3((u_input.b.x >> (4294967295u % 32u)) & -u_input.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(var_0.x, 397f)))), _wgslsmith_add_i32(11647i, 9092i)), ~(~36647u)), vec2<i32>(_wgslsmith_dot_vec3_i32(abs(select(vec3<i32>(-16935i, u_input.b.x, 19904i), vec3<i32>(-43452i, 11955i, -38892i), vec3<bool>(var_1.x, false, true))), ~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 1i), vec3<i32>(-1i, 2147483647i, global0.b.x))), _wgslsmith_mult_i32(~max(u_input.b.x, 1180i), global0.b.x)));
}

fn func_1() -> bool {
    global2 = vec2<bool>(!global2.x || all(vec4<bool>(true, any(vec3<bool>(true, false, global2.x)), global2.x, global2.x)), true);
    let var_0 = vec4<i32>((65339i >> (_wgslsmith_mult_u32(4294967295u & u_input.a, global0.a ^ 25146u) % 32u)) >> (u_input.a % 32u), firstLeadingBit(-61355i), global0.b.x, u_input.b.x);
    global0 = func_2();
    var var_1 = Struct_2(func_2(), var_0.zy, func_2());
    var var_2 = global1[_wgslsmith_index_u32(5113u >> (~(~1u) % 32u), 22u)];
    return !(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(var_0.x, u_input.b.x)) <= -1i) || all(vec4<bool>(!any(vec2<bool>(global2.x, false)), true, false, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec4<bool>(func_1(), all(select(vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(true, true, global2.x, false), vec4<bool>(global2.x, false, global2.x, true))), select(func_1(), true, true), global2.x));
    var var_1 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a, 12390u), ~11524u), 1u), firstLeadingBit(4294967295u)), 50634u, u_input.a >> (_wgslsmith_div_u32(~4094u, u_input.a) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(global0.a), u_input.a), select(firstLeadingBit(vec2<u32>(0u, u_input.a) ^ vec2<u32>(4294967295u, global0.a)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(1u, u_input.a)) >> (vec2<u32>(global0.a, global0.a) % vec2<u32>(32u)), true)));
    var var_2 = vec3<u32>(101593u, 4294967295u, global0.a);
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2376f)))))));
    let var_4 = vec3<bool>(var_0.x, !global2.x, true);
    let var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1235f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(800f, -554f, var_4.x)), _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(0u, 22u)], 425f, true)), false)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(global0.a, 22u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.x, 22u)])))) * vec3<f32>(529f, _wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2517f, global1[_wgslsmith_index_u32(34895u, 22u)]))))));
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.b.x, ~global0.b.x & (u_input.b.x >> (var_2.x % 32u)), ~countOneBits(1i), _wgslsmith_add_i32(global0.b.x, min(global0.b.x, 27722i))) & ~firstLeadingBit(-vec4<i32>(global0.b.x, 1i, global0.b.x, u_input.b.x)), ~abs(countOneBits(vec4<u32>(1u, global0.a, var_2.x, var_2.x) << (vec4<u32>(0u, 37238u, 0u, 60248u) % vec4<u32>(32u)))), vec2<i32>(select(~_wgslsmith_sub_i32(-83150i, u_input.b.x), -22884i, true), select(global0.b.x, min(0i, min(global0.b.x, u_input.b.x)), any(!vec4<bool>(false, var_0.x, false, global2.x)))), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(~(global0.a << (40329u % 32u)), ~(~44751u)), abs(max(~113314u, ~global0.a))), 22u)], vec4<f32>(var_5.x, _wgslsmith_div_f32(-505f, _wgslsmith_f_op_f32(floor(-679f))), _wgslsmith_f_op_f32(select(var_5.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -580f))), true)), _wgslsmith_f_op_f32(-var_5.x)));
}

