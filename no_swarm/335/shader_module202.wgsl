struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
    d: vec2<f32>,
    e: bool,
}

struct Struct_4 {
    a: bool,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6> = array<u32, 6>(4294967295u, 4294967295u, 265u, 0u, 4294967295u, 1u);

var<private> global1: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(-1024f, Struct_1(vec3<i32>(i32(-2147483648), 0i, -26699i))), Struct_2(-1178f, Struct_1(vec3<i32>(16958i, 23383i, 45570i))), Struct_2(-364f, Struct_1(vec3<i32>(0i, 2147483647i, 0i))), Struct_2(-832f, Struct_1(vec3<i32>(20522i, 0i, -48714i))), Struct_2(-445f, Struct_1(vec3<i32>(-2857i, 0i, -28935i))), Struct_2(-1233f, Struct_1(vec3<i32>(0i, 37672i, 49024i))), Struct_2(610f, Struct_1(vec3<i32>(4326i, -80564i, 2147483647i))), Struct_2(-949f, Struct_1(vec3<i32>(-1i, 2147483647i, 64486i))), Struct_2(-566f, Struct_1(vec3<i32>(2147483647i, 1i, -29255i))), Struct_2(1413f, Struct_1(vec3<i32>(0i, -1i, 1i))), Struct_2(434f, Struct_1(vec3<i32>(16750i, 9853i, 1i))), Struct_2(-1000f, Struct_1(vec3<i32>(12464i, 0i, 73349i))), Struct_2(-143f, Struct_1(vec3<i32>(-6368i, 0i, 54148i))), Struct_2(-1580f, Struct_1(vec3<i32>(i32(-2147483648), -21289i, -1i))), Struct_2(-1000f, Struct_1(vec3<i32>(-8795i, -49711i, 0i))), Struct_2(622f, Struct_1(vec3<i32>(22803i, 2147483647i, -35430i))));

var<private> global2: array<f32, 25>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: bool) -> f32 {
    var var_0 = Struct_4(!(!arg_2), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 2147483647i, 1i, u_input.b.x), vec4<i32>(min(2147483647i, u_input.b.x), _wgslsmith_sub_i32(u_input.b.x, u_input.b.x), abs(u_input.b.x), u_input.b.x << (arg_1 % 32u))), ~(~firstLeadingBit(vec4<i32>(u_input.b.x, 2147483647i, 3391i, u_input.b.x)))));
    let var_1 = Struct_1(vec3<i32>(-1i) * -reverseBits(vec3<i32>(-1i, u_input.b.x, 0i) | vec3<i32>(-83403i, 16309i, u_input.b.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1196f) * _wgslsmith_f_op_f32(-1f));
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    var var_0 = vec3<f32>(-840f, global2[_wgslsmith_index_u32(u_input.a, 25u)], _wgslsmith_f_op_f32(func_3(-1275f, u_input.a, true)));
    var var_1 = Struct_3(vec3<i32>(i32(-1i) * -firstLeadingBit(u_input.b.x), min(_wgslsmith_dot_vec3_i32(firstTrailingBit(arg_0.a), vec3<i32>(arg_0.a.x, u_input.b.x, -2147483647i)), _wgslsmith_mod_i32(-50115i, 1i)), abs(u_input.b.x)), Struct_1(min(firstTrailingBit(vec3<i32>(u_input.b.x, -10315i, u_input.b.x)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x), arg_0.a))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~(~26994u), u_input.a), select(vec2<u32>(~u_input.a, ~u_input.a), vec2<u32>(global0[_wgslsmith_index_u32(29975u & u_input.a, 6u)], 4294967295u | u_input.a), select(vec2<bool>(true, true), vec2<bool>(true, false), true))), 25u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(~581u, 25u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(128f - var_0.x))))), false);
    var var_2 = select(!(!(!vec2<bool>(true, var_1.e))), vec2<bool>(true, true), all(!(!select(vec2<bool>(var_1.e, var_1.e), vec2<bool>(var_1.e, var_1.e), vec2<bool>(true, var_1.e)))));
    var var_3 = Struct_2(var_0.x, Struct_1(vec3<i32>(2147483647i, _wgslsmith_mult_i32(-var_1.b.a.x, arg_0.a.x), ~(~arg_0.a.x))));
    var var_4 = abs(u_input.a);
    return Struct_3(~_wgslsmith_sub_vec3_i32(vec3<i32>(min(var_3.b.a.x, var_3.b.a.x), ~(-2147483647i), ~(-1i)), vec3<i32>(var_3.b.a.x, -1970i, var_3.b.a.x) >> ((vec3<u32>(global0[_wgslsmith_index_u32(31068u, 6u)], 4294967295u, 27280u) | vec3<u32>(u_input.a, 6364u, u_input.a)) % vec3<u32>(32u))), var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_1.d, vec2<f32>(_wgslsmith_f_op_f32(sign(-450f)), var_1.c))) + var_0.zy), true);
}

fn func_4(arg_0: Struct_3) -> vec2<f32> {
    var var_0 = ~66620u;
    var var_1 = ~vec4<u32>((abs(1u) | u_input.a) >> (select(u_input.a, 10889u, arg_0.e | true) % 32u), global0[_wgslsmith_index_u32(~min(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 6u)], 6u)], 6u)], global0[_wgslsmith_index_u32(65436u, 6u)]), firstTrailingBit(1u)), 6u)], ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(58854u, 6u)], 6u)], abs(reverseBits(38776u)));
    var var_2 = _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 25u)]);
    global2 = array<f32, 25>();
    let var_3 = firstLeadingBit(countOneBits(4294967295u));
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~var_3, 25u)]) * -641f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -113f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-385f))))));
}

fn func_1() -> u32 {
    let var_0 = ~(~global0[_wgslsmith_index_u32(~u_input.a, 6u)]) >= _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, ~u_input.a, _wgslsmith_sub_u32(0u, u_input.a), _wgslsmith_div_u32(4294967295u, u_input.a)), ~vec4<u32>(~u_input.a, max(u_input.a, global0[_wgslsmith_index_u32(187u, 6u)]), global0[_wgslsmith_index_u32(u_input.a, 6u)], 1u & u_input.a));
    let var_1 = _wgslsmith_f_op_vec2_f32(func_4(func_2(Struct_1(vec3<i32>(_wgslsmith_div_i32(u_input.b.x, 0i), u_input.b.x, i32(-1i) * -8501i)))));
    return global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 6u)], 6u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a & ~1u, 25u)]));
    let var_1 = any(vec4<bool>((func_1() <= ~4294967295u) || true, true, all(vec2<bool>(all(vec4<bool>(false, false, true, true)), true)), true));
    var var_2 = Struct_2(global2[_wgslsmith_index_u32(1u, 25u)], func_2(Struct_1(firstLeadingBit(u_input.b) ^ u_input.b)).b);
    var var_3 = vec3<u32>(countOneBits(~(~u_input.a >> (0u % 32u))), firstLeadingBit(~18989u), 0u);
    let var_4 = Struct_3(firstLeadingBit(max(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, 3980i, u_input.b.x), vec3<i32>(2147483647i, u_input.b.x, -51738i)), vec3<i32>(1i, var_2.b.a.x, -19639i) ^ vec3<i32>(-3891i, 2147483647i, var_2.b.a.x)) & u_input.b), var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -662f) + _wgslsmith_f_op_f32(-var_2.a)), vec2<f32>(_wgslsmith_f_op_f32(-441f - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, var_3.x), 25u)])), global2[_wgslsmith_index_u32(21401u, 25u)]), !var_1);
    let var_5 = _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~(0u << (u_input.a % 32u)), 25u)] * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_4.d.x + _wgslsmith_f_op_f32(598f - _wgslsmith_f_op_f32(ceil(var_2.a)))), var_4.d.x)));
    global2 = array<f32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(~max(abs(_wgslsmith_add_i32(-3649i, var_2.b.a.x)), -2147483647i));
}

