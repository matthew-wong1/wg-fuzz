struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28>;

var<private> global1: Struct_1 = Struct_1(24214u);

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(0u), Struct_1(0u), Struct_1(155u), Struct_1(0u), Struct_1(4294967295u), Struct_1(22021u), Struct_1(0u), Struct_1(0u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(13805u), Struct_1(5567u), Struct_1(28696u), Struct_1(0u), Struct_1(1u), Struct_1(4294967295u), Struct_1(20048u), Struct_1(4294967295u), Struct_1(33530u), Struct_1(66872u), Struct_1(0u), Struct_1(1u), Struct_1(1u), Struct_1(0u), Struct_1(0u), Struct_1(35948u), Struct_1(0u), Struct_1(1u), Struct_1(1u), Struct_1(37676u));

var<private> global3: array<Struct_1, 29>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = global1.a;
    global2 = array<Struct_1, 30>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-279f - -344f))), 1f)))), _wgslsmith_div_f32(-328f, _wgslsmith_f_op_f32(trunc(-968f))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(364f, 1444f)) + -1520f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-699f, -297f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2463f + 736f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(805f)))))));
    let var_2 = select(!vec4<bool>(-1i > firstTrailingBit(25743i), true, !select(true, false, true), _wgslsmith_f_op_f32(-var_1.x) <= _wgslsmith_div_f32(680f, -910f)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), false), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !vec4<bool>(all(vec2<bool>(true, false)), false, true, true), false));
    var var_3 = select(!vec3<bool>(true, true, var_2.x), vec3<bool>(var_2.x, u_input.a < ~global1.a, var_2.x || any(!var_2.yzy)), select(var_2.yxw, !vec3<bool>(all(vec4<bool>(var_2.x, false, var_2.x, false)), var_1.x < var_1.x, !var_2.x), !var_2.wyz));
    return firstTrailingBit(-2147483647i);
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_2) -> u32 {
    var var_0 = max(vec3<i32>(~global0[_wgslsmith_index_u32(u_input.a, 28u)], 5014i, min(-_wgslsmith_mult_i32(arg_2, -2147483647i), -39742i)), vec3<i32>(15321i, countOneBits(_wgslsmith_mult_i32(arg_2, _wgslsmith_mult_i32(-2147483647i, arg_2))), firstTrailingBit(global0[_wgslsmith_index_u32(arg_0, 28u)])));
    let var_1 = global2[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 30u)];
    var var_2 = !arg_1;
    var var_3 = global3[_wgslsmith_index_u32(u_input.a, 29u)];
    var var_4 = global2[_wgslsmith_index_u32(1u, 30u)];
    return 49930u;
}

fn func_2(arg_0: vec3<i32>, arg_1: bool) -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_add_u32(~20179u, 0u));
    let var_1 = arg_1;
    var var_2 = Struct_1(var_0.a);
    let var_3 = -1167f;
    var var_4 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1483f)) - -461f))))), 1509f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)), var_3);
    return _wgslsmith_mult_vec4_u32(vec4<u32>(func_4(_wgslsmith_div_u32(var_2.a, _wgslsmith_mult_u32(0u, u_input.a)), !vec3<bool>(var_1, arg_1, arg_1), func_3(Struct_1(4294967295u)), Struct_2(Struct_1(4294967295u), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.x, 1837f) * var_4.xz), Struct_1(u_input.a), !vec4<bool>(true, arg_1, arg_1, false))), (~0u ^ u_input.a) | u_input.a, u_input.a, 4294967295u), ~(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(0u, 33154u, 17197u, var_2.a)), abs(vec4<u32>(u_input.a, 14849u, 0u, u_input.a))) & _wgslsmith_div_vec4_u32(~vec4<u32>(var_0.a, 4294967295u, u_input.a, 1u), min(vec4<u32>(u_input.a, u_input.a, 4294967295u, global1.a), vec4<u32>(0u, global1.a, u_input.a, global1.a)))));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    global1 = Struct_1(arg_0.x);
    global1 = arg_2;
    global3 = array<Struct_1, 29>();
    global1 = Struct_1(84267u);
    let var_0 = Struct_1(43728u);
    return Struct_1(4425u);
}

fn func_1() -> Struct_2 {
    return Struct_2(func_5(func_2(-vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(u_input.a, 28u)], -1i), true) & vec4<u32>(countOneBits(4294967295u), 0u, u_input.a, firstTrailingBit(19089u)), Struct_2(global3[_wgslsmith_index_u32(11583u, 29u)], _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1898f, 340f), vec2<f32>(-426f, 1000f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1604f, -1330f) + vec2<f32>(236f, 203f)), select(vec2<bool>(true, false), vec2<bool>(true, false), true))), Struct_1(~u_input.a), vec4<bool>(true, true, true, true)), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_4(global1.a, vec3<bool>(true, false, true), -1i, Struct_2(Struct_1(15615u), vec2<f32>(1348f, -881f), global3[_wgslsmith_index_u32(0u, 29u)], vec4<bool>(false, false, true, false))), ~4294967295u), 29u)], Struct_2(Struct_1(global1.a), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1534f, -389f)))), Struct_1(global1.a), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(561f + -954f), -108f)))), global3[_wgslsmith_index_u32(u_input.a, 29u)], !(!vec4<bool>(true, true, true, any(vec3<bool>(true, true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 29>();
    global0 = array<i32, 28>();
    let var_0 = 21835i >> (global1.a % 32u);
    let var_1 = func_1();
    var var_2 = func_1();
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.x, -1494f, 1413f, 1034f) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.b.x, var_1.b.x, -819f, var_2.b.x)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_2.b.x + var_2.b.x), _wgslsmith_f_op_f32(-var_1.b.x), var_2.b.x, 267f))) - vec4<f32>(_wgslsmith_f_op_f32(exp2(var_1.b.x)), _wgslsmith_f_op_f32(ceil(var_1.b.x)), -993f, 950f));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~1u)), (vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global1.a), vec2<u32>(var_1.a.a, 1u)), ~43897u, func_1().c.a) & vec3<u32>(9862u, ~var_2.a.a, 4294967295u)) | ~((vec3<u32>(4294967295u, u_input.a, 0u) >> (vec3<u32>(41425u, var_1.a.a, 36858u) % vec3<u32>(32u))) ^ ~vec3<u32>(global1.a, 28732u, 1u)), func_1().a.a, 12328u);
}

