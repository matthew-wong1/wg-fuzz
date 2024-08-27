struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_1 = Struct_1(-40905i, vec2<i32>(41013i, i32(-2147483648)), true);

var<private> global2: array<f32, 25>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<i32> {
    global0 = !select(!select(vec2<bool>(true, false), !vec2<bool>(false, global0.x), select(vec2<bool>(global1.c, global0.x), vec2<bool>(false, false), global0.x)), select(vec2<bool>(global1.c, true), select(select(vec2<bool>(false, global0.x), vec2<bool>(true, true), vec2<bool>(global0.x, true)), !vec2<bool>(false, global0.x), select(vec2<bool>(false, global0.x), vec2<bool>(false, global1.c), vec2<bool>(true, true))), global0.x), select(select(select(vec2<bool>(global0.x, global1.c), vec2<bool>(global1.c, global0.x), global0.x), vec2<bool>(global0.x, global0.x), global2[_wgslsmith_index_u32(u_input.b, 25u)] < global2[_wgslsmith_index_u32(4294967295u, 25u)]), vec2<bool>(global1.c, any(vec2<bool>(global0.x, false))), !select(vec2<bool>(global0.x, global1.c), vec2<bool>(global0.x, true), vec2<bool>(true, global0.x))));
    let var_0 = Struct_1(u_input.a.x, ~(vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(u_input.a.yw, vec2<i32>(u_input.a.x, global1.a))), select(true, global0.x, false));
    var var_1 = vec4<bool>(any(!vec3<bool>(true, var_0.c, true)), 787f > global2[_wgslsmith_index_u32(1u, 25u)], global1.c, global0.x);
    var var_2 = (global1.b.x >> ((_wgslsmith_mod_u32(_wgslsmith_add_u32(94659u, 21942u), ~44912u) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.c, 23424u, u_input.b), ~vec4<u32>(862u, u_input.b, 4294967295u, 30519u)) % 32u)) % 32u)) >> ((~(~u_input.b) & u_input.b) % 32u);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return ~(vec2<i32>(-1i) * -countOneBits(-vec2<i32>(41864i, -11749i)));
}

fn func_2(arg_0: vec2<f32>) -> bool {
    let var_0 = -((1i << (u_input.b % 32u)) ^ abs(abs(0i))) & u_input.d;
    global1 = Struct_1(-34976i, select(global1.b, min(func_3() ^ _wgslsmith_mod_vec2_i32(u_input.a.xy, global1.b), global1.b), !all(select(vec4<bool>(true, false, global1.c, global1.c), vec4<bool>(global1.c, true, global0.x, global1.c), false))), global0.x);
    global1 = Struct_1(0i, firstTrailingBit(global1.b), !(!global1.c));
    global0 = vec2<bool>(global1.b.x < u_input.d, !global1.c);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(145f + _wgslsmith_f_op_f32(-976f + arg_0.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 25u)]))), !(!global0.x))), global2[_wgslsmith_index_u32(u_input.c, 25u)])), abs(u_input.a & vec4<i32>(_wgslsmith_sub_i32(u_input.d, -25721i), reverseBits(2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(u_input.a.x, global1.a)), 1i)), var_0);
    return !global1.c;
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(~1u, 25u)], -682f)));
    let var_1 = select(select(vec3<bool>(true, !global0.x, true), !select(vec3<bool>(global0.x, global1.c, true), vec3<bool>(true, true, global1.c), func_2(vec2<f32>(global2[_wgslsmith_index_u32(98874u, 25u)], var_0.x))), !select(!vec3<bool>(global1.c, false, false), vec3<bool>(true, global1.c, global1.c), global2[_wgslsmith_index_u32(u_input.c, 25u)] > global2[_wgslsmith_index_u32(u_input.c, 25u)])), vec3<bool>(753f != _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 25u)] - _wgslsmith_f_op_f32(-1489f * 898f)), global1.c, -global1.b.x > _wgslsmith_mult_i32(-u_input.a.x, 1i)), true);
    global2 = array<f32, 25>();
    let var_2 = Struct_2(785f, select(vec4<i32>(0i, 4574i, _wgslsmith_dot_vec2_i32(global1.b, u_input.a.wy), abs(-1i)), ~_wgslsmith_sub_vec4_i32(u_input.a, u_input.a), vec4<bool>(any(var_1), true, global0.x, func_2(vec2<f32>(var_0.x, var_0.x)))) << (vec4<u32>(~countOneBits(8680u), select(max(u_input.c, 1u), 4294967295u, u_input.a.x > -15891i), _wgslsmith_sub_u32(_wgslsmith_add_u32(15925u, 117652u), u_input.b), ~(~u_input.b)) % vec4<u32>(32u)), ~abs(_wgslsmith_div_i32(2147483647i, reverseBits(-10586i))));
    global2 = array<f32, 25>();
    return _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, ~(~(13980u | u_input.c)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, u_input.c, 0u, u_input.b)), ~vec4<u32>(0u, u_input.c, 13744u, u_input.c))), vec4<u32>(u_input.b, u_input.b, firstTrailingBit(u_input.c), ~4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 25>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -439f, 107f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(reverseBits(0u) & _wgslsmith_sub_u32(func_1(), 0u), 25u)] + 397f));
    var var_1 = !global0.x;
    let var_2 = _wgslsmith_mult_u32(u_input.c, firstTrailingBit(~u_input.c));
    global0 = !select(vec2<bool>(true && global1.c, func_2(_wgslsmith_f_op_vec2_f32(ceil(var_0.xz)))), vec2<bool>(true, true && !global0.x), !(!(!vec2<bool>(global0.x, true))));
    var var_3 = Struct_1(-1i, ~(~countOneBits(vec2<i32>(1i, -1i))), true);
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(154f, _wgslsmith_f_op_f32(var_0.x * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -891f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), -1000f)))));
    let var_5 = Struct_1(~var_3.a, var_3.b, true);
    global2 = array<f32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(584f, 1252f))))));
}

